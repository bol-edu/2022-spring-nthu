// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module TOP_aes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        pArray_address0,
        pArray_ce0,
        pArray_we0,
        pArray_d0,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        p_read6,
        p_read7,
        p_read8,
        p_read9,
        p_read10,
        p_read11,
        p_read12,
        p_read13,
        p_read14,
        p_read15
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] pArray_address0;
output   pArray_ce0;
output   pArray_we0;
output  [31:0] pArray_d0;
input  [7:0] p_read;
input  [7:0] p_read1;
input  [7:0] p_read2;
input  [7:0] p_read3;
input  [7:0] p_read4;
input  [7:0] p_read5;
input  [7:0] p_read6;
input  [7:0] p_read7;
input  [7:0] p_read8;
input  [7:0] p_read9;
input  [7:0] p_read10;
input  [7:0] p_read11;
input  [7:0] p_read12;
input  [7:0] p_read13;
input  [7:0] p_read14;
input  [7:0] p_read15;

reg ap_idle;
reg pArray_ce0;
reg pArray_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln71_fu_235_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln73_fu_331_p1;
reg   [2:0] j_fu_78;
wire   [2:0] add_ln72_fu_385_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_j_load;
reg   [4:0] k_2_fu_82;
wire   [4:0] add_ln74_fu_379_p2;
reg   [4:0] ap_sig_allocacmp_k_2_load;
reg   [2:0] i_fu_86;
wire   [2:0] select_ln71_5_fu_293_p3;
reg   [2:0] ap_sig_allocacmp_i_load;
reg   [4:0] k_fu_90;
wire   [4:0] select_ln71_6_fu_305_p3;
reg   [4:0] ap_sig_allocacmp_k_load;
reg   [4:0] indvar_flatten_fu_94;
wire   [4:0] add_ln71_3_fu_241_p2;
reg   [4:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [0:0] icmp_ln72_fu_271_p2;
wire   [4:0] add_ln71_2_fu_265_p2;
wire   [2:0] add_ln71_fu_259_p2;
wire   [2:0] select_ln71_4_fu_285_p3;
wire   [1:0] trunc_ln73_fu_313_p1;
wire   [3:0] tmp_143_cast_fu_317_p3;
wire   [3:0] select_ln71_5_cast_fu_301_p1;
wire   [3:0] add_ln73_fu_325_p2;
wire   [4:0] select_ln71_fu_277_p3;
wire   [7:0] result_fu_336_p18;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end

TOP_mux_165_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .din10_WIDTH( 8 ),
    .din11_WIDTH( 8 ),
    .din12_WIDTH( 8 ),
    .din13_WIDTH( 8 ),
    .din14_WIDTH( 8 ),
    .din15_WIDTH( 8 ),
    .din16_WIDTH( 5 ),
    .dout_WIDTH( 8 ))
mux_165_8_1_1_U10(
    .din0(p_read),
    .din1(p_read1),
    .din2(p_read2),
    .din3(p_read3),
    .din4(p_read4),
    .din5(p_read5),
    .din6(p_read6),
    .din7(p_read7),
    .din8(p_read8),
    .din9(p_read9),
    .din10(p_read10),
    .din11(p_read11),
    .din12(p_read12),
    .din13(p_read13),
    .din14(p_read14),
    .din15(p_read15),
    .din16(select_ln71_fu_277_p3),
    .dout(result_fu_336_p18)
);

TOP_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln71_fu_235_p2 == 1'd0)) begin
            i_fu_86 <= select_ln71_5_fu_293_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_86 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln71_fu_235_p2 == 1'd0)) begin
            indvar_flatten_fu_94 <= add_ln71_3_fu_241_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_94 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln71_fu_235_p2 == 1'd0)) begin
            j_fu_78 <= add_ln72_fu_385_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_78 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln71_fu_235_p2 == 1'd0)) begin
            k_2_fu_82 <= add_ln74_fu_379_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            k_2_fu_82 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln71_fu_235_p2 == 1'd0)) begin
            k_fu_90 <= select_ln71_6_fu_305_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            k_fu_90 <= 5'd0;
        end
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln71_fu_235_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_load = 3'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_86;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_94;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_j_load = 3'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_78;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_k_2_load = 5'd0;
    end else begin
        ap_sig_allocacmp_k_2_load = k_2_fu_82;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_k_load = 5'd0;
    end else begin
        ap_sig_allocacmp_k_load = k_fu_90;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        pArray_ce0 = 1'b1;
    end else begin
        pArray_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln71_fu_235_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        pArray_we0 = 1'b1;
    end else begin
        pArray_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln71_2_fu_265_p2 = (ap_sig_allocacmp_k_load + 5'd4);

assign add_ln71_3_fu_241_p2 = (ap_sig_allocacmp_indvar_flatten_load + 5'd1);

assign add_ln71_fu_259_p2 = (ap_sig_allocacmp_i_load + 3'd1);

assign add_ln72_fu_385_p2 = (select_ln71_4_fu_285_p3 + 3'd1);

assign add_ln73_fu_325_p2 = (tmp_143_cast_fu_317_p3 + select_ln71_5_cast_fu_301_p1);

assign add_ln74_fu_379_p2 = (select_ln71_fu_277_p3 + 5'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln71_fu_235_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln72_fu_271_p2 = ((ap_sig_allocacmp_j_load == 3'd4) ? 1'b1 : 1'b0);

assign pArray_address0 = zext_ln73_fu_331_p1;

assign pArray_d0 = result_fu_336_p18;

assign select_ln71_4_fu_285_p3 = ((icmp_ln72_fu_271_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_j_load);

assign select_ln71_5_cast_fu_301_p1 = select_ln71_5_fu_293_p3;

assign select_ln71_5_fu_293_p3 = ((icmp_ln72_fu_271_p2[0:0] == 1'b1) ? add_ln71_fu_259_p2 : ap_sig_allocacmp_i_load);

assign select_ln71_6_fu_305_p3 = ((icmp_ln72_fu_271_p2[0:0] == 1'b1) ? add_ln71_2_fu_265_p2 : ap_sig_allocacmp_k_load);

assign select_ln71_fu_277_p3 = ((icmp_ln72_fu_271_p2[0:0] == 1'b1) ? add_ln71_2_fu_265_p2 : ap_sig_allocacmp_k_2_load);

assign tmp_143_cast_fu_317_p3 = {{trunc_ln73_fu_313_p1}, {2'd0}};

assign trunc_ln73_fu_313_p1 = select_ln71_4_fu_285_p3[1:0];

assign zext_ln73_fu_331_p1 = add_ln73_fu_325_p2;

endmodule //TOP_aes_return_Pipeline_convertToIntArray_label0_convertToIntArray_label1
