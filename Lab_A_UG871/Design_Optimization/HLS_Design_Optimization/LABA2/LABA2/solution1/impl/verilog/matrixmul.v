// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="matrixmul_matrixmul,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.559000,HLS_SYN_LAT=13,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=243,HLS_SYN_LUT=539,HLS_VERSION=2021_2}" *)

module matrixmul (
        ap_local_block,
        ap_local_deadlock,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        b_dout,
        b_empty_n,
        b_read,
        res_din,
        res_full_n,
        res_write,
        a_address0,
        a_ce0,
        a_q0
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

output   ap_local_block;
output   ap_local_deadlock;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [23:0] b_dout;
input   b_empty_n;
output   b_read;
output  [15:0] res_din;
input   res_full_n;
output   res_write;
output  [1:0] a_address0;
output   a_ce0;
input  [23:0] a_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg b_read;
reg res_write;
reg a_ce0;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln63_fu_538_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire   [0:0] select_ln63_2_fu_272_p3;
reg    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
reg    ap_block_state7_pp0_stage0_iter5;
reg    ap_enable_reg_pp0_iter5;
reg    ap_block_pp0_stage0_11001;
reg    b_blk_n;
wire    ap_block_pp0_stage0;
reg    res_blk_n;
reg   [1:0] add_ln6319_reg_161;
reg   [0:0] icmp_ln6518_reg_175;
reg   [0:0] cmp817_reg_189;
reg   [1:0] j13_reg_203;
reg   [1:0] i3_reg_217;
reg   [3:0] indvar_flatten2_reg_231;
wire   [1:0] select_ln63_fu_245_p3;
reg   [1:0] select_ln63_reg_799;
wire   [1:0] i_fu_253_p3;
reg   [1:0] i_reg_806;
wire   [0:0] icmp_ln70_fu_280_p2;
reg   [0:0] icmp_ln70_reg_814;
wire   [3:0] add_ln63_1_fu_286_p2;
reg   [3:0] add_ln63_1_reg_826;
wire   [1:0] j_fu_514_p2;
reg   [1:0] j_reg_831;
wire   [0:0] cmp8_fu_520_p2;
reg   [0:0] cmp8_reg_836;
wire   [0:0] icmp_ln65_fu_526_p2;
reg   [0:0] icmp_ln65_reg_841;
wire   [1:0] add_ln63_fu_532_p2;
reg   [1:0] add_ln63_reg_846;
reg   [0:0] icmp_ln63_reg_851;
reg   [0:0] icmp_ln63_reg_851_pp0_iter1_reg;
reg   [0:0] icmp_ln63_reg_851_pp0_iter2_reg;
reg   [0:0] icmp_ln63_reg_851_pp0_iter3_reg;
reg   [0:0] icmp_ln63_reg_851_pp0_iter4_reg;
wire  signed [7:0] a_row_10_fu_584_p3;
reg  signed [7:0] a_row_10_reg_855;
wire  signed [7:0] a_row_9_fu_591_p3;
reg  signed [7:0] a_row_9_reg_860;
reg  signed [7:0] a_row_9_reg_860_pp0_iter2_reg;
wire   [7:0] tmp_1_fu_625_p5;
reg   [7:0] tmp_1_reg_865;
reg  signed [7:0] tmp_1_reg_865_pp0_iter2_reg;
wire   [7:0] tmp_2_fu_636_p5;
reg  signed [7:0] tmp_2_reg_870;
wire  signed [15:0] mul_ln82_fu_693_p2;
wire   [15:0] grp_fu_701_p3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg   [1:0] ap_phi_mux_add_ln6319_phi_fu_165_p6;
reg   [0:0] ap_phi_mux_icmp_ln6518_phi_fu_179_p6;
reg   [0:0] ap_phi_mux_cmp817_phi_fu_193_p6;
reg   [1:0] ap_phi_mux_j13_phi_fu_207_p6;
reg   [1:0] ap_phi_mux_i3_phi_fu_221_p6;
reg   [3:0] ap_phi_mux_indvar_flatten2_phi_fu_235_p6;
wire   [63:0] zext_ln63_fu_261_p1;
reg   [7:0] a_row_fu_72;
wire  signed [7:0] a_row_11_fu_577_p3;
reg   [7:0] a_row_1_fu_76;
reg   [7:0] a_row_2_fu_80;
reg   [7:0] b_copy_2_2_1_fu_84;
wire   [7:0] b_copy_2_2_5_fu_357_p3;
reg   [7:0] b_copy_2_2_2_fu_88;
wire   [7:0] b_copy_2_2_7_fu_373_p3;
reg   [7:0] b_copy_2_2_3_fu_92;
wire   [7:0] b_copy_2_2_9_fu_381_p3;
reg   [7:0] b_copy_1_2_1_fu_96;
wire   [7:0] b_copy_1_2_5_fu_397_p3;
reg   [7:0] b_copy_1_2_2_fu_100;
wire   [7:0] b_copy_1_2_7_fu_413_p3;
reg   [7:0] b_copy_1_2_3_fu_104;
wire   [7:0] b_copy_1_2_9_fu_421_p3;
reg   [7:0] b_copy_0_2_1_fu_108;
wire   [7:0] b_copy_0_2_5_fu_437_p3;
reg   [7:0] b_copy_0_2_2_fu_112;
wire   [7:0] b_copy_0_2_7_fu_453_p3;
reg   [7:0] b_copy_0_2_3_fu_116;
wire   [7:0] b_copy_0_2_9_fu_461_p3;
wire   [15:0] grp_fu_709_p3;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] cmp8_mid1_fu_266_p2;
wire   [0:0] icmp_ln77_fu_343_p2;
wire   [7:0] b_copy_2_2_10_fu_333_p4;
wire   [7:0] b_copy_2_2_fu_349_p3;
wire   [7:0] b_copy_2_2_6_fu_365_p3;
wire   [7:0] b_copy_1_2_10_fu_323_p4;
wire   [7:0] b_copy_1_2_fu_389_p3;
wire   [7:0] b_copy_1_2_6_fu_405_p3;
wire   [7:0] b_copy_0_2_10_fu_319_p1;
wire   [7:0] b_copy_0_2_fu_429_p3;
wire   [7:0] b_copy_0_2_6_fu_445_p3;
wire   [7:0] a_row_5_fu_567_p4;
wire   [7:0] a_row_4_fu_557_p4;
wire   [7:0] a_row_8_fu_553_p1;
wire  signed [7:0] tmp_3_fu_651_p5;
reg    grp_fu_701_ce;
reg    grp_fu_709_ce;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_idle_pp0_0to4;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_171;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
end

