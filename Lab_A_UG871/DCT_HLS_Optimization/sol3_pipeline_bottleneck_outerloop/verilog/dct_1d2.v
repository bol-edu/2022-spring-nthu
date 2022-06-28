// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dct_1d2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        src_address0,
        src_ce0,
        src_q0,
        src_address1,
        src_ce1,
        src_q1,
        src_offset,
        dst_address0,
        dst_ce0,
        dst_we0,
        dst_d0,
        dst_offset
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_pp0_stage0 = 6'd2;
parameter    ap_ST_fsm_pp0_stage1 = 6'd4;
parameter    ap_ST_fsm_pp0_stage2 = 6'd8;
parameter    ap_ST_fsm_pp0_stage3 = 6'd16;
parameter    ap_ST_fsm_state7 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] src_address0;
output   src_ce0;
input  [15:0] src_q0;
output  [5:0] src_address1;
output   src_ce1;
input  [15:0] src_q1;
input  [3:0] src_offset;
output  [5:0] dst_address0;
output   dst_ce0;
output   dst_we0;
output  [15:0] dst_d0;
input  [3:0] dst_offset;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] src_address0;
reg src_ce0;
reg[5:0] src_address1;
reg src_ce1;
reg dst_ce0;
reg dst_we0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] dct_coeff_table_0_address0;
reg    dct_coeff_table_0_ce0;
wire   [13:0] dct_coeff_table_0_q0;
wire   [2:0] dct_coeff_table_1_address0;
reg    dct_coeff_table_1_ce0;
wire  signed [14:0] dct_coeff_table_1_q0;
wire   [2:0] dct_coeff_table_2_address0;
reg    dct_coeff_table_2_ce0;
wire  signed [14:0] dct_coeff_table_2_q0;
wire   [2:0] dct_coeff_table_3_address0;
reg    dct_coeff_table_3_ce0;
wire  signed [14:0] dct_coeff_table_3_q0;
wire   [2:0] dct_coeff_table_4_address0;
reg    dct_coeff_table_4_ce0;
wire   [14:0] dct_coeff_table_4_q0;
wire   [2:0] dct_coeff_table_5_address0;
reg    dct_coeff_table_5_ce0;
wire   [14:0] dct_coeff_table_5_q0;
wire   [2:0] dct_coeff_table_6_address0;
reg    dct_coeff_table_6_ce0;
wire   [14:0] dct_coeff_table_6_q0;
wire   [2:0] dct_coeff_table_7_address0;
reg    dct_coeff_table_7_ce0;
wire   [14:0] dct_coeff_table_7_q0;
reg   [3:0] k_reg_269;
wire   [7:0] tmp_21_cast_fu_288_p1;
reg   [7:0] tmp_21_cast_reg_583;
reg   [5:0] src_addr_reg_588;
reg   [5:0] src_addr_1_reg_593;
reg   [5:0] src_addr_2_reg_598;
reg   [5:0] src_addr_3_reg_603;
reg   [5:0] src_addr_4_reg_608;
reg   [5:0] src_addr_5_reg_613;
reg   [5:0] src_addr_6_reg_618;
reg   [5:0] src_addr_7_reg_623;
wire   [0:0] tmp_fu_410_p2;
reg   [0:0] tmp_reg_628;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] k_1_fu_416_p2;
reg   [3:0] k_1_reg_632;
reg    ap_enable_reg_pp0_iter0;
wire   [63:0] tmp_s_fu_422_p1;
reg   [63:0] tmp_s_reg_637;
wire   [7:0] tmp_32_fu_432_p2;
reg   [7:0] tmp_32_reg_647;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_11001;
wire  signed [28:0] grp_fu_525_p3;
reg  signed [28:0] tmp2_reg_692;
reg  signed [14:0] dct_coeff_table_4_lo_reg_697;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state4_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_11001;
reg  signed [14:0] dct_coeff_table_5_lo_reg_702;
reg  signed [14:0] dct_coeff_table_6_lo_reg_707;
reg  signed [14:0] dct_coeff_table_7_lo_reg_712;
wire  signed [28:0] grp_fu_539_p3;
reg  signed [28:0] tmp3_reg_717;
wire  signed [28:0] tmp_18_5_fu_553_p2;
reg  signed [28:0] tmp_18_5_reg_722;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_state5_pp0_stage3_iter0;
wire    ap_block_pp0_stage3_11001;
(* use_dsp48 = "no" *) wire   [28:0] tmp1_fu_483_p2;
reg   [28:0] tmp1_reg_727;
wire  signed [28:0] grp_fu_559_p3;
reg  signed [28:0] tmp7_reg_732;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage3_subdone;
reg   [3:0] ap_phi_mux_k_phi_fu_273_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] tmp_17_fu_300_p1;
wire   [63:0] tmp_19_fu_311_p3;
wire   [63:0] tmp_21_fu_326_p3;
wire   [63:0] tmp_23_fu_341_p3;
wire   [63:0] tmp_25_fu_356_p3;
wire   [63:0] tmp_27_fu_371_p3;
wire   [63:0] tmp_29_fu_386_p3;
wire   [63:0] tmp_31_fu_401_p3;
wire    ap_block_pp0_stage1;
wire   [63:0] tmp_38_cast_fu_487_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire   [6:0] tmp_15_fu_280_p3;
wire   [6:0] tmp_16_fu_292_p3;
wire   [6:0] tmp_18_fu_305_p2;
wire   [6:0] tmp_20_fu_320_p2;
wire   [6:0] tmp_22_fu_335_p2;
wire   [6:0] tmp_24_fu_350_p2;
wire   [6:0] tmp_26_fu_365_p2;
wire   [6:0] tmp_28_fu_380_p2;
wire   [6:0] tmp_30_fu_395_p2;
wire   [7:0] tmp_cast_fu_428_p1;
wire  signed [28:0] grp_fu_567_p3;
wire  signed [28:0] grp_fu_575_p3;
(* use_dsp48 = "no" *) wire   [28:0] tmp4_fu_505_p2;
wire   [28:0] tmp_11_fu_509_p2;
wire   [13:0] grp_fu_525_p1;
wire  signed [28:0] tmp_18_1_fu_532_p2;
wire  signed [28:0] tmp_18_3_fu_546_p2;
wire   [13:0] grp_fu_559_p2;
wire    ap_CS_fsm_state7;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [28:0] grp_fu_525_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

