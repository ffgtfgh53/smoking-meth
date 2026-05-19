---
layout: default
title: 12 Complex Numbers
permalink: /12-complex-numbers/
---
# 12 Complex Numbers

# Content
1. 

# 1 Complex Roots of Quadratic Equations
**Definition: Imaginary Unit**
<div class=indented markdown=1>

The *imaginary unit*, $i$, is defined by $i = \sqrt{-1}$. Equivalently, $i^2 = -1$.

# 2 Complex Numbers
## 2.1 Basics and Definitions

| Set | Example|
|-|-|
| Natural Numbers, $\mathbb{N}$ | $\lbrace 1,2,3,4,100\rbrace$|
| Integers, $\mathbb{Z}$ | $\lbrace -5, -1, 0, 7 \rbrace$|
| Rational Numbers, $\mathbb{Q}$ | $\lbrace \frac{1}{2},-\frac{3}{4},0.75,2\rbrace$|
| Real Numbers, $\mathbb{R}$ | $\lbrace \sqrt{2},\pi,e,-\sqrt{5} \rbrace$|
| Complex Numbers, $\mathbb{C}$ | $\lbrace 2+3i, -i,1-\sqrt{2i}\rbrace$|

**Definition: Complex Number**
<div class=indented markdown=1>

A *complex number* is a number in the form $a+bi$ (*Cartesian form*), where $a$ and $b$ are real numbers. The set of all complex numbers, $\mathbb{C}, is given by

$$\mathbb{C} = \lbrace z=a+bi:a,b \in \mathbb{R} \rbrace$$

</div>

**Definition: Purely Imaginary Numbers**
<div class=indented markdown=1>
 
A *purely imaginary number* refers to any real multiple of $i$, i.e., $bi$, where b is a real number.

</div>

**Definition: Real and Imaginary Parts**
<div class=indented markdown=1>

For any complex number $a+bi$, where $a$ and $b$ are real, $a$ is the *real* part of $a + bi$, i.e., $a=Re(a+bi)$, and $b$ is the *imaginary part of $a+bi$, i.e., $b = Im(a+bi)$.   

</div>

**Definition: Complex Conjugates**
<div class=indented markdown=1>

For any complex number $z = a bi$, where $a$ and $b$ are real, its *complex conjugate*, $z^*$, is $a-bi$.

</div>

**Definition: Equality of Complex Numbers**
<div class=indented markdown=1>

Any pair of complex numbers is said to be *equal* if and only if they have the same real and imaginary parts, i.e.,

$$a+bi = c + di \iff a=c \quad \text{and} \quad b=d$$

if $a$,$b$,$c$ and $d$ are real.

</div>

## 2.2 Basic Operations on Complex Numbers

Let $w = a +bi$ and $z = c + di$.

>**Addition and Subtraction**
>
>$$\begin{align*}
>w \pm z &= (a+bi) \pm (c+di) \\
>&= (a\pm c) + (c \pm d)i
>\end{align*}$$

>**Multiplication**
>
>When multiplying two complex numbers in the form of $a+bi$, utilise algebraic expansion. Apply $i^2 = -1$ to further simplify the expression.
>
>$$\begin{align*}
>w \times z &= (a+bi) \times (c+di) \\
>&= (a)(c) + (a)(di) + (c)(bi) + (bi)(di) \\
>&= (a)(c) + (a)(di) + (c)(bi) + (bd)(-1)
>&= (ac - bd) + (ad + cb)i
>\end{align*}$$

>**Division**
>
>When dividing complex numbers in the form of $a + bi$, multiply both the numerator and the dominator by the complex conjugate of the denominator, in other words, realise the denominator.
>
>$$\begin{align*}
>w \div z &= \frac{w}{z} \\
>&= \frac{w}{z} \times \frac{z^*}{z^*} \\
>&= \frac{a+bi}{c+di} \times \frac{c-di}{c-di} \\
>&= \frac{(a+bi)(c-di)}{c^2 - (di)^2} \\
>& \qquad \qquad \vdots
>\end{align*}$$

