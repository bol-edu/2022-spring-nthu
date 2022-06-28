-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sun Jun 19 20:36:29 2022
-- Host        : ic22 running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_build_info_0_sim_netlist.vhdl
-- Design      : bd_22c0_build_info_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu50-fsvh2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  port (
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\ : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    start2 : in STD_LOGIC;
    IP2Bus_WrAck : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\ : in STD_LOGIC;
    bus2ip_rnw_i : in STD_LOGIC;
    \Scratch_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  signal Bus2IP_CS : STD_LOGIC;
  signal \^include_dphase_timer.dpto_cnt_reg[2]\ : STD_LOGIC;
  signal \^include_dphase_timer.dpto_cnt_reg[2]_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \IP2Bus_Ack[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \IP2Bus_Data[31]_i_1\ : label is "soft_lutpair0";
begin
  \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\ <= \^include_dphase_timer.dpto_cnt_reg[2]\;
  \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0\ <= \^include_dphase_timer.dpto_cnt_reg[2]_0\;
\IP2Bus_Ack[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Bus2IP_CS,
      I1 => S_AXI_ARESETN,
      O => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\
    );
\IP2Bus_Data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => Bus2IP_CS,
      O => S_AXI_ARESETN_0(0)
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005400"
    )
        port map (
      I0 => \^include_dphase_timer.dpto_cnt_reg[2]\,
      I1 => Bus2IP_CS,
      I2 => start2,
      I3 => S_AXI_ARESETN,
      I4 => IP2Bus_WrAck,
      I5 => \^include_dphase_timer.dpto_cnt_reg[2]_0\,
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\,
      Q => Bus2IP_CS,
      R => '0'
    );
\Scratch[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => bus2ip_rnw_i,
      I1 => Bus2IP_CS,
      I2 => \Scratch_reg[0]\(0),
      I3 => \Scratch_reg[0]\(2),
      I4 => \Scratch_reg[0]\(1),
      O => E(0)
    );
s_axi_bvalid_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\,
      I3 => Q(0),
      I4 => Q(4),
      I5 => Q(3),
      O => \^include_dphase_timer.dpto_cnt_reg[2]_0\
    );
