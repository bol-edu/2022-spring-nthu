// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Users/Lab611/Desktop/Portal/yuri-project/2022HLS/Labtest/aaa.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Lab611/Desktop/Portal/yuri-project/2022HLS/Labtest/aaa.cpp"


void aaa(
      int a[12],int b[12], int r[12]
      )
{


 int i ;
 add :
 for (i =0; i<10 ; i=i+1)
 {

  r[i] = a[i] + b[i]+ a[i+1] +a[i+2]+ b[i+1] +b[i+2];
  r[i+2] = r[i+1]+r[i] +1 ;





 }

}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_aaa_ir(int *, int *, int *);
#ifdef __cplusplus
extern "C"
#endif
void aaa_hw_stub(int *a, int *b, int *r){
aaa(a, b, r);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void apatb_aaa_sw(int *a, int *b, int *r){
apatb_aaa_ir(a, b, r);
return ;
}
#endif
# 23 "C:/Users/Lab611/Desktop/Portal/yuri-project/2022HLS/Labtest/aaa.cpp"

