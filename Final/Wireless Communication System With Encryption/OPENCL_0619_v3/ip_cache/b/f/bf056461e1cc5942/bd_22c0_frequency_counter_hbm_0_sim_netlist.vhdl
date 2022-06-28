-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sun Jun 19 20:35:46 2022
-- Host        : ic22 running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_frequency_counter_hbm_0_sim_netlist.vhdl
-- Design      : bd_22c0_frequency_counter_hbm_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu50-fsvh2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is "ARRAY_SINGLE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single is
  signal async_path_bit : STD_LOGIC;
  signal \syncstages_ff[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \syncstages_ff[2]\ : signal is "true";
  attribute async_reg of \syncstages_ff[2]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[2]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][0]\ : label is "ARRAY_SINGLE";
begin
  async_path_bit <= src_in(0);
  dest_out(0) <= \syncstages_ff[2]\;
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit,
      Q => \syncstages_ff[0]\,
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\,
      Q => \syncstages_ff[1]\,
      R => '0'
    );
\syncstages_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\,
      Q => \syncstages_ff[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2\ : entity is "xpm_cdc_array_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2\ : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2\ : entity is "ARRAY_SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2\ is
  signal async_path_bit : STD_LOGIC;
  signal \syncstages_ff[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \syncstages_ff[2]\ : signal is "true";
  attribute async_reg of \syncstages_ff[2]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[2]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][0]\ : label is "ARRAY_SINGLE";
begin
  async_path_bit <= src_in(0);
  dest_out(0) <= \syncstages_ff[2]\;
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit,
      Q => \syncstages_ff[0]\,
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\,
      Q => \syncstages_ff[1]\,
      R => '0'
    );
\syncstages_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\,
      Q => \syncstages_ff[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is "xpm_cdc_array_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is 32;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is "ARRAY_SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ is
  signal async_path_bit : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][16]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][16]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][16]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][17]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][17]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][17]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][18]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][18]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][18]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][19]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][19]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][19]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][20]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][20]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][20]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][21]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][21]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][21]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][22]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][22]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][22]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][23]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][23]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][23]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][24]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][24]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][24]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][25]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][25]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][25]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][26]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][26]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][26]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][27]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][27]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][27]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][28]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][28]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][28]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][29]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][29]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][29]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][30]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][30]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][30]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][31]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][31]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][31]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][16]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][16]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][16]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][17]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][17]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][17]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][18]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][18]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][18]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][19]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][19]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][19]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][20]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][20]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][20]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][21]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][21]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][21]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][22]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][22]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][22]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][23]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][23]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][23]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][24]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][24]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][24]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][25]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][25]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][25]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][26]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][26]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][26]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][27]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][27]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][27]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][28]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][28]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][28]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][29]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][29]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][29]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][30]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][30]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][30]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][31]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][31]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][31]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][9]\ : label is "ARRAY_SINGLE";
begin
  async_path_bit(31 downto 0) <= src_in(31 downto 0);
  dest_out(31 downto 0) <= \syncstages_ff[1]\(31 downto 0);
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(10),
      Q => \syncstages_ff[0]\(10),
      R => '0'
    );
\syncstages_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(11),
      Q => \syncstages_ff[0]\(11),
      R => '0'
    );
\syncstages_ff_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(12),
      Q => \syncstages_ff[0]\(12),
      R => '0'
    );
\syncstages_ff_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(13),
      Q => \syncstages_ff[0]\(13),
      R => '0'
    );
\syncstages_ff_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(14),
      Q => \syncstages_ff[0]\(14),
      R => '0'
    );
\syncstages_ff_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(15),
      Q => \syncstages_ff[0]\(15),
      R => '0'
    );
\syncstages_ff_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(16),
      Q => \syncstages_ff[0]\(16),
      R => '0'
    );
\syncstages_ff_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(17),
      Q => \syncstages_ff[0]\(17),
      R => '0'
    );
\syncstages_ff_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(18),
      Q => \syncstages_ff[0]\(18),
      R => '0'
    );
\syncstages_ff_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(19),
      Q => \syncstages_ff[0]\(19),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(20),
      Q => \syncstages_ff[0]\(20),
      R => '0'
    );
\syncstages_ff_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(21),
      Q => \syncstages_ff[0]\(21),
      R => '0'
    );
\syncstages_ff_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(22),
      Q => \syncstages_ff[0]\(22),
      R => '0'
    );
\syncstages_ff_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(23),
      Q => \syncstages_ff[0]\(23),
      R => '0'
    );
\syncstages_ff_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(24),
      Q => \syncstages_ff[0]\(24),
      R => '0'
    );
\syncstages_ff_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(25),
      Q => \syncstages_ff[0]\(25),
      R => '0'
    );
\syncstages_ff_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(26),
      Q => \syncstages_ff[0]\(26),
      R => '0'
    );
\syncstages_ff_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(27),
      Q => \syncstages_ff[0]\(27),
      R => '0'
    );
\syncstages_ff_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(28),
      Q => \syncstages_ff[0]\(28),
      R => '0'
    );
\syncstages_ff_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(29),
      Q => \syncstages_ff[0]\(29),
      R => '0'
    );
\syncstages_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(2),
      Q => \syncstages_ff[0]\(2),
      R => '0'
    );
\syncstages_ff_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(30),
      Q => \syncstages_ff[0]\(30),
      R => '0'
    );
\syncstages_ff_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(31),
      Q => \syncstages_ff[0]\(31),
      R => '0'
    );
\syncstages_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(3),
      Q => \syncstages_ff[0]\(3),
      R => '0'
    );
\syncstages_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(4),
      Q => \syncstages_ff[0]\(4),
      R => '0'
    );
\syncstages_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(5),
      Q => \syncstages_ff[0]\(5),
      R => '0'
    );
\syncstages_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(6),
      Q => \syncstages_ff[0]\(6),
      R => '0'
    );
\syncstages_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(7),
      Q => \syncstages_ff[0]\(7),
      R => '0'
    );
\syncstages_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(8),
      Q => \syncstages_ff[0]\(8),
      R => '0'
    );
\syncstages_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(9),
      Q => \syncstages_ff[0]\(9),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(10),
      Q => \syncstages_ff[1]\(10),
      R => '0'
    );
\syncstages_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(11),
      Q => \syncstages_ff[1]\(11),
      R => '0'
    );
\syncstages_ff_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(12),
      Q => \syncstages_ff[1]\(12),
      R => '0'
    );
\syncstages_ff_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(13),
      Q => \syncstages_ff[1]\(13),
      R => '0'
    );
\syncstages_ff_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(14),
      Q => \syncstages_ff[1]\(14),
      R => '0'
    );
\syncstages_ff_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(15),
      Q => \syncstages_ff[1]\(15),
      R => '0'
    );
\syncstages_ff_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(16),
      Q => \syncstages_ff[1]\(16),
      R => '0'
    );
\syncstages_ff_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(17),
      Q => \syncstages_ff[1]\(17),
      R => '0'
    );
\syncstages_ff_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(18),
      Q => \syncstages_ff[1]\(18),
      R => '0'
    );
\syncstages_ff_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(19),
      Q => \syncstages_ff[1]\(19),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(20),
      Q => \syncstages_ff[1]\(20),
      R => '0'
    );
\syncstages_ff_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(21),
      Q => \syncstages_ff[1]\(21),
      R => '0'
    );
\syncstages_ff_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(22),
      Q => \syncstages_ff[1]\(22),
      R => '0'
    );
\syncstages_ff_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(23),
      Q => \syncstages_ff[1]\(23),
      R => '0'
    );
\syncstages_ff_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(24),
      Q => \syncstages_ff[1]\(24),
      R => '0'
    );
\syncstages_ff_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(25),
      Q => \syncstages_ff[1]\(25),
      R => '0'
    );
\syncstages_ff_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(26),
      Q => \syncstages_ff[1]\(26),
      R => '0'
    );
\syncstages_ff_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(27),
      Q => \syncstages_ff[1]\(27),
      R => '0'
    );
\syncstages_ff_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(28),
      Q => \syncstages_ff[1]\(28),
      R => '0'
    );
\syncstages_ff_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(29),
      Q => \syncstages_ff[1]\(29),
      R => '0'
    );
\syncstages_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(2),
      Q => \syncstages_ff[1]\(2),
      R => '0'
    );
\syncstages_ff_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(30),
      Q => \syncstages_ff[1]\(30),
      R => '0'
    );
\syncstages_ff_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(31),
      Q => \syncstages_ff[1]\(31),
      R => '0'
    );
\syncstages_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(3),
      Q => \syncstages_ff[1]\(3),
      R => '0'
    );
\syncstages_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(4),
      Q => \syncstages_ff[1]\(4),
      R => '0'
    );
\syncstages_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(5),
      Q => \syncstages_ff[1]\(5),
      R => '0'
    );
\syncstages_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(6),
      Q => \syncstages_ff[1]\(6),
      R => '0'
    );