s_axi_rvalid_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\,
      I3 => Q(0),
      I4 => Q(4),
      I5 => Q(3),
      O => \^include_dphase_timer.dpto_cnt_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    IP2Bus_WrAck : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \IP2Bus_Data_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  signal Bus2IP_Addr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal I_DECODER_n_1 : STD_LOGIC;
  signal I_DECODER_n_2 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_WREADY_INST_0_i_1_n_0 : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal bus2ip_rnw_i : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal is_read : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rst : STD_LOGIC;
  signal s_axi_bresp_i : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal \state1__2\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \IP2Bus_Data[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \IP2Bus_Data[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \IP2Bus_Data[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \IP2Bus_Data[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \IP2Bus_Data[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \IP2Bus_Data[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \IP2Bus_Data[15]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \IP2Bus_Data[16]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \IP2Bus_Data[17]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \IP2Bus_Data[18]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \IP2Bus_Data[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \IP2Bus_Data[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \IP2Bus_Data[20]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \IP2Bus_Data[21]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \IP2Bus_Data[22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \IP2Bus_Data[23]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \IP2Bus_Data[24]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \IP2Bus_Data[25]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \IP2Bus_Data[26]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \IP2Bus_Data[27]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \IP2Bus_Data[28]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \IP2Bus_Data[29]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \IP2Bus_Data[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \IP2Bus_Data[30]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \IP2Bus_Data[31]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \IP2Bus_Data[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \IP2Bus_Data[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \IP2Bus_Data[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \IP2Bus_Data[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \IP2Bus_Data[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \IP2Bus_Data[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \IP2Bus_Data[9]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of is_read_i_2 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of is_write_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair2";
begin
  SR(0) <= \^sr\(0);
  s_axi_bvalid_i_reg_0 <= \^s_axi_bvalid_i_reg_0\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF007000700070"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => S_AXI_ARVALID,
      I4 => \state1__2\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => \^s_axi_bvalid_i_reg_0\,
      I2 => S_AXI_RREADY,
      I3 => \^s_axi_rvalid_i_reg_0\,
      O => \state1__2\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8888"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => I_DECODER_n_1,
      I3 => IP2Bus_WrAck,
      I4 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040404FF04040404"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => S_AXI_ARVALID,
      I3 => I_DECODER_n_2,
      I4 => IP2Bus_WrAck,
      I5 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAEEEEEAEA"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => s_axi_bresp_i,
      I2 => I_DECODER_n_2,
      I3 => I_DECODER_n_1,
      I4 => IP2Bus_WrAck,
      I5 => s_axi_rresp_i,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A2A2A"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^s_axi_rvalid_i_reg_0\,
      I2 => S_AXI_RREADY,
      I3 => \^s_axi_bvalid_i_reg_0\,
      I4 => S_AXI_BREADY,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => rst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => rst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => rst
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      O => plusOp(4)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(4),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      R => clear
    );
\IP2Bus_Data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0803"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(0),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(0)
    );
\IP2Bus_Data[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(10),
      O => D(10)
    );
\IP2Bus_Data[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(11),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(11)
    );
\IP2Bus_Data[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(12),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(12)
    );
\IP2Bus_Data[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3803"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(13),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(2),
      O => D(13)
    );
\IP2Bus_Data[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(14),
      O => D(14)
    );
\IP2Bus_Data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(15),
      O => D(15)
    );
\IP2Bus_Data[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0803"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(16),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(16)
    );
\IP2Bus_Data[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F00"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(17),
      I1 => Bus2IP_Addr(3),
      I2 => Bus2IP_Addr(4),
      I3 => Bus2IP_Addr(2),
      O => D(17)
    );
\IP2Bus_Data[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(18),
      O => D(18)
    );
\IP2Bus_Data[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3803"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(19),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(2),
      O => D(19)
    );
\IP2Bus_Data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0803"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(1),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(1)
    );
\IP2Bus_Data[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0803"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(20),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(20)
    );
\IP2Bus_Data[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(21),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(21)
    );
\IP2Bus_Data[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(22),
      O => D(22)
    );
\IP2Bus_Data[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(23),
      O => D(23)
    );
\IP2Bus_Data[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(24),
      O => D(24)
    );
\IP2Bus_Data[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(25),
      O => D(25)
    );
\IP2Bus_Data[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(26),
      O => D(26)
    );
\IP2Bus_Data[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(27),
      O => D(27)
    );
\IP2Bus_Data[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(28),
      O => D(28)
    );
\IP2Bus_Data[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0803"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(29),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(29)
    );
\IP2Bus_Data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3803"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(2),
      O => D(2)
    );
\IP2Bus_Data[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(30),
      O => D(30)
    );
\IP2Bus_Data[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(31),
      O => D(31)
    );
\IP2Bus_Data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(3),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(3)
    );
\IP2Bus_Data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(4),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(4)
    );
\IP2Bus_Data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(5),
      O => D(5)
    );
\IP2Bus_Data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(6),
      O => D(6)
    );
\IP2Bus_Data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(7),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(7)
    );
\IP2Bus_Data[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(8),
      O => D(8)
    );
\IP2Bus_Data[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(9),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(9)
    );
I_DECODER: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
     port map (
      E(0) => E(0),
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\ => I_DECODER_n_1,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0\ => I_DECODER_n_2,
      IP2Bus_WrAck => IP2Bus_WrAck,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ => is_read_reg_n_0,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\ => is_write_reg_n_0,
      Q(4 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0(0) => S_AXI_ARESETN_0(0),
      \Scratch_reg[0]\(2 downto 0) => Bus2IP_Addr(4 downto 2),
      bus2ip_rnw_i => bus2ip_rnw_i,
      start2 => start2
    );
S_AXI_ARREADY_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => S_AXI_WREADY_INST_0_i_1_n_0,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => is_read_reg_n_0,
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I5 => IP2Bus_WrAck,
      O => S_AXI_ARREADY
    );
S_AXI_WREADY_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => S_AXI_WREADY_INST_0_i_1_n_0,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => is_write_reg_n_0,
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I5 => IP2Bus_WrAck,
      O => S_AXI_AWREADY
    );
S_AXI_WREADY_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      O => S_AXI_WREADY_INST_0_i_1_n_0
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_ARADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_AWADDR(0),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_ARADDR(1),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_AWADDR(1),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_ARADDR(2),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_AWADDR(2),
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => Bus2IP_Addr(2),
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => Bus2IP_Addr(3),
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[4]_i_1_n_0\,
      Q => Bus2IP_Addr(4),
      R => rst
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => start2_i_1_n_0,
      D => S_AXI_ARVALID,
      Q => bus2ip_rnw_i,
      R => rst
    );
is_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8880000"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => \^s_axi_bvalid_i_reg_0\,
      I2 => S_AXI_RREADY,
      I3 => \^s_axi_rvalid_i_reg_0\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => is_read_i_1_n_0
    );
is_read_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => S_AXI_ARVALID,
      O => is_read
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => is_read_i_1_n_0,
      D => is_read,
      Q => is_read_reg_n_0,
      R => rst
    );
is_write_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => S_AXI_WVALID,
      I3 => S_AXI_AWVALID,
      O => is_write
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => is_read_i_1_n_0,
      D => is_write,
      Q => is_write_reg_n_0,
      R => rst
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^sr\(0)
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \^sr\(0),
      Q => rst,
      R => '0'
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0FFFF00E000E0"
    )
        port map (
      I0 => I_DECODER_n_2,
      I1 => IP2Bus_WrAck,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid_i_reg_0\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid_i_reg_0\,
      R => rst
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(0),
      Q => S_AXI_RDATA(0),
      R => rst
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(10),
      Q => S_AXI_RDATA(10),
      R => rst
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(11),
      Q => S_AXI_RDATA(11),
      R => rst
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(12),
      Q => S_AXI_RDATA(12),
      R => rst
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(13),
      Q => S_AXI_RDATA(13),
      R => rst
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(14),
      Q => S_AXI_RDATA(14),
      R => rst
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(15),
      Q => S_AXI_RDATA(15),
      R => rst
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(16),
      Q => S_AXI_RDATA(16),
      R => rst
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(17),
      Q => S_AXI_RDATA(17),
      R => rst
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(18),
      Q => S_AXI_RDATA(18),
      R => rst
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(19),
      Q => S_AXI_RDATA(19),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(1),
      Q => S_AXI_RDATA(1),
      R => rst
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(20),
      Q => S_AXI_RDATA(20),
      R => rst
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(21),
      Q => S_AXI_RDATA(21),
      R => rst
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(22),
      Q => S_AXI_RDATA(22),
      R => rst
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(23),
      Q => S_AXI_RDATA(23),
      R => rst
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(24),
      Q => S_AXI_RDATA(24),
      R => rst
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(25),
      Q => S_AXI_RDATA(25),
      R => rst
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(26),
      Q => S_AXI_RDATA(26),
      R => rst
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(27),
      Q => S_AXI_RDATA(27),
      R => rst
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(28),
      Q => S_AXI_RDATA(28),
      R => rst
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(29),
      Q => S_AXI_RDATA(29),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(2),
      Q => S_AXI_RDATA(2),
      R => rst
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(30),
      Q => S_AXI_RDATA(30),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(31),
      Q => S_AXI_RDATA(31),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(3),
      Q => S_AXI_RDATA(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(4),
      Q => S_AXI_RDATA(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(5),
      Q => S_AXI_RDATA(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(6),
      Q => S_AXI_RDATA(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(7),
      Q => S_AXI_RDATA(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(8),
      Q => S_AXI_RDATA(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(9),
      Q => S_AXI_RDATA(9),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0FFFF00E000E0"
    )
        port map (
      I0 => I_DECODER_n_1,
      I1 => IP2Bus_WrAck,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => S_AXI_RREADY,
      I5 => \^s_axi_rvalid_i_reg_0\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => S_AXI_ARVALID,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FEEFFFF0FEEFF00"
    )
        port map (
      I0 => IP2Bus_WrAck,
      I1 => I_DECODER_n_2,
      I2 => \state1__2\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => S_AXI_ARVALID,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4440EEEA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => IP2Bus_WrAck,
      I3 => I_DECODER_n_1,
      I4 => \state1__2\,
      I5 => \state[1]_i_2_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0008"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => S_AXI_ARVALID,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => \state[1]_i_2_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    IP2Bus_WrAck : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \IP2Bus_Data_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
     port map (
      D(31 downto 0) => D(31 downto 0),
      E(0) => E(0),
      \IP2Bus_Data_reg[31]\(31 downto 0) => \IP2Bus_Data_reg[31]\(31 downto 0),
      IP2Bus_WrAck => IP2Bus_WrAck,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      Q(31 downto 0) => Q(31 downto 0),
      SR(0) => SR(0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(2 downto 0) => S_AXI_ARADDR(2 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0(0) => S_AXI_ARESETN_0(0),
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(2 downto 0) => S_AXI_AWADDR(2 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 is
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
  attribute C_CORE_REVISION : integer;
  attribute C_CORE_REVISION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 : entity is 0;
  attribute C_MAJOR_VERSION : integer;
  attribute C_MAJOR_VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 : entity is 2;
  attribute C_MINOR_VERSION : integer;
  attribute C_MINOR_VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 : entity is 0;
  attribute C_PATCH_VERSION : integer;
  attribute C_PATCH_VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 : entity is 0;
  attribute C_PERFORCE_CL : integer;
  attribute C_PERFORCE_CL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 : entity is 2767516;
  attribute C_RESERVED_TAG : integer;
  attribute C_RESERVED_TAG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 : entity is 0;
  attribute C_SUBSYSTEM_ID : integer;
  attribute C_SUBSYSTEM_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 : entity is 7;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 : entity is 5;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 : entity is 32;
  attribute C_VIV_VERSION : integer;
  attribute C_VIV_VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 : entity is 2103584;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 : entity is "virtexuplusHBM";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \IP2Bus_Ack_reg_n_0_[1]\ : STD_LOGIC;
  signal \IP2Bus_Ack_reg_n_0_[2]\ : STD_LOGIC;
  signal \IP2Bus_Ack_reg_n_0_[3]\ : STD_LOGIC;
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal IP2Bus_WrAck : STD_LOGIC;
  signal IP2Bus_WrAck_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal Scratch : STD_LOGIC;
  signal \Scratch_reg_n_0_[0]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[10]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[11]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[12]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[13]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[14]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[15]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[16]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[17]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[18]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[19]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[1]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[20]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[21]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[22]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[23]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[24]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[25]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[26]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[27]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[28]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[29]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[2]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[30]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[31]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[3]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[4]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[5]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[6]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[7]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[8]\ : STD_LOGIC;
  signal \Scratch_reg_n_0_[9]\ : STD_LOGIC;
  signal axi_lite_ipif_1_n_3 : STD_LOGIC;
  signal axi_lite_ipif_1_n_39 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_WREADY <= \^s_axi_awready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\IP2Bus_Ack_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_lite_ipif_1_n_3,
      Q => \IP2Bus_Ack_reg_n_0_[1]\,
      R => '0'
    );
\IP2Bus_Ack_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \IP2Bus_Ack_reg_n_0_[1]\,
      Q => \IP2Bus_Ack_reg_n_0_[2]\,
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Ack_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \IP2Bus_Ack_reg_n_0_[2]\,
      Q => \IP2Bus_Ack_reg_n_0_[3]\,
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(0),
      Q => IP2Bus_Data(0),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(10),
      Q => IP2Bus_Data(10),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(11),
      Q => IP2Bus_Data(11),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(12),
      Q => IP2Bus_Data(12),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(13),
      Q => IP2Bus_Data(13),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(14),
      Q => IP2Bus_Data(14),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(15),
      Q => IP2Bus_Data(15),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(16),
      Q => IP2Bus_Data(16),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(17),
      Q => IP2Bus_Data(17),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(18),
      Q => IP2Bus_Data(18),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(19),
      Q => IP2Bus_Data(19),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(1),
      Q => IP2Bus_Data(1),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(20),
      Q => IP2Bus_Data(20),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(21),
      Q => IP2Bus_Data(21),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(22),
      Q => IP2Bus_Data(22),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(23),
      Q => IP2Bus_Data(23),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(24),
      Q => IP2Bus_Data(24),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(25),
      Q => IP2Bus_Data(25),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(26),
      Q => IP2Bus_Data(26),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(27),
      Q => IP2Bus_Data(27),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(28),
      Q => IP2Bus_Data(28),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(29),
      Q => IP2Bus_Data(29),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(2),
      Q => IP2Bus_Data(2),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(30),
      Q => IP2Bus_Data(30),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(31),
      Q => IP2Bus_Data(31),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(3),
      Q => IP2Bus_Data(3),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(4),
      Q => IP2Bus_Data(4),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(5),
      Q => IP2Bus_Data(5),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(6),
      Q => IP2Bus_Data(6),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(7),
      Q => IP2Bus_Data(7),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(8),
      Q => IP2Bus_Data(8),
      R => axi_lite_ipif_1_n_39
    );
\IP2Bus_Data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(9),
      Q => IP2Bus_Data(9),
      R => axi_lite_ipif_1_n_39
    );
IP2Bus_WrAck_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \IP2Bus_Ack_reg_n_0_[2]\,
      I1 => \IP2Bus_Ack_reg_n_0_[3]\,
      O => IP2Bus_WrAck_i_1_n_0
    );
IP2Bus_WrAck_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => IP2Bus_WrAck_i_1_n_0,
      Q => IP2Bus_WrAck,
      R => '0'
    );
\Scratch_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(0),
      Q => \Scratch_reg_n_0_[0]\,
      R => p_0_in
    );
\Scratch_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(10),
      Q => \Scratch_reg_n_0_[10]\,
      R => p_0_in
    );
\Scratch_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(11),
      Q => \Scratch_reg_n_0_[11]\,
      R => p_0_in
    );
\Scratch_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(12),
      Q => \Scratch_reg_n_0_[12]\,
      R => p_0_in
    );
\Scratch_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(13),
      Q => \Scratch_reg_n_0_[13]\,
      R => p_0_in
    );
\Scratch_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(14),
      Q => \Scratch_reg_n_0_[14]\,
      R => p_0_in
    );
\Scratch_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(15),
      Q => \Scratch_reg_n_0_[15]\,
      R => p_0_in
    );
