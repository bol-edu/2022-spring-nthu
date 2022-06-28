-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sun Jun 19 20:35:51 2022
-- Host        : ic22 running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_clock_throttling_kernel_0_sim_netlist.vhdl
-- Design      : bd_22c0_clock_throttling_kernel_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu50-fsvh2104-2-e
-- --------------------------------------------------------------------------------
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
  attribute DEF_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is 1;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is "1'b0";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is 0;
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
  signal arststages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  signal reset_pol : STD_LOGIC;
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
  attribute ASYNC_REG_boolean of \arststages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[3]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(3);
\arststages_ff[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => src_arst,
      O => reset_pol
    );
\arststages_ff_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      CLR => reset_pol,
      D => '1',
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      CLR => reset_pol,
      D => arststages_ff(0),
      Q => arststages_ff(1)
    );
\arststages_ff_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      CLR => reset_pol,
      D => arststages_ff(1),
      Q => arststages_ff(2)
    );
\arststages_ff_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      CLR => reset_pol,
      D => arststages_ff(2),
      Q => arststages_ff(3)
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
  attribute DEF_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ : entity is 1;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ : entity is "1'b0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\ : entity is 0;
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
  signal arststages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  signal reset_pol : STD_LOGIC;
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
  attribute ASYNC_REG_boolean of \arststages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[3]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(3);
\arststages_ff[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => src_arst,
      O => reset_pol
    );
\arststages_ff_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      CLR => reset_pol,
      D => '1',
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      CLR => reset_pol,
      D => arststages_ff(0),
      Q => arststages_ff(1)
    );
\arststages_ff_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      CLR => reset_pol,
      D => arststages_ff(1),
      Q => arststages_ff(2)
    );
\arststages_ff_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      CLR => reset_pol,
      D => arststages_ff(2),
      Q => arststages_ff(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is 1;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is "1'b0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is "ASYNC_RST";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  signal reset_pol : STD_LOGIC;
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
  attribute ASYNC_REG_boolean of \arststages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[3]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(3);
\arststages_ff[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => src_arst,
      O => reset_pol
    );
\arststages_ff_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      CLR => reset_pol,
      D => '1',
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      CLR => reset_pol,
      D => arststages_ff(0),
      Q => arststages_ff(1)
    );
\arststages_ff_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      CLR => reset_pol,
      D => arststages_ff(1),
      Q => arststages_ff(2)
    );
