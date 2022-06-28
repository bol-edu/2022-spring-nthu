// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      aaa
`define AUTOTB_DUT_INST AESL_inst_aaa
`define AUTOTB_TOP      apatb_aaa_top
`define AUTOTB_LAT_RESULT_FILE "aaa.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "aaa.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_aaa_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_a_0 1
`define AESL_DEPTH_a_1 1
`define AESL_DEPTH_a_2 1
`define AESL_DEPTH_a_3 1
`define AESL_DEPTH_a_4 1
`define AESL_DEPTH_a_5 1
`define AESL_DEPTH_a_6 1
`define AESL_DEPTH_a_7 1
`define AESL_DEPTH_a_8 1
`define AESL_DEPTH_a_9 1
`define AESL_DEPTH_a_10 1
`define AESL_DEPTH_a_11 1
`define AESL_DEPTH_b_0 1
`define AESL_DEPTH_b_1 1
`define AESL_DEPTH_b_2 1
`define AESL_DEPTH_b_3 1
`define AESL_DEPTH_b_4 1
`define AESL_DEPTH_b_5 1
`define AESL_DEPTH_b_6 1
`define AESL_DEPTH_b_7 1
`define AESL_DEPTH_b_8 1
`define AESL_DEPTH_b_9 1
`define AESL_DEPTH_b_10 1
`define AESL_DEPTH_b_11 1
`define AESL_DEPTH_r_0 1
`define AESL_DEPTH_r_1 1
`define AESL_DEPTH_r_2 1
`define AESL_DEPTH_r_3 1
`define AESL_DEPTH_r_4 1
`define AESL_DEPTH_r_5 1
`define AESL_DEPTH_r_6 1
`define AESL_DEPTH_r_7 1
`define AESL_DEPTH_r_8 1
`define AESL_DEPTH_r_9 1
`define AESL_DEPTH_r_10 1
`define AESL_DEPTH_r_11 1
`define AUTOTB_TVIN_a_0  "../tv/cdatafile/c.aaa.autotvin_a_0.dat"
`define AUTOTB_TVIN_a_1  "../tv/cdatafile/c.aaa.autotvin_a_1.dat"
`define AUTOTB_TVIN_a_2  "../tv/cdatafile/c.aaa.autotvin_a_2.dat"
`define AUTOTB_TVIN_a_3  "../tv/cdatafile/c.aaa.autotvin_a_3.dat"
`define AUTOTB_TVIN_a_4  "../tv/cdatafile/c.aaa.autotvin_a_4.dat"
`define AUTOTB_TVIN_a_5  "../tv/cdatafile/c.aaa.autotvin_a_5.dat"
`define AUTOTB_TVIN_a_6  "../tv/cdatafile/c.aaa.autotvin_a_6.dat"
`define AUTOTB_TVIN_a_7  "../tv/cdatafile/c.aaa.autotvin_a_7.dat"
`define AUTOTB_TVIN_a_8  "../tv/cdatafile/c.aaa.autotvin_a_8.dat"
`define AUTOTB_TVIN_a_9  "../tv/cdatafile/c.aaa.autotvin_a_9.dat"
`define AUTOTB_TVIN_a_10  "../tv/cdatafile/c.aaa.autotvin_a_10.dat"
`define AUTOTB_TVIN_a_11  "../tv/cdatafile/c.aaa.autotvin_a_11.dat"
`define AUTOTB_TVIN_b_0  "../tv/cdatafile/c.aaa.autotvin_b_0.dat"
`define AUTOTB_TVIN_b_1  "../tv/cdatafile/c.aaa.autotvin_b_1.dat"
`define AUTOTB_TVIN_b_2  "../tv/cdatafile/c.aaa.autotvin_b_2.dat"
`define AUTOTB_TVIN_b_3  "../tv/cdatafile/c.aaa.autotvin_b_3.dat"
`define AUTOTB_TVIN_b_4  "../tv/cdatafile/c.aaa.autotvin_b_4.dat"
`define AUTOTB_TVIN_b_5  "../tv/cdatafile/c.aaa.autotvin_b_5.dat"
`define AUTOTB_TVIN_b_6  "../tv/cdatafile/c.aaa.autotvin_b_6.dat"
`define AUTOTB_TVIN_b_7  "../tv/cdatafile/c.aaa.autotvin_b_7.dat"
`define AUTOTB_TVIN_b_8  "../tv/cdatafile/c.aaa.autotvin_b_8.dat"
`define AUTOTB_TVIN_b_9  "../tv/cdatafile/c.aaa.autotvin_b_9.dat"
`define AUTOTB_TVIN_b_10  "../tv/cdatafile/c.aaa.autotvin_b_10.dat"
`define AUTOTB_TVIN_b_11  "../tv/cdatafile/c.aaa.autotvin_b_11.dat"
`define AUTOTB_TVIN_r_1  "../tv/cdatafile/c.aaa.autotvin_r_1.dat"
`define AUTOTB_TVIN_r_2  "../tv/cdatafile/c.aaa.autotvin_r_2.dat"
`define AUTOTB_TVIN_r_3  "../tv/cdatafile/c.aaa.autotvin_r_3.dat"
`define AUTOTB_TVIN_r_4  "../tv/cdatafile/c.aaa.autotvin_r_4.dat"
`define AUTOTB_TVIN_r_5  "../tv/cdatafile/c.aaa.autotvin_r_5.dat"
`define AUTOTB_TVIN_r_6  "../tv/cdatafile/c.aaa.autotvin_r_6.dat"
`define AUTOTB_TVIN_r_7  "../tv/cdatafile/c.aaa.autotvin_r_7.dat"
`define AUTOTB_TVIN_r_8  "../tv/cdatafile/c.aaa.autotvin_r_8.dat"
`define AUTOTB_TVIN_r_9  "../tv/cdatafile/c.aaa.autotvin_r_9.dat"
`define AUTOTB_TVIN_r_10  "../tv/cdatafile/c.aaa.autotvin_r_10.dat"
`define AUTOTB_TVIN_a_0_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_a_0.dat"
`define AUTOTB_TVIN_a_1_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_a_1.dat"
`define AUTOTB_TVIN_a_2_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_a_2.dat"
`define AUTOTB_TVIN_a_3_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_a_3.dat"
`define AUTOTB_TVIN_a_4_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_a_4.dat"
`define AUTOTB_TVIN_a_5_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_a_5.dat"
`define AUTOTB_TVIN_a_6_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_a_6.dat"
`define AUTOTB_TVIN_a_7_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_a_7.dat"
`define AUTOTB_TVIN_a_8_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_a_8.dat"
`define AUTOTB_TVIN_a_9_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_a_9.dat"
`define AUTOTB_TVIN_a_10_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_a_10.dat"
`define AUTOTB_TVIN_a_11_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_a_11.dat"
`define AUTOTB_TVIN_b_0_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_b_0.dat"
`define AUTOTB_TVIN_b_1_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_b_1.dat"
`define AUTOTB_TVIN_b_2_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_b_2.dat"
`define AUTOTB_TVIN_b_3_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_b_3.dat"
`define AUTOTB_TVIN_b_4_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_b_4.dat"
`define AUTOTB_TVIN_b_5_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_b_5.dat"
`define AUTOTB_TVIN_b_6_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_b_6.dat"
`define AUTOTB_TVIN_b_7_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_b_7.dat"
`define AUTOTB_TVIN_b_8_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_b_8.dat"
`define AUTOTB_TVIN_b_9_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_b_9.dat"
`define AUTOTB_TVIN_b_10_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_b_10.dat"
`define AUTOTB_TVIN_b_11_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_b_11.dat"
`define AUTOTB_TVIN_r_1_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_r_1.dat"
`define AUTOTB_TVIN_r_2_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_r_2.dat"
`define AUTOTB_TVIN_r_3_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_r_3.dat"
`define AUTOTB_TVIN_r_4_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_r_4.dat"
`define AUTOTB_TVIN_r_5_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_r_5.dat"
`define AUTOTB_TVIN_r_6_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_r_6.dat"
`define AUTOTB_TVIN_r_7_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_r_7.dat"
`define AUTOTB_TVIN_r_8_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_r_8.dat"
`define AUTOTB_TVIN_r_9_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_r_9.dat"
`define AUTOTB_TVIN_r_10_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvin_r_10.dat"
`define AUTOTB_TVOUT_r_0  "../tv/cdatafile/c.aaa.autotvout_r_0.dat"
`define AUTOTB_TVOUT_r_1  "../tv/cdatafile/c.aaa.autotvout_r_1.dat"
`define AUTOTB_TVOUT_r_2  "../tv/cdatafile/c.aaa.autotvout_r_2.dat"
`define AUTOTB_TVOUT_r_3  "../tv/cdatafile/c.aaa.autotvout_r_3.dat"
`define AUTOTB_TVOUT_r_4  "../tv/cdatafile/c.aaa.autotvout_r_4.dat"
`define AUTOTB_TVOUT_r_5  "../tv/cdatafile/c.aaa.autotvout_r_5.dat"
`define AUTOTB_TVOUT_r_6  "../tv/cdatafile/c.aaa.autotvout_r_6.dat"
`define AUTOTB_TVOUT_r_7  "../tv/cdatafile/c.aaa.autotvout_r_7.dat"
`define AUTOTB_TVOUT_r_8  "../tv/cdatafile/c.aaa.autotvout_r_8.dat"
`define AUTOTB_TVOUT_r_9  "../tv/cdatafile/c.aaa.autotvout_r_9.dat"
`define AUTOTB_TVOUT_r_10  "../tv/cdatafile/c.aaa.autotvout_r_10.dat"
`define AUTOTB_TVOUT_r_11  "../tv/cdatafile/c.aaa.autotvout_r_11.dat"
`define AUTOTB_TVOUT_r_0_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvout_r_0.dat"
`define AUTOTB_TVOUT_r_1_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvout_r_1.dat"
`define AUTOTB_TVOUT_r_2_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvout_r_2.dat"
`define AUTOTB_TVOUT_r_3_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvout_r_3.dat"
`define AUTOTB_TVOUT_r_4_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvout_r_4.dat"
`define AUTOTB_TVOUT_r_5_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvout_r_5.dat"
`define AUTOTB_TVOUT_r_6_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvout_r_6.dat"
`define AUTOTB_TVOUT_r_7_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvout_r_7.dat"
`define AUTOTB_TVOUT_r_8_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvout_r_8.dat"
`define AUTOTB_TVOUT_r_9_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvout_r_9.dat"
`define AUTOTB_TVOUT_r_10_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvout_r_10.dat"
`define AUTOTB_TVOUT_r_11_out_wrapc  "../tv/rtldatafile/rtl.aaa.autotvout_r_11.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_a_0 = 1;
parameter LENGTH_a_1 = 1;
parameter LENGTH_a_2 = 1;
parameter LENGTH_a_3 = 1;
parameter LENGTH_a_4 = 1;
parameter LENGTH_a_5 = 1;
parameter LENGTH_a_6 = 1;
parameter LENGTH_a_7 = 1;
parameter LENGTH_a_8 = 1;
parameter LENGTH_a_9 = 1;
parameter LENGTH_a_10 = 1;
parameter LENGTH_a_11 = 1;
parameter LENGTH_b_0 = 1;
parameter LENGTH_b_1 = 1;
parameter LENGTH_b_2 = 1;
parameter LENGTH_b_3 = 1;
parameter LENGTH_b_4 = 1;
parameter LENGTH_b_5 = 1;
parameter LENGTH_b_6 = 1;
parameter LENGTH_b_7 = 1;
parameter LENGTH_b_8 = 1;
parameter LENGTH_b_9 = 1;
parameter LENGTH_b_10 = 1;
parameter LENGTH_b_11 = 1;
parameter LENGTH_r_0 = 1;
parameter LENGTH_r_1 = 1;
parameter LENGTH_r_2 = 1;
parameter LENGTH_r_3 = 1;
parameter LENGTH_r_4 = 1;
parameter LENGTH_r_5 = 1;
parameter LENGTH_r_6 = 1;
parameter LENGTH_r_7 = 1;
parameter LENGTH_r_8 = 1;
parameter LENGTH_r_9 = 1;
parameter LENGTH_r_10 = 1;
parameter LENGTH_r_11 = 1;

