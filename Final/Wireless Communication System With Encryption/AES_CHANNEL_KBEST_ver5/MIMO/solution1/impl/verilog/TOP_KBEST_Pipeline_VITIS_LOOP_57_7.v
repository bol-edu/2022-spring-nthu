// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module TOP_KBEST_Pipeline_VITIS_LOOP_57_7 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        zext_ln36,
        zext_ln712,
        R_V_address0,
        R_V_ce0,
        R_V_q0,
        select_ln42_37,
        p_reload177,
        p_reload178,
        p_reload179,
        p_reload180,
        p_reload181,
        p_reload182,
        p_reload176,
        select_ln42_39,
        p_reload170,
        p_reload171,
        p_reload172,
        p_reload173,
        p_reload174,
        p_reload175,
        p_reload169,
        select_ln42_18,
        p_reload163,
        p_reload164,
        p_reload165,
        p_reload166,
        p_reload167,
        p_reload168,
        p_reload162,
        select_ln42_58,
        p_reload156,
        p_reload157,
        p_reload158,
        p_reload159,
        p_reload160,
        p_reload161,
        p_reload155,
        i_32,
        dist_V_out,
        dist_V_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [2:0] zext_ln36;
input  [5:0] zext_ln712;
output  [5:0] R_V_address0;
output   R_V_ce0;
input  [15:0] R_V_q0;
input  [31:0] select_ln42_37;
input  [31:0] p_reload177;
input  [31:0] p_reload178;
input  [31:0] p_reload179;
input  [31:0] p_reload180;
input  [31:0] p_reload181;
input  [31:0] p_reload182;
input  [31:0] p_reload176;
input  [31:0] select_ln42_39;
input  [31:0] p_reload170;
input  [31:0] p_reload171;
input  [31:0] p_reload172;
input  [31:0] p_reload173;
input  [31:0] p_reload174;
input  [31:0] p_reload175;
input  [31:0] p_reload169;
input  [31:0] select_ln42_18;
input  [31:0] p_reload163;
input  [31:0] p_reload164;
input  [31:0] p_reload165;
input  [31:0] p_reload166;
input  [31:0] p_reload167;
input  [31:0] p_reload168;
input  [31:0] p_reload162;
input  [31:0] select_ln42_58;
input  [31:0] p_reload156;
input  [31:0] p_reload157;
input  [31:0] p_reload158;
input  [31:0] p_reload159;
input  [31:0] p_reload160;
input  [31:0] p_reload161;
input  [31:0] p_reload155;
input  [1:0] i_32;
output  [15:0] dist_V_out;
output   dist_V_out_ap_vld;

reg ap_idle;
reg R_V_ce0;
reg dist_V_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln57_fu_381_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln58_fu_456_p2;
reg   [0:0] icmp_ln58_reg_697;
wire   [63:0] zext_ln712_1_fu_376_p1;
wire    ap_block_pp0_stage0;
reg   [15:0] dist_V_fu_112;
wire   [15:0] dist_V_3_fu_488_p3;
wire    ap_loop_init;
reg   [63:0] j_fu_116;
wire   [63:0] add_ln57_fu_462_p2;
wire   [63:0] zext_ln36_cast_fu_350_p1;
wire    ap_block_pp0_stage0_01001;
wire   [5:0] trunc_ln712_fu_367_p1;
wire   [5:0] add_ln712_fu_371_p2;
wire   [31:0] tmp_s_fu_387_p10;
wire   [31:0] tmp_34_fu_401_p10;
wire   [31:0] tmp_35_fu_415_p10;
wire   [31:0] tmp_36_fu_429_p10;
wire   [31:0] tmp_37_fu_443_p6;
wire   [15:0] dist_V_1_fu_476_p2;
wire   [15:0] dist_V_2_fu_482_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

TOP_mux_864_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 64 ),
    .dout_WIDTH( 32 ))
