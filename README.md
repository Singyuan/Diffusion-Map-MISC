# Diffusion-Map-MISC

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#introduction">Introduction</a></li>
    <li><a href="#data">Data</a></li>
    <li><a href="#quick-start-demo">Quick Start (Demo)</a></li>
    <li><a href="#functions">Functions</a></li>
    <li><a href="#references">References</a></li>
  </ol>
</details>

## Introduction
This repo is a note about diffusion map from the 2021 spring class "Mathematical Foundation toward Artificial Intelligence in Medicine" by Prof. Hau-Tieng Wu in NTU. Here are miscellaneous applications of diffusion map and their references.

## Data
In the folder `data`, there are three data: `UniSphere.mat`, `irismat.mat` and `FakeECG.mat`.
1. Sphere data `UniSphere.mat`: There are 998 sphere points in (x, y, z)-coordinate.
> This is generated from Brian Z Bentz (2021), ( https://www.mathworks.com/matlabcentral/fileexchange/57877-mysphere-n ), MATLAB Central File Exchange.
2. Iris data `irismat.mat`: There are 3 categories of flowers and each categories contains 50 data. Each flower data has 4 features.
> From MATLAB database `load('fisheriris')`
3. ECG data: There are 1229 pulse and each pulse is approximated by 141 points. This original data is about 15 minutes.
> This is generated from McSharry PE, Clifford GD, Tarassenko L, Smith L. (2003), ( https://physionet.org/content/ecgsyn/1.0.0/#files ).

## Quick Start (Demo)
Introduce to how to use the miscellaneous function in the folder `src` by the main functions in folder `exp`. Please visit the folder `exp` first and the following main functions can be tried.
1. Experiment `ExpMain.m`: Try to apply various diffusion map on circle (S1) data. Because we could calculate analytic solution of the eigenfunction, we could confirm the various diffusion map.
> For convergence, please refer to [Coifman & Lafon, (2006), [8]](https://www.sciencedirect.com/science/article/pii/S1063520306000546) and [Singer, (2006), [9]](https://www.sciencedirect.com/science/article/pii/S1063520306000510).

2. Visualization `ECGMain.m`, `ClassificationMain.m`: This is try to visualize the data through the lower dimension.

3. Bandwidth `TorusMain.m`: Find the relation of "bandwidth" and "revolution radius and tube radius of torus". Try to recover torus into S^1 and disc by tune the parameters mentioned above.

4. Diffusion distance `DDistanceMain.mat`: It shows the diffusion distance at t=1 on sphere. The diffusion distance can approximate geodesic distance locally.
> Please refer to [Singer & Wu, (2011), [10]](https://arxiv.org/abs/1102.0075).

5. Dynamical diffusion map `DDmapMain.m`: It shows the first eigenvector flow is similar to trend of ECG data.
> Please refer to [Lin _et al._, (2021), [11]](https://arxiv.org/abs/1907.00502).

## Functions
These are miscellaneous applications of diffusion map. In the folder `src`, there are four types of advaced diffusion map as follows.
1. **Basic diffusion map** `DMapBasic.m`: The kernel bandwidth could be given and the probability density function could be normalized. Note that it will show that the median number of data in the kernel bandwidth to tune a better bandwidth.
> Please refer to [Porte _et al._, (2008), [1]](https://inside.mines.edu/~whereman/papers/delaPorte-Herbst-Hereman-vanderWalt-PRASA-2008.pdf).

2. **Diffusion map via self-tune kernel bandwidth** `DMapSelftune.m`: The kernel bandwidth would be determined by its neighborhood.
> Please refer to Chapter 14 in Wang, [2] and [Zelnik-Manor & Perona, (2005), [3]](https://proceedings.neurips.cc/paper/2004/file/40173ea48d9567f1f393b20c855bb40b-Paper.pdf).

3. **Reduced diffusion map via Roseland** `DMapRoseland.m`: Use Roseland method to accelerate diffusion map. Note that it will show that the median number of "reference" data in the kernel bandwidth to tune a better bandwidth.
> Please refer to [Shen and Wu, (2019), [4]](https://proceedings.neurips.cc/paper/2004/file/40173ea48d9567f1f393b20c855bb40b-Paper.pdf).<br>
> Note that this function include the function `LazyKmeans.m`, which is modified from Kai (2021), Improved Nystrom Kernel Low-rank  Approximation ( https://www.mathworks.com/matlabcentral/fileexchange/38422-improved-nystrom-kernel-low-rank-approximation ), MATLAB Central File.

4. **Diffusion map via Mahalanobis distance** `DMapMD.m`: Construct affinity matrix by Mahalanobis distance instead of Euclidean distance.
> Please refer to [Malik, Shen, Wu & Wu, (2018), [5]](https://arxiv.org/abs/1804.02811).

5. **Orientability diffusion map**: TBA.
> Please refer to [Singer & Wu, (2011), [6]](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3134361/).

6. **Alternating diffusion map**: TBA.
> Please refer to [Lederman _et al._, (2015), [7]](https://ronentalmon.com/wp-content/uploads/2019/03/ICASSP_2015.pdf).



## References 
_Random Arrangement_
1. J. de la Porte, B. M. Herbst, W. Hereman and S. J. van der Walt, _An introduction to diffusion maps_, **(2008)**.
2. J. Wang, _Geometric Structure of High-Dimensional Data and Dimensionality Reduction_.
3. L. Zelnik-Manor and P. Perona, _Self-Tuning Spectral Clustering_, **(2005)**.
4. C. Shen and H.-T. Wu, _Scalability and robustness of spectral embedding: landmark diffusion is all you need_, **(2019)**.
5. J. Malik, C. Shen, H.-T. Wu and N. Wu, _Connecting Dots -- from Local Covariance to Empirical Intrinsic Geometry and Locally Linear Embedding_, **(2018)**.
6. A. Singer and H.-T. Wu, _Orientability and diffusion maps_, **(2011)**.
7. R. R. Lederman, R Talmon, H.-T. Wu, Y.-L. Lo and R. R. Coifman, _Alternating diffusion for common manifold learning with application to sleep stage assessment_, **(2015)**.
8. R. R. Coifman and S. Lafon, _Diffusion Map_, **(2006)**.
9. A. Singer, _From graph to manifold Laplacian: The convergence rate_, **(2006)**.
10. A. Singer and H.-T. Wu, _Vector Diffusion Maps and the Connection Laplacian_, **(2011)**.
11. Y.-T. Lin, J. Malik and H.-T. Wu, _Wave-shape oscillatory model for nonstationary periodic time series analysis_, **(2021)**.