## 2.3 Theories

>**Conjugate Root Theorem**
>
>Given any polynomial equation
>
>$$a_nx^n+a_{n-1}x^{n-1}+\ldots+a_1x + a_0 = 0$$
>
>of degree $n$, if the **coefficients** $a_0,a_1,\ldots ,a_n$ are **all real** numbers, then its non-real roots, if any, occur in conjugate pairs.

>**Fundamental Theorem of Algebra**
>
>Any polynomial equation
>
>$$a_nx^n+a_{n-1}x^{n-1}+\ldots+a_1x + a_0 = 0$$
>
>of degree $n$ has exactly $n$ roots in $\mathbb{C}$, including repeated roots if any.

>**Factor Theorem**
>
>If $f(x)$ is a polynomial in $x$ and $a$ is a constant, then 
>
><center>
>
>$x-a$ is a factor of $f(x)$ if and only if $f(a)=0$
>
></center>

## 2.3 Argand Diagram

**Definition: Argand Diagram**
<div class=indented markdown=1>

Every complex number $x+yi$, where $x,y \in \mathbb{R}$, can be represented by a point with Cartesian coordinates $(x,y)$ in the coordinate plane.

When used in this way to represent complex numbers, the coordinate plane is called an *Argand diagram*.

</div>

>**Significance of the Real Part**
>
>Every real number corresponds to a point on the horizontal axis *(real axis)* in an Argand diagram.

>**Significance of the Imaginary Part**
>
>Every purely imaginary number corresponds to a point on the vertical axis *(imaginary axis)* in an Argand diagram.

>**Significance of Conjugates**
>
>In an Argand diagram, the points representing any complex number $z$ and its complex conjugate $z^*$ are **reflections** of each other in the **real axis**

