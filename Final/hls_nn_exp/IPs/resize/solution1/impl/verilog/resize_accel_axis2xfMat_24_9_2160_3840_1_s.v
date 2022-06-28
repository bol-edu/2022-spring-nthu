// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module resize_accel_axis2xfMat_24_9_2160_3840_1_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        src_TDATA,
        src_TVALID,
        src_TREADY,
        src_TKEEP,
        src_TSTRB,
        src_TUSER,
        src_TLAST,
        src_TID,
        src_TDEST,
        p_read,
        p_read1,
        src_mat_420_din,
        src_mat_420_full_n,
        src_mat_420_write,
        src_mat_rows_c_din,
        src_mat_rows_c_full_n,
        src_mat_rows_c_write,
        src_mat_cols_c_din,
        src_mat_cols_c_full_n,
        src_mat_cols_c_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [23:0] src_TDATA;
input   src_TVALID;
output   src_TREADY;
input  [2:0] src_TKEEP;
input  [2:0] src_TSTRB;
input  [0:0] src_TUSER;
input  [0:0] src_TLAST;
input  [0:0] src_TID;
input  [0:0] src_TDEST;
input  [31:0] p_read;
input  [31:0] p_read1;
output  [23:0] src_mat_420_din;
input   src_mat_420_full_n;
output   src_mat_420_write;
output  [31:0] src_mat_rows_c_din;
input   src_mat_rows_c_full_n;
output   src_mat_rows_c_write;
output  [31:0] src_mat_cols_c_din;
input   src_mat_cols_c_full_n;
output   src_mat_cols_c_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_mat_420_write;
reg src_mat_rows_c_write;
reg src_mat_cols_c_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    src_mat_rows_c_blk_n;
reg    src_mat_cols_c_blk_n;
wire    grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_start;
wire    grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_done;
wire    grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_idle;
wire    grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_ready;
wire   [23:0] grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_src_mat_420_din;
wire    grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_src_mat_420_write;
wire    grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_src_TREADY;
reg    grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_start_reg;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln45_fu_135_p2;
wire    ap_CS_fsm_state3;
reg   [11:0] i_fu_70;
wire   [11:0] i_5_fu_140_p2;
reg    ap_block_state1;
wire   [31:0] zext_ln45_fu_131_p1;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    regslice_both_src_V_data_V_U_apdone_blk;
wire   [23:0] src_TDATA_int_regslice;
wire    src_TVALID_int_regslice;
reg    src_TREADY_int_regslice;
wire    regslice_both_src_V_data_V_U_ack_in;
wire    regslice_both_src_V_keep_V_U_apdone_blk;
wire   [2:0] src_TKEEP_int_regslice;
wire    regslice_both_src_V_keep_V_U_vld_out;
wire    regslice_both_src_V_keep_V_U_ack_in;
wire    regslice_both_src_V_strb_V_U_apdone_blk;
wire   [2:0] src_TSTRB_int_regslice;
wire    regslice_both_src_V_strb_V_U_vld_out;
wire    regslice_both_src_V_strb_V_U_ack_in;
wire    regslice_both_src_V_user_V_U_apdone_blk;
wire   [0:0] src_TUSER_int_regslice;
wire    regslice_both_src_V_user_V_U_vld_out;
wire    regslice_both_src_V_user_V_U_ack_in;
wire    regslice_both_src_V_last_V_U_apdone_blk;
wire   [0:0] src_TLAST_int_regslice;
wire    regslice_both_src_V_last_V_U_vld_out;
wire    regslice_both_src_V_last_V_U_ack_in;
wire    regslice_both_src_V_id_V_U_apdone_blk;
wire   [0:0] src_TID_int_regslice;
wire    regslice_both_src_V_id_V_U_vld_out;
wire    regslice_both_src_V_id_V_U_ack_in;
wire    regslice_both_src_V_dest_V_U_apdone_blk;
wire   [0:0] src_TDEST_int_regslice;
wire    regslice_both_src_V_dest_V_U_vld_out;
wire    regslice_both_src_V_dest_V_U_ack_in;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_start_reg = 1'b0;
end

resize_accel_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_start),
    .ap_done(grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_done),
    .ap_idle(grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_idle),
    .ap_ready(grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_ready),
    .src_TVALID(src_TVALID_int_regslice),
    .src_mat_420_din(grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_src_mat_420_din),
    .src_mat_420_full_n(src_mat_420_full_n),
    .src_mat_420_write(grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_src_mat_420_write),
    .p_read1(p_read1),
    .src_TDATA(src_TDATA_int_regslice),
    .src_TREADY(grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_src_TREADY),
    .src_TKEEP(src_TKEEP_int_regslice),
    .src_TSTRB(src_TSTRB_int_regslice),
    .src_TUSER(src_TUSER_int_regslice),
    .src_TLAST(src_TLAST_int_regslice),
    .src_TID(src_TID_int_regslice),
    .src_TDEST(src_TDEST_int_regslice)
);

resize_accel_regslice_both #(
    .DataWidth( 24 ))
regslice_both_src_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(src_TDATA),
    .vld_in(src_TVALID),
    .ack_in(regslice_both_src_V_data_V_U_ack_in),
    .data_out(src_TDATA_int_regslice),
    .vld_out(src_TVALID_int_regslice),
    .ack_out(src_TREADY_int_regslice),
    .apdone_blk(regslice_both_src_V_data_V_U_apdone_blk)
);

