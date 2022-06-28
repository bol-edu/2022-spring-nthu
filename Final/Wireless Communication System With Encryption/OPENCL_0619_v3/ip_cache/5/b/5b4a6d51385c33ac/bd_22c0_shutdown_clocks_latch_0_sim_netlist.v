// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Jun 19 20:34:40 2022
// Host        : ic22 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_shutdown_clocks_latch_0_sim_netlist.v
// Design      : bd_22c0_shutdown_clocks_latch_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_22c0_shutdown_clocks_latch_0,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jG2v9T49tdQSj574iPMluJEMXDDBLjZG2zNs0knuFEWnAaqdikWpECT7idbm6x5qJDGEr9gLczib
BMlJXPjZqnu8LKErXhHN4zQPdW/UyjPdO0+zXLYvmV3+WFLktZAub8fBcb1jkCpceHkVN/L47DJm
0NqTdD1/nSudhZT07x4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
omahqO8erRajfMFm0CRLhUI+R/ENUIUELpzH+ZyfLsy2pO7X1skXaARvTRzro4Sia2qXbjr8QNb3
MViAT9Vt2JD1wNUIqIRmv+eR7f/YVh6bRoQsbWpOXpQl1juOVD9g+tAx1bZ56jeC7mVwOZeJAaa8
IxNWjmTu0oRtqqAJMdxIcG9OtNntBPODFtkmL1NCgAarTRy9jpe7a2w0My8DJ0uNhTThmoHEEIBo
bjixlKZWJWWjP5wcniMkdJTG5Z3iZgC7gMNUZAeKvdqtju2nicAfNnznUi0W5VL3cX6/FdEAcH+G
Ys4c+etN4i0ZBUiXiGEZYj/w9cNKCBsY7P+SZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BGMOv1hIfDXZClH2jp8n3C6zubbI31BJ+kwrJGaaZztKwljIuMW1xBJPpe0MJPPYFMkaV53/NhII
gZsWlMS+0xb+lpZvbabVEp1zVXDkJVlKVyMkCJq6vhJEmbr18QOApnY7ZdxA3jVRmGCFi2bEYf1Z
kFoyZUIhjfxwXvvyEuU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RFhMMeHCwF0EBiEVTGToaq7uMNuVhKGBODUna6RhJBlQpi7lEkx19iDGQX3XNWrESsnLrwLfV9im
A3I4KpK+bFFTGE6gd8ITj1j3mlic4zumdZlzEVBoNZZ+SSJwwodEM66lJxJdnQrJinMM1xZHA1a5
0YcrjWjMz7xVm8Ua4GI9wU3Me6E0Ynj9p/dqrSjz/XXXKAX6M906EHwodmgeURgBdSXeizA6viDw
w3/naDGVX5ft95xZIl0/A7HhFWQJ+yCWbdjATsAMq7imhgEeOUeylx6emOXNT9NIYVbcC2XkSScr
sHgVYnOh78bBLsBi0Y6hO8rB/id49SIHRxLMWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MdduHUbZpyR3cdxehChW5dF4A5+wRD2Ou4kjhjkNeYucmxhrYKruLxKwIXq2QCxoCidI7Xgns81Q
6i7XKLxu0z01H10d7qtFwwJLfiE6TMbKHI3c8VOd5EtHAfUvRLcIzSwjcH7d4SZKDKkxBxyyUydV
8OdLG5Xk2ObtxWeLNChWwA/TDni5GPHWUu9yFQpCmzwYwYRbzc7Hz5WjhWFdZrtho5+Q7YqEG60J
pkhbQd6+C6mzowXWylqaK/68+04Of8FTEcnhpRPAF8jiTftidlU6IA8raaPlmH9c0vrvm3hRjxKZ
lXlU8sKGJVELhJQUvKyCUuLmaVthLgyj2gE/iQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GzreOmqw+ToJkUwbUv9qMljwWejCepyirklLAf4Fq41jkLx6zX77fgq6OSLRXS7XGx8z/EsfPhy9
+1EMooqQ4AG4AI0U62jylpi5Rn6ZtBEuqQIqO38cA3l82QBDrD1IT2doIszkRhdUK+FHSgiFaQXj
P2afjajqS7mh8virHcSQ6+SjctNL1rrh+mf6yHBzCfn0mHqbNowj5sTE8yTXTo9E34KTsGdI4Ahc
CEixVBaQ4+WcVfvdqnHkNQUaOGqPBg+dj+BtYcrw0Rs0qG9xf4NN3QJxRAPE3pWU+/fPLKN/T7Jk
0rp/c+B/3k3JDNv0KVCpF8vblZ+c9ic6DM0rcQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IPSD6xR9Fms++sJcBWt5QBDsLb48uh9dp81Y2M19lsza0rYoP6qTo3vr7u38hyzy+SjbAgcHdMWZ
y6cOLdDdOLnwuoZbFicsOPsFneuQTyS2/q+da8ieW5934Y8B8ommWY6chhhcfZFksS+9SkhYpjN5
0kW0XlP/kr7CDRGzoGpmyQkUrOKqk5lu7FGa7ugd00ikvuK1pNIUpVHyiu/50kelTBNZqmBBbF/o
JLgPglue85L1btjSw+C+LtX23P7KLU9VFPo/qupZVpBhJkfFPEcQAh/H8/c+rXQT6BZLqighSpHX
x3Fz0VeyyG758nO4sKlC5VQy/VJUaCfkHLIXfw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
K7I8bdi0/qD7rf66atUchc8ZKFGrl0PQYAxgRIlLf8znkzNfTAlaHo4O/4bBxrFeBFJIJfxRLnIu
KHaPEZi2L6rFNI/HK97kU1Jc5OyaTDvlIHjVACoQNDqdp5c/WL9hNvDfutzrxwQlait3Fith5Gc8
wn9x/V+PqJzKaqEl3DZkVkWH2RBcw4goDMjI8D49qbCTDD85NpFnFuFb5L2LkFJhgPBwjSxTU4Aq
+ZRqyedj7C5g1Ad5/NJCCE4BlxELcwUDTsAraGsBHURJHM5hH+AQqNiOBdUTt6WpuoSCSaUgDCnR
sZ98jiIuQPnhXgLTzu5DQMadsZoqjky+pFX2rKGbl/RE/EdlbKLYGwyg1a6glipvHrCaORwDKN+U
IVhrGxyQc0UfKpn1DMxpcE6DZKLa4xWCkxcqdcyFc75Xj/xeq0+KqpHtpWDRC8iK9LTJ76+VXksa
hX/CEj61mK/LvJYd54UaztQ4bw9azmt3z2HgDvr3DgybxcoFYU7LkJmg

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RS5eHe/zrf1NaRRw6+oIutWaSmDK69iMgcW/v0c0jAXkK6Gfn9oUcneOYMuU29zSKn7WGl6NJQnq
rVqlhdJEdRIbbss7IM0WZof3LerrQoWBwNSBUuK/NZ7p/RzoiC1bSUh2LAin7gaspBvAHXr1rvKx
OOwD527zrdbhnPOu4uEWGvTwfI9ImNTCS/aMTdHCC6ZqGXuGhtpS9hyDih3a0JoaAF7irmu2GA35
My5/Y2Xwtc3WZ7SgvhS4KtEKavOO9H1WAWgS2u7IUDyJ0YbyfMpIWSa6xjACUk9l5HFYF0UE+Glp
lJJewBk6oeCeXVBfe37oSeo8ZwzHMvpzK7dUGA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ausQJj7XEKYu6xtAvn8jJhgdnkSdtkQbsgI7E+PYLTqpQKcx0KhTU0kvThIxj2i2DpXD4R/n8212
xGpJRjGe3kW4BBQHnyDvHFqVkZ9bzXZ6yDUcSkN0tlUQIWuXFsSwp+pNki3NMzzKIsrO2XczWSHK
UoWvMJPiXGLbrAaGLv5Bp7VReH8/wOrUgk/+w19Zw7ic+GTV16AoR1Fr1mwupcr4OeUhZvyCo7KA
guKMk0WvKO2FqeZt9l4tL/PKpeQbMSBTue2H2jN3UosfAm41ELX5ppfSPPWiLe7WQhQXtLoITs11
ik7w8KsW1B78oXnTMJH64WTteuKDGySosvVBkQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u8oxOyFHmJRJzw961q+4x1yYRMTuY1582lCzC9FV4YRJrbcIZvjr5oyKWKrwpPKXtTgeYSCmquDF
i4OMd5LZn4+KNuzWUxW6L+S9BWOvXjXSJAib5rqGj8XffGWh7slhBorOfRmVJnE6BQp5q4zNzkRt
kAmWi+cD3yKYl+47ieS58fHeHzvLcPNRVvhBSNFid+T3klb+Nd5qIBo0aPh6N0XAtE1xW2hs+G4D
PyvOaChh8X1ygeFz6VgN0O6pafPFhwefYBlrQi+pkbISJ0c6lW6vAkIxIoeYif6B5xiDhy4Iqsrh
F7cyWJJNxdMiyIKvfAbPwL1WPLvdSXJjnFS7fA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6816)
`pragma protect data_block
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
`pragma protect end_protected
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