\syncstages_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(7),
      Q => \syncstages_ff[1]\(7),
      R => '0'
    );
\syncstages_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(8),
      Q => \syncstages_ff[1]\(8),
      R => '0'
    );
\syncstages_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(9),
      Q => \syncstages_ff[1]\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__2\ : entity is "xpm_cdc_array_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__2\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__2\ : entity is 32;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__2\ : entity is "ARRAY_SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__2\ is
  signal async_path_bit : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][16]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][16]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][16]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][17]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][17]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][17]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][18]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][18]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][18]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][19]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][19]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][19]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][20]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][20]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][20]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][21]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][21]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][21]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][22]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][22]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][22]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][23]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][23]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][23]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][24]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][24]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][24]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][25]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][25]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][25]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][26]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][26]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][26]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][27]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][27]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][27]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][28]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][28]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][28]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][29]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][29]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][29]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][30]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][30]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][30]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][31]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][31]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][31]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][16]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][16]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][16]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][17]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][17]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][17]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][18]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][18]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][18]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][19]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][19]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][19]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][20]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][20]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][20]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][21]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][21]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][21]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][22]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][22]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][22]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][23]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][23]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][23]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][24]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][24]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][24]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][25]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][25]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][25]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][26]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][26]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][26]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][27]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][27]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][27]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][28]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][28]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][28]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][29]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][29]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][29]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][30]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][30]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][30]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][31]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][31]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][31]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][9]\ : label is "ARRAY_SINGLE";
begin
  async_path_bit(31 downto 0) <= src_in(31 downto 0);
  dest_out(31 downto 0) <= \syncstages_ff[1]\(31 downto 0);
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(10),
      Q => \syncstages_ff[0]\(10),
      R => '0'
    );
\syncstages_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(11),
      Q => \syncstages_ff[0]\(11),
      R => '0'
    );
\syncstages_ff_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(12),
      Q => \syncstages_ff[0]\(12),
      R => '0'
    );
\syncstages_ff_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(13),
      Q => \syncstages_ff[0]\(13),
      R => '0'
    );
\syncstages_ff_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(14),
      Q => \syncstages_ff[0]\(14),
      R => '0'
    );
\syncstages_ff_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(15),
      Q => \syncstages_ff[0]\(15),
      R => '0'
    );
\syncstages_ff_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(16),
      Q => \syncstages_ff[0]\(16),
      R => '0'
    );
\syncstages_ff_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(17),
      Q => \syncstages_ff[0]\(17),
      R => '0'
    );
\syncstages_ff_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(18),
      Q => \syncstages_ff[0]\(18),
      R => '0'
    );
\syncstages_ff_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(19),
      Q => \syncstages_ff[0]\(19),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(20),
      Q => \syncstages_ff[0]\(20),
      R => '0'
    );
\syncstages_ff_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(21),
      Q => \syncstages_ff[0]\(21),
      R => '0'
    );
\syncstages_ff_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(22),
      Q => \syncstages_ff[0]\(22),
      R => '0'
    );
\syncstages_ff_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(23),
      Q => \syncstages_ff[0]\(23),
      R => '0'
    );
\syncstages_ff_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(24),
      Q => \syncstages_ff[0]\(24),
      R => '0'
    );
\syncstages_ff_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(25),
      Q => \syncstages_ff[0]\(25),
      R => '0'
    );
\syncstages_ff_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(26),
      Q => \syncstages_ff[0]\(26),
      R => '0'
    );
\syncstages_ff_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(27),
      Q => \syncstages_ff[0]\(27),
      R => '0'
    );
\syncstages_ff_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(28),
      Q => \syncstages_ff[0]\(28),
      R => '0'
    );
\syncstages_ff_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(29),
      Q => \syncstages_ff[0]\(29),
      R => '0'
    );
\syncstages_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(2),
      Q => \syncstages_ff[0]\(2),
      R => '0'
    );
\syncstages_ff_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(30),
      Q => \syncstages_ff[0]\(30),
      R => '0'
    );
\syncstages_ff_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(31),
      Q => \syncstages_ff[0]\(31),
      R => '0'
    );
\syncstages_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(3),
      Q => \syncstages_ff[0]\(3),
      R => '0'
    );
\syncstages_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(4),
      Q => \syncstages_ff[0]\(4),
      R => '0'
    );
\syncstages_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(5),
      Q => \syncstages_ff[0]\(5),
      R => '0'
    );
\syncstages_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(6),
      Q => \syncstages_ff[0]\(6),
      R => '0'
    );
\syncstages_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(7),
      Q => \syncstages_ff[0]\(7),
      R => '0'
    );
\syncstages_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(8),
      Q => \syncstages_ff[0]\(8),
      R => '0'
    );
\syncstages_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(9),
      Q => \syncstages_ff[0]\(9),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(10),
      Q => \syncstages_ff[1]\(10),
      R => '0'
    );
\syncstages_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(11),
      Q => \syncstages_ff[1]\(11),
      R => '0'
    );
\syncstages_ff_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(12),
      Q => \syncstages_ff[1]\(12),
      R => '0'
    );
\syncstages_ff_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(13),
      Q => \syncstages_ff[1]\(13),
      R => '0'
    );
\syncstages_ff_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(14),
      Q => \syncstages_ff[1]\(14),
      R => '0'
    );
\syncstages_ff_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(15),
      Q => \syncstages_ff[1]\(15),
      R => '0'
    );
\syncstages_ff_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(16),
      Q => \syncstages_ff[1]\(16),
      R => '0'
    );
\syncstages_ff_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(17),
      Q => \syncstages_ff[1]\(17),
      R => '0'
    );
\syncstages_ff_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(18),
      Q => \syncstages_ff[1]\(18),
      R => '0'
    );
\syncstages_ff_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(19),
      Q => \syncstages_ff[1]\(19),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(20),
      Q => \syncstages_ff[1]\(20),
      R => '0'
    );
\syncstages_ff_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(21),
      Q => \syncstages_ff[1]\(21),
      R => '0'
    );
\syncstages_ff_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(22),
      Q => \syncstages_ff[1]\(22),
      R => '0'
    );
\syncstages_ff_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(23),
      Q => \syncstages_ff[1]\(23),
      R => '0'
    );
\syncstages_ff_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(24),
      Q => \syncstages_ff[1]\(24),
      R => '0'
    );
\syncstages_ff_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(25),
      Q => \syncstages_ff[1]\(25),
      R => '0'
    );
\syncstages_ff_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(26),
      Q => \syncstages_ff[1]\(26),
      R => '0'
    );
\syncstages_ff_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(27),
      Q => \syncstages_ff[1]\(27),
      R => '0'
    );
\syncstages_ff_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(28),
      Q => \syncstages_ff[1]\(28),
      R => '0'
    );
\syncstages_ff_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(29),
      Q => \syncstages_ff[1]\(29),
      R => '0'
    );
\syncstages_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(2),
      Q => \syncstages_ff[1]\(2),
      R => '0'
    );
\syncstages_ff_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(30),
      Q => \syncstages_ff[1]\(30),
      R => '0'
    );
\syncstages_ff_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(31),
      Q => \syncstages_ff[1]\(31),
      R => '0'
    );
\syncstages_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(3),
      Q => \syncstages_ff[1]\(3),
      R => '0'
    );
\syncstages_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(4),
      Q => \syncstages_ff[1]\(4),
      R => '0'
    );
\syncstages_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(5),
      Q => \syncstages_ff[1]\(5),
      R => '0'
    );
\syncstages_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(6),
      Q => \syncstages_ff[1]\(6),
      R => '0'
    );
\syncstages_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(7),
      Q => \syncstages_ff[1]\(7),
      R => '0'
    );
\syncstages_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(8),
      Q => \syncstages_ff[1]\(8),
      R => '0'
    );
\syncstages_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(9),
      Q => \syncstages_ff[1]\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is "ASYNC_RST";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[2]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(2);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
