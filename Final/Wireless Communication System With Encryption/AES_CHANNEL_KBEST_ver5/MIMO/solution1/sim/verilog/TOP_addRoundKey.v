// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module TOP_addRoundKey (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        array_r_address0,
        array_r_ce0,
        array_r_we0,
        array_r_d0,
        array_r_q0,
        array_r_address1,
        array_r_ce1,
        array_r_we1,
        array_r_d1,
        array_r_q1,
        round,
        w_address0,
        w_ce0,
        w_q0,
        w_address1,
        w_ce1,
        w_q1,
        ap_ce
);

parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] array_r_address0;
output   array_r_ce0;
output   array_r_we0;
output  [31:0] array_r_d0;
input  [31:0] array_r_q0;
output  [3:0] array_r_address1;
output   array_r_ce1;
output   array_r_we1;
output  [31:0] array_r_d1;
input  [31:0] array_r_q1;
input  [3:0] round;
output  [5:0] w_address0;
output   w_ce0;
input  [31:0] w_q0;
output  [5:0] w_address1;
output   w_ce1;
input  [31:0] w_q1;
input   ap_ce;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] array_r_address0;
reg array_r_ce0;
reg array_r_we0;
reg[31:0] array_r_d0;
reg[3:0] array_r_address1;
reg array_r_ce1;
reg array_r_we1;
reg[31:0] array_r_d1;
reg[5:0] w_address0;
reg w_ce0;
reg[5:0] w_address1;
reg w_ce1;

