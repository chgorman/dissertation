# Dissertation

This repository contains the dissertation I submitted for my
doctorate in mathematics.
I successfully defended my dissertation on May 16, 2019,
and I graduated with my Ph.D. in mathematics from UC Santa Barbara
on June 14, 2019.
This version contains minor corrections to my dissertation
that were noticed after it was submitted.

## Abstract

This dissertation focuses on the development, implementation, and analysis
of fast algorithms for the Minimum Sobolev norm (MSN).
The MSN method obtains a unique solution from
an underdetermined linear system by minimizing
a derivative norm in the appropriate Hilbert space.
We obtain fast algorithms by exploiting the inherent
structure of the underlying system.
After performing an Inverse Discrete Cosine Transform,
a small number of additional operations are required.
Results show the method performs as well as Chebyshev interpolation
when approximating smooth functions
and better than a wide variety of smooth Chebyshev filters
when attempting to approximate rough functions.

One chapter is devoted to analyzing a stochastic norm
estimate which is useful when computing low-rank approximations of matrices.
This estimate allows us to compute approximations with
relative error close to machine precision, which previously was not possible.

## Dissertation and Thesis Template

A template for UC Santa Barbara dissertations and theses may be found
[here](https://github.com/chgorman/ucsb-dissertation-template).
