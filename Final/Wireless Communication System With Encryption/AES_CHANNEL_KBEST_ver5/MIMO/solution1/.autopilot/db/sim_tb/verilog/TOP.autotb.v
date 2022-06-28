// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      TOP
`define AUTOTB_DUT_INST AESL_inst_TOP
`define AUTOTB_TOP      apatb_TOP_top
`define AUTOTB_LAT_RESULT_FILE "TOP.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "TOP.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_TOP_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 20.00

`define AESL_FIFO_in_data AESL_autofifo_in_data
`define AESL_FIFO_INST_in_data AESL_autofifo_inst_in_data
`define AESL_FIFO_out_data AESL_autofifo_out_data
`define AESL_FIFO_INST_out_data AESL_autofifo_inst_out_data
`define AESL_DEPTH_SNR 1
`define AUTOTB_TVIN_in_data  "./c.TOP.autotvin_in_data.dat"
`define AUTOTB_TVIN_SNR  "./c.TOP.autotvin_SNR.dat"
`define AUTOTB_TVIN_in_data_out_wrapc  "./rtl.TOP.autotvin_in_data.dat"
`define AUTOTB_TVIN_SNR_out_wrapc  "./rtl.TOP.autotvin_SNR.dat"
`define AUTOTB_TVOUT_out_data  "./c.TOP.autotvout_out_data.dat"
`define AUTOTB_TVOUT_out_data_out_wrapc  "./impl_rtl.TOP.autotvout_out_data.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 14054;
parameter LENGTH_in_data = 16;
parameter LENGTH_out_data = 16;
parameter LENGTH_SNR = 1;

task read_token;
    input integer fp;
    output reg [159 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

task post_check;
    input integer fp1;
    input integer fp2;
    reg [159 : 0] token1;
    reg [159 : 0] token2;
    reg [159 : 0] golden;
    reg [159 : 0] result;
    integer ret;
    begin
        read_token(fp1, token1);
        read_token(fp2, token2);
        if (token1 != "[[[runtime]]]" || token2 != "[[[runtime]]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
            $finish;
        end
        read_token(fp1, token1);
        read_token(fp2, token2);
        while (token1 != "[[[/runtime]]]" && token2 != "[[[/runtime]]]") begin
            if (token1 != "[[transaction]]" || token2 != "[[transaction]]") begin
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
            end
            read_token(fp1, token1);  // skip transaction number
            read_token(fp2, token2);  // skip transaction number
              read_token(fp1, token1);
              read_token(fp2, token2);
            while(token1 != "[[/transaction]]" && token2 != "[[/transaction]]") begin
                ret = $sscanf(token1, "0x%x", golden);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                ret = $sscanf(token2, "0x%x", result);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                if(golden != result) begin
                      $display("%x (expected) vs. %x (actual) - mismatch", golden, result);
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                end
                  read_token(fp1, token1);
                  read_token(fp2, token2);
            end
              read_token(fp1, token1);
              read_token(fp2, token2);
        end
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire  ap_local_block;
wire  ap_local_deadlock;
wire [7 : 0] in_data_dout;
wire  in_data_empty_n;
wire  in_data_read;
wire [7 : 0] out_data_din;
wire  out_data_full_n;
wire  out_data_write;
wire [15 : 0] SNR;
wire ap_start;
wire ap_done;
wire ap_ready;
wire ap_idle;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;


wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_local_block(ap_local_block),
    .ap_local_deadlock(ap_local_deadlock),
    .in_data_dout(in_data_dout),
    .in_data_empty_n(in_data_empty_n),
    .in_data_read(in_data_read),
    .out_data_din(out_data_din),
    .out_data_full_n(out_data_full_n),
    .out_data_write(out_data_write),
    .SNR(SNR),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_ready(ap_ready),
    .ap_idle(ap_idle));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_ready = ap_ready;
assign AESL_idle = ap_idle;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// Fifo Instantiation in_data

wire fifoin_data_rd;
wire [7 : 0] fifoin_data_dout;
wire fifoin_data_empty_n;
wire fifoin_data_ready;
wire fifoin_data_done;
reg [31:0] ap_c_n_tvin_trans_num_in_data;
reg in_data_ready_reg;

`AESL_FIFO_in_data `AESL_FIFO_INST_in_data (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoin_data_rd),
    .if_dout      (fifoin_data_dout),
    .if_empty_n   (fifoin_data_empty_n),
    .ready        (fifoin_data_ready),
    .done         (fifoin_data_done)
);

// Assignment between dut and fifoin_data

