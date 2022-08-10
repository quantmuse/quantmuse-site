---
layout: post
title:  "Stochastic Calculus Series II: Information and Conditioning"
date: 2022-08-10
categories: mathematics, finance
---

### Chapter Two: Information and Conditioning ### 

Continuing on last week's post, this week we will be looking at the second chapter of the Shreve's book, *Stochastic Calculus for Finance, Volume II*. 

This chapter builds on last chapter's definition of a **probability space**, which contains three things: a universe of all possible sets, the subsets, and the probability that maps these subsets. 

The intuition to arrive at the first term underlying this chapter, **information**, came as followed: imagine a random experiment where there is an outcome, which is one of the subset defined above. We do not know the exact outcome (recall from chapter one, think in terms of intervals), but we know *enough* to narrow down the possibilities to one of the possible subsets. The hint or clue referred to here (for instance, we don't know the stock price at time T but we know its price at T-1) is henceforth referred as information. 

These possibilites, together with the ever-present empty set and the *universe* (or more formally defined as omega, $\Omega$), then forms a $\sigma$-algebra (which is just a collection of sets).

Here is another key concept that ties in the progression of time: as time progresses, we get better information and the $\sigma$-algebras obtains finer resolution. In other words, the $\sigma$-algebra at time T = 2 contains more information than the one at T - 1. Taken together, the collection of these $\sigma$-algberas are known as *filtration* -- an apt name as it is like going through a filter to obtain the *right* outcome. 

For each filtration F, a random variable X is F-*measurable* <=> the information in F is sufficient to determine the value of X. 

For instance, if we purchase a barrier option that pays off whenever the underlying stock price hits 10 dollars, when the price hits 10 dollars at time T = 2, we already know that we would receive the payoff regardless of what happens at further T > 2. 

A collection of random variables X at various times t < T is also known as F-*adaptable* if each X(t) is F-measurable.

Next we will move on to the concept of *independence*. Two sets A and B are independent if P(A$\bigcap$B) = P(A)*P(B). 

More intuitively, knowing A happened does not change our estimation of the probability of B.

One example is getting a head of the first coin toss (A) versus geting a head on the second toss (B). 

Mathematically, one interesting observation is that if the random variables X and Y are independent, then E[XY] = EX * EY, because Var(X) = $E^2 - (EX)^2$, which implies Cov(X,Y) = E[XY] - EX * EY and independence means Cov(X,Y) = 0.

We now turn to the second key term of this chapter, which is *conditioning*. 

The key term *conditional expectation* is denoted as $E[X \mid G]$. The implication of this definition is two-fold. First, conditional expectation of X given G is G-measurable. Second, the *partial averaging* property ensures that the conditional expectation is a good estimator of X if G has many sets (because it provides a fine resolution - recall our earlier paragraph on filtration) and it is a crude estimator if G only has a few sets (i.e. not enough information).

Having gone through the length of defining all these, we now reach the end of the chapter to the two most important terms that will be widely used in the rest of the book: *martingale* and a *Markov process*.

We can say a process if a martingale if $E[M(t) \mid F(s)] = M(s)$, where $0 \leq s \leq t$ and M is an adapted stochastic process. If we know the value of M at time s, the expected value of M at time t is likely to be the same. This means M has no tendency to rise or fall. 

X is a Markov process if $E[f(X(t)) \mid F(s)] = g(X(s))$, where $0 \leq s \leq t$. The implication of a Markov process is that the estimate of f(X(t)) made at time s depends only on the process value X(s) _at time s_ and not on the path of the process before that. 

This chapter has been rather heavy on definitions and proofs (which I have mostly skipped here), but these are key building blocks for the upcoming chapters. The author promised some examples on martingales and Markov process after the introduction of Brownian motion and Ito integrals, so hopefully these concepts will help later in the book. 