matrixmul_mux_32_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
mux_32_8_1_1_U1(
    .din0(b_copy_0_2_3_fu_116),
    .din1(b_copy_0_2_2_fu_112),
    .din2(b_copy_0_2_1_fu_108),
    .din3(select_ln63_reg_799),
    .dout(tmp_1_fu_625_p5)
);

matrixmul_mux_32_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
mux_32_8_1_1_U2(
    .din0(b_copy_1_2_3_fu_104),
    .din1(b_copy_1_2_2_fu_100),
    .din2(b_copy_1_2_1_fu_96),
    .din3(select_ln63_reg_799),
    .dout(tmp_2_fu_636_p5)
);

matrixmul_mux_32_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
mux_32_8_1_1_U3(
    .din0(b_copy_2_2_3_fu_92),
    .din1(b_copy_2_2_2_fu_88),
    .din2(b_copy_2_2_1_fu_84),
    .din3(select_ln63_reg_799),
    .dout(tmp_3_fu_651_p5)
);

matrixmul_mul_8s_8s_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mul_8s_8s_16_1_1_U4(
    .din0(tmp_1_reg_865_pp0_iter2_reg),
    .din1(a_row_9_reg_860_pp0_iter2_reg),
    .dout(mul_ln82_fu_693_p2)
);

