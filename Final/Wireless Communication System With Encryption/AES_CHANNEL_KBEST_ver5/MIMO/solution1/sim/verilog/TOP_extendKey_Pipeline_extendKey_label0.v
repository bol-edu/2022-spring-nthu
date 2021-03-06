// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module TOP_extendKey_Pipeline_extendKey_label0 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        w_address0,
        w_ce0,
        w_we0,
        w_d0,
        w_q0,
        w_address1,
        w_ce1,
        w_we1,
        w_d1,
        w_q1
);

parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] w_address0;
output   w_ce0;
output   w_we0;
output  [31:0] w_d0;
input  [31:0] w_q0;
output  [5:0] w_address1;
output   w_ce1;
output   w_we1;
output  [31:0] w_d1;
input  [31:0] w_q1;

reg ap_idle;
reg[5:0] w_address0;
reg w_ce0;
reg w_we0;
reg[5:0] w_address1;
reg w_ce1;
reg w_we1;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln159_fu_178_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_state6_pp0_stage5_iter0;
wire    ap_block_pp0_stage5_subdone;
reg   [7:0] S29_address0;
reg    S29_ce0;
wire   [7:0] S29_q0;
wire   [3:0] Rcon_address0;
reg    Rcon_ce0;
wire   [31:0] Rcon_q0;
reg   [5:0] i_reg_411;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln159_reg_417;
wire   [0:0] icmp_ln160_fu_188_p2;
reg   [0:0] icmp_ln160_reg_421;
reg   [5:0] w_addr_2_reg_440;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] w_load_reg_445;
reg   [3:0] lshr_ln_reg_450;
reg   [3:0] lshr_ln2_reg_455;
reg   [3:0] tmp_57_reg_465;
wire   [7:0] trunc_ln57_fu_315_p1;
reg   [7:0] trunc_ln57_reg_470;
reg   [3:0] tmp_59_reg_475;
reg   [31:0] Rcon_load_reg_480;
reg   [7:0] S29_load_reg_485;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_state4_pp0_stage3_iter0;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] S29_load_1_reg_495;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_state5_pp0_stage4_iter0;
wire    ap_block_pp0_stage4_11001;
reg   [7:0] S29_load_2_reg_505;
wire    ap_block_pp0_stage5_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state7_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln164_fu_200_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln164_1_fu_211_p1;
wire   [63:0] zext_ln148_fu_219_p1;
wire   [63:0] i_4_cast44_fu_235_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln57_1_fu_300_p1;
wire   [63:0] zext_ln57_3_fu_341_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln57_4_fu_346_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln57_6_fu_362_p1;
wire    ap_block_pp0_stage5;
reg   [5:0] i_4_fu_74;
wire   [5:0] add_ln159_fu_387_p2;
wire    ap_block_pp0_stage0_11001;
wire    ap_loop_init;
reg   [31:0] j_2_fu_78;
wire   [31:0] j_fu_224_p2;
wire    ap_block_pp0_stage0;
wire   [1:0] empty_117_fu_184_p1;
wire   [5:0] add_ln164_fu_194_p2;
wire   [5:0] add_ln164_1_fu_205_p2;
wire   [3:0] tmp_s_fu_276_p4;
wire   [15:0] zext_ln57_fu_286_p1;
wire   [3:0] lshr_ln1_fu_256_p4;
wire   [27:0] tmp_56_fu_290_p4;
wire   [7:0] zext_ln57_2_fu_329_p1;
wire   [19:0] tmp_58_fu_332_p4;
wire   [23:0] zext_ln57_5_fu_350_p1;
wire   [35:0] tmp_60_fu_353_p4;
wire   [31:0] result_1_fu_367_p5;
wire   [31:0] xor_ln161_1_fu_376_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [5:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

TOP_extendKey_Pipeline_extendKey_label0_S29_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
S29_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(S29_address0),
    .ce0(S29_ce0),
    .q0(S29_q0)
);

TOP_extendKey_Pipeline_extendKey_label0_Rcon_ROM_AUTO_1R #(
    .DataWidth( 32 ),
    .AddressRange( 10 ),
    .AddressWidth( 4 ))
