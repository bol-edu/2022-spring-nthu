# HLS_LAB_B_5
## Briefly introduce cholesky_algorithm

#### Algorithm Description
This tutorial is based on a C++ kernel that we'll optimize for highest throughput.

The algorithm is a common linear algebra solver, the decomposition of a Hermitian, positive-definite matrix into the product of a lower triangular matrix and its conjugate transpose.  For this purpose we will use the Cholesky decomposition or Cholesky factorization (pronounced /ʃo-LESS-key/).  This solver is useful for several numerical problems, in particular for Monte Carlo simulations.

This algorithm has a serial complexity O(n<sup>3</sup>).

![Cholesky description](https://github.com/hank871116/HLS_LAB_B_5/blob/main/src/images/description.png)

[_More information on wikipedia..._](https://en.wikipedia.org/wiki/Cholesky_decomposition)
Note that this solver is included as part the official Vitis accelerated libraries, here is a link to its documentation:
https://xilinx.github.io/Vitis_Libraries/solver/2021.2/guide_L2/L2_api.html#potrf

For our purpose, we will start with a simple description implemented in C++ and explain how to adapt it for acceleration with an Alveo U50 card.

Reference:https://github.com/Xilinx/Vitis-Tutorials/tree/2021.2/Hardware_Acceleration/Design_Tutorials/06-cholesky-accel
