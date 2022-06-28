// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module resize_accel_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_Pipeline_VITIS_LOOP_394_5_line_bbkb (address0, ce0, d0, we0, address1, ce1, q1, address2, ce2, q2,  reset, clk);

parameter DataWidth = 24;
parameter AddressWidth = 12;
parameter AddressRange = 3840;

input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0;
input[AddressWidth-1:0] address1;
input ce1;
output reg[DataWidth-1:0] q1;
input[AddressWidth-1:0] address2;
input ce2;
output reg[DataWidth-1:0] q2;
input reset;
input clk;

reg [DataWidth-1:0] ram0[0:AddressRange-1];
reg [DataWidth-1:0] ram1[0:AddressRange-1];



always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram0[address0] <= d0; 
    end
end


always @(posedge clk)  
begin 
    if (ce1) begin
        q1 <= ram0[address1];
    end
end


always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram1[address0] <= d0; 
    end
end

always @(posedge clk)  
begin 
    if (ce2) begin
        q2 <= ram1[address2];
    end
end


endmodule