\arststages_ff_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      CLR => reset_pol,
      D => arststages_ff(2),
      Q => arststages_ff(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is "SINGLE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling is
  port (
    Clk_In : in STD_LOGIC;
    Rst_In : in STD_LOGIC;
    Locked : in STD_LOGIC;
    Startup_Done : in STD_LOGIC;
    Rate_Upd_Tog : in STD_LOGIC;
    Rate_In : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rst_Async : out STD_LOGIC;
    Clk_Out : out STD_LOGIC;
    Clk_Out_Div : out STD_LOGIC;
    Clk_Out_Cont : out STD_LOGIC
  );
  attribute CLK_SLOW_DIV : integer;
  attribute CLK_SLOW_DIV of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling : entity is 1;
  attribute SYNTH_SIZE : integer;
  attribute SYNTH_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling : entity is 8;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling is
  signal \<const0>\ : STD_LOGIC;
  signal Clk_Int_Cont : STD_LOGIC;
  signal Gate_Div : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of Gate_Div : signal is std.standard.true;
  signal Gate_Div_d1 : STD_LOGIC;
  attribute DONT_TOUCH of Gate_Div_d1 : signal is std.standard.true;
  signal Gate_Fast : STD_LOGIC;
  attribute DONT_TOUCH of Gate_Fast : signal is std.standard.true;
  signal Gate_Fast_d1 : STD_LOGIC;
  attribute DONT_TOUCH of Gate_Fast_d1 : signal is std.standard.true;
  signal Last_Rate_Upd_Tog_CDC : STD_LOGIC;
  signal Locked_cdc : STD_LOGIC;
  signal Locked_ret : STD_LOGIC;
  signal Rate_Upd : STD_LOGIC;
  signal Rate_Upd_i_1_n_0 : STD_LOGIC;
  signal Rate_int : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rst_async\ : STD_LOGIC;
  signal Rst_In_ret : STD_LOGIC;
  signal Rst_Int_i_1_n_0 : STD_LOGIC;
  signal Startup_Done_cdc : STD_LOGIC;
  signal Startup_Done_ret : STD_LOGIC;
  signal Synth : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Synth[7]_i_2_n_0\ : STD_LOGIC;
  signal \Synth[7]_i_3_n_0\ : STD_LOGIC;
  signal \Synth[7]_i_4_n_0\ : STD_LOGIC;
  signal \Synth[7]_i_5_n_0\ : STD_LOGIC;
  signal \Synth[7]_i_6_n_0\ : STD_LOGIC;
  signal \Synth[7]_i_7_n_0\ : STD_LOGIC;
  signal \Synth[7]_i_8_n_0\ : STD_LOGIC;
  signal \Synth_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \Synth_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \Synth_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \Synth_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \Synth_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \Synth_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \Synth_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \Synth_reg_n_0_[0]\ : STD_LOGIC;
  signal \Synth_reg_n_0_[1]\ : STD_LOGIC;
  signal \Synth_reg_n_0_[2]\ : STD_LOGIC;
  signal \Synth_reg_n_0_[3]\ : STD_LOGIC;
  signal \Synth_reg_n_0_[4]\ : STD_LOGIC;
  signal \Synth_reg_n_0_[5]\ : STD_LOGIC;
  signal \Synth_reg_n_0_[6]\ : STD_LOGIC;
  signal dest_arst : STD_LOGIC;
  signal dest_out : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \NLW_Synth_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute box_type : string;
  attribute box_type of ECCLK : label is "PRIMITIVE";
  attribute box_type of FCLK : label is "PRIMITIVE";
  attribute DONT_TOUCH of Gate_Div_d1_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of Gate_Div_d1_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of Gate_Div_d1_reg : label is "no";
  attribute DONT_TOUCH of Gate_Div_reg : label is std.standard.true;
  attribute KEEP of Gate_Div_reg : label is "yes";
  attribute equivalent_register_removal of Gate_Div_reg : label is "no";
  attribute DONT_TOUCH of Gate_Fast_d1_reg : label is std.standard.true;
  attribute KEEP of Gate_Fast_d1_reg : label is "yes";
  attribute equivalent_register_removal of Gate_Fast_d1_reg : label is "no";
  attribute DONT_TOUCH of Gate_Fast_reg : label is std.standard.true;
  attribute KEEP of Gate_Fast_reg : label is "yes";
  attribute equivalent_register_removal of Gate_Fast_reg : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ICCLK : label is "BUFG";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of ICCLK : label is "VCC:CE";
  attribute box_type of ICCLK : label is "PRIMITIVE";
  attribute DEF_VAL : string;
  attribute DEF_VAL of LCK_CDC : label is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of LCK_CDC : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of LCK_CDC : label is 1;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of LCK_CDC : label is "1'b0";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of LCK_CDC : label is 0;
  attribute VERSION : integer;
  attribute VERSION of LCK_CDC : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of LCK_CDC : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of LCK_CDC : label is "TRUE";
  attribute DEF_VAL of RST_CDC : label is "1'b1";
  attribute DEST_SYNC_FF of RST_CDC : label is 4;
  attribute INIT_SYNC_FF of RST_CDC : label is 1;
  attribute INV_DEF_VAL of RST_CDC : label is "1'b0";
  attribute RST_ACTIVE_HIGH of RST_CDC : label is 0;
  attribute VERSION of RST_CDC : label is 0;
  attribute XPM_CDC of RST_CDC : label is "ASYNC_RST";
  attribute XPM_MODULE of RST_CDC : label is "TRUE";
  attribute DEF_VAL of SRT_CDC : label is "1'b1";
  attribute DEST_SYNC_FF of SRT_CDC : label is 4;
  attribute INIT_SYNC_FF of SRT_CDC : label is 1;
  attribute INV_DEF_VAL of SRT_CDC : label is "1'b0";
  attribute RST_ACTIVE_HIGH of SRT_CDC : label is 0;
  attribute VERSION of SRT_CDC : label is 0;
  attribute XPM_CDC of SRT_CDC : label is "ASYNC_RST";
  attribute XPM_MODULE of SRT_CDC : label is "TRUE";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \Synth_reg[7]_i_1\ : label is 35;
  attribute DEST_SYNC_FF of UP_CDC : label is 4;
  attribute INIT_SYNC_FF of UP_CDC : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of UP_CDC : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of UP_CDC : label is 0;
  attribute VERSION of UP_CDC : label is 0;
  attribute XPM_CDC of UP_CDC : label is "SINGLE";
  attribute XPM_MODULE of UP_CDC : label is "TRUE";
begin
  Clk_Out_Div <= \<const0>\;
  Rst_Async <= \^rst_async\;
ECCLK: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      IS_CE_INVERTED => '0',
      IS_I_INVERTED => '0',
      SIM_DEVICE => "ULTRASCALE",
      STARTUP_SYNC => "FALSE"
    )
        port map (
      CE => Startup_Done,
      I => Clk_In,
      O => Clk_Out_Cont
    );