\arststages_ff_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(1),
      PRE => src_arst,
      Q => arststages_ff(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ : entity is "ASYNC_RST";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[2]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(2);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
\arststages_ff_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(1),
      PRE => src_arst,
      Q => arststages_ff(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0 is
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
    test_clk1 : in STD_LOGIC;
    test_clk2 : in STD_LOGIC;
    test_clk3 : in STD_LOGIC
  );
  attribute CFG_LEN : integer;
  attribute CFG_LEN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0 : entity is 4;
  attribute CLK_CONFIG : string;
  attribute CLK_CONFIG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0 : entity is "16'b0100000000000001";
  attribute IDLE_READ : string;
  attribute IDLE_READ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0 : entity is "2'b01";
  attribute IDLE_WRITE : string;
  attribute IDLE_WRITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0 : entity is "3'b001";
  attribute NUM_CLKS : integer;
  attribute NUM_CLKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0 : entity is 4;
  attribute REF_CLK_FREQ_HZ : integer;
  attribute REF_CLK_FREQ_HZ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0 : entity is 100000;
  attribute TEST_CLK_0_TYPE : integer;
  attribute TEST_CLK_0_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0 : entity is 1;
  attribute TEST_CLK_1_TYPE : integer;
  attribute TEST_CLK_1_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0 : entity is 0;
  attribute TEST_CLK_2_TYPE : integer;
  attribute TEST_CLK_2_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0 : entity is 0;
  attribute TEST_CLK_3_TYPE : integer;
  attribute TEST_CLK_3_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0 : entity is 4;
  attribute WAIT_FOR_BREADY_WRITE : string;
  attribute WAIT_FOR_BREADY_WRITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0 : entity is "3'b100";
  attribute WAIT_FOR_RVALID_READ : string;
  attribute WAIT_FOR_RVALID_READ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0 : entity is "2'b10";
  attribute WAIT_FOR_WVALID_WRITE : string;
  attribute WAIT_FOR_WVALID_WRITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0 : entity is "3'b010";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr[0][0]_i_3_n_0\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_1\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_10\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_11\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_12\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_13\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_14\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_15\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_2\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_3\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_4\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_5\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_6\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_7\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_8\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_9\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_0\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_1\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_10\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_11\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_12\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_13\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_14\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_15\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_2\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_3\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_4\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_5\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_6\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_7\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_8\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_9\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_1\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_10\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_11\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_12\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_13\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_14\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_15\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_2\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_3\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_4\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_5\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_6\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_7\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_8\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_9\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_0\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_1\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_10\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_11\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_12\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_13\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_14\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_15\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_2\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_3\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_4\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_5\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_6\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_7\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_8\ : STD_LOGIC;
  signal \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_9\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr[3][0]_i_3_n_0\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_0\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_1\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_10\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_11\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_12\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_13\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_14\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_15\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_2\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_3\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_4\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_5\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_6\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_7\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_8\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_9\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_0\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_1\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_10\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_11\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_12\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_13\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_14\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_15\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_2\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_3\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_4\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_5\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_6\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_7\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_8\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_9\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_1\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_10\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_11\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_12\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_13\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_14\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_15\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_2\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_3\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_4\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_5\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_6\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_7\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_8\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_9\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_0\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_1\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_10\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_11\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_12\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_13\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_14\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_15\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_2\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_3\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_4\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_5\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_6\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_7\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_8\ : STD_LOGIC;
  signal \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_9\ : STD_LOGIC;
  signal clear_user_rst : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \clear_user_rst__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal done : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of done : signal is "true";
  signal done_c : STD_LOGIC;
  signal done_ref : STD_LOGIC;
  attribute RTL_KEEP of done_ref : signal is "true";
  signal done_ref_i_1_n_0 : STD_LOGIC;
  signal done_ref_i_3_n_0 : STD_LOGIC;
  signal done_ref_i_4_n_0 : STD_LOGIC;
  signal done_ref_i_5_n_0 : STD_LOGIC;
  signal done_ref_i_6_n_0 : STD_LOGIC;
  signal done_ref_i_7_n_0 : STD_LOGIC;
  signal done_ref_i_8_n_0 : STD_LOGIC;
  signal done_synced_0 : STD_LOGIC;
  signal done_synced_3 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \ref_clk_cntr[0]_i_2_n_0\ : STD_LOGIC;
  signal ref_clk_cntr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ref_clk_cntr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[0]_i_1_n_12\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[0]_i_1_n_13\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[0]_i_1_n_14\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[0]_i_1_n_15\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \ref_clk_cntr_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal rst_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of rst_cnt : signal is "true";
  signal rst_cnt_ref : STD_LOGIC;
  attribute RTL_KEEP of rst_cnt_ref : signal is "true";
  signal rst_cnt_synced_0 : STD_LOGIC;
  signal rst_cnt_synced_3 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal s_axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal s_axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal s_axi_wready_i_1_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state_write[2]_i_1_n_0\ : STD_LOGIC;
  signal \state_write[2]_i_2_n_0\ : STD_LOGIC;
  signal \state_write_reg_n_0_[2]\ : STD_LOGIC;
  signal \test_clk_cntr_synced[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \test_clk_cntr_synced[3]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal user_rst_i_1_n_0 : STD_LOGIC;
  signal user_rst_i_2_n_0 : STD_LOGIC;
  signal user_rst_i_3_n_0 : STD_LOGIC;
  signal user_rst_reg_n_0 : STD_LOGIC;
  signal \NLW_CLKS[0].test_clk_cntr_reg[0][24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_CLKS[3].test_clk_cntr_reg[3][24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_ref_clk_cntr_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \CLKS[0].cdc_done\ : label is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \CLKS[0].cdc_done\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \CLKS[0].cdc_done\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \CLKS[0].cdc_done\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \CLKS[0].cdc_done\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \CLKS[0].cdc_done\ : label is 1;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \CLKS[0].cdc_done\ : label is "ARRAY_SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \CLKS[0].cdc_done\ : label is "TRUE";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \CLKS[0].cdc_rst_cn0\ : label is "1'b0";
  attribute DEST_SYNC_FF of \CLKS[0].cdc_rst_cn0\ : label is 3;
  attribute INIT_SYNC_FF of \CLKS[0].cdc_rst_cn0\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \CLKS[0].cdc_rst_cn0\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \CLKS[0].cdc_rst_cn0\ : label is 1;
  attribute VERSION of \CLKS[0].cdc_rst_cn0\ : label is 0;
  attribute XPM_CDC of \CLKS[0].cdc_rst_cn0\ : label is "ASYNC_RST";
  attribute XPM_MODULE of \CLKS[0].cdc_rst_cn0\ : label is "TRUE";
  attribute DEST_SYNC_FF of \CLKS[0].cdc_test_clk0_cntr\ : label is 2;
  attribute INIT_SYNC_FF of \CLKS[0].cdc_test_clk0_cntr\ : label is 0;
  attribute SIM_ASSERT_CHK of \CLKS[0].cdc_test_clk0_cntr\ : label is 0;
  attribute SRC_INPUT_REG of \CLKS[0].cdc_test_clk0_cntr\ : label is 0;
  attribute VERSION of \CLKS[0].cdc_test_clk0_cntr\ : label is 0;
  attribute WIDTH of \CLKS[0].cdc_test_clk0_cntr\ : label is 32;
  attribute XPM_CDC of \CLKS[0].cdc_test_clk0_cntr\ : label is "ARRAY_SINGLE";
  attribute XPM_MODULE of \CLKS[0].cdc_test_clk0_cntr\ : label is "TRUE";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \CLKS[0].test_clk_cntr_reg[0][0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \CLKS[0].test_clk_cntr_reg[0][16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \CLKS[0].test_clk_cntr_reg[0][24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \CLKS[0].test_clk_cntr_reg[0][8]_i_1\ : label is 16;
  attribute DEST_SYNC_FF of \CLKS[3].cdc_done\ : label is 3;
  attribute INIT_SYNC_FF of \CLKS[3].cdc_done\ : label is 0;
  attribute SIM_ASSERT_CHK of \CLKS[3].cdc_done\ : label is 0;
  attribute SRC_INPUT_REG of \CLKS[3].cdc_done\ : label is 0;
  attribute VERSION of \CLKS[3].cdc_done\ : label is 0;
  attribute WIDTH of \CLKS[3].cdc_done\ : label is 1;
  attribute XPM_CDC of \CLKS[3].cdc_done\ : label is "ARRAY_SINGLE";
  attribute XPM_MODULE of \CLKS[3].cdc_done\ : label is "TRUE";
  attribute DEF_VAL of \CLKS[3].cdc_rst_cn0\ : label is "1'b0";
  attribute DEST_SYNC_FF of \CLKS[3].cdc_rst_cn0\ : label is 3;
  attribute INIT_SYNC_FF of \CLKS[3].cdc_rst_cn0\ : label is 0;
  attribute INV_DEF_VAL of \CLKS[3].cdc_rst_cn0\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH of \CLKS[3].cdc_rst_cn0\ : label is 1;
  attribute VERSION of \CLKS[3].cdc_rst_cn0\ : label is 0;
  attribute XPM_CDC of \CLKS[3].cdc_rst_cn0\ : label is "ASYNC_RST";
  attribute XPM_MODULE of \CLKS[3].cdc_rst_cn0\ : label is "TRUE";
  attribute DEST_SYNC_FF of \CLKS[3].cdc_test_clk0_cntr\ : label is 2;
  attribute INIT_SYNC_FF of \CLKS[3].cdc_test_clk0_cntr\ : label is 0;
  attribute SIM_ASSERT_CHK of \CLKS[3].cdc_test_clk0_cntr\ : label is 0;
  attribute SRC_INPUT_REG of \CLKS[3].cdc_test_clk0_cntr\ : label is 0;
  attribute VERSION of \CLKS[3].cdc_test_clk0_cntr\ : label is 0;
  attribute WIDTH of \CLKS[3].cdc_test_clk0_cntr\ : label is 32;
  attribute XPM_CDC of \CLKS[3].cdc_test_clk0_cntr\ : label is "ARRAY_SINGLE";
  attribute XPM_MODULE of \CLKS[3].cdc_test_clk0_cntr\ : label is "TRUE";
  attribute ADDER_THRESHOLD of \CLKS[3].test_clk_cntr_reg[3][0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \CLKS[3].test_clk_cntr_reg[3][16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \CLKS[3].test_clk_cntr_reg[3][24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \CLKS[3].test_clk_cntr_reg[3][8]_i_1\ : label is 16;
  attribute KEEP : string;
  attribute KEEP of done_ref_reg : label is "yes";
  attribute KEEP of \done_reg[0]\ : label is "yes";
  attribute KEEP of \done_reg[1]\ : label is "yes";
  attribute KEEP of \done_reg[2]\ : label is "yes";
  attribute KEEP of \done_reg[3]\ : label is "yes";
  attribute ADDER_THRESHOLD of \ref_clk_cntr_reg[0]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \ref_clk_cntr_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \ref_clk_cntr_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \ref_clk_cntr_reg[8]_i_1\ : label is 16;
  attribute KEEP of rst_cnt_ref_reg : label is "yes";
  attribute KEEP of \rst_cnt_reg[0]\ : label is "yes";
  attribute KEEP of \rst_cnt_reg[1]\ : label is "yes";
  attribute KEEP of \rst_cnt_reg[2]\ : label is "yes";
  attribute KEEP of \rst_cnt_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \state_read_reg[0]\ : label is "IDLE_READ:01,WAIT_FOR_RVALID_READ:10,";
  attribute FSM_ENCODED_STATES of \state_read_reg[1]\ : label is "IDLE_READ:01,WAIT_FOR_RVALID_READ:10,";
  attribute FSM_ENCODED_STATES of \state_write_reg[0]\ : label is "IDLE_WRITE:001,WAIT_FOR_WVALID_WRITE:010,WAIT_FOR_BREADY_WRITE:100,";
  attribute FSM_ENCODED_STATES of \state_write_reg[1]\ : label is "IDLE_WRITE:001,WAIT_FOR_WVALID_WRITE:010,WAIT_FOR_BREADY_WRITE:100,";
  attribute FSM_ENCODED_STATES of \state_write_reg[2]\ : label is "IDLE_WRITE:001,WAIT_FOR_WVALID_WRITE:010,WAIT_FOR_BREADY_WRITE:100,";
begin
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
\CLKS[0].cdc_done\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2\
     port map (
      dest_clk => test_clk0,
      dest_out(0) => done_synced_0,
      src_clk => '0',
      src_in(0) => done(0)
    );
\CLKS[0].cdc_rst_cn0\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\
     port map (
      dest_arst => rst_cnt_synced_0,
      dest_clk => test_clk0,
      src_arst => rst_cnt(0)
    );
\CLKS[0].cdc_test_clk0_cntr\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__2\
     port map (
      dest_clk => s_axi_aclk,
      dest_out(31 downto 0) => \test_clk_cntr_synced[0]\(31 downto 0),
      src_clk => '0',
      src_in(31 downto 0) => \CLKS[0].test_clk_cntr_reg[0]\(31 downto 0)
    );
\CLKS[0].test_clk_cntr[0][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => done_synced_0,
      O => sel
    );
\CLKS[0].test_clk_cntr[0][0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \CLKS[0].test_clk_cntr_reg[0]\(0),
      O => \CLKS[0].test_clk_cntr[0][0]_i_3_n_0\
    );
\CLKS[0].test_clk_cntr_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_15\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(0)
    );
\CLKS[0].test_clk_cntr_reg[0][0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_0\,
      CO(6) => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_1\,
      CO(5) => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_2\,
      CO(4) => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_3\,
      CO(3) => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_4\,
      CO(2) => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_5\,
      CO(1) => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_6\,
      CO(0) => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_8\,
      O(6) => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_9\,
      O(5) => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_10\,
      O(4) => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_11\,
      O(3) => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_12\,
      O(2) => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_13\,
      O(1) => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_14\,
      O(0) => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_15\,
      S(7 downto 1) => \CLKS[0].test_clk_cntr_reg[0]\(7 downto 1),
      S(0) => \CLKS[0].test_clk_cntr[0][0]_i_3_n_0\
    );
\CLKS[0].test_clk_cntr_reg[0][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_13\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(10)
    );
\CLKS[0].test_clk_cntr_reg[0][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_12\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(11)
    );
\CLKS[0].test_clk_cntr_reg[0][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_11\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(12)
    );
\CLKS[0].test_clk_cntr_reg[0][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_10\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(13)
    );
\CLKS[0].test_clk_cntr_reg[0][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_9\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(14)
    );
\CLKS[0].test_clk_cntr_reg[0][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_8\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(15)
    );
\CLKS[0].test_clk_cntr_reg[0][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_15\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(16)
    );
\CLKS[0].test_clk_cntr_reg[0][16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_0\,
      CO(6) => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_1\,
      CO(5) => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_2\,
      CO(4) => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_3\,
      CO(3) => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_4\,
      CO(2) => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_5\,
      CO(1) => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_6\,
      CO(0) => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_8\,
      O(6) => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_9\,
      O(5) => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_10\,
      O(4) => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_11\,
      O(3) => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_12\,
      O(2) => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_13\,
      O(1) => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_14\,
      O(0) => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_15\,
      S(7 downto 0) => \CLKS[0].test_clk_cntr_reg[0]\(23 downto 16)
    );
\CLKS[0].test_clk_cntr_reg[0][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_14\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(17)
    );
\CLKS[0].test_clk_cntr_reg[0][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_13\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(18)
    );
\CLKS[0].test_clk_cntr_reg[0][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_12\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(19)
    );
\CLKS[0].test_clk_cntr_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_14\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(1)
    );
\CLKS[0].test_clk_cntr_reg[0][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_11\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(20)
    );
\CLKS[0].test_clk_cntr_reg[0][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_10\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(21)
    );
\CLKS[0].test_clk_cntr_reg[0][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_9\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(22)
    );
\CLKS[0].test_clk_cntr_reg[0][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_8\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(23)
    );
\CLKS[0].test_clk_cntr_reg[0][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_15\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(24)
    );
\CLKS[0].test_clk_cntr_reg[0][24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \CLKS[0].test_clk_cntr_reg[0][16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_CLKS[0].test_clk_cntr_reg[0][24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_1\,
      CO(5) => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_2\,
      CO(4) => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_3\,
      CO(3) => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_4\,
      CO(2) => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_5\,
      CO(1) => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_6\,
      CO(0) => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_8\,
      O(6) => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_9\,
      O(5) => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_10\,
      O(4) => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_11\,
      O(3) => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_12\,
      O(2) => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_13\,
      O(1) => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_14\,
      O(0) => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_15\,
      S(7 downto 0) => \CLKS[0].test_clk_cntr_reg[0]\(31 downto 24)
    );
\CLKS[0].test_clk_cntr_reg[0][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_14\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(25)
    );
\CLKS[0].test_clk_cntr_reg[0][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_13\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(26)
    );
\CLKS[0].test_clk_cntr_reg[0][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_12\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(27)
    );
\CLKS[0].test_clk_cntr_reg[0][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_11\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(28)
    );
\CLKS[0].test_clk_cntr_reg[0][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_10\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(29)
    );
\CLKS[0].test_clk_cntr_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_13\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(2)
    );
\CLKS[0].test_clk_cntr_reg[0][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_9\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(30)
    );
\CLKS[0].test_clk_cntr_reg[0][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][24]_i_1_n_8\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(31)
    );
\CLKS[0].test_clk_cntr_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_12\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(3)
    );
\CLKS[0].test_clk_cntr_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_11\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(4)
    );
\CLKS[0].test_clk_cntr_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_10\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(5)
    );
\CLKS[0].test_clk_cntr_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_9\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(6)
    );
\CLKS[0].test_clk_cntr_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_8\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(7)
    );
\CLKS[0].test_clk_cntr_reg[0][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_15\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(8)
    );
\CLKS[0].test_clk_cntr_reg[0][8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \CLKS[0].test_clk_cntr_reg[0][0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_0\,
      CO(6) => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_1\,
      CO(5) => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_2\,
      CO(4) => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_3\,
      CO(3) => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_4\,
      CO(2) => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_5\,
      CO(1) => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_6\,
      CO(0) => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_8\,
      O(6) => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_9\,
      O(5) => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_10\,
      O(4) => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_11\,
      O(3) => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_12\,
      O(2) => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_13\,
      O(1) => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_14\,
      O(0) => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_15\,
      S(7 downto 0) => \CLKS[0].test_clk_cntr_reg[0]\(15 downto 8)
    );
\CLKS[0].test_clk_cntr_reg[0][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk0,
      CE => sel,
      CLR => rst_cnt_synced_0,
      D => \CLKS[0].test_clk_cntr_reg[0][8]_i_1_n_14\,
      Q => \CLKS[0].test_clk_cntr_reg[0]\(9)
    );
\CLKS[3].cdc_done\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single
     port map (
      dest_clk => test_clk3,
      dest_out(0) => done_synced_3,
      src_clk => '0',
      src_in(0) => done(3)
    );
\CLKS[3].cdc_rst_cn0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
     port map (
      dest_arst => rst_cnt_synced_3,
      dest_clk => test_clk3,
      src_arst => rst_cnt(3)
    );
\CLKS[3].cdc_test_clk0_cntr\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\
     port map (
      dest_clk => s_axi_aclk,
      dest_out(31 downto 0) => \test_clk_cntr_synced[3]\(31 downto 0),
      src_clk => '0',
      src_in(31 downto 0) => \CLKS[3].test_clk_cntr_reg[3]\(31 downto 0)
    );
\CLKS[3].test_clk_cntr[3][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => done_synced_3,
      O => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\
    );
\CLKS[3].test_clk_cntr[3][0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \CLKS[3].test_clk_cntr_reg[3]\(0),
      O => \CLKS[3].test_clk_cntr[3][0]_i_3_n_0\
    );
\CLKS[3].test_clk_cntr_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_15\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(0)
    );
\CLKS[3].test_clk_cntr_reg[3][0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_0\,
      CO(6) => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_1\,
      CO(5) => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_2\,
      CO(4) => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_3\,
      CO(3) => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_4\,
      CO(2) => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_5\,
      CO(1) => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_6\,
      CO(0) => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_8\,
      O(6) => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_9\,
      O(5) => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_10\,
      O(4) => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_11\,
      O(3) => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_12\,
      O(2) => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_13\,
      O(1) => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_14\,
      O(0) => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_15\,
      S(7 downto 1) => \CLKS[3].test_clk_cntr_reg[3]\(7 downto 1),
      S(0) => \CLKS[3].test_clk_cntr[3][0]_i_3_n_0\
    );
\CLKS[3].test_clk_cntr_reg[3][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_13\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(10)
    );
\CLKS[3].test_clk_cntr_reg[3][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_12\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(11)
    );
\CLKS[3].test_clk_cntr_reg[3][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_11\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(12)
    );
\CLKS[3].test_clk_cntr_reg[3][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_10\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(13)
    );
\CLKS[3].test_clk_cntr_reg[3][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_9\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(14)
    );
\CLKS[3].test_clk_cntr_reg[3][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_8\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(15)
    );
\CLKS[3].test_clk_cntr_reg[3][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_15\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(16)
    );
\CLKS[3].test_clk_cntr_reg[3][16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_0\,
      CO(6) => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_1\,
      CO(5) => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_2\,
      CO(4) => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_3\,
      CO(3) => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_4\,
      CO(2) => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_5\,
      CO(1) => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_6\,
      CO(0) => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_8\,
      O(6) => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_9\,
      O(5) => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_10\,
      O(4) => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_11\,
      O(3) => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_12\,
      O(2) => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_13\,
      O(1) => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_14\,
      O(0) => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_15\,
      S(7 downto 0) => \CLKS[3].test_clk_cntr_reg[3]\(23 downto 16)
    );
\CLKS[3].test_clk_cntr_reg[3][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_14\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(17)
    );
\CLKS[3].test_clk_cntr_reg[3][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_13\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(18)
    );
\CLKS[3].test_clk_cntr_reg[3][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_12\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(19)
    );
\CLKS[3].test_clk_cntr_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_14\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(1)
    );
\CLKS[3].test_clk_cntr_reg[3][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_11\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(20)
    );
\CLKS[3].test_clk_cntr_reg[3][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_10\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(21)
    );
\CLKS[3].test_clk_cntr_reg[3][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_9\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(22)
    );
\CLKS[3].test_clk_cntr_reg[3][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_8\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(23)
    );
\CLKS[3].test_clk_cntr_reg[3][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_15\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(24)
    );
\CLKS[3].test_clk_cntr_reg[3][24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \CLKS[3].test_clk_cntr_reg[3][16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_CLKS[3].test_clk_cntr_reg[3][24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_1\,
      CO(5) => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_2\,
      CO(4) => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_3\,
      CO(3) => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_4\,
      CO(2) => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_5\,
      CO(1) => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_6\,
      CO(0) => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_8\,
      O(6) => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_9\,
      O(5) => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_10\,
      O(4) => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_11\,
      O(3) => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_12\,
      O(2) => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_13\,
      O(1) => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_14\,
      O(0) => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_15\,
      S(7 downto 0) => \CLKS[3].test_clk_cntr_reg[3]\(31 downto 24)
    );
\CLKS[3].test_clk_cntr_reg[3][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_14\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(25)
    );
\CLKS[3].test_clk_cntr_reg[3][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_13\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(26)
    );
\CLKS[3].test_clk_cntr_reg[3][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_12\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(27)
    );
\CLKS[3].test_clk_cntr_reg[3][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_11\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(28)
    );
\CLKS[3].test_clk_cntr_reg[3][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_10\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(29)
    );
\CLKS[3].test_clk_cntr_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_13\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(2)
    );
\CLKS[3].test_clk_cntr_reg[3][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_9\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(30)
    );
\CLKS[3].test_clk_cntr_reg[3][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][24]_i_1_n_8\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(31)
    );
\CLKS[3].test_clk_cntr_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_12\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(3)
    );
\CLKS[3].test_clk_cntr_reg[3][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_11\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(4)
    );
\CLKS[3].test_clk_cntr_reg[3][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_10\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(5)
    );
\CLKS[3].test_clk_cntr_reg[3][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_9\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(6)
    );
\CLKS[3].test_clk_cntr_reg[3][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_8\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(7)
    );
\CLKS[3].test_clk_cntr_reg[3][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_15\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(8)
    );
\CLKS[3].test_clk_cntr_reg[3][8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \CLKS[3].test_clk_cntr_reg[3][0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_0\,
      CO(6) => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_1\,
      CO(5) => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_2\,
      CO(4) => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_3\,
      CO(3) => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_4\,
      CO(2) => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_5\,
      CO(1) => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_6\,
      CO(0) => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_8\,
      O(6) => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_9\,
      O(5) => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_10\,
      O(4) => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_11\,
      O(3) => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_12\,
      O(2) => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_13\,
      O(1) => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_14\,
      O(0) => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_15\,
      S(7 downto 0) => \CLKS[3].test_clk_cntr_reg[3]\(15 downto 8)
    );
\CLKS[3].test_clk_cntr_reg[3][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => test_clk3,
      CE => \CLKS[3].test_clk_cntr[3][0]_i_1_n_0\,
      CLR => rst_cnt_synced_3,
      D => \CLKS[3].test_clk_cntr_reg[3][8]_i_1_n_14\,
      Q => \CLKS[3].test_clk_cntr_reg[3]\(9)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\clear_user_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => user_rst_reg_n_0,
      Q => \clear_user_rst__0\(0),
      R => '0'
    );
\clear_user_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \clear_user_rst__0\(0),
      Q => clear_user_rst(1),
      R => '0'
    );
done_ref_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => done_ref,
      O => done_ref_i_1_n_0
    );
done_ref_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => done_ref_i_3_n_0,
      I1 => done_ref_i_4_n_0,
      I2 => done_ref_i_5_n_0,
      I3 => done_ref_i_6_n_0,
      I4 => done_ref_i_7_n_0,
      I5 => done_ref_i_8_n_0,
      O => done_c
    );
done_ref_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ref_clk_cntr_reg(0),
      I1 => ref_clk_cntr_reg(1),
      O => done_ref_i_3_n_0
    );
done_ref_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => ref_clk_cntr_reg(4),
      I1 => ref_clk_cntr_reg(5),
      I2 => ref_clk_cntr_reg(2),
      I3 => ref_clk_cntr_reg(3),
      I4 => ref_clk_cntr_reg(6),
      I5 => ref_clk_cntr_reg(7),
      O => done_ref_i_4_n_0
    );
done_ref_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => ref_clk_cntr_reg(10),
      I1 => ref_clk_cntr_reg(11),
      I2 => ref_clk_cntr_reg(9),
      I3 => ref_clk_cntr_reg(8),
      I4 => ref_clk_cntr_reg(13),
      I5 => ref_clk_cntr_reg(12),
      O => done_ref_i_5_n_0
    );
done_ref_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => ref_clk_cntr_reg(16),
      I1 => ref_clk_cntr_reg(17),
      I2 => ref_clk_cntr_reg(15),
      I3 => ref_clk_cntr_reg(14),
      I4 => ref_clk_cntr_reg(19),
      I5 => ref_clk_cntr_reg(18),
      O => done_ref_i_6_n_0
    );
