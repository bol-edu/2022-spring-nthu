############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name aaa "aaa"
set_directive_pipeline "aaa/SUM_LOOP"
set_directive_pipeline "aaa/add"
set_directive_array_partition -dim 1 -type complete "aaa" a
set_directive_array_partition -dim 1 -type complete "aaa" b
set_directive_array_partition -type complete -dim 1 "aaa" r