mux_864_32_1_1_U1059(
    .din0(select_ln42_37),
    .din1(p_reload177),
    .din2(p_reload178),
    .din3(p_reload179),
    .din4(p_reload180),
    .din5(p_reload181),
    .din6(p_reload182),
    .din7(p_reload176),
    .din8(j_fu_116),
    .dout(tmp_s_fu_387_p10)
);

TOP_mux_864_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 64 ),
    .dout_WIDTH( 32 ))
mux_864_32_1_1_U1060(
    .din0(select_ln42_39),
    .din1(p_reload170),
    .din2(p_reload171),
    .din3(p_reload172),
    .din4(p_reload173),
    .din5(p_reload174),
    .din6(p_reload175),
    .din7(p_reload169),
    .din8(j_fu_116),
    .dout(tmp_34_fu_401_p10)
);

TOP_mux_864_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 64 ),
    .dout_WIDTH( 32 ))
mux_864_32_1_1_U1061(
    .din0(select_ln42_18),
    .din1(p_reload163),
    .din2(p_reload164),
    .din3(p_reload165),
    .din4(p_reload166),
    .din5(p_reload167),
    .din6(p_reload168),
    .din7(p_reload162),
    .din8(j_fu_116),
    .dout(tmp_35_fu_415_p10)
);

TOP_mux_864_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 64 ),
    .dout_WIDTH( 32 ))
mux_864_32_1_1_U1062(
    .din0(select_ln42_58),
    .din1(p_reload156),
    .din2(p_reload157),
    .din3(p_reload158),
    .din4(p_reload159),
    .din5(p_reload160),
    .din6(p_reload161),
    .din7(p_reload155),
    .din8(j_fu_116),
    .dout(tmp_36_fu_429_p10)
);

TOP_mux_42_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_U1063(
    .din0(tmp_s_fu_387_p10),
    .din1(tmp_34_fu_401_p10),
    .din2(tmp_35_fu_415_p10),
    .din3(tmp_36_fu_429_p10),
    .din4(i_32),
    .dout(tmp_37_fu_443_p6)
);

TOP_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            dist_V_fu_112 <= 16'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            dist_V_fu_112 <= dist_V_3_fu_488_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_116 <= zext_ln36_cast_fu_350_p1;
        end else if (((icmp_ln57_fu_381_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            j_fu_116 <= add_ln57_fu_462_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln57_fu_381_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln58_reg_697 <= icmp_ln58_fu_456_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        R_V_ce0 = 1'b1;
    end else begin
        R_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln57_fu_381_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln57_fu_381_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dist_V_out_ap_vld = 1'b1;
    end else begin
        dist_V_out_ap_vld = 1'b0;
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

assign R_V_address0 = zext_ln712_1_fu_376_p1;

assign add_ln57_fu_462_p2 = (j_fu_116 + 64'd1);

assign add_ln712_fu_371_p2 = (zext_ln712 + trunc_ln712_fu_367_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign dist_V_1_fu_476_p2 = (R_V_q0 + dist_V_fu_112);

assign dist_V_2_fu_482_p2 = (dist_V_fu_112 - R_V_q0);

assign dist_V_3_fu_488_p3 = ((icmp_ln58_reg_697[0:0] == 1'b1) ? dist_V_1_fu_476_p2 : dist_V_2_fu_482_p2);

assign dist_V_out = dist_V_fu_112;

assign icmp_ln57_fu_381_p2 = ((j_fu_116 == 64'd8) ? 1'b1 : 1'b0);

assign icmp_ln58_fu_456_p2 = ((tmp_37_fu_443_p6 == 32'd1) ? 1'b1 : 1'b0);

assign trunc_ln712_fu_367_p1 = j_fu_116[5:0];

assign zext_ln36_cast_fu_350_p1 = zext_ln36;

assign zext_ln712_1_fu_376_p1 = add_ln712_fu_371_p2;

endmodule //TOP_KBEST_Pipeline_VITIS_LOOP_57_7