Rcon_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(Rcon_address0),
    .ce0(Rcon_ce0),
    .q0(Rcon_q0)
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_4_fu_74 <= 6'd4;
        end else if (((icmp_ln159_reg_417 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            i_4_fu_74 <= add_ln159_fu_387_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_2_fu_78 <= 32'd0;
    end else if (((icmp_ln160_fu_188_p2 == 1'd1) & (icmp_ln159_fu_178_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_2_fu_78 <= j_fu_224_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln160_reg_421 == 1'd1))) begin
        Rcon_load_reg_480 <= Rcon_q0;
        lshr_ln2_reg_455 <= {{w_q0[11:8]}};
        lshr_ln_reg_450 <= {{w_q0[27:24]}};
        tmp_57_reg_465 <= {{w_q0[15:12]}};
        tmp_59_reg_475 <= {{w_q0[31:28]}};
        trunc_ln57_reg_470 <= trunc_ln57_fu_315_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln159_reg_417 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln160_reg_421 == 1'd1))) begin
        S29_load_1_reg_495 <= S29_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln159_reg_417 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln160_reg_421 == 1'd1))) begin
        S29_load_2_reg_505 <= S29_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln159_reg_417 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln160_reg_421 == 1'd1))) begin
        S29_load_reg_485 <= S29_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_reg_411 <= i_4_fu_74;
        icmp_ln159_reg_417 <= icmp_ln159_fu_178_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln159_fu_178_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln160_reg_421 <= icmp_ln160_fu_188_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        w_addr_2_reg_440 <= i_4_cast44_fu_235_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        w_load_reg_445 <= w_q1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        Rcon_ce0 = 1'b1;
    end else begin
        Rcon_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            S29_address0 = zext_ln57_6_fu_362_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            S29_address0 = zext_ln57_4_fu_346_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            S29_address0 = zext_ln57_3_fu_341_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            S29_address0 = zext_ln57_1_fu_300_p1;
        end else begin
            S29_address0 = 'bx;
        end
    end else begin
        S29_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        S29_ce0 = 1'b1;
    end else begin
        S29_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln159_fu_178_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        w_address0 = w_addr_2_reg_440;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        w_address0 = zext_ln164_1_fu_211_p1;
    end else begin
        w_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            w_address1 = i_4_cast44_fu_235_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            w_address1 = zext_ln164_fu_200_p1;
        end else begin
            w_address1 = 'bx;
        end
    end else begin
        w_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        w_ce0 = 1'b1;
    end else begin
        w_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        w_ce1 = 1'b1;
    end else begin
        w_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln159_reg_417 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln160_reg_421 == 1'd1))) begin
        w_we0 = 1'b1;
    end else begin
        w_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln160_reg_421 == 1'd0))) begin
        w_we1 = 1'b1;
    end else begin
        w_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Rcon_address0 = zext_ln148_fu_219_p1;

assign add_ln159_fu_387_p2 = (i_reg_411 + 6'd1);

assign add_ln164_1_fu_205_p2 = ($signed(i_4_fu_74) + $signed(6'd63));

assign add_ln164_fu_194_p2 = ($signed(i_4_fu_74) + $signed(6'd60));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];

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

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage5_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign empty_117_fu_184_p1 = i_4_fu_74[1:0];

assign i_4_cast44_fu_235_p1 = i_reg_411;

assign icmp_ln159_fu_178_p2 = ((i_4_fu_74 == 6'd44) ? 1'b1 : 1'b0);

assign icmp_ln160_fu_188_p2 = ((empty_117_fu_184_p1 == 2'd0) ? 1'b1 : 1'b0);

assign j_fu_224_p2 = (j_2_fu_78 + 32'd1);

assign lshr_ln1_fu_256_p4 = {{w_q0[19:16]}};

assign result_1_fu_367_p5 = {{{{S29_load_reg_485}, {S29_load_1_reg_495}}, {S29_load_2_reg_505}}, {S29_q0}};

assign tmp_56_fu_290_p4 = {{{{8'd0}, {zext_ln57_fu_286_p1}}}, {lshr_ln1_fu_256_p4}};

assign tmp_58_fu_332_p4 = {{{{8'd0}, {zext_ln57_2_fu_329_p1}}}, {lshr_ln2_reg_455}};

assign tmp_60_fu_353_p4 = {{{{8'd0}, {zext_ln57_5_fu_350_p1}}}, {lshr_ln_reg_450}};

assign tmp_s_fu_276_p4 = {{w_q0[23:20]}};

assign trunc_ln57_fu_315_p1 = w_q0[7:0];

assign w_d0 = (xor_ln161_1_fu_376_p2 ^ w_load_reg_445);

assign w_d1 = (w_q1 ^ w_q0);

assign xor_ln161_1_fu_376_p2 = (result_1_fu_367_p5 ^ Rcon_load_reg_480);

assign zext_ln148_fu_219_p1 = j_2_fu_78;

assign zext_ln164_1_fu_211_p1 = add_ln164_1_fu_205_p2;

assign zext_ln164_fu_200_p1 = add_ln164_fu_194_p2;

assign zext_ln57_1_fu_300_p1 = tmp_56_fu_290_p4;

assign zext_ln57_2_fu_329_p1 = tmp_57_reg_465;

assign zext_ln57_3_fu_341_p1 = tmp_58_fu_332_p4;

assign zext_ln57_4_fu_346_p1 = trunc_ln57_reg_470;

assign zext_ln57_5_fu_350_p1 = tmp_59_reg_475;

assign zext_ln57_6_fu_362_p1 = tmp_60_fu_353_p4;

assign zext_ln57_fu_286_p1 = tmp_s_fu_276_p4;

endmodule //TOP_extendKey_Pipeline_extendKey_label0