// Assign input of fifoin_data
assign      fifoin_data_rd        =   in_data_read & in_data_empty_n;
assign    fifoin_data_ready   =   in_data_ready_reg | ready_initial;
assign    fifoin_data_done    =   0;
// Assign input of dut
assign      in_data_dout       =   fifoin_data_dout;
reg   reg_fifoin_data_empty_n;
initial begin : gen_reg_fifoin_data_empty_n_process
    integer proc_rand;
    reg_fifoin_data_empty_n = fifoin_data_empty_n;
    while (1) begin
        @ (fifoin_data_empty_n);
        reg_fifoin_data_empty_n = fifoin_data_empty_n;
    end
end

assign      in_data_empty_n    =   reg_fifoin_data_empty_n;


//------------------------Fifoout_data Instantiation--------------

// The input and output of fifoout_data
wire  fifoout_data_wr;
wire  [7 : 0] fifoout_data_din;
wire  fifoout_data_full_n;
wire  fifoout_data_ready;
wire  fifoout_data_done;

`AESL_FIFO_out_data `AESL_FIFO_INST_out_data(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifoout_data_wr),
    .if_din       (fifoout_data_din),
    .if_full_n    (fifoout_data_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifoout_data_ready),
    .done         (fifoout_data_done)
);

// Assignment between dut and fifoout_data

// Assign input of fifoout_data
assign      fifoout_data_wr        =   out_data_write & out_data_full_n;
assign      fifoout_data_din        =   out_data_din;
assign    fifoout_data_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifoout_data_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifoout_data_full_n;
initial begin : gen_reg_fifoout_data_full_n_process
    integer proc_rand;
    reg_fifoout_data_full_n = fifoout_data_full_n;
    while (1) begin
        @ (fifoout_data_full_n);
        reg_fifoout_data_full_n = fifoout_data_full_n;
    end
end

assign      out_data_full_n    =   reg_fifoout_data_full_n;


// The signal of port SNR
reg [15: 0] AESL_REG_SNR = 0;
assign SNR = AESL_REG_SNR;
initial begin : read_file_process_SNR
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [159  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_SNR,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_SNR);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_SNR);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        integer fp1;
        integer fp2;
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
    fp1 = $fopen("./rtl.TOP.autotvout_out_data.dat", "r");
    fp2 = $fopen("./impl_rtl.TOP.autotvout_out_data.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.TOP.autotvout_out_data.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.TOP.autotvout_out_data.dat\"!");
    else begin
        $display("Comparing rtl.TOP.autotvout_out_data.dat with impl_rtl.TOP.autotvout_out_data.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
        $display("Simulation Passed.");
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_in_data;
reg [31:0] size_in_data;
reg [31:0] size_in_data_backup;
reg end_SNR;
reg [31:0] size_SNR;
reg [31:0] size_SNR_backup;
reg end_out_data;
reg [31:0] size_out_data;
reg [31:0] size_out_data_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
initial begin : proc_gen_in_data_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    in_data_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_in_data > internal_trans_num) begin
            in_data_ready_reg <= 1;
            @(posedge AESL_clock);
            in_data_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    in_data_ready_reg <= 0;