resize_accel_regslice_both #(
    .DataWidth( 3 ))
regslice_both_src_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(src_TKEEP),
    .vld_in(src_TVALID),
    .ack_in(regslice_both_src_V_keep_V_U_ack_in),
    .data_out(src_TKEEP_int_regslice),
    .vld_out(regslice_both_src_V_keep_V_U_vld_out),
    .ack_out(src_TREADY_int_regslice),
    .apdone_blk(regslice_both_src_V_keep_V_U_apdone_blk)
);

resize_accel_regslice_both #(
    .DataWidth( 3 ))
regslice_both_src_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(src_TSTRB),
    .vld_in(src_TVALID),
    .ack_in(regslice_both_src_V_strb_V_U_ack_in),
    .data_out(src_TSTRB_int_regslice),
    .vld_out(regslice_both_src_V_strb_V_U_vld_out),
    .ack_out(src_TREADY_int_regslice),
    .apdone_blk(regslice_both_src_V_strb_V_U_apdone_blk)
);

resize_accel_regslice_both #(
    .DataWidth( 1 ))
regslice_both_src_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(src_TUSER),
    .vld_in(src_TVALID),
    .ack_in(regslice_both_src_V_user_V_U_ack_in),
    .data_out(src_TUSER_int_regslice),
    .vld_out(regslice_both_src_V_user_V_U_vld_out),
    .ack_out(src_TREADY_int_regslice),
    .apdone_blk(regslice_both_src_V_user_V_U_apdone_blk)
);

resize_accel_regslice_both #(
    .DataWidth( 1 ))
regslice_both_src_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(src_TLAST),
    .vld_in(src_TVALID),
    .ack_in(regslice_both_src_V_last_V_U_ack_in),
    .data_out(src_TLAST_int_regslice),
    .vld_out(regslice_both_src_V_last_V_U_vld_out),
    .ack_out(src_TREADY_int_regslice),
    .apdone_blk(regslice_both_src_V_last_V_U_apdone_blk)
);

resize_accel_regslice_both #(
    .DataWidth( 1 ))
regslice_both_src_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(src_TID),
    .vld_in(src_TVALID),
    .ack_in(regslice_both_src_V_id_V_U_ack_in),
    .data_out(src_TID_int_regslice),
    .vld_out(regslice_both_src_V_id_V_U_vld_out),
    .ack_out(src_TREADY_int_regslice),
    .apdone_blk(regslice_both_src_V_id_V_U_apdone_blk)
);

resize_accel_regslice_both #(
    .DataWidth( 1 ))
regslice_both_src_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(src_TDEST),
    .vld_in(src_TVALID),
    .ack_in(regslice_both_src_V_dest_V_U_ack_in),
    .data_out(src_TDEST_int_regslice),
    .vld_out(regslice_both_src_V_dest_V_U_vld_out),
    .ack_out(src_TREADY_int_regslice),
    .apdone_blk(regslice_both_src_V_dest_V_U_apdone_blk)
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
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((icmp_ln45_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln45_fu_135_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_start_reg <= 1'b1;
        end else if ((grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_ready == 1'b1)) begin
            grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (src_mat_cols_c_full_n == 1'b0) | (src_mat_rows_c_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_70 <= 12'd0;
    end else if (((icmp_ln45_fu_135_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_fu_70 <= i_5_fu_140_p2;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (src_mat_cols_c_full_n == 1'b0) | (src_mat_rows_c_full_n == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln45_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((icmp_ln45_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        src_TREADY_int_regslice = grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_src_TREADY;
    end else begin
        src_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        src_mat_420_write = grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_src_mat_420_write;
    end else begin
        src_mat_420_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        src_mat_cols_c_blk_n = src_mat_cols_c_full_n;
    end else begin
        src_mat_cols_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (src_mat_cols_c_full_n == 1'b0) | (src_mat_rows_c_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        src_mat_cols_c_write = 1'b1;
    end else begin
        src_mat_cols_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        src_mat_rows_c_blk_n = src_mat_rows_c_full_n;
    end else begin
        src_mat_rows_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (src_mat_cols_c_full_n == 1'b0) | (src_mat_rows_c_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        src_mat_rows_c_write = 1'b1;
    end else begin
        src_mat_rows_c_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (src_mat_cols_c_full_n == 1'b0) | (src_mat_rows_c_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln45_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (src_mat_cols_c_full_n == 1'b0) | (src_mat_rows_c_full_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_start = grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_ap_start_reg;

assign i_5_fu_140_p2 = (i_fu_70 + 12'd1);

assign icmp_ln45_fu_135_p2 = (($signed(zext_ln45_fu_131_p1) < $signed(p_read)) ? 1'b1 : 1'b0);

assign src_TREADY = regslice_both_src_V_data_V_U_ack_in;

assign src_mat_420_din = grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102_src_mat_420_din;

assign src_mat_cols_c_din = p_read1;

assign src_mat_rows_c_din = p_read;

assign zext_ln45_fu_131_p1 = i_fu_70;

endmodule //resize_accel_axis2xfMat_24_9_2160_3840_1_s