\Scratch_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(16),
      Q => \Scratch_reg_n_0_[16]\,
      R => p_0_in
    );
\Scratch_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(17),
      Q => \Scratch_reg_n_0_[17]\,
      R => p_0_in
    );
\Scratch_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(18),
      Q => \Scratch_reg_n_0_[18]\,
      R => p_0_in
    );
\Scratch_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(19),
      Q => \Scratch_reg_n_0_[19]\,
      R => p_0_in
    );
\Scratch_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(1),
      Q => \Scratch_reg_n_0_[1]\,
      R => p_0_in
    );
\Scratch_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(20),
      Q => \Scratch_reg_n_0_[20]\,
      R => p_0_in
    );
\Scratch_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(21),
      Q => \Scratch_reg_n_0_[21]\,
      R => p_0_in
    );
\Scratch_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(22),
      Q => \Scratch_reg_n_0_[22]\,
      R => p_0_in
    );
\Scratch_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(23),
      Q => \Scratch_reg_n_0_[23]\,
      R => p_0_in
    );
\Scratch_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(24),
      Q => \Scratch_reg_n_0_[24]\,
      R => p_0_in
    );
\Scratch_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(25),
      Q => \Scratch_reg_n_0_[25]\,
      R => p_0_in
    );
\Scratch_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(26),
      Q => \Scratch_reg_n_0_[26]\,
      R => p_0_in
    );