end
    
    `define STREAM_SIZE_IN_in_data "./stream_size_in_in_data.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_in_data
        integer fp_in_data;
        reg [127:0] token_in_data;
        integer ret;
        
        ap_c_n_tvin_trans_num_in_data = 0;
        end_in_data = 0;
        wait (AESL_reset === 0);
        
        fp_in_data = $fopen(`STREAM_SIZE_IN_in_data, "r");
        if(fp_in_data == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_in_data);
            $finish;
        end
        read_token(fp_in_data, token_in_data); // should be [[[runtime]]]
        if (token_in_data != "[[[runtime]]]") begin
            $display("ERROR: token_in_data != \"[[[runtime]]]\"");
            $finish;
        end
        size_in_data = 0;
        size_in_data_backup = 0;
        while (size_in_data == 0 && end_in_data == 0) begin
            ap_c_n_tvin_trans_num_in_data = ap_c_n_tvin_trans_num_in_data + 1;
            read_token(fp_in_data, token_in_data); // should be [[transaction]] or [[[/runtime]]]
            if (token_in_data == "[[transaction]]") begin
                read_token(fp_in_data, token_in_data); // should be transaction number
                read_token(fp_in_data, token_in_data); // should be size for hls::stream
                ret = $sscanf(token_in_data, "%d", size_in_data);
                if (size_in_data > 0) begin
                    size_in_data_backup = size_in_data;
                end
                read_token(fp_in_data, token_in_data); // should be [[/transaction]]
            end else if (token_in_data == "[[[/runtime]]]") begin
                $fclose(fp_in_data);
                end_in_data = 1;
            end else begin
                $display("ERROR: unknown token_in_data");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_in_data == 0) begin
                if (in_data_read == 1 && in_data_empty_n == 1) begin
                    if (size_in_data > 0) begin
                        size_in_data = size_in_data - 1;
                        while (size_in_data == 0 && end_in_data == 0) begin
                            ap_c_n_tvin_trans_num_in_data = ap_c_n_tvin_trans_num_in_data + 1;
                            read_token(fp_in_data, token_in_data); // should be [[transaction]] or [[[/runtime]]]
                            if (token_in_data == "[[transaction]]") begin
                                read_token(fp_in_data, token_in_data); // should be transaction number
                                read_token(fp_in_data, token_in_data); // should be size for hls::stream
                                ret = $sscanf(token_in_data, "%d", size_in_data);
                                if (size_in_data > 0) begin
                                    size_in_data_backup = size_in_data;
                                end
                                read_token(fp_in_data, token_in_data); // should be [[/transaction]]
                            end else if (token_in_data == "[[[/runtime]]]") begin
                                size_in_data = size_in_data_backup;
                                $fclose(fp_in_data);
                                end_in_data = 1;
                            end else begin
                                $display("ERROR: unknown token_in_data");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (in_data_read == 1 && in_data_empty_n == 1) begin
                    if (size_in_data > 0) begin
                        size_in_data = size_in_data - 1;
                        if (size_in_data == 0) begin
                            ap_c_n_tvin_trans_num_in_data = ap_c_n_tvin_trans_num_in_data + 1;
                            size_in_data = size_in_data_backup;
                        end
                    end
                end
            end
        end
    end
    
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_out_data;

initial begin : dump_tvout_runtime_sign_out_data
    integer fp;
    dump_tvout_finish_out_data = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_data_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_data_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_data_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_data_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_data = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 1) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

// Dependence Check (WAR) "ap_enable_operation_111"(R:SV0-1) -> "ap_enable_operation_119"(W:SV1-1) @ `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72

// Dependence Check (WAR) "ap_enable_operation_112"(R:SV0-1) -> "ap_enable_operation_114"(W:SV1-1) @ `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72

// Dependence Check (RAW) "ap_enable_operation_114"(W:SV1-1) -> "ap_enable_operation_90"(R:SV0-1) @ `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72
reg [9:0] DEP_address_2_to [1 - 1:0];
time DEP_time_2_to [1 - 1:0];
reg [9:0] DEP_address_2_from [1 - 1:0];
time DEP_time_2_from [1 - 1:0];
reg DEP_error_2 = 0;
integer DEP_i_2;

