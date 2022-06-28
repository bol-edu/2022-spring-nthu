// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Jun 19 20:38:19 2022
// Host        : ic22 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_ulp_ucs_0_stub.v
// Design      : ulp_ulp_ucs_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_22c0,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(freerun_refclk, aclk_ctrl, aclk_pcie, 
  clk_kernel, clk_kernel2, hbm_aclk, hbm_refclk, aresetn_ctrl, aresetn_pcie, aresetn_ctrl_slr0, 
  aresetn_ctrl_slr1, aresetn_pcie_slr0, aresetn_pcie_slr1, aresetn_kernel_slr0, 
  aresetn_kernel_slr1, aresetn_kernel2_slr0, aresetn_kernel2_slr1, hbm_aresetn, 
  shutdown_clocks, s_axi_ctrl_mgmt_araddr, s_axi_ctrl_mgmt_arprot, 
  s_axi_ctrl_mgmt_arready, s_axi_ctrl_mgmt_arvalid, s_axi_ctrl_mgmt_awaddr, 
  s_axi_ctrl_mgmt_awprot, s_axi_ctrl_mgmt_awready, s_axi_ctrl_mgmt_awvalid, 
  s_axi_ctrl_mgmt_bready, s_axi_ctrl_mgmt_bresp, s_axi_ctrl_mgmt_bvalid, 
  s_axi_ctrl_mgmt_rdata, s_axi_ctrl_mgmt_rready, s_axi_ctrl_mgmt_rresp, 
  s_axi_ctrl_mgmt_rvalid, s_axi_ctrl_mgmt_wdata, s_axi_ctrl_mgmt_wready, 
  s_axi_ctrl_mgmt_wstrb, s_axi_ctrl_mgmt_wvalid)
/* synthesis syn_black_box black_box_pad_pin="freerun_refclk,aclk_ctrl,aclk_pcie,clk_kernel,clk_kernel2,hbm_aclk,hbm_refclk,aresetn_ctrl,aresetn_pcie,aresetn_ctrl_slr0[0:0],aresetn_ctrl_slr1[0:0],aresetn_pcie_slr0[0:0],aresetn_pcie_slr1[0:0],aresetn_kernel_slr0[0:0],aresetn_kernel_slr1[0:0],aresetn_kernel2_slr0[0:0],aresetn_kernel2_slr1[0:0],hbm_aresetn[0:0],shutdown_clocks,s_axi_ctrl_mgmt_araddr[15:0],s_axi_ctrl_mgmt_arprot[2:0],s_axi_ctrl_mgmt_arready,s_axi_ctrl_mgmt_arvalid,s_axi_ctrl_mgmt_awaddr[15:0],s_axi_ctrl_mgmt_awprot[2:0],s_axi_ctrl_mgmt_awready,s_axi_ctrl_mgmt_awvalid,s_axi_ctrl_mgmt_bready,s_axi_ctrl_mgmt_bresp[1:0],s_axi_ctrl_mgmt_bvalid,s_axi_ctrl_mgmt_rdata[31:0],s_axi_ctrl_mgmt_rready,s_axi_ctrl_mgmt_rresp[1:0],s_axi_ctrl_mgmt_rvalid,s_axi_ctrl_mgmt_wdata[31:0],s_axi_ctrl_mgmt_wready,s_axi_ctrl_mgmt_wstrb[3:0],s_axi_ctrl_mgmt_wvalid" */;
  input freerun_refclk;
  input aclk_ctrl;
  input aclk_pcie;
  output clk_kernel;
  output clk_kernel2;
  output hbm_aclk;
  input hbm_refclk;
  input aresetn_ctrl;
  input aresetn_pcie;
  output [0:0]aresetn_ctrl_slr0;
  output [0:0]aresetn_ctrl_slr1;
  output [0:0]aresetn_pcie_slr0;
  output [0:0]aresetn_pcie_slr1;
  output [0:0]aresetn_kernel_slr0;
  output [0:0]aresetn_kernel_slr1;
  output [0:0]aresetn_kernel2_slr0;
  output [0:0]aresetn_kernel2_slr1;
  output [0:0]hbm_aresetn;
  input shutdown_clocks;
  input [15:0]s_axi_ctrl_mgmt_araddr;
  input [2:0]s_axi_ctrl_mgmt_arprot;
  output s_axi_ctrl_mgmt_arready;
  input s_axi_ctrl_mgmt_arvalid;
  input [15:0]s_axi_ctrl_mgmt_awaddr;
  input [2:0]s_axi_ctrl_mgmt_awprot;
  output s_axi_ctrl_mgmt_awready;
  input s_axi_ctrl_mgmt_awvalid;
  input s_axi_ctrl_mgmt_bready;
  output [1:0]s_axi_ctrl_mgmt_bresp;
  output s_axi_ctrl_mgmt_bvalid;
  output [31:0]s_axi_ctrl_mgmt_rdata;
  input s_axi_ctrl_mgmt_rready;
  output [1:0]s_axi_ctrl_mgmt_rresp;
  output s_axi_ctrl_mgmt_rvalid;
  input [31:0]s_axi_ctrl_mgmt_wdata;
  output s_axi_ctrl_mgmt_wready;
  input [3:0]s_axi_ctrl_mgmt_wstrb;
  input s_axi_ctrl_mgmt_wvalid;
endmodule
