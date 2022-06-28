// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module resize_accel_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        src_TVALID,
        src_mat_420_din,
        src_mat_420_full_n,
        src_mat_420_write,
        p_read1,
        src_TDATA,
        src_TREADY,
        src_TKEEP,
        src_TSTRB,
        src_TUSER,
        src_TLAST,
        src_TID,
        src_TDEST
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   src_TVALID;
output  [23:0] src_mat_420_din;
input   src_mat_420_full_n;
output   src_mat_420_write;
input  [31:0] p_read1;
input  [23:0] src_TDATA;
output   src_TREADY;
input  [2:0] src_TKEEP;
input  [2:0] src_TSTRB;
input  [0:0] src_TUSER;
input  [0:0] src_TLAST;
input  [0:0] src_TID;
input  [0:0] src_TDEST;

reg ap_idle;
reg src_mat_420_write;
reg src_TREADY;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] icmp_ln47_fu_101_p2;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    src_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    src_mat_420_blk_n;
reg   [23:0] tmp_data_V_reg_132;
reg    ap_block_pp0_stage0_11001;
reg   [11:0] j_02_fu_54;
wire   [11:0] j_3_fu_107_p2;
wire    ap_loop_init;
reg   [11:0] ap_sig_allocacmp_j;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] zext_ln47_fu_97_p1;
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
#0 ap_done_reg = 1'b0;
end

resize_accel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln47_fu_101_p2 == 1'd1) & (ap_start_int == 1'b1))) begin
            j_02_fu_54 <= j_3_fu_107_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_02_fu_54 <= 12'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln47_fu_101_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_data_V_reg_132 <= src_TDATA;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln47_fu_101_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j = 12'd0;
    end else begin
        ap_sig_allocacmp_j = j_02_fu_54;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln47_fu_101_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        src_TDATA_blk_n = src_TVALID;
    end else begin
        src_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln47_fu_101_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        src_TREADY = 1'b1;
    end else begin
        src_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        src_mat_420_blk_n = src_mat_420_full_n;
    end else begin
        src_mat_420_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        src_mat_420_write = 1'b1;
    end else begin
        src_mat_420_write = 1'b0;
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

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((src_mat_420_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((icmp_ln47_fu_101_p2 == 1'd1) & (src_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((src_mat_420_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((icmp_ln47_fu_101_p2 == 1'd1) & (src_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((src_mat_420_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((icmp_ln47_fu_101_p2 == 1'd1) & (src_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((icmp_ln47_fu_101_p2 == 1'd1) & (src_TVALID == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (src_mat_420_full_n == 1'b0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln47_fu_101_p2 = (($signed(zext_ln47_fu_97_p1) < $signed(p_read1)) ? 1'b1 : 1'b0);

assign j_3_fu_107_p2 = (ap_sig_allocacmp_j + 12'd1);

assign src_mat_420_din = tmp_data_V_reg_132;

assign zext_ln47_fu_97_p1 = ap_sig_allocacmp_j;

endmodule //resize_accel_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat
