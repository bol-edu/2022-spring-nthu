// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Jun 19 20:34:03 2022
// Host        : ic22 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_axi_vip_data_0_stub.v
// Design      : ulp_axi_vip_data_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_vip_v1_1_11_top,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, s_axi_awid, s_axi_awaddr, 
  s_axi_awlen, s_axi_awburst, s_axi_awlock, s_axi_awcache, s_axi_awprot, s_axi_awvalid, 
  s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wlast, s_axi_wvalid, s_axi_wready, s_axi_bid, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_arid, s_axi_araddr, s_axi_arlen, 
  s_axi_arburst, s_axi_arlock, s_axi_arcache, s_axi_arprot, s_axi_arvalid, s_axi_arready, 
  s_axi_rid, s_axi_rdata, s_axi_rresp, s_axi_rlast, s_axi_rvalid, s_axi_rready, m_axi_awid, 
  m_axi_awaddr, m_axi_awlen, m_axi_awburst, m_axi_awlock, m_axi_awcache, m_axi_awprot, 
  m_axi_awvalid, m_axi_awready, m_axi_wdata, m_axi_wstrb, m_axi_wlast, m_axi_wvalid, 
  m_axi_wready, m_axi_bid, m_axi_bresp, m_axi_bvalid, m_axi_bready, m_axi_arid, m_axi_araddr, 
  m_axi_arlen, m_axi_arburst, m_axi_arlock, m_axi_arcache, m_axi_arprot, m_axi_arvalid, 
  m_axi_arready, m_axi_rid, m_axi_rdata, m_axi_rresp, m_axi_rlast, m_axi_rvalid, m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axi_awid[1:0],s_axi_awaddr[38:0],s_axi_awlen[7:0],s_axi_awburst[1:0],s_axi_awlock[0:0],s_axi_awcache[3:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[511:0],s_axi_wstrb[63:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bid[1:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_arid[1:0],s_axi_araddr[38:0],s_axi_arlen[7:0],s_axi_arburst[1:0],s_axi_arlock[0:0],s_axi_arcache[3:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rid[1:0],s_axi_rdata[511:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,s_axi_rready,m_axi_awid[1:0],m_axi_awaddr[38:0],m_axi_awlen[7:0],m_axi_awburst[1:0],m_axi_awlock[0:0],m_axi_awcache[3:0],m_axi_awprot[2:0],m_axi_awvalid,m_axi_awready,m_axi_wdata[511:0],m_axi_wstrb[63:0],m_axi_wlast,m_axi_wvalid,m_axi_wready,m_axi_bid[1:0],m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,m_axi_arid[1:0],m_axi_araddr[38:0],m_axi_arlen[7:0],m_axi_arburst[1:0],m_axi_arlock[0:0],m_axi_arcache[3:0],m_axi_arprot[2:0],m_axi_arvalid,m_axi_arready,m_axi_rid[1:0],m_axi_rdata[511:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_rvalid,m_axi_rready" */;
  input aclk;
  input aresetn;
  input [1:0]s_axi_awid;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [1:0]s_axi_arid;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [1:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [1:0]m_axi_awid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [1:0]m_axi_arid;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [1:0]m_axi_rid;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;
endmodule