dct_1d2_dct_coeffbkb #(
    .DataWidth( 14 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_0_address0),
    .ce0(dct_coeff_table_0_ce0),
    .q0(dct_coeff_table_0_q0)
);

dct_1d2_dct_coeffcud #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_1_address0),
    .ce0(dct_coeff_table_1_ce0),
    .q0(dct_coeff_table_1_q0)
);

dct_1d2_dct_coeffdEe #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_2_address0),
    .ce0(dct_coeff_table_2_ce0),
    .q0(dct_coeff_table_2_q0)
);

dct_1d2_dct_coeffeOg #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_3_address0),
    .ce0(dct_coeff_table_3_ce0),
    .q0(dct_coeff_table_3_q0)
);

dct_1d2_dct_coefffYi #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_4_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_4_address0),
    .ce0(dct_coeff_table_4_ce0),
    .q0(dct_coeff_table_4_q0)
);

dct_1d2_dct_coeffg8j #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_5_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_5_address0),
    .ce0(dct_coeff_table_5_ce0),
    .q0(dct_coeff_table_5_q0)
);

dct_1d2_dct_coeffhbi #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_6_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_6_address0),
    .ce0(dct_coeff_table_6_ce0),
    .q0(dct_coeff_table_6_q0)
);

dct_1d2_dct_coeffibs #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_7_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_7_address0),
    .ce0(dct_coeff_table_7_ce0),
    .q0(dct_coeff_table_7_q0)
);

dct_mac_muladd_16jbC #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 14 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16jbC_U1(
    .din0(src_q0),
    .din1(grp_fu_525_p1),
    .din2(tmp_18_1_fu_532_p2),
    .dout(grp_fu_525_p3)
);

dct_mul_mul_16s_1kbM #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 29 ))
dct_mul_mul_16s_1kbM_U2(
    .din0(src_q1),
    .din1(dct_coeff_table_1_q0),
    .dout(tmp_18_1_fu_532_p2)
);

dct_mac_muladd_16lbW #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16lbW_U3(
    .din0(src_q0),
    .din1(dct_coeff_table_2_q0),
    .din2(tmp_18_3_fu_546_p2),
    .dout(grp_fu_539_p3)
);

dct_mul_mul_16s_1kbM #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 29 ))
dct_mul_mul_16s_1kbM_U4(
    .din0(src_q1),
    .din1(dct_coeff_table_3_q0),
    .dout(tmp_18_3_fu_546_p2)
);

dct_mul_mul_16s_1kbM #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 29 ))
dct_mul_mul_16s_1kbM_U5(
    .din0(src_q0),
    .din1(dct_coeff_table_5_lo_reg_702),
    .dout(tmp_18_5_fu_553_p2)
);

dct_mac_muladd_16mb6 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 14 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16mb6_U6(
    .din0(src_q1),
    .din1(dct_coeff_table_7_lo_reg_712),
    .din2(grp_fu_559_p2),
    .dout(grp_fu_559_p3)
);