**Definition: Modulus and Argument** {#definition-modulus-and-argument}
<div class=indented markdown=1>

For any complex number $z=x+yi$, where $x,y \in \mathbb{R}$,

- the *modulus* of $z$, denote by $|z|$, is the distance between the point $P(x,y)$ and the origin $O$.

- the *argument* of $z$, denoted by $arg(z)$, is the angle (usually measured **radians**) between the **positive** real-axis and the $(x,y)$ and the line segment $OP$.


</div>

**Calculating Modulus and Argument**

*Modulus*

Apply Pythagoras' Theorem to obtain the modulus of a complex number z,

$$|z| = r = \sqrt{x^2+y^2}$$

*Argument*

1. Calculate $\alpha$, the **basic** angle for $\theta$, by using the formula
$$\alpha = \tan^{-1}{\left( \frac{|y|}{|x|} \right)}$$

2. Find the value $\theta$ based on the quandrant that it lies in. With reference to the definition provided [above](#definition-modulus-and-argument), we can obtain the following table

<center>

|Quadrant| Range| Value of $\theta$|
|-|-|-|
| $1^\text{st}$ Quadrant|$0 \lt \theta \lt \frac{\pi}{2}$ | $\theta = \alpha$|
| $2^\text{nd}$ Quadrant| $\frac{\pi}{2} \lt \theta \lt \pi$ | $\theta = \pi - \alpha$|
|$3^\text{rd}$ Quadrant| $\pi \lt \theta \lt \frac{3\pi}{2}$| $\theta = -(\pi - \alpha)$
|$4^{\text{th}}$ Quadrant| $\frac{3\pi}{2} \lt \theta \lt 2\pi$| $\theta = -\alpha$

</center>

> **Note**
>
> Unless otherwise stated, the value of $\theta$ is taken within the range of $-\pi \leq \theta \leq \pi$

> **Observations**
>
> By using trigonometry, the following observation can be made
><center>
>
> $x = r\cos{\theta}$ and $y=r\sin{\theta}$,
>
> </center>
>
>regardless of which quadrant the point $P(x,y)$ lies in.

## 2.4 Geometric Effect of Arithmetic Operations on Complex Numbers

### 2.4.1 Geometric Effect of Addition and Subtraction

Addition and subtraction of complex numbers correspond to the parallelogram law of vector addition and subtraction.

>**Result: Geometrical Effect of Addition**
>
> Let $z_1$ and $z_2$ be two distinct complex numbers. The points $P_1$,$P_2$ and $P_3$, representing $z_1$, $z_2$ and $z_1+ z_2$ respectively in the Argand diagram, form a parallelogram $OP_1P_3P_2$.
>
> #TODO: DIAGRAM
>
> By the parallelogram law of vector addition,
> $$\overrightarrow{OP_3} = \overrightarrow{OP_1} + \overrightarrow{OP_2}$$

<details markdown=1>
<summary markdown=1> **Proof**</summary> 

$$
 \begin{align*}
\\
z_1 + z_2 &= (x_1 + iy_1) + (x_2+iy_2) \\
&= (x_1 + x_2) + (y_1 + y_2)i
 \\
 \\ 
 \therefore \overrightarrow{OP_3} &= \begin{pmatrix} x_1+x_2 \\ y_1 +y_2 \end{pmatrix} \\ &= \begin{pmatrix}x_1 \\ y_1\end{pmatrix} + \begin{pmatrix}x_2 \\ y_2 \end{pmatrix} \\ &= \overrightarrow{OP_1} + \overrightarrow{OP_2}
\end{align*}$$

</details>

<br>

> **Result: Geometrical Effect of Subtraction**
> 
> Let $z_1$ and $z_2$ be two distinct complex numbers. The points $P_1$,$P_2$ and $P_3$, representing $z_1$, $z_2$ and $z_1 - z_2$ respectively in the Argand diagram, form a parallelogram $OP_1P_3P_2$.
> 
> #TODO: DIAGRAM
> 
> By the parallelogrm law of vector addition,
> 
> $$\begin{align*}\overrightarrow{OP_3} &= \overrightarrow{OP_2} - \overrightarrow{OP_1} \\ &= \overrightarrow{P_1P_2}\end{align*}$$

<details markdown=1>
<summary markdown=1> **Proof**</summary> 

$$
 \begin{align*}
\\
z_2 - z_1 &= (x_2 + iy_2) - (x_1+iy_1) \\
&= (x_2 - x_1) + (y_2 - y_1)i
 \\
 \\ 
 \therefore \overrightarrow{OP_3} &= \begin{pmatrix} x_2-x_1 \\ y_2 -y_1 \end{pmatrix} \\ &= \begin{pmatrix}x_2 \\ y_2\end{pmatrix} - \begin{pmatrix}x_1 \\ y_1 \end{pmatrix} \\ &= \overrightarrow{OP_2} + \overrightarrow{OP_1} \\ &= \overrightarrow{P_1P_2}
\end{align*}$$

</details>
<br>

> **Deductions**
>
> - $\begin{array}{l c}P_1P_2 &=& \left| \overrightarrow{p_1P_2} \right| \\ &=& \left| z_2 - z_1 \right|\end{array}$
>
> - $arg(z_2 - z_1)$ is the angle between $P_1P_2$ and the **positive real direction**, equivalently, the positive x-axis.

### 2.4.2 Geometrical Effect of Conjugation, Negation and Multiplication by i

>**Result: Geometrical Effects of Conjugation and Negation**
>
>Let $z_1$ be a complex numbers represented by $P_1$ in the Argand Diagram.
>
>If $z_1^*$ is represented by $P_2$, then $P_1$ and $P_2$ are reflections of each other in the real axis *(x-axis)*.
>
>If $-z_1$ is represented by $P_3$, then $P_1$ and $P_3$ are reflections of each other about the origin.
>
>Consequently, $(-z_1)^*$ and $-(z_1^*)$ are represented by the same point.

>**Result: Geometrical Effects of Multiplication by i**
>
>Let $z_1$ be a complex number represented by $P_1$ in the Argand diagram.
>
>If $iz_1$ is represented by $P_2$, then $P_2$ is obtained by rotating $P_1$ $90\degree$ anti-clockwise about the origin.
>
>#TODO: DIAGRAM