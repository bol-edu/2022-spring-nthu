// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps

(* use_dsp = "yes" *) module TOP_am_submul_16s_16s_24_4_1_DSP48_6(
    input clk,
    input rst,
    input ce,
    input  [16 - 1:0] in0,
    input  [16 - 1:0] in1,
    output [24 - 1:0]  dout);

wire signed [17 - 1:0]     a;
wire signed [17 - 1:0]     d;
wire signed [36 - 1:0]     m;
wire signed [18 - 1:0]    ad;
reg  signed [36 - 1:0]    m_reg;
reg  signed [18 - 1:0]   ad_reg;
reg  signed [48 - 1:0]    p_reg;

assign a = $signed(in0);
assign d = $signed(in1);

assign ad = a - d;
assign m  = ad_reg * ad_reg;

always @(posedge clk) begin
    if (ce) begin
        m_reg <= m;
        ad_reg <= ad;
        p_reg  <= m_reg;
    end
end

assign dout = p_reg;

endmodule
`timescale 1 ns / 1 ps
module TOP_am_submul_16s_16s_24_4_1(
    clk,
    reset,
    ce,
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



TOP_am_submul_16s_16s_24_4_1_DSP48_6 TOP_am_submul_16s_16s_24_4_1_DSP48_6_U(
    .clk( clk ),
    .rst( reset ),
    .ce( ce ),
    .in0( din0 ),
    .in1( din1 ),
    .dout( dout ));

endmodule