done_ref_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => ref_clk_cntr_reg(22),
      I1 => ref_clk_cntr_reg(23),
      I2 => ref_clk_cntr_reg(20),
      I3 => ref_clk_cntr_reg(21),
      I4 => ref_clk_cntr_reg(25),
      I5 => ref_clk_cntr_reg(24),
      O => done_ref_i_7_n_0
    );
done_ref_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => ref_clk_cntr_reg(28),
      I1 => ref_clk_cntr_reg(29),
      I2 => ref_clk_cntr_reg(26),
      I3 => ref_clk_cntr_reg(27),
      I4 => ref_clk_cntr_reg(31),
      I5 => ref_clk_cntr_reg(30),
      O => done_ref_i_8_n_0
    );
done_ref_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => done_c,
      Q => done_ref,
      R => rst_cnt_ref
    );
\done_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => done_c,
      Q => done(0),
      R => rst_cnt_ref
    );
\done_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => done_c,
      Q => done(1),
      R => rst_cnt_ref
    );
\done_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => done_c,
      Q => done(2),
      R => rst_cnt_ref
    );
\done_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => done_c,
      Q => done(3),
      R => rst_cnt_ref
    );
\ref_clk_cntr[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ref_clk_cntr_reg(0),
      O => \ref_clk_cntr[0]_i_2_n_0\
    );
\ref_clk_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[0]_i_1_n_15\,
      Q => ref_clk_cntr_reg(0),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \ref_clk_cntr_reg[0]_i_1_n_0\,
      CO(6) => \ref_clk_cntr_reg[0]_i_1_n_1\,
      CO(5) => \ref_clk_cntr_reg[0]_i_1_n_2\,
      CO(4) => \ref_clk_cntr_reg[0]_i_1_n_3\,
      CO(3) => \ref_clk_cntr_reg[0]_i_1_n_4\,
      CO(2) => \ref_clk_cntr_reg[0]_i_1_n_5\,
      CO(1) => \ref_clk_cntr_reg[0]_i_1_n_6\,
      CO(0) => \ref_clk_cntr_reg[0]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \ref_clk_cntr_reg[0]_i_1_n_8\,
      O(6) => \ref_clk_cntr_reg[0]_i_1_n_9\,
      O(5) => \ref_clk_cntr_reg[0]_i_1_n_10\,
      O(4) => \ref_clk_cntr_reg[0]_i_1_n_11\,
      O(3) => \ref_clk_cntr_reg[0]_i_1_n_12\,
      O(2) => \ref_clk_cntr_reg[0]_i_1_n_13\,
      O(1) => \ref_clk_cntr_reg[0]_i_1_n_14\,
      O(0) => \ref_clk_cntr_reg[0]_i_1_n_15\,
      S(7 downto 1) => ref_clk_cntr_reg(7 downto 1),
      S(0) => \ref_clk_cntr[0]_i_2_n_0\
    );
\ref_clk_cntr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[8]_i_1_n_13\,
      Q => ref_clk_cntr_reg(10),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[8]_i_1_n_12\,
      Q => ref_clk_cntr_reg(11),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[8]_i_1_n_11\,
      Q => ref_clk_cntr_reg(12),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[8]_i_1_n_10\,
      Q => ref_clk_cntr_reg(13),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[8]_i_1_n_9\,
      Q => ref_clk_cntr_reg(14),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[8]_i_1_n_8\,
      Q => ref_clk_cntr_reg(15),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[16]_i_1_n_15\,
      Q => ref_clk_cntr_reg(16),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \ref_clk_cntr_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \ref_clk_cntr_reg[16]_i_1_n_0\,
      CO(6) => \ref_clk_cntr_reg[16]_i_1_n_1\,
      CO(5) => \ref_clk_cntr_reg[16]_i_1_n_2\,
      CO(4) => \ref_clk_cntr_reg[16]_i_1_n_3\,
      CO(3) => \ref_clk_cntr_reg[16]_i_1_n_4\,
      CO(2) => \ref_clk_cntr_reg[16]_i_1_n_5\,
      CO(1) => \ref_clk_cntr_reg[16]_i_1_n_6\,
      CO(0) => \ref_clk_cntr_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \ref_clk_cntr_reg[16]_i_1_n_8\,
      O(6) => \ref_clk_cntr_reg[16]_i_1_n_9\,
      O(5) => \ref_clk_cntr_reg[16]_i_1_n_10\,
      O(4) => \ref_clk_cntr_reg[16]_i_1_n_11\,
      O(3) => \ref_clk_cntr_reg[16]_i_1_n_12\,
      O(2) => \ref_clk_cntr_reg[16]_i_1_n_13\,
      O(1) => \ref_clk_cntr_reg[16]_i_1_n_14\,
      O(0) => \ref_clk_cntr_reg[16]_i_1_n_15\,
      S(7 downto 0) => ref_clk_cntr_reg(23 downto 16)
    );
\ref_clk_cntr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[16]_i_1_n_14\,
      Q => ref_clk_cntr_reg(17),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[16]_i_1_n_13\,
      Q => ref_clk_cntr_reg(18),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[16]_i_1_n_12\,
      Q => ref_clk_cntr_reg(19),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[0]_i_1_n_14\,
      Q => ref_clk_cntr_reg(1),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[16]_i_1_n_11\,
      Q => ref_clk_cntr_reg(20),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[16]_i_1_n_10\,
      Q => ref_clk_cntr_reg(21),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[16]_i_1_n_9\,
      Q => ref_clk_cntr_reg(22),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[16]_i_1_n_8\,
      Q => ref_clk_cntr_reg(23),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[24]_i_1_n_15\,
      Q => ref_clk_cntr_reg(24),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \ref_clk_cntr_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_ref_clk_cntr_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \ref_clk_cntr_reg[24]_i_1_n_1\,
      CO(5) => \ref_clk_cntr_reg[24]_i_1_n_2\,
      CO(4) => \ref_clk_cntr_reg[24]_i_1_n_3\,
      CO(3) => \ref_clk_cntr_reg[24]_i_1_n_4\,
      CO(2) => \ref_clk_cntr_reg[24]_i_1_n_5\,
      CO(1) => \ref_clk_cntr_reg[24]_i_1_n_6\,
      CO(0) => \ref_clk_cntr_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \ref_clk_cntr_reg[24]_i_1_n_8\,
      O(6) => \ref_clk_cntr_reg[24]_i_1_n_9\,
      O(5) => \ref_clk_cntr_reg[24]_i_1_n_10\,
      O(4) => \ref_clk_cntr_reg[24]_i_1_n_11\,
      O(3) => \ref_clk_cntr_reg[24]_i_1_n_12\,
      O(2) => \ref_clk_cntr_reg[24]_i_1_n_13\,
      O(1) => \ref_clk_cntr_reg[24]_i_1_n_14\,
      O(0) => \ref_clk_cntr_reg[24]_i_1_n_15\,
      S(7 downto 0) => ref_clk_cntr_reg(31 downto 24)
    );
\ref_clk_cntr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[24]_i_1_n_14\,
      Q => ref_clk_cntr_reg(25),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[24]_i_1_n_13\,
      Q => ref_clk_cntr_reg(26),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[24]_i_1_n_12\,
      Q => ref_clk_cntr_reg(27),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[24]_i_1_n_11\,
      Q => ref_clk_cntr_reg(28),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[24]_i_1_n_10\,
      Q => ref_clk_cntr_reg(29),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[0]_i_1_n_13\,
      Q => ref_clk_cntr_reg(2),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[24]_i_1_n_9\,
      Q => ref_clk_cntr_reg(30),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[24]_i_1_n_8\,
      Q => ref_clk_cntr_reg(31),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[0]_i_1_n_12\,
      Q => ref_clk_cntr_reg(3),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[0]_i_1_n_11\,
      Q => ref_clk_cntr_reg(4),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[0]_i_1_n_10\,
      Q => ref_clk_cntr_reg(5),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[0]_i_1_n_9\,
      Q => ref_clk_cntr_reg(6),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[0]_i_1_n_8\,
      Q => ref_clk_cntr_reg(7),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[8]_i_1_n_15\,
      Q => ref_clk_cntr_reg(8),
      R => rst_cnt_ref
    );
