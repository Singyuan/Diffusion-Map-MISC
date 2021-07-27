# Diffusion-Map-MISC

## Introduction

## Data

## Quick Start (Demo)

## Function
Again, these are miscellaneous applications of diffusion map. In folder `src`, there are four types of advaced diffusion map as follows.
1. **Basic diffusion map** `DMapBasic`: The kernel bandwidth could be given and the probability density function could be normalized. Note that it will show that the median number of data in the kernel bandwidth to tune a better bandwidth.
> Please refer to Porte _et al._, **(2008)**, [1].
2. **Diffusion map via self-tune kernel bandwidth** `DMapSelftune`: The kernel bandwidth would be determined by its neighborhood.
> Please refer to Chapter 14 in Wang, [2] and Zelnik-Manor & Perona, **(2005)**, [3].
3. **Reduced diffusion map via Roseland** `DMapRoseland`: Use Roseland method to accelerate diffusion map. Note that it will show that the median number of "reference" data in the kernel bandwidth to tune a better bandwidth.
> Please refer to Shen and Wu, **(2019)**, [4].

4. **Diffusion map via Mahalanobis distance** `DMapMD`: Construct affinity matrix by Mahalanobis distance instead of Euclidean distance.
> Please refer to Malik, Shen, Wu & Wu, **(2018)**, [5].

5. **Orientability diffusion map**: TBA.
> Please refer to Singer & Wu, **(2011)**, [6].

6. **Alternating diffusion map**: TBA.
> Please refer to Lederman _et al._, (2015), [7].



## References (random arrangement)
1. J. de la Porte, B. M. Herbst, W. Hereman and S. J. van der Walt, _An introduction to diffusion maps_, **(2008)**.
2. J. Wang, Geometric Structure of High-Dimensional Data and Dimensionality Reduction.
3. L. Zelnik-Manor and P. Perona, _Self-Tuning Spectral Clustering_, **(2005)**.
4. C. Shen and H.-T. Wu, _Scalability and robustness of spectral embedding: landmark diffusion is all you need_, **(2019)**.
5. J. Malik, C. Shen, H.-T. Wu and N. Wu, _Connecting Dots -- from Local Covariance to Empirical Intrinsic Geometry and Locally Linear Embedding_, **(2018)**.
6. A. Singer and H.-T. Wu, _Orientability and diffusion maps_, **(2011)**.
7. R. R. Lederman, R Talmon, H.-T. Wu, Y.-L. Lo and R. R. Coifman, _Please refer to Alternating diffusion for common manifold learning with application to sleep stage assessment_, **(2015)**.

