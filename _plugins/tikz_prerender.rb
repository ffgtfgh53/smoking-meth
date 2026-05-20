require 'fileutils'
require 'digest'
require 'open3'

Jekyll::Hooks.register [:pages, :documents], :post_convert do |page|
  next unless page.ext == ".md" || page.ext == ".html"
  
  # Look for <script type="text/tikz"> blocks
  next unless page.content.include?('type="text/tikz"')

  page.content.gsub!(/<script type="text\/tikz">(.*?)<\/script>/m) do |match|
    tikz_code = $1.strip
    
    # Create a unique hash for caching
    hash = Digest::MD5.hexdigest(tikz_code)
    cache_dir = File.join(Dir.pwd, ".tikz_cache")
    FileUtils.mkdir_p(cache_dir)
    
    svg_path = File.join(cache_dir, "#{hash}.svg")
    
    # Only render if the SVG doesn't exist in cache
    unless File.exist?(svg_path)
      Jekyll.logger.info "TikZ:", "Generating SVG for hash #{hash} in #{page.path}"
      
      tex_template = <<~TEX
        \\documentclass[tikz]{standalone}
        \\usetikzlibrary{backgrounds}
        \\begin{document}
        #{tikz_code}
        \\end{document}
      TEX
      
      tex_file = File.join(cache_dir, "#{hash}.tex")
      File.write(tex_file, tex_template)
      
      # Run latex to generate DVI, then dvisvgm to generate SVG
      latex_cmd = "latex -interaction=nonstopmode #{hash}.tex > /dev/null 2>&1"
      Open3.capture3(latex_cmd, chdir: cache_dir)

      # We handle namespacing manually to prevent collisions.
      svg_cmd = "dvisvgm --font-format=woff2 --exact --stdout --verbosity=0 #{hash}.dvi"
      stdout, stderr, status = Open3.capture3(svg_cmd, chdir: cache_dir)
      
      if status.success?
        # Extract only the <svg> element to strip XML headers and any leaking logs
        svg_only = stdout[/<svg.*<\/svg>/m]
        if svg_only
          # Manual namespacing: prepend hash to IDs, classes, and references to prevent collisions in <style> 
          p = "p#{hash}-"
          svg_only.gsub!(/id=(['"])(.*?)\1/, "id=\\1#{p}\\2\\1")
          svg_only.gsub!(/class=(['"])(.*?)\1/, "class=\\1#{p}\\2\\1")
          svg_only.gsub!(/href=(['"])#(.*?)\1/, "href=\\1##{p}\\2\\1")
          svg_only.gsub!(/url\(#([^)]+)\)/, "url(##{p}\\1)")
          
          # Handle selectors within <style> tags more comprehensively.
          # This targets both class and ID selectors within the style block.
          svg_only.gsub!(/(<style[^>]*>.*?<\/style>)/m) do |style_block|
            # Apply prefixing to class and ID selectors within the style block
            # Ensure the selector name starts with a letter or underscore (not decimal no. like 6.7).
            style_block.gsub!(/([.#])([a-zA-Z_][a-zA-Z0-9_-]*)(?=[^a-zA-Z0-9_-]|\{)/) do |match|
              "#{$1}#{p}#{$2}"
            end
            style_block # Return the modified style block
          end
        end
        File.write(svg_path, svg_only || "<!-- SVG parsing failed -->")
      else
        Jekyll.logger.error "TikZ Error:", stderr
      end
    end
    
    if File.exist?(svg_path)
      File.read(svg_path)
    else
      "<!-- TikZ Render Failed -->" + match
    end
  end
end