FCLK: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "SYNC",
      IS_CE_INVERTED => '0',
      IS_I_INVERTED => '0',
      SIM_DEVICE => "ULTRASCALE",
      STARTUP_SYNC => "FALSE"
    )
        port map (
      CE => Gate_Fast_d1,
      I => Clk_In,
      O => Clk_Out
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
Gate_Div_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => Gate_Div,
      Q => Gate_Div_d1,
      R => '0'
    );
Gate_Div_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => p_1_in,
      Q => Gate_Div,
      R => p_0_in
    );
Gate_Fast_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => Gate_Fast,
      Q => Gate_Fast_d1,
      R => '0'
    );
Gate_Fast_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => p_1_in,
      Q => Gate_Fast,
      R => p_0_in
    );
ICCLK: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CE => '1',
      I => Clk_In,
      O => Clk_Int_Cont
    );
LCK_CDC: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\
     port map (
      dest_arst => Locked_cdc,
      dest_clk => Clk_Int_Cont,
      src_arst => Locked
    );
Last_Rate_Upd_Tog_CDC_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => dest_out,
      Q => Last_Rate_Upd_Tog_CDC,
      R => '0'
    );
Locked_ret_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => Locked_cdc,
      Q => Locked_ret,
      R => '0'
    );
RST_CDC: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1\
     port map (
      dest_arst => dest_arst,
      dest_clk => Clk_Int_Cont,
      src_arst => Rst_In
    );
Rate_Upd_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Last_Rate_Upd_Tog_CDC,
      I1 => dest_out,
      O => Rate_Upd_i_1_n_0
    );
Rate_Upd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => Rate_Upd_i_1_n_0,
      Q => Rate_Upd,
      R => '0'
    );
\Rate_int[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rst_async\,
      O => p_0_in
    );
\Rate_int_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_Int_Cont,
      CE => Rate_Upd,
      D => Rate_In(0),
      Q => Rate_int(0),
      S => p_0_in
    );
\Rate_int_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_Int_Cont,
      CE => Rate_Upd,
      D => Rate_In(1),
      Q => Rate_int(1),
      S => p_0_in
    );
\Rate_int_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_Int_Cont,
      CE => Rate_Upd,
      D => Rate_In(2),
      Q => Rate_int(2),
      S => p_0_in
    );