dct_mac_muladd_16lbW #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16lbW_U7(
    .din0(src_q0),
    .din1(dct_coeff_table_4_lo_reg_697),
    .din2(tmp_18_5_reg_722),
    .dout(grp_fu_567_p3)
);

dct_mac_muladd_16lbW #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16lbW_U8(
    .din0(src_q1),
    .din1(dct_coeff_table_6_lo_reg_707),
    .din2(tmp7_reg_732),
    .dout(grp_fu_575_p3)
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
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state2) & (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_628 == 1'd0))) begin
        k_reg_269 <= k_1_reg_632;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        k_reg_269 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_reg_628 == 1'd0))) begin
        dct_coeff_table_4_lo_reg_697 <= dct_coeff_table_4_q0;
        dct_coeff_table_5_lo_reg_702 <= dct_coeff_table_5_q0;
        dct_coeff_table_6_lo_reg_707 <= dct_coeff_table_6_q0;
        dct_coeff_table_7_lo_reg_712 <= dct_coeff_table_7_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        k_1_reg_632 <= k_1_fu_416_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        src_addr_1_reg_593[5 : 3] <= tmp_19_fu_311_p3[5 : 3];
        src_addr_2_reg_598[5 : 3] <= tmp_21_fu_326_p3[5 : 3];
        src_addr_3_reg_603[5 : 3] <= tmp_23_fu_341_p3[5 : 3];
        src_addr_4_reg_608[5 : 3] <= tmp_25_fu_356_p3[5 : 3];
        src_addr_5_reg_613[5 : 3] <= tmp_27_fu_371_p3[5 : 3];
        src_addr_6_reg_618[5 : 3] <= tmp_29_fu_386_p3[5 : 3];
        src_addr_7_reg_623[5 : 3] <= tmp_31_fu_401_p3[5 : 3];
        src_addr_reg_588[5 : 3] <= tmp_17_fu_300_p1[5 : 3];
        tmp_21_cast_reg_583[6 : 3] <= tmp_21_cast_fu_288_p1[6 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_628 == 1'd0))) begin
        tmp1_reg_727 <= tmp1_fu_483_p2;
        tmp_18_5_reg_722 <= tmp_18_5_fu_553_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (tmp_reg_628 == 1'd0))) begin
        tmp2_reg_692 <= grp_fu_525_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_reg_628 == 1'd0))) begin
        tmp3_reg_717 <= grp_fu_539_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_628 == 1'd0))) begin
        tmp7_reg_732 <= grp_fu_559_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_fu_410_p2 == 1'd0))) begin
        tmp_32_reg_647 <= tmp_32_fu_432_p2;
        tmp_s_reg_637[3 : 0] <= tmp_s_fu_422_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_reg_628 <= tmp_fu_410_p2;
    end
end

always @ (*) begin
    if ((tmp_fu_410_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_628 == 1'd0))) begin
        ap_phi_mux_k_phi_fu_273_p4 = k_1_reg_632;
    end else begin
        ap_phi_mux_k_phi_fu_273_p4 = k_reg_269;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_0_ce0 = 1'b1;
    end else begin
        dct_coeff_table_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_1_ce0 = 1'b1;
    end else begin
        dct_coeff_table_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        dct_coeff_table_2_ce0 = 1'b1;
    end else begin
        dct_coeff_table_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        dct_coeff_table_3_ce0 = 1'b1;
    end else begin
        dct_coeff_table_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        dct_coeff_table_4_ce0 = 1'b1;
    end else begin
        dct_coeff_table_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        dct_coeff_table_5_ce0 = 1'b1;
    end else begin
        dct_coeff_table_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        dct_coeff_table_6_ce0 = 1'b1;
    end else begin
        dct_coeff_table_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        dct_coeff_table_7_ce0 = 1'b1;
    end else begin
        dct_coeff_table_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dst_ce0 = 1'b1;
    end else begin
        dst_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_628 == 1'd0))) begin
        dst_we0 = 1'b1;
    end else begin
        dst_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            src_address0 = src_addr_4_reg_608;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            src_address0 = src_addr_5_reg_613;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            src_address0 = src_addr_2_reg_598;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            src_address0 = src_addr_reg_588;
        end else begin
            src_address0 = 'bx;
        end
    end else begin
        src_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            src_address1 = src_addr_6_reg_618;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            src_address1 = src_addr_7_reg_623;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            src_address1 = src_addr_3_reg_603;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            src_address1 = src_addr_1_reg_593;
        end else begin
            src_address1 = 'bx;
        end
    end else begin
        src_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        src_ce0 = 1'b1;
    end else begin
        src_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        src_ce1 = 1'b1;
    end else begin
        src_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_410_p2 == 1'd1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_410_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd5];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign dct_coeff_table_0_address0 = tmp_s_fu_422_p1;

assign dct_coeff_table_1_address0 = tmp_s_fu_422_p1;

assign dct_coeff_table_2_address0 = tmp_s_reg_637;

assign dct_coeff_table_3_address0 = tmp_s_reg_637;

assign dct_coeff_table_4_address0 = tmp_s_reg_637;

assign dct_coeff_table_5_address0 = tmp_s_reg_637;

assign dct_coeff_table_6_address0 = tmp_s_reg_637;

assign dct_coeff_table_7_address0 = tmp_s_reg_637;

assign dst_address0 = tmp_38_cast_fu_487_p1;

assign dst_d0 = {{tmp_11_fu_509_p2[28:13]}};

assign grp_fu_525_p1 = grp_fu_525_p10;

assign grp_fu_525_p10 = dct_coeff_table_0_q0;

assign grp_fu_559_p2 = 29'd4096;

assign k_1_fu_416_p2 = (ap_phi_mux_k_phi_fu_273_p4 + 4'd1);

assign tmp1_fu_483_p2 = ($signed(tmp2_reg_692) + $signed(tmp3_reg_717));

assign tmp4_fu_505_p2 = ($signed(grp_fu_567_p3) + $signed(grp_fu_575_p3));

assign tmp_11_fu_509_p2 = (tmp1_reg_727 + tmp4_fu_505_p2);

assign tmp_15_fu_280_p3 = {{dst_offset}, {3'd0}};

assign tmp_16_fu_292_p3 = {{src_offset}, {3'd0}};

assign tmp_17_fu_300_p1 = tmp_16_fu_292_p3;

assign tmp_18_fu_305_p2 = (tmp_16_fu_292_p3 | 7'd1);

assign tmp_19_fu_311_p3 = {{57'd0}, {tmp_18_fu_305_p2}};

assign tmp_20_fu_320_p2 = (tmp_16_fu_292_p3 | 7'd2);

assign tmp_21_cast_fu_288_p1 = tmp_15_fu_280_p3;

assign tmp_21_fu_326_p3 = {{57'd0}, {tmp_20_fu_320_p2}};

assign tmp_22_fu_335_p2 = (tmp_16_fu_292_p3 | 7'd3);

assign tmp_23_fu_341_p3 = {{57'd0}, {tmp_22_fu_335_p2}};

assign tmp_24_fu_350_p2 = (tmp_16_fu_292_p3 | 7'd4);

assign tmp_25_fu_356_p3 = {{57'd0}, {tmp_24_fu_350_p2}};

assign tmp_26_fu_365_p2 = (tmp_16_fu_292_p3 | 7'd5);

assign tmp_27_fu_371_p3 = {{57'd0}, {tmp_26_fu_365_p2}};

assign tmp_28_fu_380_p2 = (tmp_16_fu_292_p3 | 7'd6);

assign tmp_29_fu_386_p3 = {{57'd0}, {tmp_28_fu_380_p2}};

assign tmp_30_fu_395_p2 = (tmp_16_fu_292_p3 | 7'd7);

assign tmp_31_fu_401_p3 = {{57'd0}, {tmp_30_fu_395_p2}};

assign tmp_32_fu_432_p2 = (tmp_21_cast_reg_583 + tmp_cast_fu_428_p1);

assign tmp_38_cast_fu_487_p1 = tmp_32_reg_647;

assign tmp_cast_fu_428_p1 = ap_phi_mux_k_phi_fu_273_p4;

assign tmp_fu_410_p2 = ((ap_phi_mux_k_phi_fu_273_p4 == 4'd8) ? 1'b1 : 1'b0);

assign tmp_s_fu_422_p1 = ap_phi_mux_k_phi_fu_273_p4;

always @ (posedge ap_clk) begin
    tmp_21_cast_reg_583[2:0] <= 3'b000;
    tmp_21_cast_reg_583[7] <= 1'b0;
    src_addr_reg_588[2:0] <= 3'b000;
    src_addr_1_reg_593[2:0] <= 3'b001;
    src_addr_2_reg_598[2:0] <= 3'b010;
    src_addr_3_reg_603[2:0] <= 3'b011;
    src_addr_4_reg_608[2:0] <= 3'b100;
    src_addr_5_reg_613[2:0] <= 3'b101;
    src_addr_6_reg_618[2:0] <= 3'b110;
    src_addr_7_reg_623[2:0] <= 3'b111;
    tmp_s_reg_637[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //dct_1d2