task read_token;
    input integer fp;
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [31 : 0] a_0;
wire [31 : 0] a_1;
wire [31 : 0] a_2;
wire [31 : 0] a_3;
wire [31 : 0] a_4;
wire [31 : 0] a_5;
wire [31 : 0] a_6;
wire [31 : 0] a_7;
wire [31 : 0] a_8;
wire [31 : 0] a_9;
wire [31 : 0] a_10;
wire [31 : 0] a_11;
wire [31 : 0] b_0;
wire [31 : 0] b_1;
wire [31 : 0] b_2;
wire [31 : 0] b_3;
wire [31 : 0] b_4;
wire [31 : 0] b_5;
wire [31 : 0] b_6;
wire [31 : 0] b_7;
wire [31 : 0] b_8;
wire [31 : 0] b_9;
wire [31 : 0] b_10;
wire [31 : 0] b_11;
wire [31 : 0] r_0;
wire  r_0_ap_vld;
wire [31 : 0] r_1_i;
wire [31 : 0] r_1_o;
wire  r_1_o_ap_vld;
wire [31 : 0] r_2_i;
wire [31 : 0] r_2_o;
wire  r_2_o_ap_vld;
wire [31 : 0] r_3_i;
wire [31 : 0] r_3_o;
wire  r_3_o_ap_vld;
wire [31 : 0] r_4_i;
wire [31 : 0] r_4_o;
wire  r_4_o_ap_vld;
wire [31 : 0] r_5_i;
wire [31 : 0] r_5_o;
wire  r_5_o_ap_vld;
wire [31 : 0] r_6_i;
wire [31 : 0] r_6_o;
wire  r_6_o_ap_vld;
wire [31 : 0] r_7_i;
wire [31 : 0] r_7_o;
wire  r_7_o_ap_vld;
wire [31 : 0] r_8_i;
wire [31 : 0] r_8_o;
wire  r_8_o_ap_vld;
wire [31 : 0] r_9_i;
wire [31 : 0] r_9_o;
wire  r_9_o_ap_vld;
wire [31 : 0] r_10_i;
wire [31 : 0] r_10_o;
wire  r_10_o_ap_vld;
wire [31 : 0] r_11;
wire  r_11_ap_vld;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .a_0(a_0),
    .a_1(a_1),
    .a_2(a_2),
    .a_3(a_3),
    .a_4(a_4),
    .a_5(a_5),
    .a_6(a_6),
    .a_7(a_7),
    .a_8(a_8),
    .a_9(a_9),
    .a_10(a_10),
    .a_11(a_11),
    .b_0(b_0),
    .b_1(b_1),
    .b_2(b_2),
    .b_3(b_3),
    .b_4(b_4),
    .b_5(b_5),
    .b_6(b_6),
    .b_7(b_7),
    .b_8(b_8),
    .b_9(b_9),
    .b_10(b_10),
    .b_11(b_11),
    .r_0(r_0),
    .r_0_ap_vld(r_0_ap_vld),
    .r_1_i(r_1_i),
    .r_1_o(r_1_o),
    .r_1_o_ap_vld(r_1_o_ap_vld),
    .r_2_i(r_2_i),
    .r_2_o(r_2_o),
    .r_2_o_ap_vld(r_2_o_ap_vld),
    .r_3_i(r_3_i),
    .r_3_o(r_3_o),
    .r_3_o_ap_vld(r_3_o_ap_vld),
    .r_4_i(r_4_i),
    .r_4_o(r_4_o),
    .r_4_o_ap_vld(r_4_o_ap_vld),
    .r_5_i(r_5_i),
    .r_5_o(r_5_o),
    .r_5_o_ap_vld(r_5_o_ap_vld),
    .r_6_i(r_6_i),
    .r_6_o(r_6_o),
    .r_6_o_ap_vld(r_6_o_ap_vld),
    .r_7_i(r_7_i),
    .r_7_o(r_7_o),
    .r_7_o_ap_vld(r_7_o_ap_vld),
    .r_8_i(r_8_i),
    .r_8_o(r_8_o),
    .r_8_o_ap_vld(r_8_o_ap_vld),
    .r_9_i(r_9_i),
    .r_9_o(r_9_o),
    .r_9_o_ap_vld(r_9_o_ap_vld),
    .r_10_i(r_10_i),
    .r_10_o(r_10_o),
    .r_10_o_ap_vld(r_10_o_ap_vld),
    .r_11(r_11),
    .r_11_ap_vld(r_11_ap_vld));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// The signal of port a_0
reg [31: 0] AESL_REG_a_0 = 0;
assign a_0 = AESL_REG_a_0;
initial begin : read_file_process_a_0
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_a_0,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_0);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_a_0);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port a_1
reg [31: 0] AESL_REG_a_1 = 0;
assign a_1 = AESL_REG_a_1;
initial begin : read_file_process_a_1
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_a_1,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_1);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_a_1);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port a_2
reg [31: 0] AESL_REG_a_2 = 0;
assign a_2 = AESL_REG_a_2;
initial begin : read_file_process_a_2
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_a_2,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_2);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_a_2);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port a_3
reg [31: 0] AESL_REG_a_3 = 0;
assign a_3 = AESL_REG_a_3;
initial begin : read_file_process_a_3
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_a_3,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_3);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_a_3);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port a_4
reg [31: 0] AESL_REG_a_4 = 0;
assign a_4 = AESL_REG_a_4;
initial begin : read_file_process_a_4
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_a_4,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_4);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_a_4);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port a_5
reg [31: 0] AESL_REG_a_5 = 0;
assign a_5 = AESL_REG_a_5;
initial begin : read_file_process_a_5
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_a_5,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_5);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_a_5);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port a_6
reg [31: 0] AESL_REG_a_6 = 0;
assign a_6 = AESL_REG_a_6;
initial begin : read_file_process_a_6
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_a_6,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_6);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_a_6);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port a_7
reg [31: 0] AESL_REG_a_7 = 0;
assign a_7 = AESL_REG_a_7;
initial begin : read_file_process_a_7
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_a_7,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_7);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_a_7);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port a_8
reg [31: 0] AESL_REG_a_8 = 0;
assign a_8 = AESL_REG_a_8;
initial begin : read_file_process_a_8
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_a_8,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_8);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_a_8);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port a_9
reg [31: 0] AESL_REG_a_9 = 0;
assign a_9 = AESL_REG_a_9;
initial begin : read_file_process_a_9
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_a_9,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_9);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_a_9);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port a_10
reg [31: 0] AESL_REG_a_10 = 0;
assign a_10 = AESL_REG_a_10;
initial begin : read_file_process_a_10
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_a_10,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_10);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_a_10);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port a_11
reg [31: 0] AESL_REG_a_11 = 0;
assign a_11 = AESL_REG_a_11;
initial begin : read_file_process_a_11
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_a_11,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_a_11);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_a_11);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port b_0
reg [31: 0] AESL_REG_b_0 = 0;
assign b_0 = AESL_REG_b_0;
initial begin : read_file_process_b_0
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_b_0,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_0);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_b_0);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port b_1
reg [31: 0] AESL_REG_b_1 = 0;
assign b_1 = AESL_REG_b_1;
initial begin : read_file_process_b_1
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_b_1,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_1);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_b_1);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port b_2
reg [31: 0] AESL_REG_b_2 = 0;
assign b_2 = AESL_REG_b_2;
initial begin : read_file_process_b_2
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_b_2,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_2);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_b_2);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port b_3
reg [31: 0] AESL_REG_b_3 = 0;
assign b_3 = AESL_REG_b_3;
initial begin : read_file_process_b_3
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_b_3,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_3);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_b_3);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port b_4
reg [31: 0] AESL_REG_b_4 = 0;
assign b_4 = AESL_REG_b_4;
initial begin : read_file_process_b_4
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_b_4,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_4);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_b_4);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port b_5
reg [31: 0] AESL_REG_b_5 = 0;
assign b_5 = AESL_REG_b_5;
initial begin : read_file_process_b_5
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_b_5,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_5);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_b_5);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port b_6
reg [31: 0] AESL_REG_b_6 = 0;
assign b_6 = AESL_REG_b_6;
initial begin : read_file_process_b_6
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_b_6,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_6);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_b_6);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port b_7
reg [31: 0] AESL_REG_b_7 = 0;
assign b_7 = AESL_REG_b_7;
initial begin : read_file_process_b_7
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_b_7,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_7);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_b_7);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port b_8
reg [31: 0] AESL_REG_b_8 = 0;
assign b_8 = AESL_REG_b_8;
initial begin : read_file_process_b_8
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_b_8,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_8);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_b_8);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port b_9
reg [31: 0] AESL_REG_b_9 = 0;
assign b_9 = AESL_REG_b_9;
initial begin : read_file_process_b_9
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_b_9,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_9);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_b_9);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port b_10
reg [31: 0] AESL_REG_b_10 = 0;
assign b_10 = AESL_REG_b_10;
initial begin : read_file_process_b_10
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_b_10,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_10);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_b_10);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port b_11
reg [31: 0] AESL_REG_b_11 = 0;
assign b_11 = AESL_REG_b_11;
initial begin : read_file_process_b_11
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_b_11,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_b_11);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_b_11);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


reg AESL_REG_r_0_ap_vld = 0;
// The signal of port r_0
reg [31: 0] AESL_REG_r_0 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_0 = 0; 
    else if(r_0_ap_vld) begin
        AESL_REG_r_0 <= r_0;
        AESL_REG_r_0_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_0
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_0_count;
    reg [127:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_0_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_r_0_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_0);
        AESL_REG_r_0_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


// The signal of port r_1_i
reg [31: 0] AESL_REG_r_1_i = 0;
assign r_1_i = AESL_REG_r_1_i;
always @(posedge AESL_clock)
begin
    if(r_1_o_ap_vld === 1)
        AESL_REG_r_1_i <= r_1_o;
end

initial begin : read_file_process_r_1
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_r_1,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_r_1);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_r_1_i);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end

reg AESL_REG_r_1_o_ap_vld = 0;
// The signal of port r_1_o
reg [31: 0] AESL_REG_r_1_o = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_1_o = 0; 
    else if(r_1_o_ap_vld) begin
        AESL_REG_r_1_o <= r_1_o;
        AESL_REG_r_1_o_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_1
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_1_count;
    reg [127:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_1_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_r_1_o_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_1_o);
        AESL_REG_r_1_o_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


// The signal of port r_2_i
reg [31: 0] AESL_REG_r_2_i = 0;
assign r_2_i = AESL_REG_r_2_i;
always @(posedge AESL_clock)
begin
    if(r_2_o_ap_vld === 1)
        AESL_REG_r_2_i <= r_2_o;