\Rate_int_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_Int_Cont,
      CE => Rate_Upd,
      D => Rate_In(3),
      Q => Rate_int(3),
      S => p_0_in
    );
\Rate_int_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_Int_Cont,
      CE => Rate_Upd,
      D => Rate_In(4),
      Q => Rate_int(4),
      S => p_0_in
    );
\Rate_int_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_Int_Cont,
      CE => Rate_Upd,
      D => Rate_In(5),
      Q => Rate_int(5),
      S => p_0_in
    );
\Rate_int_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_Int_Cont,
      CE => Rate_Upd,
      D => Rate_In(6),
      Q => Rate_int(6),
      S => p_0_in
    );
\Rate_int_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_Int_Cont,
      CE => Rate_Upd,
      D => Rate_In(7),
      Q => Rate_int(7),
      S => p_0_in
    );
Rst_In_ret_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => dest_arst,
      Q => Rst_In_ret,
      R => '0'
    );
Rst_Int_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Rst_In_ret,
      I1 => Locked_ret,
      I2 => Startup_Done_ret,
      O => Rst_Int_i_1_n_0
    );
Rst_Int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => Rst_Int_i_1_n_0,
      Q => \^rst_async\,
      R => '0'
    );
SRT_CDC: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
     port map (
      dest_arst => Startup_Done_cdc,
      dest_clk => Clk_Int_Cont,
      src_arst => Startup_Done
    );
Startup_Done_ret_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => Startup_Done_cdc,
      Q => Startup_Done_ret,
      R => '0'
    );
\Synth[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \Synth_reg_n_0_[6]\,
      I1 => Rate_int(7),
      I2 => Rate_int(6),
      O => \Synth[7]_i_2_n_0\
    );
\Synth[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \Synth_reg_n_0_[5]\,
      I1 => Rate_int(7),
      I2 => Rate_int(5),
      O => \Synth[7]_i_3_n_0\
    );
\Synth[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \Synth_reg_n_0_[4]\,
      I1 => Rate_int(7),
      I2 => Rate_int(4),
      O => \Synth[7]_i_4_n_0\
    );
\Synth[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \Synth_reg_n_0_[3]\,
      I1 => Rate_int(7),
      I2 => Rate_int(3),
      O => \Synth[7]_i_5_n_0\
    );
\Synth[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \Synth_reg_n_0_[2]\,
      I1 => Rate_int(7),
      I2 => Rate_int(2),
      O => \Synth[7]_i_6_n_0\
    );
\Synth[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \Synth_reg_n_0_[1]\,
      I1 => Rate_int(7),
      I2 => Rate_int(1),
      O => \Synth[7]_i_7_n_0\
    );
\Synth[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \Synth_reg_n_0_[0]\,
      I1 => Rate_int(7),
      I2 => Rate_int(0),
      O => \Synth[7]_i_8_n_0\
    );
\Synth_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => Synth(0),
      Q => \Synth_reg_n_0_[0]\,
      S => p_0_in
    );
\Synth_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => Synth(1),
      Q => \Synth_reg_n_0_[1]\,
      S => p_0_in
    );
\Synth_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => Synth(2),
      Q => \Synth_reg_n_0_[2]\,
      S => p_0_in
    );
\Synth_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => Synth(3),
      Q => \Synth_reg_n_0_[3]\,
      S => p_0_in
    );
\Synth_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => Synth(4),
      Q => \Synth_reg_n_0_[4]\,
      S => p_0_in
    );
\Synth_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => Synth(5),
      Q => \Synth_reg_n_0_[5]\,
      S => p_0_in
    );
\Synth_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => Synth(6),
      Q => \Synth_reg_n_0_[6]\,
      S => p_0_in
    );
\Synth_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_Int_Cont,
      CE => '1',
      D => Synth(7),
      Q => p_1_in,
      S => p_0_in
    );
