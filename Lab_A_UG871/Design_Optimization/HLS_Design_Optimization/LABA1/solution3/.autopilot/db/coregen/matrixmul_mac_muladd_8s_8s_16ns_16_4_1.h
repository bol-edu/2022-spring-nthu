// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __matrixmul_mac_muladd_8s_8s_16ns_16_4_1__HH__
#define __matrixmul_mac_muladd_8s_8s_16ns_16_4_1__HH__
#include "matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_1.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(matrixmul_mac_muladd_8s_8s_16ns_16_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_1 matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_1_U;

    SC_CTOR(matrixmul_mac_muladd_8s_8s_16ns_16_4_1):  matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_1_U ("matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_1_U") {
        matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_1_U.clk(clk);
        matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_1_U.rst(reset);
        matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_1_U.ce(ce);
        matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_1_U.in0(din0);
        matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_1_U.in1(din1);
        matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_1_U.in2(din2);
        matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_1_U.dout(dout);

    }

};

#endif //