end

initial begin : read_file_process_r_2
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_r_2,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_r_2);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_r_2_i);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end

reg AESL_REG_r_2_o_ap_vld = 0;
// The signal of port r_2_o
reg [31: 0] AESL_REG_r_2_o = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_2_o = 0; 
    else if(r_2_o_ap_vld) begin
        AESL_REG_r_2_o <= r_2_o;
        AESL_REG_r_2_o_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_2
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_2_count;
    reg [127:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_2_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_r_2_o_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_2_o);
        AESL_REG_r_2_o_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


// The signal of port r_3_i
reg [31: 0] AESL_REG_r_3_i = 0;
assign r_3_i = AESL_REG_r_3_i;
always @(posedge AESL_clock)
begin
    if(r_3_o_ap_vld === 1)
        AESL_REG_r_3_i <= r_3_o;
end

initial begin : read_file_process_r_3
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_r_3,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_r_3);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_r_3_i);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end

reg AESL_REG_r_3_o_ap_vld = 0;
// The signal of port r_3_o
reg [31: 0] AESL_REG_r_3_o = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_3_o = 0; 
    else if(r_3_o_ap_vld) begin
        AESL_REG_r_3_o <= r_3_o;
        AESL_REG_r_3_o_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_3
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_3_count;
    reg [127:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_3_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_r_3_o_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_3_o);
        AESL_REG_r_3_o_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