\ref_clk_cntr_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \ref_clk_cntr_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \ref_clk_cntr_reg[8]_i_1_n_0\,
      CO(6) => \ref_clk_cntr_reg[8]_i_1_n_1\,
      CO(5) => \ref_clk_cntr_reg[8]_i_1_n_2\,
      CO(4) => \ref_clk_cntr_reg[8]_i_1_n_3\,
      CO(3) => \ref_clk_cntr_reg[8]_i_1_n_4\,
      CO(2) => \ref_clk_cntr_reg[8]_i_1_n_5\,
      CO(1) => \ref_clk_cntr_reg[8]_i_1_n_6\,
      CO(0) => \ref_clk_cntr_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \ref_clk_cntr_reg[8]_i_1_n_8\,
      O(6) => \ref_clk_cntr_reg[8]_i_1_n_9\,
      O(5) => \ref_clk_cntr_reg[8]_i_1_n_10\,
      O(4) => \ref_clk_cntr_reg[8]_i_1_n_11\,
      O(3) => \ref_clk_cntr_reg[8]_i_1_n_12\,
      O(2) => \ref_clk_cntr_reg[8]_i_1_n_13\,
      O(1) => \ref_clk_cntr_reg[8]_i_1_n_14\,
      O(0) => \ref_clk_cntr_reg[8]_i_1_n_15\,
      S(7 downto 0) => ref_clk_cntr_reg(15 downto 8)
    );
\ref_clk_cntr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => done_ref_i_1_n_0,
      D => \ref_clk_cntr_reg[8]_i_1_n_14\,
      Q => ref_clk_cntr_reg(9),
      R => rst_cnt_ref
    );
rst_cnt_ref_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state_write[2]_i_1_n_0\,
      Q => rst_cnt_ref,
      S => user_rst_reg_n_0
    );
\rst_cnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state_write[2]_i_1_n_0\,
      Q => rst_cnt(0),
      S => user_rst_reg_n_0
    );
\rst_cnt_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state_write[2]_i_1_n_0\,
      Q => rst_cnt(1),
      S => user_rst_reg_n_0
    );
\rst_cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state_write[2]_i_1_n_0\,
      Q => rst_cnt(2),
      S => user_rst_reg_n_0
    );
\rst_cnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state_write[2]_i_1_n_0\,
      Q => rst_cnt(3),
      S => user_rst_reg_n_0
    );
s_axi_arready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5FF0080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_arvalid,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => \^s_axi_arready\,
      O => s_axi_arready_i_1_n_0
    );
s_axi_arready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => '0'
    );
s_axi_awready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFDFF10000000"
    )
        port map (
      I0 => state_write(1),
      I1 => \state_write_reg_n_0_[2]\,
      I2 => state_write(0),
      I3 => s_axi_aresetn,
      I4 => s_axi_awvalid,
      I5 => \^s_axi_awready\,
      O => s_axi_awready_i_1_n_0
    );
s_axi_awready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_awready_i_1_n_0,
      Q => \^s_axi_awready\,
      R => '0'
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF0040"
    )
        port map (
      I0 => state_write(1),
      I1 => \state_write_reg_n_0_[2]\,
      I2 => s_axi_aresetn,
      I3 => state_write(0),
      I4 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \s_axi_rdata[0]_i_2_n_0\,
      I1 => \s_axi_rdata[31]_i_4_n_0\,
      I2 => \test_clk_cntr_synced[0]\(0),
      I3 => ref_clk_cntr_reg(0),
      I4 => \s_axi_rdata[31]_i_3_n_0\,
      I5 => \s_axi_rdata[0]_i_3_n_0\,
      O => \s_axi_rdata[0]_i_1_n_0\
    );
\s_axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000BC00000000"
    )
        port map (
      I0 => \test_clk_cntr_synced[3]\(0),
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(4),
      O => \s_axi_rdata[0]_i_2_n_0\
    );
\s_axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(2),
      I5 => user_rst_reg_n_0,
      O => \s_axi_rdata[0]_i_3_n_0\
    );
\s_axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(10),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(10),
      I4 => \test_clk_cntr_synced[3]\(10),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[10]_i_1_n_0\
    );
\s_axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(11),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(11),
      I4 => \test_clk_cntr_synced[3]\(11),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[11]_i_1_n_0\
    );
\s_axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(12),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(12),
      I4 => \test_clk_cntr_synced[3]\(12),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[12]_i_1_n_0\
    );
\s_axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(13),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(13),
      I4 => \test_clk_cntr_synced[3]\(13),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[13]_i_1_n_0\
    );
\s_axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(14),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(14),
      I4 => \test_clk_cntr_synced[3]\(14),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[14]_i_1_n_0\
    );
\s_axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(15),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(15),
      I4 => \test_clk_cntr_synced[3]\(15),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[15]_i_1_n_0\
    );
\s_axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \s_axi_rdata[30]_i_2_n_0\,
      I1 => \s_axi_rdata[16]_i_2_n_0\,
      I2 => \test_clk_cntr_synced[3]\(16),
      I3 => \s_axi_rdata[31]_i_5_n_0\,
      I4 => ref_clk_cntr_reg(16),
      I5 => \s_axi_rdata[31]_i_3_n_0\,
      O => \s_axi_rdata[16]_i_1_n_0\
    );
\s_axi_rdata[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(3),
      I4 => \test_clk_cntr_synced[0]\(16),
      O => \s_axi_rdata[16]_i_2_n_0\
    );
\s_axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(17),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(17),
      I4 => \test_clk_cntr_synced[3]\(17),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[17]_i_1_n_0\
    );
\s_axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(18),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(18),
      I4 => \test_clk_cntr_synced[3]\(18),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[18]_i_1_n_0\
    );
\s_axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(19),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(19),
      I4 => \test_clk_cntr_synced[3]\(19),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[19]_i_1_n_0\
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \s_axi_rdata[1]_i_2_n_0\,
      I1 => \s_axi_rdata[31]_i_4_n_0\,
      I2 => \test_clk_cntr_synced[0]\(1),
      I3 => ref_clk_cntr_reg(1),
      I4 => \s_axi_rdata[31]_i_3_n_0\,
      I5 => \s_axi_rdata[1]_i_3_n_0\,
      O => \s_axi_rdata[1]_i_1_n_0\
    );
\s_axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000BC00000000"
    )
        port map (
      I0 => \test_clk_cntr_synced[3]\(1),
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(4),
      O => \s_axi_rdata[1]_i_2_n_0\
    );
\s_axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(2),
      I5 => done_ref,
      O => \s_axi_rdata[1]_i_3_n_0\
    );
\s_axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(20),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(20),
      I4 => \test_clk_cntr_synced[3]\(20),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[20]_i_1_n_0\
    );
\s_axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(21),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(21),
      I4 => \test_clk_cntr_synced[3]\(21),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[21]_i_1_n_0\
    );
\s_axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(22),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(22),
      I4 => \test_clk_cntr_synced[3]\(22),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[22]_i_1_n_0\
    );
\s_axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(23),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(23),
      I4 => \test_clk_cntr_synced[3]\(23),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[23]_i_1_n_0\
    );
\s_axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(24),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(24),
      I4 => \test_clk_cntr_synced[3]\(24),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[24]_i_1_n_0\
    );
\s_axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(25),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(25),
      I4 => \test_clk_cntr_synced[3]\(25),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[25]_i_1_n_0\
    );
\s_axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(26),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(26),
      I4 => \test_clk_cntr_synced[3]\(26),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[26]_i_1_n_0\
    );
\s_axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(27),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(27),
      I4 => \test_clk_cntr_synced[3]\(27),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[27]_i_1_n_0\
    );
\s_axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(28),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(28),
      I4 => \test_clk_cntr_synced[3]\(28),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[28]_i_1_n_0\
    );
\s_axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(29),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(29),
      I4 => \test_clk_cntr_synced[3]\(29),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[29]_i_1_n_0\
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(2),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(2),
      I4 => \test_clk_cntr_synced[3]\(2),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[2]_i_1_n_0\
    );
\s_axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \s_axi_rdata[30]_i_2_n_0\,
      I1 => \s_axi_rdata[30]_i_3_n_0\,
      I2 => \test_clk_cntr_synced[3]\(30),
      I3 => \s_axi_rdata[31]_i_5_n_0\,
      I4 => ref_clk_cntr_reg(30),
      I5 => \s_axi_rdata[31]_i_3_n_0\,
      O => \s_axi_rdata[30]_i_1_n_0\
    );
\s_axi_rdata[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020009"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(2),
      O => \s_axi_rdata[30]_i_2_n_0\
    );
\s_axi_rdata[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(3),
      I4 => \test_clk_cntr_synced[0]\(30),
      O => \s_axi_rdata[30]_i_3_n_0\
    );
\s_axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006000000000000"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(4),
      I5 => s_axi_arvalid,
      O => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(31),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(31),
      I4 => \test_clk_cntr_synced[3]\(31),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[31]_i_2_n_0\
    );
\s_axi_rdata[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      O => \s_axi_rdata[31]_i_3_n_0\
    );
\s_axi_rdata[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      O => \s_axi_rdata[31]_i_4_n_0\
    );
