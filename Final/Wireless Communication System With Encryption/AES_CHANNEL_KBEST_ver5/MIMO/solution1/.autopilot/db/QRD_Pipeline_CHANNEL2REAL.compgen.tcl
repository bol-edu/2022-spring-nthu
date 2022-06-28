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
    id 128 \
    name Y_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Y_V_1 \
    op interface \
    ports { Y_V_1_address0 { O 3 vector } Y_V_1_ce0 { O 1 bit } Y_V_1_we0 { O 1 bit } Y_V_1_d0 { O 16 vector } Y_V_1_address1 { O 3 vector } Y_V_1_ce1 { O 1 bit } Y_V_1_we1 { O 1 bit } Y_V_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Y_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name Y_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Y_V \
    op interface \
    ports { Y_V_address0 { O 3 vector } Y_V_ce0 { O 1 bit } Y_V_we0 { O 1 bit } Y_V_d0 { O 16 vector } Y_V_address1 { O 3 vector } Y_V_ce1 { O 1 bit } Y_V_we1 { O 1 bit } Y_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Y_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name Y_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Y_V_2 \
    op interface \
    ports { Y_V_2_address0 { O 3 vector } Y_V_2_ce0 { O 1 bit } Y_V_2_we0 { O 1 bit } Y_V_2_d0 { O 16 vector } Y_V_2_address1 { O 3 vector } Y_V_2_ce1 { O 1 bit } Y_V_2_we1 { O 1 bit } Y_V_2_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Y_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
    name Y_V_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Y_V_4 \
    op interface \
    ports { Y_V_4_address0 { O 3 vector } Y_V_4_ce0 { O 1 bit } Y_V_4_we0 { O 1 bit } Y_V_4_d0 { O 16 vector } Y_V_4_address1 { O 3 vector } Y_V_4_ce1 { O 1 bit } Y_V_4_we1 { O 1 bit } Y_V_4_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Y_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name Y_V_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Y_V_6 \
    op interface \
    ports { Y_V_6_address0 { O 3 vector } Y_V_6_ce0 { O 1 bit } Y_V_6_we0 { O 1 bit } Y_V_6_d0 { O 16 vector } Y_V_6_address1 { O 3 vector } Y_V_6_ce1 { O 1 bit } Y_V_6_we1 { O 1 bit } Y_V_6_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Y_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 133 \
    name Y_V_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Y_V_3 \
    op interface \
    ports { Y_V_3_address0 { O 3 vector } Y_V_3_ce0 { O 1 bit } Y_V_3_we0 { O 1 bit } Y_V_3_d0 { O 16 vector } Y_V_3_address1 { O 3 vector } Y_V_3_ce1 { O 1 bit } Y_V_3_we1 { O 1 bit } Y_V_3_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Y_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name Y_V_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Y_V_5 \
    op interface \
    ports { Y_V_5_address0 { O 3 vector } Y_V_5_ce0 { O 1 bit } Y_V_5_we0 { O 1 bit } Y_V_5_d0 { O 16 vector } Y_V_5_address1 { O 3 vector } Y_V_5_ce1 { O 1 bit } Y_V_5_we1 { O 1 bit } Y_V_5_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Y_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name Y_V_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Y_V_7 \
    op interface \
    ports { Y_V_7_address0 { O 3 vector } Y_V_7_ce0 { O 1 bit } Y_V_7_we0 { O 1 bit } Y_V_7_d0 { O 16 vector } Y_V_7_address1 { O 3 vector } Y_V_7_ce1 { O 1 bit } Y_V_7_we1 { O 1 bit } Y_V_7_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Y_V_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name p_0_0_036012404_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036012404_i_out \
    op interface \
    ports { p_0_0_036012404_i_out { O 16 vector } p_0_0_036012404_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name p_0_0_036012400_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036012400_i_out \
    op interface \
    ports { p_0_0_036012400_i_out { O 16 vector } p_0_0_036012400_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name p_0_0_036012396_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036012396_i_out \
    op interface \
    ports { p_0_0_036012396_i_out { O 16 vector } p_0_0_036012396_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name p_0_0_036012392_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036012392_i_out \
    op interface \
    ports { p_0_0_036012392_i_out { O 16 vector } p_0_0_036012392_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name p_0_0_036012386_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036012386_i_out \
    op interface \
    ports { p_0_0_036012386_i_out { O 16 vector } p_0_0_036012386_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name p_0_0_036012382_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036012382_i_out \
    op interface \
    ports { p_0_0_036012382_i_out { O 16 vector } p_0_0_036012382_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name p_0_0_036012378_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036012378_i_out \
    op interface \
    ports { p_0_0_036012378_i_out { O 16 vector } p_0_0_036012378_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name p_0_0_036012374_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036012374_i_out \
    op interface \
    ports { p_0_0_036012374_i_out { O 16 vector } p_0_0_036012374_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name p_0_0_036012372_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036012372_i_out \
    op interface \
    ports { p_0_0_036012372_i_out { O 16 vector } p_0_0_036012372_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name p_0_0_036012368_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036012368_i_out \
    op interface \
    ports { p_0_0_036012368_i_out { O 16 vector } p_0_0_036012368_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name p_0_0_036012364_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036012364_i_out \
    op interface \
    ports { p_0_0_036012364_i_out { O 16 vector } p_0_0_036012364_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name p_0_0_036012360_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036012360_i_out \
    op interface \
    ports { p_0_0_036012360_i_out { O 16 vector } p_0_0_036012360_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name p_0_0_036012356_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036012356_i_out \
    op interface \
    ports { p_0_0_036012356_i_out { O 16 vector } p_0_0_036012356_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name p_0_0_036012352_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036012352_i_out \
    op interface \
    ports { p_0_0_036012352_i_out { O 16 vector } p_0_0_036012352_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name p_0_0_036012348_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036012348_i_out \
    op interface \
    ports { p_0_0_036012348_i_out { O 16 vector } p_0_0_036012348_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name p_0_0_036012344_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036012344_i_out \
    op interface \
    ports { p_0_0_036012344_i_out { O 16 vector } p_0_0_036012344_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name p_0_0_036002340_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036002340_i_out \
    op interface \
    ports { p_0_0_036002340_i_out { O 16 vector } p_0_0_036002340_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name p_0_0_036002336_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036002336_i_out \
    op interface \
    ports { p_0_0_036002336_i_out { O 16 vector } p_0_0_036002336_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name p_0_0_036002332_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036002332_i_out \
    op interface \
    ports { p_0_0_036002332_i_out { O 16 vector } p_0_0_036002332_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name p_0_0_036002328_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036002328_i_out \
    op interface \
    ports { p_0_0_036002328_i_out { O 16 vector } p_0_0_036002328_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name p_0_0_036002322_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036002322_i_out \
    op interface \
    ports { p_0_0_036002322_i_out { O 16 vector } p_0_0_036002322_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name p_0_0_036002318_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036002318_i_out \
    op interface \
    ports { p_0_0_036002318_i_out { O 16 vector } p_0_0_036002318_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name p_0_0_036002314_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036002314_i_out \
    op interface \
    ports { p_0_0_036002314_i_out { O 16 vector } p_0_0_036002314_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name p_0_0_036002310_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036002310_i_out \
    op interface \
    ports { p_0_0_036002310_i_out { O 16 vector } p_0_0_036002310_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name p_0_0_036002308_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036002308_i_out \
    op interface \
    ports { p_0_0_036002308_i_out { O 16 vector } p_0_0_036002308_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name p_0_0_036002304_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036002304_i_out \
    op interface \
    ports { p_0_0_036002304_i_out { O 16 vector } p_0_0_036002304_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name p_0_0_036002300_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036002300_i_out \
    op interface \
    ports { p_0_0_036002300_i_out { O 16 vector } p_0_0_036002300_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name p_0_0_036002296_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036002296_i_out \
    op interface \
    ports { p_0_0_036002296_i_out { O 16 vector } p_0_0_036002296_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name p_0_0_036002292_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036002292_i_out \
    op interface \
    ports { p_0_0_036002292_i_out { O 16 vector } p_0_0_036002292_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name p_0_0_036002288_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036002288_i_out \
    op interface \
    ports { p_0_0_036002288_i_out { O 16 vector } p_0_0_036002288_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name p_0_0_036002284_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036002284_i_out \
    op interface \
    ports { p_0_0_036002284_i_out { O 16 vector } p_0_0_036002284_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name p_0_0_036002280_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_036002280_i_out \
    op interface \
    ports { p_0_0_036002280_i_out { O 16 vector } p_0_0_036002280_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name H_real_spl1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_H_real_spl1 \
    op interface \
    ports { H_real_spl1_dout { I 16 vector } H_real_spl1_empty_n { I 1 bit } H_real_spl1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name H_imag_spl1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_H_imag_spl1 \
    op interface \
    ports { H_imag_spl1_dout { I 16 vector } H_imag_spl1_empty_n { I 1 bit } H_imag_spl1_read { O 1 bit } } \
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


