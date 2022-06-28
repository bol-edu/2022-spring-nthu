// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module TOP_deAes_return_Pipeline_addRoundKey_label010 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        cArray_address0,
        cArray_ce0,
        cArray_we0,
        cArray_d0,
        cArray_q0,
        cArray_address1,
        cArray_ce1,
        cArray_we1,
        cArray_d1,
        cArray_q1,
        w_address0,
        w_ce0,
        w_q0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] cArray_address0;
output   cArray_ce0;
output   cArray_we0;
output  [31:0] cArray_d0;
input  [31:0] cArray_q0;
output  [3:0] cArray_address1;
output   cArray_ce1;
output   cArray_we1;
output  [31:0] cArray_d1;
input  [31:0] cArray_q1;
output  [5:0] w_address0;
output   w_ce0;
input  [31:0] w_q0;

reg ap_idle;
reg[3:0] cArray_address0;
reg cArray_ce0;
reg cArray_we0;
reg[31:0] cArray_d0;
reg[3:0] cArray_address1;
reg cArray_ce1;
reg cArray_we1;
reg[31:0] cArray_d1;
reg w_ce0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln178_fu_114_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state4;
wire    ap_block_state4_pp0_stage3_iter0;
reg   [2:0] i_2_reg_243;
reg   [3:0] cArray_addr_reg_251;
wire  signed [2:0] xor_ln183_fu_132_p2;
reg  signed [2:0] xor_ln183_reg_256;
reg   [3:0] cArray_addr_16_reg_261;
reg   [3:0] cArray_addr_17_reg_271;
wire    ap_CS_fsm_state2;
wire    ap_block_state2_pp0_stage1_iter0;
reg   [3:0] cArray_addr_18_reg_276;
wire   [7:0] trunc_ln94_fu_164_p1;
reg   [7:0] trunc_ln94_reg_281;
reg   [7:0] trunc_ln101_5_reg_286;
wire   [31:0] xor_ln183_1_fu_206_p2;
reg   [31:0] xor_ln183_1_reg_291;
wire   [31:0] xor_ln183_2_fu_212_p2;
reg   [31:0] xor_ln183_2_reg_296;
wire   [31:0] xor_ln183_3_fu_224_p2;
reg   [31:0] xor_ln183_3_reg_301;
wire    ap_CS_fsm_state3;
wire    ap_block_state3_pp0_stage2_iter0;
wire   [31:0] xor_ln183_4_fu_230_p2;
reg   [31:0] xor_ln183_4_reg_306;
wire   [63:0] i_5_cast_fu_126_p1;
wire   [63:0] zext_ln183_fu_138_p1;
wire   [63:0] tmp_s_fu_148_p3;
wire   [63:0] zext_ln183_2_fu_159_p1;
reg   [2:0] i_fu_48;
wire   [2:0] add_ln178_fu_120_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_2;
wire  signed [3:0] sext_ln183_fu_156_p1;
wire   [7:0] lshr_ln96_5_fu_168_p4;
wire   [7:0] trunc_ln99_5_fu_182_p4;
wire   [31:0] zext_ln96_fu_178_p1;
wire   [31:0] zext_ln100_fu_192_p1;
wire   [31:0] zext_ln102_fu_218_p1;
wire   [31:0] zext_ln183_1_fu_221_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln178_fu_114_p2 == 1'd0)) begin
            i_fu_48 <= add_ln178_fu_120_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_48 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln178_fu_114_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        cArray_addr_16_reg_261[2 : 0] <= zext_ln183_fu_138_p1[2 : 0];
        cArray_addr_reg_251[2 : 0] <= i_5_cast_fu_126_p1[2 : 0];
        xor_ln183_reg_256 <= xor_ln183_fu_132_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cArray_addr_17_reg_271[2 : 0] <= tmp_s_fu_148_p3[2 : 0];
        cArray_addr_18_reg_276 <= zext_ln183_2_fu_159_p1;
        trunc_ln101_5_reg_286 <= {{w_q0[15:8]}};
        trunc_ln94_reg_281 <= trunc_ln94_fu_164_p1;
        xor_ln183_1_reg_291 <= xor_ln183_1_fu_206_p2;
        xor_ln183_2_reg_296 <= xor_ln183_2_fu_212_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_2_reg_243 <= ap_sig_allocacmp_i_2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        xor_ln183_3_reg_301 <= xor_ln183_3_fu_224_p2;
        xor_ln183_4_reg_306 <= xor_ln183_4_fu_230_p2;
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if (((icmp_ln178_fu_114_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_2 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_48;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cArray_address0 = cArray_addr_18_reg_276;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        cArray_address0 = cArray_addr_16_reg_261;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        cArray_address0 = zext_ln183_2_fu_159_p1;
    end else if (((icmp_ln178_fu_114_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        cArray_address0 = zext_ln183_fu_138_p1;
    end else begin
        cArray_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cArray_address1 = cArray_addr_17_reg_271;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        cArray_address1 = cArray_addr_reg_251;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        cArray_address1 = tmp_s_fu_148_p3;
    end else if (((icmp_ln178_fu_114_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        cArray_address1 = i_5_cast_fu_126_p1;
    end else begin
        cArray_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln178_fu_114_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        cArray_ce0 = 1'b1;
    end else begin
        cArray_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln178_fu_114_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        cArray_ce1 = 1'b1;
    end else begin
        cArray_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cArray_d0 = xor_ln183_4_reg_306;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        cArray_d0 = xor_ln183_2_reg_296;
    end else begin
        cArray_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cArray_d1 = xor_ln183_3_reg_301;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        cArray_d1 = xor_ln183_1_reg_291;
    end else begin
        cArray_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        cArray_we0 = 1'b1;
    end else begin
        cArray_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        cArray_we1 = 1'b1;
    end else begin
        cArray_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        w_ce0 = 1'b1;
    end else begin
        w_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln178_fu_114_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln178_fu_120_p2 = (ap_sig_allocacmp_i_2 + 3'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_5_cast_fu_126_p1 = ap_sig_allocacmp_i_2;

assign icmp_ln178_fu_114_p2 = ((ap_sig_allocacmp_i_2 == 3'd4) ? 1'b1 : 1'b0);

assign lshr_ln96_5_fu_168_p4 = {{w_q0[31:24]}};

assign sext_ln183_fu_156_p1 = xor_ln183_reg_256;

assign tmp_s_fu_148_p3 = {{61'd1}, {i_2_reg_243}};

assign trunc_ln94_fu_164_p1 = w_q0[7:0];

assign trunc_ln99_5_fu_182_p4 = {{w_q0[23:16]}};

assign w_address0 = i_5_cast_fu_126_p1;

assign xor_ln183_1_fu_206_p2 = (zext_ln96_fu_178_p1 ^ cArray_q1);

assign xor_ln183_2_fu_212_p2 = (zext_ln100_fu_192_p1 ^ cArray_q0);

assign xor_ln183_3_fu_224_p2 = (zext_ln102_fu_218_p1 ^ cArray_q1);

assign xor_ln183_4_fu_230_p2 = (zext_ln183_1_fu_221_p1 ^ cArray_q0);

assign xor_ln183_fu_132_p2 = (ap_sig_allocacmp_i_2 ^ 3'd4);

assign zext_ln100_fu_192_p1 = trunc_ln99_5_fu_182_p4;

assign zext_ln102_fu_218_p1 = trunc_ln101_5_reg_286;

assign zext_ln183_1_fu_221_p1 = trunc_ln94_reg_281;

assign zext_ln183_2_fu_159_p1 = $unsigned(sext_ln183_fu_156_p1);

assign zext_ln183_fu_138_p1 = $unsigned(xor_ln183_fu_132_p2);

assign zext_ln96_fu_178_p1 = lshr_ln96_5_fu_168_p4;

always @ (posedge ap_clk) begin
    cArray_addr_reg_251[3] <= 1'b0;
    cArray_addr_16_reg_261[3] <= 1'b0;
    cArray_addr_17_reg_271[3] <= 1'b1;
end

endmodule //TOP_deAes_return_Pipeline_addRoundKey_label010
