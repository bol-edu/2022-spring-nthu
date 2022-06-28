############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name matrixmul "matrixmul"
set_directive_pipeline "matrixmul/Col"
set_directive_array_reshape -dim 2 -type complete "matrixmul" a
set_directive_array_reshape -dim 1 -type complete "matrixmul" b