(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] reg_324;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire   [3:0] array_addr_reg_536;
wire   [3:0] array_addr_16_reg_541;
wire   [5:0] shl_ln_fu_328_p3;
reg   [5:0] shl_ln_reg_546;
wire   [3:0] array_addr_17_reg_562;
wire   [3:0] array_addr_18_reg_567;
wire   [7:0] empty_fu_352_p1;
reg   [7:0] empty_reg_572;
wire   [31:0] xor_ln179_fu_364_p2;
reg   [31:0] xor_ln179_reg_577;
wire   [31:0] xor_ln179_6_fu_370_p2;
reg   [31:0] xor_ln179_6_reg_582;
wire   [7:0] empty_134_fu_376_p1;
reg   [7:0] empty_134_reg_587;
reg   [7:0] lshr_ln95_1_reg_592;
reg   [7:0] lshr_ln97_1_reg_597;
reg   [7:0] lshr_ln99_1_reg_602;
wire   [3:0] array_addr_19_reg_617;
wire   [3:0] array_addr_20_reg_622;
wire   [31:0] xor_ln179_7_fu_407_p2;
reg   [31:0] xor_ln179_7_reg_627;
wire   [31:0] xor_ln179_8_fu_413_p2;
reg   [31:0] xor_ln179_8_reg_632;
wire   [7:0] empty_135_fu_419_p1;
reg   [7:0] empty_135_reg_637;
wire   [7:0] grp_fu_264_p4;
reg   [7:0] lshr_ln95_2_reg_642;
wire   [7:0] grp_fu_274_p4;
reg   [7:0] lshr_ln97_2_reg_647;
wire   [7:0] empty_136_fu_423_p1;
reg   [7:0] empty_136_reg_652;
reg   [7:0] lshr_ln95_3_reg_657;
reg   [7:0] lshr_ln97_3_reg_662;
reg   [7:0] lshr_ln99_3_reg_667;
wire   [3:0] array_addr_21_reg_672;
wire    ap_CS_fsm_state4;
wire   [3:0] array_addr_22_reg_677;
wire   [31:0] xor_ln179_9_fu_433_p2;
reg   [31:0] xor_ln179_9_reg_682;
wire   [31:0] xor_ln179_10_fu_439_p2;
reg   [31:0] xor_ln179_10_reg_687;
wire   [3:0] array_addr_23_reg_692;
wire    ap_CS_fsm_state5;
wire   [3:0] array_addr_24_reg_697;
wire   [31:0] xor_ln179_11_fu_451_p2;
reg   [31:0] xor_ln179_11_reg_702;
wire   [31:0] xor_ln179_12_fu_457_p2;
reg   [31:0] xor_ln179_12_reg_707;
wire   [3:0] array_addr_25_reg_712;
wire    ap_CS_fsm_state6;
wire   [3:0] array_addr_26_reg_717;
wire   [31:0] xor_ln179_13_fu_469_p2;
reg   [31:0] xor_ln179_13_reg_722;
wire   [31:0] xor_ln179_14_fu_475_p2;
reg   [31:0] xor_ln179_14_reg_727;
wire   [3:0] array_addr_27_reg_732;
wire    ap_CS_fsm_state7;
wire   [3:0] array_addr_28_reg_737;
wire   [31:0] xor_ln179_15_fu_488_p2;
reg   [31:0] xor_ln179_15_reg_742;
wire   [31:0] xor_ln179_16_fu_494_p2;
reg   [31:0] xor_ln179_16_reg_747;
wire   [3:0] array_addr_29_reg_752;
wire    ap_CS_fsm_state8;
wire   [3:0] array_addr_30_reg_757;
wire   [31:0] xor_ln179_17_fu_506_p2;
reg   [31:0] xor_ln179_17_reg_762;
wire   [31:0] xor_ln179_18_fu_512_p2;
reg   [31:0] xor_ln179_18_reg_767;
wire   [31:0] xor_ln179_19_fu_524_p2;
reg   [31:0] xor_ln179_19_reg_772;
wire    ap_CS_fsm_state9;
wire   [31:0] xor_ln179_20_fu_530_p2;
reg   [31:0] xor_ln179_20_reg_777;
wire   [63:0] zext_ln174_fu_336_p1;
wire   [63:0] zext_ln176_fu_347_p1;
wire   [63:0] zext_ln176_1_fu_385_p1;
wire   [63:0] zext_ln176_2_fu_395_p1;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire   [5:0] or_ln176_fu_341_p2;
wire   [31:0] zext_ln95_fu_356_p1;
wire   [31:0] zext_ln99_fu_360_p1;
wire   [5:0] or_ln176_1_fu_380_p2;
wire   [5:0] or_ln176_2_fu_390_p2;
wire   [31:0] zext_ln101_fu_400_p1;
wire   [31:0] zext_ln179_fu_404_p1;
wire   [31:0] zext_ln95_4_fu_427_p1;
wire   [31:0] zext_ln99_4_fu_430_p1;
wire   [31:0] zext_ln101_4_fu_445_p1;
wire   [31:0] zext_ln179_2_fu_448_p1;
wire   [31:0] zext_ln95_5_fu_463_p1;
wire   [31:0] zext_ln99_5_fu_466_p1;
wire   [31:0] zext_ln101_5_fu_481_p1;
wire   [31:0] zext_ln179_3_fu_485_p1;
wire   [31:0] zext_ln95_6_fu_500_p1;
wire   [31:0] zext_ln99_6_fu_503_p1;
wire   [31:0] zext_ln101_6_fu_518_p1;
wire   [31:0] zext_ln179_4_fu_521_p1;
reg   [15:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
reg    ap_ST_fsm_state14_blk;
reg    ap_ST_fsm_state15_blk;
reg    ap_ST_fsm_state16_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        empty_134_reg_587 <= empty_134_fu_376_p1;
        empty_reg_572 <= empty_fu_352_p1;
        lshr_ln95_1_reg_592 <= {{w_q0[31:24]}};
        lshr_ln97_1_reg_597 <= {{w_q0[23:16]}};
        lshr_ln99_1_reg_602 <= {{w_q0[15:8]}};
        xor_ln179_6_reg_582 <= xor_ln179_6_fu_370_p2;
        xor_ln179_reg_577 <= xor_ln179_fu_364_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        empty_135_reg_637 <= empty_135_fu_419_p1;
        empty_136_reg_652 <= empty_136_fu_423_p1;
        lshr_ln95_2_reg_642 <= {{w_q1[31:24]}};
        lshr_ln95_3_reg_657 <= {{w_q0[31:24]}};
        lshr_ln97_2_reg_647 <= {{w_q1[23:16]}};
        lshr_ln97_3_reg_662 <= {{w_q0[23:16]}};
        lshr_ln99_3_reg_667 <= {{w_q0[15:8]}};
        xor_ln179_7_reg_627 <= xor_ln179_7_fu_407_p2;
        xor_ln179_8_reg_632 <= xor_ln179_8_fu_413_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (1'b1 == ap_ce)) | ((1'b1 == ap_CS_fsm_state2) & (1'b1 == ap_ce)))) begin
        reg_324 <= {{w_q1[15:8]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        shl_ln_reg_546[5 : 2] <= shl_ln_fu_328_p3[5 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        xor_ln179_10_reg_687 <= xor_ln179_10_fu_439_p2;
        xor_ln179_9_reg_682 <= xor_ln179_9_fu_433_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        xor_ln179_11_reg_702 <= xor_ln179_11_fu_451_p2;
        xor_ln179_12_reg_707 <= xor_ln179_12_fu_457_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        xor_ln179_13_reg_722 <= xor_ln179_13_fu_469_p2;
        xor_ln179_14_reg_727 <= xor_ln179_14_fu_475_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        xor_ln179_15_reg_742 <= xor_ln179_15_fu_488_p2;
        xor_ln179_16_reg_747 <= xor_ln179_16_fu_494_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        xor_ln179_17_reg_762 <= xor_ln179_17_fu_506_p2;
        xor_ln179_18_reg_767 <= xor_ln179_18_fu_512_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        xor_ln179_19_reg_772 <= xor_ln179_19_fu_524_p2;
        xor_ln179_20_reg_777 <= xor_ln179_20_fu_530_p2;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state15_blk = 1'b1;
    end else begin
        ap_ST_fsm_state15_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state16_blk = 1'b1;
    end else begin
        ap_ST_fsm_state16_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_ce) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state16)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state16))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        array_r_address0 = array_addr_30_reg_757;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        array_r_address0 = array_addr_28_reg_737;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        array_r_address0 = array_addr_26_reg_717;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        array_r_address0 = array_addr_24_reg_697;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        array_r_address0 = array_addr_22_reg_677;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        array_r_address0 = array_addr_20_reg_622;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        array_r_address0 = array_addr_18_reg_567;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        array_r_address0 = array_addr_16_reg_541;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        array_r_address0 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        array_r_address0 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        array_r_address0 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        array_r_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        array_r_address0 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        array_r_address0 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        array_r_address0 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        array_r_address0 = 64'd4;
    end else begin
        array_r_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        array_r_address1 = array_addr_29_reg_752;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        array_r_address1 = array_addr_27_reg_732;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        array_r_address1 = array_addr_25_reg_712;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        array_r_address1 = array_addr_23_reg_692;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        array_r_address1 = array_addr_21_reg_672;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        array_r_address1 = array_addr_19_reg_617;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        array_r_address1 = array_addr_17_reg_562;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        array_r_address1 = array_addr_reg_536;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        array_r_address1 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        array_r_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        array_r_address1 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        array_r_address1 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        array_r_address1 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        array_r_address1 = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        array_r_address1 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        array_r_address1 = 64'd0;
    end else begin
        array_r_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (1'b1 == ap_ce)) | ((1'b1 == ap_CS_fsm_state2) & (1'b1 == ap_ce)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state16)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state14)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state13)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state12)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state11)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state10)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state9)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state8)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state7)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state4)) | ((ap_start == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1)))) begin
        array_r_ce0 = 1'b1;
    end else begin
        array_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (1'b1 == ap_ce)) | ((1'b1 == ap_CS_fsm_state2) & (1'b1 == ap_ce)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state16)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state14)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state13)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state12)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state11)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state10)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state9)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state8)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state7)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state4)) | ((ap_start == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1)))) begin
        array_r_ce1 = 1'b1;
    end else begin
        array_r_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        array_r_d0 = xor_ln179_20_reg_777;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        array_r_d0 = xor_ln179_18_reg_767;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        array_r_d0 = xor_ln179_16_reg_747;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        array_r_d0 = xor_ln179_14_reg_727;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        array_r_d0 = xor_ln179_12_reg_707;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        array_r_d0 = xor_ln179_10_reg_687;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        array_r_d0 = xor_ln179_8_reg_632;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        array_r_d0 = xor_ln179_6_reg_582;
    end else begin
        array_r_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        array_r_d1 = xor_ln179_19_reg_772;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        array_r_d1 = xor_ln179_17_reg_762;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        array_r_d1 = xor_ln179_15_reg_742;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        array_r_d1 = xor_ln179_13_reg_722;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        array_r_d1 = xor_ln179_11_reg_702;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        array_r_d1 = xor_ln179_9_reg_682;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        array_r_d1 = xor_ln179_7_reg_627;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        array_r_d1 = xor_ln179_reg_577;
    end else begin
        array_r_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state16)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state14)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state13)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state12)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state11)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state10)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state9)))) begin
        array_r_we0 = 1'b1;
    end else begin
        array_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state16)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state14)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state13)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state12)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state11)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state10)) | ((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state9)))) begin
        array_r_we1 = 1'b1;
    end else begin
        array_r_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        w_address0 = zext_ln176_2_fu_395_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        w_address0 = zext_ln176_fu_347_p1;
    end else begin
        w_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        w_address1 = zext_ln176_1_fu_385_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        w_address1 = zext_ln174_fu_336_p1;
    end else begin
        w_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (1'b1 == ap_ce)) | ((ap_start == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1)))) begin
        w_ce0 = 1'b1;
    end else begin
        w_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (1'b1 == ap_ce)) | ((ap_start == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1)))) begin
        w_ce1 = 1'b1;
    end else begin
        w_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (1'b1 == ap_ce))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (1'b1 == ap_ce))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            if (((1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign array_addr_16_reg_541 = 64'd4;

assign array_addr_17_reg_562 = 64'd8;

assign array_addr_18_reg_567 = 64'd12;

assign array_addr_19_reg_617 = 64'd1;

assign array_addr_20_reg_622 = 64'd5;

assign array_addr_21_reg_672 = 64'd9;

assign array_addr_22_reg_677 = 64'd13;

assign array_addr_23_reg_692 = 64'd2;

assign array_addr_24_reg_697 = 64'd6;

assign array_addr_25_reg_712 = 64'd10;

assign array_addr_26_reg_717 = 64'd14;

assign array_addr_27_reg_732 = 64'd3;

assign array_addr_28_reg_737 = 64'd7;

assign array_addr_29_reg_752 = 64'd11;

assign array_addr_30_reg_757 = 64'd15;

assign array_addr_reg_536 = 64'd0;

assign empty_134_fu_376_p1 = w_q0[7:0];

assign empty_135_fu_419_p1 = w_q1[7:0];

assign empty_136_fu_423_p1 = w_q0[7:0];

assign empty_fu_352_p1 = w_q1[7:0];

assign grp_fu_264_p4 = {{w_q1[31:24]}};

assign grp_fu_274_p4 = {{w_q1[23:16]}};

assign or_ln176_1_fu_380_p2 = (shl_ln_reg_546 | 6'd2);

assign or_ln176_2_fu_390_p2 = (shl_ln_reg_546 | 6'd3);

assign or_ln176_fu_341_p2 = (shl_ln_fu_328_p3 | 6'd1);

assign shl_ln_fu_328_p3 = {{round}, {2'd0}};

assign xor_ln179_10_fu_439_p2 = (zext_ln99_4_fu_430_p1 ^ array_r_q0);

assign xor_ln179_11_fu_451_p2 = (zext_ln101_4_fu_445_p1 ^ array_r_q1);

assign xor_ln179_12_fu_457_p2 = (zext_ln179_2_fu_448_p1 ^ array_r_q0);

assign xor_ln179_13_fu_469_p2 = (zext_ln95_5_fu_463_p1 ^ array_r_q1);

assign xor_ln179_14_fu_475_p2 = (zext_ln99_5_fu_466_p1 ^ array_r_q0);

assign xor_ln179_15_fu_488_p2 = (zext_ln101_5_fu_481_p1 ^ array_r_q1);

assign xor_ln179_16_fu_494_p2 = (zext_ln179_3_fu_485_p1 ^ array_r_q0);

assign xor_ln179_17_fu_506_p2 = (zext_ln95_6_fu_500_p1 ^ array_r_q1);

assign xor_ln179_18_fu_512_p2 = (zext_ln99_6_fu_503_p1 ^ array_r_q0);

assign xor_ln179_19_fu_524_p2 = (zext_ln101_6_fu_518_p1 ^ array_r_q1);

assign xor_ln179_20_fu_530_p2 = (zext_ln179_4_fu_521_p1 ^ array_r_q0);

assign xor_ln179_6_fu_370_p2 = (zext_ln99_fu_360_p1 ^ array_r_q0);

assign xor_ln179_7_fu_407_p2 = (zext_ln101_fu_400_p1 ^ array_r_q1);

assign xor_ln179_8_fu_413_p2 = (zext_ln179_fu_404_p1 ^ array_r_q0);

assign xor_ln179_9_fu_433_p2 = (zext_ln95_4_fu_427_p1 ^ array_r_q1);

assign xor_ln179_fu_364_p2 = (zext_ln95_fu_356_p1 ^ array_r_q1);

assign zext_ln101_4_fu_445_p1 = lshr_ln99_1_reg_602;

assign zext_ln101_5_fu_481_p1 = reg_324;

assign zext_ln101_6_fu_518_p1 = lshr_ln99_3_reg_667;

assign zext_ln101_fu_400_p1 = reg_324;

assign zext_ln174_fu_336_p1 = shl_ln_fu_328_p3;

assign zext_ln176_1_fu_385_p1 = or_ln176_1_fu_380_p2;

assign zext_ln176_2_fu_395_p1 = or_ln176_2_fu_390_p2;

assign zext_ln176_fu_347_p1 = or_ln176_fu_341_p2;

assign zext_ln179_2_fu_448_p1 = empty_134_reg_587;

assign zext_ln179_3_fu_485_p1 = empty_135_reg_637;

assign zext_ln179_4_fu_521_p1 = empty_136_reg_652;

assign zext_ln179_fu_404_p1 = empty_reg_572;

assign zext_ln95_4_fu_427_p1 = lshr_ln95_1_reg_592;

assign zext_ln95_5_fu_463_p1 = lshr_ln95_2_reg_642;

assign zext_ln95_6_fu_500_p1 = lshr_ln95_3_reg_657;

assign zext_ln95_fu_356_p1 = grp_fu_264_p4;

assign zext_ln99_4_fu_430_p1 = lshr_ln97_1_reg_597;

assign zext_ln99_5_fu_466_p1 = lshr_ln97_2_reg_647;

assign zext_ln99_6_fu_503_p1 = lshr_ln97_3_reg_662;

assign zext_ln99_fu_360_p1 = grp_fu_274_p4;

always @ (posedge ap_clk) begin
    shl_ln_reg_546[1:0] <= 2'b00;
end

endmodule //TOP_addRoundKey