// The signal of port r_4_i
reg [31: 0] AESL_REG_r_4_i = 0;
assign r_4_i = AESL_REG_r_4_i;
always @(posedge AESL_clock)
begin
    if(r_4_o_ap_vld === 1)
        AESL_REG_r_4_i <= r_4_o;
end

initial begin : read_file_process_r_4
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_r_4,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_r_4);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_r_4_i);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end

reg AESL_REG_r_4_o_ap_vld = 0;
// The signal of port r_4_o
reg [31: 0] AESL_REG_r_4_o = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_4_o = 0; 
    else if(r_4_o_ap_vld) begin
        AESL_REG_r_4_o <= r_4_o;
        AESL_REG_r_4_o_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_4
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_4_count;
    reg [127:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_4_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_r_4_o_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_4_o);
        AESL_REG_r_4_o_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


// The signal of port r_5_i
reg [31: 0] AESL_REG_r_5_i = 0;
assign r_5_i = AESL_REG_r_5_i;
always @(posedge AESL_clock)
begin
    if(r_5_o_ap_vld === 1)
        AESL_REG_r_5_i <= r_5_o;
end

initial begin : read_file_process_r_5
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_r_5,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_r_5);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_r_5_i);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end

reg AESL_REG_r_5_o_ap_vld = 0;
// The signal of port r_5_o
reg [31: 0] AESL_REG_r_5_o = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_5_o = 0; 
    else if(r_5_o_ap_vld) begin
        AESL_REG_r_5_o <= r_5_o;
        AESL_REG_r_5_o_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_5
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_5_count;
    reg [127:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_5_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_5_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_r_5_o_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_5_o);
        AESL_REG_r_5_o_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


