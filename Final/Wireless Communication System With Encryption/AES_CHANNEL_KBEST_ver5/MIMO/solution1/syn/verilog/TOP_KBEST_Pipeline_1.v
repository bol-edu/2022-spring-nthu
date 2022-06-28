// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module TOP_KBEST_Pipeline_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_out,
        p_out_ap_vld,
        p_out1,
        p_out1_ap_vld,
        p_out2,
        p_out2_ap_vld,
        p_out3,
        p_out3_ap_vld,
        p_out4,
        p_out4_ap_vld,
        p_out5,
        p_out5_ap_vld,
        p_out6,
        p_out6_ap_vld,
        p_out7,
        p_out7_ap_vld,
        p_out8,
        p_out8_ap_vld,
        p_out9,
        p_out9_ap_vld,
        p_out10,
        p_out10_ap_vld,
        p_out11,
        p_out11_ap_vld,
        p_out12,
        p_out12_ap_vld,
        p_out13,
        p_out13_ap_vld,
        p_out14,
        p_out14_ap_vld,
        p_out15,
        p_out15_ap_vld,
        p_out16,
        p_out16_ap_vld,
        p_out17,
        p_out17_ap_vld,
        p_out18,
        p_out18_ap_vld,
        p_out19,
        p_out19_ap_vld,
        p_out20,
        p_out20_ap_vld,
        p_out21,
        p_out21_ap_vld,
        p_out22,
        p_out22_ap_vld,
        p_out23,
        p_out23_ap_vld,
        p_out24,
        p_out24_ap_vld,
        p_out25,
        p_out25_ap_vld,
        p_out26,
        p_out26_ap_vld,
        p_out27,
        p_out27_ap_vld,
        p_out28,
        p_out28_ap_vld,
        p_out29,
        p_out29_ap_vld,
        p_out30,
        p_out30_ap_vld,
        p_out31,
        p_out31_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] p_out;
output   p_out_ap_vld;
output  [31:0] p_out1;
output   p_out1_ap_vld;
output  [31:0] p_out2;
output   p_out2_ap_vld;
output  [31:0] p_out3;
output   p_out3_ap_vld;
output  [31:0] p_out4;
output   p_out4_ap_vld;
output  [31:0] p_out5;
output   p_out5_ap_vld;
output  [31:0] p_out6;
output   p_out6_ap_vld;
output  [31:0] p_out7;
output   p_out7_ap_vld;
output  [31:0] p_out8;
output   p_out8_ap_vld;
output  [31:0] p_out9;
output   p_out9_ap_vld;
output  [31:0] p_out10;
output   p_out10_ap_vld;
output  [31:0] p_out11;
output   p_out11_ap_vld;
output  [31:0] p_out12;
output   p_out12_ap_vld;
output  [31:0] p_out13;
output   p_out13_ap_vld;
output  [31:0] p_out14;
output   p_out14_ap_vld;
output  [31:0] p_out15;
output   p_out15_ap_vld;
output  [31:0] p_out16;
output   p_out16_ap_vld;
output  [31:0] p_out17;
output   p_out17_ap_vld;
output  [31:0] p_out18;
output   p_out18_ap_vld;
output  [31:0] p_out19;
output   p_out19_ap_vld;
output  [31:0] p_out20;
output   p_out20_ap_vld;
output  [31:0] p_out21;
output   p_out21_ap_vld;
output  [31:0] p_out22;
output   p_out22_ap_vld;
output  [31:0] p_out23;
output   p_out23_ap_vld;
output  [31:0] p_out24;
output   p_out24_ap_vld;
output  [31:0] p_out25;
output   p_out25_ap_vld;
output  [31:0] p_out26;
output   p_out26_ap_vld;
output  [31:0] p_out27;
output   p_out27_ap_vld;
output  [31:0] p_out28;
output   p_out28_ap_vld;
output  [31:0] p_out29;
output   p_out29_ap_vld;
output  [31:0] p_out30;
output   p_out30_ap_vld;
output  [31:0] p_out31;
output   p_out31_ap_vld;