\s_axi_rdata[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      O => \s_axi_rdata[31]_i_5_n_0\
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(3),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(3),
      I4 => \test_clk_cntr_synced[3]\(3),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[3]_i_1_n_0\
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(4),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(4),
      I4 => \test_clk_cntr_synced[3]\(4),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[4]_i_1_n_0\
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(5),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(5),
      I4 => \test_clk_cntr_synced[3]\(5),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[5]_i_1_n_0\
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(6),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(6),
      I4 => \test_clk_cntr_synced[3]\(6),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[6]_i_1_n_0\
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(7),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(7),
      I4 => \test_clk_cntr_synced[3]\(7),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[7]_i_1_n_0\
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(8),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(8),
      I4 => \test_clk_cntr_synced[3]\(8),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[8]_i_1_n_0\
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => ref_clk_cntr_reg(9),
      I2 => \s_axi_rdata[31]_i_4_n_0\,
      I3 => \test_clk_cntr_synced[0]\(9),
      I4 => \test_clk_cntr_synced[3]\(9),
      I5 => \s_axi_rdata[31]_i_5_n_0\,
      O => \s_axi_rdata[9]_i_1_n_0\
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[0]_i_1_n_0\,
      Q => s_axi_rdata(0),
      R => '0'
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[10]_i_1_n_0\,
      Q => s_axi_rdata(10),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[11]_i_1_n_0\,
      Q => s_axi_rdata(11),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[12]_i_1_n_0\,
      Q => s_axi_rdata(12),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[13]_i_1_n_0\,
      Q => s_axi_rdata(13),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[14]_i_1_n_0\,
      Q => s_axi_rdata(14),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[15]_i_1_n_0\,
      Q => s_axi_rdata(15),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[16]_i_1_n_0\,
      Q => s_axi_rdata(16),
      R => '0'
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[17]_i_1_n_0\,
      Q => s_axi_rdata(17),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[18]_i_1_n_0\,
      Q => s_axi_rdata(18),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[19]_i_1_n_0\,
      Q => s_axi_rdata(19),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[1]_i_1_n_0\,
      Q => s_axi_rdata(1),
      R => '0'
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[20]_i_1_n_0\,
      Q => s_axi_rdata(20),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[21]_i_1_n_0\,
      Q => s_axi_rdata(21),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[22]_i_1_n_0\,
      Q => s_axi_rdata(22),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[23]_i_1_n_0\,
      Q => s_axi_rdata(23),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[24]_i_1_n_0\,
      Q => s_axi_rdata(24),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[25]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[25]_i_1_n_0\,
      Q => s_axi_rdata(25),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[26]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[26]_i_1_n_0\,
      Q => s_axi_rdata(26),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[27]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[27]_i_1_n_0\,
      Q => s_axi_rdata(27),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[28]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[28]_i_1_n_0\,
      Q => s_axi_rdata(28),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[29]_i_1_n_0\,
      Q => s_axi_rdata(29),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[2]_i_1_n_0\,
      Q => s_axi_rdata(2),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[30]_i_1_n_0\,
      Q => s_axi_rdata(30),
      R => '0'
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[31]_i_2_n_0\,
      Q => s_axi_rdata(31),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[3]_i_1_n_0\,
      Q => s_axi_rdata(3),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[4]_i_1_n_0\,
      Q => s_axi_rdata(4),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[5]_i_1_n_0\,
      Q => s_axi_rdata(5),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[6]_i_1_n_0\,
      Q => s_axi_rdata(6),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[7]_i_1_n_0\,
      Q => s_axi_rdata(7),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[8]_i_1_n_0\,
      Q => s_axi_rdata(8),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_arvalid,
      D => \s_axi_rdata[9]_i_1_n_0\,
      Q => s_axi_rdata(9),
      S => \s_axi_rdata[31]_i_1_n_0\
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5FFFFFF40400000"
    )
        port map (
      I0 => state_read(1),
      I1 => s_axi_arvalid,
      I2 => state_read(0),
      I3 => s_axi_rready,
      I4 => s_axi_aresetn,
      I5 => \^s_axi_rvalid\,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => '0'
    );
s_axi_wready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFDF02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => state_write(0),
      I2 => \state_write_reg_n_0_[2]\,
      I3 => s_axi_wvalid,
      I4 => state_write(1),
      I5 => \^s_axi_wready\,
      O => s_axi_wready_i_1_n_0
    );
s_axi_wready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => '0'
    );
\state_read[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22C0"
    )
        port map (
      I0 => s_axi_rready,
      I1 => state_read(0),
      I2 => s_axi_arvalid,
      I3 => state_read(1),
      O => \state_read[1]_i_1_n_0\
    );
\state_read[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_read(1),
      O => \p_1_in__0\(1)
    );
\state_read_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \state_read[1]_i_1_n_0\,
      D => state_read(1),
      Q => state_read(0),
      S => \state_write[2]_i_1_n_0\
    );
\state_read_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state_read[1]_i_1_n_0\,
      D => \p_1_in__0\(1),
      Q => state_read(1),
      R => \state_write[2]_i_1_n_0\
    );
\state_write[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_write(1),
      I1 => \state_write_reg_n_0_[2]\,
      O => p_1_in(1)
    );
\state_write[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \state_write[2]_i_1_n_0\
    );
\state_write[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0338030800380008"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => state_write(0),
      I2 => state_write(1),
      I3 => \state_write_reg_n_0_[2]\,
      I4 => s_axi_wvalid,
      I5 => s_axi_bready,
      O => \state_write[2]_i_2_n_0\
    );
\state_write_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \state_write[2]_i_2_n_0\,
      D => \state_write_reg_n_0_[2]\,
      Q => state_write(0),
      S => \state_write[2]_i_1_n_0\
    );
\state_write_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state_write[2]_i_2_n_0\,
      D => p_1_in(1),
      Q => state_write(1),
      R => \state_write[2]_i_1_n_0\
    );
\state_write_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state_write[2]_i_2_n_0\,
      D => state_write(1),
      Q => \state_write_reg_n_0_[2]\,
      R => \state_write[2]_i_1_n_0\
    );
user_rst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8880"
    )
        port map (
      I0 => user_rst_i_2_n_0,
      I1 => \^s_axi_wready\,
      I2 => user_rst_i_3_n_0,
      I3 => clear_user_rst(1),
      I4 => user_rst_reg_n_0,
      O => user_rst_i_1_n_0
    );
user_rst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awaddr(3),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awaddr(1),
      I4 => s_axi_wdata(0),
      I5 => s_axi_wvalid,
      O => user_rst_i_2_n_0
    );
user_rst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awaddr(2),
      I2 => \^s_axi_wready\,
      I3 => s_axi_awaddr(0),
      I4 => s_axi_awaddr(3),
      I5 => s_axi_wvalid,
      O => user_rst_i_3_n_0
    );
user_rst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => user_rst_i_1_n_0,
      Q => user_rst_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_22c0_frequency_counter_hbm_0,shell_utils_frequency_counter_v1_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "shell_utils_frequency_counter_v1_0_0,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CFG_LEN : integer;
  attribute CFG_LEN of inst : label is 4;
  attribute CLK_CONFIG : string;
  attribute CLK_CONFIG of inst : label is "16'b0100000000000001";
  attribute IDLE_READ : string;
  attribute IDLE_READ of inst : label is "2'b01";
  attribute IDLE_WRITE : string;
  attribute IDLE_WRITE of inst : label is "3'b001";
  attribute NUM_CLKS : integer;
  attribute NUM_CLKS of inst : label is 4;
  attribute REF_CLK_FREQ_HZ : integer;
  attribute REF_CLK_FREQ_HZ of inst : label is 100000;
  attribute TEST_CLK_0_TYPE : integer;
  attribute TEST_CLK_0_TYPE of inst : label is 1;
  attribute TEST_CLK_1_TYPE : integer;
  attribute TEST_CLK_1_TYPE of inst : label is 0;
  attribute TEST_CLK_2_TYPE : integer;
  attribute TEST_CLK_2_TYPE of inst : label is 0;
  attribute TEST_CLK_3_TYPE : integer;
  attribute TEST_CLK_3_TYPE of inst : label is 4;
  attribute WAIT_FOR_BREADY_WRITE : string;
  attribute WAIT_FOR_BREADY_WRITE of inst : label is "3'b100";
  attribute WAIT_FOR_RVALID_READ : string;
  attribute WAIT_FOR_RVALID_READ of inst : label is "2'b10";
  attribute WAIT_FOR_WVALID_WRITE : string;
  attribute WAIT_FOR_WVALID_WRITE of inst : label is "3'b010";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_signal_clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_signal_clock, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_signal_reset RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_signal_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_frequency_counter_v1_0_0
     port map (
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 5) => B"000000000000000000000000000",
      s_axi_araddr(4 downto 0) => s_axi_araddr(4 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 4) => B"0000000000000000000000000000",
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => NLW_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => NLW_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 1) => B"0000000000000000000000000000000",
      s_axi_wdata(0) => s_axi_wdata(0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => s_axi_wvalid,
      test_clk0 => test_clk0,
      test_clk1 => '0',
      test_clk2 => '0',
      test_clk3 => test_clk3
    );
end STRUCTURE;
