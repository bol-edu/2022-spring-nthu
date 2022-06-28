-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sun Jun 19 20:38:19 2022
-- Host        : ic22 running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_ulp_ucs_0_stub.vhdl
-- Design      : ulp_ulp_ucs_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu50-fsvh2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    freerun_refclk : in STD_LOGIC;
    aclk_ctrl : in STD_LOGIC;
    aclk_pcie : in STD_LOGIC;
    clk_kernel : out STD_LOGIC;
    clk_kernel2 : out STD_LOGIC;
    hbm_aclk : out STD_LOGIC;
    hbm_refclk : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    aresetn_pcie : in STD_LOGIC;
    aresetn_ctrl_slr0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_ctrl_slr1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_pcie_slr0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_pcie_slr1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_kernel_slr0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_kernel_slr1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_kernel2_slr0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_kernel2_slr1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    hbm_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    shutdown_clocks : in STD_LOGIC;
    s_axi_ctrl_mgmt_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_ctrl_mgmt_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_mgmt_arready : out STD_LOGIC;
    s_axi_ctrl_mgmt_arvalid : in STD_LOGIC;
    s_axi_ctrl_mgmt_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_ctrl_mgmt_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_mgmt_awready : out STD_LOGIC;
    s_axi_ctrl_mgmt_awvalid : in STD_LOGIC;
    s_axi_ctrl_mgmt_bready : in STD_LOGIC;
    s_axi_ctrl_mgmt_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_mgmt_bvalid : out STD_LOGIC;
    s_axi_ctrl_mgmt_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_mgmt_rready : in STD_LOGIC;
    s_axi_ctrl_mgmt_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_mgmt_rvalid : out STD_LOGIC;
    s_axi_ctrl_mgmt_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_mgmt_wready : out STD_LOGIC;
    s_axi_ctrl_mgmt_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_mgmt_wvalid : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "freerun_refclk,aclk_ctrl,aclk_pcie,clk_kernel,clk_kernel2,hbm_aclk,hbm_refclk,aresetn_ctrl,aresetn_pcie,aresetn_ctrl_slr0[0:0],aresetn_ctrl_slr1[0:0],aresetn_pcie_slr0[0:0],aresetn_pcie_slr1[0:0],aresetn_kernel_slr0[0:0],aresetn_kernel_slr1[0:0],aresetn_kernel2_slr0[0:0],aresetn_kernel2_slr1[0:0],hbm_aresetn[0:0],shutdown_clocks,s_axi_ctrl_mgmt_araddr[15:0],s_axi_ctrl_mgmt_arprot[2:0],s_axi_ctrl_mgmt_arready,s_axi_ctrl_mgmt_arvalid,s_axi_ctrl_mgmt_awaddr[15:0],s_axi_ctrl_mgmt_awprot[2:0],s_axi_ctrl_mgmt_awready,s_axi_ctrl_mgmt_awvalid,s_axi_ctrl_mgmt_bready,s_axi_ctrl_mgmt_bresp[1:0],s_axi_ctrl_mgmt_bvalid,s_axi_ctrl_mgmt_rdata[31:0],s_axi_ctrl_mgmt_rready,s_axi_ctrl_mgmt_rresp[1:0],s_axi_ctrl_mgmt_rvalid,s_axi_ctrl_mgmt_wdata[31:0],s_axi_ctrl_mgmt_wready,s_axi_ctrl_mgmt_wstrb[3:0],s_axi_ctrl_mgmt_wvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_22c0,Vivado 2021.2";
begin
end;
