---
layout: post
title:  "Stochastic Calculus Series IV: Stochastic Calculus"
date: 2022-08-24
categories: mathematics, finance
---

### Chapter Four: Stochastic Calculus ### 

This chapter presents the Ito-Doeblin formula, which is one of the key building blocks of stochastic calculus as it differentiates it from *ordinary* calculus. 

The starting point of this is a Brownian motion W(t). The difference of function with W as an input at time t and t = t+1 can be broken down into the first derivatives and the second derivatives. 

Using Taylor series expansion and some substitution tricks, the end result is the first order w.r.t. time and second order w.r.t. the Brownian motion. 

In formula form, this can be written as: 

df(t, X(t)) = $f_{t}$(t,X(t))dt + $f_{x}$(t,X(t))dX(t) + $\frac{1}{2}f_xx(t,X(t))dX(t)dX(t)$

The last term is also known as the diffusion term, which is the part that give stochastic calculus its "unpredictability".

A good source to understanding this transition is this video here by [QuantPy](https://www.youtube.com/watch?v=Devm4ElEhGc). 

A key result of the Ito-Doeblin formula is to derive the Black-Scholes formula (or dubbed the Black-Scholes-Merton p.d.e. in the book). 

Let the stock price S(t) be a geometric Brownian motion (g.b.m.):

dS(t) = $\alpha$S(t)dt + $\sigma$ S(t) dW(t)

The set-up is to consider holding the stock, whose value evolves along time. To perfectly hedge this position, the agentt also seels a European call option of the underlying stock.

Under the **delta-hedging rule**, for each time t, the differential of the discounted portfolio value (using interest rate r), which is denoted as $e^{-rt}$ X(t), should be equal to the differential of the discounted call price $e^{-rt}$ c(t, S(t)).

The Ito-Doeblin formula is then used to derive the BSM p.d.e., written below: 

rc(t,x) = $c_{t}$ (t,x) + rx$c_{x}$ (t,x) + $\frac{1}{2}$$ c_x$ $\sigma^2$ $x^2$

The formula above looks similar to the Ito-Doeblin formula above in terms of the fraction and the second-order differential term. 

For a video of the PDE derivation, once again you may refer to this video by [QuantPy](https://www.youtube.com/watch?v=6LhV32OIZ1Y)

In this chapter, one learned that the Ito-Doeblin formula is a key foundation of stochastic formula. Its "signature" is the one-half fraction and the second-order differential, which gives rise to the diffusion term (or called "smaller error" in the book) that differentiates stochastic calculus from ordinary calculus. 

Using the Ito-Doeblin formula, we then move to the set-up where one needs to hedge a short position in a European call option using an underlying long position. The end-result is the B.S.M. p.d.e. version of the BSM formula. That's it for this chapter. Two more chapters till the end of this series!