initial begin
    DEP_address_2_to[0] = 0;
    DEP_time_2_to[0] = 0;
    DEP_address_2_from[0] = 0;
    DEP_time_2_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_operation_90) begin
                DEP_address_2_to[0] = {1'b1, `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.rngMT19937ICN_uniformRNG_mt_even_0_V_address1};
                DEP_time_2_to[0] = $time;
            end else begin
                DEP_address_2_to[0] = {1'b0, 9'b0};
                DEP_time_2_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state2_pp0_iter1_stage0)
            &&  ~`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_reg_pp0_iter0) begin
            DEP_address_2_to[0] = {1'b0, 9'b0};
            DEP_time_2_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state2_pp0_iter1_stage0
            &&  `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_operation_114) begin
                if (DEP_address_2_from[0][9]) begin
                    $display("// ERROR : \"DEP_address_2_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_2_from[0] = {1'b1, `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.rngMT19937ICN_uniformRNG_mt_even_0_V_address0};
                DEP_time_2_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state2_pp0_iter1_stage0
            &&  `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_operation_114) begin
                DEP_i_2 = 0;
                if (DEP_address_2_to[0][9]) begin
                    DEP_error_2 = (DEP_address_2_to[0][8:0] == DEP_address_2_from[DEP_i_2][8:0]);
                    if (DEP_error_2) begin
                        $display("//Critical WARNING: Due to pragma (src/rng.hpp:694:28), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72\"");
                        $display("//                : From memory access \"rngMT19937ICN_uniformRNG_mt_even_0_V_address0\" = 0x%0h @ \"%0t\"", DEP_address_2_from[DEP_i_2][8:0], DEP_time_2_from[DEP_i_2]);
                        $display("//                : To memory access \"rngMT19937ICN_uniformRNG_mt_even_0_V_address1\" = DEP_address_2_to[0][8:0] = 0x%0h @ \"%0t\"", DEP_address_2_to[0][8:0], DEP_time_2_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_114"(W:SV1-1) -> "ap_enable_operation_90"(R:SV0-1) @ `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72
                    end
                end
                DEP_address_2_from[DEP_i_2] = {1'b0, 9'b0};
                DEP_time_2_from[DEP_i_2] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_114"(W:SV1-1) -> "ap_enable_operation_92"(R:SV0-1) @ `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72
reg [9:0] DEP_address_3_to [1 - 1:0];
time DEP_time_3_to [1 - 1:0];
reg [9:0] DEP_address_3_from [1 - 1:0];
time DEP_time_3_from [1 - 1:0];
reg DEP_error_3 = 0;
integer DEP_i_3;

initial begin
    DEP_address_3_to[0] = 0;
    DEP_time_3_to[0] = 0;
    DEP_address_3_from[0] = 0;
    DEP_time_3_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_operation_92) begin
                DEP_address_3_to[0] = {1'b1, `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.rngMT19937ICN_uniformRNG_mt_even_0_V_address1};
                DEP_time_3_to[0] = $time;
            end else begin
                DEP_address_3_to[0] = {1'b0, 9'b0};
                DEP_time_3_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state2_pp0_iter1_stage0)
            &&  ~`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_reg_pp0_iter0) begin
            DEP_address_3_to[0] = {1'b0, 9'b0};
            DEP_time_3_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state2_pp0_iter1_stage0
            &&  `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_operation_114) begin
                if (DEP_address_3_from[0][9]) begin
                    $display("// ERROR : \"DEP_address_3_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_3_from[0] = {1'b1, `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.rngMT19937ICN_uniformRNG_mt_even_0_V_address0};
                DEP_time_3_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state2_pp0_iter1_stage0
            &&  `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_operation_114) begin
                DEP_i_3 = 0;
                if (DEP_address_3_to[0][9]) begin
                    DEP_error_3 = (DEP_address_3_to[0][8:0] == DEP_address_3_from[DEP_i_3][8:0]);
                    if (DEP_error_3) begin
                        $display("//Critical WARNING: Due to pragma (src/rng.hpp:694:28), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72\"");
                        $display("//                : From memory access \"rngMT19937ICN_uniformRNG_mt_even_0_V_address0\" = 0x%0h @ \"%0t\"", DEP_address_3_from[DEP_i_3][8:0], DEP_time_3_from[DEP_i_3]);
                        $display("//                : To memory access \"rngMT19937ICN_uniformRNG_mt_even_0_V_address1\" = DEP_address_3_to[0][8:0] = 0x%0h @ \"%0t\"", DEP_address_3_to[0][8:0], DEP_time_3_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_114"(W:SV1-1) -> "ap_enable_operation_92"(R:SV0-1) @ `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72
                    end
                end
                DEP_address_3_from[DEP_i_3] = {1'b0, 9'b0};
                DEP_time_3_from[DEP_i_3] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAR) "ap_enable_operation_116"(R:SV0-1) -> "ap_enable_operation_114"(W:SV1-1) @ `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72

// Dependence Check (WAR) "ap_enable_operation_117"(R:SV0-1) -> "ap_enable_operation_119"(W:SV1-1) @ `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72

// Dependence Check (RAW) "ap_enable_operation_119"(W:SV1-1) -> "ap_enable_operation_88"(R:SV0-1) @ `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72
reg [9:0] DEP_address_6_to [1 - 1:0];
time DEP_time_6_to [1 - 1:0];
reg [9:0] DEP_address_6_from [1 - 1:0];
time DEP_time_6_from [1 - 1:0];
reg DEP_error_6 = 0;
integer DEP_i_6;

