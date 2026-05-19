---
layout: default
title: 10 Sequences and Series
permalink: /10-sequences-and-series/
---
# 10 Sequences and Series

# Content
1. [Sequences](#1-sequences)

    1. [Divergent & Convergent Sequences](#11-divergent-and-convergent-sequences)

    2. [Recurrence Relation](#12-recurrence-relation)

2. [Series](#2-series)

    1. [Convergent Series](#21-convergent-series)

# 1 Sequences

**Definition: Sequence**
<div class=indented markdown=1>

A *sequence* is a list of mathematical objects (usually numbers) arranged in a given order.

</div>

**Definition: Finite and Infinite Sequences**
<div class=indented markdown=1>

If a sequence terminates, then it has finite number of terms, and we say it is a *finite* sequence; otherwise it is an *infinite* sequence.

</div>

**Definition: Conjecture**
<div class=indented markdown=1>

A *conjecture* is a guess that is made based on observations.
In the context of making a *conjecture* for the general $r^{\text{th}}$ term of a sequence, you are making a guess by observing any pattern among the first terms of a sequence.

</div>

## 1.1 Divergent and Convergent Sequences

**Definition: Divergent Sequences** 
<div class=indented markdown=1>

A *divergent sequence* is when the terms of an infinite sequence
$$\lbrace u_r \rbrace, r \in \mathbb{Z}^+$$
approaches infinity as r approaches infinity.

</div>

**Definition: Convergent Sequences** 
<div class=indented markdown=1>

A *convergent sequence* is when the terms of an infinite sequence
$$\lbrace u_r \rbrace, r \in \mathbb{Z}^+$$
approaches a real number $L$ as r approaches infinity.

</div>

>**Notation** 
>
> If a sequence $\lbrace {u_r} \rbrace, r \in \mathbb{Z}^+$ converges to a real number $L$, we may denote this by <br>
> <center>
>
> "As $r \to \infty , u_r \to L$" or "$\displaystyle \lim_{r \to \infty}{u_r} = L$" 
>
> </center>

>**Rules**
>
> 1. $\displaystyle \lim_{n \to \infty}{a} = a$
> 2. $\displaystyle \lim_{n \to \infty}{u_n \pm v_n} = \lim_{n \to \infty}{u_n} \pm \lim_{n \to \infty}{v_n}$
> 3. $\displaystyle \lim_{n \to \infty}{u_n \times v_n} = \lim_{n \to \infty}{u_n} \times \lim_{n \to \infty}{v_n}$
> 4. $\displaystyle \lim_{n \to \infty}{\left(\frac{u_n}{v_n}\right)} = \frac{\displaystyle \lim_{n \to \infty}{u_n}}{\displaystyle \lim_{n \to \infty}{v_n}}$, if $\displaystyle \lim_{n \to \infty}{v_n}$ and $v_1,v_2,v_3 \ldots$ are non-zero

## 1.2 Recurrence Relation

**Definition**
<div class=indented markdown=1>

 A *recurrence relation* is an identity that relates the general term $u_n$ in a sequence $u_1,u_2,\ldots,u_n,\ldots$ with a fixed number, say $k$ of its preceding terms.
 $$u_n = f\left( u_{n-1},u_{n-2},\ldots,u_{n-k}\right)$$
 where $f$ is a function of $k$ variables. We say that $k$ is the *order* of the recurence relation.

</div>

# 2 Series

**Definition: Series**
<div class=indented markdown=1>
 A *series* is the sum of the terms of a sequence.

 When the terms of a sequence $u_1,u_2,u_3,\ldots$ are added, the *series*
$$u_1+u_2+u_3+\dots$$
 is formed.

</div>

## 2.1 Convergent Series

**Definition: Convergent Series**
<div class=indented markdown=1>

A *convergent series* is an infinite series that has a finite sum.

</div>