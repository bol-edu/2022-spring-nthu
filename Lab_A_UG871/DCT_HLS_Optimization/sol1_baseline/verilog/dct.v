// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="dct,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flgb2104-1-e,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.143000,HLS_SYN_LAT=2935,HLS_SYN_TPT=none,HLS_SYN_MEM=5,HLS_SYN_DSP=1,HLS_SYN_FF=246,HLS_SYN_LUT=964}" *)

module dct (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] input_r_address0;
output   input_r_ce0;
input  [15:0] input_r_q0;
output  [5:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [15:0] output_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_r_ce0;
reg output_r_ce0;
reg output_r_we0;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] r_fu_162_p2;
reg   [3:0] r_reg_309;
wire    ap_CS_fsm_state2;
wire   [5:0] tmp_i_fu_172_p3;
reg   [5:0] tmp_i_reg_314;
wire   [0:0] exitcond1_i_fu_156_p2;
wire   [7:0] tmp_33_cast_fu_188_p1;
reg   [7:0] tmp_33_cast_reg_319;
wire   [3:0] c_fu_202_p2;
reg   [3:0] c_reg_327;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond_i_fu_196_p2;
wire   [7:0] tmp_22_fu_222_p2;
reg   [7:0] tmp_22_reg_337;
wire   [3:0] r_1_fu_237_p2;
reg   [3:0] r_1_reg_345;
wire    ap_CS_fsm_state6;
wire   [7:0] tmp_35_cast_fu_251_p1;
reg   [7:0] tmp_35_cast_reg_350;
wire   [0:0] exitcond1_i3_fu_231_p2;
wire   [5:0] tmp_1_i5_fu_259_p3;
reg   [5:0] tmp_1_i5_reg_355;
wire   [3:0] c_1_fu_277_p2;
reg   [3:0] c_1_reg_363;
wire    ap_CS_fsm_state7;
wire   [0:0] exitcond_i7_fu_271_p2;
wire   [5:0] tmp_4_i_fu_297_p2;
reg   [5:0] tmp_4_i_reg_373;
reg   [5:0] buf_2d_in_address0;
reg    buf_2d_in_ce0;
reg    buf_2d_in_we0;
wire   [15:0] buf_2d_in_q0;
reg   [5:0] buf_2d_out_address0;
reg    buf_2d_out_ce0;
reg    buf_2d_out_we0;
wire   [15:0] buf_2d_out_q0;
wire    grp_dct_2d_fu_148_ap_start;
wire    grp_dct_2d_fu_148_ap_done;
wire    grp_dct_2d_fu_148_ap_idle;
wire    grp_dct_2d_fu_148_ap_ready;
wire   [5:0] grp_dct_2d_fu_148_in_block_address0;
wire    grp_dct_2d_fu_148_in_block_ce0;
wire   [5:0] grp_dct_2d_fu_148_out_block_address0;
wire    grp_dct_2d_fu_148_out_block_ce0;
wire    grp_dct_2d_fu_148_out_block_we0;
wire   [15:0] grp_dct_2d_fu_148_out_block_d0;
reg   [3:0] r_i_reg_104;
reg   [3:0] c_i_reg_115;
wire    ap_CS_fsm_state4;
reg   [3:0] r_i2_reg_126;
wire    ap_CS_fsm_state5;
reg   [3:0] c_i6_reg_137;
wire    ap_CS_fsm_state8;
reg    ap_reg_grp_dct_2d_fu_148_ap_start;
wire   [63:0] tmp_i_15_fu_213_p1;
wire   [63:0] tmp_37_cast_fu_227_p1;
wire   [63:0] tmp_38_cast_fu_292_p1;
wire   [63:0] tmp_5_i_fu_302_p1;
wire   [2:0] tmp_fu_168_p1;
wire   [6:0] tmp_s_fu_180_p3;
wire   [5:0] c_i_cast6_fu_192_p1;
wire   [5:0] tmp_9_i_fu_208_p2;
wire   [7:0] tmp_1_i_cast_fu_218_p1;
wire   [6:0] tmp_21_fu_243_p3;
wire   [2:0] tmp_3_fu_255_p1;
wire   [7:0] tmp_3_i8_cast_fu_283_p1;
wire   [7:0] tmp_23_fu_287_p2;
wire   [5:0] c_i6_cast2_fu_267_p1;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_reg_grp_dct_2d_fu_148_ap_start = 1'b0;
end

dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
buf_2d_in_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_2d_in_address0),
    .ce0(buf_2d_in_ce0),
    .we0(buf_2d_in_we0),
    .d0(input_r_q0),
    .q0(buf_2d_in_q0)
);

dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
buf_2d_out_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_2d_out_address0),
    .ce0(buf_2d_out_ce0),
    .we0(buf_2d_out_we0),
    .d0(grp_dct_2d_fu_148_out_block_d0),
    .q0(buf_2d_out_q0)
);

dct_2d grp_dct_2d_fu_148(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dct_2d_fu_148_ap_start),
    .ap_done(grp_dct_2d_fu_148_ap_done),
    .ap_idle(grp_dct_2d_fu_148_ap_idle),
    .ap_ready(grp_dct_2d_fu_148_ap_ready),
    .in_block_address0(grp_dct_2d_fu_148_in_block_address0),
    .in_block_ce0(grp_dct_2d_fu_148_in_block_ce0),
    .in_block_q0(buf_2d_in_q0),
    .out_block_address0(grp_dct_2d_fu_148_out_block_address0),
    .out_block_ce0(grp_dct_2d_fu_148_out_block_ce0),
    .out_block_we0(grp_dct_2d_fu_148_out_block_we0),
    .out_block_d0(grp_dct_2d_fu_148_out_block_d0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_dct_2d_fu_148_ap_start <= 1'b0;
    end else begin
        if (((exitcond1_i_fu_156_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_reg_grp_dct_2d_fu_148_ap_start <= 1'b1;
        end else if ((grp_dct_2d_fu_148_ap_ready == 1'b1)) begin
            ap_reg_grp_dct_2d_fu_148_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c_i6_reg_137 <= c_1_reg_363;
    end else if (((exitcond1_i3_fu_231_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        c_i6_reg_137 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c_i_reg_115 <= c_reg_327;
    end else if (((exitcond1_i_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        c_i_reg_115 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i7_fu_271_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        r_i2_reg_126 <= r_1_reg_345;
    end else if (((1'b1 == ap_CS_fsm_state5) & (grp_dct_2d_fu_148_ap_done == 1'b1))) begin
        r_i2_reg_126 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_fu_196_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        r_i_reg_104 <= r_reg_309;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        r_i_reg_104 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        c_1_reg_363 <= c_1_fu_277_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        c_reg_327 <= c_fu_202_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        r_1_reg_345 <= r_1_fu_237_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        r_reg_309 <= r_fu_162_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_i3_fu_231_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        tmp_1_i5_reg_355[5 : 3] <= tmp_1_i5_fu_259_p3[5 : 3];
        tmp_35_cast_reg_350[6 : 3] <= tmp_35_cast_fu_251_p1[6 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_fu_196_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_22_reg_337 <= tmp_22_fu_222_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_i_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_33_cast_reg_319[6 : 3] <= tmp_33_cast_fu_188_p1[6 : 3];
        tmp_i_reg_314[5 : 3] <= tmp_i_fu_172_p3[5 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i7_fu_271_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        tmp_4_i_reg_373 <= tmp_4_i_fu_297_p2;
    end
end

always @ (*) begin
    if (((exitcond1_i3_fu_231_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond1_i3_fu_231_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_2d_in_address0 = tmp_37_cast_fu_227_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2d_in_address0 = grp_dct_2d_fu_148_in_block_address0;
    end else begin
        buf_2d_in_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_2d_in_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2d_in_ce0 = grp_dct_2d_fu_148_in_block_ce0;
    end else begin
        buf_2d_in_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_2d_in_we0 = 1'b1;
    end else begin
        buf_2d_in_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buf_2d_out_address0 = tmp_38_cast_fu_292_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2d_out_address0 = grp_dct_2d_fu_148_out_block_address0;
    end else begin
        buf_2d_out_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buf_2d_out_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2d_out_ce0 = grp_dct_2d_fu_148_out_block_ce0;
    end else begin
        buf_2d_out_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2d_out_we0 = grp_dct_2d_fu_148_out_block_we0;
    end else begin
        buf_2d_out_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond1_i_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond_i_fu_196_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (grp_dct_2d_fu_148_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((exitcond1_i3_fu_231_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((exitcond_i7_fu_271_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign c_1_fu_277_p2 = (c_i6_reg_137 + 4'd1);

assign c_fu_202_p2 = (c_i_reg_115 + 4'd1);

assign c_i6_cast2_fu_267_p1 = c_i6_reg_137;

assign c_i_cast6_fu_192_p1 = c_i_reg_115;

assign exitcond1_i3_fu_231_p2 = ((r_i2_reg_126 == 4'd8) ? 1'b1 : 1'b0);

assign exitcond1_i_fu_156_p2 = ((r_i_reg_104 == 4'd8) ? 1'b1 : 1'b0);

assign exitcond_i7_fu_271_p2 = ((c_i6_reg_137 == 4'd8) ? 1'b1 : 1'b0);

assign exitcond_i_fu_196_p2 = ((c_i_reg_115 == 4'd8) ? 1'b1 : 1'b0);

assign grp_dct_2d_fu_148_ap_start = ap_reg_grp_dct_2d_fu_148_ap_start;

assign input_r_address0 = tmp_i_15_fu_213_p1;

assign output_r_address0 = tmp_5_i_fu_302_p1;

assign output_r_d0 = buf_2d_out_q0;

assign r_1_fu_237_p2 = (r_i2_reg_126 + 4'd1);

assign r_fu_162_p2 = (r_i_reg_104 + 4'd1);

assign tmp_1_i5_fu_259_p3 = {{tmp_3_fu_255_p1}, {3'd0}};

assign tmp_1_i_cast_fu_218_p1 = c_i_reg_115;

assign tmp_21_fu_243_p3 = {{r_i2_reg_126}, {3'd0}};

assign tmp_22_fu_222_p2 = (tmp_33_cast_reg_319 + tmp_1_i_cast_fu_218_p1);

assign tmp_23_fu_287_p2 = (tmp_35_cast_reg_350 + tmp_3_i8_cast_fu_283_p1);

assign tmp_33_cast_fu_188_p1 = tmp_s_fu_180_p3;

assign tmp_35_cast_fu_251_p1 = tmp_21_fu_243_p3;

assign tmp_37_cast_fu_227_p1 = tmp_22_reg_337;

assign tmp_38_cast_fu_292_p1 = tmp_23_fu_287_p2;

assign tmp_3_fu_255_p1 = r_i2_reg_126[2:0];

assign tmp_3_i8_cast_fu_283_p1 = c_i6_reg_137;

assign tmp_4_i_fu_297_p2 = (c_i6_cast2_fu_267_p1 + tmp_1_i5_reg_355);

assign tmp_5_i_fu_302_p1 = tmp_4_i_reg_373;

assign tmp_9_i_fu_208_p2 = (c_i_cast6_fu_192_p1 + tmp_i_reg_314);

assign tmp_fu_168_p1 = r_i_reg_104[2:0];

assign tmp_i_15_fu_213_p1 = tmp_9_i_fu_208_p2;

assign tmp_i_fu_172_p3 = {{tmp_fu_168_p1}, {3'd0}};

assign tmp_s_fu_180_p3 = {{r_i_reg_104}, {3'd0}};

always @ (posedge ap_clk) begin
    tmp_i_reg_314[2:0] <= 3'b000;
    tmp_33_cast_reg_319[2:0] <= 3'b000;
    tmp_33_cast_reg_319[7] <= 1'b0;
    tmp_35_cast_reg_350[2:0] <= 3'b000;
    tmp_35_cast_reg_350[7] <= 1'b0;
    tmp_1_i5_reg_355[2:0] <= 3'b000;
end

endmodule //dct