reg ap_idle;
reg p_out_ap_vld;
reg p_out1_ap_vld;
reg p_out2_ap_vld;
reg p_out3_ap_vld;
reg p_out4_ap_vld;
reg p_out5_ap_vld;
reg p_out6_ap_vld;
reg p_out7_ap_vld;
reg p_out8_ap_vld;
reg p_out9_ap_vld;
reg p_out10_ap_vld;
reg p_out11_ap_vld;
reg p_out12_ap_vld;
reg p_out13_ap_vld;
reg p_out14_ap_vld;
reg p_out15_ap_vld;
reg p_out16_ap_vld;
reg p_out17_ap_vld;
reg p_out18_ap_vld;
reg p_out19_ap_vld;
reg p_out20_ap_vld;
reg p_out21_ap_vld;
reg p_out22_ap_vld;
reg p_out23_ap_vld;
reg p_out24_ap_vld;
reg p_out25_ap_vld;
reg p_out26_ap_vld;
reg p_out27_ap_vld;
reg p_out28_ap_vld;
reg p_out29_ap_vld;
reg p_out30_ap_vld;
reg p_out31_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] exitcond79157_i_fu_316_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_loop_init;
wire   [1:0] p_cast1214_i_fu_328_p4;
wire   [2:0] empty_443_fu_338_p1;
reg   [5:0] empty_fu_112;
wire   [5:0] empty_442_fu_322_p2;
reg   [5:0] ap_sig_allocacmp_p_load67;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end