// The signal of port r_6_i
reg [31: 0] AESL_REG_r_6_i = 0;
assign r_6_i = AESL_REG_r_6_i;
always @(posedge AESL_clock)
begin
    if(r_6_o_ap_vld === 1)
        AESL_REG_r_6_i <= r_6_o;
end

initial begin : read_file_process_r_6
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_r_6,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_r_6);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_r_6_i);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end

reg AESL_REG_r_6_o_ap_vld = 0;
// The signal of port r_6_o
reg [31: 0] AESL_REG_r_6_o = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_6_o = 0; 
    else if(r_6_o_ap_vld) begin
        AESL_REG_r_6_o <= r_6_o;
        AESL_REG_r_6_o_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_6
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_6_count;
    reg [127:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_6_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_6_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_r_6_o_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_6_o);
        AESL_REG_r_6_o_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


// The signal of port r_7_i
reg [31: 0] AESL_REG_r_7_i = 0;
assign r_7_i = AESL_REG_r_7_i;
always @(posedge AESL_clock)
begin
    if(r_7_o_ap_vld === 1)
        AESL_REG_r_7_i <= r_7_o;
end

initial begin : read_file_process_r_7
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_r_7,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_r_7);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_r_7_i);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end

reg AESL_REG_r_7_o_ap_vld = 0;
// The signal of port r_7_o
reg [31: 0] AESL_REG_r_7_o = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_7_o = 0; 
    else if(r_7_o_ap_vld) begin
        AESL_REG_r_7_o <= r_7_o;
        AESL_REG_r_7_o_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_7
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_7_count;
    reg [127:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_7_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_7_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_r_7_o_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_7_o);
        AESL_REG_r_7_o_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


// The signal of port r_8_i
reg [31: 0] AESL_REG_r_8_i = 0;
assign r_8_i = AESL_REG_r_8_i;
always @(posedge AESL_clock)
begin
    if(r_8_o_ap_vld === 1)
        AESL_REG_r_8_i <= r_8_o;
end

initial begin : read_file_process_r_8
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_r_8,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_r_8);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_r_8_i);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end

reg AESL_REG_r_8_o_ap_vld = 0;
// The signal of port r_8_o
reg [31: 0] AESL_REG_r_8_o = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_8_o = 0; 
    else if(r_8_o_ap_vld) begin
        AESL_REG_r_8_o <= r_8_o;
        AESL_REG_r_8_o_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_8
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_8_count;
    reg [127:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_8_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_8_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_r_8_o_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_8_o);
        AESL_REG_r_8_o_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


// The signal of port r_9_i
reg [31: 0] AESL_REG_r_9_i = 0;
assign r_9_i = AESL_REG_r_9_i;
always @(posedge AESL_clock)
begin
    if(r_9_o_ap_vld === 1)
        AESL_REG_r_9_i <= r_9_o;
end

initial begin : read_file_process_r_9
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_r_9,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_r_9);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_r_9_i);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end

reg AESL_REG_r_9_o_ap_vld = 0;
// The signal of port r_9_o
reg [31: 0] AESL_REG_r_9_o = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_9_o = 0; 
    else if(r_9_o_ap_vld) begin
        AESL_REG_r_9_o <= r_9_o;
        AESL_REG_r_9_o_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_9
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_9_count;
    reg [127:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_9_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_9_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_r_9_o_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_9_o);
        AESL_REG_r_9_o_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


// The signal of port r_10_i
reg [31: 0] AESL_REG_r_10_i = 0;
assign r_10_i = AESL_REG_r_10_i;
always @(posedge AESL_clock)
begin
    if(r_10_o_ap_vld === 1)
        AESL_REG_r_10_i <= r_10_o;
end

initial begin : read_file_process_r_10
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_r_10,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_r_10);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_r_10_i);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end