\Synth_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \NLW_Synth_reg[7]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \Synth_reg[7]_i_1_n_1\,
      CO(5) => \Synth_reg[7]_i_1_n_2\,
      CO(4) => \Synth_reg[7]_i_1_n_3\,
      CO(3) => \Synth_reg[7]_i_1_n_4\,
      CO(2) => \Synth_reg[7]_i_1_n_5\,
      CO(1) => \Synth_reg[7]_i_1_n_6\,
      CO(0) => \Synth_reg[7]_i_1_n_7\,
      DI(7) => '0',
      DI(6) => \Synth_reg_n_0_[6]\,
      DI(5) => \Synth_reg_n_0_[5]\,
      DI(4) => \Synth_reg_n_0_[4]\,
      DI(3) => \Synth_reg_n_0_[3]\,
      DI(2) => \Synth_reg_n_0_[2]\,
      DI(1) => \Synth_reg_n_0_[1]\,
      DI(0) => \Synth_reg_n_0_[0]\,
      O(7 downto 0) => Synth(7 downto 0),
      S(7) => Rate_int(7),
      S(6) => \Synth[7]_i_2_n_0\,
      S(5) => \Synth[7]_i_3_n_0\,
      S(4) => \Synth[7]_i_4_n_0\,
      S(3) => \Synth[7]_i_5_n_0\,
      S(2) => \Synth[7]_i_6_n_0\,
      S(1) => \Synth[7]_i_7_n_0\,
      S(0) => \Synth[7]_i_8_n_0\
    );
UP_CDC: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
     port map (
      dest_clk => Clk_Int_Cont,
      dest_out => dest_out,
      src_clk => '0',
      src_in => Rate_Upd_Tog
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_22c0_clock_throttling_kernel_0,shell_utils_clock_throttling,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "shell_utils_clock_throttling,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_Clk_Out_Div_UNCONNECTED : STD_LOGIC;
  attribute CLK_SLOW_DIV : integer;
  attribute CLK_SLOW_DIV of U0 : label is 1;
  attribute SYNTH_SIZE : integer;
  attribute SYNTH_SIZE of U0 : label is 8;
  attribute x_interface_info : string;
  attribute x_interface_info of Clk_In : signal is "xilinx.com:signal:clock:1.0 Clk_In CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk_In : signal is "XIL_INTERFACENAME Clk_In, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_kernel_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of Clk_Out : signal is "xilinx.com:signal:clock:1.0 Clk_Out CLK";
  attribute x_interface_parameter of Clk_Out : signal is "XIL_INTERFACENAME Clk_Out, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_kernel_0_clk_out1_buf, INSERT_VIP 0";
  attribute x_interface_info of Clk_Out_Cont : signal is "xilinx.com:signal:clock:1.0 Clk_Out_Cont CLK";
  attribute x_interface_parameter of Clk_Out_Cont : signal is "XIL_INTERFACENAME Clk_Out_Cont, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_kernel_0_clk_out1_buf, INSERT_VIP 0";
  attribute x_interface_info of Rst_Async : signal is "xilinx.com:signal:reset:1.0 Rst_Async RST";
  attribute x_interface_parameter of Rst_Async : signal is "XIL_INTERFACENAME Rst_Async, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of Rst_In : signal is "xilinx.com:signal:reset:1.0 Rst_In RST";
  attribute x_interface_parameter of Rst_In : signal is "XIL_INTERFACENAME Rst_In, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling
     port map (
      Clk_In => Clk_In,
      Clk_Out => Clk_Out,
      Clk_Out_Cont => Clk_Out_Cont,
      Clk_Out_Div => NLW_U0_Clk_Out_Div_UNCONNECTED,
      Locked => Locked,
      Rate_In(7 downto 0) => Rate_In(7 downto 0),
      Rate_Upd_Tog => Rate_Upd_Tog,
      Rst_Async => Rst_Async,
      Rst_In => Rst_In,
      Startup_Done => Startup_Done
    );
end STRUCTURE;
