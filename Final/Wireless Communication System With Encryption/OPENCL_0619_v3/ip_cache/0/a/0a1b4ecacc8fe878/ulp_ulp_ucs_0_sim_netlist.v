// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Jun 19 20:38:19 2022
// Host        : ic22 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_ulp_ucs_0_sim_netlist.v
// Design      : ulp_ulp_ucs_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "ulp_ulp_ucs_0.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0
   (aclk_ctrl,
    aclk_pcie,
    aresetn_ctrl,
    aresetn_ctrl_slr0,
    aresetn_ctrl_slr1,
    aresetn_kernel2_slr0,
    aresetn_kernel2_slr1,
    aresetn_kernel_slr0,
    aresetn_kernel_slr1,
    aresetn_pcie,
    aresetn_pcie_slr0,
    aresetn_pcie_slr1,
    clk_kernel,
    clk_kernel2,
    freerun_refclk,
    hbm_aclk,
    hbm_aresetn,
    hbm_refclk,
    s_axi_ctrl_mgmt_araddr,
    s_axi_ctrl_mgmt_arprot,
    s_axi_ctrl_mgmt_arready,
    s_axi_ctrl_mgmt_arvalid,
    s_axi_ctrl_mgmt_awaddr,
    s_axi_ctrl_mgmt_awprot,
    s_axi_ctrl_mgmt_awready,
    s_axi_ctrl_mgmt_awvalid,
    s_axi_ctrl_mgmt_bready,
    s_axi_ctrl_mgmt_bresp,
    s_axi_ctrl_mgmt_bvalid,
    s_axi_ctrl_mgmt_rdata,
    s_axi_ctrl_mgmt_rready,
    s_axi_ctrl_mgmt_rresp,
    s_axi_ctrl_mgmt_rvalid,
    s_axi_ctrl_mgmt_wdata,
    s_axi_ctrl_mgmt_wready,
    s_axi_ctrl_mgmt_wstrb,
    s_axi_ctrl_mgmt_wvalid,
    shutdown_clocks);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_CTRL CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_CTRL, ASSOCIATED_BUSIF s_axi_ctrl_mgmt, ASSOCIATED_CLKEN CE, ASSOCIATED_RESET aresetn_ctrl:aresetn_ctrl_slr0:aresetn_ctrl_slr1, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input aclk_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_PCIE CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_PCIE, ASSOCIATED_RESET aresetn_pcie:aresetn_pcie_slr0:aresetn_pcie_slr1, CLK_DOMAIN cd_pcie_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input aclk_pcie;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL, INSERT_VIP 0, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input aresetn_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL_SLR0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_ctrl_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL_SLR1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_ctrl_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL2_SLR0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL2_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel2_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL2_SLR1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL2_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel2_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_SLR0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_SLR1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_KERNEL_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_kernel_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_PCIE, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_pcie;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE_SLR0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_PCIE_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_pcie_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE_SLR1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_PCIE_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_pcie_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_KERNEL CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_KERNEL, ASSOCIATED_RESET aresetn_kernel_slr0:aresetn_kernel_slr1, CLK_DOMAIN cd_kernel_00, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_kernel;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_KERNEL2 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_KERNEL2, ASSOCIATED_RESET aresetn_kernel2_slr0:aresetn_kernel2_slr1, CLK_DOMAIN cd_kernel_01, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_kernel2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FREERUN_REFCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FREERUN_REFCLK, CLK_DOMAIN cd_freerun_ref_00, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input freerun_refclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HBM_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HBM_ACLK, ASSOCIATED_RESET hbm_aresetn, CLK_DOMAIN cd_hbm, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output hbm_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.HBM_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.HBM_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]hbm_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HBM_REFCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HBM_REFCLK, CLK_DOMAIN cd_freerun_ref_00, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input hbm_refclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_mgmt, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [15:0]s_axi_ctrl_mgmt_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARPROT" *) input [2:0]s_axi_ctrl_mgmt_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARREADY" *) output s_axi_ctrl_mgmt_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARVALID" *) input s_axi_ctrl_mgmt_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWADDR" *) input [15:0]s_axi_ctrl_mgmt_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWPROT" *) input [2:0]s_axi_ctrl_mgmt_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWREADY" *) output s_axi_ctrl_mgmt_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWVALID" *) input s_axi_ctrl_mgmt_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BREADY" *) input s_axi_ctrl_mgmt_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BRESP" *) output [1:0]s_axi_ctrl_mgmt_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BVALID" *) output s_axi_ctrl_mgmt_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RDATA" *) output [31:0]s_axi_ctrl_mgmt_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RREADY" *) input s_axi_ctrl_mgmt_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RRESP" *) output [1:0]s_axi_ctrl_mgmt_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RVALID" *) output s_axi_ctrl_mgmt_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WDATA" *) input [31:0]s_axi_ctrl_mgmt_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WREADY" *) output s_axi_ctrl_mgmt_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WSTRB" *) input [3:0]s_axi_ctrl_mgmt_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WVALID" *) input s_axi_ctrl_mgmt_wvalid;
  input shutdown_clocks;

  wire [13:0]\^clock_throttling_avg ;
  wire \^gapping_demand_toggle ;
  wire \^gapping_demand_update ;
  wire [7:0]\^gpio_gapping_demand ;
  wire aclk_ctrl;
  wire aclk_pcie;
  wire [15:0]adder_check_gpio_sum;
  wire aresetn_ctrl;
  wire [0:0]aresetn_ctrl_slr0;
  wire [0:0]aresetn_ctrl_slr1;
  wire aresetn_freerun_refclk;
  wire aresetn_kernel;
  wire aresetn_kernel2;
  wire aresetn_kernel2_async;
  wire [0:0]aresetn_kernel2_slr0;
  wire [0:0]aresetn_kernel2_slr1;
  wire aresetn_kernel_async;
  wire [0:0]aresetn_kernel_slr0;
  wire [0:0]aresetn_kernel_slr1;
  wire aresetn_pcie;
  wire [0:0]aresetn_pcie_slr0;
  wire [0:0]aresetn_pcie_slr1;
  wire [4:0]axi_ic_ctrl_mgmt_0_M00_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_ARVALID;
  wire [4:0]axi_ic_ctrl_mgmt_0_M00_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M00_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M00_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M00_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M00_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_0_M00_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_0_M00_AXI_WVALID;
  wire [8:0]axi_ic_ctrl_mgmt_0_M01_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_0_M01_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_0_M01_AXI_ARVALID;
  wire [8:0]axi_ic_ctrl_mgmt_0_M01_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_0_M01_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_0_M01_AXI_AWVALID;
  wire [1:0]axi_ic_ctrl_mgmt_0_M01_AXI_BRESP;
  wire [31:0]axi_ic_ctrl_mgmt_0_M01_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_0_M01_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M01_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_0_M01_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M01_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_0_M01_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_0_M01_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_0_M01_AXI_WVALID;
  wire [8:0]axi_ic_ctrl_mgmt_0_M02_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_ARVALID;
  wire [8:0]axi_ic_ctrl_mgmt_0_M02_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M02_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M02_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M02_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M02_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_0_M02_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_0_M02_AXI_WVALID;
  wire [10:0]axi_ic_ctrl_mgmt_0_M03_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_ARVALID;
  wire [10:0]axi_ic_ctrl_mgmt_0_M03_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M03_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M03_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M03_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M03_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_0_M03_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_0_M03_AXI_WVALID;
  wire [10:0]axi_ic_ctrl_mgmt_0_M04_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_ARVALID;
  wire [10:0]axi_ic_ctrl_mgmt_0_M04_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M04_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M04_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M04_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M04_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_0_M04_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_0_M04_AXI_WVALID;
  wire [15:0]axi_ic_ctrl_mgmt_0_M05_AXI_ARADDR;
  wire [2:0]axi_ic_ctrl_mgmt_0_M05_AXI_ARPROT;
  wire axi_ic_ctrl_mgmt_0_M05_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_0_M05_AXI_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_0_M05_AXI_AWADDR;
  wire [2:0]axi_ic_ctrl_mgmt_0_M05_AXI_AWPROT;
  wire axi_ic_ctrl_mgmt_0_M05_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_0_M05_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_0_M05_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M05_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_0_M05_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M05_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_0_M05_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M05_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_0_M05_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M05_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_0_M05_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_0_M05_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_0_M05_AXI_WVALID;
  wire [10:0]axi_ic_ctrl_mgmt_0_M06_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_ARVALID;
  wire [10:0]axi_ic_ctrl_mgmt_0_M06_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M06_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M06_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_0_M06_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_0_M06_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_0_M06_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_0_M06_AXI_WVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_M00_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_M00_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_M00_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_M00_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_M00_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_M00_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_1_M00_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_1_M00_AXI_WVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_M01_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_M01_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_M01_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_M01_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_M01_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_M01_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_1_M01_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_1_M01_AXI_WVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_M02_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_M02_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_M02_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_M02_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_M02_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_M02_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_1_M02_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_1_M02_AXI_WVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_M03_AXI_ARADDR;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_ARREADY;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_ARVALID;
  wire [15:0]axi_ic_ctrl_mgmt_1_M03_AXI_AWADDR;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_AWREADY;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_AWVALID;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_BREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_M03_AXI_BRESP;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_BVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_M03_AXI_RDATA;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_RREADY;
  wire [1:0]axi_ic_ctrl_mgmt_1_M03_AXI_RRESP;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_RVALID;
  wire [31:0]axi_ic_ctrl_mgmt_1_M03_AXI_WDATA;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_WREADY;
  wire [3:0]axi_ic_ctrl_mgmt_1_M03_AXI_WSTRB;
  wire axi_ic_ctrl_mgmt_1_M03_AXI_WVALID;
  wire clk_hbm_adapt_in;
  wire clk_hbm_locked;
  wire clk_kernel;
  wire clk_kernel2;
  wire clk_kernel2_cont;
  wire clk_kernel2_locked;
  wire clk_kernel2_unbuffered;
  wire clk_kernel_cont;
  wire clk_kernel_locked;
  wire clk_kernel_unbuffered;
  wire clock_throttling_kernel2_clk_out;
  wire clock_throttling_kernel2_clk_out_cont;
  wire clock_throttling_kernel_clk_out;
  wire clock_throttling_kernel_clk_out_cont;
  wire freerun_refclk;
  wire gapping_demand_bready;
  wire gapping_demand_bvalid;
  wire [31:0]gpio_ucs_control_status_gpio2;
  wire [29:0]gpio_ucs_status_concat_dout;
  wire hbm_aclk;
  wire [0:0]hbm_aresetn;
  wire hbm_aresetn_int;
  wire hbm_refclk;
  wire or_shutdown_clocks_res;
  wire reduce_check_gpio_res;
  wire [15:0]s_axi_ctrl_mgmt_araddr;
  wire [2:0]s_axi_ctrl_mgmt_arprot;
  wire s_axi_ctrl_mgmt_arready;
  wire s_axi_ctrl_mgmt_arvalid;
  wire [15:0]s_axi_ctrl_mgmt_awaddr;
  wire [2:0]s_axi_ctrl_mgmt_awprot;
  wire s_axi_ctrl_mgmt_awready;
  wire s_axi_ctrl_mgmt_awvalid;
  wire s_axi_ctrl_mgmt_bready;
  wire [1:0]s_axi_ctrl_mgmt_bresp;
  wire s_axi_ctrl_mgmt_bvalid;
  wire [31:0]s_axi_ctrl_mgmt_rdata;
  wire s_axi_ctrl_mgmt_rready;
  wire [1:0]s_axi_ctrl_mgmt_rresp;
  wire s_axi_ctrl_mgmt_rvalid;
  wire [15:0]s_axi_ctrl_mgmt_vip_ARADDR;
  wire [2:0]s_axi_ctrl_mgmt_vip_ARPROT;
  wire s_axi_ctrl_mgmt_vip_ARREADY;
  wire s_axi_ctrl_mgmt_vip_ARVALID;
  wire [15:0]s_axi_ctrl_mgmt_vip_AWADDR;
  wire [2:0]s_axi_ctrl_mgmt_vip_AWPROT;
  wire s_axi_ctrl_mgmt_vip_AWREADY;
  wire s_axi_ctrl_mgmt_vip_AWVALID;
  wire s_axi_ctrl_mgmt_vip_BREADY;
  wire [1:0]s_axi_ctrl_mgmt_vip_BRESP;
  wire s_axi_ctrl_mgmt_vip_BVALID;
  wire [31:0]s_axi_ctrl_mgmt_vip_RDATA;
  wire s_axi_ctrl_mgmt_vip_RREADY;
  wire [1:0]s_axi_ctrl_mgmt_vip_RRESP;
  wire s_axi_ctrl_mgmt_vip_RVALID;
  wire [31:0]s_axi_ctrl_mgmt_vip_WDATA;
  wire s_axi_ctrl_mgmt_vip_WREADY;
  wire [3:0]s_axi_ctrl_mgmt_vip_WSTRB;
  wire s_axi_ctrl_mgmt_vip_WVALID;
  wire [31:0]s_axi_ctrl_mgmt_wdata;
  wire s_axi_ctrl_mgmt_wready;
  wire [3:0]s_axi_ctrl_mgmt_wstrb;
  wire s_axi_ctrl_mgmt_wvalid;
  wire shutdown_clocks;
  wire shutdown_clocks_latched;
  wire [15:0]slice_check_gpio_dout;
  wire startup_done;
  wire [15:5]NLW_axi_ic_ctrl_mgmt_0_M00_AXI_araddr_UNCONNECTED;
  wire [15:5]NLW_axi_ic_ctrl_mgmt_0_M00_AXI_awaddr_UNCONNECTED;
  wire [15:9]NLW_axi_ic_ctrl_mgmt_0_M01_AXI_araddr_UNCONNECTED;
  wire [15:9]NLW_axi_ic_ctrl_mgmt_0_M01_AXI_awaddr_UNCONNECTED;
  wire [15:9]NLW_axi_ic_ctrl_mgmt_0_M02_AXI_araddr_UNCONNECTED;
  wire [15:9]NLW_axi_ic_ctrl_mgmt_0_M02_AXI_awaddr_UNCONNECTED;
  wire [15:11]NLW_axi_ic_ctrl_mgmt_0_M03_AXI_araddr_UNCONNECTED;
  wire [15:11]NLW_axi_ic_ctrl_mgmt_0_M03_AXI_awaddr_UNCONNECTED;
  wire [15:11]NLW_axi_ic_ctrl_mgmt_0_M04_AXI_araddr_UNCONNECTED;
  wire [15:11]NLW_axi_ic_ctrl_mgmt_0_M04_AXI_awaddr_UNCONNECTED;
  wire [15:11]NLW_axi_ic_ctrl_mgmt_0_M06_AXI_araddr_UNCONNECTED;
  wire [15:11]NLW_axi_ic_ctrl_mgmt_0_M06_AXI_awaddr_UNCONNECTED;
  wire [31:1]NLW_gpio_ucs_status_concat_dout_UNCONNECTED;
  wire NLW_psreset_freerun_refclk_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_freerun_refclk_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_freerun_refclk_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psreset_freerun_refclk_peripheral_reset_UNCONNECTED;
  wire NLW_psreset_hbm_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_hbm_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_hbm_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psreset_hbm_peripheral_reset_UNCONNECTED;
  wire NLW_psreset_kernel_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_kernel_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_kernel_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psreset_kernel_peripheral_reset_UNCONNECTED;
  wire NLW_psreset_kernel2_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_kernel2_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_kernel2_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psreset_kernel2_peripheral_reset_UNCONNECTED;

  (* X_CORE_INFO = "c_addsub_v12_0_14,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_adder_check_gpio_0 adder_check_gpio
       (.A(slice_check_gpio_dout),
        .S(adder_check_gpio_sum));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_0_0 axi_ic_ctrl_mgmt_0
       (.ACLK(aclk_ctrl),
        .ARESETN(aresetn_ctrl),
        .M00_ACLK(1'b0),
        .M00_ARESETN(1'b0),
        .M00_AXI_araddr({NLW_axi_ic_ctrl_mgmt_0_M00_AXI_araddr_UNCONNECTED[15:5],axi_ic_ctrl_mgmt_0_M00_AXI_ARADDR}),
        .M00_AXI_arready(axi_ic_ctrl_mgmt_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_ic_ctrl_mgmt_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr({NLW_axi_ic_ctrl_mgmt_0_M00_AXI_awaddr_UNCONNECTED[15:5],axi_ic_ctrl_mgmt_0_M00_AXI_AWADDR}),
        .M00_AXI_awready(axi_ic_ctrl_mgmt_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_ic_ctrl_mgmt_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_ic_ctrl_mgmt_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_ic_ctrl_mgmt_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_ic_ctrl_mgmt_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_ic_ctrl_mgmt_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_ic_ctrl_mgmt_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_ic_ctrl_mgmt_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_ic_ctrl_mgmt_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_ic_ctrl_mgmt_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_ic_ctrl_mgmt_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_ic_ctrl_mgmt_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_ic_ctrl_mgmt_0_M00_AXI_WVALID),
        .M01_ACLK(1'b0),
        .M01_ARESETN(1'b0),
        .M01_AXI_araddr({NLW_axi_ic_ctrl_mgmt_0_M01_AXI_araddr_UNCONNECTED[15:9],axi_ic_ctrl_mgmt_0_M01_AXI_ARADDR}),
        .M01_AXI_arready(axi_ic_ctrl_mgmt_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_ic_ctrl_mgmt_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr({NLW_axi_ic_ctrl_mgmt_0_M01_AXI_awaddr_UNCONNECTED[15:9],axi_ic_ctrl_mgmt_0_M01_AXI_AWADDR}),
        .M01_AXI_awready(axi_ic_ctrl_mgmt_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_ic_ctrl_mgmt_0_M01_AXI_AWVALID),
        .M01_AXI_bready(gapping_demand_bready),
        .M01_AXI_bresp(axi_ic_ctrl_mgmt_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(gapping_demand_bvalid),
        .M01_AXI_rdata(axi_ic_ctrl_mgmt_0_M01_AXI_RDATA),
        .M01_AXI_rready(axi_ic_ctrl_mgmt_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_ic_ctrl_mgmt_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_ic_ctrl_mgmt_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_ic_ctrl_mgmt_0_M01_AXI_WDATA),
        .M01_AXI_wready(axi_ic_ctrl_mgmt_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_ic_ctrl_mgmt_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_ic_ctrl_mgmt_0_M01_AXI_WVALID),
        .M02_ACLK(1'b0),
        .M02_ARESETN(1'b0),
        .M02_AXI_araddr({NLW_axi_ic_ctrl_mgmt_0_M02_AXI_araddr_UNCONNECTED[15:9],axi_ic_ctrl_mgmt_0_M02_AXI_ARADDR}),
        .M02_AXI_arready(axi_ic_ctrl_mgmt_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_ic_ctrl_mgmt_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr({NLW_axi_ic_ctrl_mgmt_0_M02_AXI_awaddr_UNCONNECTED[15:9],axi_ic_ctrl_mgmt_0_M02_AXI_AWADDR}),
        .M02_AXI_awready(axi_ic_ctrl_mgmt_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_ic_ctrl_mgmt_0_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_ic_ctrl_mgmt_0_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_ic_ctrl_mgmt_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_ic_ctrl_mgmt_0_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_ic_ctrl_mgmt_0_M02_AXI_RDATA),
        .M02_AXI_rready(axi_ic_ctrl_mgmt_0_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_ic_ctrl_mgmt_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_ic_ctrl_mgmt_0_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_ic_ctrl_mgmt_0_M02_AXI_WDATA),
        .M02_AXI_wready(axi_ic_ctrl_mgmt_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_ic_ctrl_mgmt_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_ic_ctrl_mgmt_0_M02_AXI_WVALID),
        .M03_ACLK(1'b0),
        .M03_ARESETN(1'b0),
        .M03_AXI_araddr({NLW_axi_ic_ctrl_mgmt_0_M03_AXI_araddr_UNCONNECTED[15:11],axi_ic_ctrl_mgmt_0_M03_AXI_ARADDR}),
        .M03_AXI_arready(axi_ic_ctrl_mgmt_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_ic_ctrl_mgmt_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr({NLW_axi_ic_ctrl_mgmt_0_M03_AXI_awaddr_UNCONNECTED[15:11],axi_ic_ctrl_mgmt_0_M03_AXI_AWADDR}),
        .M03_AXI_awready(axi_ic_ctrl_mgmt_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_ic_ctrl_mgmt_0_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_ic_ctrl_mgmt_0_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_ic_ctrl_mgmt_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_ic_ctrl_mgmt_0_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_ic_ctrl_mgmt_0_M03_AXI_RDATA),
        .M03_AXI_rready(axi_ic_ctrl_mgmt_0_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_ic_ctrl_mgmt_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_ic_ctrl_mgmt_0_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_ic_ctrl_mgmt_0_M03_AXI_WDATA),
        .M03_AXI_wready(axi_ic_ctrl_mgmt_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_ic_ctrl_mgmt_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_ic_ctrl_mgmt_0_M03_AXI_WVALID),
        .M04_ACLK(1'b0),
        .M04_ARESETN(1'b0),
        .M04_AXI_araddr({NLW_axi_ic_ctrl_mgmt_0_M04_AXI_araddr_UNCONNECTED[15:11],axi_ic_ctrl_mgmt_0_M04_AXI_ARADDR}),
        .M04_AXI_arready(axi_ic_ctrl_mgmt_0_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_ic_ctrl_mgmt_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr({NLW_axi_ic_ctrl_mgmt_0_M04_AXI_awaddr_UNCONNECTED[15:11],axi_ic_ctrl_mgmt_0_M04_AXI_AWADDR}),
        .M04_AXI_awready(axi_ic_ctrl_mgmt_0_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_ic_ctrl_mgmt_0_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_ic_ctrl_mgmt_0_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_ic_ctrl_mgmt_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_ic_ctrl_mgmt_0_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_ic_ctrl_mgmt_0_M04_AXI_RDATA),
        .M04_AXI_rready(axi_ic_ctrl_mgmt_0_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_ic_ctrl_mgmt_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_ic_ctrl_mgmt_0_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_ic_ctrl_mgmt_0_M04_AXI_WDATA),
        .M04_AXI_wready(axi_ic_ctrl_mgmt_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_ic_ctrl_mgmt_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_ic_ctrl_mgmt_0_M04_AXI_WVALID),
        .M05_ACLK(1'b0),
        .M05_ARESETN(1'b0),
        .M05_AXI_araddr(axi_ic_ctrl_mgmt_0_M05_AXI_ARADDR),
        .M05_AXI_arprot(axi_ic_ctrl_mgmt_0_M05_AXI_ARPROT),
        .M05_AXI_arready(axi_ic_ctrl_mgmt_0_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_ic_ctrl_mgmt_0_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_ic_ctrl_mgmt_0_M05_AXI_AWADDR),
        .M05_AXI_awprot(axi_ic_ctrl_mgmt_0_M05_AXI_AWPROT),
        .M05_AXI_awready(axi_ic_ctrl_mgmt_0_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_ic_ctrl_mgmt_0_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_ic_ctrl_mgmt_0_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_ic_ctrl_mgmt_0_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_ic_ctrl_mgmt_0_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_ic_ctrl_mgmt_0_M05_AXI_RDATA),
        .M05_AXI_rready(axi_ic_ctrl_mgmt_0_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_ic_ctrl_mgmt_0_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_ic_ctrl_mgmt_0_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_ic_ctrl_mgmt_0_M05_AXI_WDATA),
        .M05_AXI_wready(axi_ic_ctrl_mgmt_0_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_ic_ctrl_mgmt_0_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_ic_ctrl_mgmt_0_M05_AXI_WVALID),
        .M06_ACLK(1'b0),
        .M06_ARESETN(1'b0),
        .M06_AXI_araddr({NLW_axi_ic_ctrl_mgmt_0_M06_AXI_araddr_UNCONNECTED[15:11],axi_ic_ctrl_mgmt_0_M06_AXI_ARADDR}),
        .M06_AXI_arready(axi_ic_ctrl_mgmt_0_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_ic_ctrl_mgmt_0_M06_AXI_ARVALID),
        .M06_AXI_awaddr({NLW_axi_ic_ctrl_mgmt_0_M06_AXI_awaddr_UNCONNECTED[15:11],axi_ic_ctrl_mgmt_0_M06_AXI_AWADDR}),
        .M06_AXI_awready(axi_ic_ctrl_mgmt_0_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_ic_ctrl_mgmt_0_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_ic_ctrl_mgmt_0_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_ic_ctrl_mgmt_0_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_ic_ctrl_mgmt_0_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_ic_ctrl_mgmt_0_M06_AXI_RDATA),
        .M06_AXI_rready(axi_ic_ctrl_mgmt_0_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_ic_ctrl_mgmt_0_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_ic_ctrl_mgmt_0_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_ic_ctrl_mgmt_0_M06_AXI_WDATA),
        .M06_AXI_wready(axi_ic_ctrl_mgmt_0_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_ic_ctrl_mgmt_0_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_ic_ctrl_mgmt_0_M06_AXI_WVALID),
        .S00_ACLK(1'b0),
        .S00_ARESETN(1'b0),
        .S00_AXI_araddr(s_axi_ctrl_mgmt_vip_ARADDR),
        .S00_AXI_arprot(s_axi_ctrl_mgmt_vip_ARPROT),
        .S00_AXI_arready(s_axi_ctrl_mgmt_vip_ARREADY),
        .S00_AXI_arvalid(s_axi_ctrl_mgmt_vip_ARVALID),
        .S00_AXI_awaddr(s_axi_ctrl_mgmt_vip_AWADDR),
        .S00_AXI_awprot(s_axi_ctrl_mgmt_vip_AWPROT),
        .S00_AXI_awready(s_axi_ctrl_mgmt_vip_AWREADY),
        .S00_AXI_awvalid(s_axi_ctrl_mgmt_vip_AWVALID),
        .S00_AXI_bready(s_axi_ctrl_mgmt_vip_BREADY),
        .S00_AXI_bresp(s_axi_ctrl_mgmt_vip_BRESP),
        .S00_AXI_bvalid(s_axi_ctrl_mgmt_vip_BVALID),
        .S00_AXI_rdata(s_axi_ctrl_mgmt_vip_RDATA),
        .S00_AXI_rready(s_axi_ctrl_mgmt_vip_RREADY),
        .S00_AXI_rresp(s_axi_ctrl_mgmt_vip_RRESP),
        .S00_AXI_rvalid(s_axi_ctrl_mgmt_vip_RVALID),
        .S00_AXI_wdata(s_axi_ctrl_mgmt_vip_WDATA),
        .S00_AXI_wready(s_axi_ctrl_mgmt_vip_WREADY),
        .S00_AXI_wstrb(s_axi_ctrl_mgmt_vip_WSTRB),
        .S00_AXI_wvalid(s_axi_ctrl_mgmt_vip_WVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_1_0 axi_ic_ctrl_mgmt_1
       (.ACLK(freerun_refclk),
        .ARESETN(aresetn_freerun_refclk),
        .M00_ACLK(1'b0),
        .M00_ARESETN(1'b0),
        .M00_AXI_araddr(axi_ic_ctrl_mgmt_1_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_ic_ctrl_mgmt_1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_ic_ctrl_mgmt_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_ic_ctrl_mgmt_1_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_ic_ctrl_mgmt_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_ic_ctrl_mgmt_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_ic_ctrl_mgmt_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_ic_ctrl_mgmt_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_ic_ctrl_mgmt_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_ic_ctrl_mgmt_1_M00_AXI_RDATA),
        .M00_AXI_rready(axi_ic_ctrl_mgmt_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_ic_ctrl_mgmt_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_ic_ctrl_mgmt_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_ic_ctrl_mgmt_1_M00_AXI_WDATA),
        .M00_AXI_wready(axi_ic_ctrl_mgmt_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_ic_ctrl_mgmt_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_ic_ctrl_mgmt_1_M00_AXI_WVALID),
        .M01_ACLK(1'b0),
        .M01_ARESETN(1'b0),
        .M01_AXI_araddr(axi_ic_ctrl_mgmt_1_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_ic_ctrl_mgmt_1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_ic_ctrl_mgmt_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_ic_ctrl_mgmt_1_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_ic_ctrl_mgmt_1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_ic_ctrl_mgmt_1_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_ic_ctrl_mgmt_1_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_ic_ctrl_mgmt_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_ic_ctrl_mgmt_1_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_ic_ctrl_mgmt_1_M01_AXI_RDATA),
        .M01_AXI_rready(axi_ic_ctrl_mgmt_1_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_ic_ctrl_mgmt_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_ic_ctrl_mgmt_1_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_ic_ctrl_mgmt_1_M01_AXI_WDATA),
        .M01_AXI_wready(axi_ic_ctrl_mgmt_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_ic_ctrl_mgmt_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_ic_ctrl_mgmt_1_M01_AXI_WVALID),
        .M02_ACLK(1'b0),
        .M02_ARESETN(1'b0),
        .M02_AXI_araddr(axi_ic_ctrl_mgmt_1_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_ic_ctrl_mgmt_1_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_ic_ctrl_mgmt_1_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_ic_ctrl_mgmt_1_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_ic_ctrl_mgmt_1_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_ic_ctrl_mgmt_1_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_ic_ctrl_mgmt_1_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_ic_ctrl_mgmt_1_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_ic_ctrl_mgmt_1_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_ic_ctrl_mgmt_1_M02_AXI_RDATA),
        .M02_AXI_rready(axi_ic_ctrl_mgmt_1_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_ic_ctrl_mgmt_1_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_ic_ctrl_mgmt_1_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_ic_ctrl_mgmt_1_M02_AXI_WDATA),
        .M02_AXI_wready(axi_ic_ctrl_mgmt_1_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_ic_ctrl_mgmt_1_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_ic_ctrl_mgmt_1_M02_AXI_WVALID),
        .M03_ACLK(1'b0),
        .M03_ARESETN(1'b0),
        .M03_AXI_araddr(axi_ic_ctrl_mgmt_1_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_ic_ctrl_mgmt_1_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_ic_ctrl_mgmt_1_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_ic_ctrl_mgmt_1_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_ic_ctrl_mgmt_1_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_ic_ctrl_mgmt_1_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_ic_ctrl_mgmt_1_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_ic_ctrl_mgmt_1_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_ic_ctrl_mgmt_1_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_ic_ctrl_mgmt_1_M03_AXI_RDATA),
        .M03_AXI_rready(axi_ic_ctrl_mgmt_1_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_ic_ctrl_mgmt_1_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_ic_ctrl_mgmt_1_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_ic_ctrl_mgmt_1_M03_AXI_WDATA),
        .M03_AXI_wready(axi_ic_ctrl_mgmt_1_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_ic_ctrl_mgmt_1_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_ic_ctrl_mgmt_1_M03_AXI_WVALID),
        .S00_ACLK(aclk_ctrl),
        .S00_ARESETN(aresetn_ctrl),
        .S00_AXI_araddr(axi_ic_ctrl_mgmt_0_M05_AXI_ARADDR),
        .S00_AXI_arprot(axi_ic_ctrl_mgmt_0_M05_AXI_ARPROT),
        .S00_AXI_arready(axi_ic_ctrl_mgmt_0_M05_AXI_ARREADY),
        .S00_AXI_arvalid(axi_ic_ctrl_mgmt_0_M05_AXI_ARVALID),
        .S00_AXI_awaddr(axi_ic_ctrl_mgmt_0_M05_AXI_AWADDR),
        .S00_AXI_awprot(axi_ic_ctrl_mgmt_0_M05_AXI_AWPROT),
        .S00_AXI_awready(axi_ic_ctrl_mgmt_0_M05_AXI_AWREADY),
        .S00_AXI_awvalid(axi_ic_ctrl_mgmt_0_M05_AXI_AWVALID),
        .S00_AXI_bready(axi_ic_ctrl_mgmt_0_M05_AXI_BREADY),
        .S00_AXI_bresp(axi_ic_ctrl_mgmt_0_M05_AXI_BRESP),
        .S00_AXI_bvalid(axi_ic_ctrl_mgmt_0_M05_AXI_BVALID),
        .S00_AXI_rdata(axi_ic_ctrl_mgmt_0_M05_AXI_RDATA),
        .S00_AXI_rready(axi_ic_ctrl_mgmt_0_M05_AXI_RREADY),
        .S00_AXI_rresp(axi_ic_ctrl_mgmt_0_M05_AXI_RRESP),
        .S00_AXI_rvalid(axi_ic_ctrl_mgmt_0_M05_AXI_RVALID),
        .S00_AXI_wdata(axi_ic_ctrl_mgmt_0_M05_AXI_WDATA),
        .S00_AXI_wready(axi_ic_ctrl_mgmt_0_M05_AXI_WREADY),
        .S00_AXI_wstrb(axi_ic_ctrl_mgmt_0_M05_AXI_WSTRB),
        .S00_AXI_wvalid(axi_ic_ctrl_mgmt_0_M05_AXI_WVALID));
  (* X_CORE_INFO = "shell_utils_build_info_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_build_info_0 build_info
       (.S_AXI_ACLK(aclk_ctrl),
        .S_AXI_ARADDR(axi_ic_ctrl_mgmt_0_M00_AXI_ARADDR),
        .S_AXI_ARESETN(aresetn_ctrl),
        .S_AXI_ARREADY(axi_ic_ctrl_mgmt_0_M00_AXI_ARREADY),
        .S_AXI_ARVALID(axi_ic_ctrl_mgmt_0_M00_AXI_ARVALID),
        .S_AXI_AWADDR(axi_ic_ctrl_mgmt_0_M00_AXI_AWADDR),
        .S_AXI_AWREADY(axi_ic_ctrl_mgmt_0_M00_AXI_AWREADY),
        .S_AXI_AWVALID(axi_ic_ctrl_mgmt_0_M00_AXI_AWVALID),
        .S_AXI_BREADY(axi_ic_ctrl_mgmt_0_M00_AXI_BREADY),
        .S_AXI_BRESP(axi_ic_ctrl_mgmt_0_M00_AXI_BRESP),
        .S_AXI_BVALID(axi_ic_ctrl_mgmt_0_M00_AXI_BVALID),
        .S_AXI_RDATA(axi_ic_ctrl_mgmt_0_M00_AXI_RDATA),
        .S_AXI_RREADY(axi_ic_ctrl_mgmt_0_M00_AXI_RREADY),
        .S_AXI_RRESP(axi_ic_ctrl_mgmt_0_M00_AXI_RRESP),
        .S_AXI_RVALID(axi_ic_ctrl_mgmt_0_M00_AXI_RVALID),
        .S_AXI_WDATA(axi_ic_ctrl_mgmt_0_M00_AXI_WDATA),
        .S_AXI_WREADY(axi_ic_ctrl_mgmt_0_M00_AXI_WREADY),
        .S_AXI_WSTRB(axi_ic_ctrl_mgmt_0_M00_AXI_WSTRB),
        .S_AXI_WVALID(axi_ic_ctrl_mgmt_0_M00_AXI_WVALID));
  (* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_hbm_adapt_0 clk_hbm_adapt
       (.clk_in(clk_hbm_adapt_in),
        .clk_out(hbm_aclk));
  (* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel2_adapt_0 clk_kernel2_adapt
       (.clk_in(clock_throttling_kernel2_clk_out),
        .clk_out(clk_kernel2));
  (* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel2_cont_adapt_0 clk_kernel2_cont_adapt
       (.clk_in(clock_throttling_kernel2_clk_out_cont),
        .clk_out(clk_kernel2_cont));
  (* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel_adapt_0 clk_kernel_adapt
       (.clk_in(clock_throttling_kernel_clk_out),
        .clk_out(clk_kernel));
  (* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel_cont_adapt_0 clk_kernel_cont_adapt
       (.clk_in(clock_throttling_kernel_clk_out_cont),
        .clk_out(clk_kernel_cont));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_hbm_0 clkwiz_hbm
       (.clk_in1(freerun_refclk),
        .clk_out1(clk_hbm_adapt_in),
        .clk_out1_ce(startup_done),
        .locked(clk_hbm_locked),
        .power_down(shutdown_clocks_latched),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(axi_ic_ctrl_mgmt_0_M06_AXI_ARADDR),
        .s_axi_aresetn(aresetn_ctrl),
        .s_axi_arready(axi_ic_ctrl_mgmt_0_M06_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_0_M06_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_ctrl_mgmt_0_M06_AXI_AWADDR),
        .s_axi_awready(axi_ic_ctrl_mgmt_0_M06_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_0_M06_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_0_M06_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_0_M06_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_0_M06_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_0_M06_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_0_M06_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_0_M06_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_0_M06_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_0_M06_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_0_M06_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_0_M06_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_0_M06_AXI_WVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_kernel_0 clkwiz_kernel
       (.clk_in1(freerun_refclk),
        .clk_out1(clk_kernel_unbuffered),
        .locked(clk_kernel_locked),
        .power_down(shutdown_clocks_latched),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(axi_ic_ctrl_mgmt_0_M03_AXI_ARADDR),
        .s_axi_aresetn(aresetn_ctrl),
        .s_axi_arready(axi_ic_ctrl_mgmt_0_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_0_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_ctrl_mgmt_0_M03_AXI_AWADDR),
        .s_axi_awready(axi_ic_ctrl_mgmt_0_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_0_M03_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_0_M03_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_0_M03_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_0_M03_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_0_M03_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_0_M03_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_0_M03_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_0_M03_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_0_M03_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_0_M03_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_0_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_0_M03_AXI_WVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_kernel2_0 clkwiz_kernel2
       (.clk_in1(freerun_refclk),
        .clk_out1(clk_kernel2_unbuffered),
        .locked(clk_kernel2_locked),
        .power_down(shutdown_clocks_latched),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(axi_ic_ctrl_mgmt_0_M04_AXI_ARADDR),
        .s_axi_aresetn(aresetn_ctrl),
        .s_axi_arready(axi_ic_ctrl_mgmt_0_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_0_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_ctrl_mgmt_0_M04_AXI_AWADDR),
        .s_axi_awready(axi_ic_ctrl_mgmt_0_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_0_M04_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_0_M04_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_0_M04_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_0_M04_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_0_M04_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_0_M04_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_0_M04_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_0_M04_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_0_M04_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_0_M04_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_0_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_0_M04_AXI_WVALID));
  (* X_CORE_INFO = "shell_utils_clock_throttling_avg,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_avg_0 clock_throttling_avg
       (.Clk(aclk_ctrl),
        .Rate(\^gpio_gapping_demand ),
        .Rate_Avg(\^clock_throttling_avg ),
        .Rate_Upd_Tog(\^gapping_demand_toggle ),
        .Rst(aresetn_ctrl));
  (* X_CORE_INFO = "shell_utils_clock_throttling,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_kernel_0 clock_throttling_kernel
       (.Clk_In(clk_kernel_unbuffered),
        .Clk_Out(clock_throttling_kernel_clk_out),
        .Clk_Out_Cont(clock_throttling_kernel_clk_out_cont),
        .Locked(clk_kernel_locked),
        .Rate_In(\^gpio_gapping_demand ),
        .Rate_Upd_Tog(\^gapping_demand_toggle ),
        .Rst_Async(aresetn_kernel_async),
        .Rst_In(aresetn_ctrl),
        .Startup_Done(startup_done));
  (* X_CORE_INFO = "shell_utils_clock_throttling,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_kernel2_0 clock_throttling_kernel2
       (.Clk_In(clk_kernel2_unbuffered),
        .Clk_Out(clock_throttling_kernel2_clk_out),
        .Clk_Out_Cont(clock_throttling_kernel2_clk_out_cont),
        .Locked(clk_kernel2_locked),
        .Rate_In(\^gpio_gapping_demand ),
        .Rate_Upd_Tog(\^gapping_demand_toggle ),
        .Rst_Async(aresetn_kernel2_async),
        .Rst_In(aresetn_ctrl),
        .Startup_Done(startup_done));
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr0_0 fanout_aresetn_ctrl_slr0
       (.clk(aclk_ctrl),
        .d(aresetn_ctrl),
        .q(aresetn_ctrl_slr0),
        .resetn(1'b1));
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr1_0 fanout_aresetn_ctrl_slr1
       (.clk(aclk_ctrl),
        .d(aresetn_ctrl),
        .q(aresetn_ctrl_slr1),
        .resetn(1'b1));
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_hbm_0 fanout_aresetn_hbm
       (.clk(hbm_aclk),
        .d(hbm_aresetn_int),
        .q(hbm_aresetn),
        .resetn(1'b1));
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel2_slr0_0 fanout_aresetn_kernel2_slr0
       (.clk(clk_kernel2_cont),
        .d(aresetn_kernel2),
        .q(aresetn_kernel2_slr0),
        .resetn(1'b1));
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel2_slr1_0 fanout_aresetn_kernel2_slr1
       (.clk(clk_kernel2_cont),
        .d(aresetn_kernel2),
        .q(aresetn_kernel2_slr1),
        .resetn(1'b1));
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_slr0_0 fanout_aresetn_kernel_slr0
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel),
        .q(aresetn_kernel_slr0),
        .resetn(1'b1));
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_slr1_0 fanout_aresetn_kernel_slr1
       (.clk(clk_kernel_cont),
        .d(aresetn_kernel),
        .q(aresetn_kernel_slr1),
        .resetn(1'b1));
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr0_0 fanout_aresetn_pcie_slr0
       (.clk(aclk_pcie),
        .d(aresetn_pcie),
        .q(aresetn_pcie_slr0),
        .resetn(1'b1));
  (* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr1_0 fanout_aresetn_pcie_slr1
       (.clk(aclk_pcie),
        .d(aresetn_pcie),
        .q(aresetn_pcie_slr1),
        .resetn(1'b1));
  (* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_aclk_0 frequency_counter_aclk
       (.s_axi_aclk(freerun_refclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_1_M02_AXI_ARADDR}),
        .s_axi_aresetn(aresetn_freerun_refclk),
        .s_axi_arready(axi_ic_ctrl_mgmt_1_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_1_M02_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_1_M02_AXI_AWADDR}),
        .s_axi_awready(axi_ic_ctrl_mgmt_1_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_1_M02_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_1_M02_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_1_M02_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_1_M02_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_1_M02_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_1_M02_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_1_M02_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_1_M02_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_1_M02_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_1_M02_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_1_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_1_M02_AXI_WVALID),
        .test_clk0(aclk_ctrl),
        .test_clk1(aclk_pcie));
  (* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_hbm_0 frequency_counter_hbm
       (.s_axi_aclk(freerun_refclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_1_M03_AXI_ARADDR}),
        .s_axi_aresetn(aresetn_freerun_refclk),
        .s_axi_arready(axi_ic_ctrl_mgmt_1_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_1_M03_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_1_M03_AXI_AWADDR}),
        .s_axi_awready(axi_ic_ctrl_mgmt_1_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_1_M03_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_1_M03_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_1_M03_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_1_M03_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_1_M03_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_1_M03_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_1_M03_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_1_M03_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_1_M03_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_1_M03_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_1_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_1_M03_AXI_WVALID),
        .test_clk0(hbm_aclk),
        .test_clk3(hbm_refclk));
  (* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_kernel_0 frequency_counter_kernel
       (.s_axi_aclk(freerun_refclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_1_M00_AXI_ARADDR}),
        .s_axi_aresetn(aresetn_freerun_refclk),
        .s_axi_arready(axi_ic_ctrl_mgmt_1_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_1_M00_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_1_M00_AXI_AWADDR}),
        .s_axi_awready(axi_ic_ctrl_mgmt_1_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_1_M00_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_1_M00_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_1_M00_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_1_M00_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_1_M00_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_1_M00_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_1_M00_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_1_M00_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_1_M00_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_1_M00_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_1_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_1_M00_AXI_WVALID),
        .test_clk0(clk_kernel_cont),
        .test_clk1(clk_kernel));
  (* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_kernel2_0 frequency_counter_kernel2
       (.s_axi_aclk(freerun_refclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_1_M01_AXI_ARADDR}),
        .s_axi_aresetn(aresetn_freerun_refclk),
        .s_axi_arready(axi_ic_ctrl_mgmt_1_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_1_M01_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_ic_ctrl_mgmt_1_M01_AXI_AWADDR}),
        .s_axi_awready(axi_ic_ctrl_mgmt_1_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_1_M01_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_1_M01_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_1_M01_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_1_M01_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_1_M01_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_1_M01_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_1_M01_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_1_M01_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_1_M01_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_1_M01_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_1_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_1_M01_AXI_WVALID),
        .test_clk0(clk_kernel2_cont),
        .test_clk1(clk_kernel2));
  (* X_CORE_INFO = "c_counter_binary_v12_0_14,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gapping_demand_toggle_0 gapping_demand_toggle
       (.CE(\^gapping_demand_update ),
        .CLK(aclk_ctrl),
        .Q(\^gapping_demand_toggle ));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gapping_demand_update_0 gapping_demand_update
       (.Op1(gapping_demand_bvalid),
        .Op2(gapping_demand_bready),
        .Res(\^gapping_demand_update ));
  (* X_CORE_INFO = "axi_gpio,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_gapping_demand_0 gpio_gapping_demand
       (.gpio_io_o(\^gpio_gapping_demand ),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(axi_ic_ctrl_mgmt_0_M01_AXI_ARADDR),
        .s_axi_aresetn(aresetn_ctrl),
        .s_axi_arready(axi_ic_ctrl_mgmt_0_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_0_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_ctrl_mgmt_0_M01_AXI_AWADDR),
        .s_axi_awready(axi_ic_ctrl_mgmt_0_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_0_M01_AXI_AWVALID),
        .s_axi_bready(gapping_demand_bready),
        .s_axi_bresp(axi_ic_ctrl_mgmt_0_M01_AXI_BRESP),
        .s_axi_bvalid(gapping_demand_bvalid),
        .s_axi_rdata(axi_ic_ctrl_mgmt_0_M01_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_0_M01_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_0_M01_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_0_M01_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_0_M01_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_0_M01_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_0_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_0_M01_AXI_WVALID));
  (* X_CORE_INFO = "axi_gpio,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_control_status_0 gpio_ucs_control_status
       (.gpio2_io_o(gpio_ucs_control_status_gpio2),
        .gpio_io_i({1'b0,1'b0,gpio_ucs_status_concat_dout[29:16],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gpio_ucs_status_concat_dout[0]}),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(axi_ic_ctrl_mgmt_0_M02_AXI_ARADDR),
        .s_axi_aresetn(aresetn_ctrl),
        .s_axi_arready(axi_ic_ctrl_mgmt_0_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_ctrl_mgmt_0_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_ctrl_mgmt_0_M02_AXI_AWADDR),
        .s_axi_awready(axi_ic_ctrl_mgmt_0_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_ctrl_mgmt_0_M02_AXI_AWVALID),
        .s_axi_bready(axi_ic_ctrl_mgmt_0_M02_AXI_BREADY),
        .s_axi_bresp(axi_ic_ctrl_mgmt_0_M02_AXI_BRESP),
        .s_axi_bvalid(axi_ic_ctrl_mgmt_0_M02_AXI_BVALID),
        .s_axi_rdata(axi_ic_ctrl_mgmt_0_M02_AXI_RDATA),
        .s_axi_rready(axi_ic_ctrl_mgmt_0_M02_AXI_RREADY),
        .s_axi_rresp(axi_ic_ctrl_mgmt_0_M02_AXI_RRESP),
        .s_axi_rvalid(axi_ic_ctrl_mgmt_0_M02_AXI_RVALID),
        .s_axi_wdata(axi_ic_ctrl_mgmt_0_M02_AXI_WDATA),
        .s_axi_wready(axi_ic_ctrl_mgmt_0_M02_AXI_WREADY),
        .s_axi_wstrb(axi_ic_ctrl_mgmt_0_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_ctrl_mgmt_0_M02_AXI_WVALID));
  (* CHECK_LICENSE_TYPE = "bd_22c0_gpio_ucs_status_concat_0,xlconcat_v2_1_4_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_status_concat_0 gpio_ucs_status_concat
       (.In0(shutdown_clocks_latched),
        .In1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .In2(\^clock_throttling_avg ),
        .In3({1'b0,1'b0}),
        .dout({NLW_gpio_ucs_status_concat_dout_UNCONNECTED[31:30],gpio_ucs_status_concat_dout}));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_or_shutdown_clocks_0 or_shutdown_clocks
       (.Op1(shutdown_clocks),
        .Op2(reduce_check_gpio_res),
        .Res(or_shutdown_clocks_res));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_freerun_refclk_0 psreset_freerun_refclk
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_psreset_freerun_refclk_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_ctrl),
        .interconnect_aresetn(aresetn_freerun_refclk),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psreset_freerun_refclk_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psreset_freerun_refclk_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psreset_freerun_refclk_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(freerun_refclk));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_hbm_0 psreset_hbm
       (.aux_reset_in(aresetn_ctrl),
        .bus_struct_reset(NLW_psreset_hbm_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(clk_hbm_locked),
        .ext_reset_in(aresetn_pcie),
        .interconnect_aresetn(hbm_aresetn_int),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psreset_hbm_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psreset_hbm_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psreset_hbm_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(hbm_aclk));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_kernel_0 psreset_kernel
       (.aux_reset_in(aresetn_kernel_async),
        .bus_struct_reset(NLW_psreset_kernel_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_pcie),
        .interconnect_aresetn(aresetn_kernel),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psreset_kernel_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psreset_kernel_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psreset_kernel_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(clk_kernel_cont));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_kernel2_0 psreset_kernel2
       (.aux_reset_in(aresetn_kernel2_async),
        .bus_struct_reset(NLW_psreset_kernel2_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_pcie),
        .interconnect_aresetn(aresetn_kernel2),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psreset_kernel2_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psreset_kernel2_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psreset_kernel2_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(clk_kernel2_cont));
  (* X_CORE_INFO = "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_reduce_check_gpio_0 reduce_check_gpio
       (.Op1(adder_check_gpio_sum),
        .Res(reduce_check_gpio_res));
  (* X_CORE_INFO = "c_shift_ram_v12_0_14,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_shutdown_clocks_latch_0 shutdown_clocks_latch
       (.CE(or_shutdown_clocks_res),
        .CLK(aclk_ctrl),
        .D(1'b1),
        .Q(shutdown_clocks_latched));
  (* CHECK_LICENSE_TYPE = "bd_22c0_slice_check_gpio_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_check_gpio_0 slice_check_gpio
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gpio_ucs_control_status_gpio2[20:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dout(slice_check_gpio_dout));
  (* CHECK_LICENSE_TYPE = "bd_22c0_slice_startup_done_gpio_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_startup_done_gpio_0 slice_startup_done_gpio
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gpio_ucs_control_status_gpio2[0]}),
        .Dout(startup_done));
  (* X_CORE_INFO = "axi_vip_v1_1_11_top,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_vip_ctrl_mgmt_0 vip_ctrl_mgmt
       (.aclk(aclk_ctrl),
        .aresetn(aresetn_ctrl),
        .m_axi_araddr(s_axi_ctrl_mgmt_vip_ARADDR),
        .m_axi_arprot(s_axi_ctrl_mgmt_vip_ARPROT),
        .m_axi_arready(s_axi_ctrl_mgmt_vip_ARREADY),
        .m_axi_arvalid(s_axi_ctrl_mgmt_vip_ARVALID),
        .m_axi_awaddr(s_axi_ctrl_mgmt_vip_AWADDR),
        .m_axi_awprot(s_axi_ctrl_mgmt_vip_AWPROT),
        .m_axi_awready(s_axi_ctrl_mgmt_vip_AWREADY),
        .m_axi_awvalid(s_axi_ctrl_mgmt_vip_AWVALID),
        .m_axi_bready(s_axi_ctrl_mgmt_vip_BREADY),
        .m_axi_bresp(s_axi_ctrl_mgmt_vip_BRESP),
        .m_axi_bvalid(s_axi_ctrl_mgmt_vip_BVALID),
        .m_axi_rdata(s_axi_ctrl_mgmt_vip_RDATA),
        .m_axi_rready(s_axi_ctrl_mgmt_vip_RREADY),
        .m_axi_rresp(s_axi_ctrl_mgmt_vip_RRESP),
        .m_axi_rvalid(s_axi_ctrl_mgmt_vip_RVALID),
        .m_axi_wdata(s_axi_ctrl_mgmt_vip_WDATA),
        .m_axi_wready(s_axi_ctrl_mgmt_vip_WREADY),
        .m_axi_wstrb(s_axi_ctrl_mgmt_vip_WSTRB),
        .m_axi_wvalid(s_axi_ctrl_mgmt_vip_WVALID),
        .s_axi_araddr(s_axi_ctrl_mgmt_araddr),
        .s_axi_arprot(s_axi_ctrl_mgmt_arprot),
        .s_axi_arready(s_axi_ctrl_mgmt_arready),
        .s_axi_arvalid(s_axi_ctrl_mgmt_arvalid),
        .s_axi_awaddr(s_axi_ctrl_mgmt_awaddr),
        .s_axi_awprot(s_axi_ctrl_mgmt_awprot),
        .s_axi_awready(s_axi_ctrl_mgmt_awready),
        .s_axi_awvalid(s_axi_ctrl_mgmt_awvalid),
        .s_axi_bready(s_axi_ctrl_mgmt_bready),
        .s_axi_bresp(s_axi_ctrl_mgmt_bresp),
        .s_axi_bvalid(s_axi_ctrl_mgmt_bvalid),
        .s_axi_rdata(s_axi_ctrl_mgmt_rdata),
        .s_axi_rready(s_axi_ctrl_mgmt_rready),
        .s_axi_rresp(s_axi_ctrl_mgmt_rresp),
        .s_axi_rvalid(s_axi_ctrl_mgmt_rvalid),
        .s_axi_wdata(s_axi_ctrl_mgmt_wdata),
        .s_axi_wready(s_axi_ctrl_mgmt_wready),
        .s_axi_wstrb(s_axi_ctrl_mgmt_wstrb),
        .s_axi_wvalid(s_axi_ctrl_mgmt_wvalid));
endmodule

(* X_CORE_INFO = "c_addsub_v12_0_14,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_adder_check_gpio_0
   (A,
    S);
  input [15:0]A;
  output [15:0]S;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_24_axi_clock_converter,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_auto_cc_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [15:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [15:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [15:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [15:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [15:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [15:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [15:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [15:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [15:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [15:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [15:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [15:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [15:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [15:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [15:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input [0:0]M05_AXI_arready;
  output [0:0]M05_AXI_arvalid;
  output [15:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input [0:0]M05_AXI_awready;
  output [0:0]M05_AXI_awvalid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [15:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [15:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [15:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [15:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire \<const0> ;
  wire ACLK;
  wire ARESETN;
  wire [4:0]\^M00_AXI_araddr ;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [4:0]\^M00_AXI_awaddr ;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [8:0]\^M01_AXI_araddr ;
  wire M01_AXI_arready;
  wire M01_AXI_arvalid;
  wire [8:0]\^M01_AXI_awaddr ;
  wire M01_AXI_awready;
  wire M01_AXI_awvalid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire [8:0]\^M02_AXI_araddr ;
  wire M02_AXI_arready;
  wire M02_AXI_arvalid;
  wire [8:0]\^M02_AXI_awaddr ;
  wire M02_AXI_awready;
  wire M02_AXI_awvalid;
  wire M02_AXI_bready;
  wire [1:0]M02_AXI_bresp;
  wire M02_AXI_bvalid;
  wire [31:0]M02_AXI_rdata;
  wire M02_AXI_rready;
  wire [1:0]M02_AXI_rresp;
  wire M02_AXI_rvalid;
  wire [31:0]M02_AXI_wdata;
  wire M02_AXI_wready;
  wire [3:0]M02_AXI_wstrb;
  wire M02_AXI_wvalid;
  wire [10:0]\^M03_AXI_araddr ;
  wire M03_AXI_arready;
  wire M03_AXI_arvalid;
  wire [10:0]\^M03_AXI_awaddr ;
  wire M03_AXI_awready;
  wire M03_AXI_awvalid;
  wire M03_AXI_bready;
  wire [1:0]M03_AXI_bresp;
  wire M03_AXI_bvalid;
  wire [31:0]M03_AXI_rdata;
  wire M03_AXI_rready;
  wire [1:0]M03_AXI_rresp;
  wire M03_AXI_rvalid;
  wire [31:0]M03_AXI_wdata;
  wire M03_AXI_wready;
  wire [3:0]M03_AXI_wstrb;
  wire M03_AXI_wvalid;
  wire [10:0]\^M04_AXI_araddr ;
  wire M04_AXI_arready;
  wire M04_AXI_arvalid;
  wire [10:0]\^M04_AXI_awaddr ;
  wire M04_AXI_awready;
  wire M04_AXI_awvalid;
  wire M04_AXI_bready;
  wire [1:0]M04_AXI_bresp;
  wire M04_AXI_bvalid;
  wire [31:0]M04_AXI_rdata;
  wire M04_AXI_rready;
  wire [1:0]M04_AXI_rresp;
  wire M04_AXI_rvalid;
  wire [31:0]M04_AXI_wdata;
  wire M04_AXI_wready;
  wire [3:0]M04_AXI_wstrb;
  wire M04_AXI_wvalid;
  wire [15:0]M05_AXI_araddr;
  wire [2:0]M05_AXI_arprot;
  wire [0:0]M05_AXI_arready;
  wire [0:0]M05_AXI_arvalid;
  wire [15:0]M05_AXI_awaddr;
  wire [2:0]M05_AXI_awprot;
  wire [0:0]M05_AXI_awready;
  wire [0:0]M05_AXI_awvalid;
  wire [0:0]M05_AXI_bready;
  wire [1:0]M05_AXI_bresp;
  wire [0:0]M05_AXI_bvalid;
  wire [31:0]M05_AXI_rdata;
  wire [0:0]M05_AXI_rready;
  wire [1:0]M05_AXI_rresp;
  wire [0:0]M05_AXI_rvalid;
  wire [31:0]M05_AXI_wdata;
  wire [0:0]M05_AXI_wready;
  wire [3:0]M05_AXI_wstrb;
  wire [0:0]M05_AXI_wvalid;
  wire [10:0]\^M06_AXI_araddr ;
  wire M06_AXI_arready;
  wire M06_AXI_arvalid;
  wire [10:0]\^M06_AXI_awaddr ;
  wire M06_AXI_awready;
  wire M06_AXI_awvalid;
  wire M06_AXI_bready;
  wire [1:0]M06_AXI_bresp;
  wire M06_AXI_bvalid;
  wire [31:0]M06_AXI_rdata;
  wire M06_AXI_rready;
  wire [1:0]M06_AXI_rresp;
  wire M06_AXI_rvalid;
  wire [31:0]M06_AXI_wdata;
  wire M06_AXI_wready;
  wire [3:0]M06_AXI_wstrb;
  wire M06_AXI_wvalid;
  wire [15:0]S00_AXI_araddr;
  wire [2:0]S00_AXI_arprot;
  wire [0:0]S00_AXI_arready;
  wire [0:0]S00_AXI_arvalid;
  wire [15:0]S00_AXI_awaddr;
  wire [2:0]S00_AXI_awprot;
  wire [0:0]S00_AXI_awready;
  wire [0:0]S00_AXI_awvalid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [0:0]S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [0:0]S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire [0:0]S00_AXI_wvalid;
  wire xbar_n_105;
  wire xbar_n_106;
  wire xbar_n_107;
  wire xbar_n_108;
  wire xbar_n_109;
  wire xbar_n_110;
  wire xbar_n_111;
  wire xbar_n_121;
  wire xbar_n_122;
  wire xbar_n_123;
  wire xbar_n_124;
  wire xbar_n_125;
  wire xbar_n_126;
  wire xbar_n_127;
  wire xbar_n_137;
  wire xbar_n_138;
  wire xbar_n_139;
  wire xbar_n_140;
  wire xbar_n_141;
  wire xbar_n_142;
  wire xbar_n_143;
  wire xbar_n_144;
  wire xbar_n_145;
  wire xbar_n_146;
  wire xbar_n_147;
  wire xbar_n_41;
  wire xbar_n_42;
  wire xbar_n_43;
  wire xbar_n_44;
  wire xbar_n_447;
  wire xbar_n_448;
  wire xbar_n_449;
  wire xbar_n_45;
  wire xbar_n_450;
  wire xbar_n_451;
  wire xbar_n_479;
  wire xbar_n_480;
  wire xbar_n_481;
  wire xbar_n_482;
  wire xbar_n_483;
  wire xbar_n_495;
  wire xbar_n_496;
  wire xbar_n_497;
  wire xbar_n_498;
  wire xbar_n_499;
  wire xbar_n_511;
  wire xbar_n_512;
  wire xbar_n_513;
  wire xbar_n_514;
  wire xbar_n_515;
  wire xbar_n_516;
  wire xbar_n_517;
  wire xbar_n_527;
  wire xbar_n_528;
  wire xbar_n_529;
  wire xbar_n_530;
  wire xbar_n_531;
  wire xbar_n_532;
  wire xbar_n_533;
  wire xbar_n_543;
  wire xbar_n_544;
  wire xbar_n_545;
  wire xbar_n_546;
  wire xbar_n_547;
  wire xbar_n_548;
  wire xbar_n_549;
  wire xbar_n_550;
  wire xbar_n_551;
  wire xbar_n_552;
  wire xbar_n_553;
  wire xbar_n_73;
  wire xbar_n_74;
  wire xbar_n_75;
  wire xbar_n_76;
  wire xbar_n_77;
  wire xbar_n_89;
  wire xbar_n_90;
  wire xbar_n_91;
  wire xbar_n_92;
  wire xbar_n_93;
  wire [20:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [20:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[15] = \<const0> ;
  assign M00_AXI_araddr[14] = \<const0> ;
  assign M00_AXI_araddr[13] = \<const0> ;
  assign M00_AXI_araddr[12] = \<const0> ;
  assign M00_AXI_araddr[11] = \<const0> ;
  assign M00_AXI_araddr[10] = \<const0> ;
  assign M00_AXI_araddr[9] = \<const0> ;
  assign M00_AXI_araddr[8] = \<const0> ;
  assign M00_AXI_araddr[7] = \<const0> ;
  assign M00_AXI_araddr[6] = \<const0> ;
  assign M00_AXI_araddr[5] = \<const0> ;
  assign M00_AXI_araddr[4:0] = \^M00_AXI_araddr [4:0];
  assign M00_AXI_awaddr[15] = \<const0> ;
  assign M00_AXI_awaddr[14] = \<const0> ;
  assign M00_AXI_awaddr[13] = \<const0> ;
  assign M00_AXI_awaddr[12] = \<const0> ;
  assign M00_AXI_awaddr[11] = \<const0> ;
  assign M00_AXI_awaddr[10] = \<const0> ;
  assign M00_AXI_awaddr[9] = \<const0> ;
  assign M00_AXI_awaddr[8] = \<const0> ;
  assign M00_AXI_awaddr[7] = \<const0> ;
  assign M00_AXI_awaddr[6] = \<const0> ;
  assign M00_AXI_awaddr[5] = \<const0> ;
  assign M00_AXI_awaddr[4:0] = \^M00_AXI_awaddr [4:0];
  assign M01_AXI_araddr[15] = \<const0> ;
  assign M01_AXI_araddr[14] = \<const0> ;
  assign M01_AXI_araddr[13] = \<const0> ;
  assign M01_AXI_araddr[12] = \<const0> ;
  assign M01_AXI_araddr[11] = \<const0> ;
  assign M01_AXI_araddr[10] = \<const0> ;
  assign M01_AXI_araddr[9] = \<const0> ;
  assign M01_AXI_araddr[8:0] = \^M01_AXI_araddr [8:0];
  assign M01_AXI_awaddr[15] = \<const0> ;
  assign M01_AXI_awaddr[14] = \<const0> ;
  assign M01_AXI_awaddr[13] = \<const0> ;
  assign M01_AXI_awaddr[12] = \<const0> ;
  assign M01_AXI_awaddr[11] = \<const0> ;
  assign M01_AXI_awaddr[10] = \<const0> ;
  assign M01_AXI_awaddr[9] = \<const0> ;
  assign M01_AXI_awaddr[8:0] = \^M01_AXI_awaddr [8:0];
  assign M02_AXI_araddr[15] = \<const0> ;
  assign M02_AXI_araddr[14] = \<const0> ;
  assign M02_AXI_araddr[13] = \<const0> ;
  assign M02_AXI_araddr[12] = \<const0> ;
  assign M02_AXI_araddr[11] = \<const0> ;
  assign M02_AXI_araddr[10] = \<const0> ;
  assign M02_AXI_araddr[9] = \<const0> ;
  assign M02_AXI_araddr[8:0] = \^M02_AXI_araddr [8:0];
  assign M02_AXI_awaddr[15] = \<const0> ;
  assign M02_AXI_awaddr[14] = \<const0> ;
  assign M02_AXI_awaddr[13] = \<const0> ;
  assign M02_AXI_awaddr[12] = \<const0> ;
  assign M02_AXI_awaddr[11] = \<const0> ;
  assign M02_AXI_awaddr[10] = \<const0> ;
  assign M02_AXI_awaddr[9] = \<const0> ;
  assign M02_AXI_awaddr[8:0] = \^M02_AXI_awaddr [8:0];
  assign M03_AXI_araddr[15] = \<const0> ;
  assign M03_AXI_araddr[14] = \<const0> ;
  assign M03_AXI_araddr[13] = \<const0> ;
  assign M03_AXI_araddr[12] = \<const0> ;
  assign M03_AXI_araddr[11] = \<const0> ;
  assign M03_AXI_araddr[10:0] = \^M03_AXI_araddr [10:0];
  assign M03_AXI_awaddr[15] = \<const0> ;
  assign M03_AXI_awaddr[14] = \<const0> ;
  assign M03_AXI_awaddr[13] = \<const0> ;
  assign M03_AXI_awaddr[12] = \<const0> ;
  assign M03_AXI_awaddr[11] = \<const0> ;
  assign M03_AXI_awaddr[10:0] = \^M03_AXI_awaddr [10:0];
  assign M04_AXI_araddr[15] = \<const0> ;
  assign M04_AXI_araddr[14] = \<const0> ;
  assign M04_AXI_araddr[13] = \<const0> ;
  assign M04_AXI_araddr[12] = \<const0> ;
  assign M04_AXI_araddr[11] = \<const0> ;
  assign M04_AXI_araddr[10:0] = \^M04_AXI_araddr [10:0];
  assign M04_AXI_awaddr[15] = \<const0> ;
  assign M04_AXI_awaddr[14] = \<const0> ;
  assign M04_AXI_awaddr[13] = \<const0> ;
  assign M04_AXI_awaddr[12] = \<const0> ;
  assign M04_AXI_awaddr[11] = \<const0> ;
  assign M04_AXI_awaddr[10:0] = \^M04_AXI_awaddr [10:0];
  assign M06_AXI_araddr[15] = \<const0> ;
  assign M06_AXI_araddr[14] = \<const0> ;
  assign M06_AXI_araddr[13] = \<const0> ;
  assign M06_AXI_araddr[12] = \<const0> ;
  assign M06_AXI_araddr[11] = \<const0> ;
  assign M06_AXI_araddr[10:0] = \^M06_AXI_araddr [10:0];
  assign M06_AXI_awaddr[15] = \<const0> ;
  assign M06_AXI_awaddr[14] = \<const0> ;
  assign M06_AXI_awaddr[13] = \<const0> ;
  assign M06_AXI_awaddr[12] = \<const0> ;
  assign M06_AXI_awaddr[11] = \<const0> ;
  assign M06_AXI_awaddr[10:0] = \^M06_AXI_awaddr [10:0];
  GND GND
       (.G(\<const0> ));
  (* X_CORE_INFO = "axi_crossbar_v2_1_26_axi_crossbar,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_xbar_0 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr({xbar_n_447,xbar_n_448,xbar_n_449,xbar_n_450,xbar_n_451,\^M06_AXI_araddr ,M05_AXI_araddr,xbar_n_479,xbar_n_480,xbar_n_481,xbar_n_482,xbar_n_483,\^M04_AXI_araddr ,xbar_n_495,xbar_n_496,xbar_n_497,xbar_n_498,xbar_n_499,\^M03_AXI_araddr ,xbar_n_511,xbar_n_512,xbar_n_513,xbar_n_514,xbar_n_515,xbar_n_516,xbar_n_517,\^M02_AXI_araddr ,xbar_n_527,xbar_n_528,xbar_n_529,xbar_n_530,xbar_n_531,xbar_n_532,xbar_n_533,\^M01_AXI_araddr ,xbar_n_543,xbar_n_544,xbar_n_545,xbar_n_546,xbar_n_547,xbar_n_548,xbar_n_549,xbar_n_550,xbar_n_551,xbar_n_552,xbar_n_553,\^M00_AXI_araddr }),
        .m_axi_arprot({NLW_xbar_m_axi_arprot_UNCONNECTED[20:18],M05_AXI_arprot,NLW_xbar_m_axi_arprot_UNCONNECTED[14:0]}),
        .m_axi_arready({M06_AXI_arready,M05_AXI_arready,M04_AXI_arready,M03_AXI_arready,M02_AXI_arready,M01_AXI_arready,M00_AXI_arready}),
        .m_axi_arvalid({M06_AXI_arvalid,M05_AXI_arvalid,M04_AXI_arvalid,M03_AXI_arvalid,M02_AXI_arvalid,M01_AXI_arvalid,M00_AXI_arvalid}),
        .m_axi_awaddr({xbar_n_41,xbar_n_42,xbar_n_43,xbar_n_44,xbar_n_45,\^M06_AXI_awaddr ,M05_AXI_awaddr,xbar_n_73,xbar_n_74,xbar_n_75,xbar_n_76,xbar_n_77,\^M04_AXI_awaddr ,xbar_n_89,xbar_n_90,xbar_n_91,xbar_n_92,xbar_n_93,\^M03_AXI_awaddr ,xbar_n_105,xbar_n_106,xbar_n_107,xbar_n_108,xbar_n_109,xbar_n_110,xbar_n_111,\^M02_AXI_awaddr ,xbar_n_121,xbar_n_122,xbar_n_123,xbar_n_124,xbar_n_125,xbar_n_126,xbar_n_127,\^M01_AXI_awaddr ,xbar_n_137,xbar_n_138,xbar_n_139,xbar_n_140,xbar_n_141,xbar_n_142,xbar_n_143,xbar_n_144,xbar_n_145,xbar_n_146,xbar_n_147,\^M00_AXI_awaddr }),
        .m_axi_awprot({NLW_xbar_m_axi_awprot_UNCONNECTED[20:18],M05_AXI_awprot,NLW_xbar_m_axi_awprot_UNCONNECTED[14:0]}),
        .m_axi_awready({M06_AXI_awready,M05_AXI_awready,M04_AXI_awready,M03_AXI_awready,M02_AXI_awready,M01_AXI_awready,M00_AXI_awready}),
        .m_axi_awvalid({M06_AXI_awvalid,M05_AXI_awvalid,M04_AXI_awvalid,M03_AXI_awvalid,M02_AXI_awvalid,M01_AXI_awvalid,M00_AXI_awvalid}),
        .m_axi_bready({M06_AXI_bready,M05_AXI_bready,M04_AXI_bready,M03_AXI_bready,M02_AXI_bready,M01_AXI_bready,M00_AXI_bready}),
        .m_axi_bresp({M06_AXI_bresp,M05_AXI_bresp,M04_AXI_bresp,M03_AXI_bresp,M02_AXI_bresp,M01_AXI_bresp,M00_AXI_bresp}),
        .m_axi_bvalid({M06_AXI_bvalid,M05_AXI_bvalid,M04_AXI_bvalid,M03_AXI_bvalid,M02_AXI_bvalid,M01_AXI_bvalid,M00_AXI_bvalid}),
        .m_axi_rdata({M06_AXI_rdata,M05_AXI_rdata,M04_AXI_rdata,M03_AXI_rdata,M02_AXI_rdata,M01_AXI_rdata,M00_AXI_rdata}),
        .m_axi_rready({M06_AXI_rready,M05_AXI_rready,M04_AXI_rready,M03_AXI_rready,M02_AXI_rready,M01_AXI_rready,M00_AXI_rready}),
        .m_axi_rresp({M06_AXI_rresp,M05_AXI_rresp,M04_AXI_rresp,M03_AXI_rresp,M02_AXI_rresp,M01_AXI_rresp,M00_AXI_rresp}),
        .m_axi_rvalid({M06_AXI_rvalid,M05_AXI_rvalid,M04_AXI_rvalid,M03_AXI_rvalid,M02_AXI_rvalid,M01_AXI_rvalid,M00_AXI_rvalid}),
        .m_axi_wdata({M06_AXI_wdata,M05_AXI_wdata,M04_AXI_wdata,M03_AXI_wdata,M02_AXI_wdata,M01_AXI_wdata,M00_AXI_wdata}),
        .m_axi_wready({M06_AXI_wready,M05_AXI_wready,M04_AXI_wready,M03_AXI_wready,M02_AXI_wready,M01_AXI_wready,M00_AXI_wready}),
        .m_axi_wstrb({M06_AXI_wstrb,M05_AXI_wstrb,M04_AXI_wstrb,M03_AXI_wstrb,M02_AXI_wstrb,M01_AXI_wstrb,M00_AXI_wstrb}),
        .m_axi_wvalid({M06_AXI_wvalid,M05_AXI_wvalid,M04_AXI_wvalid,M03_AXI_wvalid,M02_AXI_wvalid,M01_AXI_wvalid,M00_AXI_wvalid}),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wvalid(S00_AXI_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [15:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [15:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [15:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [15:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [15:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [15:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [15:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [15:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [15:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [15:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire ACLK;
  wire ARESETN;
  wire [15:0]M00_AXI_araddr;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [15:0]M00_AXI_awaddr;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [15:0]M01_AXI_araddr;
  wire M01_AXI_arready;
  wire M01_AXI_arvalid;
  wire [15:0]M01_AXI_awaddr;
  wire M01_AXI_awready;
  wire M01_AXI_awvalid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire [15:0]M02_AXI_araddr;
  wire M02_AXI_arready;
  wire M02_AXI_arvalid;
  wire [15:0]M02_AXI_awaddr;
  wire M02_AXI_awready;
  wire M02_AXI_awvalid;
  wire M02_AXI_bready;
  wire [1:0]M02_AXI_bresp;
  wire M02_AXI_bvalid;
  wire [31:0]M02_AXI_rdata;
  wire M02_AXI_rready;
  wire [1:0]M02_AXI_rresp;
  wire M02_AXI_rvalid;
  wire [31:0]M02_AXI_wdata;
  wire M02_AXI_wready;
  wire [3:0]M02_AXI_wstrb;
  wire M02_AXI_wvalid;
  wire [15:0]M03_AXI_araddr;
  wire M03_AXI_arready;
  wire M03_AXI_arvalid;
  wire [15:0]M03_AXI_awaddr;
  wire M03_AXI_awready;
  wire M03_AXI_awvalid;
  wire M03_AXI_bready;
  wire [1:0]M03_AXI_bresp;
  wire M03_AXI_bvalid;
  wire [31:0]M03_AXI_rdata;
  wire M03_AXI_rready;
  wire [1:0]M03_AXI_rresp;
  wire M03_AXI_rvalid;
  wire [31:0]M03_AXI_wdata;
  wire M03_AXI_wready;
  wire [3:0]M03_AXI_wstrb;
  wire M03_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [15:0]S00_AXI_araddr;
  wire [2:0]S00_AXI_arprot;
  wire [0:0]S00_AXI_arready;
  wire [0:0]S00_AXI_arvalid;
  wire [15:0]S00_AXI_awaddr;
  wire [2:0]S00_AXI_awprot;
  wire [0:0]S00_AXI_awready;
  wire [0:0]S00_AXI_awvalid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [0:0]S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [0:0]S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire [0:0]S00_AXI_wvalid;
  wire [15:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [15:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [11:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [11:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_9N0HK1 s00_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .S00_ACLK(S00_ACLK),
        .S00_ARESETN(S00_ARESETN),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .m_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .m_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .m_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .m_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .m_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .m_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .m_axi_bready(s00_couplers_to_xbar_BREADY),
        .m_axi_rready(s00_couplers_to_xbar_RREADY),
        .m_axi_wdata(s00_couplers_to_xbar_WDATA),
        .m_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .m_axi_wvalid(s00_couplers_to_xbar_WVALID),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wready(s00_couplers_to_xbar_WREADY));
  (* X_CORE_INFO = "axi_crossbar_v2_1_26_axi_crossbar,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_xbar_1 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr({M03_AXI_araddr,M02_AXI_araddr,M01_AXI_araddr,M00_AXI_araddr}),
        .m_axi_arprot(NLW_xbar_m_axi_arprot_UNCONNECTED[11:0]),
        .m_axi_arready({M03_AXI_arready,M02_AXI_arready,M01_AXI_arready,M00_AXI_arready}),
        .m_axi_arvalid({M03_AXI_arvalid,M02_AXI_arvalid,M01_AXI_arvalid,M00_AXI_arvalid}),
        .m_axi_awaddr({M03_AXI_awaddr,M02_AXI_awaddr,M01_AXI_awaddr,M00_AXI_awaddr}),
        .m_axi_awprot(NLW_xbar_m_axi_awprot_UNCONNECTED[11:0]),
        .m_axi_awready({M03_AXI_awready,M02_AXI_awready,M01_AXI_awready,M00_AXI_awready}),
        .m_axi_awvalid({M03_AXI_awvalid,M02_AXI_awvalid,M01_AXI_awvalid,M00_AXI_awvalid}),
        .m_axi_bready({M03_AXI_bready,M02_AXI_bready,M01_AXI_bready,M00_AXI_bready}),
        .m_axi_bresp({M03_AXI_bresp,M02_AXI_bresp,M01_AXI_bresp,M00_AXI_bresp}),
        .m_axi_bvalid({M03_AXI_bvalid,M02_AXI_bvalid,M01_AXI_bvalid,M00_AXI_bvalid}),
        .m_axi_rdata({M03_AXI_rdata,M02_AXI_rdata,M01_AXI_rdata,M00_AXI_rdata}),
        .m_axi_rready({M03_AXI_rready,M02_AXI_rready,M01_AXI_rready,M00_AXI_rready}),
        .m_axi_rresp({M03_AXI_rresp,M02_AXI_rresp,M01_AXI_rresp,M00_AXI_rresp}),
        .m_axi_rvalid({M03_AXI_rvalid,M02_AXI_rvalid,M01_AXI_rvalid,M00_AXI_rvalid}),
        .m_axi_wdata({M03_AXI_wdata,M02_AXI_wdata,M01_AXI_wdata,M00_AXI_wdata}),
        .m_axi_wready({M03_AXI_wready,M02_AXI_wready,M01_AXI_wready,M00_AXI_wready}),
        .m_axi_wstrb({M03_AXI_wstrb,M02_AXI_wstrb,M01_AXI_wstrb,M00_AXI_wstrb}),
        .m_axi_wvalid({M03_AXI_wvalid,M02_AXI_wvalid,M01_AXI_wvalid,M00_AXI_wvalid}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

(* X_CORE_INFO = "shell_utils_build_info_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_build_info_0
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [4:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [4:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;


endmodule

(* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_hbm_adapt_0
   (clk_in,
    clk_out);
  input clk_in;
  output clk_out;


endmodule

(* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel2_adapt_0
   (clk_in,
    clk_out);
  input clk_in;
  output clk_out;


endmodule

(* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel2_cont_adapt_0
   (clk_in,
    clk_out);
  input clk_in;
  output clk_out;


endmodule

(* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel_adapt_0
   (clk_in,
    clk_out);
  input clk_in;
  output clk_out;


endmodule

(* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel_cont_adapt_0
   (clk_in,
    clk_out);
  input clk_in;
  output clk_out;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_hbm_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    clk_out1_ce,
    clk_out1,
    power_down,
    locked,
    clk_in1);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [10:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [10:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input clk_out1_ce;
  output clk_out1;
  input power_down;
  output locked;
  input clk_in1;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_kernel2_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    clk_out1,
    power_down,
    locked,
    clk_in1);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [10:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [10:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output clk_out1;
  input power_down;
  output locked;
  input clk_in1;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_kernel_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    clk_out1,
    power_down,
    locked,
    clk_in1);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [10:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [10:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output clk_out1;
  input power_down;
  output locked;
  input clk_in1;


endmodule

(* X_CORE_INFO = "shell_utils_clock_throttling_avg,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_avg_0
   (Clk,
    Rst,
    Rate_Upd_Tog,
    Rate,
    Rate_Avg);
  input Clk;
  input Rst;
  input Rate_Upd_Tog;
  input [7:0]Rate;
  output [13:0]Rate_Avg;


endmodule

(* X_CORE_INFO = "shell_utils_clock_throttling,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_kernel2_0
   (Clk_In,
    Rst_In,
    Locked,
    Startup_Done,
    Rate_Upd_Tog,
    Rate_In,
    Rst_Async,
    Clk_Out,
    Clk_Out_Cont);
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

(* X_CORE_INFO = "shell_utils_clock_throttling,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_kernel_0
   (Clk_In,
    Rst_In,
    Locked,
    Startup_Done,
    Rate_Upd_Tog,
    Rate_In,
    Rst_Async,
    Clk_Out,
    Clk_Out_Cont);
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

(* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr0_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  input clk;
  input resetn;


endmodule

(* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr1_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  input clk;
  input resetn;


endmodule

(* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_hbm_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  input clk;
  input resetn;


endmodule

(* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel2_slr0_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  input clk;
  input resetn;


endmodule

(* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel2_slr1_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  input clk;
  input resetn;


endmodule

(* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_slr0_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  input clk;
  input resetn;


endmodule

(* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_slr1_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  input clk;
  input resetn;


endmodule

(* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr0_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  input clk;
  input resetn;


endmodule

(* X_CORE_INFO = "pipeline_reg_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr1_0
   (d,
    q,
    clk,
    resetn);
  input [0:0]d;
  output [0:0]q;
  input clk;
  input resetn;


endmodule

(* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_aclk_0
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


endmodule

(* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_hbm_0
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
  input test_clk3;


endmodule

(* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_kernel2_0
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


endmodule

(* X_CORE_INFO = "shell_utils_frequency_counter_v1_0_0,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_kernel_0
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


endmodule

(* X_CORE_INFO = "c_counter_binary_v12_0_14,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gapping_demand_toggle_0
   (CLK,
    CE,
    Q);
  input CLK;
  input CE;
  output [0:0]Q;


endmodule

(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gapping_demand_update_0
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;


endmodule

(* X_CORE_INFO = "axi_gpio,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_gapping_demand_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    gpio_io_o);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [7:0]gpio_io_o;


endmodule

(* X_CORE_INFO = "axi_gpio,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_control_status_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    gpio_io_i,
    gpio2_io_o);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [31:0]gpio_io_i;
  output [31:0]gpio2_io_o;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_gpio_ucs_status_concat_0,xlconcat_v2_1_4_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_status_concat_0
   (In0,
    In1,
    In2,
    In3,
    dout);
  input [0:0]In0;
  input [14:0]In1;
  input [13:0]In2;
  input [1:0]In3;
  output [31:0]dout;

  wire \<const0> ;
  wire [0:0]In0;
  wire [13:0]In2;

  assign dout[31] = \<const0> ;
  assign dout[30] = \<const0> ;
  assign dout[29:16] = In2;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = In0;
  GND GND
       (.G(\<const0> ));
endmodule

(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_or_shutdown_clocks_0
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_freerun_refclk_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_hbm_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_kernel2_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_kernel_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_reduce_check_gpio_0
   (Op1,
    Res);
  input [15:0]Op1;
  output Res;


endmodule

(* X_CORE_INFO = "c_shift_ram_v12_0_14,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_shutdown_clocks_latch_0
   (D,
    CLK,
    CE,
    Q);
  input [0:0]D;
  input CLK;
  input CE;
  output [0:0]Q;


endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_slice_check_gpio_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_check_gpio_0
   (Din,
    Dout);
  input [31:0]Din;
  output [15:0]Dout;

  wire [31:0]Din;

  assign Dout[15:0] = Din[20:5];
endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_slice_startup_done_gpio_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_startup_done_gpio_0
   (Din,
    Dout);
  input [31:0]Din;
  output [0:0]Dout;

  wire [31:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* X_CORE_INFO = "axi_vip_v1_1_11_top,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_vip_ctrl_mgmt_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [15:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [15:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [15:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [15:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_crossbar_v2_1_26_axi_crossbar,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_xbar_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [15:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_awvalid;
  output [0:0]s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  output [0:0]s_axi_wready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [15:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input [0:0]s_axi_arvalid;
  output [0:0]s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  output [111:0]m_axi_awaddr;
  output [20:0]m_axi_awprot;
  output [6:0]m_axi_awvalid;
  input [6:0]m_axi_awready;
  output [223:0]m_axi_wdata;
  output [27:0]m_axi_wstrb;
  output [6:0]m_axi_wvalid;
  input [6:0]m_axi_wready;
  input [13:0]m_axi_bresp;
  input [6:0]m_axi_bvalid;
  output [6:0]m_axi_bready;
  output [111:0]m_axi_araddr;
  output [20:0]m_axi_arprot;
  output [6:0]m_axi_arvalid;
  input [6:0]m_axi_arready;
  input [223:0]m_axi_rdata;
  input [13:0]m_axi_rresp;
  input [6:0]m_axi_rvalid;
  output [6:0]m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_crossbar_v2_1_26_axi_crossbar,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_xbar_1
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [15:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_awvalid;
  output [0:0]s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  output [0:0]s_axi_wready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [15:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input [0:0]s_axi_arvalid;
  output [0:0]s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  output [63:0]m_axi_awaddr;
  output [11:0]m_axi_awprot;
  output [3:0]m_axi_awvalid;
  input [3:0]m_axi_awready;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output [3:0]m_axi_wvalid;
  input [3:0]m_axi_wready;
  input [7:0]m_axi_bresp;
  input [3:0]m_axi_bvalid;
  output [3:0]m_axi_bready;
  output [63:0]m_axi_araddr;
  output [11:0]m_axi_arprot;
  output [3:0]m_axi_arvalid;
  input [3:0]m_axi_arready;
  input [127:0]m_axi_rdata;
  input [7:0]m_axi_rresp;
  input [3:0]m_axi_rvalid;
  output [3:0]m_axi_rready;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_9N0HK1
   (S00_AXI_awready,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awvalid,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arvalid,
    S00_AXI_rready,
    ACLK,
    ARESETN,
    s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid);
  output [0:0]S00_AXI_awready;
  output [0:0]S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [0:0]S00_AXI_arready;
  output [31:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  output [15:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  output m_axi_bready;
  output [15:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  output m_axi_rready;
  input S00_ACLK;
  input S00_ARESETN;
  input [15:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  input [0:0]S00_AXI_awvalid;
  input [31:0]S00_AXI_wdata;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;
  input [0:0]S00_AXI_bready;
  input [15:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  input [0:0]S00_AXI_arvalid;
  input [0:0]S00_AXI_rready;
  input ACLK;
  input ARESETN;
  input [0:0]s_axi_awready;
  input [0:0]s_axi_wready;
  input [1:0]s_axi_bresp;
  input [0:0]s_axi_bvalid;
  input [0:0]s_axi_arready;
  input [31:0]s_axi_rdata;
  input [1:0]s_axi_rresp;
  input [0:0]s_axi_rvalid;

  wire ACLK;
  wire ARESETN;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [15:0]S00_AXI_araddr;
  wire [2:0]S00_AXI_arprot;
  wire [0:0]S00_AXI_arready;
  wire [0:0]S00_AXI_arvalid;
  wire [15:0]S00_AXI_awaddr;
  wire [2:0]S00_AXI_awprot;
  wire [0:0]S00_AXI_awready;
  wire [0:0]S00_AXI_awvalid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [0:0]S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [0:0]S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire [0:0]S00_AXI_wvalid;
  wire [15:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arvalid;
  wire [15:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [0:0]s_axi_wready;

  (* X_CORE_INFO = "axi_clock_converter_v2_1_24_axi_clock_converter,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_auto_cc_0 auto_cc
       (.m_axi_aclk(ACLK),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_aresetn(ARESETN),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arready(s_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awready(s_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(s_axi_bresp),
        .m_axi_bvalid(s_axi_bvalid),
        .m_axi_rdata(s_axi_rdata),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(s_axi_rresp),
        .m_axi_rvalid(s_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(s_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(S00_ACLK),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_aresetn(S00_ARESETN),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wvalid(S00_AXI_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "ulp_ulp_ucs_0,bd_22c0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_22c0,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (freerun_refclk,
    aclk_ctrl,
    aclk_pcie,
    clk_kernel,
    clk_kernel2,
    hbm_aclk,
    hbm_refclk,
    aresetn_ctrl,
    aresetn_pcie,
    aresetn_ctrl_slr0,
    aresetn_ctrl_slr1,
    aresetn_pcie_slr0,
    aresetn_pcie_slr1,
    aresetn_kernel_slr0,
    aresetn_kernel_slr1,
    aresetn_kernel2_slr0,
    aresetn_kernel2_slr1,
    hbm_aresetn,
    shutdown_clocks,
    s_axi_ctrl_mgmt_araddr,
    s_axi_ctrl_mgmt_arprot,
    s_axi_ctrl_mgmt_arready,
    s_axi_ctrl_mgmt_arvalid,
    s_axi_ctrl_mgmt_awaddr,
    s_axi_ctrl_mgmt_awprot,
    s_axi_ctrl_mgmt_awready,
    s_axi_ctrl_mgmt_awvalid,
    s_axi_ctrl_mgmt_bready,
    s_axi_ctrl_mgmt_bresp,
    s_axi_ctrl_mgmt_bvalid,
    s_axi_ctrl_mgmt_rdata,
    s_axi_ctrl_mgmt_rready,
    s_axi_ctrl_mgmt_rresp,
    s_axi_ctrl_mgmt_rvalid,
    s_axi_ctrl_mgmt_wdata,
    s_axi_ctrl_mgmt_wready,
    s_axi_ctrl_mgmt_wstrb,
    s_axi_ctrl_mgmt_wvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.freerun_refclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.freerun_refclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0" *) input freerun_refclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_ctrl, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, ASSOCIATED_BUSIF s_axi_ctrl_mgmt, ASSOCIATED_RESET aresetn_ctrl:aresetn_ctrl_slr0:aresetn_ctrl_slr1, INSERT_VIP 0, ASSOCIATED_CLKEN CE" *) input aclk_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_pcie CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_pcie, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_pcie_00, ASSOCIATED_RESET aresetn_pcie:aresetn_pcie_slr0:aresetn_pcie_slr1, INSERT_VIP 0" *) input aclk_pcie;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clk_kernel CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.clk_kernel, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_kernel_00, ASSOCIATED_RESET aresetn_kernel_slr0:aresetn_kernel_slr1, INSERT_VIP 0" *) output clk_kernel;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clk_kernel2 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.clk_kernel2, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_kernel_01, ASSOCIATED_RESET aresetn_kernel2_slr0:aresetn_kernel2_slr1, INSERT_VIP 0" *) output clk_kernel2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.hbm_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.hbm_aclk, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_hbm, ASSOCIATED_RESET hbm_aresetn, INSERT_VIP 0" *) output hbm_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.hbm_refclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.hbm_refclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0" *) input hbm_refclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_pcie RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_pcie, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn_pcie;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl_slr0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_ctrl_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl_slr1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_ctrl_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_pcie_slr0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_pcie_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_pcie_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_pcie_slr1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_pcie_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_pcie_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_slr0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_kernel_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_slr1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_kernel_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel2_slr0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel2_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_kernel2_slr0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel2_slr1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel2_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_kernel2_slr1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.hbm_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.hbm_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]hbm_aresetn;
  input shutdown_clocks;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARADDR" *) input [15:0]s_axi_ctrl_mgmt_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARPROT" *) input [2:0]s_axi_ctrl_mgmt_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARREADY" *) output s_axi_ctrl_mgmt_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARVALID" *) input s_axi_ctrl_mgmt_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWADDR" *) input [15:0]s_axi_ctrl_mgmt_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWPROT" *) input [2:0]s_axi_ctrl_mgmt_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWREADY" *) output s_axi_ctrl_mgmt_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWVALID" *) input s_axi_ctrl_mgmt_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BREADY" *) input s_axi_ctrl_mgmt_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BRESP" *) output [1:0]s_axi_ctrl_mgmt_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BVALID" *) output s_axi_ctrl_mgmt_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RDATA" *) output [31:0]s_axi_ctrl_mgmt_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RREADY" *) input s_axi_ctrl_mgmt_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RRESP" *) output [1:0]s_axi_ctrl_mgmt_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RVALID" *) output s_axi_ctrl_mgmt_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WDATA" *) input [31:0]s_axi_ctrl_mgmt_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WREADY" *) output s_axi_ctrl_mgmt_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WSTRB" *) input [3:0]s_axi_ctrl_mgmt_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_mgmt, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_ctrl_mgmt_wvalid;

  wire aclk_ctrl;
  wire aclk_pcie;
  wire aresetn_ctrl;
  wire [0:0]aresetn_ctrl_slr0;
  wire [0:0]aresetn_ctrl_slr1;
  wire [0:0]aresetn_kernel2_slr0;
  wire [0:0]aresetn_kernel2_slr1;
  wire [0:0]aresetn_kernel_slr0;
  wire [0:0]aresetn_kernel_slr1;
  wire aresetn_pcie;
  wire [0:0]aresetn_pcie_slr0;
  wire [0:0]aresetn_pcie_slr1;
  wire clk_kernel;
  wire clk_kernel2;
  wire freerun_refclk;
  wire hbm_aclk;
  wire [0:0]hbm_aresetn;
  wire hbm_refclk;
  wire [15:0]s_axi_ctrl_mgmt_araddr;
  wire [2:0]s_axi_ctrl_mgmt_arprot;
  wire s_axi_ctrl_mgmt_arready;
  wire s_axi_ctrl_mgmt_arvalid;
  wire [15:0]s_axi_ctrl_mgmt_awaddr;
  wire [2:0]s_axi_ctrl_mgmt_awprot;
  wire s_axi_ctrl_mgmt_awready;
  wire s_axi_ctrl_mgmt_awvalid;
  wire s_axi_ctrl_mgmt_bready;
  wire [1:0]s_axi_ctrl_mgmt_bresp;
  wire s_axi_ctrl_mgmt_bvalid;
  wire [31:0]s_axi_ctrl_mgmt_rdata;
  wire s_axi_ctrl_mgmt_rready;
  wire [1:0]s_axi_ctrl_mgmt_rresp;
  wire s_axi_ctrl_mgmt_rvalid;
  wire [31:0]s_axi_ctrl_mgmt_wdata;
  wire s_axi_ctrl_mgmt_wready;
  wire [3:0]s_axi_ctrl_mgmt_wstrb;
  wire s_axi_ctrl_mgmt_wvalid;
  wire shutdown_clocks;

  (* HW_HANDOFF = "ulp_ulp_ucs_0.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0 inst
       (.aclk_ctrl(aclk_ctrl),
        .aclk_pcie(aclk_pcie),
        .aresetn_ctrl(aresetn_ctrl),
        .aresetn_ctrl_slr0(aresetn_ctrl_slr0),
        .aresetn_ctrl_slr1(aresetn_ctrl_slr1),
        .aresetn_kernel2_slr0(aresetn_kernel2_slr0),
        .aresetn_kernel2_slr1(aresetn_kernel2_slr1),
        .aresetn_kernel_slr0(aresetn_kernel_slr0),
        .aresetn_kernel_slr1(aresetn_kernel_slr1),
        .aresetn_pcie(aresetn_pcie),
        .aresetn_pcie_slr0(aresetn_pcie_slr0),
        .aresetn_pcie_slr1(aresetn_pcie_slr1),
        .clk_kernel(clk_kernel),
        .clk_kernel2(clk_kernel2),
        .freerun_refclk(freerun_refclk),
        .hbm_aclk(hbm_aclk),
        .hbm_aresetn(hbm_aresetn),
        .hbm_refclk(hbm_refclk),
        .s_axi_ctrl_mgmt_araddr(s_axi_ctrl_mgmt_araddr),
        .s_axi_ctrl_mgmt_arprot(s_axi_ctrl_mgmt_arprot),
        .s_axi_ctrl_mgmt_arready(s_axi_ctrl_mgmt_arready),
        .s_axi_ctrl_mgmt_arvalid(s_axi_ctrl_mgmt_arvalid),
        .s_axi_ctrl_mgmt_awaddr(s_axi_ctrl_mgmt_awaddr),
        .s_axi_ctrl_mgmt_awprot(s_axi_ctrl_mgmt_awprot),
        .s_axi_ctrl_mgmt_awready(s_axi_ctrl_mgmt_awready),
        .s_axi_ctrl_mgmt_awvalid(s_axi_ctrl_mgmt_awvalid),
        .s_axi_ctrl_mgmt_bready(s_axi_ctrl_mgmt_bready),
        .s_axi_ctrl_mgmt_bresp(s_axi_ctrl_mgmt_bresp),
        .s_axi_ctrl_mgmt_bvalid(s_axi_ctrl_mgmt_bvalid),
        .s_axi_ctrl_mgmt_rdata(s_axi_ctrl_mgmt_rdata),
        .s_axi_ctrl_mgmt_rready(s_axi_ctrl_mgmt_rready),
        .s_axi_ctrl_mgmt_rresp(s_axi_ctrl_mgmt_rresp),
        .s_axi_ctrl_mgmt_rvalid(s_axi_ctrl_mgmt_rvalid),
        .s_axi_ctrl_mgmt_wdata(s_axi_ctrl_mgmt_wdata),
        .s_axi_ctrl_mgmt_wready(s_axi_ctrl_mgmt_wready),
        .s_axi_ctrl_mgmt_wstrb(s_axi_ctrl_mgmt_wstrb),
        .s_axi_ctrl_mgmt_wvalid(s_axi_ctrl_mgmt_wvalid),
        .shutdown_clocks(shutdown_clocks));
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