matrixmul_mac_muladd_8s_8s_16s_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mac_muladd_8s_8s_16s_16_4_1_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_3_fu_651_p5),
    .din1(a_row_11_fu_577_p3),
    .din2(mul_ln82_fu_693_p2),
    .ce(grp_fu_701_ce),
    .dout(grp_fu_701_p3)
);

matrixmul_mac_muladd_8s_8s_16ns_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mac_muladd_8s_8s_16ns_16_4_1_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_2_reg_870),
    .din1(a_row_10_reg_855),
    .din2(grp_fu_701_p3),
    .ce(grp_fu_709_ce),
    .dout(grp_fu_709_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln63_reg_851 == 1'd0))) begin
        add_ln6319_reg_161 <= add_ln63_reg_846;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln63_reg_851 == 1'd1)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        add_ln6319_reg_161 <= 2'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln63_reg_851 == 1'd0))) begin
        cmp817_reg_189 <= cmp8_reg_836;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln63_reg_851 == 1'd1)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        cmp817_reg_189 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln63_reg_851 == 1'd0))) begin
        i3_reg_217 <= i_reg_806;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln63_reg_851 == 1'd1)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        i3_reg_217 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln63_reg_851 == 1'd0))) begin
        icmp_ln6518_reg_175 <= icmp_ln65_reg_841;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln63_reg_851 == 1'd1)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        icmp_ln6518_reg_175 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln63_reg_851 == 1'd0))) begin
        indvar_flatten2_reg_231 <= add_ln63_1_reg_826;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln63_reg_851 == 1'd1)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        indvar_flatten2_reg_231 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln63_reg_851 == 1'd0))) begin
        j13_reg_203 <= j_reg_831;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln63_reg_851 == 1'd1)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        j13_reg_203 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_row_10_reg_855 <= a_row_10_fu_584_p3;
        a_row_9_reg_860 <= a_row_9_fu_591_p3;
        icmp_ln63_reg_851 <= icmp_ln63_fu_538_p2;
        icmp_ln63_reg_851_pp0_iter1_reg <= icmp_ln63_reg_851;
        icmp_ln70_reg_814 <= icmp_ln70_fu_280_p2;
        select_ln63_reg_799 <= select_ln63_fu_245_p3;
        tmp_1_reg_865 <= tmp_1_fu_625_p5;
        tmp_2_reg_870 <= tmp_2_fu_636_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln63_reg_851 == 1'd0))) begin
        a_row_1_fu_76 <= a_row_10_fu_584_p3;
        a_row_2_fu_80 <= a_row_9_fu_591_p3;
        a_row_fu_72 <= a_row_11_fu_577_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        a_row_9_reg_860_pp0_iter2_reg <= a_row_9_reg_860;
        icmp_ln63_reg_851_pp0_iter2_reg <= icmp_ln63_reg_851_pp0_iter1_reg;
        icmp_ln63_reg_851_pp0_iter3_reg <= icmp_ln63_reg_851_pp0_iter2_reg;
        icmp_ln63_reg_851_pp0_iter4_reg <= icmp_ln63_reg_851_pp0_iter3_reg;
        tmp_1_reg_865_pp0_iter2_reg <= tmp_1_reg_865;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start == 1'b1))) begin
        add_ln63_1_reg_826 <= add_ln63_1_fu_286_p2;
        add_ln63_reg_846 <= add_ln63_fu_532_p2;
        cmp8_reg_836 <= cmp8_fu_520_p2;
        i_reg_806 <= i_fu_253_p3;
        icmp_ln65_reg_841 <= icmp_ln65_fu_526_p2;
        j_reg_831 <= j_fu_514_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (select_ln63_2_fu_272_p3 == 1'd1) & (ap_start == 1'b1))) begin
        b_copy_0_2_1_fu_108 <= b_copy_0_2_5_fu_437_p3;
        b_copy_0_2_2_fu_112 <= b_copy_0_2_7_fu_453_p3;
        b_copy_0_2_3_fu_116 <= b_copy_0_2_9_fu_461_p3;
        b_copy_1_2_1_fu_96 <= b_copy_1_2_5_fu_397_p3;
        b_copy_1_2_2_fu_100 <= b_copy_1_2_7_fu_413_p3;
        b_copy_1_2_3_fu_104 <= b_copy_1_2_9_fu_421_p3;
        b_copy_2_2_1_fu_84 <= b_copy_2_2_5_fu_357_p3;
        b_copy_2_2_2_fu_88 <= b_copy_2_2_7_fu_373_p3;
        b_copy_2_2_3_fu_92 <= b_copy_2_2_9_fu_381_p3;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start == 1'b1))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln63_reg_851_pp0_iter4_reg == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_171)) begin
        if ((icmp_ln63_reg_851 == 1'd1)) begin
            ap_phi_mux_add_ln6319_phi_fu_165_p6 = 2'd1;
        end else if ((icmp_ln63_reg_851 == 1'd0)) begin
            ap_phi_mux_add_ln6319_phi_fu_165_p6 = add_ln63_reg_846;
        end else begin
            ap_phi_mux_add_ln6319_phi_fu_165_p6 = add_ln6319_reg_161;
        end
    end else begin
        ap_phi_mux_add_ln6319_phi_fu_165_p6 = add_ln6319_reg_161;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_171)) begin
        if ((icmp_ln63_reg_851 == 1'd1)) begin
            ap_phi_mux_cmp817_phi_fu_193_p6 = 1'd1;
        end else if ((icmp_ln63_reg_851 == 1'd0)) begin
            ap_phi_mux_cmp817_phi_fu_193_p6 = cmp8_reg_836;
        end else begin
            ap_phi_mux_cmp817_phi_fu_193_p6 = cmp817_reg_189;
        end
    end else begin
        ap_phi_mux_cmp817_phi_fu_193_p6 = cmp817_reg_189;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_171)) begin
        if ((icmp_ln63_reg_851 == 1'd1)) begin
            ap_phi_mux_i3_phi_fu_221_p6 = 2'd0;
        end else if ((icmp_ln63_reg_851 == 1'd0)) begin
            ap_phi_mux_i3_phi_fu_221_p6 = i_reg_806;
        end else begin
            ap_phi_mux_i3_phi_fu_221_p6 = i3_reg_217;
        end
    end else begin
        ap_phi_mux_i3_phi_fu_221_p6 = i3_reg_217;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_171)) begin
        if ((icmp_ln63_reg_851 == 1'd1)) begin
            ap_phi_mux_icmp_ln6518_phi_fu_179_p6 = 1'd0;
        end else if ((icmp_ln63_reg_851 == 1'd0)) begin
            ap_phi_mux_icmp_ln6518_phi_fu_179_p6 = icmp_ln65_reg_841;
        end else begin
            ap_phi_mux_icmp_ln6518_phi_fu_179_p6 = icmp_ln6518_reg_175;
        end
    end else begin
        ap_phi_mux_icmp_ln6518_phi_fu_179_p6 = icmp_ln6518_reg_175;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_171)) begin
        if ((icmp_ln63_reg_851 == 1'd1)) begin
            ap_phi_mux_indvar_flatten2_phi_fu_235_p6 = 4'd0;
        end else if ((icmp_ln63_reg_851 == 1'd0)) begin
            ap_phi_mux_indvar_flatten2_phi_fu_235_p6 = add_ln63_1_reg_826;
        end else begin
            ap_phi_mux_indvar_flatten2_phi_fu_235_p6 = indvar_flatten2_reg_231;
        end
    end else begin
        ap_phi_mux_indvar_flatten2_phi_fu_235_p6 = indvar_flatten2_reg_231;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_171)) begin
        if ((icmp_ln63_reg_851 == 1'd1)) begin
            ap_phi_mux_j13_phi_fu_207_p6 = 2'd0;
        end else if ((icmp_ln63_reg_851 == 1'd0)) begin
            ap_phi_mux_j13_phi_fu_207_p6 = j_reg_831;
        end else begin
            ap_phi_mux_j13_phi_fu_207_p6 = j13_reg_203;
        end
    end else begin
        ap_phi_mux_j13_phi_fu_207_p6 = j13_reg_203;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start == 1'b1) & (icmp_ln63_fu_538_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to4 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (select_ln63_2_fu_272_p3 == 1'd1) & (ap_start == 1'b1))) begin
        b_blk_n = b_empty_n;
    end else begin
        b_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (select_ln63_2_fu_272_p3 == 1'd1) & (ap_start == 1'b1))) begin
        b_read = 1'b1;
    end else begin
        b_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_701_ce = 1'b1;
    end else begin
        grp_fu_701_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_709_ce = 1'b1;
    end else begin
        grp_fu_709_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        res_blk_n = res_full_n;
    end else begin
        res_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        res_write = 1'b1;
    end else begin
        res_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((ap_reset_idle_pp0 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = zext_ln63_fu_261_p1;

assign a_row_10_fu_584_p3 = ((icmp_ln70_reg_814[0:0] == 1'b1) ? a_row_4_fu_557_p4 : a_row_1_fu_76);

assign a_row_11_fu_577_p3 = ((icmp_ln70_reg_814[0:0] == 1'b1) ? a_row_5_fu_567_p4 : a_row_fu_72);

assign a_row_4_fu_557_p4 = {{a_q0[15:8]}};

assign a_row_5_fu_567_p4 = {{a_q0[23:16]}};

assign a_row_8_fu_553_p1 = a_q0[7:0];

assign a_row_9_fu_591_p3 = ((icmp_ln70_reg_814[0:0] == 1'b1) ? a_row_8_fu_553_p1 : a_row_2_fu_80);

assign add_ln63_1_fu_286_p2 = (ap_phi_mux_indvar_flatten2_phi_fu_235_p6 + 4'd1);

assign add_ln63_fu_532_p2 = (i_fu_253_p3 + 2'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter5 == 1'b1) & (res_full_n == 1'b0)) | ((select_ln63_2_fu_272_p3 == 1'd1) & (b_empty_n == 1'b0) & (ap_start == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter5 == 1'b1) & (res_full_n == 1'b0)) | ((select_ln63_2_fu_272_p3 == 1'd1) & (b_empty_n == 1'b0) & (ap_start == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter5 == 1'b1) & (res_full_n == 1'b0)) | ((select_ln63_2_fu_272_p3 == 1'd1) & (b_empty_n == 1'b0) & (ap_start == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((select_ln63_2_fu_272_p3 == 1'd1) & (b_empty_n == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state7_pp0_stage0_iter5 = (res_full_n == 1'b0);
end

always @ (*) begin
    ap_condition_171 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_local_block = 1'b0;

assign ap_local_deadlock = 1'b0;

assign b_copy_0_2_10_fu_319_p1 = b_dout[7:0];

assign b_copy_0_2_5_fu_437_p3 = ((icmp_ln70_fu_280_p2[0:0] == 1'b1) ? b_copy_0_2_1_fu_108 : b_copy_0_2_fu_429_p3);

assign b_copy_0_2_6_fu_445_p3 = ((icmp_ln77_fu_343_p2[0:0] == 1'b1) ? b_copy_0_2_10_fu_319_p1 : b_copy_0_2_2_fu_112);

assign b_copy_0_2_7_fu_453_p3 = ((icmp_ln70_fu_280_p2[0:0] == 1'b1) ? b_copy_0_2_2_fu_112 : b_copy_0_2_6_fu_445_p3);

assign b_copy_0_2_9_fu_461_p3 = ((icmp_ln70_fu_280_p2[0:0] == 1'b1) ? b_copy_0_2_10_fu_319_p1 : b_copy_0_2_3_fu_116);

assign b_copy_0_2_fu_429_p3 = ((icmp_ln77_fu_343_p2[0:0] == 1'b1) ? b_copy_0_2_1_fu_108 : b_copy_0_2_10_fu_319_p1);

assign b_copy_1_2_10_fu_323_p4 = {{b_dout[15:8]}};

assign b_copy_1_2_5_fu_397_p3 = ((icmp_ln70_fu_280_p2[0:0] == 1'b1) ? b_copy_1_2_1_fu_96 : b_copy_1_2_fu_389_p3);

assign b_copy_1_2_6_fu_405_p3 = ((icmp_ln77_fu_343_p2[0:0] == 1'b1) ? b_copy_1_2_10_fu_323_p4 : b_copy_1_2_2_fu_100);

assign b_copy_1_2_7_fu_413_p3 = ((icmp_ln70_fu_280_p2[0:0] == 1'b1) ? b_copy_1_2_2_fu_100 : b_copy_1_2_6_fu_405_p3);

assign b_copy_1_2_9_fu_421_p3 = ((icmp_ln70_fu_280_p2[0:0] == 1'b1) ? b_copy_1_2_10_fu_323_p4 : b_copy_1_2_3_fu_104);

assign b_copy_1_2_fu_389_p3 = ((icmp_ln77_fu_343_p2[0:0] == 1'b1) ? b_copy_1_2_1_fu_96 : b_copy_1_2_10_fu_323_p4);

assign b_copy_2_2_10_fu_333_p4 = {{b_dout[23:16]}};

assign b_copy_2_2_5_fu_357_p3 = ((icmp_ln70_fu_280_p2[0:0] == 1'b1) ? b_copy_2_2_1_fu_84 : b_copy_2_2_fu_349_p3);

assign b_copy_2_2_6_fu_365_p3 = ((icmp_ln77_fu_343_p2[0:0] == 1'b1) ? b_copy_2_2_10_fu_333_p4 : b_copy_2_2_2_fu_88);

assign b_copy_2_2_7_fu_373_p3 = ((icmp_ln70_fu_280_p2[0:0] == 1'b1) ? b_copy_2_2_2_fu_88 : b_copy_2_2_6_fu_365_p3);

assign b_copy_2_2_9_fu_381_p3 = ((icmp_ln70_fu_280_p2[0:0] == 1'b1) ? b_copy_2_2_10_fu_333_p4 : b_copy_2_2_3_fu_92);

assign b_copy_2_2_fu_349_p3 = ((icmp_ln77_fu_343_p2[0:0] == 1'b1) ? b_copy_2_2_1_fu_84 : b_copy_2_2_10_fu_333_p4);

assign cmp8_fu_520_p2 = ((i_fu_253_p3 == 2'd0) ? 1'b1 : 1'b0);

assign cmp8_mid1_fu_266_p2 = ((ap_phi_mux_add_ln6319_phi_fu_165_p6 == 2'd0) ? 1'b1 : 1'b0);

assign i_fu_253_p3 = ((ap_phi_mux_icmp_ln6518_phi_fu_179_p6[0:0] == 1'b1) ? ap_phi_mux_add_ln6319_phi_fu_165_p6 : ap_phi_mux_i3_phi_fu_221_p6);

assign icmp_ln63_fu_538_p2 = ((ap_phi_mux_indvar_flatten2_phi_fu_235_p6 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln65_fu_526_p2 = ((j_fu_514_p2 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln70_fu_280_p2 = ((select_ln63_fu_245_p3 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln77_fu_343_p2 = ((select_ln63_fu_245_p3 == 2'd1) ? 1'b1 : 1'b0);

assign j_fu_514_p2 = (select_ln63_fu_245_p3 + 2'd1);

assign res_din = grp_fu_709_p3;

assign select_ln63_2_fu_272_p3 = ((ap_phi_mux_icmp_ln6518_phi_fu_179_p6[0:0] == 1'b1) ? cmp8_mid1_fu_266_p2 : ap_phi_mux_cmp817_phi_fu_193_p6);

assign select_ln63_fu_245_p3 = ((ap_phi_mux_icmp_ln6518_phi_fu_179_p6[0:0] == 1'b1) ? 2'd0 : ap_phi_mux_j13_phi_fu_207_p6);

assign zext_ln63_fu_261_p1 = i_fu_253_p3;

endmodule //matrixmul
