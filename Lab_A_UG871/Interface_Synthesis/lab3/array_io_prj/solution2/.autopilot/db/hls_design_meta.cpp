#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_local_block", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_local_deadlock", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("d_o_din", 16, hls_out, 0, "ap_fifo", "fifo_data", 32),
	Port_Property("d_o_full_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 32),
	Port_Property("d_o_write", 1, hls_out, 0, "ap_fifo", "fifo_update", 32),
	Port_Property("d_i_address0", 5, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("d_i_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("d_i_q0", 16, hls_in, 1, "ap_memory", "in_data", 1),
	Port_Property("d_i_address1", 5, hls_out, 1, "ap_memory", "MemPortADDR2", 1),
	Port_Property("d_i_ce1", 1, hls_out, 1, "ap_memory", "MemPortCE2", 1),
	Port_Property("d_i_q1", 16, hls_in, 1, "ap_memory", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "array_io";
