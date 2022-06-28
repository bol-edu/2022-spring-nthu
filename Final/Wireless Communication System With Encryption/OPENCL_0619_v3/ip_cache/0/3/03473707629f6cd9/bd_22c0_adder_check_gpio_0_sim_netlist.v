// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Jun 19 20:34:39 2022
// Host        : ic22 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_adder_check_gpio_0_sim_netlist.v
// Design      : bd_22c0_adder_check_gpio_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_22c0_adder_check_gpio_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 16}" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "0" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "1" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0010010011100110" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "16" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
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
iNiDb0ekPhRUbs/MzEotkv91aS3Hn7NpPOvNwhBA71ib54e/iuFgxDWsHQhG//uPFNOQcsw48NJ/
Jex9v3jJpOAvrsbpE1xtyr06RPHTtBrhLn5oy/JPLRnDikCjDL7pl2nz8/4NFppZ4IOdMQSsgZ6s
7cLy3ssFtw8YHgZpBBI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xMdWfJ9yC+dW7Z4tqvPOuJC1+I94TxwMeGVXcRxTpVQudL778iGxfViPG7+xFYupI1L28MxOHog5
8UcMSrFy49thnK0phUnIHj0aC6gyX5BTyX9O2yqRn+Tb0ViZwaw8RNb32PlwlnlwQ/6N6ZU9Y9aG
YFAdhmgN+2Xk4zUSzRuS4Fkh8aeMb+9XdKOXvagJC/n45GdxH8sqkEUbk/QiV8gGerqj5/G5/GwS
QvuOB3Sq1YSyUp1D7w4IQ4bJiFJESFOi5U2UE7u1h+1gzpJDnRrR1s84sELZRdUDynvMahqLleXZ
IWFY2+0qfSJmtHyzvV5D7u27zKevnVVSjKft+g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BXcxoAPS0tOe7iNiaiBkfnEQ6RK9h9ZdYl0ZQZ9gD+ivSxvHRqUQaNUJXADK+j/yHS3kFc9O9bHv
9apdYXON7IMZ9RLTfkh4tIbx4BGrm/PD1bNIEZES7Ggj/xNmgG+KoydQMFTsML7SQ21p7edBUfV2
az9eYYO2SbJM4Vnex/4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PWOAiRdoP7UJP31mBYgem1wyfxKBGPCYYuy7qK1OPyroUHrsrRm0rZWFQbakJzsfCiqiBbes1Pdp
FoS53FX/0oO/nGzrbleR9IKNRGwjSKaUMfAwPhBe3I31YsUwdVUMEm0draA/0Bu0frhCP/0jFhKQ
HicTG99WiRHsLh+F6Xz6QXtxjRhNhWEmp7tK+Z+a7g+N8LWRI2JpIQ272d9VQ61BaLlYfCqHUkHw
ThTl6gfzihr1Ngg2QM5mtIXn8OB6+fq3s9W2CR6TBAvGrx17Z8ej+u3fxiXxC+hBvQjWJ6ri0Top
bA0fhxTpucHxWUd+X+DhmNLTh/f+O3HV2Qpcsw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
botoKE8YfJkzZ/fegvRBoauY+UFblsqeTMPajI8WL2DBCRzCZJ9Qk/AYzzg+PUnrWUsoMrTJBGyn
gi8WNpzpMX8vvcpKlw8goBzVjdTNmI1s9S0E+VsI1yVv6BIJNCpUF+5EMLdX8/DiJlnuRanoMrvC
KGgBmcKqG7oRhK8xe5pzt7tMew5ocXeCa73sQSLmXuEgUF3UVgaIEpZcsxwiXmE2Av9Y6V+8CSvq
+Kfe/xfivs0EagmHnRhzTM0RvsI3OWHwM7UoosrQd3SFdhg0MFJga+3RHNAK/K7GDL4b3RHD5bQj
9a1gFdowA72kPKeFSBiYlgX6Vk9Uwm2F+V/kSg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lihXgVbpHCLec3zc0ec/06bvVG8syHdsLieKcT9rurQvsbFuEgs53hupuKiQVpUO75Rlflsu9Uv7
M1kUEvj0hLqSwp51FfBdIFyDn69Y/AR9B3nk5K135817Ii5ef0MMxeTSV36GglTaxPcxRJbXKlei
Nh0/cGeo0C8fqlrdb7l2aLKeeo9GaYgnzabE/VAGK3Kvr/UJbmK2eRfLlPygyEE2Hz4VYkVXisIZ
MLfZuqs0KBE7OdqwtqhW0cv/zMjRCl+Ton6KCq1NDbf5iAJGaVns2C8FlvsDnvW98hupBmOnntWx
+cSxLW5CnVkSSDuLYwSmB/VDFDZoKbAAPHcKWg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bslnbMuzuE/h0dU1KUmyBtZ9YobdFoUvmIJOrSIMm1QHKHywokHfs/tstG3kbnleE5Ro3QbFvkee
MAslPB9/9GMe/K/9oy/NUwk7CdOKMDnWe6bjAzHdnN6rqGH8LyHfwibusv1+Ggl/dI+eT7fXvxNf
GalIV+qeXkw58Q8O8q/FoJMuwbuwcSGXWGWU+qSZ44Vj4aHHqMw6AvrJ3nWXG1Aa99MNUc7H9KAC
fL/xXWAYYUs0Aqqfj7hdBSkcTp8RLAb0NH2e/+ve6WJ5Y8lWNAyNlqNz/PW/FvxJwZvYCN5ALqAn
XPV0+dZ+1F6SjA2qB8uYqVSHe2sF4AgOSUb0Yg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
KUnwEk0xEpdk2Q3CoTxn9CRe6h/F7eWo/AjrPR0pRlPkFpPN084BeB9Y0fdrjgkq+3HXC4zvjgDR
HGtLYulQ/DDCcVou7MBx+WsobjDsPw4aytnHFJhdPl1/gu90mG3irpFwUndHqHd5KOIno4hRyyVj
ntNaLqfhtx97ZFT7dzeS4sr9hR5umMXx8eagFMAL0SKuooqN5ma5Kn5yRTlFXeVZaOVeeodaDaTe
u+OLoCcbLeOyuraazX0w05ROt1RWuQhiAHJr5D+PdtFH6PTheFQIQp72F4YJVS/Xw+0kGSBAkqw0
FleW7Pxa+YHT/FS6kuvwJ5uAhLIHGM1453HF6YOB/1TCDOa2ntNezXMJIFtsfvAAHyaSJ2XMNrD3
feFFBLqTImohKBoaNkp7O7foRfLi5R/oAlMMzRg83P/99YLyjfIm3xkD3eia2CAK/2qk4ZtC2JQ3
4aJcd5YcoSYGjVfXix9p+pfKHaa/jbY+Vh5Z3dVT8Romtkzvu5jg+UbJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
P0U2cnGBY9QMyeqr0dOgxj1qNLQ9oatsneQM/zp8ImZGMa9l89mK7lP6/iTxsbrSbC19vRKLXHpw
FTJYNfqvgRZhS7DxQb5OwgYRsbNrhsqUkrU6fD4YcLCVJvUsq4FGf2GMp0SBEmXMlu0H57IA3Ycx
grGxw4dQSY2pM7fKezkaKsACbitFQrg/Q6XzNrg49L/dKrBnQzoDIcgA4wyQrdpLLWdScsi34/UM
96uXBX5B4OAKjIMOlIKwRQov3zD06mx28NQD4VizPa1T5UyqFMRb5eW6zlTHzEI6+x7KVH1IEyUn
4tcbk3Sz3i/RmX3lguEbJEV6kLotF8iEhuyTHw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WmwJklrMBNts8lQ4OdSA+YM2WIPc5r0r7w7zL4vt+hjNyRwnJaxBCK+SJeCF1nlTHNGMrij47y2Y
dBVKrOra0bttfahyU56PnRZ1IQkB/VG9KLiNRsE/pvWSpyv4WfqybkkTGtKKXqqYmemjHieBsPRD
997bQx1o6K9o6PgbEmMFZQV08Gm/yR4rwxwMMNam5uDv8stXcmLsP1ZWps8z8gmMlwPsNX34e048
7DjhVfFthT/yFfM1B3fnNRBguTmDbxjYN0xXc7FzTLojnWJjE74OjzsUzlloIEJ0yZtkwKYFPdPE
inX4vTTchSuexpvQ9LfyneJOoKhQa9OyBCQ0Bw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eQgjKx+SfDaueAIvU/Uh2okynx7xwyPlszpGaqH2ajp+sptIwTWjsL+Xw2+fV8lyvuFUZUIeVqrM
VcG+0Fgnbtn/wHzSJ7Rlo+mDE5e3oaBuxMbhTIlsT/PhM6juNDn5osCgQVD+TgSqIwEr180i9/2g
vHTok15eyOU4G0QkWIaNtoUqkLzERa2xLR6rph6r3k+A898PQEfV1U3yCLJVhehrXL8bKkiZ+uNe
72BxO2mZSSWeJnXSOf8B9H3uXqN3A06HNGCe5/S6hc6th9Bk643xA10ZL5s9E8jo+wbHntqROGCL
l+0nJH0xsjww7bf9GSKAOClTFY9ocXjfP1XmgA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8720)
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
