// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Jun 19 20:36:29 2022
// Host        : ic22 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_build_info_0_sim_netlist.v
// Design      : bd_22c0_build_info_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
   (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ,
    E,
    S_AXI_ARESETN_0,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    start2,
    IP2Bus_WrAck,
    Q,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ,
    bus2ip_rnw_i,
    \Scratch_reg[0] );
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input start2;
  input IP2Bus_WrAck;
  input [4:0]Q;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  input bus2ip_rnw_i;
  input [2:0]\Scratch_reg[0] ;

  wire Bus2IP_CS;
  wire [0:0]E;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ;
  wire IP2Bus_WrAck;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  wire [4:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire [2:0]\Scratch_reg[0] ;
  wire bus2ip_rnw_i;
  wire start2;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IP2Bus_Ack[1]_i_1 
       (.I0(Bus2IP_CS),
        .I1(S_AXI_ARESETN),
        .O(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \IP2Bus_Data[31]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(Bus2IP_CS),
        .O(S_AXI_ARESETN_0));
  LUT6 #(
    .INIT(64'h0000000000005400)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ),
        .I1(Bus2IP_CS),
        .I2(start2),
        .I3(S_AXI_ARESETN),
        .I4(IP2Bus_WrAck),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(Bus2IP_CS),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004000)) 
    \Scratch[31]_i_1 
       (.I0(bus2ip_rnw_i),
        .I1(Bus2IP_CS),
        .I2(\Scratch_reg[0] [0]),
        .I3(\Scratch_reg[0] [2]),
        .I4(\Scratch_reg[0] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    s_axi_bvalid_i_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    s_axi_rvalid_i_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
   (SR,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    S_AXI_RDATA,
    S_AXI_ARREADY,
    S_AXI_AWREADY,
    E,
    S_AXI_ARESETN_0,
    D,
    S_AXI_ACLK,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    IP2Bus_WrAck,
    S_AXI_RREADY,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    Q,
    \IP2Bus_Data_reg[31] ,
    S_AXI_ARADDR,
    S_AXI_AWADDR);
  output [0:0]SR;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output [31:0]S_AXI_RDATA;
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  output [31:0]D;
  input S_AXI_ACLK;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input IP2Bus_WrAck;
  input S_AXI_RREADY;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input [31:0]Q;
  input [31:0]\IP2Bus_Data_reg[31] ;
  input [2:0]S_AXI_ARADDR;
  input [2:0]S_AXI_AWADDR;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]\IP2Bus_Data_reg[31] ;
  wire IP2Bus_WrAck;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [2:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [2:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_WVALID;
  wire s_axi_bvalid_i_reg;
  wire s_axi_rvalid_i_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment I_SLAVE_ATTACHMENT
       (.D(D),
        .E(E),
        .\IP2Bus_Data_reg[31] (\IP2Bus_Data_reg[31] ),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .Q(Q),
        .SR(SR),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(S_AXI_ARESETN_0),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg));
endmodule

(* CHECK_LICENSE_TYPE = "bd_22c0_build_info_0,shell_utils_build_info_v1_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_build_info_v1_0_0,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [4:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [4:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [4:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [1:0]NLW_U0_S_AXI_BRESP_UNCONNECTED;
  wire [1:0]NLW_U0_S_AXI_RRESP_UNCONNECTED;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_CORE_REVISION = "0" *) 
  (* C_MAJOR_VERSION = "2" *) 
  (* C_MINOR_VERSION = "0" *) 
  (* C_PATCH_VERSION = "0" *) 
  (* C_PERFORCE_CL = "2767516" *) 
  (* C_RESERVED_TAG = "0" *) 
  (* C_SUBSYSTEM_ID = "7" *) 
  (* C_S_AXI_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_VIV_VERSION = "2103584" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 U0
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR({S_AXI_ARADDR[4:2],1'b0,1'b0}),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR({S_AXI_AWADDR[4:2],1'b0,1'b0}),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(NLW_U0_S_AXI_BRESP_UNCONNECTED[1:0]),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(NLW_U0_S_AXI_RRESP_UNCONNECTED[1:0]),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WVALID(S_AXI_WVALID));
endmodule

(* C_CORE_REVISION = "0" *) (* C_MAJOR_VERSION = "2" *) (* C_MINOR_VERSION = "0" *) 
(* C_PATCH_VERSION = "0" *) (* C_PERFORCE_CL = "2767516" *) (* C_RESERVED_TAG = "0" *) 
(* C_SUBSYSTEM_ID = "7" *) (* C_S_AXI_ADDR_WIDTH = "5" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_VIV_VERSION = "2103584" *) (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0
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

  wire \<const0> ;
  wire \IP2Bus_Ack_reg_n_0_[1] ;
  wire \IP2Bus_Ack_reg_n_0_[2] ;
  wire \IP2Bus_Ack_reg_n_0_[3] ;
  wire [31:0]IP2Bus_Data;
  wire IP2Bus_WrAck;
  wire IP2Bus_WrAck_i_1_n_0;
  wire S_AXI_ACLK;
  wire [4:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [4:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WVALID;
  wire Scratch;
  wire \Scratch_reg_n_0_[0] ;
  wire \Scratch_reg_n_0_[10] ;
  wire \Scratch_reg_n_0_[11] ;
  wire \Scratch_reg_n_0_[12] ;
  wire \Scratch_reg_n_0_[13] ;
  wire \Scratch_reg_n_0_[14] ;
  wire \Scratch_reg_n_0_[15] ;
  wire \Scratch_reg_n_0_[16] ;
  wire \Scratch_reg_n_0_[17] ;
  wire \Scratch_reg_n_0_[18] ;
  wire \Scratch_reg_n_0_[19] ;
  wire \Scratch_reg_n_0_[1] ;
  wire \Scratch_reg_n_0_[20] ;
  wire \Scratch_reg_n_0_[21] ;
  wire \Scratch_reg_n_0_[22] ;
  wire \Scratch_reg_n_0_[23] ;
  wire \Scratch_reg_n_0_[24] ;
  wire \Scratch_reg_n_0_[25] ;
  wire \Scratch_reg_n_0_[26] ;
  wire \Scratch_reg_n_0_[27] ;
  wire \Scratch_reg_n_0_[28] ;
  wire \Scratch_reg_n_0_[29] ;
  wire \Scratch_reg_n_0_[2] ;
  wire \Scratch_reg_n_0_[30] ;
  wire \Scratch_reg_n_0_[31] ;
  wire \Scratch_reg_n_0_[3] ;
  wire \Scratch_reg_n_0_[4] ;
  wire \Scratch_reg_n_0_[5] ;
  wire \Scratch_reg_n_0_[6] ;
  wire \Scratch_reg_n_0_[7] ;
  wire \Scratch_reg_n_0_[8] ;
  wire \Scratch_reg_n_0_[9] ;
  wire axi_lite_ipif_1_n_3;
  wire axi_lite_ipif_1_n_39;
  wire p_0_in;
  wire [31:0]p_1_in;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  assign S_AXI_WREADY = S_AXI_AWREADY;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Ack_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_lite_ipif_1_n_3),
        .Q(\IP2Bus_Ack_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Ack_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\IP2Bus_Ack_reg_n_0_[1] ),
        .Q(\IP2Bus_Ack_reg_n_0_[2] ),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Ack_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\IP2Bus_Ack_reg_n_0_[2] ),
        .Q(\IP2Bus_Ack_reg_n_0_[3] ),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(IP2Bus_Data[0]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(IP2Bus_Data[10]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(IP2Bus_Data[11]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(IP2Bus_Data[12]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(IP2Bus_Data[13]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(IP2Bus_Data[14]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(IP2Bus_Data[15]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(IP2Bus_Data[16]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(IP2Bus_Data[17]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(IP2Bus_Data[18]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(IP2Bus_Data[19]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(IP2Bus_Data[1]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(IP2Bus_Data[20]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[21]),
        .Q(IP2Bus_Data[21]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[22]),
        .Q(IP2Bus_Data[22]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[23]),
        .Q(IP2Bus_Data[23]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[24]),
        .Q(IP2Bus_Data[24]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[25]),
        .Q(IP2Bus_Data[25]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[26]),
        .Q(IP2Bus_Data[26]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[27]),
        .Q(IP2Bus_Data[27]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[28]),
        .Q(IP2Bus_Data[28]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[29]),
        .Q(IP2Bus_Data[29]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(IP2Bus_Data[2]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[30]),
        .Q(IP2Bus_Data[30]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[31]),
        .Q(IP2Bus_Data[31]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(IP2Bus_Data[3]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(IP2Bus_Data[4]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(IP2Bus_Data[5]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(IP2Bus_Data[6]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(IP2Bus_Data[7]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(IP2Bus_Data[8]),
        .R(axi_lite_ipif_1_n_39));
  FDRE #(
    .INIT(1'b0)) 
    \IP2Bus_Data_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(IP2Bus_Data[9]),
        .R(axi_lite_ipif_1_n_39));
  LUT2 #(
    .INIT(4'h2)) 
    IP2Bus_WrAck_i_1
       (.I0(\IP2Bus_Ack_reg_n_0_[2] ),
        .I1(\IP2Bus_Ack_reg_n_0_[3] ),
        .O(IP2Bus_WrAck_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    IP2Bus_WrAck_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(IP2Bus_WrAck_i_1_n_0),
        .Q(IP2Bus_WrAck),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[0]),
        .Q(\Scratch_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[10]),
        .Q(\Scratch_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[11]),
        .Q(\Scratch_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[12]),
        .Q(\Scratch_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[13]),
        .Q(\Scratch_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[14]),
        .Q(\Scratch_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[15]),
        .Q(\Scratch_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[16]),
        .Q(\Scratch_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[17]),
        .Q(\Scratch_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[18]),
        .Q(\Scratch_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[19]),
        .Q(\Scratch_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[1]),
        .Q(\Scratch_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[20]),
        .Q(\Scratch_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[21]),
        .Q(\Scratch_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[22]),
        .Q(\Scratch_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[23]),
        .Q(\Scratch_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[24]),
        .Q(\Scratch_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[25]),
        .Q(\Scratch_reg_n_0_[25] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[26]),
        .Q(\Scratch_reg_n_0_[26] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[27]),
        .Q(\Scratch_reg_n_0_[27] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[28]),
        .Q(\Scratch_reg_n_0_[28] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[29]),
        .Q(\Scratch_reg_n_0_[29] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[2]),
        .Q(\Scratch_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[30]),
        .Q(\Scratch_reg_n_0_[30] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[31]),
        .Q(\Scratch_reg_n_0_[31] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[3]),
        .Q(\Scratch_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[4]),
        .Q(\Scratch_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[5]),
        .Q(\Scratch_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[6]),
        .Q(\Scratch_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[7]),
        .Q(\Scratch_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[8]),
        .Q(\Scratch_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \Scratch_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(Scratch),
        .D(S_AXI_WDATA[9]),
        .Q(\Scratch_reg_n_0_[9] ),
        .R(p_0_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif axi_lite_ipif_1
       (.D(p_1_in),
        .E(Scratch),
        .\IP2Bus_Data_reg[31] ({\Scratch_reg_n_0_[31] ,\Scratch_reg_n_0_[30] ,\Scratch_reg_n_0_[29] ,\Scratch_reg_n_0_[28] ,\Scratch_reg_n_0_[27] ,\Scratch_reg_n_0_[26] ,\Scratch_reg_n_0_[25] ,\Scratch_reg_n_0_[24] ,\Scratch_reg_n_0_[23] ,\Scratch_reg_n_0_[22] ,\Scratch_reg_n_0_[21] ,\Scratch_reg_n_0_[20] ,\Scratch_reg_n_0_[19] ,\Scratch_reg_n_0_[18] ,\Scratch_reg_n_0_[17] ,\Scratch_reg_n_0_[16] ,\Scratch_reg_n_0_[15] ,\Scratch_reg_n_0_[14] ,\Scratch_reg_n_0_[13] ,\Scratch_reg_n_0_[12] ,\Scratch_reg_n_0_[11] ,\Scratch_reg_n_0_[10] ,\Scratch_reg_n_0_[9] ,\Scratch_reg_n_0_[8] ,\Scratch_reg_n_0_[7] ,\Scratch_reg_n_0_[6] ,\Scratch_reg_n_0_[5] ,\Scratch_reg_n_0_[4] ,\Scratch_reg_n_0_[3] ,\Scratch_reg_n_0_[2] ,\Scratch_reg_n_0_[1] ,\Scratch_reg_n_0_[0] }),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (axi_lite_ipif_1_n_3),
        .Q(IP2Bus_Data),
        .SR(p_0_in),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[4:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(axi_lite_ipif_1_n_39),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[4:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .s_axi_bvalid_i_reg(S_AXI_BVALID),
        .s_axi_rvalid_i_reg(S_AXI_RVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
   (SR,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    S_AXI_RDATA,
    S_AXI_ARREADY,
    S_AXI_AWREADY,
    E,
    S_AXI_ARESETN_0,
    D,
    S_AXI_ACLK,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    IP2Bus_WrAck,
    S_AXI_RREADY,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    Q,
    \IP2Bus_Data_reg[31] ,
    S_AXI_ARADDR,
    S_AXI_AWADDR);
  output [0:0]SR;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output [31:0]S_AXI_RDATA;
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  output [31:0]D;
  input S_AXI_ACLK;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input IP2Bus_WrAck;
  input S_AXI_RREADY;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input [31:0]Q;
  input [31:0]\IP2Bus_Data_reg[31] ;
  input [2:0]S_AXI_ARADDR;
  input [2:0]S_AXI_AWADDR;

  wire [4:2]Bus2IP_Addr;
  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [4:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire [31:0]\IP2Bus_Data_reg[31] ;
  wire IP2Bus_WrAck;
  wire I_DECODER_n_1;
  wire I_DECODER_n_2;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [2:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [2:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_WREADY_INST_0_i_1_n_0;
  wire S_AXI_WVALID;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire bus2ip_rnw_i;
  wire clear;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write;
  wire is_write_reg_n_0;
  wire [4:0]plusOp;
  wire rst;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFFFF007000700070)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(S_AXI_ARVALID),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(S_AXI_BREADY),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(S_AXI_RREADY),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  LUT5 #(
    .INIT(32'h888F8888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(I_DECODER_n_1),
        .I3(IP2Bus_WrAck),
        .I4(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h040404FF04040404)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(S_AXI_ARVALID),
        .I3(I_DECODER_n_2),
        .I4(IP2Bus_WrAck),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAEEEEEAEA)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(s_axi_bresp_i),
        .I2(I_DECODER_n_2),
        .I3(I_DECODER_n_1),
        .I4(IP2Bus_WrAck),
        .I5(s_axi_rresp_i),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h002A2A2A)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(s_axi_rvalid_i_reg_0),
        .I2(S_AXI_RREADY),
        .I3(s_axi_bvalid_i_reg_0),
        .I4(S_AXI_BREADY),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(plusOp[4]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0803)) 
    \IP2Bus_Data[0]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [0]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[10]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[11]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [11]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[12]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [12]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h3803)) 
    \IP2Bus_Data[13]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [13]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[2]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[14]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[15]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0803)) 
    \IP2Bus_Data[16]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [16]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2F00)) 
    \IP2Bus_Data[17]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [17]),
        .I1(Bus2IP_Addr[3]),
        .I2(Bus2IP_Addr[4]),
        .I3(Bus2IP_Addr[2]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[18]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h3803)) 
    \IP2Bus_Data[19]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [19]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[2]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0803)) 
    \IP2Bus_Data[1]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [1]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0803)) 
    \IP2Bus_Data[20]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [20]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[21]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [21]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[22]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[23]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[24]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[25]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[26]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[27]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[28]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0803)) 
    \IP2Bus_Data[29]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [29]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h3803)) 
    \IP2Bus_Data[2]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[30]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [30]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[31]_i_2 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [31]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[3]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[4]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[5]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[6]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[7]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [7]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[8]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[9]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [9]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder I_DECODER
       (.E(E),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] (I_DECODER_n_1),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 (I_DECODER_n_2),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 (is_read_reg_n_0),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 (is_write_reg_n_0),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(S_AXI_ARESETN_0),
        .\Scratch_reg[0] (Bus2IP_Addr),
        .bus2ip_rnw_i(bus2ip_rnw_i),
        .start2(start2));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    S_AXI_ARREADY_INST_0
       (.I0(S_AXI_WREADY_INST_0_i_1_n_0),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(is_read_reg_n_0),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I5(IP2Bus_WrAck),
        .O(S_AXI_ARREADY));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    S_AXI_WREADY_INST_0
       (.I0(S_AXI_WREADY_INST_0_i_1_n_0),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(is_write_reg_n_0),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I5(IP2Bus_WrAck),
        .O(S_AXI_AWREADY));
  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_WREADY_INST_0_i_1
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(S_AXI_WREADY_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(S_AXI_ARADDR[2]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[2]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(Bus2IP_Addr[2]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(Bus2IP_Addr[3]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(Bus2IP_Addr[4]),
        .R(rst));
  FDRE bus2ip_rnw_i_reg
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(S_AXI_ARVALID),
        .Q(bus2ip_rnw_i),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    is_read_i_1
       (.I0(S_AXI_BREADY),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(S_AXI_RREADY),
        .I3(s_axi_rvalid_i_reg_0),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(is_read_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_read_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S_AXI_ARVALID),
        .O(is_read));
  FDRE is_read_reg
       (.C(S_AXI_ACLK),
        .CE(is_read_i_1_n_0),
        .D(is_read),
        .Q(is_read_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    is_write_i_1
       (.I0(S_AXI_ARVALID),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .O(is_write));
  FDRE is_write_reg
       (.C(S_AXI_ACLK),
        .CE(is_read_i_1_n_0),
        .D(is_write),
        .Q(is_write_reg_n_0),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(S_AXI_ARESETN),
        .O(SR));
  FDRE rst_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SR),
        .Q(rst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00E0FFFF00E000E0)) 
    s_axi_bvalid_i_i_1
       (.I0(I_DECODER_n_2),
        .I1(IP2Bus_WrAck),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(S_AXI_BREADY),
        .I5(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[0]),
        .Q(S_AXI_RDATA[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[10]),
        .Q(S_AXI_RDATA[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[11]),
        .Q(S_AXI_RDATA[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[12]),
        .Q(S_AXI_RDATA[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[13]),
        .Q(S_AXI_RDATA[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[14]),
        .Q(S_AXI_RDATA[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[15]),
        .Q(S_AXI_RDATA[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[16]),
        .Q(S_AXI_RDATA[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[17]),
        .Q(S_AXI_RDATA[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[18]),
        .Q(S_AXI_RDATA[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[19]),
        .Q(S_AXI_RDATA[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[1]),
        .Q(S_AXI_RDATA[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[20]),
        .Q(S_AXI_RDATA[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[21]),
        .Q(S_AXI_RDATA[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[22]),
        .Q(S_AXI_RDATA[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[23]),
        .Q(S_AXI_RDATA[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[24]),
        .Q(S_AXI_RDATA[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[25]),
        .Q(S_AXI_RDATA[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[26]),
        .Q(S_AXI_RDATA[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[27]),
        .Q(S_AXI_RDATA[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[28]),
        .Q(S_AXI_RDATA[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[29]),
        .Q(S_AXI_RDATA[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[2]),
        .Q(S_AXI_RDATA[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[30]),
        .Q(S_AXI_RDATA[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[31]),
        .Q(S_AXI_RDATA[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[3]),
        .Q(S_AXI_RDATA[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[4]),
        .Q(S_AXI_RDATA[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[5]),
        .Q(S_AXI_RDATA[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[6]),
        .Q(S_AXI_RDATA[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[7]),
        .Q(S_AXI_RDATA[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[8]),
        .Q(S_AXI_RDATA[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[9]),
        .Q(S_AXI_RDATA[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'h00E0FFFF00E000E0)) 
    s_axi_rvalid_i_i_1
       (.I0(I_DECODER_n_1),
        .I1(IP2Bus_WrAck),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(S_AXI_RREADY),
        .I5(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(rst));
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_ARVALID),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  LUT6 #(
    .INIT(64'h0FEEFFFF0FEEFF00)) 
    \state[0]_i_1 
       (.I0(IP2Bus_WrAck),
        .I1(I_DECODER_n_2),
        .I2(state1__2),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(S_AXI_ARVALID),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4440EEEA)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(IP2Bus_WrAck),
        .I3(I_DECODER_n_1),
        .I4(state1__2),
        .I5(\state[1]_i_2_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00FF0008)) 
    \state[1]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_ARVALID),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[1]_i_2_n_0 ));
  FDRE \state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(rst));
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
