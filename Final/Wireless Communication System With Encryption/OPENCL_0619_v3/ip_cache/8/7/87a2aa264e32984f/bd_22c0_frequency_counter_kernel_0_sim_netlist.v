// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Jun 19 20:35:00 2022
// Host        : ic22 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_frequency_counter_kernel_0_sim_netlist.v
// Design      : bd_22c0_frequency_counter_kernel_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_22c0_frequency_counter_kernel_0,shell_utils_frequency_counter_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    test_clk0,
    test_clk1);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_signal_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_signal_clock, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_signal_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_signal_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  input test_clk0;
  input test_clk1;

  wire \<const0> ;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire test_clk0;
  wire test_clk1;
  wire [1:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CFG_LEN = "4" *) 
  (* CLK_CONFIG = "16'b0000000000100001" *) 
  (* IDLE_READ = "2'b01" *) 
  (* IDLE_WRITE = "3'b001" *) 
  (* NUM_CLKS = "4" *) 
  (* REF_CLK_FREQ_HZ = "100000" *) 
  (* TEST_CLK_0_TYPE = "1" *) 
  (* TEST_CLK_1_TYPE = "2" *) 
  (* TEST_CLK_2_TYPE = "0" *) 
  (* TEST_CLK_3_TYPE = "0" *) 
  (* WAIT_FOR_BREADY_WRITE = "3'b100" *) 
  (* WAIT_FOR_RVALID_READ = "2'b10" *) 
  (* WAIT_FOR_WVALID_WRITE = "3'b010" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0 inst
       (.s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_araddr[4:0]}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_awaddr[3:0]}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid),
        .test_clk0(test_clk0),
        .test_clk1(test_clk1),
        .test_clk2(1'b0),
        .test_clk3(1'b0));
endmodule

(* CFG_LEN = "4" *) (* CLK_CONFIG = "16'b0000000000100001" *) (* IDLE_READ = "2'b01" *) 
(* IDLE_WRITE = "3'b001" *) (* NUM_CLKS = "4" *) (* REF_CLK_FREQ_HZ = "100000" *) 
(* TEST_CLK_0_TYPE = "1" *) (* TEST_CLK_1_TYPE = "2" *) (* TEST_CLK_2_TYPE = "0" *) 
(* TEST_CLK_3_TYPE = "0" *) (* WAIT_FOR_BREADY_WRITE = "3'b100" *) (* WAIT_FOR_RVALID_READ = "2'b10" *) 
(* WAIT_FOR_WVALID_WRITE = "3'b010" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    test_clk0,
    test_clk1,
    test_clk2,
    test_clk3);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output s_axi_bvalid;
  output [1:0]s_axi_bresp;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input test_clk0;
  input test_clk1;
  input test_clk2;
  input test_clk3;

  wire \<const0> ;
  wire \CLKS[0].test_clk_cntr[0][0]_i_3_n_0 ;
  wire [31:0]\CLKS[0].test_clk_cntr_reg[0] ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_10 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_11 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_12 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_13 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_14 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_15 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_4 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_5 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_6 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_7 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_8 ;
  wire \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_9 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_10 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_11 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_12 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_13 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_14 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_15 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_4 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_5 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_6 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_7 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_8 ;
  wire \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_9 ;
  wire \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_10 ;
  wire \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_11 ;
  wire \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_12 ;
  wire \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_13 ;
  wire \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_14 ;
  wire \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_15 ;
  wire \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_4 ;
  wire \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_5 ;
  wire \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_6 ;
  wire \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_7 ;
  wire \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_8 ;
  wire \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_9 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_0 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_1 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_10 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_11 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_12 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_13 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_14 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_15 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_2 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_3 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_4 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_5 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_6 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_7 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_8 ;
  wire \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_9 ;
  wire \CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr[1][0]_i_3_n_0 ;
  wire [31:0]\CLKS[1].test_clk_cntr_reg[1] ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_10 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_11 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_12 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_13 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_14 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_15 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_4 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_5 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_6 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_7 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_8 ;
  wire \CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_9 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_10 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_11 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_12 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_13 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_14 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_15 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_4 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_5 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_6 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_7 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_8 ;
  wire \CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_9 ;
  wire \CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_10 ;
  wire \CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_11 ;
  wire \CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_12 ;
  wire \CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_13 ;
  wire \CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_14 ;
  wire \CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_15 ;
  wire \CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_4 ;
  wire \CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_5 ;
  wire \CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_6 ;
  wire \CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_7 ;
  wire \CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_8 ;
  wire \CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_9 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_0 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_1 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_10 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_11 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_12 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_13 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_14 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_15 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_2 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_3 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_4 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_5 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_6 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_7 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_8 ;
  wire \CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_9 ;
  wire [1:1]clear_user_rst;
  wire [0:0]clear_user_rst__0;
  (* RTL_KEEP = "true" *) wire [3:0]done;
  wire done_c;
  (* RTL_KEEP = "true" *) wire done_ref;
  wire done_ref_i_1_n_0;
  wire done_ref_i_3_n_0;
  wire done_ref_i_4_n_0;
  wire done_ref_i_5_n_0;
  wire done_ref_i_6_n_0;
  wire done_ref_i_7_n_0;
  wire done_ref_i_8_n_0;
  wire done_synced_0;
  wire done_synced_1;
  wire [1:1]p_1_in;
  wire [1:1]p_1_in__0;
  wire \ref_clk_cntr[0]_i_2_n_0 ;
  wire [31:0]ref_clk_cntr_reg;
  wire \ref_clk_cntr_reg[0]_i_1_n_0 ;
  wire \ref_clk_cntr_reg[0]_i_1_n_1 ;
  wire \ref_clk_cntr_reg[0]_i_1_n_10 ;
  wire \ref_clk_cntr_reg[0]_i_1_n_11 ;
  wire \ref_clk_cntr_reg[0]_i_1_n_12 ;
  wire \ref_clk_cntr_reg[0]_i_1_n_13 ;
  wire \ref_clk_cntr_reg[0]_i_1_n_14 ;
  wire \ref_clk_cntr_reg[0]_i_1_n_15 ;
  wire \ref_clk_cntr_reg[0]_i_1_n_2 ;
  wire \ref_clk_cntr_reg[0]_i_1_n_3 ;
  wire \ref_clk_cntr_reg[0]_i_1_n_4 ;
  wire \ref_clk_cntr_reg[0]_i_1_n_5 ;
  wire \ref_clk_cntr_reg[0]_i_1_n_6 ;
  wire \ref_clk_cntr_reg[0]_i_1_n_7 ;
  wire \ref_clk_cntr_reg[0]_i_1_n_8 ;
  wire \ref_clk_cntr_reg[0]_i_1_n_9 ;
  wire \ref_clk_cntr_reg[16]_i_1_n_0 ;
  wire \ref_clk_cntr_reg[16]_i_1_n_1 ;
  wire \ref_clk_cntr_reg[16]_i_1_n_10 ;
  wire \ref_clk_cntr_reg[16]_i_1_n_11 ;
  wire \ref_clk_cntr_reg[16]_i_1_n_12 ;
  wire \ref_clk_cntr_reg[16]_i_1_n_13 ;
  wire \ref_clk_cntr_reg[16]_i_1_n_14 ;
  wire \ref_clk_cntr_reg[16]_i_1_n_15 ;
  wire \ref_clk_cntr_reg[16]_i_1_n_2 ;
  wire \ref_clk_cntr_reg[16]_i_1_n_3 ;
  wire \ref_clk_cntr_reg[16]_i_1_n_4 ;
  wire \ref_clk_cntr_reg[16]_i_1_n_5 ;
  wire \ref_clk_cntr_reg[16]_i_1_n_6 ;
  wire \ref_clk_cntr_reg[16]_i_1_n_7 ;
  wire \ref_clk_cntr_reg[16]_i_1_n_8 ;
  wire \ref_clk_cntr_reg[16]_i_1_n_9 ;
  wire \ref_clk_cntr_reg[24]_i_1_n_1 ;
  wire \ref_clk_cntr_reg[24]_i_1_n_10 ;
  wire \ref_clk_cntr_reg[24]_i_1_n_11 ;
  wire \ref_clk_cntr_reg[24]_i_1_n_12 ;
  wire \ref_clk_cntr_reg[24]_i_1_n_13 ;
  wire \ref_clk_cntr_reg[24]_i_1_n_14 ;
  wire \ref_clk_cntr_reg[24]_i_1_n_15 ;
  wire \ref_clk_cntr_reg[24]_i_1_n_2 ;
  wire \ref_clk_cntr_reg[24]_i_1_n_3 ;
  wire \ref_clk_cntr_reg[24]_i_1_n_4 ;
  wire \ref_clk_cntr_reg[24]_i_1_n_5 ;
  wire \ref_clk_cntr_reg[24]_i_1_n_6 ;
  wire \ref_clk_cntr_reg[24]_i_1_n_7 ;
  wire \ref_clk_cntr_reg[24]_i_1_n_8 ;
  wire \ref_clk_cntr_reg[24]_i_1_n_9 ;
  wire \ref_clk_cntr_reg[8]_i_1_n_0 ;
  wire \ref_clk_cntr_reg[8]_i_1_n_1 ;
  wire \ref_clk_cntr_reg[8]_i_1_n_10 ;
  wire \ref_clk_cntr_reg[8]_i_1_n_11 ;
  wire \ref_clk_cntr_reg[8]_i_1_n_12 ;
  wire \ref_clk_cntr_reg[8]_i_1_n_13 ;
  wire \ref_clk_cntr_reg[8]_i_1_n_14 ;
  wire \ref_clk_cntr_reg[8]_i_1_n_15 ;
  wire \ref_clk_cntr_reg[8]_i_1_n_2 ;
  wire \ref_clk_cntr_reg[8]_i_1_n_3 ;
  wire \ref_clk_cntr_reg[8]_i_1_n_4 ;
  wire \ref_clk_cntr_reg[8]_i_1_n_5 ;
  wire \ref_clk_cntr_reg[8]_i_1_n_6 ;
  wire \ref_clk_cntr_reg[8]_i_1_n_7 ;
  wire \ref_clk_cntr_reg[8]_i_1_n_8 ;
  wire \ref_clk_cntr_reg[8]_i_1_n_9 ;
  (* RTL_KEEP = "true" *) wire [3:0]rst_cnt;
  (* RTL_KEEP = "true" *) wire rst_cnt_ref;
  wire rst_cnt_synced_0;
  wire rst_cnt_synced_1;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arready_i_1_n_0;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awready_i_1_n_0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_1_n_0;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata[0]_i_1_n_0 ;
  wire \s_axi_rdata[0]_i_2_n_0 ;
  wire \s_axi_rdata[0]_i_3_n_0 ;
  wire \s_axi_rdata[10]_i_1_n_0 ;
  wire \s_axi_rdata[11]_i_1_n_0 ;
  wire \s_axi_rdata[12]_i_1_n_0 ;
  wire \s_axi_rdata[13]_i_1_n_0 ;
  wire \s_axi_rdata[14]_i_1_n_0 ;
  wire \s_axi_rdata[15]_i_1_n_0 ;
  wire \s_axi_rdata[16]_i_1_n_0 ;
  wire \s_axi_rdata[16]_i_2_n_0 ;
  wire \s_axi_rdata[17]_i_1_n_0 ;
  wire \s_axi_rdata[18]_i_1_n_0 ;
  wire \s_axi_rdata[19]_i_1_n_0 ;
  wire \s_axi_rdata[1]_i_1_n_0 ;
  wire \s_axi_rdata[1]_i_2_n_0 ;
  wire \s_axi_rdata[1]_i_3_n_0 ;
  wire \s_axi_rdata[20]_i_1_n_0 ;
  wire \s_axi_rdata[21]_i_1_n_0 ;
  wire \s_axi_rdata[21]_i_2_n_0 ;
  wire \s_axi_rdata[21]_i_3_n_0 ;
  wire \s_axi_rdata[22]_i_1_n_0 ;
  wire \s_axi_rdata[23]_i_1_n_0 ;
  wire \s_axi_rdata[24]_i_1_n_0 ;
  wire \s_axi_rdata[25]_i_1_n_0 ;
  wire \s_axi_rdata[26]_i_1_n_0 ;
  wire \s_axi_rdata[27]_i_1_n_0 ;
  wire \s_axi_rdata[28]_i_1_n_0 ;
  wire \s_axi_rdata[29]_i_1_n_0 ;
  wire \s_axi_rdata[2]_i_1_n_0 ;
  wire \s_axi_rdata[30]_i_1_n_0 ;
  wire \s_axi_rdata[31]_i_1_n_0 ;
  wire \s_axi_rdata[31]_i_2_n_0 ;
  wire \s_axi_rdata[31]_i_3_n_0 ;
  wire \s_axi_rdata[31]_i_4_n_0 ;
  wire \s_axi_rdata[31]_i_5_n_0 ;
  wire \s_axi_rdata[3]_i_1_n_0 ;
  wire \s_axi_rdata[4]_i_1_n_0 ;
  wire \s_axi_rdata[5]_i_1_n_0 ;
  wire \s_axi_rdata[6]_i_1_n_0 ;
  wire \s_axi_rdata[7]_i_1_n_0 ;
  wire \s_axi_rdata[8]_i_1_n_0 ;
  wire \s_axi_rdata[9]_i_1_n_0 ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_1_n_0;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready_i_1_n_0;
  wire s_axi_wvalid;
  wire sel;
  wire [1:0]state_read;
  wire \state_read[1]_i_1_n_0 ;
  wire [1:0]state_write;
  wire \state_write[2]_i_1_n_0 ;
  wire \state_write[2]_i_2_n_0 ;
  wire \state_write_reg_n_0_[2] ;
  wire test_clk0;
  wire test_clk1;
  wire [31:0]\test_clk_cntr_synced[0] ;
  wire [31:0]\test_clk_cntr_synced[1] ;
  wire user_rst_i_1_n_0;
  wire user_rst_i_2_n_0;
  wire user_rst_i_3_n_0;
  wire user_rst_reg_n_0;
  wire [7:7]\NLW_CLKS[0].test_clk_cntr_reg[0][24]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_CLKS[1].test_clk_cntr_reg[1][24]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_ref_clk_cntr_reg[24]_i_1_CO_UNCONNECTED ;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "1" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2 \CLKS[0].cdc_done 
       (.dest_clk(test_clk0),
        .dest_out(done_synced_0),
        .src_clk(1'b0),
        .src_in(done[0]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1 \CLKS[0].cdc_rst_cn0 
       (.dest_arst(rst_cnt_synced_0),
        .dest_clk(test_clk0),
        .src_arst(rst_cnt[0]));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "32" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__2 \CLKS[0].cdc_test_clk0_cntr 
       (.dest_clk(s_axi_aclk),
        .dest_out(\test_clk_cntr_synced[0] ),
        .src_clk(1'b0),
        .src_in(\CLKS[0].test_clk_cntr_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \CLKS[0].test_clk_cntr[0][0]_i_1 
       (.I0(done_synced_0),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \CLKS[0].test_clk_cntr[0][0]_i_3 
       (.I0(\CLKS[0].test_clk_cntr_reg[0] [0]),
        .O(\CLKS[0].test_clk_cntr[0][0]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][0] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_15 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [0]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \CLKS[0].test_clk_cntr_reg[0][0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_0 ,\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_1 ,\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_2 ,\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_3 ,\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_4 ,\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_5 ,\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_6 ,\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_8 ,\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_9 ,\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_10 ,\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_11 ,\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_12 ,\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_13 ,\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_14 ,\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_15 }),
        .S({\CLKS[0].test_clk_cntr_reg[0] [7:1],\CLKS[0].test_clk_cntr[0][0]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][10] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_13 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][11] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_12 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][12] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_11 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][13] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_10 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][14] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_9 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][15] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_8 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][16] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_15 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [16]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \CLKS[0].test_clk_cntr_reg[0][16]_i_1 
       (.CI(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_0 ,\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_1 ,\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_2 ,\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_3 ,\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_4 ,\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_5 ,\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_6 ,\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_8 ,\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_9 ,\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_10 ,\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_11 ,\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_12 ,\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_13 ,\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_14 ,\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_15 }),
        .S(\CLKS[0].test_clk_cntr_reg[0] [23:16]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][17] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_14 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][18] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_13 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][19] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_12 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][1] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_14 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][20] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_11 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][21] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_10 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][22] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_9 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][23] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_8 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][24] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_15 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [24]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \CLKS[0].test_clk_cntr_reg[0][24]_i_1 
       (.CI(\CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_CLKS[0].test_clk_cntr_reg[0][24]_i_1_CO_UNCONNECTED [7],\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_1 ,\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_2 ,\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_3 ,\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_4 ,\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_5 ,\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_6 ,\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_8 ,\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_9 ,\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_10 ,\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_11 ,\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_12 ,\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_13 ,\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_14 ,\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_15 }),
        .S(\CLKS[0].test_clk_cntr_reg[0] [31:24]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][25] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_14 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][26] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_13 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][27] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_12 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][28] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_11 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][29] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_10 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][2] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_13 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][30] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_9 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][31] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_8 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][3] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_12 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][4] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_11 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][5] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_10 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][6] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_9 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][7] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_8 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][8] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_15 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [8]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \CLKS[0].test_clk_cntr_reg[0][8]_i_1 
       (.CI(\CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_0 ,\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_1 ,\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_2 ,\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_3 ,\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_4 ,\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_5 ,\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_6 ,\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_8 ,\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_9 ,\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_10 ,\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_11 ,\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_12 ,\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_13 ,\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_14 ,\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_15 }),
        .S(\CLKS[0].test_clk_cntr_reg[0] [15:8]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[0].test_clk_cntr_reg[0][9] 
       (.C(test_clk0),
        .CE(sel),
        .CLR(rst_cnt_synced_0),
        .D(\CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_14 ),
        .Q(\CLKS[0].test_clk_cntr_reg[0] [9]));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "1" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single \CLKS[1].cdc_done 
       (.dest_clk(test_clk1),
        .dest_out(done_synced_1),
        .src_clk(1'b0),
        .src_in(done[1]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst \CLKS[1].cdc_rst_cn0 
       (.dest_arst(rst_cnt_synced_1),
        .dest_clk(test_clk1),
        .src_arst(rst_cnt[1]));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "32" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0 \CLKS[1].cdc_test_clk0_cntr 
       (.dest_clk(s_axi_aclk),
        .dest_out(\test_clk_cntr_synced[1] ),
        .src_clk(1'b0),
        .src_in(\CLKS[1].test_clk_cntr_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \CLKS[1].test_clk_cntr[1][0]_i_1 
       (.I0(done_synced_1),
        .O(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CLKS[1].test_clk_cntr[1][0]_i_3 
       (.I0(\CLKS[1].test_clk_cntr_reg[1] [0]),
        .O(\CLKS[1].test_clk_cntr[1][0]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][0] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_15 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [0]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \CLKS[1].test_clk_cntr_reg[1][0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_0 ,\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_1 ,\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_2 ,\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_3 ,\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_4 ,\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_5 ,\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_6 ,\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_8 ,\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_9 ,\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_10 ,\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_11 ,\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_12 ,\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_13 ,\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_14 ,\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_15 }),
        .S({\CLKS[1].test_clk_cntr_reg[1] [7:1],\CLKS[1].test_clk_cntr[1][0]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][10] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_13 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][11] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_12 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][12] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_11 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][13] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_10 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][14] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_9 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][15] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_8 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][16] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_15 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [16]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \CLKS[1].test_clk_cntr_reg[1][16]_i_1 
       (.CI(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_0 ,\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_1 ,\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_2 ,\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_3 ,\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_4 ,\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_5 ,\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_6 ,\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_8 ,\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_9 ,\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_10 ,\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_11 ,\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_12 ,\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_13 ,\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_14 ,\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_15 }),
        .S(\CLKS[1].test_clk_cntr_reg[1] [23:16]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][17] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_14 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][18] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_13 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][19] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_12 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][1] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_14 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][20] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_11 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][21] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_10 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][22] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_9 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][23] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_8 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][24] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_15 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [24]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \CLKS[1].test_clk_cntr_reg[1][24]_i_1 
       (.CI(\CLKS[1].test_clk_cntr_reg[1][16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_CLKS[1].test_clk_cntr_reg[1][24]_i_1_CO_UNCONNECTED [7],\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_1 ,\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_2 ,\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_3 ,\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_4 ,\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_5 ,\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_6 ,\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_8 ,\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_9 ,\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_10 ,\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_11 ,\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_12 ,\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_13 ,\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_14 ,\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_15 }),
        .S(\CLKS[1].test_clk_cntr_reg[1] [31:24]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][25] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_14 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][26] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_13 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][27] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_12 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][28] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_11 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][29] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_10 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][2] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_13 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][30] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_9 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][31] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][24]_i_1_n_8 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][3] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_12 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][4] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_11 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][5] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_10 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][6] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_9 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][7] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_8 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][8] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_15 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [8]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \CLKS[1].test_clk_cntr_reg[1][8]_i_1 
       (.CI(\CLKS[1].test_clk_cntr_reg[1][0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_0 ,\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_1 ,\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_2 ,\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_3 ,\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_4 ,\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_5 ,\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_6 ,\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_8 ,\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_9 ,\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_10 ,\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_11 ,\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_12 ,\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_13 ,\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_14 ,\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_15 }),
        .S(\CLKS[1].test_clk_cntr_reg[1] [15:8]));
  FDCE #(
    .INIT(1'b0)) 
    \CLKS[1].test_clk_cntr_reg[1][9] 
       (.C(test_clk1),
        .CE(\CLKS[1].test_clk_cntr[1][0]_i_1_n_0 ),
        .CLR(rst_cnt_synced_1),
        .D(\CLKS[1].test_clk_cntr_reg[1][8]_i_1_n_14 ),
        .Q(\CLKS[1].test_clk_cntr_reg[1] [9]));
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clear_user_rst_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(user_rst_reg_n_0),
        .Q(clear_user_rst__0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clear_user_rst_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clear_user_rst__0),
        .Q(clear_user_rst),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    done_ref_i_1
       (.I0(done_ref),
        .O(done_ref_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    done_ref_i_2
       (.I0(done_ref_i_3_n_0),
        .I1(done_ref_i_4_n_0),
        .I2(done_ref_i_5_n_0),
        .I3(done_ref_i_6_n_0),
        .I4(done_ref_i_7_n_0),
        .I5(done_ref_i_8_n_0),
        .O(done_c));
  LUT2 #(
    .INIT(4'h8)) 
    done_ref_i_3
       (.I0(ref_clk_cntr_reg[0]),
        .I1(ref_clk_cntr_reg[1]),
        .O(done_ref_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    done_ref_i_4
       (.I0(ref_clk_cntr_reg[4]),
        .I1(ref_clk_cntr_reg[5]),
        .I2(ref_clk_cntr_reg[2]),
        .I3(ref_clk_cntr_reg[3]),
        .I4(ref_clk_cntr_reg[6]),
        .I5(ref_clk_cntr_reg[7]),
        .O(done_ref_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    done_ref_i_5
       (.I0(ref_clk_cntr_reg[10]),
        .I1(ref_clk_cntr_reg[11]),
        .I2(ref_clk_cntr_reg[9]),
        .I3(ref_clk_cntr_reg[8]),
        .I4(ref_clk_cntr_reg[13]),
        .I5(ref_clk_cntr_reg[12]),
        .O(done_ref_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    done_ref_i_6
       (.I0(ref_clk_cntr_reg[16]),
        .I1(ref_clk_cntr_reg[17]),
        .I2(ref_clk_cntr_reg[15]),
        .I3(ref_clk_cntr_reg[14]),
        .I4(ref_clk_cntr_reg[19]),
        .I5(ref_clk_cntr_reg[18]),
        .O(done_ref_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    done_ref_i_7
       (.I0(ref_clk_cntr_reg[22]),
        .I1(ref_clk_cntr_reg[23]),
        .I2(ref_clk_cntr_reg[20]),
        .I3(ref_clk_cntr_reg[21]),
        .I4(ref_clk_cntr_reg[25]),
        .I5(ref_clk_cntr_reg[24]),
        .O(done_ref_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    done_ref_i_8
       (.I0(ref_clk_cntr_reg[28]),
        .I1(ref_clk_cntr_reg[29]),
        .I2(ref_clk_cntr_reg[26]),
        .I3(ref_clk_cntr_reg[27]),
        .I4(ref_clk_cntr_reg[31]),
        .I5(ref_clk_cntr_reg[30]),
        .O(done_ref_i_8_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    done_ref_reg
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(done_c),
        .Q(done_ref),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[0] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(done_c),
        .Q(done[0]),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[1] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(done_c),
        .Q(done[1]),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[2] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(done_c),
        .Q(done[2]),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \done_reg[3] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(done_c),
        .Q(done[3]),
        .R(rst_cnt_ref));
  LUT1 #(
    .INIT(2'h1)) 
    \ref_clk_cntr[0]_i_2 
       (.I0(ref_clk_cntr_reg[0]),
        .O(\ref_clk_cntr[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[0] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[0]_i_1_n_15 ),
        .Q(ref_clk_cntr_reg[0]),
        .R(rst_cnt_ref));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \ref_clk_cntr_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\ref_clk_cntr_reg[0]_i_1_n_0 ,\ref_clk_cntr_reg[0]_i_1_n_1 ,\ref_clk_cntr_reg[0]_i_1_n_2 ,\ref_clk_cntr_reg[0]_i_1_n_3 ,\ref_clk_cntr_reg[0]_i_1_n_4 ,\ref_clk_cntr_reg[0]_i_1_n_5 ,\ref_clk_cntr_reg[0]_i_1_n_6 ,\ref_clk_cntr_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\ref_clk_cntr_reg[0]_i_1_n_8 ,\ref_clk_cntr_reg[0]_i_1_n_9 ,\ref_clk_cntr_reg[0]_i_1_n_10 ,\ref_clk_cntr_reg[0]_i_1_n_11 ,\ref_clk_cntr_reg[0]_i_1_n_12 ,\ref_clk_cntr_reg[0]_i_1_n_13 ,\ref_clk_cntr_reg[0]_i_1_n_14 ,\ref_clk_cntr_reg[0]_i_1_n_15 }),
        .S({ref_clk_cntr_reg[7:1],\ref_clk_cntr[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[10] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[8]_i_1_n_13 ),
        .Q(ref_clk_cntr_reg[10]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[11] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[8]_i_1_n_12 ),
        .Q(ref_clk_cntr_reg[11]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[12] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[8]_i_1_n_11 ),
        .Q(ref_clk_cntr_reg[12]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[13] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[8]_i_1_n_10 ),
        .Q(ref_clk_cntr_reg[13]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[14] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[8]_i_1_n_9 ),
        .Q(ref_clk_cntr_reg[14]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[15] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[8]_i_1_n_8 ),
        .Q(ref_clk_cntr_reg[15]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[16] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[16]_i_1_n_15 ),
        .Q(ref_clk_cntr_reg[16]),
        .R(rst_cnt_ref));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \ref_clk_cntr_reg[16]_i_1 
       (.CI(\ref_clk_cntr_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\ref_clk_cntr_reg[16]_i_1_n_0 ,\ref_clk_cntr_reg[16]_i_1_n_1 ,\ref_clk_cntr_reg[16]_i_1_n_2 ,\ref_clk_cntr_reg[16]_i_1_n_3 ,\ref_clk_cntr_reg[16]_i_1_n_4 ,\ref_clk_cntr_reg[16]_i_1_n_5 ,\ref_clk_cntr_reg[16]_i_1_n_6 ,\ref_clk_cntr_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\ref_clk_cntr_reg[16]_i_1_n_8 ,\ref_clk_cntr_reg[16]_i_1_n_9 ,\ref_clk_cntr_reg[16]_i_1_n_10 ,\ref_clk_cntr_reg[16]_i_1_n_11 ,\ref_clk_cntr_reg[16]_i_1_n_12 ,\ref_clk_cntr_reg[16]_i_1_n_13 ,\ref_clk_cntr_reg[16]_i_1_n_14 ,\ref_clk_cntr_reg[16]_i_1_n_15 }),
        .S(ref_clk_cntr_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[17] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[16]_i_1_n_14 ),
        .Q(ref_clk_cntr_reg[17]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[18] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[16]_i_1_n_13 ),
        .Q(ref_clk_cntr_reg[18]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[19] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[16]_i_1_n_12 ),
        .Q(ref_clk_cntr_reg[19]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[1] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[0]_i_1_n_14 ),
        .Q(ref_clk_cntr_reg[1]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[20] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[16]_i_1_n_11 ),
        .Q(ref_clk_cntr_reg[20]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[21] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[16]_i_1_n_10 ),
        .Q(ref_clk_cntr_reg[21]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[22] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[16]_i_1_n_9 ),
        .Q(ref_clk_cntr_reg[22]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[23] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[16]_i_1_n_8 ),
        .Q(ref_clk_cntr_reg[23]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[24] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[24]_i_1_n_15 ),
        .Q(ref_clk_cntr_reg[24]),
        .R(rst_cnt_ref));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \ref_clk_cntr_reg[24]_i_1 
       (.CI(\ref_clk_cntr_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_ref_clk_cntr_reg[24]_i_1_CO_UNCONNECTED [7],\ref_clk_cntr_reg[24]_i_1_n_1 ,\ref_clk_cntr_reg[24]_i_1_n_2 ,\ref_clk_cntr_reg[24]_i_1_n_3 ,\ref_clk_cntr_reg[24]_i_1_n_4 ,\ref_clk_cntr_reg[24]_i_1_n_5 ,\ref_clk_cntr_reg[24]_i_1_n_6 ,\ref_clk_cntr_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\ref_clk_cntr_reg[24]_i_1_n_8 ,\ref_clk_cntr_reg[24]_i_1_n_9 ,\ref_clk_cntr_reg[24]_i_1_n_10 ,\ref_clk_cntr_reg[24]_i_1_n_11 ,\ref_clk_cntr_reg[24]_i_1_n_12 ,\ref_clk_cntr_reg[24]_i_1_n_13 ,\ref_clk_cntr_reg[24]_i_1_n_14 ,\ref_clk_cntr_reg[24]_i_1_n_15 }),
        .S(ref_clk_cntr_reg[31:24]));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[25] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[24]_i_1_n_14 ),
        .Q(ref_clk_cntr_reg[25]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[26] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[24]_i_1_n_13 ),
        .Q(ref_clk_cntr_reg[26]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[27] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[24]_i_1_n_12 ),
        .Q(ref_clk_cntr_reg[27]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[28] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[24]_i_1_n_11 ),
        .Q(ref_clk_cntr_reg[28]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[29] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[24]_i_1_n_10 ),
        .Q(ref_clk_cntr_reg[29]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[2] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[0]_i_1_n_13 ),
        .Q(ref_clk_cntr_reg[2]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[30] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[24]_i_1_n_9 ),
        .Q(ref_clk_cntr_reg[30]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[31] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[24]_i_1_n_8 ),
        .Q(ref_clk_cntr_reg[31]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[3] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[0]_i_1_n_12 ),
        .Q(ref_clk_cntr_reg[3]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[4] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[0]_i_1_n_11 ),
        .Q(ref_clk_cntr_reg[4]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[5] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[0]_i_1_n_10 ),
        .Q(ref_clk_cntr_reg[5]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[6] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[0]_i_1_n_9 ),
        .Q(ref_clk_cntr_reg[6]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[7] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[0]_i_1_n_8 ),
        .Q(ref_clk_cntr_reg[7]),
        .R(rst_cnt_ref));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[8] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[8]_i_1_n_15 ),
        .Q(ref_clk_cntr_reg[8]),
        .R(rst_cnt_ref));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \ref_clk_cntr_reg[8]_i_1 
       (.CI(\ref_clk_cntr_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\ref_clk_cntr_reg[8]_i_1_n_0 ,\ref_clk_cntr_reg[8]_i_1_n_1 ,\ref_clk_cntr_reg[8]_i_1_n_2 ,\ref_clk_cntr_reg[8]_i_1_n_3 ,\ref_clk_cntr_reg[8]_i_1_n_4 ,\ref_clk_cntr_reg[8]_i_1_n_5 ,\ref_clk_cntr_reg[8]_i_1_n_6 ,\ref_clk_cntr_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\ref_clk_cntr_reg[8]_i_1_n_8 ,\ref_clk_cntr_reg[8]_i_1_n_9 ,\ref_clk_cntr_reg[8]_i_1_n_10 ,\ref_clk_cntr_reg[8]_i_1_n_11 ,\ref_clk_cntr_reg[8]_i_1_n_12 ,\ref_clk_cntr_reg[8]_i_1_n_13 ,\ref_clk_cntr_reg[8]_i_1_n_14 ,\ref_clk_cntr_reg[8]_i_1_n_15 }),
        .S(ref_clk_cntr_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \ref_clk_cntr_reg[9] 
       (.C(s_axi_aclk),
        .CE(done_ref_i_1_n_0),
        .D(\ref_clk_cntr_reg[8]_i_1_n_14 ),
        .Q(ref_clk_cntr_reg[9]),
        .R(rst_cnt_ref));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    rst_cnt_ref_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state_write[2]_i_1_n_0 ),
        .Q(rst_cnt_ref),
        .S(user_rst_reg_n_0));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state_write[2]_i_1_n_0 ),
        .Q(rst_cnt[0]),
        .S(user_rst_reg_n_0));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state_write[2]_i_1_n_0 ),
        .Q(rst_cnt[1]),
        .S(user_rst_reg_n_0));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state_write[2]_i_1_n_0 ),
        .Q(rst_cnt[2]),
        .S(user_rst_reg_n_0));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state_write[2]_i_1_n_0 ),
        .Q(rst_cnt[3]),
        .S(user_rst_reg_n_0));
  LUT5 #(
    .INIT(32'hF5FF0080)) 
    s_axi_arready_i_1
       (.I0(s_axi_aresetn),
        .I1(s_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s_axi_arready),
        .O(s_axi_arready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_arready_i_1_n_0),
        .Q(s_axi_arready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFDFFFDFF10000000)) 
    s_axi_awready_i_1
       (.I0(state_write[1]),
        .I1(\state_write_reg_n_0_[2] ),
        .I2(state_write[0]),
        .I3(s_axi_aresetn),
        .I4(s_axi_awvalid),
        .I5(s_axi_awready),
        .O(s_axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_awready_i_1_n_0),
        .Q(s_axi_awready),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFF0040)) 
    s_axi_bvalid_i_1
       (.I0(state_write[1]),
        .I1(\state_write_reg_n_0_[2] ),
        .I2(s_axi_aresetn),
        .I3(state_write[0]),
        .I4(s_axi_bvalid),
        .O(s_axi_bvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[0]_i_1 
       (.I0(\s_axi_rdata[0]_i_2_n_0 ),
        .I1(\s_axi_rdata[31]_i_4_n_0 ),
        .I2(\test_clk_cntr_synced[0] [0]),
        .I3(ref_clk_cntr_reg[0]),
        .I4(\s_axi_rdata[31]_i_3_n_0 ),
        .I5(\s_axi_rdata[0]_i_3_n_0 ),
        .O(\s_axi_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000F800000000)) 
    \s_axi_rdata[0]_i_2 
       (.I0(\test_clk_cntr_synced[1] [0]),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[3]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[4]),
        .O(\s_axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axi_rdata[0]_i_3 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[4]),
        .I5(user_rst_reg_n_0),
        .O(\s_axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[10]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[10]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [10]),
        .I4(\test_clk_cntr_synced[1] [10]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[11]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[11]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [11]),
        .I4(\test_clk_cntr_synced[1] [11]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[12]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[12]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [12]),
        .I4(\test_clk_cntr_synced[1] [12]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[13]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[13]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [13]),
        .I4(\test_clk_cntr_synced[1] [13]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[14]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[14]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [14]),
        .I4(\test_clk_cntr_synced[1] [14]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[15]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[15]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [15]),
        .I4(\test_clk_cntr_synced[1] [15]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABAAAFAFABABA)) 
    \s_axi_rdata[16]_i_1 
       (.I0(\s_axi_rdata[16]_i_2_n_0 ),
        .I1(s_axi_araddr[4]),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(ref_clk_cntr_reg[16]),
        .I4(\test_clk_cntr_synced[0] [16]),
        .I5(s_axi_araddr[2]),
        .O(\s_axi_rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000F800000000)) 
    \s_axi_rdata[16]_i_2 
       (.I0(\test_clk_cntr_synced[1] [16]),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[3]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[4]),
        .O(\s_axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[17]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[17]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [17]),
        .I4(\test_clk_cntr_synced[1] [17]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[18]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[18]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [18]),
        .I4(\test_clk_cntr_synced[1] [18]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[19]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[19]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [19]),
        .I4(\test_clk_cntr_synced[1] [19]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[1]_i_1 
       (.I0(\s_axi_rdata[1]_i_2_n_0 ),
        .I1(\s_axi_rdata[31]_i_4_n_0 ),
        .I2(\test_clk_cntr_synced[0] [1]),
        .I3(ref_clk_cntr_reg[1]),
        .I4(\s_axi_rdata[31]_i_3_n_0 ),
        .I5(\s_axi_rdata[1]_i_3_n_0 ),
        .O(\s_axi_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000F800000000)) 
    \s_axi_rdata[1]_i_2 
       (.I0(\test_clk_cntr_synced[1] [1]),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[3]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[4]),
        .O(\s_axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axi_rdata[1]_i_3 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[4]),
        .I5(done_ref),
        .O(\s_axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[20]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[20]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [20]),
        .I4(\test_clk_cntr_synced[1] [20]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABAAAFAFABABA)) 
    \s_axi_rdata[21]_i_1 
       (.I0(\s_axi_rdata[21]_i_2_n_0 ),
        .I1(s_axi_araddr[4]),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(ref_clk_cntr_reg[21]),
        .I4(\test_clk_cntr_synced[0] [21]),
        .I5(s_axi_araddr[2]),
        .O(\s_axi_rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000F800000000)) 
    \s_axi_rdata[21]_i_2 
       (.I0(\test_clk_cntr_synced[1] [21]),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[3]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[4]),
        .O(\s_axi_rdata[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \s_axi_rdata[21]_i_3 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[3]),
        .O(\s_axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[22]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[22]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [22]),
        .I4(\test_clk_cntr_synced[1] [22]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[23]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[23]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [23]),
        .I4(\test_clk_cntr_synced[1] [23]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[24]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[24]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [24]),
        .I4(\test_clk_cntr_synced[1] [24]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[25]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[25]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [25]),
        .I4(\test_clk_cntr_synced[1] [25]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[26]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[26]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [26]),
        .I4(\test_clk_cntr_synced[1] [26]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[27]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[27]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [27]),
        .I4(\test_clk_cntr_synced[1] [27]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[28]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[28]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [28]),
        .I4(\test_clk_cntr_synced[1] [28]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[29]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[29]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [29]),
        .I4(\test_clk_cntr_synced[1] [29]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[2]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[2]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [2]),
        .I4(\test_clk_cntr_synced[1] [2]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[30]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[30]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [30]),
        .I4(\test_clk_cntr_synced[1] [30]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \s_axi_rdata[31]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[4]),
        .I4(s_axi_arvalid),
        .O(\s_axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[31]_i_2 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[31]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [31]),
        .I4(\test_clk_cntr_synced[1] [31]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \s_axi_rdata[31]_i_3 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .O(\s_axi_rdata[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \s_axi_rdata[31]_i_4 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .O(\s_axi_rdata[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \s_axi_rdata[31]_i_5 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .O(\s_axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[3]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[3]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [3]),
        .I4(\test_clk_cntr_synced[1] [3]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[4]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[4]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [4]),
        .I4(\test_clk_cntr_synced[1] [4]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[5]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[5]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [5]),
        .I4(\test_clk_cntr_synced[1] [5]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[6]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[6]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [6]),
        .I4(\test_clk_cntr_synced[1] [6]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[7]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[7]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [7]),
        .I4(\test_clk_cntr_synced[1] [7]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[8]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[8]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [8]),
        .I4(\test_clk_cntr_synced[1] [8]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[9]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(ref_clk_cntr_reg[9]),
        .I2(\s_axi_rdata[31]_i_4_n_0 ),
        .I3(\test_clk_cntr_synced[0] [9]),
        .I4(\test_clk_cntr_synced[1] [9]),
        .I5(\s_axi_rdata[31]_i_5_n_0 ),
        .O(\s_axi_rdata[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[16]_i_1_n_0 ),
        .Q(s_axi_rdata[16]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[17]_i_1_n_0 ),
        .Q(s_axi_rdata[17]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[18]_i_1_n_0 ),
        .Q(s_axi_rdata[18]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[19]_i_1_n_0 ),
        .Q(s_axi_rdata[19]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[1]_i_1_n_0 ),
        .Q(s_axi_rdata[1]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[20]_i_1_n_0 ),
        .Q(s_axi_rdata[20]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[21]_i_1_n_0 ),
        .Q(s_axi_rdata[21]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[22]_i_1_n_0 ),
        .Q(s_axi_rdata[22]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[23]_i_1_n_0 ),
        .Q(s_axi_rdata[23]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[24]_i_1_n_0 ),
        .Q(s_axi_rdata[24]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[25]_i_1_n_0 ),
        .Q(s_axi_rdata[25]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[26]_i_1_n_0 ),
        .Q(s_axi_rdata[26]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[27]_i_1_n_0 ),
        .Q(s_axi_rdata[27]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[28]_i_1_n_0 ),
        .Q(s_axi_rdata[28]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[29]_i_1_n_0 ),
        .Q(s_axi_rdata[29]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[30]_i_1_n_0 ),
        .Q(s_axi_rdata[30]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[31]_i_2_n_0 ),
        .Q(s_axi_rdata[31]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_arvalid),
        .D(\s_axi_rdata[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]),
        .S(\s_axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF5FFFFFF40400000)) 
    s_axi_rvalid_i_1
       (.I0(state_read[1]),
        .I1(s_axi_arvalid),
        .I2(state_read[0]),
        .I3(s_axi_rready),
        .I4(s_axi_aresetn),
        .I5(s_axi_rvalid),
        .O(s_axi_rvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFDFDF02000000)) 
    s_axi_wready_i_1
       (.I0(s_axi_aresetn),
        .I1(state_write[0]),
        .I2(\state_write_reg_n_0_[2] ),
        .I3(s_axi_wvalid),
        .I4(state_write[1]),
        .I5(s_axi_wready),
        .O(s_axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wready_i_1_n_0),
        .Q(s_axi_wready),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h22C0)) 
    \state_read[1]_i_1 
       (.I0(s_axi_rready),
        .I1(state_read[0]),
        .I2(s_axi_arvalid),
        .I3(state_read[1]),
        .O(\state_read[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state_read[1]_i_2 
       (.I0(state_read[1]),
        .O(p_1_in__0));
  (* FSM_ENCODED_STATES = "IDLE_READ:01,WAIT_FOR_RVALID_READ:10," *) 
  FDSE #(
    .INIT(1'b1)) 
    \state_read_reg[0] 
       (.C(s_axi_aclk),
        .CE(\state_read[1]_i_1_n_0 ),
        .D(state_read[1]),
        .Q(state_read[0]),
        .S(\state_write[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE_READ:01,WAIT_FOR_RVALID_READ:10," *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_read_reg[1] 
       (.C(s_axi_aclk),
        .CE(\state_read[1]_i_1_n_0 ),
        .D(p_1_in__0),
        .Q(state_read[1]),
        .R(\state_write[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state_write[1]_i_1 
       (.I0(state_write[1]),
        .I1(\state_write_reg_n_0_[2] ),
        .O(p_1_in));
  LUT1 #(
    .INIT(2'h1)) 
    \state_write[2]_i_1 
       (.I0(s_axi_aresetn),
        .O(\state_write[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0338030800380008)) 
    \state_write[2]_i_2 
       (.I0(s_axi_awvalid),
        .I1(state_write[0]),
        .I2(state_write[1]),
        .I3(\state_write_reg_n_0_[2] ),
        .I4(s_axi_wvalid),
        .I5(s_axi_bready),
        .O(\state_write[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE_WRITE:001,WAIT_FOR_WVALID_WRITE:010,WAIT_FOR_BREADY_WRITE:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \state_write_reg[0] 
       (.C(s_axi_aclk),
        .CE(\state_write[2]_i_2_n_0 ),
        .D(\state_write_reg_n_0_[2] ),
        .Q(state_write[0]),
        .S(\state_write[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE_WRITE:001,WAIT_FOR_WVALID_WRITE:010,WAIT_FOR_BREADY_WRITE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_write_reg[1] 
       (.C(s_axi_aclk),
        .CE(\state_write[2]_i_2_n_0 ),
        .D(p_1_in),
        .Q(state_write[1]),
        .R(\state_write[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE_WRITE:001,WAIT_FOR_WVALID_WRITE:010,WAIT_FOR_BREADY_WRITE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_write_reg[2] 
       (.C(s_axi_aclk),
        .CE(\state_write[2]_i_2_n_0 ),
        .D(state_write[1]),
        .Q(\state_write_reg_n_0_[2] ),
        .R(\state_write[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h888F8880)) 
    user_rst_i_1
       (.I0(user_rst_i_2_n_0),
        .I1(s_axi_wready),
        .I2(user_rst_i_3_n_0),
        .I3(clear_user_rst),
        .I4(user_rst_reg_n_0),
        .O(user_rst_i_1_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    user_rst_i_2
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awaddr[3]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_wdata[0]),
        .I5(s_axi_wvalid),
        .O(user_rst_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    user_rst_i_3
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_wready),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_wvalid),
        .O(user_rst_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    user_rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(user_rst_i_1_n_0),
        .Q(user_rst_reg_n_0),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* WIDTH = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [0:0]src_in;
  input dest_clk;
  output [0:0]dest_out;

  wire async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[2] ;

  assign async_path_bit = src_in[0];
  assign dest_out[0] = \syncstages_ff[2] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit),
        .Q(\syncstages_ff[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] ),
        .Q(\syncstages_ff[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] ),
        .Q(\syncstages_ff[2] ),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [0:0]src_in;
  input dest_clk;
  output [0:0]dest_out;

  wire async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[2] ;

  assign async_path_bit = src_in[0];
  assign dest_out[0] = \syncstages_ff[2] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit),
        .Q(\syncstages_ff[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] ),
        .Q(\syncstages_ff[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] ),
        .Q(\syncstages_ff[2] ),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "32" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [31:0]src_in;
  input dest_clk;
  output [31:0]dest_out;

  wire [31:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [31:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [31:0]\syncstages_ff[1] ;

  assign async_path_bit = src_in[31:0];
  assign dest_out[31:0] = \syncstages_ff[1] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[10]),
        .Q(\syncstages_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[11]),
        .Q(\syncstages_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[12]),
        .Q(\syncstages_ff[0] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[13]),
        .Q(\syncstages_ff[0] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[14]),
        .Q(\syncstages_ff[0] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[15]),
        .Q(\syncstages_ff[0] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[16]),
        .Q(\syncstages_ff[0] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[17]),
        .Q(\syncstages_ff[0] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[18]),
        .Q(\syncstages_ff[0] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[19]),
        .Q(\syncstages_ff[0] [19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[20]),
        .Q(\syncstages_ff[0] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[21]),
        .Q(\syncstages_ff[0] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[22]),
        .Q(\syncstages_ff[0] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[23]),
        .Q(\syncstages_ff[0] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[24]),
        .Q(\syncstages_ff[0] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[25]),
        .Q(\syncstages_ff[0] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[26]),
        .Q(\syncstages_ff[0] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[27]),
        .Q(\syncstages_ff[0] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[28]),
        .Q(\syncstages_ff[0] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[29]),
        .Q(\syncstages_ff[0] [29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[30]),
        .Q(\syncstages_ff[0] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[31]),
        .Q(\syncstages_ff[0] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[3]),
        .Q(\syncstages_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[4]),
        .Q(\syncstages_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[5]),
        .Q(\syncstages_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[6]),
        .Q(\syncstages_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[7]),
        .Q(\syncstages_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[8]),
        .Q(\syncstages_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[9]),
        .Q(\syncstages_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [10]),
        .Q(\syncstages_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [11]),
        .Q(\syncstages_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [12]),
        .Q(\syncstages_ff[1] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [13]),
        .Q(\syncstages_ff[1] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [14]),
        .Q(\syncstages_ff[1] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [15]),
        .Q(\syncstages_ff[1] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [16]),
        .Q(\syncstages_ff[1] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [17]),
        .Q(\syncstages_ff[1] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [18]),
        .Q(\syncstages_ff[1] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [19]),
        .Q(\syncstages_ff[1] [19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [20]),
        .Q(\syncstages_ff[1] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [21]),
        .Q(\syncstages_ff[1] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [22]),
        .Q(\syncstages_ff[1] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [23]),
        .Q(\syncstages_ff[1] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [24]),
        .Q(\syncstages_ff[1] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [25]),
        .Q(\syncstages_ff[1] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [26]),
        .Q(\syncstages_ff[1] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [27]),
        .Q(\syncstages_ff[1] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [28]),
        .Q(\syncstages_ff[1] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [29]),
        .Q(\syncstages_ff[1] [29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [30]),
        .Q(\syncstages_ff[1] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [31]),
        .Q(\syncstages_ff[1] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [3]),
        .Q(\syncstages_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [4]),
        .Q(\syncstages_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [5]),
        .Q(\syncstages_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [6]),
        .Q(\syncstages_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [7]),
        .Q(\syncstages_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [8]),
        .Q(\syncstages_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [9]),
        .Q(\syncstages_ff[1] [9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "32" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [31:0]src_in;
  input dest_clk;
  output [31:0]dest_out;

  wire [31:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [31:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [31:0]\syncstages_ff[1] ;

  assign async_path_bit = src_in[31:0];
  assign dest_out[31:0] = \syncstages_ff[1] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[10]),
        .Q(\syncstages_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[11]),
        .Q(\syncstages_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[12]),
        .Q(\syncstages_ff[0] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[13]),
        .Q(\syncstages_ff[0] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[14]),
        .Q(\syncstages_ff[0] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[15]),
        .Q(\syncstages_ff[0] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[16]),
        .Q(\syncstages_ff[0] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[17]),
        .Q(\syncstages_ff[0] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[18]),
        .Q(\syncstages_ff[0] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[19]),
        .Q(\syncstages_ff[0] [19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[20]),
        .Q(\syncstages_ff[0] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[21]),
        .Q(\syncstages_ff[0] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[22]),
        .Q(\syncstages_ff[0] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[23]),
        .Q(\syncstages_ff[0] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[24]),
        .Q(\syncstages_ff[0] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[25]),
        .Q(\syncstages_ff[0] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[26]),
        .Q(\syncstages_ff[0] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[27]),
        .Q(\syncstages_ff[0] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[28]),
        .Q(\syncstages_ff[0] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[29]),
        .Q(\syncstages_ff[0] [29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[30]),
        .Q(\syncstages_ff[0] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[31]),
        .Q(\syncstages_ff[0] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[3]),
        .Q(\syncstages_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[4]),
        .Q(\syncstages_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[5]),
        .Q(\syncstages_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[6]),
        .Q(\syncstages_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[7]),
        .Q(\syncstages_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[8]),
        .Q(\syncstages_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[9]),
        .Q(\syncstages_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [10]),
        .Q(\syncstages_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [11]),
        .Q(\syncstages_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [12]),
        .Q(\syncstages_ff[1] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [13]),
        .Q(\syncstages_ff[1] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [14]),
        .Q(\syncstages_ff[1] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [15]),
        .Q(\syncstages_ff[1] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [16]),
        .Q(\syncstages_ff[1] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [17]),
        .Q(\syncstages_ff[1] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [18]),
        .Q(\syncstages_ff[1] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [19]),
        .Q(\syncstages_ff[1] [19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [20]),
        .Q(\syncstages_ff[1] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [21]),
        .Q(\syncstages_ff[1] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [22]),
        .Q(\syncstages_ff[1] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [23]),
        .Q(\syncstages_ff[1] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [24]),
        .Q(\syncstages_ff[1] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [25]),
        .Q(\syncstages_ff[1] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [26]),
        .Q(\syncstages_ff[1] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [27]),
        .Q(\syncstages_ff[1] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [28]),
        .Q(\syncstages_ff[1] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [29]),
        .Q(\syncstages_ff[1] [29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [30]),
        .Q(\syncstages_ff[1] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [31]),
        .Q(\syncstages_ff[1] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [3]),
        .Q(\syncstages_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [4]),
        .Q(\syncstages_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [5]),
        .Q(\syncstages_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [6]),
        .Q(\syncstages_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [7]),
        .Q(\syncstages_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [8]),
        .Q(\syncstages_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [9]),
        .Q(\syncstages_ff[1] [9]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [2:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[1]),
        .PRE(src_arst),
        .Q(arststages_ff[2]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [2:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[1]),
        .PRE(src_arst),
        .Q(arststages_ff[2]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
