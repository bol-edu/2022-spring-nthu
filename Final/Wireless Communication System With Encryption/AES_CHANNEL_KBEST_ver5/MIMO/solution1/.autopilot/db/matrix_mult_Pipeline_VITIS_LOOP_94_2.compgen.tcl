# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1061 \
    name Q_TEMP_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Q_TEMP_V \
    op interface \
    ports { Q_TEMP_V_address0 { O 6 vector } Q_TEMP_V_ce0 { O 1 bit } Q_TEMP_V_q0 { I 16 vector } Q_TEMP_V_address1 { O 6 vector } Q_TEMP_V_ce1 { O 1 bit } Q_TEMP_V_q1 { I 16 vector } Q_TEMP_V_address2 { O 6 vector } Q_TEMP_V_ce2 { O 1 bit } Q_TEMP_V_q2 { I 16 vector } Q_TEMP_V_address3 { O 6 vector } Q_TEMP_V_ce3 { O 1 bit } Q_TEMP_V_q3 { I 16 vector } Q_TEMP_V_address4 { O 6 vector } Q_TEMP_V_ce4 { O 1 bit } Q_TEMP_V_q4 { I 16 vector } Q_TEMP_V_address5 { O 6 vector } Q_TEMP_V_ce5 { O 1 bit } Q_TEMP_V_q5 { I 16 vector } Q_TEMP_V_address6 { O 6 vector } Q_TEMP_V_ce6 { O 1 bit } Q_TEMP_V_q6 { I 16 vector } Q_TEMP_V_address7 { O 6 vector } Q_TEMP_V_ce7 { O 1 bit } Q_TEMP_V_q7 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_TEMP_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1062 \
    name noise_out \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_noise_out \
    op interface \
    ports { noise_out_dout { I 16 vector } noise_out_empty_n { I 1 bit } noise_out_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1063 \
    name MULQ_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_MULQ_out \
    op interface \
    ports { MULQ_out_din { O 16 vector } MULQ_out_full_n { I 1 bit } MULQ_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName TOP_flow_control_loop_pipe_sequential_init_U
set CompName TOP_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix TOP_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


