// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "D:/lab_A/Interface_Synthesis/lab2/adders_io.c"
# 1 "D:/lab_A/Interface_Synthesis/lab2/adders_io.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 147 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "D:/lab_A/Interface_Synthesis/lab2/adders_io.c" 2
# 46 "D:/lab_A/Interface_Synthesis/lab2/adders_io.c"
# 1 "D:/lab_A/Interface_Synthesis/lab2/adders_io.h" 1
# 49 "D:/lab_A/Interface_Synthesis/lab2/adders_io.h"
void adders_io(int in1, int in2, int *in_out1);
# 47 "D:/lab_A/Interface_Synthesis/lab2/adders_io.c" 2

void adders_io(int in1, int in2, int *in_out1) {

 *in_out1 = in1 + in2 + *in_out1;


}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_adders_io_ir(int, int, int *);
#ifdef __cplusplus
extern "C"
#endif
void adders_io_hw_stub(int in1, int in2, int *in_out1){
adders_io(in1, in2, in_out1);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void apatb_adders_io_sw(int in1, int in2, int *in_out1){
apatb_adders_io_ir(in1, in2, in_out1);
return ;
}
#endif
# 53 "D:/lab_A/Interface_Synthesis/lab2/adders_io.c"

