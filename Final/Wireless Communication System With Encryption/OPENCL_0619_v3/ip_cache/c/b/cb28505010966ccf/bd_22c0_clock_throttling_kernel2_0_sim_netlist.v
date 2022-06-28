// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Jun 19 20:35:52 2022
// Host        : ic22 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_clock_throttling_kernel2_0_sim_netlist.v
// Design      : bd_22c0_clock_throttling_kernel2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_22c0_clock_throttling_kernel2_0,shell_utils_clock_throttling,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_clock_throttling,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (Clk_In,
    Rst_In,
    Locked,
    Startup_Done,
    Rate_Upd_Tog,
    Rate_In,
    Rst_Async,
    Clk_Out,
    Clk_Out_Cont);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk_In CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk_In, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_kernel2_0_clk_out1, INSERT_VIP 0" *) input Clk_In;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Rst_In RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Rst_In, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Rst_In;
  input Locked;
  input Startup_Done;
  input Rate_Upd_Tog;
  input [7:0]Rate_In;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Rst_Async RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Rst_Async, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output Rst_Async;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk_Out CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk_Out, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_kernel2_0_clk_out1_buf, INSERT_VIP 0" *) output Clk_Out;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk_Out_Cont CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk_Out_Cont, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_22c0_clkwiz_kernel2_0_clk_out1_buf, INSERT_VIP 0" *) output Clk_Out_Cont;

  wire Clk_In;
  wire Clk_Out;
  wire Clk_Out_Cont;
  wire Locked;
  wire [7:0]Rate_In;
  wire Rate_Upd_Tog;
  wire Rst_Async;
  wire Rst_In;
  wire Startup_Done;
  wire NLW_U0_Clk_Out_Div_UNCONNECTED;

  (* CLK_SLOW_DIV = "1" *) 
  (* SYNTH_SIZE = "8" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling U0
       (.Clk_In(Clk_In),
        .Clk_Out(Clk_Out),
        .Clk_Out_Cont(Clk_Out_Cont),
        .Clk_Out_Div(NLW_U0_Clk_Out_Div_UNCONNECTED),
        .Locked(Locked),
        .Rate_In(Rate_In),
        .Rate_Upd_Tog(Rate_Upd_Tog),
        .Rst_Async(Rst_Async),
        .Rst_In(Rst_In),
        .Startup_Done(Startup_Done));
endmodule

(* CLK_SLOW_DIV = "1" *) (* SYNTH_SIZE = "8" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_clock_throttling
   (Clk_In,
    Rst_In,
    Locked,
    Startup_Done,
    Rate_Upd_Tog,
    Rate_In,
    Rst_Async,
    Clk_Out,
    Clk_Out_Div,
    Clk_Out_Cont);
  input Clk_In;
  input Rst_In;
  input Locked;
  input Startup_Done;
  input Rate_Upd_Tog;
  input [7:0]Rate_In;
  output Rst_Async;
  output Clk_Out;
  output Clk_Out_Div;
  output Clk_Out_Cont;

  wire \<const0> ;
  wire Clk_In;
  wire Clk_Int_Cont;
  wire Clk_Out;
  wire Clk_Out_Cont;
  (* DONT_TOUCH *) wire Gate_Div;
  (* DONT_TOUCH *) wire Gate_Div_d1;
  (* DONT_TOUCH *) wire Gate_Fast;
  (* DONT_TOUCH *) wire Gate_Fast_d1;
  wire Last_Rate_Upd_Tog_CDC;
  wire Locked;
  wire Locked_cdc;
  wire Locked_ret;
  wire [7:0]Rate_In;
  wire Rate_Upd;
  wire Rate_Upd_Tog;
  wire Rate_Upd_i_1_n_0;
  wire [7:0]Rate_int;
  wire Rst_Async;
  wire Rst_In;
  wire Rst_In_ret;
  wire Rst_Int_i_1_n_0;
  wire Startup_Done;
  wire Startup_Done_cdc;
  wire Startup_Done_ret;
  wire [7:0]Synth;
  wire \Synth[7]_i_2_n_0 ;
  wire \Synth[7]_i_3_n_0 ;
  wire \Synth[7]_i_4_n_0 ;
  wire \Synth[7]_i_5_n_0 ;
  wire \Synth[7]_i_6_n_0 ;
  wire \Synth[7]_i_7_n_0 ;
  wire \Synth[7]_i_8_n_0 ;
  wire \Synth_reg[7]_i_1_n_1 ;
  wire \Synth_reg[7]_i_1_n_2 ;
  wire \Synth_reg[7]_i_1_n_3 ;
  wire \Synth_reg[7]_i_1_n_4 ;
  wire \Synth_reg[7]_i_1_n_5 ;
  wire \Synth_reg[7]_i_1_n_6 ;
  wire \Synth_reg[7]_i_1_n_7 ;
  wire \Synth_reg_n_0_[0] ;
  wire \Synth_reg_n_0_[1] ;
  wire \Synth_reg_n_0_[2] ;
  wire \Synth_reg_n_0_[3] ;
  wire \Synth_reg_n_0_[4] ;
  wire \Synth_reg_n_0_[5] ;
  wire \Synth_reg_n_0_[6] ;
  wire dest_arst;
  wire dest_out;
  wire p_0_in;
  wire p_1_in;
  wire [7:7]\NLW_Synth_reg[7]_i_1_CO_UNCONNECTED ;

  assign Clk_Out_Div = \<const0> ;
  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("ULTRASCALE"),
    .STARTUP_SYNC("FALSE")) 
    ECCLK
       (.CE(Startup_Done),
        .I(Clk_In),
        .O(Clk_Out_Cont));
  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("SYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("ULTRASCALE"),
    .STARTUP_SYNC("FALSE")) 
    FCLK
       (.CE(Gate_Fast_d1),
        .I(Clk_In),
        .O(Clk_Out));
  GND GND
       (.G(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    Gate_Div_d1_reg
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(Gate_Div),
        .Q(Gate_Div_d1),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    Gate_Div_reg
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(p_1_in),
        .Q(Gate_Div),
        .R(p_0_in));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    Gate_Fast_d1_reg
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(Gate_Fast),
        .Q(Gate_Fast_d1),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    Gate_Fast_reg
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(p_1_in),
        .Q(Gate_Fast),
        .R(p_0_in));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    ICCLK
       (.CE(1'b1),
        .I(Clk_In),
        .O(Clk_Int_Cont));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* INV_DEF_VAL = "1'b0" *) 
  (* RST_ACTIVE_HIGH = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2 LCK_CDC
       (.dest_arst(Locked_cdc),
        .dest_clk(Clk_Int_Cont),
        .src_arst(Locked));
  FDRE #(
    .INIT(1'b0)) 
    Last_Rate_Upd_Tog_CDC_reg
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(dest_out),
        .Q(Last_Rate_Upd_Tog_CDC),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Locked_ret_reg
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(Locked_cdc),
        .Q(Locked_ret),
        .R(1'b0));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* INV_DEF_VAL = "1'b0" *) 
  (* RST_ACTIVE_HIGH = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1 RST_CDC
       (.dest_arst(dest_arst),
        .dest_clk(Clk_Int_Cont),
        .src_arst(Rst_In));
  LUT2 #(
    .INIT(4'h6)) 
    Rate_Upd_i_1
       (.I0(Last_Rate_Upd_Tog_CDC),
        .I1(dest_out),
        .O(Rate_Upd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Rate_Upd_reg
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(Rate_Upd_i_1_n_0),
        .Q(Rate_Upd),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \Rate_int[7]_i_1 
       (.I0(Rst_Async),
        .O(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[0] 
       (.C(Clk_Int_Cont),
        .CE(Rate_Upd),
        .D(Rate_In[0]),
        .Q(Rate_int[0]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[1] 
       (.C(Clk_Int_Cont),
        .CE(Rate_Upd),
        .D(Rate_In[1]),
        .Q(Rate_int[1]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[2] 
       (.C(Clk_Int_Cont),
        .CE(Rate_Upd),
        .D(Rate_In[2]),
        .Q(Rate_int[2]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[3] 
       (.C(Clk_Int_Cont),
        .CE(Rate_Upd),
        .D(Rate_In[3]),
        .Q(Rate_int[3]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[4] 
       (.C(Clk_Int_Cont),
        .CE(Rate_Upd),
        .D(Rate_In[4]),
        .Q(Rate_int[4]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[5] 
       (.C(Clk_Int_Cont),
        .CE(Rate_Upd),
        .D(Rate_In[5]),
        .Q(Rate_int[5]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[6] 
       (.C(Clk_Int_Cont),
        .CE(Rate_Upd),
        .D(Rate_In[6]),
        .Q(Rate_int[6]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \Rate_int_reg[7] 
       (.C(Clk_Int_Cont),
        .CE(Rate_Upd),
        .D(Rate_In[7]),
        .Q(Rate_int[7]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    Rst_In_ret_reg
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(dest_arst),
        .Q(Rst_In_ret),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    Rst_Int_i_1
       (.I0(Rst_In_ret),
        .I1(Locked_ret),
        .I2(Startup_Done_ret),
        .O(Rst_Int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Rst_Int_reg
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(Rst_Int_i_1_n_0),
        .Q(Rst_Async),
        .R(1'b0));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* INV_DEF_VAL = "1'b0" *) 
  (* RST_ACTIVE_HIGH = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst SRT_CDC
       (.dest_arst(Startup_Done_cdc),
        .dest_clk(Clk_Int_Cont),
        .src_arst(Startup_Done));
  FDRE #(
    .INIT(1'b0)) 
    Startup_Done_ret_reg
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(Startup_Done_cdc),
        .Q(Startup_Done_ret),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h9A)) 
    \Synth[7]_i_2 
       (.I0(\Synth_reg_n_0_[6] ),
        .I1(Rate_int[7]),
        .I2(Rate_int[6]),
        .O(\Synth[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \Synth[7]_i_3 
       (.I0(\Synth_reg_n_0_[5] ),
        .I1(Rate_int[7]),
        .I2(Rate_int[5]),
        .O(\Synth[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \Synth[7]_i_4 
       (.I0(\Synth_reg_n_0_[4] ),
        .I1(Rate_int[7]),
        .I2(Rate_int[4]),
        .O(\Synth[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \Synth[7]_i_5 
       (.I0(\Synth_reg_n_0_[3] ),
        .I1(Rate_int[7]),
        .I2(Rate_int[3]),
        .O(\Synth[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \Synth[7]_i_6 
       (.I0(\Synth_reg_n_0_[2] ),
        .I1(Rate_int[7]),
        .I2(Rate_int[2]),
        .O(\Synth[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \Synth[7]_i_7 
       (.I0(\Synth_reg_n_0_[1] ),
        .I1(Rate_int[7]),
        .I2(Rate_int[1]),
        .O(\Synth[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \Synth[7]_i_8 
       (.I0(\Synth_reg_n_0_[0] ),
        .I1(Rate_int[7]),
        .I2(Rate_int[0]),
        .O(\Synth[7]_i_8_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[0] 
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(Synth[0]),
        .Q(\Synth_reg_n_0_[0] ),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[1] 
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(Synth[1]),
        .Q(\Synth_reg_n_0_[1] ),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[2] 
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(Synth[2]),
        .Q(\Synth_reg_n_0_[2] ),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[3] 
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(Synth[3]),
        .Q(\Synth_reg_n_0_[3] ),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[4] 
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(Synth[4]),
        .Q(\Synth_reg_n_0_[4] ),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[5] 
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(Synth[5]),
        .Q(\Synth_reg_n_0_[5] ),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[6] 
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(Synth[6]),
        .Q(\Synth_reg_n_0_[6] ),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \Synth_reg[7] 
       (.C(Clk_Int_Cont),
        .CE(1'b1),
        .D(Synth[7]),
        .Q(p_1_in),
        .S(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \Synth_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_Synth_reg[7]_i_1_CO_UNCONNECTED [7],\Synth_reg[7]_i_1_n_1 ,\Synth_reg[7]_i_1_n_2 ,\Synth_reg[7]_i_1_n_3 ,\Synth_reg[7]_i_1_n_4 ,\Synth_reg[7]_i_1_n_5 ,\Synth_reg[7]_i_1_n_6 ,\Synth_reg[7]_i_1_n_7 }),
        .DI({1'b0,\Synth_reg_n_0_[6] ,\Synth_reg_n_0_[5] ,\Synth_reg_n_0_[4] ,\Synth_reg_n_0_[3] ,\Synth_reg_n_0_[2] ,\Synth_reg_n_0_[1] ,\Synth_reg_n_0_[0] }),
        .O(Synth),
        .S({Rate_int[7],\Synth[7]_i_2_n_0 ,\Synth[7]_i_3_n_0 ,\Synth[7]_i_4_n_0 ,\Synth[7]_i_5_n_0 ,\Synth[7]_i_6_n_0 ,\Synth[7]_i_7_n_0 ,\Synth[7]_i_8_n_0 }));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single UP_CDC
       (.dest_clk(Clk_Int_Cont),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(Rate_Upd_Tog));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) 
(* INV_DEF_VAL = "1'b0" *) (* RST_ACTIVE_HIGH = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [3:0]arststages_ff;
  wire dest_clk;
  wire reset_pol;
  wire src_arst;

  assign dest_arst = arststages_ff[3];
  LUT1 #(
    .INIT(2'h1)) 
    \arststages_ff[3]_i_1 
       (.I0(src_arst),
        .O(reset_pol));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(1'b1),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[0]),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[1]),
        .Q(arststages_ff[2]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[2]),
        .Q(arststages_ff[3]));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) 
(* INV_DEF_VAL = "1'b0" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [3:0]arststages_ff;
  wire dest_clk;
  wire reset_pol;
  wire src_arst;

  assign dest_arst = arststages_ff[3];
  LUT1 #(
    .INIT(2'h1)) 
    \arststages_ff[3]_i_1 
       (.I0(src_arst),
        .O(reset_pol));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(1'b1),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[0]),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[1]),
        .Q(arststages_ff[2]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[2]),
        .Q(arststages_ff[3]));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) 
(* INV_DEF_VAL = "1'b0" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [3:0]arststages_ff;
  wire dest_clk;
  wire reset_pol;
  wire src_arst;

  assign dest_arst = arststages_ff[3];
  LUT1 #(
    .INIT(2'h1)) 
    \arststages_ff[3]_i_1 
       (.I0(src_arst),
        .O(reset_pol));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(1'b1),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[0]),
        .Q(arststages_ff[1]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[1]),
        .Q(arststages_ff[2]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDCE #(
    .INIT(1'b1)) 
    \arststages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .CLR(reset_pol),
        .D(arststages_ff[2]),
        .Q(arststages_ff[3]));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
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
