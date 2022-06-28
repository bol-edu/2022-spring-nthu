// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module TOP_Rayleigh_1_rngMT19937ICN_1_i_RAM_AUTO_0R0W (address0, ce0, d0, we0,  reset,clk);

parameter DataWidth = 32;
parameter AddressWidth = 9;
parameter AddressRange = 512;

input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0;
input reset;
input clk;

reg [DataWidth-1:0] ram[0:AddressRange-1];




always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram[address0] <= d0; 
    end
end


endmodule