initial begin
    DEP_address_6_to[0] = 0;
    DEP_time_6_to[0] = 0;
    DEP_address_6_from[0] = 0;
    DEP_time_6_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_operation_88) begin
                DEP_address_6_to[0] = {1'b1, `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.rngMT19937ICN_uniformRNG_mt_odd_0_V_address1};
                DEP_time_6_to[0] = $time;
            end else begin
                DEP_address_6_to[0] = {1'b0, 9'b0};
                DEP_time_6_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state2_pp0_iter1_stage0)
            &&  ~`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_reg_pp0_iter0) begin
            DEP_address_6_to[0] = {1'b0, 9'b0};
            DEP_time_6_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state2_pp0_iter1_stage0
            &&  `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_operation_119) begin
                if (DEP_address_6_from[0][9]) begin
                    $display("// ERROR : \"DEP_address_6_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_6_from[0] = {1'b1, `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.rngMT19937ICN_uniformRNG_mt_odd_0_V_address0};
                DEP_time_6_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state2_pp0_iter1_stage0
            &&  `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_operation_119) begin
                DEP_i_6 = 0;
                if (DEP_address_6_to[0][9]) begin
                    DEP_error_6 = (DEP_address_6_to[0][8:0] == DEP_address_6_from[DEP_i_6][8:0]);
                    if (DEP_error_6) begin
                        $display("//Critical WARNING: Due to pragma (src/rng.hpp:697:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72\"");
                        $display("//                : From memory access \"rngMT19937ICN_uniformRNG_mt_odd_0_V_address0\" = 0x%0h @ \"%0t\"", DEP_address_6_from[DEP_i_6][8:0], DEP_time_6_from[DEP_i_6]);
                        $display("//                : To memory access \"rngMT19937ICN_uniformRNG_mt_odd_0_V_address1\" = DEP_address_6_to[0][8:0] = 0x%0h @ \"%0t\"", DEP_address_6_to[0][8:0], DEP_time_6_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_119"(W:SV1-1) -> "ap_enable_operation_88"(R:SV0-1) @ `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72
                    end
                end
                DEP_address_6_from[DEP_i_6] = {1'b0, 9'b0};
                DEP_time_6_from[DEP_i_6] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_119"(W:SV1-1) -> "ap_enable_operation_94"(R:SV0-1) @ `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72
reg [9:0] DEP_address_7_to [1 - 1:0];
time DEP_time_7_to [1 - 1:0];
reg [9:0] DEP_address_7_from [1 - 1:0];
time DEP_time_7_from [1 - 1:0];
reg DEP_error_7 = 0;
integer DEP_i_7;

initial begin
    DEP_address_7_to[0] = 0;
    DEP_time_7_to[0] = 0;
    DEP_address_7_from[0] = 0;
    DEP_time_7_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state1_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_operation_94) begin
                DEP_address_7_to[0] = {1'b1, `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.rngMT19937ICN_uniformRNG_mt_odd_0_V_address1};
                DEP_time_7_to[0] = $time;
            end else begin
                DEP_address_7_to[0] = {1'b0, 9'b0};
                DEP_time_7_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state1_pp0_iter0_stage0||
            `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state2_pp0_iter1_stage0)
            &&  ~`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_reg_pp0_iter0) begin
            DEP_address_7_to[0] = {1'b0, 9'b0};
            DEP_time_7_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state2_pp0_iter1_stage0
            &&  `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_operation_119) begin
                if (DEP_address_7_from[0][9]) begin
                    $display("// ERROR : \"DEP_address_7_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_7_from[0] = {1'b1, `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.rngMT19937ICN_uniformRNG_mt_odd_0_V_address0};
                DEP_time_7_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_state2_pp0_iter1_stage0
            &&  `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_reg_pp0_iter1) begin
            if (`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72.ap_enable_operation_119) begin
                DEP_i_7 = 0;
                if (DEP_address_7_to[0][9]) begin
                    DEP_error_7 = (DEP_address_7_to[0][8:0] == DEP_address_7_from[DEP_i_7][8:0]);
                    if (DEP_error_7) begin
                        $display("//Critical WARNING: Due to pragma (src/rng.hpp:697:9), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72\"");
                        $display("//                : From memory access \"rngMT19937ICN_uniformRNG_mt_odd_0_V_address0\" = 0x%0h @ \"%0t\"", DEP_address_7_from[DEP_i_7][8:0], DEP_time_7_from[DEP_i_7]);
                        $display("//                : To memory access \"rngMT19937ICN_uniformRNG_mt_odd_0_V_address1\" = DEP_address_7_to[0][8:0] = 0x%0h @ \"%0t\"", DEP_address_7_to[0][8:0], DEP_time_7_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_119"(W:SV1-1) -> "ap_enable_operation_94"(R:SV0-1) @ `AUTOTB_DUT_INST.AWGN_1_U0.grp_AWGN_1_Pipeline_VITIS_LOOP_15_1_fu_72
                    end
                end
                DEP_address_7_from[DEP_i_7] = {1'b0, 9'b0};
                DEP_time_7_from[DEP_i_7] = 0;
            end
        end // of check access
    end 
end

`endif

AESL_deadlock_detector deadlock_detector(
    .dl_reset(~AESL_reset),
    .all_finish(all_finish),
    .dl_clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