\Scratch_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(27),
      Q => \Scratch_reg_n_0_[27]\,
      R => p_0_in
    );
\Scratch_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(28),
      Q => \Scratch_reg_n_0_[28]\,
      R => p_0_in
    );
\Scratch_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(29),
      Q => \Scratch_reg_n_0_[29]\,
      R => p_0_in
    );
\Scratch_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(2),
      Q => \Scratch_reg_n_0_[2]\,
      R => p_0_in
    );
\Scratch_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(30),
      Q => \Scratch_reg_n_0_[30]\,
      R => p_0_in
    );
\Scratch_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(31),
      Q => \Scratch_reg_n_0_[31]\,
      R => p_0_in
    );
\Scratch_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(3),
      Q => \Scratch_reg_n_0_[3]\,
      R => p_0_in
    );
\Scratch_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(4),
      Q => \Scratch_reg_n_0_[4]\,
      R => p_0_in
    );
\Scratch_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(5),
      Q => \Scratch_reg_n_0_[5]\,
      R => p_0_in
    );
\Scratch_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(6),
      Q => \Scratch_reg_n_0_[6]\,
      R => p_0_in
    );
\Scratch_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(7),
      Q => \Scratch_reg_n_0_[7]\,
      R => p_0_in
    );
\Scratch_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(8),
      Q => \Scratch_reg_n_0_[8]\,
      R => p_0_in
    );
