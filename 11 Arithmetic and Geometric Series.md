---
layout: default
title: 11 Arithmetic and Geometric Series
permalink: /11-arithmetic-and-geometric-series/
---
# 11 Arithmetic and Geometric Series

# Content
1. [Arithmetic Progression and Arithmetic Series](#arithmetic-progression-and-arithmetic-series)

    1. [Arithmetic Progression](#arithmetic-progression)

    2. [Arithmetic Series](#12-arithmetic-series)

2. [Geometric Progression and Geometric Series](#2-geometric-progression-and-geometric-series)

    1. [Geometric Progression](#21-geometric-progression)

    2. [Geometric Series](#22-geometric-series)

        1. [Infinite Geometric Series](#221-infinite-geometric-series)

# 1 Arithmetic Progression and Arithmetic Series

## 1.1 Arithmetic Progression

**Definition: Arithmetic Progression**
<div class=indented markdown=1>

An *arithmetic progression* is a sequence such that the difference between every pair of consecutive terms is a constant number, i.e. a sequence of the form
$$a,a+d,a+2d,a+3d,\ldots$$
where $a$ is the **first term** and $d$ is the **common difference** of the sequence.

</div>

> **General Formula: Arithmetic Progression**
> 
> The formula for the general $n^{\text{th}}$ term, $u_n$, of an arithmetic progressions in terms of $a$ and $d$ is
>$$u_n = a + \left( n -1 \right) d, \quad n\geq 1$$

## 1.2 Arithmetic Series

**Definition: Arithmetic Series**
<div class=indented markdown=1>

Let $S_n$ denote the sum of the first n terms of an arithmetic progression $a,a+d,a+2d,\ldots$

Then $S_n$ is called an arithmetic series and is given by:
$$
\begin{align*}
S_n &= a + (a+d) + (a+2d)+(a+3d)+\ldots+\left[ a+(n-1)d \right] \\
&= \sum_{i = 1}^{n} \left[ a + (i+1)d \right]
\end{align*}
$$
where $a$ is the first term and $d$ is the common difference.

>**General Formula: Arithmetic Series**
>
> $S_n$ can be found by the following formula:
>$$S_n = \frac{n}{2} \left[ 2a + (n-1)d \right] = \frac{n}{2}(a+l),$$
> where $l$ denotes the last term, which is also the $n^th$ term, i.e $l = a +(n-1)d$.

<details>
<summary>Further explanation</summary>

> <br>
>
> $$S_n = \frac{n}{2}(a+l)$$
> can be seen as the sum of first and last terms of the sequence multiplied to half the number of terms, thus $\frac{n}{2}$.

</details>

# 2 Geometric Progression and Geometric Series

## 2.1 Geometric Progression
<div class=indented markdown=1>

A *geometric progression* is a sequence such that the ratio between every pair of consecutive terms is a constant number, i.e. a sequence of the form
$$a,ar,ar^2,ar^3,\ldots,$$
where the constant $r$ is called the common ratio.

</div>

>**General Formula: Geometric Progression**
>
> The formula for the general $n^{\text{th}}$ term, $u_n$, of an geometric progressions in terms of $a$ and $r$ is
> $$u_n = ar^{n-1}, n \geq 1.$$

## 2.2 Geometric Series
<div class=indented markdown=1>

Let $S_n$ denote the sum of the first $n$ terms of the geometric progression $a,ar,ar^2,ar^3,\ldots$

Then $S_n$ is called a geometric series and is given by:

$$
\begin{align*}
S_n &= a + ar + ar^2 +ar^3+\ldots+ar^{n-1} \\
&= \sum_{l-1}^{n}ar^{l-1}
\end{align*}
$$
where a is the first term and $r$ is the commmon ratio.

</div>

>**General Formula: Geometric Series**
>
> $S_n$ can be found by the following formula:
>$$
> S_n =
>\begin{cases}
>\frac{a(1-r^n)}{1-r},& r \neq 1\\
>an,& r = 1
>\end{cases}
>$$

### 2.2.1 Infinite Geometric Series

>**General Formula: Sum of Infinite Geometric Series**
>
> If $-1 \lt r \lt 1$, or in other words $\left|r\right| \lt 1$, the sum to infinity of the geometric series can be given by the following formula:
> $$S_n = \frac{a}{1-r}$$