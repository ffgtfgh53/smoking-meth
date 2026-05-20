---
layout: default
title: Title
author: "Me"
---

## Use plugin to convert graph into svg during build 

<script type="text/tikz">
\begin{tikzpicture}[background rectangle/.style={fill=white!45}, show background rectangle]
\draw[gray, thick] (-1,2) -- (2,-4);
\draw[gray, thick] (-1,-1) -- (2,2);
\filldraw[black] (0,0) circle (2pt) node[anchor=west]{Intersection point};
\end{tikzpicture}
</script>

<script type="text/tikz">
\begin{tikzpicture}[scale=2.5]

% background (draw FIRST)
\fill[opacity=0] (-2.1,-2.7) rectangle (3.5,3);

% axes
\draw[white,->] (-1.5, 0) -- (3, 0) node[right] {$\mathrm{Re}$};
\draw[white,->] (0, -2) -- (0, 2.5) node[above] {$\mathrm{Im}$};

\node[text=white,below left] at (0,0) {$O$};

% points
\coordinate (z) at (2, 1.5);
\coordinate (zbar) at (2, -1.5);

\draw[draw=white, fill=white] (z) circle (0.035);
\draw[draw=white, fill=white] (zbar) circle (0.035);

% dashed guides
\draw[white,dashed] (z) -- (2,0);
\draw[white,dashed] (0,1.5) -- (z);

\draw[white,dashed] (zbar) -- (2,0);
\draw[white,dashed] (0,-1.5) -- (zbar);

% labels
\node[text=white,below right=0.1cm] at (2,0) {$x$};
\node[text=white,left] at (0,1.5) {$y$};
\node[text=white,left] at (0,-1.5) {$-y$};

\node[text=white,above right=0.2cm] at (z) {$z = x + yi$};
\node[text=white,below right=0.2cm] at (zbar) {$\bar{z} = x - yi$};

\end{tikzpicture}
</script>