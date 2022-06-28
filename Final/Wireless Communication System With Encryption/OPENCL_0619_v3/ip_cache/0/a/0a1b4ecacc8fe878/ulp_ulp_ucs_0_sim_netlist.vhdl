-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sun Jun 19 20:38:19 2022
-- Host        : ic22 running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_ulp_ucs_0_sim_netlist.vhdl
-- Design      : ulp_ulp_ucs_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu50-fsvh2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_status_concat_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    In3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_status_concat_0 : entity is "bd_22c0_gpio_ucs_status_concat_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_status_concat_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_status_concat_0 : entity is "xlconcat_v2_1_4_xlconcat,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_status_concat_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_status_concat_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in2\ : STD_LOGIC_VECTOR ( 13 downto 0 );
begin
  \^in0\(0) <= In0(0);
  \^in2\(13 downto 0) <= In2(13 downto 0);
  dout(31) <= \<const0>\;
  dout(30) <= \<const0>\;
  dout(29 downto 16) <= \^in2\(13 downto 0);
  dout(15) <= \<const0>\;
  dout(14) <= \<const0>\;
  dout(13) <= \<const0>\;
  dout(12) <= \<const0>\;
  dout(11) <= \<const0>\;
  dout(10) <= \<const0>\;
  dout(9) <= \<const0>\;
  dout(8) <= \<const0>\;
  dout(7) <= \<const0>\;
  dout(6) <= \<const0>\;
  dout(5) <= \<const0>\;
  dout(4) <= \<const0>\;
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \^in0\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_check_gpio_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_check_gpio_0 : entity is "bd_22c0_slice_check_gpio_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_check_gpio_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_check_gpio_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_check_gpio_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_check_gpio_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  Dout(15 downto 0) <= \^din\(20 downto 5);
  \^din\(20 downto 5) <= Din(20 downto 5);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_startup_done_gpio_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_startup_done_gpio_0 : entity is "bd_22c0_slice_startup_done_gpio_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_startup_done_gpio_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_startup_done_gpio_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_startup_done_gpio_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_startup_done_gpio_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  Dout(0) <= \^din\(0);
  \^din\(0) <= Din(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_0_0 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 111 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 111 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_xbar_0;
  signal \<const0>\ : STD_LOGIC;
  signal \^m00_axi_araddr\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^m00_axi_awaddr\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^m01_axi_araddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m01_axi_awaddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m02_axi_araddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m02_axi_awaddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m03_axi_araddr\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^m03_axi_awaddr\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^m04_axi_araddr\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^m04_axi_awaddr\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^m06_axi_araddr\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^m06_axi_awaddr\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal xbar_n_105 : STD_LOGIC;
  signal xbar_n_106 : STD_LOGIC;
  signal xbar_n_107 : STD_LOGIC;
  signal xbar_n_108 : STD_LOGIC;
  signal xbar_n_109 : STD_LOGIC;
  signal xbar_n_110 : STD_LOGIC;
  signal xbar_n_111 : STD_LOGIC;
  signal xbar_n_121 : STD_LOGIC;
  signal xbar_n_122 : STD_LOGIC;
  signal xbar_n_123 : STD_LOGIC;
  signal xbar_n_124 : STD_LOGIC;
  signal xbar_n_125 : STD_LOGIC;
  signal xbar_n_126 : STD_LOGIC;
  signal xbar_n_127 : STD_LOGIC;
  signal xbar_n_137 : STD_LOGIC;
  signal xbar_n_138 : STD_LOGIC;
  signal xbar_n_139 : STD_LOGIC;
  signal xbar_n_140 : STD_LOGIC;
  signal xbar_n_141 : STD_LOGIC;
  signal xbar_n_142 : STD_LOGIC;
  signal xbar_n_143 : STD_LOGIC;
  signal xbar_n_144 : STD_LOGIC;
  signal xbar_n_145 : STD_LOGIC;
  signal xbar_n_146 : STD_LOGIC;
  signal xbar_n_147 : STD_LOGIC;
  signal xbar_n_41 : STD_LOGIC;
  signal xbar_n_42 : STD_LOGIC;
  signal xbar_n_43 : STD_LOGIC;
  signal xbar_n_44 : STD_LOGIC;
  signal xbar_n_447 : STD_LOGIC;
  signal xbar_n_448 : STD_LOGIC;
  signal xbar_n_449 : STD_LOGIC;
  signal xbar_n_45 : STD_LOGIC;
  signal xbar_n_450 : STD_LOGIC;
  signal xbar_n_451 : STD_LOGIC;
  signal xbar_n_479 : STD_LOGIC;
  signal xbar_n_480 : STD_LOGIC;
  signal xbar_n_481 : STD_LOGIC;
  signal xbar_n_482 : STD_LOGIC;
  signal xbar_n_483 : STD_LOGIC;
  signal xbar_n_495 : STD_LOGIC;
  signal xbar_n_496 : STD_LOGIC;
  signal xbar_n_497 : STD_LOGIC;
  signal xbar_n_498 : STD_LOGIC;
  signal xbar_n_499 : STD_LOGIC;
  signal xbar_n_511 : STD_LOGIC;
  signal xbar_n_512 : STD_LOGIC;
  signal xbar_n_513 : STD_LOGIC;
  signal xbar_n_514 : STD_LOGIC;
  signal xbar_n_515 : STD_LOGIC;
  signal xbar_n_516 : STD_LOGIC;
  signal xbar_n_517 : STD_LOGIC;
  signal xbar_n_527 : STD_LOGIC;
  signal xbar_n_528 : STD_LOGIC;
  signal xbar_n_529 : STD_LOGIC;
  signal xbar_n_530 : STD_LOGIC;
  signal xbar_n_531 : STD_LOGIC;
  signal xbar_n_532 : STD_LOGIC;
  signal xbar_n_533 : STD_LOGIC;
  signal xbar_n_543 : STD_LOGIC;
  signal xbar_n_544 : STD_LOGIC;
  signal xbar_n_545 : STD_LOGIC;
  signal xbar_n_546 : STD_LOGIC;
  signal xbar_n_547 : STD_LOGIC;
  signal xbar_n_548 : STD_LOGIC;
  signal xbar_n_549 : STD_LOGIC;
  signal xbar_n_550 : STD_LOGIC;
  signal xbar_n_551 : STD_LOGIC;
  signal xbar_n_552 : STD_LOGIC;
  signal xbar_n_553 : STD_LOGIC;
  signal xbar_n_73 : STD_LOGIC;
  signal xbar_n_74 : STD_LOGIC;
  signal xbar_n_75 : STD_LOGIC;
  signal xbar_n_76 : STD_LOGIC;
  signal xbar_n_77 : STD_LOGIC;
  signal xbar_n_89 : STD_LOGIC;
  signal xbar_n_90 : STD_LOGIC;
  signal xbar_n_91 : STD_LOGIC;
  signal xbar_n_92 : STD_LOGIC;
  signal xbar_n_93 : STD_LOGIC;
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 20 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xbar : label is "axi_crossbar_v2_1_26_axi_crossbar,Vivado 2021.2";
begin
  M00_AXI_araddr(15) <= \<const0>\;
  M00_AXI_araddr(14) <= \<const0>\;
  M00_AXI_araddr(13) <= \<const0>\;
  M00_AXI_araddr(12) <= \<const0>\;
  M00_AXI_araddr(11) <= \<const0>\;
  M00_AXI_araddr(10) <= \<const0>\;
  M00_AXI_araddr(9) <= \<const0>\;
  M00_AXI_araddr(8) <= \<const0>\;
  M00_AXI_araddr(7) <= \<const0>\;
  M00_AXI_araddr(6) <= \<const0>\;
  M00_AXI_araddr(5) <= \<const0>\;
  M00_AXI_araddr(4 downto 0) <= \^m00_axi_araddr\(4 downto 0);
  M00_AXI_awaddr(15) <= \<const0>\;
  M00_AXI_awaddr(14) <= \<const0>\;
  M00_AXI_awaddr(13) <= \<const0>\;
  M00_AXI_awaddr(12) <= \<const0>\;
  M00_AXI_awaddr(11) <= \<const0>\;
  M00_AXI_awaddr(10) <= \<const0>\;
  M00_AXI_awaddr(9) <= \<const0>\;
  M00_AXI_awaddr(8) <= \<const0>\;
  M00_AXI_awaddr(7) <= \<const0>\;
  M00_AXI_awaddr(6) <= \<const0>\;
  M00_AXI_awaddr(5) <= \<const0>\;
  M00_AXI_awaddr(4 downto 0) <= \^m00_axi_awaddr\(4 downto 0);
  M01_AXI_araddr(15) <= \<const0>\;
  M01_AXI_araddr(14) <= \<const0>\;
  M01_AXI_araddr(13) <= \<const0>\;
  M01_AXI_araddr(12) <= \<const0>\;
  M01_AXI_araddr(11) <= \<const0>\;
  M01_AXI_araddr(10) <= \<const0>\;
  M01_AXI_araddr(9) <= \<const0>\;
  M01_AXI_araddr(8 downto 0) <= \^m01_axi_araddr\(8 downto 0);
  M01_AXI_awaddr(15) <= \<const0>\;
  M01_AXI_awaddr(14) <= \<const0>\;
  M01_AXI_awaddr(13) <= \<const0>\;
  M01_AXI_awaddr(12) <= \<const0>\;
  M01_AXI_awaddr(11) <= \<const0>\;
  M01_AXI_awaddr(10) <= \<const0>\;
  M01_AXI_awaddr(9) <= \<const0>\;
  M01_AXI_awaddr(8 downto 0) <= \^m01_axi_awaddr\(8 downto 0);
  M02_AXI_araddr(15) <= \<const0>\;
  M02_AXI_araddr(14) <= \<const0>\;
  M02_AXI_araddr(13) <= \<const0>\;
  M02_AXI_araddr(12) <= \<const0>\;
  M02_AXI_araddr(11) <= \<const0>\;
  M02_AXI_araddr(10) <= \<const0>\;
  M02_AXI_araddr(9) <= \<const0>\;
  M02_AXI_araddr(8 downto 0) <= \^m02_axi_araddr\(8 downto 0);
  M02_AXI_awaddr(15) <= \<const0>\;
  M02_AXI_awaddr(14) <= \<const0>\;
  M02_AXI_awaddr(13) <= \<const0>\;
  M02_AXI_awaddr(12) <= \<const0>\;
  M02_AXI_awaddr(11) <= \<const0>\;
  M02_AXI_awaddr(10) <= \<const0>\;
  M02_AXI_awaddr(9) <= \<const0>\;
  M02_AXI_awaddr(8 downto 0) <= \^m02_axi_awaddr\(8 downto 0);
  M03_AXI_araddr(15) <= \<const0>\;
  M03_AXI_araddr(14) <= \<const0>\;
  M03_AXI_araddr(13) <= \<const0>\;
  M03_AXI_araddr(12) <= \<const0>\;
  M03_AXI_araddr(11) <= \<const0>\;
  M03_AXI_araddr(10 downto 0) <= \^m03_axi_araddr\(10 downto 0);
  M03_AXI_awaddr(15) <= \<const0>\;
  M03_AXI_awaddr(14) <= \<const0>\;
  M03_AXI_awaddr(13) <= \<const0>\;
  M03_AXI_awaddr(12) <= \<const0>\;
  M03_AXI_awaddr(11) <= \<const0>\;
  M03_AXI_awaddr(10 downto 0) <= \^m03_axi_awaddr\(10 downto 0);
  M04_AXI_araddr(15) <= \<const0>\;
  M04_AXI_araddr(14) <= \<const0>\;
  M04_AXI_araddr(13) <= \<const0>\;
  M04_AXI_araddr(12) <= \<const0>\;
  M04_AXI_araddr(11) <= \<const0>\;
  M04_AXI_araddr(10 downto 0) <= \^m04_axi_araddr\(10 downto 0);
  M04_AXI_awaddr(15) <= \<const0>\;
  M04_AXI_awaddr(14) <= \<const0>\;
  M04_AXI_awaddr(13) <= \<const0>\;
  M04_AXI_awaddr(12) <= \<const0>\;
  M04_AXI_awaddr(11) <= \<const0>\;
  M04_AXI_awaddr(10 downto 0) <= \^m04_axi_awaddr\(10 downto 0);
  M06_AXI_araddr(15) <= \<const0>\;
  M06_AXI_araddr(14) <= \<const0>\;
  M06_AXI_araddr(13) <= \<const0>\;
  M06_AXI_araddr(12) <= \<const0>\;
  M06_AXI_araddr(11) <= \<const0>\;
  M06_AXI_araddr(10 downto 0) <= \^m06_axi_araddr\(10 downto 0);
  M06_AXI_awaddr(15) <= \<const0>\;
  M06_AXI_awaddr(14) <= \<const0>\;
  M06_AXI_awaddr(13) <= \<const0>\;
  M06_AXI_awaddr(12) <= \<const0>\;
  M06_AXI_awaddr(11) <= \<const0>\;
  M06_AXI_awaddr(10 downto 0) <= \^m06_axi_awaddr\(10 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xbar: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_xbar_0
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(111) => xbar_n_447,
      m_axi_araddr(110) => xbar_n_448,
      m_axi_araddr(109) => xbar_n_449,
      m_axi_araddr(108) => xbar_n_450,
      m_axi_araddr(107) => xbar_n_451,
      m_axi_araddr(106 downto 96) => \^m06_axi_araddr\(10 downto 0),
      m_axi_araddr(95 downto 80) => M05_AXI_araddr(15 downto 0),
      m_axi_araddr(79) => xbar_n_479,
      m_axi_araddr(78) => xbar_n_480,
      m_axi_araddr(77) => xbar_n_481,
      m_axi_araddr(76) => xbar_n_482,
      m_axi_araddr(75) => xbar_n_483,
      m_axi_araddr(74 downto 64) => \^m04_axi_araddr\(10 downto 0),
      m_axi_araddr(63) => xbar_n_495,
      m_axi_araddr(62) => xbar_n_496,
      m_axi_araddr(61) => xbar_n_497,
      m_axi_araddr(60) => xbar_n_498,
      m_axi_araddr(59) => xbar_n_499,
      m_axi_araddr(58 downto 48) => \^m03_axi_araddr\(10 downto 0),
      m_axi_araddr(47) => xbar_n_511,
      m_axi_araddr(46) => xbar_n_512,
      m_axi_araddr(45) => xbar_n_513,
      m_axi_araddr(44) => xbar_n_514,
      m_axi_araddr(43) => xbar_n_515,
      m_axi_araddr(42) => xbar_n_516,
      m_axi_araddr(41) => xbar_n_517,
      m_axi_araddr(40 downto 32) => \^m02_axi_araddr\(8 downto 0),
      m_axi_araddr(31) => xbar_n_527,
      m_axi_araddr(30) => xbar_n_528,
      m_axi_araddr(29) => xbar_n_529,
      m_axi_araddr(28) => xbar_n_530,
      m_axi_araddr(27) => xbar_n_531,
      m_axi_araddr(26) => xbar_n_532,
      m_axi_araddr(25) => xbar_n_533,
      m_axi_araddr(24 downto 16) => \^m01_axi_araddr\(8 downto 0),
      m_axi_araddr(15) => xbar_n_543,
      m_axi_araddr(14) => xbar_n_544,
      m_axi_araddr(13) => xbar_n_545,
      m_axi_araddr(12) => xbar_n_546,
      m_axi_araddr(11) => xbar_n_547,
      m_axi_araddr(10) => xbar_n_548,
      m_axi_araddr(9) => xbar_n_549,
      m_axi_araddr(8) => xbar_n_550,
      m_axi_araddr(7) => xbar_n_551,
      m_axi_araddr(6) => xbar_n_552,
      m_axi_araddr(5) => xbar_n_553,
      m_axi_araddr(4 downto 0) => \^m00_axi_araddr\(4 downto 0),
      m_axi_arprot(20 downto 18) => NLW_xbar_m_axi_arprot_UNCONNECTED(20 downto 18),
      m_axi_arprot(17 downto 15) => M05_AXI_arprot(2 downto 0),
      m_axi_arprot(14 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(14 downto 0),
      m_axi_arready(6) => M06_AXI_arready,
      m_axi_arready(5) => M05_AXI_arready(0),
      m_axi_arready(4) => M04_AXI_arready,
      m_axi_arready(3) => M03_AXI_arready,
      m_axi_arready(2) => M02_AXI_arready,
      m_axi_arready(1) => M01_AXI_arready,
      m_axi_arready(0) => M00_AXI_arready,
      m_axi_arvalid(6) => M06_AXI_arvalid,
      m_axi_arvalid(5) => M05_AXI_arvalid(0),
      m_axi_arvalid(4) => M04_AXI_arvalid,
      m_axi_arvalid(3) => M03_AXI_arvalid,
      m_axi_arvalid(2) => M02_AXI_arvalid,
      m_axi_arvalid(1) => M01_AXI_arvalid,
      m_axi_arvalid(0) => M00_AXI_arvalid,
      m_axi_awaddr(111) => xbar_n_41,
      m_axi_awaddr(110) => xbar_n_42,
      m_axi_awaddr(109) => xbar_n_43,
      m_axi_awaddr(108) => xbar_n_44,
      m_axi_awaddr(107) => xbar_n_45,
      m_axi_awaddr(106 downto 96) => \^m06_axi_awaddr\(10 downto 0),
      m_axi_awaddr(95 downto 80) => M05_AXI_awaddr(15 downto 0),
      m_axi_awaddr(79) => xbar_n_73,
      m_axi_awaddr(78) => xbar_n_74,
      m_axi_awaddr(77) => xbar_n_75,
      m_axi_awaddr(76) => xbar_n_76,
      m_axi_awaddr(75) => xbar_n_77,
      m_axi_awaddr(74 downto 64) => \^m04_axi_awaddr\(10 downto 0),
      m_axi_awaddr(63) => xbar_n_89,
      m_axi_awaddr(62) => xbar_n_90,
      m_axi_awaddr(61) => xbar_n_91,
      m_axi_awaddr(60) => xbar_n_92,
      m_axi_awaddr(59) => xbar_n_93,
      m_axi_awaddr(58 downto 48) => \^m03_axi_awaddr\(10 downto 0),
      m_axi_awaddr(47) => xbar_n_105,
      m_axi_awaddr(46) => xbar_n_106,
      m_axi_awaddr(45) => xbar_n_107,
      m_axi_awaddr(44) => xbar_n_108,
      m_axi_awaddr(43) => xbar_n_109,
      m_axi_awaddr(42) => xbar_n_110,
      m_axi_awaddr(41) => xbar_n_111,
      m_axi_awaddr(40 downto 32) => \^m02_axi_awaddr\(8 downto 0),
      m_axi_awaddr(31) => xbar_n_121,
      m_axi_awaddr(30) => xbar_n_122,
      m_axi_awaddr(29) => xbar_n_123,
      m_axi_awaddr(28) => xbar_n_124,
      m_axi_awaddr(27) => xbar_n_125,
      m_axi_awaddr(26) => xbar_n_126,
      m_axi_awaddr(25) => xbar_n_127,
      m_axi_awaddr(24 downto 16) => \^m01_axi_awaddr\(8 downto 0),
      m_axi_awaddr(15) => xbar_n_137,
      m_axi_awaddr(14) => xbar_n_138,
      m_axi_awaddr(13) => xbar_n_139,
      m_axi_awaddr(12) => xbar_n_140,
      m_axi_awaddr(11) => xbar_n_141,
      m_axi_awaddr(10) => xbar_n_142,
      m_axi_awaddr(9) => xbar_n_143,
      m_axi_awaddr(8) => xbar_n_144,
      m_axi_awaddr(7) => xbar_n_145,
      m_axi_awaddr(6) => xbar_n_146,
      m_axi_awaddr(5) => xbar_n_147,
      m_axi_awaddr(4 downto 0) => \^m00_axi_awaddr\(4 downto 0),
      m_axi_awprot(20 downto 18) => NLW_xbar_m_axi_awprot_UNCONNECTED(20 downto 18),
      m_axi_awprot(17 downto 15) => M05_AXI_awprot(2 downto 0),
      m_axi_awprot(14 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(14 downto 0),
      m_axi_awready(6) => M06_AXI_awready,
      m_axi_awready(5) => M05_AXI_awready(0),
      m_axi_awready(4) => M04_AXI_awready,
      m_axi_awready(3) => M03_AXI_awready,
      m_axi_awready(2) => M02_AXI_awready,
      m_axi_awready(1) => M01_AXI_awready,
      m_axi_awready(0) => M00_AXI_awready,
      m_axi_awvalid(6) => M06_AXI_awvalid,
      m_axi_awvalid(5) => M05_AXI_awvalid(0),
      m_axi_awvalid(4) => M04_AXI_awvalid,
      m_axi_awvalid(3) => M03_AXI_awvalid,
      m_axi_awvalid(2) => M02_AXI_awvalid,
      m_axi_awvalid(1) => M01_AXI_awvalid,
      m_axi_awvalid(0) => M00_AXI_awvalid,
      m_axi_bready(6) => M06_AXI_bready,
      m_axi_bready(5) => M05_AXI_bready(0),
      m_axi_bready(4) => M04_AXI_bready,
      m_axi_bready(3) => M03_AXI_bready,
      m_axi_bready(2) => M02_AXI_bready,
      m_axi_bready(1) => M01_AXI_bready,
      m_axi_bready(0) => M00_AXI_bready,
      m_axi_bresp(13 downto 12) => M06_AXI_bresp(1 downto 0),
      m_axi_bresp(11 downto 10) => M05_AXI_bresp(1 downto 0),
      m_axi_bresp(9 downto 8) => M04_AXI_bresp(1 downto 0),
      m_axi_bresp(7 downto 6) => M03_AXI_bresp(1 downto 0),
      m_axi_bresp(5 downto 4) => M02_AXI_bresp(1 downto 0),
      m_axi_bresp(3 downto 2) => M01_AXI_bresp(1 downto 0),
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid(6) => M06_AXI_bvalid,
      m_axi_bvalid(5) => M05_AXI_bvalid(0),
      m_axi_bvalid(4) => M04_AXI_bvalid,
      m_axi_bvalid(3) => M03_AXI_bvalid,
      m_axi_bvalid(2) => M02_AXI_bvalid,
      m_axi_bvalid(1) => M01_AXI_bvalid,
      m_axi_bvalid(0) => M00_AXI_bvalid,
      m_axi_rdata(223 downto 192) => M06_AXI_rdata(31 downto 0),
      m_axi_rdata(191 downto 160) => M05_AXI_rdata(31 downto 0),
      m_axi_rdata(159 downto 128) => M04_AXI_rdata(31 downto 0),
      m_axi_rdata(127 downto 96) => M03_AXI_rdata(31 downto 0),
      m_axi_rdata(95 downto 64) => M02_AXI_rdata(31 downto 0),
      m_axi_rdata(63 downto 32) => M01_AXI_rdata(31 downto 0),
      m_axi_rdata(31 downto 0) => M00_AXI_rdata(31 downto 0),
      m_axi_rready(6) => M06_AXI_rready,
      m_axi_rready(5) => M05_AXI_rready(0),
      m_axi_rready(4) => M04_AXI_rready,
      m_axi_rready(3) => M03_AXI_rready,
      m_axi_rready(2) => M02_AXI_rready,
      m_axi_rready(1) => M01_AXI_rready,
      m_axi_rready(0) => M00_AXI_rready,
      m_axi_rresp(13 downto 12) => M06_AXI_rresp(1 downto 0),
      m_axi_rresp(11 downto 10) => M05_AXI_rresp(1 downto 0),
      m_axi_rresp(9 downto 8) => M04_AXI_rresp(1 downto 0),
      m_axi_rresp(7 downto 6) => M03_AXI_rresp(1 downto 0),
      m_axi_rresp(5 downto 4) => M02_AXI_rresp(1 downto 0),
      m_axi_rresp(3 downto 2) => M01_AXI_rresp(1 downto 0),
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid(6) => M06_AXI_rvalid,
      m_axi_rvalid(5) => M05_AXI_rvalid(0),
      m_axi_rvalid(4) => M04_AXI_rvalid,
      m_axi_rvalid(3) => M03_AXI_rvalid,
      m_axi_rvalid(2) => M02_AXI_rvalid,
      m_axi_rvalid(1) => M01_AXI_rvalid,
      m_axi_rvalid(0) => M00_AXI_rvalid,
      m_axi_wdata(223 downto 192) => M06_AXI_wdata(31 downto 0),
      m_axi_wdata(191 downto 160) => M05_AXI_wdata(31 downto 0),
      m_axi_wdata(159 downto 128) => M04_AXI_wdata(31 downto 0),
      m_axi_wdata(127 downto 96) => M03_AXI_wdata(31 downto 0),
      m_axi_wdata(95 downto 64) => M02_AXI_wdata(31 downto 0),
      m_axi_wdata(63 downto 32) => M01_AXI_wdata(31 downto 0),
      m_axi_wdata(31 downto 0) => M00_AXI_wdata(31 downto 0),
      m_axi_wready(6) => M06_AXI_wready,
      m_axi_wready(5) => M05_AXI_wready(0),
      m_axi_wready(4) => M04_AXI_wready,
      m_axi_wready(3) => M03_AXI_wready,
      m_axi_wready(2) => M02_AXI_wready,
      m_axi_wready(1) => M01_AXI_wready,
      m_axi_wready(0) => M00_AXI_wready,
      m_axi_wstrb(27 downto 24) => M06_AXI_wstrb(3 downto 0),
      m_axi_wstrb(23 downto 20) => M05_AXI_wstrb(3 downto 0),
      m_axi_wstrb(19 downto 16) => M04_AXI_wstrb(3 downto 0),
      m_axi_wstrb(15 downto 12) => M03_AXI_wstrb(3 downto 0),
      m_axi_wstrb(11 downto 8) => M02_AXI_wstrb(3 downto 0),
      m_axi_wstrb(7 downto 4) => M01_AXI_wstrb(3 downto 0),
      m_axi_wstrb(3 downto 0) => M00_AXI_wstrb(3 downto 0),
      m_axi_wvalid(6) => M06_AXI_wvalid,
      m_axi_wvalid(5) => M05_AXI_wvalid(0),
      m_axi_wvalid(4) => M04_AXI_wvalid,
      m_axi_wvalid(3) => M03_AXI_wvalid,
      m_axi_wvalid(2) => M02_AXI_wvalid,
      m_axi_wvalid(1) => M01_AXI_wvalid,
      m_axi_wvalid(0) => M00_AXI_wvalid,
      s_axi_araddr(15 downto 0) => S00_AXI_araddr(15 downto 0),
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arready(0) => S00_AXI_arready(0),
      s_axi_arvalid(0) => S00_AXI_arvalid(0),
      s_axi_awaddr(15 downto 0) => S00_AXI_awaddr(15 downto 0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awready(0) => S00_AXI_awready(0),
      s_axi_awvalid(0) => S00_AXI_awvalid(0),
      s_axi_bready(0) => S00_AXI_bready(0),
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid(0) => S00_AXI_bvalid(0),
      s_axi_rdata(31 downto 0) => S00_AXI_rdata(31 downto 0),
      s_axi_rready(0) => S00_AXI_rready(0),
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid(0) => S00_AXI_rvalid(0),
      s_axi_wdata(31 downto 0) => S00_AXI_wdata(31 downto 0),
      s_axi_wready(0) => S00_AXI_wready(0),
      s_axi_wstrb(3 downto 0) => S00_AXI_wstrb(3 downto 0),
      s_axi_wvalid(0) => S00_AXI_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_9N0HK1 is
  port (
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_9N0HK1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_9N0HK1 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_auto_cc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_auto_cc_0;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_24_axi_clock_converter,Vivado 2021.2";
begin
auto_cc: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_auto_cc_0
     port map (
      m_axi_aclk => ACLK,
      m_axi_araddr(15 downto 0) => m_axi_araddr(15 downto 0),
      m_axi_aresetn => ARESETN,
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arready => s_axi_arready(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(15 downto 0) => m_axi_awaddr(15 downto 0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awready => s_axi_awready(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      m_axi_bvalid => s_axi_bvalid(0),
      m_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      m_axi_rvalid => s_axi_rvalid(0),
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => s_axi_wready(0),
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_aclk => S00_ACLK,
      s_axi_araddr(15 downto 0) => S00_AXI_araddr(15 downto 0),
      s_axi_aresetn => S00_ARESETN,
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arready => S00_AXI_arready(0),
      s_axi_arvalid => S00_AXI_arvalid(0),
      s_axi_awaddr(15 downto 0) => S00_AXI_awaddr(15 downto 0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awready => S00_AXI_awready(0),
      s_axi_awvalid => S00_AXI_awvalid(0),
      s_axi_bready => S00_AXI_bready(0),
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid => S00_AXI_bvalid(0),
      s_axi_rdata(31 downto 0) => S00_AXI_rdata(31 downto 0),
      s_axi_rready => S00_AXI_rready(0),
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid => S00_AXI_rvalid(0),
      s_axi_wdata(31 downto 0) => S00_AXI_wdata(31 downto 0),
      s_axi_wready => S00_AXI_wready(0),
      s_axi_wstrb(3 downto 0) => S00_AXI_wstrb(3 downto 0),
      s_axi_wvalid => S00_AXI_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_1_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_1_0 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_xbar_1;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xbar : label is "axi_crossbar_v2_1_26_axi_crossbar,Vivado 2021.2";
begin
s00_couplers: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_9N0HK1
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      S00_ACLK => S00_ACLK,
      S00_ARESETN => S00_ARESETN,
      S00_AXI_araddr(15 downto 0) => S00_AXI_araddr(15 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arready(0) => S00_AXI_arready(0),
      S00_AXI_arvalid(0) => S00_AXI_arvalid(0),
      S00_AXI_awaddr(15 downto 0) => S00_AXI_awaddr(15 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awready(0) => S00_AXI_awready(0),
      S00_AXI_awvalid(0) => S00_AXI_awvalid(0),
      S00_AXI_bready(0) => S00_AXI_bready(0),
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid(0) => S00_AXI_bvalid(0),
      S00_AXI_rdata(31 downto 0) => S00_AXI_rdata(31 downto 0),
      S00_AXI_rready(0) => S00_AXI_rready(0),
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid(0) => S00_AXI_rvalid(0),
      S00_AXI_wdata(31 downto 0) => S00_AXI_wdata(31 downto 0),
      S00_AXI_wready(0) => S00_AXI_wready(0),
      S00_AXI_wstrb(3 downto 0) => S00_AXI_wstrb(3 downto 0),
      S00_AXI_wvalid(0) => S00_AXI_wvalid(0),
      m_axi_araddr(15 downto 0) => s00_couplers_to_xbar_ARADDR(15 downto 0),
      m_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      m_axi_arvalid => s00_couplers_to_xbar_ARVALID,
      m_axi_awaddr(15 downto 0) => s00_couplers_to_xbar_AWADDR(15 downto 0),
      m_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      m_axi_awvalid => s00_couplers_to_xbar_AWVALID,
      m_axi_bready => s00_couplers_to_xbar_BREADY,
      m_axi_rready => s00_couplers_to_xbar_RREADY,
      m_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      m_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      m_axi_wvalid => s00_couplers_to_xbar_WVALID,
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY,
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY
    );
xbar: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_xbar_1
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(63 downto 48) => M03_AXI_araddr(15 downto 0),
      m_axi_araddr(47 downto 32) => M02_AXI_araddr(15 downto 0),
      m_axi_araddr(31 downto 16) => M01_AXI_araddr(15 downto 0),
      m_axi_araddr(15 downto 0) => M00_AXI_araddr(15 downto 0),
      m_axi_arprot(11 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(11 downto 0),
      m_axi_arready(3) => M03_AXI_arready,
      m_axi_arready(2) => M02_AXI_arready,
      m_axi_arready(1) => M01_AXI_arready,
      m_axi_arready(0) => M00_AXI_arready,
      m_axi_arvalid(3) => M03_AXI_arvalid,
      m_axi_arvalid(2) => M02_AXI_arvalid,
      m_axi_arvalid(1) => M01_AXI_arvalid,
      m_axi_arvalid(0) => M00_AXI_arvalid,
      m_axi_awaddr(63 downto 48) => M03_AXI_awaddr(15 downto 0),
      m_axi_awaddr(47 downto 32) => M02_AXI_awaddr(15 downto 0),
      m_axi_awaddr(31 downto 16) => M01_AXI_awaddr(15 downto 0),
      m_axi_awaddr(15 downto 0) => M00_AXI_awaddr(15 downto 0),
      m_axi_awprot(11 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(11 downto 0),
      m_axi_awready(3) => M03_AXI_awready,
      m_axi_awready(2) => M02_AXI_awready,
      m_axi_awready(1) => M01_AXI_awready,
      m_axi_awready(0) => M00_AXI_awready,
      m_axi_awvalid(3) => M03_AXI_awvalid,
      m_axi_awvalid(2) => M02_AXI_awvalid,
      m_axi_awvalid(1) => M01_AXI_awvalid,
      m_axi_awvalid(0) => M00_AXI_awvalid,
      m_axi_bready(3) => M03_AXI_bready,
      m_axi_bready(2) => M02_AXI_bready,
      m_axi_bready(1) => M01_AXI_bready,
      m_axi_bready(0) => M00_AXI_bready,
      m_axi_bresp(7 downto 6) => M03_AXI_bresp(1 downto 0),
      m_axi_bresp(5 downto 4) => M02_AXI_bresp(1 downto 0),
      m_axi_bresp(3 downto 2) => M01_AXI_bresp(1 downto 0),
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid(3) => M03_AXI_bvalid,
      m_axi_bvalid(2) => M02_AXI_bvalid,
      m_axi_bvalid(1) => M01_AXI_bvalid,
      m_axi_bvalid(0) => M00_AXI_bvalid,
      m_axi_rdata(127 downto 96) => M03_AXI_rdata(31 downto 0),
      m_axi_rdata(95 downto 64) => M02_AXI_rdata(31 downto 0),
      m_axi_rdata(63 downto 32) => M01_AXI_rdata(31 downto 0),
      m_axi_rdata(31 downto 0) => M00_AXI_rdata(31 downto 0),
      m_axi_rready(3) => M03_AXI_rready,
      m_axi_rready(2) => M02_AXI_rready,
      m_axi_rready(1) => M01_AXI_rready,
      m_axi_rready(0) => M00_AXI_rready,
      m_axi_rresp(7 downto 6) => M03_AXI_rresp(1 downto 0),
      m_axi_rresp(5 downto 4) => M02_AXI_rresp(1 downto 0),
      m_axi_rresp(3 downto 2) => M01_AXI_rresp(1 downto 0),
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid(3) => M03_AXI_rvalid,
      m_axi_rvalid(2) => M02_AXI_rvalid,
      m_axi_rvalid(1) => M01_AXI_rvalid,
      m_axi_rvalid(0) => M00_AXI_rvalid,
      m_axi_wdata(127 downto 96) => M03_AXI_wdata(31 downto 0),
      m_axi_wdata(95 downto 64) => M02_AXI_wdata(31 downto 0),
      m_axi_wdata(63 downto 32) => M01_AXI_wdata(31 downto 0),
      m_axi_wdata(31 downto 0) => M00_AXI_wdata(31 downto 0),
      m_axi_wready(3) => M03_AXI_wready,
      m_axi_wready(2) => M02_AXI_wready,
      m_axi_wready(1) => M01_AXI_wready,
      m_axi_wready(0) => M00_AXI_wready,
      m_axi_wstrb(15 downto 12) => M03_AXI_wstrb(3 downto 0),
      m_axi_wstrb(11 downto 8) => M02_AXI_wstrb(3 downto 0),
      m_axi_wstrb(7 downto 4) => M01_AXI_wstrb(3 downto 0),
      m_axi_wstrb(3 downto 0) => M00_AXI_wstrb(3 downto 0),
      m_axi_wvalid(3) => M03_AXI_wvalid,
      m_axi_wvalid(2) => M02_AXI_wvalid,
      m_axi_wvalid(1) => M01_AXI_wvalid,
      m_axi_wvalid(0) => M00_AXI_wvalid,
      s_axi_araddr(15 downto 0) => s00_couplers_to_xbar_ARADDR(15 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(15 downto 0) => s00_couplers_to_xbar_AWADDR(15 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0 is
  port (
    aclk_ctrl : in STD_LOGIC;
    aclk_pcie : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    aresetn_ctrl_slr0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_ctrl_slr1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_kernel2_slr0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_kernel2_slr1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_kernel_slr0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_kernel_slr1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_pcie : in STD_LOGIC;
    aresetn_pcie_slr0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_pcie_slr1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_kernel : out STD_LOGIC;
    clk_kernel2 : out STD_LOGIC;
    freerun_refclk : in STD_LOGIC;
    hbm_aclk : out STD_LOGIC;
    hbm_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    hbm_refclk : in STD_LOGIC;
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
    s_axi_ctrl_mgmt_wvalid : in STD_LOGIC;
    shutdown_clocks : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0 : entity is "ulp_ulp_ucs_0.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_adder_check_gpio_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_adder_check_gpio_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_build_info_0 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_build_info_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_hbm_adapt_0 is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_hbm_adapt_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel2_adapt_0 is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel2_adapt_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel2_cont_adapt_0 is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel2_cont_adapt_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel_adapt_0 is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel_adapt_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel_cont_adapt_0 is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel_cont_adapt_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_hbm_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    clk_out1_ce : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    power_down : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_hbm_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_kernel_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    power_down : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_kernel_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_kernel2_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    power_down : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_kernel2_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_avg_0 is
  port (
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Rate_Upd_Tog : in STD_LOGIC;
    Rate : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rate_Avg : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_avg_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_kernel_0 is
  port (
    Clk_In : in STD_LOGIC;
    Rst_In : in STD_LOGIC;
    Locked : in STD_LOGIC;
    Startup_Done : in STD_LOGIC;
    Rate_Upd_Tog : in STD_LOGIC;
    Rate_In : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rst_Async : out STD_LOGIC;
    Clk_Out : out STD_LOGIC;
    Clk_Out_Cont : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_kernel_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_kernel2_0 is
  port (
    Clk_In : in STD_LOGIC;
    Rst_In : in STD_LOGIC;
    Locked : in STD_LOGIC;
    Startup_Done : in STD_LOGIC;
    Rate_Upd_Tog : in STD_LOGIC;
    Rate_In : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rst_Async : out STD_LOGIC;
    Clk_Out : out STD_LOGIC;
    Clk_Out_Cont : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_kernel2_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr0_0 is
  port (
    d : in STD_LOGIC_VECTOR ( 0 to 0 );
    q : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr0_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr1_0 is
  port (
    d : in STD_LOGIC_VECTOR ( 0 to 0 );
    q : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr1_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_hbm_0 is
  port (
    d : in STD_LOGIC_VECTOR ( 0 to 0 );
    q : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_hbm_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel2_slr0_0 is
  port (
    d : in STD_LOGIC_VECTOR ( 0 to 0 );
    q : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel2_slr0_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel2_slr1_0 is
  port (
    d : in STD_LOGIC_VECTOR ( 0 to 0 );
    q : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel2_slr1_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_slr0_0 is
  port (
    d : in STD_LOGIC_VECTOR ( 0 to 0 );
    q : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_slr0_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_slr1_0 is
  port (
    d : in STD_LOGIC_VECTOR ( 0 to 0 );
    q : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_slr1_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr0_0 is
  port (
    d : in STD_LOGIC_VECTOR ( 0 to 0 );
    q : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr0_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr1_0 is
  port (
    d : in STD_LOGIC_VECTOR ( 0 to 0 );
    q : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr1_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_aclk_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    test_clk0 : in STD_LOGIC;
    test_clk1 : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_aclk_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_hbm_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    test_clk0 : in STD_LOGIC;
    test_clk3 : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_hbm_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_kernel_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    test_clk0 : in STD_LOGIC;
    test_clk1 : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_kernel_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_kernel2_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    test_clk0 : in STD_LOGIC;
    test_clk1 : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_kernel2_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gapping_demand_toggle_0 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gapping_demand_toggle_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gapping_demand_update_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gapping_demand_update_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_gapping_demand_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_gapping_demand_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_control_status_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_control_status_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_or_shutdown_clocks_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_or_shutdown_clocks_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_freerun_refclk_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_freerun_refclk_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_hbm_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_hbm_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_kernel_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_kernel_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_kernel2_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_kernel2_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_reduce_check_gpio_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Res : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_reduce_check_gpio_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_shutdown_clocks_latch_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_shutdown_clocks_latch_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_vip_ctrl_mgmt_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_vip_ctrl_mgmt_0;
  signal \^clock_throttling_avg\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^gapping_demand_toggle\ : STD_LOGIC;
  signal \^gapping_demand_update\ : STD_LOGIC;
  signal \^gpio_gapping_demand\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal adder_check_gpio_sum : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal aresetn_freerun_refclk : STD_LOGIC;
  signal aresetn_kernel : STD_LOGIC;
  signal aresetn_kernel2 : STD_LOGIC;
  signal aresetn_kernel2_async : STD_LOGIC;
  signal aresetn_kernel_async : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M01_AXI_RREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M01_AXI_RVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M01_AXI_WREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M01_AXI_WVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M02_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M02_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M02_AXI_BREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M02_AXI_BVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M02_AXI_RREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M02_AXI_RVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M02_AXI_WREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M02_AXI_WVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M03_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M03_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M03_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M03_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M03_AXI_BREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M03_AXI_BVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M03_AXI_RREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M03_AXI_RVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M03_AXI_WREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M03_AXI_WVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M04_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M04_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M04_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M04_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M04_AXI_BREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M04_AXI_BVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M04_AXI_RREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M04_AXI_RVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M04_AXI_WREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M04_AXI_WVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M05_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M05_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M05_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M05_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M05_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M05_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M05_AXI_BREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M05_AXI_BVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M05_AXI_RREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M05_AXI_RVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M05_AXI_WREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M05_AXI_WVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M06_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M06_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M06_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M06_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M06_AXI_BREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M06_AXI_BVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M06_AXI_RREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M06_AXI_RVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M06_AXI_WREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_0_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_ctrl_mgmt_0_M06_AXI_WVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M00_AXI_BREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M00_AXI_BVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M00_AXI_RREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M00_AXI_RVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M00_AXI_WREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M00_AXI_WVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M01_AXI_BREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M01_AXI_BVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M01_AXI_RREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M01_AXI_RVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M01_AXI_WREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M01_AXI_WVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M02_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M02_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M02_AXI_BREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M02_AXI_BVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M02_AXI_RREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M02_AXI_RVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M02_AXI_WREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M02_AXI_WVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M03_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M03_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M03_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M03_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M03_AXI_BREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M03_AXI_BVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M03_AXI_RREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M03_AXI_RVALID : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M03_AXI_WREADY : STD_LOGIC;
  signal axi_ic_ctrl_mgmt_1_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_ctrl_mgmt_1_M03_AXI_WVALID : STD_LOGIC;
  signal clk_hbm_adapt_in : STD_LOGIC;
  signal clk_hbm_locked : STD_LOGIC;
  signal \^clk_kernel\ : STD_LOGIC;
  signal \^clk_kernel2\ : STD_LOGIC;
  signal clk_kernel2_cont : STD_LOGIC;
  signal clk_kernel2_locked : STD_LOGIC;
  signal clk_kernel2_unbuffered : STD_LOGIC;
  signal clk_kernel_cont : STD_LOGIC;
  signal clk_kernel_locked : STD_LOGIC;
  signal clk_kernel_unbuffered : STD_LOGIC;
  signal clock_throttling_kernel2_clk_out : STD_LOGIC;
  signal clock_throttling_kernel2_clk_out_cont : STD_LOGIC;
  signal clock_throttling_kernel_clk_out : STD_LOGIC;
  signal clock_throttling_kernel_clk_out_cont : STD_LOGIC;
  signal gapping_demand_bready : STD_LOGIC;
  signal gapping_demand_bvalid : STD_LOGIC;
  signal gpio_ucs_control_status_gpio2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal gpio_ucs_status_concat_dout : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \^hbm_aclk\ : STD_LOGIC;
  signal hbm_aresetn_int : STD_LOGIC;
  signal or_shutdown_clocks_res : STD_LOGIC;
  signal reduce_check_gpio_res : STD_LOGIC;
  signal s_axi_ctrl_mgmt_vip_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_axi_ctrl_mgmt_vip_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_ctrl_mgmt_vip_ARREADY : STD_LOGIC;
  signal s_axi_ctrl_mgmt_vip_ARVALID : STD_LOGIC;
  signal s_axi_ctrl_mgmt_vip_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_axi_ctrl_mgmt_vip_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_ctrl_mgmt_vip_AWREADY : STD_LOGIC;
  signal s_axi_ctrl_mgmt_vip_AWVALID : STD_LOGIC;
  signal s_axi_ctrl_mgmt_vip_BREADY : STD_LOGIC;
  signal s_axi_ctrl_mgmt_vip_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_ctrl_mgmt_vip_BVALID : STD_LOGIC;
  signal s_axi_ctrl_mgmt_vip_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_ctrl_mgmt_vip_RREADY : STD_LOGIC;
  signal s_axi_ctrl_mgmt_vip_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_ctrl_mgmt_vip_RVALID : STD_LOGIC;
  signal s_axi_ctrl_mgmt_vip_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_ctrl_mgmt_vip_WREADY : STD_LOGIC;
  signal s_axi_ctrl_mgmt_vip_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_ctrl_mgmt_vip_WVALID : STD_LOGIC;
  signal shutdown_clocks_latched : STD_LOGIC;
  signal slice_check_gpio_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal startup_done : STD_LOGIC;
  signal NLW_axi_ic_ctrl_mgmt_0_M00_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 5 );
  signal NLW_axi_ic_ctrl_mgmt_0_M00_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 5 );
  signal NLW_axi_ic_ctrl_mgmt_0_M01_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 9 );
  signal NLW_axi_ic_ctrl_mgmt_0_M01_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 9 );
  signal NLW_axi_ic_ctrl_mgmt_0_M02_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 9 );
  signal NLW_axi_ic_ctrl_mgmt_0_M02_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 9 );
  signal NLW_axi_ic_ctrl_mgmt_0_M03_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 11 );
  signal NLW_axi_ic_ctrl_mgmt_0_M03_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 11 );
  signal NLW_axi_ic_ctrl_mgmt_0_M04_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 11 );
  signal NLW_axi_ic_ctrl_mgmt_0_M04_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 11 );
  signal NLW_axi_ic_ctrl_mgmt_0_M06_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 11 );
  signal NLW_axi_ic_ctrl_mgmt_0_M06_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 11 );
  signal NLW_gpio_ucs_status_concat_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_psreset_freerun_refclk_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_freerun_refclk_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_freerun_refclk_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_freerun_refclk_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_hbm_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_hbm_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_hbm_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_hbm_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_kernel_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_kernel_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_kernel_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_kernel_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_kernel2_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_kernel2_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_kernel2_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_kernel2_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of adder_check_gpio : label is "c_addsub_v12_0_14,Vivado 2021.2";
  attribute X_CORE_INFO of build_info : label is "shell_utils_build_info_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of clk_hbm_adapt : label is "clk_metadata_adapter_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of clk_kernel2_adapt : label is "clk_metadata_adapter_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of clk_kernel2_cont_adapt : label is "clk_metadata_adapter_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of clk_kernel_adapt : label is "clk_metadata_adapter_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of clk_kernel_cont_adapt : label is "clk_metadata_adapter_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of clock_throttling_avg : label is "shell_utils_clock_throttling_avg,Vivado 2021.2";
  attribute X_CORE_INFO of clock_throttling_kernel : label is "shell_utils_clock_throttling,Vivado 2021.2";
  attribute X_CORE_INFO of clock_throttling_kernel2 : label is "shell_utils_clock_throttling,Vivado 2021.2";
  attribute X_CORE_INFO of fanout_aresetn_ctrl_slr0 : label is "pipeline_reg_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of fanout_aresetn_ctrl_slr1 : label is "pipeline_reg_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of fanout_aresetn_hbm : label is "pipeline_reg_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of fanout_aresetn_kernel2_slr0 : label is "pipeline_reg_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of fanout_aresetn_kernel2_slr1 : label is "pipeline_reg_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of fanout_aresetn_kernel_slr0 : label is "pipeline_reg_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of fanout_aresetn_kernel_slr1 : label is "pipeline_reg_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of fanout_aresetn_pcie_slr0 : label is "pipeline_reg_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of fanout_aresetn_pcie_slr1 : label is "pipeline_reg_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of frequency_counter_aclk : label is "shell_utils_frequency_counter_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of frequency_counter_hbm : label is "shell_utils_frequency_counter_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of frequency_counter_kernel : label is "shell_utils_frequency_counter_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of frequency_counter_kernel2 : label is "shell_utils_frequency_counter_v1_0_0,Vivado 2021.2";
  attribute X_CORE_INFO of gapping_demand_toggle : label is "c_counter_binary_v12_0_14,Vivado 2021.2";
  attribute X_CORE_INFO of gapping_demand_update : label is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2021.2";
  attribute X_CORE_INFO of gpio_gapping_demand : label is "axi_gpio,Vivado 2021.2";
  attribute X_CORE_INFO of gpio_ucs_control_status : label is "axi_gpio,Vivado 2021.2";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of gpio_ucs_status_concat : label is "bd_22c0_gpio_ucs_status_concat_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of gpio_ucs_status_concat : label is "yes";
  attribute X_CORE_INFO of gpio_ucs_status_concat : label is "xlconcat_v2_1_4_xlconcat,Vivado 2021.2";
  attribute X_CORE_INFO of or_shutdown_clocks : label is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2021.2";
  attribute X_CORE_INFO of psreset_freerun_refclk : label is "proc_sys_reset,Vivado 2021.2";
  attribute X_CORE_INFO of psreset_hbm : label is "proc_sys_reset,Vivado 2021.2";
  attribute X_CORE_INFO of psreset_kernel : label is "proc_sys_reset,Vivado 2021.2";
  attribute X_CORE_INFO of psreset_kernel2 : label is "proc_sys_reset,Vivado 2021.2";
  attribute X_CORE_INFO of reduce_check_gpio : label is "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2021.2";
  attribute X_CORE_INFO of shutdown_clocks_latch : label is "c_shift_ram_v12_0_14,Vivado 2021.2";
  attribute CHECK_LICENSE_TYPE of slice_check_gpio : label is "bd_22c0_slice_check_gpio_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of slice_check_gpio : label is "yes";
  attribute X_CORE_INFO of slice_check_gpio : label is "xlslice_v1_0_2_xlslice,Vivado 2021.2";
  attribute CHECK_LICENSE_TYPE of slice_startup_done_gpio : label is "bd_22c0_slice_startup_done_gpio_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of slice_startup_done_gpio : label is "yes";
  attribute X_CORE_INFO of slice_startup_done_gpio : label is "xlslice_v1_0_2_xlslice,Vivado 2021.2";
  attribute X_CORE_INFO of vip_ctrl_mgmt : label is "axi_vip_v1_1_11_top,Vivado 2021.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk_ctrl : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK_CTRL CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk_ctrl : signal is "XIL_INTERFACENAME CLK.ACLK_CTRL, ASSOCIATED_BUSIF s_axi_ctrl_mgmt, ASSOCIATED_CLKEN CE, ASSOCIATED_RESET aresetn_ctrl:aresetn_ctrl_slr0:aresetn_ctrl_slr1, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of aclk_pcie : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK_PCIE CLK";
  attribute X_INTERFACE_PARAMETER of aclk_pcie : signal is "XIL_INTERFACENAME CLK.ACLK_PCIE, ASSOCIATED_RESET aresetn_pcie:aresetn_pcie_slr0:aresetn_pcie_slr1, CLK_DOMAIN cd_pcie_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of aresetn_ctrl : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL RST";
  attribute X_INTERFACE_PARAMETER of aresetn_ctrl : signal is "XIL_INTERFACENAME RST.ARESETN_CTRL, INSERT_VIP 0, POLARITY ACTIVE_LOW, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of aresetn_pcie : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE RST";
  attribute X_INTERFACE_PARAMETER of aresetn_pcie : signal is "XIL_INTERFACENAME RST.ARESETN_PCIE, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of clk_kernel : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_KERNEL CLK";
  attribute X_INTERFACE_PARAMETER of clk_kernel : signal is "XIL_INTERFACENAME CLK.CLK_KERNEL, ASSOCIATED_RESET aresetn_kernel_slr0:aresetn_kernel_slr1, CLK_DOMAIN cd_kernel_00, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_kernel2 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_KERNEL2 CLK";
  attribute X_INTERFACE_PARAMETER of clk_kernel2 : signal is "XIL_INTERFACENAME CLK.CLK_KERNEL2, ASSOCIATED_RESET aresetn_kernel2_slr0:aresetn_kernel2_slr1, CLK_DOMAIN cd_kernel_01, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of freerun_refclk : signal is "xilinx.com:signal:clock:1.0 CLK.FREERUN_REFCLK CLK";
  attribute X_INTERFACE_PARAMETER of freerun_refclk : signal is "XIL_INTERFACENAME CLK.FREERUN_REFCLK, CLK_DOMAIN cd_freerun_ref_00, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of hbm_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.HBM_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of hbm_aclk : signal is "XIL_INTERFACENAME CLK.HBM_ACLK, ASSOCIATED_RESET hbm_aresetn, CLK_DOMAIN cd_hbm, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of hbm_refclk : signal is "xilinx.com:signal:clock:1.0 CLK.HBM_REFCLK CLK";
  attribute X_INTERFACE_PARAMETER of hbm_refclk : signal is "XIL_INTERFACENAME CLK.HBM_REFCLK, CLK_DOMAIN cd_freerun_ref_00, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WVALID";
  attribute X_INTERFACE_INFO of aresetn_ctrl_slr0 : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL_SLR0 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_ctrl_slr0 : signal is "XIL_INTERFACENAME RST.ARESETN_CTRL_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of aresetn_ctrl_slr1 : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL_SLR1 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_ctrl_slr1 : signal is "XIL_INTERFACENAME RST.ARESETN_CTRL_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of aresetn_kernel2_slr0 : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL2_SLR0 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_kernel2_slr0 : signal is "XIL_INTERFACENAME RST.ARESETN_KERNEL2_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of aresetn_kernel2_slr1 : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL2_SLR1 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_kernel2_slr1 : signal is "XIL_INTERFACENAME RST.ARESETN_KERNEL2_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of aresetn_kernel_slr0 : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_SLR0 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_kernel_slr0 : signal is "XIL_INTERFACENAME RST.ARESETN_KERNEL_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of aresetn_kernel_slr1 : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_KERNEL_SLR1 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_kernel_slr1 : signal is "XIL_INTERFACENAME RST.ARESETN_KERNEL_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of aresetn_pcie_slr0 : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE_SLR0 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_pcie_slr0 : signal is "XIL_INTERFACENAME RST.ARESETN_PCIE_SLR0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of aresetn_pcie_slr1 : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_PCIE_SLR1 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_pcie_slr1 : signal is "XIL_INTERFACENAME RST.ARESETN_PCIE_SLR1, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of hbm_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.HBM_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of hbm_aresetn : signal is "XIL_INTERFACENAME RST.HBM_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARADDR";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_mgmt_araddr : signal is "XIL_INTERFACENAME s_axi_ctrl_mgmt, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WSTRB";
begin
  clk_kernel <= \^clk_kernel\;
  clk_kernel2 <= \^clk_kernel2\;
  hbm_aclk <= \^hbm_aclk\;
adder_check_gpio: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_adder_check_gpio_0
     port map (
      A(15 downto 0) => slice_check_gpio_dout(15 downto 0),
      S(15 downto 0) => adder_check_gpio_sum(15 downto 0)
    );
axi_ic_ctrl_mgmt_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_0_0
     port map (
      ACLK => aclk_ctrl,
      ARESETN => aresetn_ctrl,
      M00_ACLK => '0',
      M00_ARESETN => '0',
      M00_AXI_araddr(15 downto 5) => NLW_axi_ic_ctrl_mgmt_0_M00_AXI_araddr_UNCONNECTED(15 downto 5),
      M00_AXI_araddr(4 downto 0) => axi_ic_ctrl_mgmt_0_M00_AXI_ARADDR(4 downto 0),
      M00_AXI_arready => axi_ic_ctrl_mgmt_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_ic_ctrl_mgmt_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(15 downto 5) => NLW_axi_ic_ctrl_mgmt_0_M00_AXI_awaddr_UNCONNECTED(15 downto 5),
      M00_AXI_awaddr(4 downto 0) => axi_ic_ctrl_mgmt_0_M00_AXI_AWADDR(4 downto 0),
      M00_AXI_awready => axi_ic_ctrl_mgmt_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_ic_ctrl_mgmt_0_M00_AXI_AWVALID,
      M00_AXI_bready => axi_ic_ctrl_mgmt_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_ic_ctrl_mgmt_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_ic_ctrl_mgmt_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_ic_ctrl_mgmt_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_ic_ctrl_mgmt_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_ic_ctrl_mgmt_0_M00_AXI_WVALID,
      M01_ACLK => '0',
      M01_ARESETN => '0',
      M01_AXI_araddr(15 downto 9) => NLW_axi_ic_ctrl_mgmt_0_M01_AXI_araddr_UNCONNECTED(15 downto 9),
      M01_AXI_araddr(8 downto 0) => axi_ic_ctrl_mgmt_0_M01_AXI_ARADDR(8 downto 0),
      M01_AXI_arready => axi_ic_ctrl_mgmt_0_M01_AXI_ARREADY,
      M01_AXI_arvalid => axi_ic_ctrl_mgmt_0_M01_AXI_ARVALID,
      M01_AXI_awaddr(15 downto 9) => NLW_axi_ic_ctrl_mgmt_0_M01_AXI_awaddr_UNCONNECTED(15 downto 9),
      M01_AXI_awaddr(8 downto 0) => axi_ic_ctrl_mgmt_0_M01_AXI_AWADDR(8 downto 0),
      M01_AXI_awready => axi_ic_ctrl_mgmt_0_M01_AXI_AWREADY,
      M01_AXI_awvalid => axi_ic_ctrl_mgmt_0_M01_AXI_AWVALID,
      M01_AXI_bready => gapping_demand_bready,
      M01_AXI_bresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => gapping_demand_bvalid,
      M01_AXI_rdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => axi_ic_ctrl_mgmt_0_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_ic_ctrl_mgmt_0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => axi_ic_ctrl_mgmt_0_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_0_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_ic_ctrl_mgmt_0_M01_AXI_WVALID,
      M02_ACLK => '0',
      M02_ARESETN => '0',
      M02_AXI_araddr(15 downto 9) => NLW_axi_ic_ctrl_mgmt_0_M02_AXI_araddr_UNCONNECTED(15 downto 9),
      M02_AXI_araddr(8 downto 0) => axi_ic_ctrl_mgmt_0_M02_AXI_ARADDR(8 downto 0),
      M02_AXI_arready => axi_ic_ctrl_mgmt_0_M02_AXI_ARREADY,
      M02_AXI_arvalid => axi_ic_ctrl_mgmt_0_M02_AXI_ARVALID,
      M02_AXI_awaddr(15 downto 9) => NLW_axi_ic_ctrl_mgmt_0_M02_AXI_awaddr_UNCONNECTED(15 downto 9),
      M02_AXI_awaddr(8 downto 0) => axi_ic_ctrl_mgmt_0_M02_AXI_AWADDR(8 downto 0),
      M02_AXI_awready => axi_ic_ctrl_mgmt_0_M02_AXI_AWREADY,
      M02_AXI_awvalid => axi_ic_ctrl_mgmt_0_M02_AXI_AWVALID,
      M02_AXI_bready => axi_ic_ctrl_mgmt_0_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => axi_ic_ctrl_mgmt_0_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => axi_ic_ctrl_mgmt_0_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => axi_ic_ctrl_mgmt_0_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => axi_ic_ctrl_mgmt_0_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_0_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => axi_ic_ctrl_mgmt_0_M02_AXI_WVALID,
      M03_ACLK => '0',
      M03_ARESETN => '0',
      M03_AXI_araddr(15 downto 11) => NLW_axi_ic_ctrl_mgmt_0_M03_AXI_araddr_UNCONNECTED(15 downto 11),
      M03_AXI_araddr(10 downto 0) => axi_ic_ctrl_mgmt_0_M03_AXI_ARADDR(10 downto 0),
      M03_AXI_arready => axi_ic_ctrl_mgmt_0_M03_AXI_ARREADY,
      M03_AXI_arvalid => axi_ic_ctrl_mgmt_0_M03_AXI_ARVALID,
      M03_AXI_awaddr(15 downto 11) => NLW_axi_ic_ctrl_mgmt_0_M03_AXI_awaddr_UNCONNECTED(15 downto 11),
      M03_AXI_awaddr(10 downto 0) => axi_ic_ctrl_mgmt_0_M03_AXI_AWADDR(10 downto 0),
      M03_AXI_awready => axi_ic_ctrl_mgmt_0_M03_AXI_AWREADY,
      M03_AXI_awvalid => axi_ic_ctrl_mgmt_0_M03_AXI_AWVALID,
      M03_AXI_bready => axi_ic_ctrl_mgmt_0_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => axi_ic_ctrl_mgmt_0_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => axi_ic_ctrl_mgmt_0_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => axi_ic_ctrl_mgmt_0_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => axi_ic_ctrl_mgmt_0_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_0_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => axi_ic_ctrl_mgmt_0_M03_AXI_WVALID,
      M04_ACLK => '0',
      M04_ARESETN => '0',
      M04_AXI_araddr(15 downto 11) => NLW_axi_ic_ctrl_mgmt_0_M04_AXI_araddr_UNCONNECTED(15 downto 11),
      M04_AXI_araddr(10 downto 0) => axi_ic_ctrl_mgmt_0_M04_AXI_ARADDR(10 downto 0),
      M04_AXI_arready => axi_ic_ctrl_mgmt_0_M04_AXI_ARREADY,
      M04_AXI_arvalid => axi_ic_ctrl_mgmt_0_M04_AXI_ARVALID,
      M04_AXI_awaddr(15 downto 11) => NLW_axi_ic_ctrl_mgmt_0_M04_AXI_awaddr_UNCONNECTED(15 downto 11),
      M04_AXI_awaddr(10 downto 0) => axi_ic_ctrl_mgmt_0_M04_AXI_AWADDR(10 downto 0),
      M04_AXI_awready => axi_ic_ctrl_mgmt_0_M04_AXI_AWREADY,
      M04_AXI_awvalid => axi_ic_ctrl_mgmt_0_M04_AXI_AWVALID,
      M04_AXI_bready => axi_ic_ctrl_mgmt_0_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => axi_ic_ctrl_mgmt_0_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => axi_ic_ctrl_mgmt_0_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => axi_ic_ctrl_mgmt_0_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => axi_ic_ctrl_mgmt_0_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_0_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => axi_ic_ctrl_mgmt_0_M04_AXI_WVALID,
      M05_ACLK => '0',
      M05_ARESETN => '0',
      M05_AXI_araddr(15 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_ARADDR(15 downto 0),
      M05_AXI_arprot(2 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_ARPROT(2 downto 0),
      M05_AXI_arready(0) => axi_ic_ctrl_mgmt_0_M05_AXI_ARREADY,
      M05_AXI_arvalid(0) => axi_ic_ctrl_mgmt_0_M05_AXI_ARVALID,
      M05_AXI_awaddr(15 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_AWADDR(15 downto 0),
      M05_AXI_awprot(2 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_AWPROT(2 downto 0),
      M05_AXI_awready(0) => axi_ic_ctrl_mgmt_0_M05_AXI_AWREADY,
      M05_AXI_awvalid(0) => axi_ic_ctrl_mgmt_0_M05_AXI_AWVALID,
      M05_AXI_bready(0) => axi_ic_ctrl_mgmt_0_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid(0) => axi_ic_ctrl_mgmt_0_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready(0) => axi_ic_ctrl_mgmt_0_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid(0) => axi_ic_ctrl_mgmt_0_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready(0) => axi_ic_ctrl_mgmt_0_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid(0) => axi_ic_ctrl_mgmt_0_M05_AXI_WVALID,
      M06_ACLK => '0',
      M06_ARESETN => '0',
      M06_AXI_araddr(15 downto 11) => NLW_axi_ic_ctrl_mgmt_0_M06_AXI_araddr_UNCONNECTED(15 downto 11),
      M06_AXI_araddr(10 downto 0) => axi_ic_ctrl_mgmt_0_M06_AXI_ARADDR(10 downto 0),
      M06_AXI_arready => axi_ic_ctrl_mgmt_0_M06_AXI_ARREADY,
      M06_AXI_arvalid => axi_ic_ctrl_mgmt_0_M06_AXI_ARVALID,
      M06_AXI_awaddr(15 downto 11) => NLW_axi_ic_ctrl_mgmt_0_M06_AXI_awaddr_UNCONNECTED(15 downto 11),
      M06_AXI_awaddr(10 downto 0) => axi_ic_ctrl_mgmt_0_M06_AXI_AWADDR(10 downto 0),
      M06_AXI_awready => axi_ic_ctrl_mgmt_0_M06_AXI_AWREADY,
      M06_AXI_awvalid => axi_ic_ctrl_mgmt_0_M06_AXI_AWVALID,
      M06_AXI_bready => axi_ic_ctrl_mgmt_0_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => axi_ic_ctrl_mgmt_0_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => axi_ic_ctrl_mgmt_0_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => axi_ic_ctrl_mgmt_0_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => axi_ic_ctrl_mgmt_0_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_0_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => axi_ic_ctrl_mgmt_0_M06_AXI_WVALID,
      S00_ACLK => '0',
      S00_ARESETN => '0',
      S00_AXI_araddr(15 downto 0) => s_axi_ctrl_mgmt_vip_ARADDR(15 downto 0),
      S00_AXI_arprot(2 downto 0) => s_axi_ctrl_mgmt_vip_ARPROT(2 downto 0),
      S00_AXI_arready(0) => s_axi_ctrl_mgmt_vip_ARREADY,
      S00_AXI_arvalid(0) => s_axi_ctrl_mgmt_vip_ARVALID,
      S00_AXI_awaddr(15 downto 0) => s_axi_ctrl_mgmt_vip_AWADDR(15 downto 0),
      S00_AXI_awprot(2 downto 0) => s_axi_ctrl_mgmt_vip_AWPROT(2 downto 0),
      S00_AXI_awready(0) => s_axi_ctrl_mgmt_vip_AWREADY,
      S00_AXI_awvalid(0) => s_axi_ctrl_mgmt_vip_AWVALID,
      S00_AXI_bready(0) => s_axi_ctrl_mgmt_vip_BREADY,
      S00_AXI_bresp(1 downto 0) => s_axi_ctrl_mgmt_vip_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => s_axi_ctrl_mgmt_vip_BVALID,
      S00_AXI_rdata(31 downto 0) => s_axi_ctrl_mgmt_vip_RDATA(31 downto 0),
      S00_AXI_rready(0) => s_axi_ctrl_mgmt_vip_RREADY,
      S00_AXI_rresp(1 downto 0) => s_axi_ctrl_mgmt_vip_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => s_axi_ctrl_mgmt_vip_RVALID,
      S00_AXI_wdata(31 downto 0) => s_axi_ctrl_mgmt_vip_WDATA(31 downto 0),
      S00_AXI_wready(0) => s_axi_ctrl_mgmt_vip_WREADY,
      S00_AXI_wstrb(3 downto 0) => s_axi_ctrl_mgmt_vip_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => s_axi_ctrl_mgmt_vip_WVALID
    );
axi_ic_ctrl_mgmt_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_axi_ic_ctrl_mgmt_1_0
     port map (
      ACLK => freerun_refclk,
      ARESETN => aresetn_freerun_refclk,
      M00_ACLK => '0',
      M00_ARESETN => '0',
      M00_AXI_araddr(15 downto 0) => axi_ic_ctrl_mgmt_1_M00_AXI_ARADDR(15 downto 0),
      M00_AXI_arready => axi_ic_ctrl_mgmt_1_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_ic_ctrl_mgmt_1_M00_AXI_ARVALID,
      M00_AXI_awaddr(15 downto 0) => axi_ic_ctrl_mgmt_1_M00_AXI_AWADDR(15 downto 0),
      M00_AXI_awready => axi_ic_ctrl_mgmt_1_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_ic_ctrl_mgmt_1_M00_AXI_AWVALID,
      M00_AXI_bready => axi_ic_ctrl_mgmt_1_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_ic_ctrl_mgmt_1_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_ic_ctrl_mgmt_1_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_ic_ctrl_mgmt_1_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_ic_ctrl_mgmt_1_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_ic_ctrl_mgmt_1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_ic_ctrl_mgmt_1_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_ic_ctrl_mgmt_1_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_ic_ctrl_mgmt_1_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_1_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_ic_ctrl_mgmt_1_M00_AXI_WVALID,
      M01_ACLK => '0',
      M01_ARESETN => '0',
      M01_AXI_araddr(15 downto 0) => axi_ic_ctrl_mgmt_1_M01_AXI_ARADDR(15 downto 0),
      M01_AXI_arready => axi_ic_ctrl_mgmt_1_M01_AXI_ARREADY,
      M01_AXI_arvalid => axi_ic_ctrl_mgmt_1_M01_AXI_ARVALID,
      M01_AXI_awaddr(15 downto 0) => axi_ic_ctrl_mgmt_1_M01_AXI_AWADDR(15 downto 0),
      M01_AXI_awready => axi_ic_ctrl_mgmt_1_M01_AXI_AWREADY,
      M01_AXI_awvalid => axi_ic_ctrl_mgmt_1_M01_AXI_AWVALID,
      M01_AXI_bready => axi_ic_ctrl_mgmt_1_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_ic_ctrl_mgmt_1_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_ic_ctrl_mgmt_1_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_ic_ctrl_mgmt_1_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => axi_ic_ctrl_mgmt_1_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_ic_ctrl_mgmt_1_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_ic_ctrl_mgmt_1_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_ic_ctrl_mgmt_1_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => axi_ic_ctrl_mgmt_1_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_1_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_ic_ctrl_mgmt_1_M01_AXI_WVALID,
      M02_ACLK => '0',
      M02_ARESETN => '0',
      M02_AXI_araddr(15 downto 0) => axi_ic_ctrl_mgmt_1_M02_AXI_ARADDR(15 downto 0),
      M02_AXI_arready => axi_ic_ctrl_mgmt_1_M02_AXI_ARREADY,
      M02_AXI_arvalid => axi_ic_ctrl_mgmt_1_M02_AXI_ARVALID,
      M02_AXI_awaddr(15 downto 0) => axi_ic_ctrl_mgmt_1_M02_AXI_AWADDR(15 downto 0),
      M02_AXI_awready => axi_ic_ctrl_mgmt_1_M02_AXI_AWREADY,
      M02_AXI_awvalid => axi_ic_ctrl_mgmt_1_M02_AXI_AWVALID,
      M02_AXI_bready => axi_ic_ctrl_mgmt_1_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => axi_ic_ctrl_mgmt_1_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => axi_ic_ctrl_mgmt_1_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_ic_ctrl_mgmt_1_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => axi_ic_ctrl_mgmt_1_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => axi_ic_ctrl_mgmt_1_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => axi_ic_ctrl_mgmt_1_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_ic_ctrl_mgmt_1_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => axi_ic_ctrl_mgmt_1_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_1_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => axi_ic_ctrl_mgmt_1_M02_AXI_WVALID,
      M03_ACLK => '0',
      M03_ARESETN => '0',
      M03_AXI_araddr(15 downto 0) => axi_ic_ctrl_mgmt_1_M03_AXI_ARADDR(15 downto 0),
      M03_AXI_arready => axi_ic_ctrl_mgmt_1_M03_AXI_ARREADY,
      M03_AXI_arvalid => axi_ic_ctrl_mgmt_1_M03_AXI_ARVALID,
      M03_AXI_awaddr(15 downto 0) => axi_ic_ctrl_mgmt_1_M03_AXI_AWADDR(15 downto 0),
      M03_AXI_awready => axi_ic_ctrl_mgmt_1_M03_AXI_AWREADY,
      M03_AXI_awvalid => axi_ic_ctrl_mgmt_1_M03_AXI_AWVALID,
      M03_AXI_bready => axi_ic_ctrl_mgmt_1_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => axi_ic_ctrl_mgmt_1_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => axi_ic_ctrl_mgmt_1_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => axi_ic_ctrl_mgmt_1_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => axi_ic_ctrl_mgmt_1_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => axi_ic_ctrl_mgmt_1_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => axi_ic_ctrl_mgmt_1_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => axi_ic_ctrl_mgmt_1_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => axi_ic_ctrl_mgmt_1_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_1_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => axi_ic_ctrl_mgmt_1_M03_AXI_WVALID,
      S00_ACLK => aclk_ctrl,
      S00_ARESETN => aresetn_ctrl,
      S00_AXI_araddr(15 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_ARADDR(15 downto 0),
      S00_AXI_arprot(2 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_ARPROT(2 downto 0),
      S00_AXI_arready(0) => axi_ic_ctrl_mgmt_0_M05_AXI_ARREADY,
      S00_AXI_arvalid(0) => axi_ic_ctrl_mgmt_0_M05_AXI_ARVALID,
      S00_AXI_awaddr(15 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_AWADDR(15 downto 0),
      S00_AXI_awprot(2 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_AWPROT(2 downto 0),
      S00_AXI_awready(0) => axi_ic_ctrl_mgmt_0_M05_AXI_AWREADY,
      S00_AXI_awvalid(0) => axi_ic_ctrl_mgmt_0_M05_AXI_AWVALID,
      S00_AXI_bready(0) => axi_ic_ctrl_mgmt_0_M05_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => axi_ic_ctrl_mgmt_0_M05_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_RDATA(31 downto 0),
      S00_AXI_rready(0) => axi_ic_ctrl_mgmt_0_M05_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => axi_ic_ctrl_mgmt_0_M05_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_WDATA(31 downto 0),
      S00_AXI_wready(0) => axi_ic_ctrl_mgmt_0_M05_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_0_M05_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => axi_ic_ctrl_mgmt_0_M05_AXI_WVALID
    );
build_info: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_build_info_0
     port map (
      S_AXI_ACLK => aclk_ctrl,
      S_AXI_ARADDR(4 downto 0) => axi_ic_ctrl_mgmt_0_M00_AXI_ARADDR(4 downto 0),
      S_AXI_ARESETN => aresetn_ctrl,
      S_AXI_ARREADY => axi_ic_ctrl_mgmt_0_M00_AXI_ARREADY,
      S_AXI_ARVALID => axi_ic_ctrl_mgmt_0_M00_AXI_ARVALID,
      S_AXI_AWADDR(4 downto 0) => axi_ic_ctrl_mgmt_0_M00_AXI_AWADDR(4 downto 0),
      S_AXI_AWREADY => axi_ic_ctrl_mgmt_0_M00_AXI_AWREADY,
      S_AXI_AWVALID => axi_ic_ctrl_mgmt_0_M00_AXI_AWVALID,
      S_AXI_BREADY => axi_ic_ctrl_mgmt_0_M00_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => axi_ic_ctrl_mgmt_0_M00_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => axi_ic_ctrl_mgmt_0_M00_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => axi_ic_ctrl_mgmt_0_M00_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => axi_ic_ctrl_mgmt_0_M00_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => axi_ic_ctrl_mgmt_0_M00_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => axi_ic_ctrl_mgmt_0_M00_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => axi_ic_ctrl_mgmt_0_M00_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => axi_ic_ctrl_mgmt_0_M00_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => axi_ic_ctrl_mgmt_0_M00_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => axi_ic_ctrl_mgmt_0_M00_AXI_WVALID
    );
clk_hbm_adapt: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_hbm_adapt_0
     port map (
      clk_in => clk_hbm_adapt_in,
      clk_out => \^hbm_aclk\
    );
clk_kernel2_adapt: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel2_adapt_0
     port map (
      clk_in => clock_throttling_kernel2_clk_out,
      clk_out => \^clk_kernel2\
    );
clk_kernel2_cont_adapt: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel2_cont_adapt_0
     port map (
      clk_in => clock_throttling_kernel2_clk_out_cont,
      clk_out => clk_kernel2_cont
    );
clk_kernel_adapt: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel_adapt_0
     port map (
      clk_in => clock_throttling_kernel_clk_out,
      clk_out => \^clk_kernel\
    );
clk_kernel_cont_adapt: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clk_kernel_cont_adapt_0
     port map (
      clk_in => clock_throttling_kernel_clk_out_cont,
      clk_out => clk_kernel_cont
    );
clkwiz_hbm: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_hbm_0
     port map (
      clk_in1 => freerun_refclk,
      clk_out1 => clk_hbm_adapt_in,
      clk_out1_ce => startup_done,
      locked => clk_hbm_locked,
      power_down => shutdown_clocks_latched,
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(10 downto 0) => axi_ic_ctrl_mgmt_0_M06_AXI_ARADDR(10 downto 0),
      s_axi_aresetn => aresetn_ctrl,
      s_axi_arready => axi_ic_ctrl_mgmt_0_M06_AXI_ARREADY,
      s_axi_arvalid => axi_ic_ctrl_mgmt_0_M06_AXI_ARVALID,
      s_axi_awaddr(10 downto 0) => axi_ic_ctrl_mgmt_0_M06_AXI_AWADDR(10 downto 0),
      s_axi_awready => axi_ic_ctrl_mgmt_0_M06_AXI_AWREADY,
      s_axi_awvalid => axi_ic_ctrl_mgmt_0_M06_AXI_AWVALID,
      s_axi_bready => axi_ic_ctrl_mgmt_0_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_ctrl_mgmt_0_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_ctrl_mgmt_0_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_ctrl_mgmt_0_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_ctrl_mgmt_0_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_0_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_ctrl_mgmt_0_M06_AXI_WVALID
    );
clkwiz_kernel: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_kernel_0
     port map (
      clk_in1 => freerun_refclk,
      clk_out1 => clk_kernel_unbuffered,
      locked => clk_kernel_locked,
      power_down => shutdown_clocks_latched,
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(10 downto 0) => axi_ic_ctrl_mgmt_0_M03_AXI_ARADDR(10 downto 0),
      s_axi_aresetn => aresetn_ctrl,
      s_axi_arready => axi_ic_ctrl_mgmt_0_M03_AXI_ARREADY,
      s_axi_arvalid => axi_ic_ctrl_mgmt_0_M03_AXI_ARVALID,
      s_axi_awaddr(10 downto 0) => axi_ic_ctrl_mgmt_0_M03_AXI_AWADDR(10 downto 0),
      s_axi_awready => axi_ic_ctrl_mgmt_0_M03_AXI_AWREADY,
      s_axi_awvalid => axi_ic_ctrl_mgmt_0_M03_AXI_AWVALID,
      s_axi_bready => axi_ic_ctrl_mgmt_0_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_ctrl_mgmt_0_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_ctrl_mgmt_0_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_ctrl_mgmt_0_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_ctrl_mgmt_0_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_0_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_ctrl_mgmt_0_M03_AXI_WVALID
    );
clkwiz_kernel2: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clkwiz_kernel2_0
     port map (
      clk_in1 => freerun_refclk,
      clk_out1 => clk_kernel2_unbuffered,
      locked => clk_kernel2_locked,
      power_down => shutdown_clocks_latched,
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(10 downto 0) => axi_ic_ctrl_mgmt_0_M04_AXI_ARADDR(10 downto 0),
      s_axi_aresetn => aresetn_ctrl,
      s_axi_arready => axi_ic_ctrl_mgmt_0_M04_AXI_ARREADY,
      s_axi_arvalid => axi_ic_ctrl_mgmt_0_M04_AXI_ARVALID,
      s_axi_awaddr(10 downto 0) => axi_ic_ctrl_mgmt_0_M04_AXI_AWADDR(10 downto 0),
      s_axi_awready => axi_ic_ctrl_mgmt_0_M04_AXI_AWREADY,
      s_axi_awvalid => axi_ic_ctrl_mgmt_0_M04_AXI_AWVALID,
      s_axi_bready => axi_ic_ctrl_mgmt_0_M04_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_ctrl_mgmt_0_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_ctrl_mgmt_0_M04_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_ctrl_mgmt_0_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_ctrl_mgmt_0_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_0_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_ctrl_mgmt_0_M04_AXI_WVALID
    );
clock_throttling_avg: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_avg_0
     port map (
      Clk => aclk_ctrl,
      Rate(7 downto 0) => \^gpio_gapping_demand\(7 downto 0),
      Rate_Avg(13 downto 0) => \^clock_throttling_avg\(13 downto 0),
      Rate_Upd_Tog => \^gapping_demand_toggle\,
      Rst => aresetn_ctrl
    );
clock_throttling_kernel: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_kernel_0
     port map (
      Clk_In => clk_kernel_unbuffered,
      Clk_Out => clock_throttling_kernel_clk_out,
      Clk_Out_Cont => clock_throttling_kernel_clk_out_cont,
      Locked => clk_kernel_locked,
      Rate_In(7 downto 0) => \^gpio_gapping_demand\(7 downto 0),
      Rate_Upd_Tog => \^gapping_demand_toggle\,
      Rst_Async => aresetn_kernel_async,
      Rst_In => aresetn_ctrl,
      Startup_Done => startup_done
    );
clock_throttling_kernel2: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_clock_throttling_kernel2_0
     port map (
      Clk_In => clk_kernel2_unbuffered,
      Clk_Out => clock_throttling_kernel2_clk_out,
      Clk_Out_Cont => clock_throttling_kernel2_clk_out_cont,
      Locked => clk_kernel2_locked,
      Rate_In(7 downto 0) => \^gpio_gapping_demand\(7 downto 0),
      Rate_Upd_Tog => \^gapping_demand_toggle\,
      Rst_Async => aresetn_kernel2_async,
      Rst_In => aresetn_ctrl,
      Startup_Done => startup_done
    );
fanout_aresetn_ctrl_slr0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr0_0
     port map (
      clk => aclk_ctrl,
      d(0) => aresetn_ctrl,
      q(0) => aresetn_ctrl_slr0(0),
      resetn => '1'
    );
fanout_aresetn_ctrl_slr1: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_ctrl_slr1_0
     port map (
      clk => aclk_ctrl,
      d(0) => aresetn_ctrl,
      q(0) => aresetn_ctrl_slr1(0),
      resetn => '1'
    );
fanout_aresetn_hbm: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_hbm_0
     port map (
      clk => \^hbm_aclk\,
      d(0) => hbm_aresetn_int,
      q(0) => hbm_aresetn(0),
      resetn => '1'
    );
fanout_aresetn_kernel2_slr0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel2_slr0_0
     port map (
      clk => clk_kernel2_cont,
      d(0) => aresetn_kernel2,
      q(0) => aresetn_kernel2_slr0(0),
      resetn => '1'
    );
fanout_aresetn_kernel2_slr1: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel2_slr1_0
     port map (
      clk => clk_kernel2_cont,
      d(0) => aresetn_kernel2,
      q(0) => aresetn_kernel2_slr1(0),
      resetn => '1'
    );
fanout_aresetn_kernel_slr0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_slr0_0
     port map (
      clk => clk_kernel_cont,
      d(0) => aresetn_kernel,
      q(0) => aresetn_kernel_slr0(0),
      resetn => '1'
    );
fanout_aresetn_kernel_slr1: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_kernel_slr1_0
     port map (
      clk => clk_kernel_cont,
      d(0) => aresetn_kernel,
      q(0) => aresetn_kernel_slr1(0),
      resetn => '1'
    );
fanout_aresetn_pcie_slr0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr0_0
     port map (
      clk => aclk_pcie,
      d(0) => aresetn_pcie,
      q(0) => aresetn_pcie_slr0(0),
      resetn => '1'
    );
fanout_aresetn_pcie_slr1: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_fanout_aresetn_pcie_slr1_0
     port map (
      clk => aclk_pcie,
      d(0) => aresetn_pcie,
      q(0) => aresetn_pcie_slr1(0),
      resetn => '1'
    );
frequency_counter_aclk: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_aclk_0
     port map (
      s_axi_aclk => freerun_refclk,
      s_axi_araddr(31 downto 16) => B"0000000000000000",
      s_axi_araddr(15 downto 0) => axi_ic_ctrl_mgmt_1_M02_AXI_ARADDR(15 downto 0),
      s_axi_aresetn => aresetn_freerun_refclk,
      s_axi_arready => axi_ic_ctrl_mgmt_1_M02_AXI_ARREADY,
      s_axi_arvalid => axi_ic_ctrl_mgmt_1_M02_AXI_ARVALID,
      s_axi_awaddr(31 downto 16) => B"0000000000000000",
      s_axi_awaddr(15 downto 0) => axi_ic_ctrl_mgmt_1_M02_AXI_AWADDR(15 downto 0),
      s_axi_awready => axi_ic_ctrl_mgmt_1_M02_AXI_AWREADY,
      s_axi_awvalid => axi_ic_ctrl_mgmt_1_M02_AXI_AWVALID,
      s_axi_bready => axi_ic_ctrl_mgmt_1_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_ctrl_mgmt_1_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_ctrl_mgmt_1_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_ctrl_mgmt_1_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_ctrl_mgmt_1_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_ctrl_mgmt_1_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_ctrl_mgmt_1_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_ctrl_mgmt_1_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_ctrl_mgmt_1_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_1_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_ctrl_mgmt_1_M02_AXI_WVALID,
      test_clk0 => aclk_ctrl,
      test_clk1 => aclk_pcie
    );
frequency_counter_hbm: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_hbm_0
     port map (
      s_axi_aclk => freerun_refclk,
      s_axi_araddr(31 downto 16) => B"0000000000000000",
      s_axi_araddr(15 downto 0) => axi_ic_ctrl_mgmt_1_M03_AXI_ARADDR(15 downto 0),
      s_axi_aresetn => aresetn_freerun_refclk,
      s_axi_arready => axi_ic_ctrl_mgmt_1_M03_AXI_ARREADY,
      s_axi_arvalid => axi_ic_ctrl_mgmt_1_M03_AXI_ARVALID,
      s_axi_awaddr(31 downto 16) => B"0000000000000000",
      s_axi_awaddr(15 downto 0) => axi_ic_ctrl_mgmt_1_M03_AXI_AWADDR(15 downto 0),
      s_axi_awready => axi_ic_ctrl_mgmt_1_M03_AXI_AWREADY,
      s_axi_awvalid => axi_ic_ctrl_mgmt_1_M03_AXI_AWVALID,
      s_axi_bready => axi_ic_ctrl_mgmt_1_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_ctrl_mgmt_1_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_ctrl_mgmt_1_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_ctrl_mgmt_1_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_ctrl_mgmt_1_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_ctrl_mgmt_1_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_ctrl_mgmt_1_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_ctrl_mgmt_1_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_ctrl_mgmt_1_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_1_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_ctrl_mgmt_1_M03_AXI_WVALID,
      test_clk0 => \^hbm_aclk\,
      test_clk3 => hbm_refclk
    );
frequency_counter_kernel: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_kernel_0
     port map (
      s_axi_aclk => freerun_refclk,
      s_axi_araddr(31 downto 16) => B"0000000000000000",
      s_axi_araddr(15 downto 0) => axi_ic_ctrl_mgmt_1_M00_AXI_ARADDR(15 downto 0),
      s_axi_aresetn => aresetn_freerun_refclk,
      s_axi_arready => axi_ic_ctrl_mgmt_1_M00_AXI_ARREADY,
      s_axi_arvalid => axi_ic_ctrl_mgmt_1_M00_AXI_ARVALID,
      s_axi_awaddr(31 downto 16) => B"0000000000000000",
      s_axi_awaddr(15 downto 0) => axi_ic_ctrl_mgmt_1_M00_AXI_AWADDR(15 downto 0),
      s_axi_awready => axi_ic_ctrl_mgmt_1_M00_AXI_AWREADY,
      s_axi_awvalid => axi_ic_ctrl_mgmt_1_M00_AXI_AWVALID,
      s_axi_bready => axi_ic_ctrl_mgmt_1_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_ctrl_mgmt_1_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_ctrl_mgmt_1_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_ctrl_mgmt_1_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_ctrl_mgmt_1_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_ctrl_mgmt_1_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_ctrl_mgmt_1_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_ctrl_mgmt_1_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_ctrl_mgmt_1_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_1_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_ctrl_mgmt_1_M00_AXI_WVALID,
      test_clk0 => clk_kernel_cont,
      test_clk1 => \^clk_kernel\
    );
frequency_counter_kernel2: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_frequency_counter_kernel2_0
     port map (
      s_axi_aclk => freerun_refclk,
      s_axi_araddr(31 downto 16) => B"0000000000000000",
      s_axi_araddr(15 downto 0) => axi_ic_ctrl_mgmt_1_M01_AXI_ARADDR(15 downto 0),
      s_axi_aresetn => aresetn_freerun_refclk,
      s_axi_arready => axi_ic_ctrl_mgmt_1_M01_AXI_ARREADY,
      s_axi_arvalid => axi_ic_ctrl_mgmt_1_M01_AXI_ARVALID,
      s_axi_awaddr(31 downto 16) => B"0000000000000000",
      s_axi_awaddr(15 downto 0) => axi_ic_ctrl_mgmt_1_M01_AXI_AWADDR(15 downto 0),
      s_axi_awready => axi_ic_ctrl_mgmt_1_M01_AXI_AWREADY,
      s_axi_awvalid => axi_ic_ctrl_mgmt_1_M01_AXI_AWVALID,
      s_axi_bready => axi_ic_ctrl_mgmt_1_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_ctrl_mgmt_1_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_ctrl_mgmt_1_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_ctrl_mgmt_1_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_ctrl_mgmt_1_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_ctrl_mgmt_1_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_ctrl_mgmt_1_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_ctrl_mgmt_1_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_ctrl_mgmt_1_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_1_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_ctrl_mgmt_1_M01_AXI_WVALID,
      test_clk0 => clk_kernel2_cont,
      test_clk1 => \^clk_kernel2\
    );
gapping_demand_toggle: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gapping_demand_toggle_0
     port map (
      CE => \^gapping_demand_update\,
      CLK => aclk_ctrl,
      Q(0) => \^gapping_demand_toggle\
    );
gapping_demand_update: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gapping_demand_update_0
     port map (
      Op1(0) => gapping_demand_bvalid,
      Op2(0) => gapping_demand_bready,
      Res(0) => \^gapping_demand_update\
    );
gpio_gapping_demand: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_gapping_demand_0
     port map (
      gpio_io_o(7 downto 0) => \^gpio_gapping_demand\(7 downto 0),
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(8 downto 0) => axi_ic_ctrl_mgmt_0_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => aresetn_ctrl,
      s_axi_arready => axi_ic_ctrl_mgmt_0_M01_AXI_ARREADY,
      s_axi_arvalid => axi_ic_ctrl_mgmt_0_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_ic_ctrl_mgmt_0_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_ic_ctrl_mgmt_0_M01_AXI_AWREADY,
      s_axi_awvalid => axi_ic_ctrl_mgmt_0_M01_AXI_AWVALID,
      s_axi_bready => gapping_demand_bready,
      s_axi_bresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => gapping_demand_bvalid,
      s_axi_rdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_ctrl_mgmt_0_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_ctrl_mgmt_0_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_ctrl_mgmt_0_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_0_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_ctrl_mgmt_0_M01_AXI_WVALID
    );
gpio_ucs_control_status: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_control_status_0
     port map (
      gpio2_io_o(31 downto 0) => gpio_ucs_control_status_gpio2(31 downto 0),
      gpio_io_i(31 downto 30) => B"00",
      gpio_io_i(29 downto 16) => gpio_ucs_status_concat_dout(29 downto 16),
      gpio_io_i(15 downto 1) => B"000000000000000",
      gpio_io_i(0) => gpio_ucs_status_concat_dout(0),
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(8 downto 0) => axi_ic_ctrl_mgmt_0_M02_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => aresetn_ctrl,
      s_axi_arready => axi_ic_ctrl_mgmt_0_M02_AXI_ARREADY,
      s_axi_arvalid => axi_ic_ctrl_mgmt_0_M02_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_ic_ctrl_mgmt_0_M02_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_ic_ctrl_mgmt_0_M02_AXI_AWREADY,
      s_axi_awvalid => axi_ic_ctrl_mgmt_0_M02_AXI_AWVALID,
      s_axi_bready => axi_ic_ctrl_mgmt_0_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_ctrl_mgmt_0_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_ctrl_mgmt_0_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_ctrl_mgmt_0_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_ctrl_mgmt_0_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_ctrl_mgmt_0_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_ctrl_mgmt_0_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_ctrl_mgmt_0_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_ctrl_mgmt_0_M02_AXI_WVALID
    );
gpio_ucs_status_concat: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_gpio_ucs_status_concat_0
     port map (
      In0(0) => shutdown_clocks_latched,
      In1(14 downto 0) => B"000000000000000",
      In2(13 downto 0) => \^clock_throttling_avg\(13 downto 0),
      In3(1 downto 0) => B"00",
      dout(31 downto 30) => NLW_gpio_ucs_status_concat_dout_UNCONNECTED(31 downto 30),
      dout(29 downto 16) => gpio_ucs_status_concat_dout(29 downto 16),
      dout(15 downto 1) => NLW_gpio_ucs_status_concat_dout_UNCONNECTED(15 downto 1),
      dout(0) => gpio_ucs_status_concat_dout(0)
    );
or_shutdown_clocks: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_or_shutdown_clocks_0
     port map (
      Op1(0) => shutdown_clocks,
      Op2(0) => reduce_check_gpio_res,
      Res(0) => or_shutdown_clocks_res
    );
psreset_freerun_refclk: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_freerun_refclk_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_psreset_freerun_refclk_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => aresetn_ctrl,
      interconnect_aresetn(0) => aresetn_freerun_refclk,
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_freerun_refclk_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psreset_freerun_refclk_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psreset_freerun_refclk_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => freerun_refclk
    );
psreset_hbm: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_hbm_0
     port map (
      aux_reset_in => aresetn_ctrl,
      bus_struct_reset(0) => NLW_psreset_hbm_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_hbm_locked,
      ext_reset_in => aresetn_pcie,
      interconnect_aresetn(0) => hbm_aresetn_int,
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_hbm_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psreset_hbm_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psreset_hbm_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => \^hbm_aclk\
    );
psreset_kernel: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_kernel_0
     port map (
      aux_reset_in => aresetn_kernel_async,
      bus_struct_reset(0) => NLW_psreset_kernel_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => aresetn_pcie,
      interconnect_aresetn(0) => aresetn_kernel,
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_kernel_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psreset_kernel_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psreset_kernel_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_kernel_cont
    );
psreset_kernel2: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_psreset_kernel2_0
     port map (
      aux_reset_in => aresetn_kernel2_async,
      bus_struct_reset(0) => NLW_psreset_kernel2_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => aresetn_pcie,
      interconnect_aresetn(0) => aresetn_kernel2,
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_kernel2_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psreset_kernel2_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psreset_kernel2_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_kernel2_cont
    );
reduce_check_gpio: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_reduce_check_gpio_0
     port map (
      Op1(15 downto 0) => adder_check_gpio_sum(15 downto 0),
      Res => reduce_check_gpio_res
    );
shutdown_clocks_latch: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_shutdown_clocks_latch_0
     port map (
      CE => or_shutdown_clocks_res,
      CLK => aclk_ctrl,
      D(0) => '1',
      Q(0) => shutdown_clocks_latched
    );
slice_check_gpio: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_check_gpio_0
     port map (
      Din(31 downto 21) => B"00000000000",
      Din(20 downto 5) => gpio_ucs_control_status_gpio2(20 downto 5),
      Din(4 downto 0) => B"00000",
      Dout(15 downto 0) => slice_check_gpio_dout(15 downto 0)
    );
slice_startup_done_gpio: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_slice_startup_done_gpio_0
     port map (
      Din(31 downto 1) => B"0000000000000000000000000000000",
      Din(0) => gpio_ucs_control_status_gpio2(0),
      Dout(0) => startup_done
    );
vip_ctrl_mgmt: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0_vip_ctrl_mgmt_0
     port map (
      aclk => aclk_ctrl,
      aresetn => aresetn_ctrl,
      m_axi_araddr(15 downto 0) => s_axi_ctrl_mgmt_vip_ARADDR(15 downto 0),
      m_axi_arprot(2 downto 0) => s_axi_ctrl_mgmt_vip_ARPROT(2 downto 0),
      m_axi_arready => s_axi_ctrl_mgmt_vip_ARREADY,
      m_axi_arvalid => s_axi_ctrl_mgmt_vip_ARVALID,
      m_axi_awaddr(15 downto 0) => s_axi_ctrl_mgmt_vip_AWADDR(15 downto 0),
      m_axi_awprot(2 downto 0) => s_axi_ctrl_mgmt_vip_AWPROT(2 downto 0),
      m_axi_awready => s_axi_ctrl_mgmt_vip_AWREADY,
      m_axi_awvalid => s_axi_ctrl_mgmt_vip_AWVALID,
      m_axi_bready => s_axi_ctrl_mgmt_vip_BREADY,
      m_axi_bresp(1 downto 0) => s_axi_ctrl_mgmt_vip_BRESP(1 downto 0),
      m_axi_bvalid => s_axi_ctrl_mgmt_vip_BVALID,
      m_axi_rdata(31 downto 0) => s_axi_ctrl_mgmt_vip_RDATA(31 downto 0),
      m_axi_rready => s_axi_ctrl_mgmt_vip_RREADY,
      m_axi_rresp(1 downto 0) => s_axi_ctrl_mgmt_vip_RRESP(1 downto 0),
      m_axi_rvalid => s_axi_ctrl_mgmt_vip_RVALID,
      m_axi_wdata(31 downto 0) => s_axi_ctrl_mgmt_vip_WDATA(31 downto 0),
      m_axi_wready => s_axi_ctrl_mgmt_vip_WREADY,
      m_axi_wstrb(3 downto 0) => s_axi_ctrl_mgmt_vip_WSTRB(3 downto 0),
      m_axi_wvalid => s_axi_ctrl_mgmt_vip_WVALID,
      s_axi_araddr(15 downto 0) => s_axi_ctrl_mgmt_araddr(15 downto 0),
      s_axi_arprot(2 downto 0) => s_axi_ctrl_mgmt_arprot(2 downto 0),
      s_axi_arready => s_axi_ctrl_mgmt_arready,
      s_axi_arvalid => s_axi_ctrl_mgmt_arvalid,
      s_axi_awaddr(15 downto 0) => s_axi_ctrl_mgmt_awaddr(15 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_ctrl_mgmt_awprot(2 downto 0),
      s_axi_awready => s_axi_ctrl_mgmt_awready,
      s_axi_awvalid => s_axi_ctrl_mgmt_awvalid,
      s_axi_bready => s_axi_ctrl_mgmt_bready,
      s_axi_bresp(1 downto 0) => s_axi_ctrl_mgmt_bresp(1 downto 0),
      s_axi_bvalid => s_axi_ctrl_mgmt_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_ctrl_mgmt_rdata(31 downto 0),
      s_axi_rready => s_axi_ctrl_mgmt_rready,
      s_axi_rresp(1 downto 0) => s_axi_ctrl_mgmt_rresp(1 downto 0),
      s_axi_rvalid => s_axi_ctrl_mgmt_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_ctrl_mgmt_wdata(31 downto 0),
      s_axi_wready => s_axi_ctrl_mgmt_wready,
      s_axi_wstrb(3 downto 0) => s_axi_ctrl_mgmt_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_ctrl_mgmt_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ulp_ulp_ucs_0,bd_22c0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_22c0,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "ulp_ulp_ucs_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk_ctrl : signal is "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk_ctrl : signal is "XIL_INTERFACENAME CLK.aclk_ctrl, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, ASSOCIATED_BUSIF s_axi_ctrl_mgmt, ASSOCIATED_RESET aresetn_ctrl:aresetn_ctrl_slr0:aresetn_ctrl_slr1, INSERT_VIP 0, ASSOCIATED_CLKEN CE";
  attribute X_INTERFACE_INFO of aclk_pcie : signal is "xilinx.com:signal:clock:1.0 CLK.aclk_pcie CLK";
  attribute X_INTERFACE_PARAMETER of aclk_pcie : signal is "XIL_INTERFACENAME CLK.aclk_pcie, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_pcie_00, ASSOCIATED_RESET aresetn_pcie:aresetn_pcie_slr0:aresetn_pcie_slr1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_ctrl : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST";
  attribute X_INTERFACE_PARAMETER of aresetn_ctrl : signal is "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of aresetn_pcie : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_pcie RST";
  attribute X_INTERFACE_PARAMETER of aresetn_pcie : signal is "XIL_INTERFACENAME RST.aresetn_pcie, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_kernel : signal is "xilinx.com:signal:clock:1.0 CLK.clk_kernel CLK";
  attribute X_INTERFACE_PARAMETER of clk_kernel : signal is "XIL_INTERFACENAME CLK.clk_kernel, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_kernel_00, ASSOCIATED_RESET aresetn_kernel_slr0:aresetn_kernel_slr1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_kernel2 : signal is "xilinx.com:signal:clock:1.0 CLK.clk_kernel2 CLK";
  attribute X_INTERFACE_PARAMETER of clk_kernel2 : signal is "XIL_INTERFACENAME CLK.clk_kernel2, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_kernel_01, ASSOCIATED_RESET aresetn_kernel2_slr0:aresetn_kernel2_slr1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of freerun_refclk : signal is "xilinx.com:signal:clock:1.0 CLK.freerun_refclk CLK";
  attribute X_INTERFACE_PARAMETER of freerun_refclk : signal is "XIL_INTERFACENAME CLK.freerun_refclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of hbm_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.hbm_aclk CLK";
  attribute X_INTERFACE_PARAMETER of hbm_aclk : signal is "XIL_INTERFACENAME CLK.hbm_aclk, FREQ_HZ 450000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_hbm, ASSOCIATED_RESET hbm_aresetn, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of hbm_refclk : signal is "xilinx.com:signal:clock:1.0 CLK.hbm_refclk CLK";
  attribute X_INTERFACE_PARAMETER of hbm_refclk : signal is "XIL_INTERFACENAME CLK.hbm_refclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WVALID";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_mgmt_wvalid : signal is "XIL_INTERFACENAME s_axi_ctrl_mgmt, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_ctrl_slr0 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl_slr0 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_ctrl_slr0 : signal is "XIL_INTERFACENAME RST.aresetn_ctrl_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_ctrl_slr1 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl_slr1 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_ctrl_slr1 : signal is "XIL_INTERFACENAME RST.aresetn_ctrl_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_kernel2_slr0 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_kernel2_slr0 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_kernel2_slr0 : signal is "XIL_INTERFACENAME RST.aresetn_kernel2_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_kernel2_slr1 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_kernel2_slr1 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_kernel2_slr1 : signal is "XIL_INTERFACENAME RST.aresetn_kernel2_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_kernel_slr0 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_slr0 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_kernel_slr0 : signal is "XIL_INTERFACENAME RST.aresetn_kernel_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_kernel_slr1 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_slr1 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_kernel_slr1 : signal is "XIL_INTERFACENAME RST.aresetn_kernel_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_pcie_slr0 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_pcie_slr0 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_pcie_slr0 : signal is "XIL_INTERFACENAME RST.aresetn_pcie_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_pcie_slr1 : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_pcie_slr1 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_pcie_slr1 : signal is "XIL_INTERFACENAME RST.aresetn_pcie_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of hbm_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.hbm_aresetn RST";
  attribute X_INTERFACE_PARAMETER of hbm_aresetn : signal is "XIL_INTERFACENAME RST.hbm_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_mgmt_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WSTRB";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_22c0
     port map (
      aclk_ctrl => aclk_ctrl,
      aclk_pcie => aclk_pcie,
      aresetn_ctrl => aresetn_ctrl,
      aresetn_ctrl_slr0(0) => aresetn_ctrl_slr0(0),
      aresetn_ctrl_slr1(0) => aresetn_ctrl_slr1(0),
      aresetn_kernel2_slr0(0) => aresetn_kernel2_slr0(0),
      aresetn_kernel2_slr1(0) => aresetn_kernel2_slr1(0),
      aresetn_kernel_slr0(0) => aresetn_kernel_slr0(0),
      aresetn_kernel_slr1(0) => aresetn_kernel_slr1(0),
      aresetn_pcie => aresetn_pcie,
      aresetn_pcie_slr0(0) => aresetn_pcie_slr0(0),
      aresetn_pcie_slr1(0) => aresetn_pcie_slr1(0),
      clk_kernel => clk_kernel,
      clk_kernel2 => clk_kernel2,
      freerun_refclk => freerun_refclk,
      hbm_aclk => hbm_aclk,
      hbm_aresetn(0) => hbm_aresetn(0),
      hbm_refclk => hbm_refclk,
      s_axi_ctrl_mgmt_araddr(15 downto 0) => s_axi_ctrl_mgmt_araddr(15 downto 0),
      s_axi_ctrl_mgmt_arprot(2 downto 0) => s_axi_ctrl_mgmt_arprot(2 downto 0),
      s_axi_ctrl_mgmt_arready => s_axi_ctrl_mgmt_arready,
      s_axi_ctrl_mgmt_arvalid => s_axi_ctrl_mgmt_arvalid,
      s_axi_ctrl_mgmt_awaddr(15 downto 0) => s_axi_ctrl_mgmt_awaddr(15 downto 0),
      s_axi_ctrl_mgmt_awprot(2 downto 0) => s_axi_ctrl_mgmt_awprot(2 downto 0),
      s_axi_ctrl_mgmt_awready => s_axi_ctrl_mgmt_awready,
      s_axi_ctrl_mgmt_awvalid => s_axi_ctrl_mgmt_awvalid,
      s_axi_ctrl_mgmt_bready => s_axi_ctrl_mgmt_bready,
      s_axi_ctrl_mgmt_bresp(1 downto 0) => s_axi_ctrl_mgmt_bresp(1 downto 0),
      s_axi_ctrl_mgmt_bvalid => s_axi_ctrl_mgmt_bvalid,
      s_axi_ctrl_mgmt_rdata(31 downto 0) => s_axi_ctrl_mgmt_rdata(31 downto 0),
      s_axi_ctrl_mgmt_rready => s_axi_ctrl_mgmt_rready,
      s_axi_ctrl_mgmt_rresp(1 downto 0) => s_axi_ctrl_mgmt_rresp(1 downto 0),
      s_axi_ctrl_mgmt_rvalid => s_axi_ctrl_mgmt_rvalid,
      s_axi_ctrl_mgmt_wdata(31 downto 0) => s_axi_ctrl_mgmt_wdata(31 downto 0),
      s_axi_ctrl_mgmt_wready => s_axi_ctrl_mgmt_wready,
      s_axi_ctrl_mgmt_wstrb(3 downto 0) => s_axi_ctrl_mgmt_wstrb(3 downto 0),
      s_axi_ctrl_mgmt_wvalid => s_axi_ctrl_mgmt_wvalid,
      shutdown_clocks => shutdown_clocks
    );
end STRUCTURE;
