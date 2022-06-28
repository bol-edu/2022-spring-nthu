// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __TOP_mac_mulsub_16s_16s_24ns_24_4_1__HH__
#define __TOP_mac_mulsub_16s_16s_24ns_24_4_1__HH__
#include "TOP_mac_mulsub_16s_16s_24ns_24_4_1_DSP48_2.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(TOP_mac_mulsub_16s_16s_24ns_24_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    TOP_mac_mulsub_16s_16s_24ns_24_4_1_DSP48_2 TOP_mac_mulsub_16s_16s_24ns_24_4_1_DSP48_2_U;

    SC_CTOR(TOP_mac_mulsub_16s_16s_24ns_24_4_1):  TOP_mac_mulsub_16s_16s_24ns_24_4_1_DSP48_2_U ("TOP_mac_mulsub_16s_16s_24ns_24_4_1_DSP48_2_U") {
        TOP_mac_mulsub_16s_16s_24ns_24_4_1_DSP48_2_U.clk(clk);
        TOP_mac_mulsub_16s_16s_24ns_24_4_1_DSP48_2_U.rst(reset);
        TOP_mac_mulsub_16s_16s_24ns_24_4_1_DSP48_2_U.ce(ce);
        TOP_mac_mulsub_16s_16s_24ns_24_4_1_DSP48_2_U.in0(din0);
        TOP_mac_mulsub_16s_16s_24ns_24_4_1_DSP48_2_U.in1(din1);
        TOP_mac_mulsub_16s_16s_24ns_24_4_1_DSP48_2_U.in2(din2);
        TOP_mac_mulsub_16s_16s_24ns_24_4_1_DSP48_2_U.dout(dout);

    }

};

#endif //