reg AESL_REG_r_10_o_ap_vld = 0;
// The signal of port r_10_o
reg [31: 0] AESL_REG_r_10_o = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_10_o = 0; 
    else if(r_10_o_ap_vld) begin
        AESL_REG_r_10_o <= r_10_o;
        AESL_REG_r_10_o_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_10
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_10_count;
    reg [127:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_10_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_10_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_r_10_o_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_10_o);
        AESL_REG_r_10_o_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_r_11_ap_vld = 0;
// The signal of port r_11
reg [31: 0] AESL_REG_r_11 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_r_11 = 0; 
    else if(r_11_ap_vld) begin
        AESL_REG_r_11 <= r_11;
        AESL_REG_r_11_ap_vld <= 1;
    end
end 

initial begin : write_file_process_r_11
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer r_11_count;
    reg [127:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_r_11_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r_11_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_r_11_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_r_11);
        AESL_REG_r_11_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_a_0;
reg [31:0] size_a_0;
reg [31:0] size_a_0_backup;
reg end_a_1;
reg [31:0] size_a_1;
reg [31:0] size_a_1_backup;
reg end_a_2;
reg [31:0] size_a_2;
reg [31:0] size_a_2_backup;
reg end_a_3;
reg [31:0] size_a_3;
reg [31:0] size_a_3_backup;
reg end_a_4;
reg [31:0] size_a_4;
reg [31:0] size_a_4_backup;
reg end_a_5;
reg [31:0] size_a_5;
reg [31:0] size_a_5_backup;
reg end_a_6;
reg [31:0] size_a_6;
reg [31:0] size_a_6_backup;
reg end_a_7;
reg [31:0] size_a_7;
reg [31:0] size_a_7_backup;
reg end_a_8;
reg [31:0] size_a_8;
reg [31:0] size_a_8_backup;
reg end_a_9;
reg [31:0] size_a_9;
reg [31:0] size_a_9_backup;
reg end_a_10;
reg [31:0] size_a_10;
reg [31:0] size_a_10_backup;
reg end_a_11;
reg [31:0] size_a_11;
reg [31:0] size_a_11_backup;
reg end_b_0;
reg [31:0] size_b_0;
reg [31:0] size_b_0_backup;
reg end_b_1;
reg [31:0] size_b_1;
reg [31:0] size_b_1_backup;
reg end_b_2;
reg [31:0] size_b_2;
reg [31:0] size_b_2_backup;
reg end_b_3;
reg [31:0] size_b_3;
reg [31:0] size_b_3_backup;
reg end_b_4;
reg [31:0] size_b_4;
reg [31:0] size_b_4_backup;
reg end_b_5;
reg [31:0] size_b_5;
reg [31:0] size_b_5_backup;
reg end_b_6;
reg [31:0] size_b_6;
reg [31:0] size_b_6_backup;
reg end_b_7;
reg [31:0] size_b_7;
reg [31:0] size_b_7_backup;
reg end_b_8;
reg [31:0] size_b_8;
reg [31:0] size_b_8_backup;
reg end_b_9;
reg [31:0] size_b_9;
reg [31:0] size_b_9_backup;
reg end_b_10;
reg [31:0] size_b_10;
reg [31:0] size_b_10_backup;
reg end_b_11;
reg [31:0] size_b_11;
reg [31:0] size_b_11_backup;
reg end_r_1;
reg [31:0] size_r_1;
reg [31:0] size_r_1_backup;
reg end_r_2;
reg [31:0] size_r_2;
reg [31:0] size_r_2_backup;
reg end_r_3;
reg [31:0] size_r_3;
reg [31:0] size_r_3_backup;
reg end_r_4;
reg [31:0] size_r_4;
reg [31:0] size_r_4_backup;
reg end_r_5;
reg [31:0] size_r_5;
reg [31:0] size_r_5_backup;
reg end_r_6;
reg [31:0] size_r_6;
reg [31:0] size_r_6_backup;
reg end_r_7;
reg [31:0] size_r_7;
reg [31:0] size_r_7_backup;
reg end_r_8;
reg [31:0] size_r_8;
reg [31:0] size_r_8_backup;
reg end_r_9;
reg [31:0] size_r_9;
reg [31:0] size_r_9_backup;
reg end_r_10;
reg [31:0] size_r_10;
reg [31:0] size_r_10_backup;
reg end_r_0;
reg [31:0] size_r_0;
reg [31:0] size_r_0_backup;
reg end_r_11;
reg [31:0] size_r_11;
reg [31:0] size_r_11_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 1) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
