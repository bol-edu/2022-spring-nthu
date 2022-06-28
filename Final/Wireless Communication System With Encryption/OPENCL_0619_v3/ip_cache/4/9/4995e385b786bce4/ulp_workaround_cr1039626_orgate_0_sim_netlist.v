// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Jun 19 20:36:55 2022
// Host        : ic22 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_workaround_cr1039626_orgate_0_sim_netlist.v
// Design      : ulp_workaround_cr1039626_orgate_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ulp_workaround_cr1039626_orgate_0,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (Op1,
    Op2,
    Res);
  input [127:0]Op1;
  input [127:0]Op2;
  output [127:0]Res;

  wire [127:0]Op1;
  wire [127:0]Op2;
  wire [127:0]Res;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_vector_logic_v2_0_1_util_vector_logic inst
       (.Op1(Op1),
        .Op2(Op2),
        .Res(Res));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_vector_logic_v2_0_1_util_vector_logic
   (Res,
    Op1,
    Op2);
  output [127:0]Res;
  input [127:0]Op1;
  input [127:0]Op2;

  wire [127:0]Op1;
  wire [127:0]Op2;
  wire [127:0]Res;

  LUT2 #(
    .INIT(4'hE)) 
    \Res[0]_INST_0 
       (.I0(Op1[0]),
        .I1(Op2[0]),
        .O(Res[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[100]_INST_0 
       (.I0(Op1[100]),
        .I1(Op2[100]),
        .O(Res[100]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[101]_INST_0 
       (.I0(Op1[101]),
        .I1(Op2[101]),
        .O(Res[101]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[102]_INST_0 
       (.I0(Op1[102]),
        .I1(Op2[102]),
        .O(Res[102]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[103]_INST_0 
       (.I0(Op1[103]),
        .I1(Op2[103]),
        .O(Res[103]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[104]_INST_0 
       (.I0(Op1[104]),
        .I1(Op2[104]),
        .O(Res[104]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[105]_INST_0 
       (.I0(Op1[105]),
        .I1(Op2[105]),
        .O(Res[105]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[106]_INST_0 
       (.I0(Op1[106]),
        .I1(Op2[106]),
        .O(Res[106]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[107]_INST_0 
       (.I0(Op1[107]),
        .I1(Op2[107]),
        .O(Res[107]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[108]_INST_0 
       (.I0(Op1[108]),
        .I1(Op2[108]),
        .O(Res[108]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[109]_INST_0 
       (.I0(Op1[109]),
        .I1(Op2[109]),
        .O(Res[109]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[10]_INST_0 
       (.I0(Op1[10]),
        .I1(Op2[10]),
        .O(Res[10]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[110]_INST_0 
       (.I0(Op1[110]),
        .I1(Op2[110]),
        .O(Res[110]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[111]_INST_0 
       (.I0(Op1[111]),
        .I1(Op2[111]),
        .O(Res[111]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[112]_INST_0 
       (.I0(Op1[112]),
        .I1(Op2[112]),
        .O(Res[112]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[113]_INST_0 
       (.I0(Op1[113]),
        .I1(Op2[113]),
        .O(Res[113]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[114]_INST_0 
       (.I0(Op1[114]),
        .I1(Op2[114]),
        .O(Res[114]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[115]_INST_0 
       (.I0(Op1[115]),
        .I1(Op2[115]),
        .O(Res[115]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[116]_INST_0 
       (.I0(Op1[116]),
        .I1(Op2[116]),
        .O(Res[116]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[117]_INST_0 
       (.I0(Op1[117]),
        .I1(Op2[117]),
        .O(Res[117]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[118]_INST_0 
       (.I0(Op1[118]),
        .I1(Op2[118]),
        .O(Res[118]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[119]_INST_0 
       (.I0(Op1[119]),
        .I1(Op2[119]),
        .O(Res[119]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[11]_INST_0 
       (.I0(Op1[11]),
        .I1(Op2[11]),
        .O(Res[11]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[120]_INST_0 
       (.I0(Op1[120]),
        .I1(Op2[120]),
        .O(Res[120]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[121]_INST_0 
       (.I0(Op1[121]),
        .I1(Op2[121]),
        .O(Res[121]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[122]_INST_0 
       (.I0(Op1[122]),
        .I1(Op2[122]),
        .O(Res[122]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[123]_INST_0 
       (.I0(Op1[123]),
        .I1(Op2[123]),
        .O(Res[123]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[124]_INST_0 
       (.I0(Op1[124]),
        .I1(Op2[124]),
        .O(Res[124]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[125]_INST_0 
       (.I0(Op1[125]),
        .I1(Op2[125]),
        .O(Res[125]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[126]_INST_0 
       (.I0(Op1[126]),
        .I1(Op2[126]),
        .O(Res[126]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[127]_INST_0 
       (.I0(Op1[127]),
        .I1(Op2[127]),
        .O(Res[127]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[12]_INST_0 
       (.I0(Op1[12]),
        .I1(Op2[12]),
        .O(Res[12]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[13]_INST_0 
       (.I0(Op1[13]),
        .I1(Op2[13]),
        .O(Res[13]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[14]_INST_0 
       (.I0(Op1[14]),
        .I1(Op2[14]),
        .O(Res[14]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[15]_INST_0 
       (.I0(Op1[15]),
        .I1(Op2[15]),
        .O(Res[15]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[16]_INST_0 
       (.I0(Op1[16]),
        .I1(Op2[16]),
        .O(Res[16]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[17]_INST_0 
       (.I0(Op1[17]),
        .I1(Op2[17]),
        .O(Res[17]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[18]_INST_0 
       (.I0(Op1[18]),
        .I1(Op2[18]),
        .O(Res[18]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[19]_INST_0 
       (.I0(Op1[19]),
        .I1(Op2[19]),
        .O(Res[19]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[1]_INST_0 
       (.I0(Op1[1]),
        .I1(Op2[1]),
        .O(Res[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[20]_INST_0 
       (.I0(Op1[20]),
        .I1(Op2[20]),
        .O(Res[20]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[21]_INST_0 
       (.I0(Op1[21]),
        .I1(Op2[21]),
        .O(Res[21]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[22]_INST_0 
       (.I0(Op1[22]),
        .I1(Op2[22]),
        .O(Res[22]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[23]_INST_0 
       (.I0(Op1[23]),
        .I1(Op2[23]),
        .O(Res[23]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[24]_INST_0 
       (.I0(Op1[24]),
        .I1(Op2[24]),
        .O(Res[24]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[25]_INST_0 
       (.I0(Op1[25]),
        .I1(Op2[25]),
        .O(Res[25]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[26]_INST_0 
       (.I0(Op1[26]),
        .I1(Op2[26]),
        .O(Res[26]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[27]_INST_0 
       (.I0(Op1[27]),
        .I1(Op2[27]),
        .O(Res[27]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[28]_INST_0 
       (.I0(Op1[28]),
        .I1(Op2[28]),
        .O(Res[28]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[29]_INST_0 
       (.I0(Op1[29]),
        .I1(Op2[29]),
        .O(Res[29]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[2]_INST_0 
       (.I0(Op1[2]),
        .I1(Op2[2]),
        .O(Res[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[30]_INST_0 
       (.I0(Op1[30]),
        .I1(Op2[30]),
        .O(Res[30]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[31]_INST_0 
       (.I0(Op1[31]),
        .I1(Op2[31]),
        .O(Res[31]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[32]_INST_0 
       (.I0(Op1[32]),
        .I1(Op2[32]),
        .O(Res[32]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[33]_INST_0 
       (.I0(Op1[33]),
        .I1(Op2[33]),
        .O(Res[33]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[34]_INST_0 
       (.I0(Op1[34]),
        .I1(Op2[34]),
        .O(Res[34]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[35]_INST_0 
       (.I0(Op1[35]),
        .I1(Op2[35]),
        .O(Res[35]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[36]_INST_0 
       (.I0(Op1[36]),
        .I1(Op2[36]),
        .O(Res[36]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[37]_INST_0 
       (.I0(Op1[37]),
        .I1(Op2[37]),
        .O(Res[37]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[38]_INST_0 
       (.I0(Op1[38]),
        .I1(Op2[38]),
        .O(Res[38]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[39]_INST_0 
       (.I0(Op1[39]),
        .I1(Op2[39]),
        .O(Res[39]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[3]_INST_0 
       (.I0(Op1[3]),
        .I1(Op2[3]),
        .O(Res[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[40]_INST_0 
       (.I0(Op1[40]),
        .I1(Op2[40]),
        .O(Res[40]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[41]_INST_0 
       (.I0(Op1[41]),
        .I1(Op2[41]),
        .O(Res[41]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[42]_INST_0 
       (.I0(Op1[42]),
        .I1(Op2[42]),
        .O(Res[42]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[43]_INST_0 
       (.I0(Op1[43]),
        .I1(Op2[43]),
        .O(Res[43]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[44]_INST_0 
       (.I0(Op1[44]),
        .I1(Op2[44]),
        .O(Res[44]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[45]_INST_0 
       (.I0(Op1[45]),
        .I1(Op2[45]),
        .O(Res[45]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[46]_INST_0 
       (.I0(Op1[46]),
        .I1(Op2[46]),
        .O(Res[46]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[47]_INST_0 
       (.I0(Op1[47]),
        .I1(Op2[47]),
        .O(Res[47]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[48]_INST_0 
       (.I0(Op1[48]),
        .I1(Op2[48]),
        .O(Res[48]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[49]_INST_0 
       (.I0(Op1[49]),
        .I1(Op2[49]),
        .O(Res[49]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[4]_INST_0 
       (.I0(Op1[4]),
        .I1(Op2[4]),
        .O(Res[4]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[50]_INST_0 
       (.I0(Op1[50]),
        .I1(Op2[50]),
        .O(Res[50]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[51]_INST_0 
       (.I0(Op1[51]),
        .I1(Op2[51]),
        .O(Res[51]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[52]_INST_0 
       (.I0(Op1[52]),
        .I1(Op2[52]),
        .O(Res[52]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[53]_INST_0 
       (.I0(Op1[53]),
        .I1(Op2[53]),
        .O(Res[53]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[54]_INST_0 
       (.I0(Op1[54]),
        .I1(Op2[54]),
        .O(Res[54]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[55]_INST_0 
       (.I0(Op1[55]),
        .I1(Op2[55]),
        .O(Res[55]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[56]_INST_0 
       (.I0(Op1[56]),
        .I1(Op2[56]),
        .O(Res[56]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[57]_INST_0 
       (.I0(Op1[57]),
        .I1(Op2[57]),
        .O(Res[57]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[58]_INST_0 
       (.I0(Op1[58]),
        .I1(Op2[58]),
        .O(Res[58]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[59]_INST_0 
       (.I0(Op1[59]),
        .I1(Op2[59]),
        .O(Res[59]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[5]_INST_0 
       (.I0(Op1[5]),
        .I1(Op2[5]),
        .O(Res[5]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[60]_INST_0 
       (.I0(Op1[60]),
        .I1(Op2[60]),
        .O(Res[60]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[61]_INST_0 
       (.I0(Op1[61]),
        .I1(Op2[61]),
        .O(Res[61]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[62]_INST_0 
       (.I0(Op1[62]),
        .I1(Op2[62]),
        .O(Res[62]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[63]_INST_0 
       (.I0(Op1[63]),
        .I1(Op2[63]),
        .O(Res[63]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[64]_INST_0 
       (.I0(Op1[64]),
        .I1(Op2[64]),
        .O(Res[64]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[65]_INST_0 
       (.I0(Op1[65]),
        .I1(Op2[65]),
        .O(Res[65]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[66]_INST_0 
       (.I0(Op1[66]),
        .I1(Op2[66]),
        .O(Res[66]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[67]_INST_0 
       (.I0(Op1[67]),
        .I1(Op2[67]),
        .O(Res[67]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[68]_INST_0 
       (.I0(Op1[68]),
        .I1(Op2[68]),
        .O(Res[68]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[69]_INST_0 
       (.I0(Op1[69]),
        .I1(Op2[69]),
        .O(Res[69]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[6]_INST_0 
       (.I0(Op1[6]),
        .I1(Op2[6]),
        .O(Res[6]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[70]_INST_0 
       (.I0(Op1[70]),
        .I1(Op2[70]),
        .O(Res[70]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[71]_INST_0 
       (.I0(Op1[71]),
        .I1(Op2[71]),
        .O(Res[71]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[72]_INST_0 
       (.I0(Op1[72]),
        .I1(Op2[72]),
        .O(Res[72]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[73]_INST_0 
       (.I0(Op1[73]),
        .I1(Op2[73]),
        .O(Res[73]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[74]_INST_0 
       (.I0(Op1[74]),
        .I1(Op2[74]),
        .O(Res[74]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[75]_INST_0 
       (.I0(Op1[75]),
        .I1(Op2[75]),
        .O(Res[75]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[76]_INST_0 
       (.I0(Op1[76]),
        .I1(Op2[76]),
        .O(Res[76]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[77]_INST_0 
       (.I0(Op1[77]),
        .I1(Op2[77]),
        .O(Res[77]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[78]_INST_0 
       (.I0(Op1[78]),
        .I1(Op2[78]),
        .O(Res[78]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[79]_INST_0 
       (.I0(Op1[79]),
        .I1(Op2[79]),
        .O(Res[79]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[7]_INST_0 
       (.I0(Op1[7]),
        .I1(Op2[7]),
        .O(Res[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[80]_INST_0 
       (.I0(Op1[80]),
        .I1(Op2[80]),
        .O(Res[80]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[81]_INST_0 
       (.I0(Op1[81]),
        .I1(Op2[81]),
        .O(Res[81]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[82]_INST_0 
       (.I0(Op1[82]),
        .I1(Op2[82]),
        .O(Res[82]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[83]_INST_0 
       (.I0(Op1[83]),
        .I1(Op2[83]),
        .O(Res[83]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[84]_INST_0 
       (.I0(Op1[84]),
        .I1(Op2[84]),
        .O(Res[84]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[85]_INST_0 
       (.I0(Op1[85]),
        .I1(Op2[85]),
        .O(Res[85]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[86]_INST_0 
       (.I0(Op1[86]),
        .I1(Op2[86]),
        .O(Res[86]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[87]_INST_0 
       (.I0(Op1[87]),
        .I1(Op2[87]),
        .O(Res[87]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[88]_INST_0 
       (.I0(Op1[88]),
        .I1(Op2[88]),
        .O(Res[88]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[89]_INST_0 
       (.I0(Op1[89]),
        .I1(Op2[89]),
        .O(Res[89]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[8]_INST_0 
       (.I0(Op1[8]),
        .I1(Op2[8]),
        .O(Res[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[90]_INST_0 
       (.I0(Op1[90]),
        .I1(Op2[90]),
        .O(Res[90]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[91]_INST_0 
       (.I0(Op1[91]),
        .I1(Op2[91]),
        .O(Res[91]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[92]_INST_0 
       (.I0(Op1[92]),
        .I1(Op2[92]),
        .O(Res[92]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[93]_INST_0 
       (.I0(Op1[93]),
        .I1(Op2[93]),
        .O(Res[93]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[94]_INST_0 
       (.I0(Op1[94]),
        .I1(Op2[94]),
        .O(Res[94]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[95]_INST_0 
       (.I0(Op1[95]),
        .I1(Op2[95]),
        .O(Res[95]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[96]_INST_0 
       (.I0(Op1[96]),
        .I1(Op2[96]),
        .O(Res[96]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[97]_INST_0 
       (.I0(Op1[97]),
        .I1(Op2[97]),
        .O(Res[97]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[98]_INST_0 
       (.I0(Op1[98]),
        .I1(Op2[98]),
        .O(Res[98]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[99]_INST_0 
       (.I0(Op1[99]),
        .I1(Op2[99]),
        .O(Res[99]));
  LUT2 #(
    .INIT(4'hE)) 
    \Res[9]_INST_0 
       (.I0(Op1[9]),
        .I1(Op2[9]),
        .O(Res[9]));
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
