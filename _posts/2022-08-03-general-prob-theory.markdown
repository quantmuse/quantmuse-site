---
layout: post
title:  "Stochastic Calculus Series I: General Probability Theory"
date: 2022-08-03
categories: mathematics, finance
---

### Introduction ### 
For the next few weeks, I will be writing on a series based on Steven E. Shreve's [Stochastic Calculus for Finance II](https://link.springer.com/book/9780387401010). 

This book has been recommended by many as one of the key *quant finance* books. According to Shreve, this book has evolved from the Master of Science in Computational Finance program at Carnegie Mellon University. Therefore, grasping the key ideas of this text wlil be helpful for any aspiring quants. 

For simplicity sake, the series will focus on Volume II only, which deals with continuous-time models instead of discrete-time. Shreve has also mentioned in the book's preface that Volume I on the book serves more as an introductory text to Volume II, so if you are interested in that feel free to pick that up.

These coming posts aim to distill the key concepts in the first six chapters of this book and as much as possible, try to explain them in my own words to help with my understanding. 

I will also provide links to useful resources, such as YouTube videos (very helpful!) or blogposts, which helped me understand these concepts.

With that out of the way, let us dive in to the first chapter: General Probability Theory. 

### Chapter One: General Probability Theory ### 

First, why do we need to understand this? Simply put, in an uncertain world, understanding probability is the very first step of gauging the likelihood of events before we can move on to *hedge* the risks of these events or to *price* derivatives that pay off based on certain events. 

Given that this is the first chapter, this lays the foundation for the more advanced topics such as risk-neutral pricing. 

One of the first concepts you'll encounter in this chapter is **probability space**, which is a container with three key elements:
    <ul>
    <li>The universe (otherwise known as a *set*); </li>
    <li>*Collection of the subsets* of this universe; </li>
    <li>And the *probability* that maps these subsets to the interval [0,1] </li>
    </ul>

There are a few rules or guiding principles around these probability spaces, the key ones are P(all events) = 1 and the total probability of disjointed sets (no overlap) should be the sum of the individual probabilities. 

The collection of sets is also known as *sigma-algebra*. There is also an idea called the Borel set, which is the *smallest possible set* that can be formed by considering the *complements* and *unions* of the possible sets. 

You can find a cool video introducing probability spaces here by [Intelligent Systems Lab](https://www.youtube.com/watch?v=DqGUwoz4d4M) in the style of 3Blue1Brown. There is also another a great video on YouTube by [The Bright Side of Mathematics](https://www.youtube.com/watch?v=z5m6HXKx0Wo) that helps illustrate sigma algebra and Borel set.

Another key concept in this chapter is to think in terms of *intervals* instead of single events. 

When we slice the interval [0,1] thin enough, the probabilty of a single point happening is close to zero, but when we start to consider intervals between two points, we can start to assign probability in the form of density or area under graph.

Calculating expectations in a discrete world is relatively straightforward: suppose we play a coin flip game with a stranger who offers to pay us $1 in the event of a Head or take $1 from us in the event of a Tail. The expectations of this game is simply $ 0.5* 1 + 0.5 * -1 = 0$. 

Applying this logic to an uncountable and infinite probability space, we need to turn to integrals of a continuous function to calculate expectations. 

The way we can do this is through either Riemann integral or Lebesgue integral. I did not dive deep into this but for now, the key difference to know is that the former is based on slicing rectangles on the x-axis, and the latter on the y-axis. A Google image search of *Riemann vs Lebesgue integral* will help illustrate this. 

We have now arrived at one of the most important (I think!) section of this chapter, which introduces the Radon-Nikodym derivative. This is where we are introduced to the two different worlds -- one **real** and one termed **risk-netural** -- that have separate probability spaces. 

The Radon-Nikodym derivative is the link connecting these two, and is basically the ratio of the different probabilities/densities. Formally, the formula is $Z = d\hat{P}/ dP$, where $\hat{P}$ represents the risk-netural probability. 

An excellent blogpost by [YouFinance](https://youfinanceblog.wordpress.com/2018/03/31/the-radon-nikodym-derivative/) explains this clearly. 

There we have it for the first chapter on general probability theory. We learned about probability spaces, sigma-algebra, Borel sets, thinking in terms of intervals, using integrals to calculate expectations, Riemann versus Lebesgue integral, and most importantly the Radon-Nikodym derivative.  

I skipped through a lot of the maths and proofs in this chapter and instead try to focus on the key ideas and concepts that will come up again in the later chapters. 


