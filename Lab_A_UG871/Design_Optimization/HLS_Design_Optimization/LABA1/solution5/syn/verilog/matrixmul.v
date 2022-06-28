// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="matrixmul_matrixmul,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.270000,HLS_SYN_LAT=15,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=201,HLS_SYN_LUT=286,HLS_VERSION=2021_2}" *)

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
        a_address0,
        a_ce0,
        a_q0,
        a_address1,
        a_ce1,
        a_q1,
        res_address0,
        res_ce0,
        res_we0,
        res_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

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
output  [1:0] a_address0;
output   a_ce0;
input  [23:0] a_q0;
output  [1:0] a_address1;
output   a_ce1;
input  [23:0] a_q1;
output  [3:0] res_address0;
output   res_ce0;
output   res_we0;
output  [15:0] res_d0;

reg ap_idle;
reg b_read;
reg a_ce0;
reg a_ce1;
reg res_ce0;
reg res_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] icmp_ln54_reg_409;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln54_fu_148_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    b_blk_n;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln56_fu_169_p2;
reg   [0:0] icmp_ln56_reg_413;
wire   [1:0] select_ln54_fu_175_p3;
reg   [1:0] select_ln54_reg_420;
reg   [1:0] select_ln54_reg_420_pp0_iter1_reg;
reg   [1:0] select_ln54_reg_420_pp0_iter2_reg;
reg   [1:0] select_ln54_reg_420_pp0_iter3_reg;
reg   [1:0] select_ln54_reg_420_pp0_iter4_reg;
wire   [1:0] select_ln54_1_fu_188_p3;
reg   [1:0] select_ln54_1_reg_425;
reg   [1:0] select_ln54_1_reg_425_pp0_iter1_reg;
reg   [1:0] select_ln54_1_reg_425_pp0_iter2_reg;
reg   [1:0] select_ln54_1_reg_425_pp0_iter3_reg;
reg   [1:0] select_ln54_1_reg_425_pp0_iter4_reg;
wire   [7:0] select_ln54_2_fu_245_p3;
reg   [7:0] select_ln54_2_reg_436;
reg  signed [7:0] select_ln54_2_reg_436_pp0_iter2_reg;
wire   [7:0] select_ln54_3_fu_262_p3;
reg  signed [7:0] select_ln54_3_reg_441;
wire   [7:0] trunc_ln60_fu_290_p1;
reg   [7:0] trunc_ln60_reg_451;
reg  signed [7:0] trunc_ln60_reg_451_pp0_iter2_reg;
reg  signed [7:0] tmp_4_reg_456;
wire  signed [15:0] mul_ln60_fu_330_p2;
wire   [15:0] grp_fu_366_p3;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] zext_ln54_fu_143_p1;
wire   [63:0] zext_ln54_1_fu_183_p1;
wire   [63:0] zext_ln60_2_fu_361_p1;
reg   [1:0] j_fu_66;
wire   [1:0] add_ln56_fu_196_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_j_load;
reg   [1:0] i_fu_70;
reg   [1:0] ap_sig_allocacmp_i_1;
reg   [3:0] indvar_flatten_fu_74;
wire   [3:0] add_ln54_1_fu_154_p2;
reg   [3:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [15:0] grp_fu_374_p3;
wire   [1:0] add_ln54_fu_163_p2;
wire   [7:0] trunc_ln54_fu_237_p1;
wire   [7:0] trunc_ln54_1_fu_241_p1;
wire   [7:0] tmp_1_mid1_fu_252_p4;
wire   [7:0] tmp_1_fu_217_p4;
wire   [7:0] tmp_2_mid1_fu_269_p4;
wire   [7:0] tmp_2_fu_227_p4;
wire  signed [7:0] select_ln54_4_fu_279_p3;
wire  signed [7:0] tmp_5_fu_304_p4;
wire   [3:0] p_shl_cast_fu_339_p3;
wire   [3:0] zext_ln60_fu_336_p1;
wire   [3:0] sub_ln60_fu_346_p2;
wire   [3:0] zext_ln60_1_fu_352_p1;
wire   [3:0] add_ln60_2_fu_355_p2;
reg    grp_fu_366_ce;
reg    grp_fu_374_ce;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_175;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_done_reg = 1'b0;
end

matrixmul_mul_8s_8s_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mul_8s_8s_16_1_1_U1(
    .din0(trunc_ln60_reg_451_pp0_iter2_reg),
    .din1(select_ln54_2_reg_436_pp0_iter2_reg),
    .dout(mul_ln60_fu_330_p2)
);

matrixmul_mac_muladd_8s_8s_16s_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mac_muladd_8s_8s_16s_16_4_1_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_5_fu_304_p4),
    .din1(select_ln54_4_fu_279_p3),
    .din2(mul_ln60_fu_330_p2),
    .ce(grp_fu_366_ce),
    .dout(grp_fu_366_p3)
);

