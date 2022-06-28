// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Jun 19 20:35:52 2022
// Host        : ic22 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_clock_throttling_kernel2_0_stub.v
// Design      : bd_22c0_clock_throttling_kernel2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "shell_utils_clock_throttling,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(Clk_In, Rst_In, Locked, Startup_Done, 
  Rate_Upd_Tog, Rate_In, Rst_Async, Clk_Out, Clk_Out_Cont)
/* synthesis syn_black_box black_box_pad_pin="Clk_In,Rst_In,Locked,Startup_Done,Rate_Upd_Tog,Rate_In[7:0],Rst_Async,Clk_Out,Clk_Out_Cont" */;
  input Clk_In;
  input Rst_In;
  input Locked;
  input Startup_Done;
  input Rate_Upd_Tog;
  input [7:0]Rate_In;
  output Rst_Async;
  output Clk_Out;
  output Clk_Out_Cont;
endmodule
