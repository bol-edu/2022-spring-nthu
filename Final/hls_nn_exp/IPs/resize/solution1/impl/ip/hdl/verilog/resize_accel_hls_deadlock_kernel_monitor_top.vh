
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [1:0] axis_block_sigs;
wire [8:0] inst_idle_sigs;
wire [3:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~axis2xfMat_24_9_2160_3840_1_U0.grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102.src_TDATA_blk_n;
assign axis_block_sigs[1] = ~xfMat2axis_24_9_2160_3840_1_U0.grp_xfMat2axis_24_9_2160_3840_1_Pipeline_loop_col_mat2axi_fu_82.dst_TDATA_blk_n;

assign inst_idle_sigs[0] = Block_split1_proc_U0.ap_idle;
assign inst_block_sigs[0] = (Block_split1_proc_U0.ap_done & ~Block_split1_proc_U0.ap_continue);
assign inst_idle_sigs[1] = axis2xfMat_24_9_2160_3840_1_U0.ap_idle;
assign inst_block_sigs[1] = (axis2xfMat_24_9_2160_3840_1_U0.ap_done & ~axis2xfMat_24_9_2160_3840_1_U0.ap_continue) | ~axis2xfMat_24_9_2160_3840_1_U0.grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102.src_mat_420_blk_n | ~axis2xfMat_24_9_2160_3840_1_U0.src_mat_rows_c_blk_n | ~axis2xfMat_24_9_2160_3840_1_U0.src_mat_cols_c_blk_n;
assign inst_idle_sigs[2] = resize_1_9_2160_3840_2160_3840_1_9_U0.ap_idle;
assign inst_block_sigs[2] = (resize_1_9_2160_3840_2160_3840_1_9_U0.ap_done & ~resize_1_9_2160_3840_2160_3840_1_9_U0.ap_continue) | ~resize_1_9_2160_3840_2160_3840_1_9_U0.p_src_rows_blk_n | ~resize_1_9_2160_3840_2160_3840_1_9_U0.p_src_cols_blk_n | ~resize_1_9_2160_3840_2160_3840_1_9_U0.grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_82.grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_Pipeline_VITIS_LOOP_337_1_VITIS_LOOP_342_2_fu_204.src_mat_420_blk_n | ~resize_1_9_2160_3840_2160_3840_1_9_U0.grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_82.grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_Pipeline_VITIS_LOOP_394_5_fu_214.src_mat_420_blk_n | ~resize_1_9_2160_3840_2160_3840_1_9_U0.grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_s_fu_82.grp_resizeNNBilinear_9_2160_3840_1_2160_3840_1_9_Pipeline_VITIS_LOOP_394_5_fu_214.dst_mat_421_blk_n | ~resize_1_9_2160_3840_2160_3840_1_9_U0.dst_mat_rows_c_blk_n | ~resize_1_9_2160_3840_2160_3840_1_9_U0.dst_mat_cols_c_blk_n;
assign inst_idle_sigs[3] = xfMat2axis_24_9_2160_3840_1_U0.ap_idle;
assign inst_block_sigs[3] = (xfMat2axis_24_9_2160_3840_1_U0.ap_done & ~xfMat2axis_24_9_2160_3840_1_U0.ap_continue) | ~xfMat2axis_24_9_2160_3840_1_U0.img_rows_blk_n | ~xfMat2axis_24_9_2160_3840_1_U0.img_cols_blk_n | ~xfMat2axis_24_9_2160_3840_1_U0.grp_xfMat2axis_24_9_2160_3840_1_Pipeline_loop_col_mat2axi_fu_82.dst_mat_421_blk_n;

assign inst_idle_sigs[4] = 1'b0;
assign inst_idle_sigs[5] = axis2xfMat_24_9_2160_3840_1_U0.ap_idle;
assign inst_idle_sigs[6] = axis2xfMat_24_9_2160_3840_1_U0.grp_axis2xfMat_24_9_2160_3840_1_Pipeline_loop_col_zxi2mat_fu_102.ap_idle;
assign inst_idle_sigs[7] = xfMat2axis_24_9_2160_3840_1_U0.ap_idle;
assign inst_idle_sigs[8] = xfMat2axis_24_9_2160_3840_1_U0.grp_xfMat2axis_24_9_2160_3840_1_Pipeline_loop_col_mat2axi_fu_82.ap_idle;

resize_accel_hls_deadlock_idx0_monitor resize_accel_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
