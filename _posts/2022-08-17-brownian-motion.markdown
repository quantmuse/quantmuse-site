---
layout: post
title:  "Stochastic Calculus Series III: Brownian Motion"
date: 2022-08-17
categories: mathematics, finance
---

### Chapter Three: Brownian Motion ### 

We are now half way through the series where we will look at the first six chapters of Steven Shreve's book, *Stochastic Calculus for Finance, Volume II*. 

This chapter is arguably one of the most important ones of the book, as Brownian Motion has properties that can be used to model asset prices. 

At its heart, Brownian motion can be thought of as a continuous, stochastic process with increments at each time-step t. 

Each of these increments are **independent** and **normally-distributed** with $E\[W_t_(i+1) - W_t\] = 0$ and $Var\[W_t_(i+1) - W_t\] = t_(i+1) - t_i$

One of the most profound properties of Brownian motion is that it **accumulates quadratic variation at the rate of one per unit time**. What does that mean? 

First, we should explain what does variation mean. Think of a pendulum, which swings from one end to the other. 

The variation simply measures the magnitude of the swing from its zero line. Furthermore, if it goes to the right of the zero line, the variation is positive. If it goes to the left, the variation is known as negative. A pendulum dropped from a higher point has more variation, or more active, compared to one that starts near the zero line.

To sum up the total variation of the pendulum, we could add up the absolute distance from zero line at each time T, and this is known as the **first-order** variation. 

The quadratic variation, then, is defined as the square of the first-order variation. In the introduction to this chapter, the author mentioned that the "*notion of qudratic variation is profound ... it makes stochastic calculus different from ordinary calculus*".

If the first-order variation can be rewritten as the sum of all absolute differences of the variation, then the quadratic variation is merely the sum of the square of the differences. 

This video by [quantpie](https://www.youtube.com/watch?v=AptlhWEgOto) starting at 16:22 provides a nice visual of how the sum of the quadratic variation converges to the length of time T. 

In formula form, this relationship is formally wirtten as $dW(t)dW(t) = dt$, which symbolizes how the amount of quadratic variation accumulated by a Brownian motion is equal to the length of the interval, regardless of its path.

Another key concept to know about a Brownian motion is that it is a martingale, a concept that we covered in the previous post. This is due to the fact that whatever happens at time t where $t \geq s$ is **independent** of filtration $F_s$, i.e. the information that determines s. 

Last but not least, Brownian motion is also a Markov process, as the only information from filtration $F_s$ that is relevant is the value of Brownian motion W(s). In case you need to refresh your memory on martingale and Markov process, this article here by [quantstart](https://www.quantstart.com/articles/The-Markov-and-Martingale-Properties/) may be helpful.

As usual, I hve skipped past all the proofs and trying to distill the key concepts in this chapter. The key takeaways here are that Brownian motion is a martingale, a Markov process, continuous, with increments that have 0 expectation and variance of t-s, and most importantly the concept that a Brownian motion *accumulates* quadratic variation (square of first-order variation, which in turn is the sum of absolute variation) to the sum of length T, *regardless of its path*. 

The goal is that by the end of the six-chapter series, we will have the tools and foundation that we need to understand stochastic calculus for finance, and most importantly, on knowing how to apply these concepts. 