matrixmul_mac_muladd_8s_8s_16ns_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mac_muladd_8s_8s_16ns_16_4_1_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_4_reg_456),
    .din1(select_ln54_3_reg_441),
    .din2(grp_fu_366_p3),
    .ce(grp_fu_374_ce),
    .dout(grp_fu_374_p3)
);

matrixmul_flow_control_loop_pipe flow_control_loop_pipe_U(
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
    .ap_done_int(ap_done_int),
    .ap_continue(1'b1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_175)) begin
        if ((icmp_ln54_fu_148_p2 == 1'd0)) begin
            i_fu_70 <= select_ln54_1_fu_188_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_70 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_175)) begin
        if ((icmp_ln54_fu_148_p2 == 1'd0)) begin
            indvar_flatten_fu_74 <= add_ln54_1_fu_154_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_74 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_175)) begin
        if ((icmp_ln54_fu_148_p2 == 1'd0)) begin
            j_fu_66 <= add_ln56_fu_196_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_66 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln54_reg_409 <= icmp_ln54_fu_148_p2;
        select_ln54_1_reg_425_pp0_iter1_reg <= select_ln54_1_reg_425;
        select_ln54_reg_420_pp0_iter1_reg <= select_ln54_reg_420;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        select_ln54_1_reg_425_pp0_iter2_reg <= select_ln54_1_reg_425_pp0_iter1_reg;
        select_ln54_1_reg_425_pp0_iter3_reg <= select_ln54_1_reg_425_pp0_iter2_reg;
        select_ln54_1_reg_425_pp0_iter4_reg <= select_ln54_1_reg_425_pp0_iter3_reg;
        select_ln54_2_reg_436_pp0_iter2_reg <= select_ln54_2_reg_436;
        select_ln54_reg_420_pp0_iter2_reg <= select_ln54_reg_420_pp0_iter1_reg;
        select_ln54_reg_420_pp0_iter3_reg <= select_ln54_reg_420_pp0_iter2_reg;
        select_ln54_reg_420_pp0_iter4_reg <= select_ln54_reg_420_pp0_iter3_reg;
        trunc_ln60_reg_451_pp0_iter2_reg <= trunc_ln60_reg_451;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln54_fu_148_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln56_reg_413 <= icmp_ln56_fu_169_p2;
        select_ln54_1_reg_425 <= select_ln54_1_fu_188_p3;
        select_ln54_reg_420 <= select_ln54_fu_175_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln54_reg_409 == 1'd0))) begin
        select_ln54_2_reg_436 <= select_ln54_2_fu_245_p3;
        select_ln54_3_reg_441 <= select_ln54_3_fu_262_p3;
        tmp_4_reg_456 <= {{b_dout[15:8]}};
        trunc_ln60_reg_451 <= trunc_ln60_fu_290_p1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_ce1 = 1'b1;
    end else begin
        a_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln54_fu_148_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln54_reg_409 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_70;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 4'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_74;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 2'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_66;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln54_reg_409 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        b_blk_n = b_empty_n;
    end else begin
        b_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln54_reg_409 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        b_read = 1'b1;
    end else begin
        b_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_366_ce = 1'b1;
    end else begin
        grp_fu_366_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_374_ce = 1'b1;
    end else begin
        grp_fu_374_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        res_ce0 = 1'b1;
    end else begin
        res_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        res_we0 = 1'b1;
    end else begin
        res_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = zext_ln54_1_fu_183_p1;

assign a_address1 = zext_ln54_fu_143_p1;

assign add_ln54_1_fu_154_p2 = (ap_sig_allocacmp_indvar_flatten_load + 4'd1);

assign add_ln54_fu_163_p2 = (ap_sig_allocacmp_i_1 + 2'd1);

assign add_ln56_fu_196_p2 = (select_ln54_fu_175_p3 + 2'd1);

assign add_ln60_2_fu_355_p2 = (sub_ln60_fu_346_p2 + zext_ln60_1_fu_352_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln54_reg_409 == 1'd0) & (b_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln54_reg_409 == 1'd0) & (b_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((icmp_ln54_reg_409 == 1'd0) & (b_empty_n == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_175 = ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_local_block = 1'b0;

assign ap_local_deadlock = 1'b0;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln54_fu_148_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 4'd9) ? 1'b1 : 1'b0);

assign icmp_ln56_fu_169_p2 = ((ap_sig_allocacmp_j_load == 2'd3) ? 1'b1 : 1'b0);

assign p_shl_cast_fu_339_p3 = {{select_ln54_1_reg_425_pp0_iter4_reg}, {2'd0}};

assign res_address0 = zext_ln60_2_fu_361_p1;

assign res_d0 = grp_fu_374_p3;

assign select_ln54_1_fu_188_p3 = ((icmp_ln56_fu_169_p2[0:0] == 1'b1) ? add_ln54_fu_163_p2 : ap_sig_allocacmp_i_1);

assign select_ln54_2_fu_245_p3 = ((icmp_ln56_reg_413[0:0] == 1'b1) ? trunc_ln54_fu_237_p1 : trunc_ln54_1_fu_241_p1);

assign select_ln54_3_fu_262_p3 = ((icmp_ln56_reg_413[0:0] == 1'b1) ? tmp_1_mid1_fu_252_p4 : tmp_1_fu_217_p4);

assign select_ln54_4_fu_279_p3 = ((icmp_ln56_reg_413[0:0] == 1'b1) ? tmp_2_mid1_fu_269_p4 : tmp_2_fu_227_p4);

assign select_ln54_fu_175_p3 = ((icmp_ln56_fu_169_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_j_load);

assign sub_ln60_fu_346_p2 = (p_shl_cast_fu_339_p3 - zext_ln60_fu_336_p1);

assign tmp_1_fu_217_p4 = {{a_q1[15:8]}};

assign tmp_1_mid1_fu_252_p4 = {{a_q0[15:8]}};

assign tmp_2_fu_227_p4 = {{a_q1[23:16]}};

assign tmp_2_mid1_fu_269_p4 = {{a_q0[23:16]}};

assign tmp_5_fu_304_p4 = {{b_dout[23:16]}};

assign trunc_ln54_1_fu_241_p1 = a_q1[7:0];

assign trunc_ln54_fu_237_p1 = a_q0[7:0];

assign trunc_ln60_fu_290_p1 = b_dout[7:0];

assign zext_ln54_1_fu_183_p1 = add_ln54_fu_163_p2;

assign zext_ln54_fu_143_p1 = ap_sig_allocacmp_i_1;

assign zext_ln60_1_fu_352_p1 = select_ln54_reg_420_pp0_iter4_reg;

assign zext_ln60_2_fu_361_p1 = add_ln60_2_fu_355_p2;

assign zext_ln60_fu_336_p1 = select_ln54_1_reg_425_pp0_iter4_reg;

endmodule //matrixmul