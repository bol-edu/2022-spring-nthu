`timescale 1 ns / 1 ps

module AESL_deadlock_detector (
    input dl_reset,
    input all_finish,
    input dl_clock);

    wire [2:0] proc_0_data_FIFO_blk;
    wire [2:0] proc_0_data_PIPO_blk;
    wire [2:0] proc_0_start_FIFO_blk;
    wire [2:0] proc_0_TLF_FIFO_blk;
    wire [2:0] proc_0_input_sync_blk;
    wire [2:0] proc_0_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_0;
    reg [2:0] proc_dep_vld_vec_0_reg;
    wire [2:0] in_chan_dep_vld_vec_0;
    wire [38:0] in_chan_dep_data_vec_0;
    wire [2:0] token_in_vec_0;
    wire [2:0] out_chan_dep_vld_vec_0;
    wire [12:0] out_chan_dep_data_0;
    wire [2:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [12:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_3_0;
    wire [12:0] dep_chan_data_3_0;
    wire token_3_0;
    wire dep_chan_vld_8_0;
    wire [12:0] dep_chan_data_8_0;
    wire token_8_0;
    wire [2:0] proc_1_data_FIFO_blk;
    wire [2:0] proc_1_data_PIPO_blk;
    wire [2:0] proc_1_start_FIFO_blk;
    wire [2:0] proc_1_TLF_FIFO_blk;
    wire [2:0] proc_1_input_sync_blk;
    wire [2:0] proc_1_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_1;
    reg [2:0] proc_dep_vld_vec_1_reg;
    wire [2:0] in_chan_dep_vld_vec_1;
    wire [38:0] in_chan_dep_data_vec_1;
    wire [2:0] token_in_vec_1;
    wire [2:0] out_chan_dep_vld_vec_1;
    wire [12:0] out_chan_dep_data_1;
    wire [2:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [12:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_2_1;
    wire [12:0] dep_chan_data_2_1;
    wire token_2_1;
    wire dep_chan_vld_3_1;
    wire [12:0] dep_chan_data_3_1;
    wire token_3_1;
    wire [1:0] proc_2_data_FIFO_blk;
    wire [1:0] proc_2_data_PIPO_blk;
    wire [1:0] proc_2_start_FIFO_blk;
    wire [1:0] proc_2_TLF_FIFO_blk;
    wire [1:0] proc_2_input_sync_blk;
    wire [1:0] proc_2_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_2;
    reg [1:0] proc_dep_vld_vec_2_reg;
    wire [1:0] in_chan_dep_vld_vec_2;
    wire [25:0] in_chan_dep_data_vec_2;
    wire [1:0] token_in_vec_2;
    wire [1:0] out_chan_dep_vld_vec_2;
    wire [12:0] out_chan_dep_data_2;
    wire [1:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_1_2;
    wire [12:0] dep_chan_data_1_2;
    wire token_1_2;
    wire dep_chan_vld_7_2;
    wire [12:0] dep_chan_data_7_2;
    wire token_7_2;
    wire [3:0] proc_3_data_FIFO_blk;
    wire [3:0] proc_3_data_PIPO_blk;
    wire [3:0] proc_3_start_FIFO_blk;
    wire [3:0] proc_3_TLF_FIFO_blk;
    wire [3:0] proc_3_input_sync_blk;
    wire [3:0] proc_3_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_3;
    reg [3:0] proc_dep_vld_vec_3_reg;
    wire [3:0] in_chan_dep_vld_vec_3;
    wire [51:0] in_chan_dep_data_vec_3;
    wire [3:0] token_in_vec_3;
    wire [3:0] out_chan_dep_vld_vec_3;
    wire [12:0] out_chan_dep_data_3;
    wire [3:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_0_3;
    wire [12:0] dep_chan_data_0_3;
    wire token_0_3;
    wire dep_chan_vld_1_3;
    wire [12:0] dep_chan_data_1_3;
    wire token_1_3;
    wire dep_chan_vld_4_3;
    wire [12:0] dep_chan_data_4_3;
    wire token_4_3;
    wire dep_chan_vld_5_3;
    wire [12:0] dep_chan_data_5_3;
    wire token_5_3;
    wire [2:0] proc_4_data_FIFO_blk;
    wire [2:0] proc_4_data_PIPO_blk;
    wire [2:0] proc_4_start_FIFO_blk;
    wire [2:0] proc_4_TLF_FIFO_blk;
    wire [2:0] proc_4_input_sync_blk;
    wire [2:0] proc_4_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_4;
    reg [2:0] proc_dep_vld_vec_4_reg;
    wire [2:0] in_chan_dep_vld_vec_4;
    wire [38:0] in_chan_dep_data_vec_4;
    wire [2:0] token_in_vec_4;
    wire [2:0] out_chan_dep_vld_vec_4;
    wire [12:0] out_chan_dep_data_4;
    wire [2:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_3_4;
    wire [12:0] dep_chan_data_3_4;
    wire token_3_4;
    wire dep_chan_vld_6_4;
    wire [12:0] dep_chan_data_6_4;
    wire token_6_4;
    wire dep_chan_vld_7_4;
    wire [12:0] dep_chan_data_7_4;
    wire token_7_4;
    wire [2:0] proc_5_data_FIFO_blk;
    wire [2:0] proc_5_data_PIPO_blk;
    wire [2:0] proc_5_start_FIFO_blk;
    wire [2:0] proc_5_TLF_FIFO_blk;
    wire [2:0] proc_5_input_sync_blk;
    wire [2:0] proc_5_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_5;
    reg [2:0] proc_dep_vld_vec_5_reg;
    wire [2:0] in_chan_dep_vld_vec_5;
    wire [38:0] in_chan_dep_data_vec_5;
    wire [2:0] token_in_vec_5;
    wire [2:0] out_chan_dep_vld_vec_5;
    wire [12:0] out_chan_dep_data_5;
    wire [2:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_3_5;
    wire [12:0] dep_chan_data_3_5;
    wire token_3_5;
    wire dep_chan_vld_6_5;
    wire [12:0] dep_chan_data_6_5;
    wire token_6_5;
    wire dep_chan_vld_7_5;
    wire [12:0] dep_chan_data_7_5;
    wire token_7_5;
    wire [3:0] proc_6_data_FIFO_blk;
    wire [3:0] proc_6_data_PIPO_blk;
    wire [3:0] proc_6_start_FIFO_blk;
    wire [3:0] proc_6_TLF_FIFO_blk;
    wire [3:0] proc_6_input_sync_blk;
    wire [3:0] proc_6_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_6;
    reg [3:0] proc_dep_vld_vec_6_reg;
    wire [3:0] in_chan_dep_vld_vec_6;
    wire [51:0] in_chan_dep_data_vec_6;
    wire [3:0] token_in_vec_6;
    wire [3:0] out_chan_dep_vld_vec_6;
    wire [12:0] out_chan_dep_data_6;
    wire [3:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_4_6;
    wire [12:0] dep_chan_data_4_6;
    wire token_4_6;
    wire dep_chan_vld_5_6;
    wire [12:0] dep_chan_data_5_6;
    wire token_5_6;
    wire dep_chan_vld_9_6;
    wire [12:0] dep_chan_data_9_6;
    wire token_9_6;
    wire dep_chan_vld_10_6;
    wire [12:0] dep_chan_data_10_6;
    wire token_10_6;
    wire [3:0] proc_7_data_FIFO_blk;
    wire [3:0] proc_7_data_PIPO_blk;
    wire [3:0] proc_7_start_FIFO_blk;
    wire [3:0] proc_7_TLF_FIFO_blk;
    wire [3:0] proc_7_input_sync_blk;
    wire [3:0] proc_7_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_7;
    reg [3:0] proc_dep_vld_vec_7_reg;
    wire [3:0] in_chan_dep_vld_vec_7;
    wire [51:0] in_chan_dep_data_vec_7;
    wire [3:0] token_in_vec_7;
    wire [3:0] out_chan_dep_vld_vec_7;
    wire [12:0] out_chan_dep_data_7;
    wire [3:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_2_7;
    wire [12:0] dep_chan_data_2_7;
    wire token_2_7;
    wire dep_chan_vld_4_7;
    wire [12:0] dep_chan_data_4_7;
    wire token_4_7;
    wire dep_chan_vld_5_7;
    wire [12:0] dep_chan_data_5_7;
    wire token_5_7;
    wire dep_chan_vld_8_7;
    wire [12:0] dep_chan_data_8_7;
    wire token_8_7;
    wire [2:0] proc_8_data_FIFO_blk;
    wire [2:0] proc_8_data_PIPO_blk;
    wire [2:0] proc_8_start_FIFO_blk;
    wire [2:0] proc_8_TLF_FIFO_blk;
    wire [2:0] proc_8_input_sync_blk;
    wire [2:0] proc_8_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_8;
    reg [2:0] proc_dep_vld_vec_8_reg;
    wire [2:0] in_chan_dep_vld_vec_8;
    wire [38:0] in_chan_dep_data_vec_8;
    wire [2:0] token_in_vec_8;
    wire [2:0] out_chan_dep_vld_vec_8;
    wire [12:0] out_chan_dep_data_8;
    wire [2:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_0_8;
    wire [12:0] dep_chan_data_0_8;
    wire token_0_8;
    wire dep_chan_vld_7_8;
    wire [12:0] dep_chan_data_7_8;
    wire token_7_8;
    wire dep_chan_vld_9_8;
    wire [12:0] dep_chan_data_9_8;
    wire token_9_8;
    wire [2:0] proc_9_data_FIFO_blk;
    wire [2:0] proc_9_data_PIPO_blk;
    wire [2:0] proc_9_start_FIFO_blk;
    wire [2:0] proc_9_TLF_FIFO_blk;
    wire [2:0] proc_9_input_sync_blk;
    wire [2:0] proc_9_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_9;
    reg [2:0] proc_dep_vld_vec_9_reg;
    wire [2:0] in_chan_dep_vld_vec_9;
    wire [38:0] in_chan_dep_data_vec_9;
    wire [2:0] token_in_vec_9;
    wire [2:0] out_chan_dep_vld_vec_9;
    wire [12:0] out_chan_dep_data_9;
    wire [2:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_6_9;
    wire [12:0] dep_chan_data_6_9;
    wire token_6_9;
    wire dep_chan_vld_8_9;
    wire [12:0] dep_chan_data_8_9;
    wire token_8_9;
    wire dep_chan_vld_10_9;
    wire [12:0] dep_chan_data_10_9;
    wire token_10_9;
    wire [2:0] proc_10_data_FIFO_blk;
    wire [2:0] proc_10_data_PIPO_blk;
    wire [2:0] proc_10_start_FIFO_blk;
    wire [2:0] proc_10_TLF_FIFO_blk;
    wire [2:0] proc_10_input_sync_blk;
    wire [2:0] proc_10_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_10;
    reg [2:0] proc_dep_vld_vec_10_reg;
    wire [2:0] in_chan_dep_vld_vec_10;
    wire [38:0] in_chan_dep_data_vec_10;
    wire [2:0] token_in_vec_10;
    wire [2:0] out_chan_dep_vld_vec_10;
    wire [12:0] out_chan_dep_data_10;
    wire [2:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_6_10;
    wire [12:0] dep_chan_data_6_10;
    wire token_6_10;
    wire dep_chan_vld_9_10;
    wire [12:0] dep_chan_data_9_10;
    wire token_9_10;
    wire dep_chan_vld_11_10;
    wire [12:0] dep_chan_data_11_10;
    wire token_11_10;
    wire [1:0] proc_11_data_FIFO_blk;
    wire [1:0] proc_11_data_PIPO_blk;
    wire [1:0] proc_11_start_FIFO_blk;
    wire [1:0] proc_11_TLF_FIFO_blk;
    wire [1:0] proc_11_input_sync_blk;
    wire [1:0] proc_11_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_11;
    reg [1:0] proc_dep_vld_vec_11_reg;
    wire [1:0] in_chan_dep_vld_vec_11;
    wire [25:0] in_chan_dep_data_vec_11;
    wire [1:0] token_in_vec_11;
    wire [1:0] out_chan_dep_vld_vec_11;
    wire [12:0] out_chan_dep_data_11;
    wire [1:0] token_out_vec_11;
    wire dl_detect_out_11;
    wire dep_chan_vld_10_11;
    wire [12:0] dep_chan_data_10_11;
    wire token_10_11;
    wire dep_chan_vld_12_11;
    wire [12:0] dep_chan_data_12_11;
    wire token_12_11;
    wire [0:0] proc_12_data_FIFO_blk;
    wire [0:0] proc_12_data_PIPO_blk;
    wire [0:0] proc_12_start_FIFO_blk;
    wire [0:0] proc_12_TLF_FIFO_blk;
    wire [0:0] proc_12_input_sync_blk;
    wire [0:0] proc_12_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_12;
    reg [0:0] proc_dep_vld_vec_12_reg;
    wire [0:0] in_chan_dep_vld_vec_12;
    wire [12:0] in_chan_dep_data_vec_12;
    wire [0:0] token_in_vec_12;
    wire [0:0] out_chan_dep_vld_vec_12;
    wire [12:0] out_chan_dep_data_12;
    wire [0:0] token_out_vec_12;
    wire dl_detect_out_12;
    wire dep_chan_vld_11_12;
    wire [12:0] dep_chan_data_11_12;
    wire token_11_12;
    wire [12:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    wire [12:0] origin;

reg [15:0] trans_in_cnt_0;// for process AESL_inst_TOP.AES_En_De27_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_0 <= 16'h0;
    end
    else if (AESL_inst_TOP.AES_En_De27_U0.start_write == 1'b1) begin
        trans_in_cnt_0 <= trans_in_cnt_0 + 16'h1;
    end
    else begin
        trans_in_cnt_0 <= trans_in_cnt_0;
    end
end

reg [15:0] trans_out_cnt_0;// for process AESL_inst_TOP.AES_En_De27_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_0 <= 16'h0;
    end
    else if (AESL_inst_TOP.AES_En_De27_U0.ap_done == 1'b1 && AESL_inst_TOP.AES_En_De27_U0.ap_continue == 1'b1) begin
        trans_out_cnt_0 <= trans_out_cnt_0 + 16'h1;
    end
    else begin
        trans_out_cnt_0 <= trans_out_cnt_0;
    end
end

reg [15:0] trans_in_cnt_1;// for process AESL_inst_TOP.Rayleigh_1_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_1 <= 16'h0;
    end
    else if (AESL_inst_TOP.Rayleigh_1_U0.start_write == 1'b1) begin
        trans_in_cnt_1 <= trans_in_cnt_1 + 16'h1;
    end
    else begin
        trans_in_cnt_1 <= trans_in_cnt_1;
    end
end

reg [15:0] trans_out_cnt_1;// for process AESL_inst_TOP.Rayleigh_1_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_1 <= 16'h0;
    end
    else if (AESL_inst_TOP.Rayleigh_1_U0.ap_done == 1'b1 && AESL_inst_TOP.Rayleigh_1_U0.ap_continue == 1'b1) begin
        trans_out_cnt_1 <= trans_out_cnt_1 + 16'h1;
    end
    else begin
        trans_out_cnt_1 <= trans_out_cnt_1;
    end
end

reg [15:0] trans_in_cnt_2;// for process AESL_inst_TOP.split_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_2 <= 16'h0;
    end
    else if (AESL_inst_TOP.split_U0.start_write == 1'b1) begin
        trans_in_cnt_2 <= trans_in_cnt_2 + 16'h1;
    end
    else begin
        trans_in_cnt_2 <= trans_in_cnt_2;
    end
end

reg [15:0] trans_out_cnt_2;// for process AESL_inst_TOP.split_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_2 <= 16'h0;
    end
    else if (AESL_inst_TOP.split_U0.ap_done == 1'b1 && AESL_inst_TOP.split_U0.ap_continue == 1'b1) begin
        trans_out_cnt_2 <= trans_out_cnt_2 + 16'h1;
    end
    else begin
        trans_out_cnt_2 <= trans_out_cnt_2;
    end
end

reg [15:0] trans_in_cnt_3;// for process AESL_inst_TOP.Modulation_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_3 <= 16'h0;
    end
    else if (AESL_inst_TOP.Modulation_U0.start_write == 1'b1) begin
        trans_in_cnt_3 <= trans_in_cnt_3 + 16'h1;
    end
    else begin
        trans_in_cnt_3 <= trans_in_cnt_3;
    end
end

reg [15:0] trans_out_cnt_3;// for process AESL_inst_TOP.Modulation_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_3 <= 16'h0;
    end
    else if (AESL_inst_TOP.Modulation_U0.ap_done == 1'b1 && AESL_inst_TOP.Modulation_U0.ap_continue == 1'b1) begin
        trans_out_cnt_3 <= trans_out_cnt_3 + 16'h1;
    end
    else begin
        trans_out_cnt_3 <= trans_out_cnt_3;
    end
end

reg [15:0] trans_in_cnt_4;// for process AESL_inst_TOP.entry_proc_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_4 <= 16'h0;
    end
    else if (AESL_inst_TOP.entry_proc_U0.start_write == 1'b1) begin
        trans_in_cnt_4 <= trans_in_cnt_4 + 16'h1;
    end
    else begin
        trans_in_cnt_4 <= trans_in_cnt_4;
    end
end

reg [15:0] trans_out_cnt_4;// for process AESL_inst_TOP.entry_proc_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_4 <= 16'h0;
    end
    else if (AESL_inst_TOP.entry_proc_U0.ap_done == 1'b1 && AESL_inst_TOP.entry_proc_U0.ap_continue == 1'b1) begin
        trans_out_cnt_4 <= trans_out_cnt_4 + 16'h1;
    end
    else begin
        trans_out_cnt_4 <= trans_out_cnt_4;
    end
end

reg [15:0] trans_in_cnt_5;// for process AESL_inst_TOP.AWGN_1_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_5 <= 16'h0;
    end
    else if (AESL_inst_TOP.AWGN_1_U0.start_write == 1'b1) begin
        trans_in_cnt_5 <= trans_in_cnt_5 + 16'h1;
    end
    else begin
        trans_in_cnt_5 <= trans_in_cnt_5;
    end
end

reg [15:0] trans_out_cnt_5;// for process AESL_inst_TOP.AWGN_1_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_5 <= 16'h0;
    end
    else if (AESL_inst_TOP.AWGN_1_U0.ap_done == 1'b1 && AESL_inst_TOP.AWGN_1_U0.ap_continue == 1'b1) begin
        trans_out_cnt_5 <= trans_out_cnt_5 + 16'h1;
    end
    else begin
        trans_out_cnt_5 <= trans_out_cnt_5;
    end
end

reg [15:0] trans_in_cnt_6;// for process AESL_inst_TOP.QRD_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_6 <= 16'h0;
    end
    else if (AESL_inst_TOP.QRD_U0.start_write == 1'b1) begin
        trans_in_cnt_6 <= trans_in_cnt_6 + 16'h1;
    end
    else begin
        trans_in_cnt_6 <= trans_in_cnt_6;
    end
end

reg [15:0] trans_out_cnt_6;// for process AESL_inst_TOP.QRD_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_6 <= 16'h0;
    end
    else if (AESL_inst_TOP.QRD_U0.ap_done == 1'b1 && AESL_inst_TOP.QRD_U0.ap_continue == 1'b1) begin
        trans_out_cnt_6 <= trans_out_cnt_6 + 16'h1;
    end
    else begin
        trans_out_cnt_6 <= trans_out_cnt_6;
    end
end

reg [15:0] trans_in_cnt_7;// for process AESL_inst_TOP.KBEST_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_7 <= 16'h0;
    end
    else if (AESL_inst_TOP.KBEST_U0.start_write == 1'b1) begin
        trans_in_cnt_7 <= trans_in_cnt_7 + 16'h1;
    end
    else begin
        trans_in_cnt_7 <= trans_in_cnt_7;
    end
end

reg [15:0] trans_out_cnt_7;// for process AESL_inst_TOP.KBEST_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_7 <= 16'h0;
    end
    else if (AESL_inst_TOP.KBEST_U0.ap_done == 1'b1 && AESL_inst_TOP.KBEST_U0.ap_continue == 1'b1) begin
        trans_out_cnt_7 <= trans_out_cnt_7 + 16'h1;
    end
    else begin
        trans_out_cnt_7 <= trans_out_cnt_7;
    end
end

reg [15:0] trans_in_cnt_8;// for process AESL_inst_TOP.DeModulation_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_8 <= 16'h0;
    end
    else if (AESL_inst_TOP.DeModulation_U0.start_write == 1'b1) begin
        trans_in_cnt_8 <= trans_in_cnt_8 + 16'h1;
    end
    else begin
        trans_in_cnt_8 <= trans_in_cnt_8;
    end
end

reg [15:0] trans_out_cnt_8;// for process AESL_inst_TOP.DeModulation_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_8 <= 16'h0;
    end
    else if (AESL_inst_TOP.DeModulation_U0.ap_done == 1'b1 && AESL_inst_TOP.DeModulation_U0.ap_continue == 1'b1) begin
        trans_out_cnt_8 <= trans_out_cnt_8 + 16'h1;
    end
    else begin
        trans_out_cnt_8 <= trans_out_cnt_8;
    end
end

    // Process: AESL_inst_TOP.entry_proc_U0
    AESL_deadlock_detect_unit #(13, 0, 3, 3) AESL_deadlock_detect_unit_0 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.entry_proc_U0.SNR_c_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.start_for_AWGN_1_U0_U.if_full_n & AESL_inst_TOP.entry_proc_U0.ap_start & ~AESL_inst_TOP.entry_proc_U0.real_start & (trans_in_cnt_4 == trans_out_cnt_4) & ~AESL_inst_TOP.start_for_AWGN_1_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0;
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    assign proc_0_data_FIFO_blk[1] = 1'b0;
    assign proc_0_data_PIPO_blk[1] = 1'b0;
    assign proc_0_start_FIFO_blk[1] = 1'b0;
    assign proc_0_TLF_FIFO_blk[1] = 1'b0;
    assign proc_0_input_sync_blk[1] = 1'b0 | (AESL_inst_TOP.ap_sync_entry_proc_U0_ap_ready & AESL_inst_TOP.entry_proc_U0.ap_idle & ~AESL_inst_TOP.ap_sync_AES_En_De27_U0_ap_ready);
    assign proc_0_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (proc_0_data_FIFO_blk[1] | proc_0_data_PIPO_blk[1] | proc_0_start_FIFO_blk[1] | proc_0_TLF_FIFO_blk[1] | proc_0_input_sync_blk[1] | proc_0_output_sync_blk[1]);
    assign proc_0_data_FIFO_blk[2] = 1'b0;
    assign proc_0_data_PIPO_blk[2] = 1'b0;
    assign proc_0_start_FIFO_blk[2] = 1'b0;
    assign proc_0_TLF_FIFO_blk[2] = 1'b0;
    assign proc_0_input_sync_blk[2] = 1'b0 | (AESL_inst_TOP.ap_sync_entry_proc_U0_ap_ready & AESL_inst_TOP.entry_proc_U0.ap_idle & ~AESL_inst_TOP.ap_sync_Rayleigh_1_U0_ap_ready);
    assign proc_0_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_0[2] = dl_detect_out ? proc_dep_vld_vec_0_reg[2] : (proc_0_data_FIFO_blk[2] | proc_0_data_PIPO_blk[2] | proc_0_start_FIFO_blk[2] | proc_0_TLF_FIFO_blk[2] | proc_0_input_sync_blk[2] | proc_0_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[12 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_3_0;
    assign in_chan_dep_data_vec_0[25 : 13] = dep_chan_data_3_0;
    assign token_in_vec_0[1] = token_3_0;
    assign in_chan_dep_vld_vec_0[2] = dep_chan_vld_8_0;
    assign in_chan_dep_data_vec_0[38 : 26] = dep_chan_data_8_0;
    assign token_in_vec_0[2] = token_8_0;
    assign dep_chan_vld_0_8 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_8 = out_chan_dep_data_0;
    assign token_0_8 = token_out_vec_0[0];
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[1];
    assign dep_chan_vld_0_3 = out_chan_dep_vld_vec_0[2];
    assign dep_chan_data_0_3 = out_chan_dep_data_0;
    assign token_0_3 = token_out_vec_0[2];

    // Process: AESL_inst_TOP.AES_En_De27_U0
    AESL_deadlock_detect_unit #(13, 1, 3, 3) AESL_deadlock_detect_unit_1 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.AES_En_De27_U0.AES_EN_out_blk_n);
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.start_for_Modulation_U0_U.if_full_n & AESL_inst_TOP.AES_En_De27_U0.ap_start & ~AESL_inst_TOP.AES_En_De27_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~AESL_inst_TOP.start_for_Modulation_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0;
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0;
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0;
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0 | (AESL_inst_TOP.ap_sync_AES_En_De27_U0_ap_ready & AESL_inst_TOP.AES_En_De27_U0.ap_idle & ~AESL_inst_TOP.ap_sync_entry_proc_U0_ap_ready);
    assign proc_1_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    assign proc_1_data_FIFO_blk[2] = 1'b0;
    assign proc_1_data_PIPO_blk[2] = 1'b0;
    assign proc_1_start_FIFO_blk[2] = 1'b0;
    assign proc_1_TLF_FIFO_blk[2] = 1'b0;
    assign proc_1_input_sync_blk[2] = 1'b0 | (AESL_inst_TOP.ap_sync_AES_En_De27_U0_ap_ready & AESL_inst_TOP.AES_En_De27_U0.ap_idle & ~AESL_inst_TOP.ap_sync_Rayleigh_1_U0_ap_ready);
    assign proc_1_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_1[2] = dl_detect_out ? proc_dep_vld_vec_1_reg[2] : (proc_1_data_FIFO_blk[2] | proc_1_data_PIPO_blk[2] | proc_1_start_FIFO_blk[2] | proc_1_TLF_FIFO_blk[2] | proc_1_input_sync_blk[2] | proc_1_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[12 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_2_1;
    assign in_chan_dep_data_vec_1[25 : 13] = dep_chan_data_2_1;
    assign token_in_vec_1[1] = token_2_1;
    assign in_chan_dep_vld_vec_1[2] = dep_chan_vld_3_1;
    assign in_chan_dep_data_vec_1[38 : 26] = dep_chan_data_3_1;
    assign token_in_vec_1[2] = token_3_1;
    assign dep_chan_vld_1_2 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_2 = out_chan_dep_data_1;
    assign token_1_2 = token_out_vec_1[0];
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[1];
    assign dep_chan_vld_1_3 = out_chan_dep_vld_vec_1[2];
    assign dep_chan_data_1_3 = out_chan_dep_data_1;
    assign token_1_3 = token_out_vec_1[2];

    // Process: AESL_inst_TOP.Modulation_U0
    AESL_deadlock_detect_unit #(13, 2, 2, 2) AESL_deadlock_detect_unit_2 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.Modulation_U0.AES_EN_out_blk_n);
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.start_for_Modulation_U0_U.if_empty_n & AESL_inst_TOP.Modulation_U0.ap_idle & ~AESL_inst_TOP.start_for_Modulation_U0_U.if_write);
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0;
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_TOP.Modulation_U0.xi_blk_n) | (~AESL_inst_TOP.Modulation_U0.xr_blk_n);
    assign proc_2_data_PIPO_blk[1] = 1'b0;
    assign proc_2_start_FIFO_blk[1] = 1'b0 | (~AESL_inst_TOP.start_for_channel_mult_U0_U.if_full_n & AESL_inst_TOP.Modulation_U0.ap_start & ~AESL_inst_TOP.Modulation_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~AESL_inst_TOP.start_for_channel_mult_U0_U.if_read);
    assign proc_2_TLF_FIFO_blk[1] = 1'b0;
    assign proc_2_input_sync_blk[1] = 1'b0;
    assign proc_2_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_1_2;
    assign in_chan_dep_data_vec_2[12 : 0] = dep_chan_data_1_2;
    assign token_in_vec_2[0] = token_1_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_7_2;
    assign in_chan_dep_data_vec_2[25 : 13] = dep_chan_data_7_2;
    assign token_in_vec_2[1] = token_7_2;
    assign dep_chan_vld_2_1 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_1 = out_chan_dep_data_2;
    assign token_2_1 = token_out_vec_2[0];
    assign dep_chan_vld_2_7 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_7 = out_chan_dep_data_2;
    assign token_2_7 = token_out_vec_2[1];

    // Process: AESL_inst_TOP.Rayleigh_1_U0
    AESL_deadlock_detect_unit #(13, 3, 4, 4) AESL_deadlock_detect_unit_3 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.Rayleigh_1_U0.H_real_blk_n);
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.start_for_split_U0_U.if_full_n & AESL_inst_TOP.Rayleigh_1_U0.ap_start & ~AESL_inst_TOP.Rayleigh_1_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~AESL_inst_TOP.start_for_split_U0_U.if_read);
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    assign proc_3_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_TOP.Rayleigh_1_U0.H_imag_blk_n);
    assign proc_3_data_PIPO_blk[1] = 1'b0;
    assign proc_3_start_FIFO_blk[1] = 1'b0 | (~AESL_inst_TOP.start_for_split_1_U0_U.if_full_n & AESL_inst_TOP.Rayleigh_1_U0.ap_start & ~AESL_inst_TOP.Rayleigh_1_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~AESL_inst_TOP.start_for_split_1_U0_U.if_read);
    assign proc_3_TLF_FIFO_blk[1] = 1'b0;
    assign proc_3_input_sync_blk[1] = 1'b0;
    assign proc_3_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (proc_3_data_FIFO_blk[1] | proc_3_data_PIPO_blk[1] | proc_3_start_FIFO_blk[1] | proc_3_TLF_FIFO_blk[1] | proc_3_input_sync_blk[1] | proc_3_output_sync_blk[1]);
    assign proc_3_data_FIFO_blk[2] = 1'b0;
    assign proc_3_data_PIPO_blk[2] = 1'b0;
    assign proc_3_start_FIFO_blk[2] = 1'b0;
    assign proc_3_TLF_FIFO_blk[2] = 1'b0;
    assign proc_3_input_sync_blk[2] = 1'b0 | (AESL_inst_TOP.ap_sync_Rayleigh_1_U0_ap_ready & AESL_inst_TOP.Rayleigh_1_U0.ap_idle & ~AESL_inst_TOP.ap_sync_entry_proc_U0_ap_ready);
    assign proc_3_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_3[2] = dl_detect_out ? proc_dep_vld_vec_3_reg[2] : (proc_3_data_FIFO_blk[2] | proc_3_data_PIPO_blk[2] | proc_3_start_FIFO_blk[2] | proc_3_TLF_FIFO_blk[2] | proc_3_input_sync_blk[2] | proc_3_output_sync_blk[2]);
    assign proc_3_data_FIFO_blk[3] = 1'b0;
    assign proc_3_data_PIPO_blk[3] = 1'b0;
    assign proc_3_start_FIFO_blk[3] = 1'b0;
    assign proc_3_TLF_FIFO_blk[3] = 1'b0;
    assign proc_3_input_sync_blk[3] = 1'b0 | (AESL_inst_TOP.ap_sync_Rayleigh_1_U0_ap_ready & AESL_inst_TOP.Rayleigh_1_U0.ap_idle & ~AESL_inst_TOP.ap_sync_AES_En_De27_U0_ap_ready);
    assign proc_3_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_3[3] = dl_detect_out ? proc_dep_vld_vec_3_reg[3] : (proc_3_data_FIFO_blk[3] | proc_3_data_PIPO_blk[3] | proc_3_start_FIFO_blk[3] | proc_3_TLF_FIFO_blk[3] | proc_3_input_sync_blk[3] | proc_3_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_0_3;
    assign in_chan_dep_data_vec_3[12 : 0] = dep_chan_data_0_3;
    assign token_in_vec_3[0] = token_0_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_1_3;
    assign in_chan_dep_data_vec_3[25 : 13] = dep_chan_data_1_3;
    assign token_in_vec_3[1] = token_1_3;
    assign in_chan_dep_vld_vec_3[2] = dep_chan_vld_4_3;
    assign in_chan_dep_data_vec_3[38 : 26] = dep_chan_data_4_3;
    assign token_in_vec_3[2] = token_4_3;
    assign in_chan_dep_vld_vec_3[3] = dep_chan_vld_5_3;
    assign in_chan_dep_data_vec_3[51 : 39] = dep_chan_data_5_3;
    assign token_in_vec_3[3] = token_5_3;
    assign dep_chan_vld_3_4 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_4 = out_chan_dep_data_3;
    assign token_3_4 = token_out_vec_3[0];
    assign dep_chan_vld_3_5 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_5 = out_chan_dep_data_3;
    assign token_3_5 = token_out_vec_3[1];
    assign dep_chan_vld_3_0 = out_chan_dep_vld_vec_3[2];
    assign dep_chan_data_3_0 = out_chan_dep_data_3;
    assign token_3_0 = token_out_vec_3[2];
    assign dep_chan_vld_3_1 = out_chan_dep_vld_vec_3[3];
    assign dep_chan_data_3_1 = out_chan_dep_data_3;
    assign token_3_1 = token_out_vec_3[3];

    // Process: AESL_inst_TOP.split_U0
    AESL_deadlock_detect_unit #(13, 4, 3, 3) AESL_deadlock_detect_unit_4 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.split_U0.H_real_blk_n);
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.start_for_split_U0_U.if_empty_n & AESL_inst_TOP.split_U0.ap_idle & ~AESL_inst_TOP.start_for_split_U0_U.if_write);
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0;
    assign proc_4_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    assign proc_4_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_TOP.split_U0.H_real_spl0_blk_n);
    assign proc_4_data_PIPO_blk[1] = 1'b0;
    assign proc_4_start_FIFO_blk[1] = 1'b0;
    assign proc_4_TLF_FIFO_blk[1] = 1'b0;
    assign proc_4_input_sync_blk[1] = 1'b0;
    assign proc_4_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_4[1] = dl_detect_out ? proc_dep_vld_vec_4_reg[1] : (proc_4_data_FIFO_blk[1] | proc_4_data_PIPO_blk[1] | proc_4_start_FIFO_blk[1] | proc_4_TLF_FIFO_blk[1] | proc_4_input_sync_blk[1] | proc_4_output_sync_blk[1]);
    assign proc_4_data_FIFO_blk[2] = 1'b0 | (~AESL_inst_TOP.split_U0.H_real_spl1_blk_n);
    assign proc_4_data_PIPO_blk[2] = 1'b0;
    assign proc_4_start_FIFO_blk[2] = 1'b0 | (~AESL_inst_TOP.start_for_QRD_U0_U.if_full_n & AESL_inst_TOP.split_U0.ap_start & ~AESL_inst_TOP.split_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~AESL_inst_TOP.start_for_QRD_U0_U.if_read);
    assign proc_4_TLF_FIFO_blk[2] = 1'b0;
    assign proc_4_input_sync_blk[2] = 1'b0;
    assign proc_4_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_4[2] = dl_detect_out ? proc_dep_vld_vec_4_reg[2] : (proc_4_data_FIFO_blk[2] | proc_4_data_PIPO_blk[2] | proc_4_start_FIFO_blk[2] | proc_4_TLF_FIFO_blk[2] | proc_4_input_sync_blk[2] | proc_4_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_3_4;
    assign in_chan_dep_data_vec_4[12 : 0] = dep_chan_data_3_4;
    assign token_in_vec_4[0] = token_3_4;
    assign in_chan_dep_vld_vec_4[1] = dep_chan_vld_6_4;
    assign in_chan_dep_data_vec_4[25 : 13] = dep_chan_data_6_4;
    assign token_in_vec_4[1] = token_6_4;
    assign in_chan_dep_vld_vec_4[2] = dep_chan_vld_7_4;
    assign in_chan_dep_data_vec_4[38 : 26] = dep_chan_data_7_4;
    assign token_in_vec_4[2] = token_7_4;
    assign dep_chan_vld_4_3 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_3 = out_chan_dep_data_4;
    assign token_4_3 = token_out_vec_4[0];
    assign dep_chan_vld_4_7 = out_chan_dep_vld_vec_4[1];
    assign dep_chan_data_4_7 = out_chan_dep_data_4;
    assign token_4_7 = token_out_vec_4[1];
    assign dep_chan_vld_4_6 = out_chan_dep_vld_vec_4[2];
    assign dep_chan_data_4_6 = out_chan_dep_data_4;
    assign token_4_6 = token_out_vec_4[2];

    // Process: AESL_inst_TOP.split_1_U0
    AESL_deadlock_detect_unit #(13, 5, 3, 3) AESL_deadlock_detect_unit_5 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.split_1_U0.H_imag_blk_n);
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.start_for_split_1_U0_U.if_empty_n & AESL_inst_TOP.split_1_U0.ap_idle & ~AESL_inst_TOP.start_for_split_1_U0_U.if_write);
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0;
    assign proc_5_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    assign proc_5_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_TOP.split_1_U0.H_imag_spl0_blk_n);
    assign proc_5_data_PIPO_blk[1] = 1'b0;
    assign proc_5_start_FIFO_blk[1] = 1'b0;
    assign proc_5_TLF_FIFO_blk[1] = 1'b0;
    assign proc_5_input_sync_blk[1] = 1'b0;
    assign proc_5_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_5[1] = dl_detect_out ? proc_dep_vld_vec_5_reg[1] : (proc_5_data_FIFO_blk[1] | proc_5_data_PIPO_blk[1] | proc_5_start_FIFO_blk[1] | proc_5_TLF_FIFO_blk[1] | proc_5_input_sync_blk[1] | proc_5_output_sync_blk[1]);
    assign proc_5_data_FIFO_blk[2] = 1'b0 | (~AESL_inst_TOP.split_1_U0.H_imag_spl1_blk_n);
    assign proc_5_data_PIPO_blk[2] = 1'b0;
    assign proc_5_start_FIFO_blk[2] = 1'b0;
    assign proc_5_TLF_FIFO_blk[2] = 1'b0;
    assign proc_5_input_sync_blk[2] = 1'b0;
    assign proc_5_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_5[2] = dl_detect_out ? proc_dep_vld_vec_5_reg[2] : (proc_5_data_FIFO_blk[2] | proc_5_data_PIPO_blk[2] | proc_5_start_FIFO_blk[2] | proc_5_TLF_FIFO_blk[2] | proc_5_input_sync_blk[2] | proc_5_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_3_5;
    assign in_chan_dep_data_vec_5[12 : 0] = dep_chan_data_3_5;
    assign token_in_vec_5[0] = token_3_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_6_5;
    assign in_chan_dep_data_vec_5[25 : 13] = dep_chan_data_6_5;
    assign token_in_vec_5[1] = token_6_5;
    assign in_chan_dep_vld_vec_5[2] = dep_chan_vld_7_5;
    assign in_chan_dep_data_vec_5[38 : 26] = dep_chan_data_7_5;
    assign token_in_vec_5[2] = token_7_5;
    assign dep_chan_vld_5_3 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_3 = out_chan_dep_data_5;
    assign token_5_3 = token_out_vec_5[0];
    assign dep_chan_vld_5_7 = out_chan_dep_vld_vec_5[1];
    assign dep_chan_data_5_7 = out_chan_dep_data_5;
    assign token_5_7 = token_out_vec_5[1];
    assign dep_chan_vld_5_6 = out_chan_dep_vld_vec_5[2];
    assign dep_chan_data_5_6 = out_chan_dep_data_5;
    assign token_5_6 = token_out_vec_5[2];

    // Process: AESL_inst_TOP.QRD_U0
    AESL_deadlock_detect_unit #(13, 6, 4, 4) AESL_deadlock_detect_unit_6 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.QRD_U0.grp_QRD_Pipeline_CHANNEL2REAL_fu_2983.H_real_spl1_blk_n);
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.start_for_QRD_U0_U.if_empty_n & AESL_inst_TOP.QRD_U0.ap_idle & ~AESL_inst_TOP.start_for_QRD_U0_U.if_write);
    assign proc_6_TLF_FIFO_blk[0] = 1'b0;
    assign proc_6_input_sync_blk[0] = 1'b0;
    assign proc_6_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    assign proc_6_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_TOP.QRD_U0.grp_QRD_Pipeline_CHANNEL2REAL_fu_2983.H_imag_spl1_blk_n);
    assign proc_6_data_PIPO_blk[1] = 1'b0;
    assign proc_6_start_FIFO_blk[1] = 1'b0;
    assign proc_6_TLF_FIFO_blk[1] = 1'b0;
    assign proc_6_input_sync_blk[1] = 1'b0;
    assign proc_6_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_6[1] = dl_detect_out ? proc_dep_vld_vec_6_reg[1] : (proc_6_data_FIFO_blk[1] | proc_6_data_PIPO_blk[1] | proc_6_start_FIFO_blk[1] | proc_6_TLF_FIFO_blk[1] | proc_6_input_sync_blk[1] | proc_6_output_sync_blk[1]);
    assign proc_6_data_FIFO_blk[2] = 1'b0 | (~AESL_inst_TOP.QRD_U0.grp_QRD_Pipeline_LOOP_02_VITIS_LOOP_260_6_fu_3215.R_blk_n);
    assign proc_6_data_PIPO_blk[2] = 1'b0;
    assign proc_6_start_FIFO_blk[2] = 1'b0 | (~AESL_inst_TOP.start_for_KBEST_U0_U.if_full_n & AESL_inst_TOP.QRD_U0.ap_start & ~AESL_inst_TOP.QRD_U0.real_start & (trans_in_cnt_6 == trans_out_cnt_6) & ~AESL_inst_TOP.start_for_KBEST_U0_U.if_read);
    assign proc_6_TLF_FIFO_blk[2] = 1'b0;
    assign proc_6_input_sync_blk[2] = 1'b0;
    assign proc_6_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_6[2] = dl_detect_out ? proc_dep_vld_vec_6_reg[2] : (proc_6_data_FIFO_blk[2] | proc_6_data_PIPO_blk[2] | proc_6_start_FIFO_blk[2] | proc_6_TLF_FIFO_blk[2] | proc_6_input_sync_blk[2] | proc_6_output_sync_blk[2]);
    assign proc_6_data_FIFO_blk[3] = 1'b0 | (~AESL_inst_TOP.QRD_U0.grp_QRD_Pipeline_VITIS_LOOP_325_9_VITIS_LOOP_326_10_fu_3420.Q_blk_n);
    assign proc_6_data_PIPO_blk[3] = 1'b0;
    assign proc_6_start_FIFO_blk[3] = 1'b0;
    assign proc_6_TLF_FIFO_blk[3] = 1'b0;
    assign proc_6_input_sync_blk[3] = 1'b0;
    assign proc_6_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_6[3] = dl_detect_out ? proc_dep_vld_vec_6_reg[3] : (proc_6_data_FIFO_blk[3] | proc_6_data_PIPO_blk[3] | proc_6_start_FIFO_blk[3] | proc_6_TLF_FIFO_blk[3] | proc_6_input_sync_blk[3] | proc_6_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_4_6;
    assign in_chan_dep_data_vec_6[12 : 0] = dep_chan_data_4_6;
    assign token_in_vec_6[0] = token_4_6;
    assign in_chan_dep_vld_vec_6[1] = dep_chan_vld_5_6;
    assign in_chan_dep_data_vec_6[25 : 13] = dep_chan_data_5_6;
    assign token_in_vec_6[1] = token_5_6;
    assign in_chan_dep_vld_vec_6[2] = dep_chan_vld_9_6;
    assign in_chan_dep_data_vec_6[38 : 26] = dep_chan_data_9_6;
    assign token_in_vec_6[2] = token_9_6;
    assign in_chan_dep_vld_vec_6[3] = dep_chan_vld_10_6;
    assign in_chan_dep_data_vec_6[51 : 39] = dep_chan_data_10_6;
    assign token_in_vec_6[3] = token_10_6;
    assign dep_chan_vld_6_4 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_4 = out_chan_dep_data_6;
    assign token_6_4 = token_out_vec_6[0];
    assign dep_chan_vld_6_5 = out_chan_dep_vld_vec_6[1];
    assign dep_chan_data_6_5 = out_chan_dep_data_6;
    assign token_6_5 = token_out_vec_6[1];
    assign dep_chan_vld_6_10 = out_chan_dep_vld_vec_6[2];
    assign dep_chan_data_6_10 = out_chan_dep_data_6;
    assign token_6_10 = token_out_vec_6[2];
    assign dep_chan_vld_6_9 = out_chan_dep_vld_vec_6[3];
    assign dep_chan_data_6_9 = out_chan_dep_data_6;
    assign token_6_9 = token_out_vec_6[3];

    // Process: AESL_inst_TOP.channel_mult_U0
    AESL_deadlock_detect_unit #(13, 7, 4, 4) AESL_deadlock_detect_unit_7 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_7_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.channel_mult_U0.grp_channel_mult_Pipeline_CHANNEL2REAL_fu_282.H_real_spl0_blk_n);
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0;
    assign proc_7_TLF_FIFO_blk[0] = 1'b0;
    assign proc_7_input_sync_blk[0] = 1'b0;
    assign proc_7_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    assign proc_7_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_TOP.channel_mult_U0.grp_channel_mult_Pipeline_CHANNEL2REAL_fu_282.H_imag_spl0_blk_n);
    assign proc_7_data_PIPO_blk[1] = 1'b0;
    assign proc_7_start_FIFO_blk[1] = 1'b0;
    assign proc_7_TLF_FIFO_blk[1] = 1'b0;
    assign proc_7_input_sync_blk[1] = 1'b0;
    assign proc_7_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_7[1] = dl_detect_out ? proc_dep_vld_vec_7_reg[1] : (proc_7_data_FIFO_blk[1] | proc_7_data_PIPO_blk[1] | proc_7_start_FIFO_blk[1] | proc_7_TLF_FIFO_blk[1] | proc_7_input_sync_blk[1] | proc_7_output_sync_blk[1]);
    assign proc_7_data_FIFO_blk[2] = 1'b0 | (~AESL_inst_TOP.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.xr_blk_n) | (~AESL_inst_TOP.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.xi_blk_n);
    assign proc_7_data_PIPO_blk[2] = 1'b0;
    assign proc_7_start_FIFO_blk[2] = 1'b0 | (~AESL_inst_TOP.start_for_channel_mult_U0_U.if_empty_n & AESL_inst_TOP.channel_mult_U0.ap_idle & ~AESL_inst_TOP.start_for_channel_mult_U0_U.if_write);
    assign proc_7_TLF_FIFO_blk[2] = 1'b0;
    assign proc_7_input_sync_blk[2] = 1'b0;
    assign proc_7_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_7[2] = dl_detect_out ? proc_dep_vld_vec_7_reg[2] : (proc_7_data_FIFO_blk[2] | proc_7_data_PIPO_blk[2] | proc_7_start_FIFO_blk[2] | proc_7_TLF_FIFO_blk[2] | proc_7_input_sync_blk[2] | proc_7_output_sync_blk[2]);
    assign proc_7_data_FIFO_blk[3] = 1'b0 | (~AESL_inst_TOP.channel_mult_U0.grp_channel_mult_Pipeline_VITIS_LOOP_63_1_fu_354.channel_out_blk_n);
    assign proc_7_data_PIPO_blk[3] = 1'b0;
    assign proc_7_start_FIFO_blk[3] = 1'b0;
    assign proc_7_TLF_FIFO_blk[3] = 1'b0;
    assign proc_7_input_sync_blk[3] = 1'b0;
    assign proc_7_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_7[3] = dl_detect_out ? proc_dep_vld_vec_7_reg[3] : (proc_7_data_FIFO_blk[3] | proc_7_data_PIPO_blk[3] | proc_7_start_FIFO_blk[3] | proc_7_TLF_FIFO_blk[3] | proc_7_input_sync_blk[3] | proc_7_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_2_7;
    assign in_chan_dep_data_vec_7[12 : 0] = dep_chan_data_2_7;
    assign token_in_vec_7[0] = token_2_7;
    assign in_chan_dep_vld_vec_7[1] = dep_chan_vld_4_7;
    assign in_chan_dep_data_vec_7[25 : 13] = dep_chan_data_4_7;
    assign token_in_vec_7[1] = token_4_7;
    assign in_chan_dep_vld_vec_7[2] = dep_chan_vld_5_7;
    assign in_chan_dep_data_vec_7[38 : 26] = dep_chan_data_5_7;
    assign token_in_vec_7[2] = token_5_7;
    assign in_chan_dep_vld_vec_7[3] = dep_chan_vld_8_7;
    assign in_chan_dep_data_vec_7[51 : 39] = dep_chan_data_8_7;
    assign token_in_vec_7[3] = token_8_7;
    assign dep_chan_vld_7_4 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_4 = out_chan_dep_data_7;
    assign token_7_4 = token_out_vec_7[0];
    assign dep_chan_vld_7_5 = out_chan_dep_vld_vec_7[1];
    assign dep_chan_data_7_5 = out_chan_dep_data_7;
    assign token_7_5 = token_out_vec_7[1];
    assign dep_chan_vld_7_2 = out_chan_dep_vld_vec_7[2];
    assign dep_chan_data_7_2 = out_chan_dep_data_7;
    assign token_7_2 = token_out_vec_7[2];
    assign dep_chan_vld_7_8 = out_chan_dep_vld_vec_7[3];
    assign dep_chan_data_7_8 = out_chan_dep_data_7;
    assign token_7_8 = token_out_vec_7[3];

    // Process: AESL_inst_TOP.AWGN_1_U0
    AESL_deadlock_detect_unit #(13, 8, 3, 3) AESL_deadlock_detect_unit_8 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_8_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.AWGN_1_U0.SNR_blk_n);
    assign proc_8_data_PIPO_blk[0] = 1'b0;
    assign proc_8_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.start_for_AWGN_1_U0_U.if_empty_n & AESL_inst_TOP.AWGN_1_U0.ap_idle & ~AESL_inst_TOP.start_for_AWGN_1_U0_U.if_write);
    assign proc_8_TLF_FIFO_blk[0] = 1'b0;
    assign proc_8_input_sync_blk[0] = 1'b0;
    assign proc_8_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    assign proc_8_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_TOP.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.channel_out_blk_n);
    assign proc_8_data_PIPO_blk[1] = 1'b0;
    assign proc_8_start_FIFO_blk[1] = 1'b0;
    assign proc_8_TLF_FIFO_blk[1] = 1'b0;
    assign proc_8_input_sync_blk[1] = 1'b0;
    assign proc_8_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_8[1] = dl_detect_out ? proc_dep_vld_vec_8_reg[1] : (proc_8_data_FIFO_blk[1] | proc_8_data_PIPO_blk[1] | proc_8_start_FIFO_blk[1] | proc_8_TLF_FIFO_blk[1] | proc_8_input_sync_blk[1] | proc_8_output_sync_blk[1]);
    assign proc_8_data_FIFO_blk[2] = 1'b0 | (~AESL_inst_TOP.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.noise_out_blk_n);
    assign proc_8_data_PIPO_blk[2] = 1'b0;
    assign proc_8_start_FIFO_blk[2] = 1'b0 | (~AESL_inst_TOP.start_for_matrix_mult_U0_U.if_full_n & AESL_inst_TOP.AWGN_1_U0.ap_start & ~AESL_inst_TOP.AWGN_1_U0.real_start & (trans_in_cnt_5 == trans_out_cnt_5) & ~AESL_inst_TOP.start_for_matrix_mult_U0_U.if_read);
    assign proc_8_TLF_FIFO_blk[2] = 1'b0;
    assign proc_8_input_sync_blk[2] = 1'b0;
    assign proc_8_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_8[2] = dl_detect_out ? proc_dep_vld_vec_8_reg[2] : (proc_8_data_FIFO_blk[2] | proc_8_data_PIPO_blk[2] | proc_8_start_FIFO_blk[2] | proc_8_TLF_FIFO_blk[2] | proc_8_input_sync_blk[2] | proc_8_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_0_8;
    assign in_chan_dep_data_vec_8[12 : 0] = dep_chan_data_0_8;
    assign token_in_vec_8[0] = token_0_8;
    assign in_chan_dep_vld_vec_8[1] = dep_chan_vld_7_8;
    assign in_chan_dep_data_vec_8[25 : 13] = dep_chan_data_7_8;
    assign token_in_vec_8[1] = token_7_8;
    assign in_chan_dep_vld_vec_8[2] = dep_chan_vld_9_8;
    assign in_chan_dep_data_vec_8[38 : 26] = dep_chan_data_9_8;
    assign token_in_vec_8[2] = token_9_8;
    assign dep_chan_vld_8_0 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_0 = out_chan_dep_data_8;
    assign token_8_0 = token_out_vec_8[0];
    assign dep_chan_vld_8_7 = out_chan_dep_vld_vec_8[1];
    assign dep_chan_data_8_7 = out_chan_dep_data_8;
    assign token_8_7 = token_out_vec_8[1];
    assign dep_chan_vld_8_9 = out_chan_dep_vld_vec_8[2];
    assign dep_chan_data_8_9 = out_chan_dep_data_8;
    assign token_8_9 = token_out_vec_8[2];

    // Process: AESL_inst_TOP.matrix_mult_U0
    AESL_deadlock_detect_unit #(13, 9, 3, 3) AESL_deadlock_detect_unit_9 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_9_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_88_1_fu_26.Q_blk_n);
    assign proc_9_data_PIPO_blk[0] = 1'b0;
    assign proc_9_start_FIFO_blk[0] = 1'b0;
    assign proc_9_TLF_FIFO_blk[0] = 1'b0;
    assign proc_9_input_sync_blk[0] = 1'b0;
    assign proc_9_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    assign proc_9_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_TOP.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.noise_out_blk_n);
    assign proc_9_data_PIPO_blk[1] = 1'b0;
    assign proc_9_start_FIFO_blk[1] = 1'b0 | (~AESL_inst_TOP.start_for_matrix_mult_U0_U.if_empty_n & AESL_inst_TOP.matrix_mult_U0.ap_idle & ~AESL_inst_TOP.start_for_matrix_mult_U0_U.if_write);
    assign proc_9_TLF_FIFO_blk[1] = 1'b0;
    assign proc_9_input_sync_blk[1] = 1'b0;
    assign proc_9_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_9[1] = dl_detect_out ? proc_dep_vld_vec_9_reg[1] : (proc_9_data_FIFO_blk[1] | proc_9_data_PIPO_blk[1] | proc_9_start_FIFO_blk[1] | proc_9_TLF_FIFO_blk[1] | proc_9_input_sync_blk[1] | proc_9_output_sync_blk[1]);
    assign proc_9_data_FIFO_blk[2] = 1'b0 | (~AESL_inst_TOP.matrix_mult_U0.grp_matrix_mult_Pipeline_VITIS_LOOP_94_2_fu_34.MULQ_out_blk_n);
    assign proc_9_data_PIPO_blk[2] = 1'b0;
    assign proc_9_start_FIFO_blk[2] = 1'b0;
    assign proc_9_TLF_FIFO_blk[2] = 1'b0;
    assign proc_9_input_sync_blk[2] = 1'b0;
    assign proc_9_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_9[2] = dl_detect_out ? proc_dep_vld_vec_9_reg[2] : (proc_9_data_FIFO_blk[2] | proc_9_data_PIPO_blk[2] | proc_9_start_FIFO_blk[2] | proc_9_TLF_FIFO_blk[2] | proc_9_input_sync_blk[2] | proc_9_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_6_9;
    assign in_chan_dep_data_vec_9[12 : 0] = dep_chan_data_6_9;
    assign token_in_vec_9[0] = token_6_9;
    assign in_chan_dep_vld_vec_9[1] = dep_chan_vld_8_9;
    assign in_chan_dep_data_vec_9[25 : 13] = dep_chan_data_8_9;
    assign token_in_vec_9[1] = token_8_9;
    assign in_chan_dep_vld_vec_9[2] = dep_chan_vld_10_9;
    assign in_chan_dep_data_vec_9[38 : 26] = dep_chan_data_10_9;
    assign token_in_vec_9[2] = token_10_9;
    assign dep_chan_vld_9_6 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_6 = out_chan_dep_data_9;
    assign token_9_6 = token_out_vec_9[0];
    assign dep_chan_vld_9_8 = out_chan_dep_vld_vec_9[1];
    assign dep_chan_data_9_8 = out_chan_dep_data_9;
    assign token_9_8 = token_out_vec_9[1];
    assign dep_chan_vld_9_10 = out_chan_dep_vld_vec_9[2];
    assign dep_chan_data_9_10 = out_chan_dep_data_9;
    assign token_9_10 = token_out_vec_9[2];

    // Process: AESL_inst_TOP.KBEST_U0
    AESL_deadlock_detect_unit #(13, 10, 3, 3) AESL_deadlock_detect_unit_10 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_10),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_10),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_10),
        .token_in_vec(token_in_vec_10),
        .dl_detect_in(dl_detect_out),
        .origin(origin[10]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_10),
        .out_chan_dep_data(out_chan_dep_data_10),
        .token_out_vec(token_out_vec_10),
        .dl_detect_out(dl_in_vec[10]));

    assign proc_10_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_21_1_fu_876.R_blk_n);
    assign proc_10_data_PIPO_blk[0] = 1'b0;
    assign proc_10_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.start_for_KBEST_U0_U.if_empty_n & AESL_inst_TOP.KBEST_U0.ap_idle & ~AESL_inst_TOP.start_for_KBEST_U0_U.if_write);
    assign proc_10_TLF_FIFO_blk[0] = 1'b0;
    assign proc_10_input_sync_blk[0] = 1'b0;
    assign proc_10_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (proc_10_data_FIFO_blk[0] | proc_10_data_PIPO_blk[0] | proc_10_start_FIFO_blk[0] | proc_10_TLF_FIFO_blk[0] | proc_10_input_sync_blk[0] | proc_10_output_sync_blk[0]);
    assign proc_10_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_TOP.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_31_3_fu_884.MULQ_out_blk_n);
    assign proc_10_data_PIPO_blk[1] = 1'b0;
    assign proc_10_start_FIFO_blk[1] = 1'b0;
    assign proc_10_TLF_FIFO_blk[1] = 1'b0;
    assign proc_10_input_sync_blk[1] = 1'b0;
    assign proc_10_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_10[1] = dl_detect_out ? proc_dep_vld_vec_10_reg[1] : (proc_10_data_FIFO_blk[1] | proc_10_data_PIPO_blk[1] | proc_10_start_FIFO_blk[1] | proc_10_TLF_FIFO_blk[1] | proc_10_input_sync_blk[1] | proc_10_output_sync_blk[1]);
    assign proc_10_data_FIFO_blk[2] = 1'b0 | (~AESL_inst_TOP.KBEST_U0.grp_KBEST_Pipeline_VITIS_LOOP_104_12_fu_953.KB_out_blk_n);
    assign proc_10_data_PIPO_blk[2] = 1'b0;
    assign proc_10_start_FIFO_blk[2] = 1'b0 | (~AESL_inst_TOP.start_for_DeModulation_U0_U.if_full_n & AESL_inst_TOP.KBEST_U0.ap_start & ~AESL_inst_TOP.KBEST_U0.real_start & (trans_in_cnt_7 == trans_out_cnt_7) & ~AESL_inst_TOP.start_for_DeModulation_U0_U.if_read);
    assign proc_10_TLF_FIFO_blk[2] = 1'b0;
    assign proc_10_input_sync_blk[2] = 1'b0;
    assign proc_10_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_10[2] = dl_detect_out ? proc_dep_vld_vec_10_reg[2] : (proc_10_data_FIFO_blk[2] | proc_10_data_PIPO_blk[2] | proc_10_start_FIFO_blk[2] | proc_10_TLF_FIFO_blk[2] | proc_10_input_sync_blk[2] | proc_10_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_6_10;
    assign in_chan_dep_data_vec_10[12 : 0] = dep_chan_data_6_10;
    assign token_in_vec_10[0] = token_6_10;
    assign in_chan_dep_vld_vec_10[1] = dep_chan_vld_9_10;
    assign in_chan_dep_data_vec_10[25 : 13] = dep_chan_data_9_10;
    assign token_in_vec_10[1] = token_9_10;
    assign in_chan_dep_vld_vec_10[2] = dep_chan_vld_11_10;
    assign in_chan_dep_data_vec_10[38 : 26] = dep_chan_data_11_10;
    assign token_in_vec_10[2] = token_11_10;
    assign dep_chan_vld_10_6 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_6 = out_chan_dep_data_10;
    assign token_10_6 = token_out_vec_10[0];
    assign dep_chan_vld_10_9 = out_chan_dep_vld_vec_10[1];
    assign dep_chan_data_10_9 = out_chan_dep_data_10;
    assign token_10_9 = token_out_vec_10[1];
    assign dep_chan_vld_10_11 = out_chan_dep_vld_vec_10[2];
    assign dep_chan_data_10_11 = out_chan_dep_data_10;
    assign token_10_11 = token_out_vec_10[2];

    // Process: AESL_inst_TOP.DeModulation_U0
    AESL_deadlock_detect_unit #(13, 11, 2, 2) AESL_deadlock_detect_unit_11 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_11),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_11),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_11),
        .token_in_vec(token_in_vec_11),
        .dl_detect_in(dl_detect_out),
        .origin(origin[11]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_11),
        .out_chan_dep_data(out_chan_dep_data_11),
        .token_out_vec(token_out_vec_11),
        .dl_detect_out(dl_in_vec[11]));

    assign proc_11_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.DeModulation_U0.KB_out_blk_n);
    assign proc_11_data_PIPO_blk[0] = 1'b0;
    assign proc_11_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.start_for_DeModulation_U0_U.if_empty_n & AESL_inst_TOP.DeModulation_U0.ap_idle & ~AESL_inst_TOP.start_for_DeModulation_U0_U.if_write);
    assign proc_11_TLF_FIFO_blk[0] = 1'b0;
    assign proc_11_input_sync_blk[0] = 1'b0;
    assign proc_11_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_11[0] = dl_detect_out ? proc_dep_vld_vec_11_reg[0] : (proc_11_data_FIFO_blk[0] | proc_11_data_PIPO_blk[0] | proc_11_start_FIFO_blk[0] | proc_11_TLF_FIFO_blk[0] | proc_11_input_sync_blk[0] | proc_11_output_sync_blk[0]);
    assign proc_11_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_TOP.DeModulation_U0.demod_out_blk_n);
    assign proc_11_data_PIPO_blk[1] = 1'b0;
    assign proc_11_start_FIFO_blk[1] = 1'b0 | (~AESL_inst_TOP.start_for_AES_En_De_128_U0_U.if_full_n & AESL_inst_TOP.DeModulation_U0.ap_start & ~AESL_inst_TOP.DeModulation_U0.real_start & (trans_in_cnt_8 == trans_out_cnt_8) & ~AESL_inst_TOP.start_for_AES_En_De_128_U0_U.if_read);
    assign proc_11_TLF_FIFO_blk[1] = 1'b0;
    assign proc_11_input_sync_blk[1] = 1'b0;
    assign proc_11_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_11[1] = dl_detect_out ? proc_dep_vld_vec_11_reg[1] : (proc_11_data_FIFO_blk[1] | proc_11_data_PIPO_blk[1] | proc_11_start_FIFO_blk[1] | proc_11_TLF_FIFO_blk[1] | proc_11_input_sync_blk[1] | proc_11_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_11_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_11_reg <= proc_dep_vld_vec_11;
        end
    end
    assign in_chan_dep_vld_vec_11[0] = dep_chan_vld_10_11;
    assign in_chan_dep_data_vec_11[12 : 0] = dep_chan_data_10_11;
    assign token_in_vec_11[0] = token_10_11;
    assign in_chan_dep_vld_vec_11[1] = dep_chan_vld_12_11;
    assign in_chan_dep_data_vec_11[25 : 13] = dep_chan_data_12_11;
    assign token_in_vec_11[1] = token_12_11;
    assign dep_chan_vld_11_10 = out_chan_dep_vld_vec_11[0];
    assign dep_chan_data_11_10 = out_chan_dep_data_11;
    assign token_11_10 = token_out_vec_11[0];
    assign dep_chan_vld_11_12 = out_chan_dep_vld_vec_11[1];
    assign dep_chan_data_11_12 = out_chan_dep_data_11;
    assign token_11_12 = token_out_vec_11[1];

    // Process: AESL_inst_TOP.AES_En_De_128_U0
    AESL_deadlock_detect_unit #(13, 12, 1, 1) AESL_deadlock_detect_unit_12 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_12),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_12),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_12),
        .token_in_vec(token_in_vec_12),
        .dl_detect_in(dl_detect_out),
        .origin(origin[12]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_12),
        .out_chan_dep_data(out_chan_dep_data_12),
        .token_out_vec(token_out_vec_12),
        .dl_detect_out(dl_in_vec[12]));

    assign proc_12_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.AES_En_De_128_U0.demod_out_blk_n);
    assign proc_12_data_PIPO_blk[0] = 1'b0;
    assign proc_12_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_TOP.start_for_AES_En_De_128_U0_U.if_empty_n & AESL_inst_TOP.AES_En_De_128_U0.ap_idle & ~AESL_inst_TOP.start_for_AES_En_De_128_U0_U.if_write);
    assign proc_12_TLF_FIFO_blk[0] = 1'b0;
    assign proc_12_input_sync_blk[0] = 1'b0;
    assign proc_12_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_12[0] = dl_detect_out ? proc_dep_vld_vec_12_reg[0] : (proc_12_data_FIFO_blk[0] | proc_12_data_PIPO_blk[0] | proc_12_start_FIFO_blk[0] | proc_12_TLF_FIFO_blk[0] | proc_12_input_sync_blk[0] | proc_12_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_12_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_12_reg <= proc_dep_vld_vec_12;
        end
    end
    assign in_chan_dep_vld_vec_12[0] = dep_chan_vld_11_12;
    assign in_chan_dep_data_vec_12[12 : 0] = dep_chan_data_11_12;
    assign token_in_vec_12[0] = token_11_12;
    assign dep_chan_vld_12_11 = out_chan_dep_vld_vec_12[0];
    assign dep_chan_data_12_11 = out_chan_dep_data_12;
    assign token_12_11 = token_out_vec_12[0];


    wire [12:0] dl_in_vec_comb = dl_in_vec & ~{12{all_finish}};
    AESL_deadlock_report_unit #(13) AESL_deadlock_report_unit_inst (
        .dl_reset(dl_reset),
        .dl_clock(dl_clock),
        .dl_in_vec(dl_in_vec_comb),
        .trans_in_cnt_0(trans_in_cnt_0),
        .trans_out_cnt_0(trans_out_cnt_0),
        .trans_in_cnt_1(trans_in_cnt_1),
        .trans_out_cnt_1(trans_out_cnt_1),
        .trans_in_cnt_2(trans_in_cnt_2),
        .trans_out_cnt_2(trans_out_cnt_2),
        .trans_in_cnt_3(trans_in_cnt_3),
        .trans_out_cnt_3(trans_out_cnt_3),
        .trans_in_cnt_4(trans_in_cnt_4),
        .trans_out_cnt_4(trans_out_cnt_4),
        .trans_in_cnt_5(trans_in_cnt_5),
        .trans_out_cnt_5(trans_out_cnt_5),
        .trans_in_cnt_6(trans_in_cnt_6),
        .trans_out_cnt_6(trans_out_cnt_6),
        .trans_in_cnt_7(trans_in_cnt_7),
        .trans_out_cnt_7(trans_out_cnt_7),
        .trans_in_cnt_8(trans_in_cnt_8),
        .trans_out_cnt_8(trans_out_cnt_8),
        .dl_detect_out(dl_detect_out),
        .origin(origin),
        .token_clear(token_clear));

endmodule