TOP_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((exitcond79157_i_fu_316_p2 == 1'd0)) begin
            empty_fu_112 <= empty_442_fu_322_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            empty_fu_112 <= 6'd0;
        end
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_p_load67 = 6'd0;
    end else begin
        ap_sig_allocacmp_p_load67 = empty_fu_112;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd1) & (p_cast1214_i_fu_328_p4 == 2'd0)))) begin
        p_out10_ap_vld = 1'b1;
    end else begin
        p_out10_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd2) & (p_cast1214_i_fu_328_p4 == 2'd0)))) begin
        p_out11_ap_vld = 1'b1;
    end else begin
        p_out11_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd3) & (p_cast1214_i_fu_328_p4 == 2'd0)))) begin
        p_out12_ap_vld = 1'b1;
    end else begin
        p_out12_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd4) & (p_cast1214_i_fu_328_p4 == 2'd0)))) begin
        p_out13_ap_vld = 1'b1;
    end else begin
        p_out13_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd5) & (p_cast1214_i_fu_328_p4 == 2'd0)))) begin
        p_out14_ap_vld = 1'b1;
    end else begin
        p_out14_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd6) & (p_cast1214_i_fu_328_p4 == 2'd0)))) begin
        p_out15_ap_vld = 1'b1;
    end else begin
        p_out15_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd7) & (p_cast1214_i_fu_328_p4 == 2'd1)))) begin
        p_out16_ap_vld = 1'b1;
    end else begin
        p_out16_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd0) & (p_cast1214_i_fu_328_p4 == 2'd1)))) begin
        p_out17_ap_vld = 1'b1;
    end else begin
        p_out17_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd1) & (p_cast1214_i_fu_328_p4 == 2'd1)))) begin
        p_out18_ap_vld = 1'b1;
    end else begin
        p_out18_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd2) & (p_cast1214_i_fu_328_p4 == 2'd1)))) begin
        p_out19_ap_vld = 1'b1;
    end else begin
        p_out19_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd0) & (p_cast1214_i_fu_328_p4 == 2'd3)))) begin
        p_out1_ap_vld = 1'b1;
    end else begin
        p_out1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd3) & (p_cast1214_i_fu_328_p4 == 2'd1)))) begin
        p_out20_ap_vld = 1'b1;
    end else begin
        p_out20_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd4) & (p_cast1214_i_fu_328_p4 == 2'd1)))) begin
        p_out21_ap_vld = 1'b1;
    end else begin
        p_out21_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd5) & (p_cast1214_i_fu_328_p4 == 2'd1)))) begin
        p_out22_ap_vld = 1'b1;
    end else begin
        p_out22_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd6) & (p_cast1214_i_fu_328_p4 == 2'd1)))) begin
        p_out23_ap_vld = 1'b1;
    end else begin
        p_out23_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd7) & (p_cast1214_i_fu_328_p4 == 2'd2)))) begin
        p_out24_ap_vld = 1'b1;
    end else begin
        p_out24_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd0) & (p_cast1214_i_fu_328_p4 == 2'd2)))) begin
        p_out25_ap_vld = 1'b1;
    end else begin
        p_out25_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd1) & (p_cast1214_i_fu_328_p4 == 2'd2)))) begin
        p_out26_ap_vld = 1'b1;
    end else begin
        p_out26_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd2) & (p_cast1214_i_fu_328_p4 == 2'd2)))) begin
        p_out27_ap_vld = 1'b1;
    end else begin
        p_out27_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd3) & (p_cast1214_i_fu_328_p4 == 2'd2)))) begin
        p_out28_ap_vld = 1'b1;
    end else begin
        p_out28_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd4) & (p_cast1214_i_fu_328_p4 == 2'd2)))) begin
        p_out29_ap_vld = 1'b1;
    end else begin
        p_out29_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd1) & (p_cast1214_i_fu_328_p4 == 2'd3)))) begin
        p_out2_ap_vld = 1'b1;
    end else begin
        p_out2_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd5) & (p_cast1214_i_fu_328_p4 == 2'd2)))) begin
        p_out30_ap_vld = 1'b1;
    end else begin
        p_out30_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd6) & (p_cast1214_i_fu_328_p4 == 2'd2)))) begin
        p_out31_ap_vld = 1'b1;
    end else begin
        p_out31_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd2) & (p_cast1214_i_fu_328_p4 == 2'd3)))) begin
        p_out3_ap_vld = 1'b1;
    end else begin
        p_out3_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd3) & (p_cast1214_i_fu_328_p4 == 2'd3)))) begin
        p_out4_ap_vld = 1'b1;
    end else begin
        p_out4_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd4) & (p_cast1214_i_fu_328_p4 == 2'd3)))) begin
        p_out5_ap_vld = 1'b1;
    end else begin
        p_out5_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd5) & (p_cast1214_i_fu_328_p4 == 2'd3)))) begin
        p_out6_ap_vld = 1'b1;
    end else begin
        p_out6_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd6) & (p_cast1214_i_fu_328_p4 == 2'd3)))) begin
        p_out7_ap_vld = 1'b1;
    end else begin
        p_out7_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd7) & (p_cast1214_i_fu_328_p4 == 2'd0)))) begin
        p_out8_ap_vld = 1'b1;
    end else begin
        p_out8_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd0) & (p_cast1214_i_fu_328_p4 == 2'd0)))) begin
        p_out9_ap_vld = 1'b1;
    end else begin
        p_out9_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (exitcond79157_i_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (empty_443_fu_338_p1 == 3'd7) & (p_cast1214_i_fu_328_p4 == 2'd3)))) begin
        p_out_ap_vld = 1'b1;
    end else begin
        p_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_442_fu_322_p2 = (ap_sig_allocacmp_p_load67 + 6'd1);

assign empty_443_fu_338_p1 = ap_sig_allocacmp_p_load67[2:0];

assign exitcond79157_i_fu_316_p2 = ((ap_sig_allocacmp_p_load67 == 6'd32) ? 1'b1 : 1'b0);

assign p_cast1214_i_fu_328_p4 = {{ap_sig_allocacmp_p_load67[4:3]}};

assign p_out = 32'd0;

assign p_out1 = 32'd0;

assign p_out10 = 32'd0;

assign p_out11 = 32'd0;

assign p_out12 = 32'd0;

assign p_out13 = 32'd0;

assign p_out14 = 32'd0;

assign p_out15 = 32'd0;

assign p_out16 = 32'd0;

assign p_out17 = 32'd0;

assign p_out18 = 32'd0;

assign p_out19 = 32'd0;

assign p_out2 = 32'd0;

assign p_out20 = 32'd0;

assign p_out21 = 32'd0;

assign p_out22 = 32'd0;

assign p_out23 = 32'd0;

assign p_out24 = 32'd0;

assign p_out25 = 32'd0;

assign p_out26 = 32'd0;

assign p_out27 = 32'd0;

assign p_out28 = 32'd0;

assign p_out29 = 32'd0;

assign p_out3 = 32'd0;

assign p_out30 = 32'd0;

assign p_out31 = 32'd0;

assign p_out4 = 32'd0;

assign p_out5 = 32'd0;

assign p_out6 = 32'd0;

assign p_out7 = 32'd0;

assign p_out8 = 32'd0;

assign p_out9 = 32'd0;

endmodule //TOP_KBEST_Pipeline_1