\Scratch_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => Scratch,
      D => S_AXI_WDATA(9),
      Q => \Scratch_reg_n_0_[9]\,
      R => p_0_in
    );
axi_lite_ipif_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
     port map (
      D(31 downto 0) => p_1_in(31 downto 0),
      E(0) => Scratch,
      \IP2Bus_Data_reg[31]\(31) => \Scratch_reg_n_0_[31]\,
      \IP2Bus_Data_reg[31]\(30) => \Scratch_reg_n_0_[30]\,
      \IP2Bus_Data_reg[31]\(29) => \Scratch_reg_n_0_[29]\,
      \IP2Bus_Data_reg[31]\(28) => \Scratch_reg_n_0_[28]\,
      \IP2Bus_Data_reg[31]\(27) => \Scratch_reg_n_0_[27]\,
      \IP2Bus_Data_reg[31]\(26) => \Scratch_reg_n_0_[26]\,
      \IP2Bus_Data_reg[31]\(25) => \Scratch_reg_n_0_[25]\,
      \IP2Bus_Data_reg[31]\(24) => \Scratch_reg_n_0_[24]\,
      \IP2Bus_Data_reg[31]\(23) => \Scratch_reg_n_0_[23]\,
      \IP2Bus_Data_reg[31]\(22) => \Scratch_reg_n_0_[22]\,
      \IP2Bus_Data_reg[31]\(21) => \Scratch_reg_n_0_[21]\,
      \IP2Bus_Data_reg[31]\(20) => \Scratch_reg_n_0_[20]\,
      \IP2Bus_Data_reg[31]\(19) => \Scratch_reg_n_0_[19]\,
      \IP2Bus_Data_reg[31]\(18) => \Scratch_reg_n_0_[18]\,
      \IP2Bus_Data_reg[31]\(17) => \Scratch_reg_n_0_[17]\,
      \IP2Bus_Data_reg[31]\(16) => \Scratch_reg_n_0_[16]\,
      \IP2Bus_Data_reg[31]\(15) => \Scratch_reg_n_0_[15]\,
      \IP2Bus_Data_reg[31]\(14) => \Scratch_reg_n_0_[14]\,
      \IP2Bus_Data_reg[31]\(13) => \Scratch_reg_n_0_[13]\,
      \IP2Bus_Data_reg[31]\(12) => \Scratch_reg_n_0_[12]\,
      \IP2Bus_Data_reg[31]\(11) => \Scratch_reg_n_0_[11]\,
      \IP2Bus_Data_reg[31]\(10) => \Scratch_reg_n_0_[10]\,
      \IP2Bus_Data_reg[31]\(9) => \Scratch_reg_n_0_[9]\,
      \IP2Bus_Data_reg[31]\(8) => \Scratch_reg_n_0_[8]\,
      \IP2Bus_Data_reg[31]\(7) => \Scratch_reg_n_0_[7]\,
      \IP2Bus_Data_reg[31]\(6) => \Scratch_reg_n_0_[6]\,
      \IP2Bus_Data_reg[31]\(5) => \Scratch_reg_n_0_[5]\,
      \IP2Bus_Data_reg[31]\(4) => \Scratch_reg_n_0_[4]\,
      \IP2Bus_Data_reg[31]\(3) => \Scratch_reg_n_0_[3]\,
      \IP2Bus_Data_reg[31]\(2) => \Scratch_reg_n_0_[2]\,
      \IP2Bus_Data_reg[31]\(1) => \Scratch_reg_n_0_[1]\,
      \IP2Bus_Data_reg[31]\(0) => \Scratch_reg_n_0_[0]\,
      IP2Bus_WrAck => IP2Bus_WrAck,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => axi_lite_ipif_1_n_3,
      Q(31 downto 0) => IP2Bus_Data(31 downto 0),
      SR(0) => p_0_in,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(2 downto 0) => S_AXI_ARADDR(4 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0(0) => axi_lite_ipif_1_n_39,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(2 downto 0) => S_AXI_AWADDR(4 downto 2),
      S_AXI_AWREADY => \^s_axi_awready\,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      s_axi_bvalid_i_reg => S_AXI_BVALID,
      s_axi_rvalid_i_reg => S_AXI_RVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_22c0_build_info_0,shell_utils_build_info_v1_0_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "shell_utils_build_info_v1_0_0,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_S_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_S_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_CORE_REVISION : integer;
  attribute C_CORE_REVISION of U0 : label is 0;
  attribute C_MAJOR_VERSION : integer;
  attribute C_MAJOR_VERSION of U0 : label is 2;
  attribute C_MINOR_VERSION : integer;
  attribute C_MINOR_VERSION of U0 : label is 0;
  attribute C_PATCH_VERSION : integer;
  attribute C_PATCH_VERSION of U0 : label is 0;
  attribute C_PERFORCE_CL : integer;
  attribute C_PERFORCE_CL of U0 : label is 2767516;
  attribute C_RESERVED_TAG : integer;
  attribute C_RESERVED_TAG of U0 : label is 0;
  attribute C_SUBSYSTEM_ID : integer;
  attribute C_SUBSYSTEM_ID of U0 : label is 7;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 5;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_VIV_VERSION : integer;
  attribute C_VIV_VERSION of U0 : label is 2103584;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "virtexuplusHBM";
  attribute x_interface_info : string;
  attribute x_interface_info of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_parameter of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_parameter of S_AXI_AWADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(4 downto 2) => S_AXI_ARADDR(4 downto 2),
      S_AXI_ARADDR(1 downto 0) => B"00",
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(4 downto 2) => S_AXI_AWADDR(4 downto 2),
      S_AXI_AWADDR(1 downto 0) => B"00",
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => NLW_U0_S_AXI_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => NLW_U0_S_AXI_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => B"0000",
      S_AXI_WVALID => S_AXI_WVALID
    );
end STRUCTURE;
