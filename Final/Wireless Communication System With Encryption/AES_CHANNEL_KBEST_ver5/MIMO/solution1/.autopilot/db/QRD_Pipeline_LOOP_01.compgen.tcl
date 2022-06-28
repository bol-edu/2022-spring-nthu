# This script segment is generated automatically by AutoPilot

set id 190
set name TOP_mux_42_16_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set din2_width 16
set din2_signed 0
set din3_width 16
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 16
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name HH_V_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HH_V_46 \
    op interface \
    ports { HH_V_46 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name HH_V_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HH_V_47 \
    op interface \
    ports { HH_V_47 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name HH_V_81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HH_V_81 \
    op interface \
    ports { HH_V_81 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name HH_V_83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HH_V_83 \
    op interface \
    ports { HH_V_83 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name empty_105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_105 \
    op interface \
    ports { empty_105 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name HH_V_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HH_V_94 \
    op interface \
    ports { HH_V_94 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name HH_V_95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HH_V_95 \
    op interface \
    ports { HH_V_95 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name HH_V_97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HH_V_97 \
    op interface \
    ports { HH_V_97 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name HH_V_102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HH_V_102 \
    op interface \
    ports { HH_V_102 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name HH_V_103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HH_V_103 \
    op interface \
    ports { HH_V_103 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name empty_106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_106 \
    op interface \
    ports { empty_106 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name HH_V_105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HH_V_105 \
    op interface \
    ports { HH_V_105 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name empty_107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_107 \
    op interface \
    ports { empty_107 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name HH_V_85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HH_V_85 \
    op interface \
    ports { HH_V_85 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name HH_V_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HH_V_87 \
    op interface \
    ports { HH_V_87 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name HH_V_89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HH_V_89 \
    op interface \
    ports { HH_V_89 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name empty_108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_108 \
    op interface \
    ports { empty_108 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name empty_109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_109 \
    op interface \
    ports { empty_109 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name HH_V_99 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HH_V_99 \
    op interface \
    ports { HH_V_99 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name HH_V_101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HH_V_101 \
    op interface \
    ports { HH_V_101 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name empty_110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_110 \
    op interface \
    ports { empty_110 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name empty_111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_111 \
    op interface \
    ports { empty_111 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name empty_112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_112 \
    op interface \
    ports { empty_112 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name HH_V_104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HH_V_104 \
    op interface \
    ports { HH_V_104 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name empty_113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_113 \
    op interface \
    ports { empty_113 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name empty_114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_114 \
    op interface \
    ports { empty_114 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name p_0_0_033131932_lcssa2062_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131932_lcssa2062_i_out \
    op interface \
    ports { p_0_0_033131932_lcssa2062_i_out { O 16 vector } p_0_0_033131932_lcssa2062_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name p_0_0_033131929_lcssa2060_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131929_lcssa2060_i_out \
    op interface \
    ports { p_0_0_033131929_lcssa2060_i_out { O 16 vector } p_0_0_033131929_lcssa2060_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name p_0_0_033131926_lcssa2058_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131926_lcssa2058_i_out \
    op interface \
    ports { p_0_0_033131926_lcssa2058_i_out { O 16 vector } p_0_0_033131926_lcssa2058_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name p_0_0_033131923_lcssa2056_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131923_lcssa2056_i_out \
    op interface \
    ports { p_0_0_033131923_lcssa2056_i_out { O 16 vector } p_0_0_033131923_lcssa2056_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name p_0_0_033131921_lcssa2054_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131921_lcssa2054_i_out \
    op interface \
    ports { p_0_0_033131921_lcssa2054_i_out { O 16 vector } p_0_0_033131921_lcssa2054_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name p_0_0_033131918_lcssa2052_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131918_lcssa2052_i_out \
    op interface \
    ports { p_0_0_033131918_lcssa2052_i_out { O 16 vector } p_0_0_033131918_lcssa2052_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name p_0_0_033131915_lcssa2050_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131915_lcssa2050_i_out \
    op interface \
    ports { p_0_0_033131915_lcssa2050_i_out { O 16 vector } p_0_0_033131915_lcssa2050_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name p_0_0_033131912_lcssa2048_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131912_lcssa2048_i_out \
    op interface \
    ports { p_0_0_033131912_lcssa2048_i_out { O 16 vector } p_0_0_033131912_lcssa2048_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name p_0_0_033131908_lcssa2046_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131908_lcssa2046_i_out \
    op interface \
    ports { p_0_0_033131908_lcssa2046_i_out { O 16 vector } p_0_0_033131908_lcssa2046_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name p_0_0_033131905_lcssa2044_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131905_lcssa2044_i_out \
    op interface \
    ports { p_0_0_033131905_lcssa2044_i_out { O 16 vector } p_0_0_033131905_lcssa2044_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name p_0_0_033131902_lcssa2042_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131902_lcssa2042_i_out \
    op interface \
    ports { p_0_0_033131902_lcssa2042_i_out { O 16 vector } p_0_0_033131902_lcssa2042_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name p_0_0_033131899_lcssa2040_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131899_lcssa2040_i_out \
    op interface \
    ports { p_0_0_033131899_lcssa2040_i_out { O 16 vector } p_0_0_033131899_lcssa2040_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name p_0_0_033131896_lcssa2038_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131896_lcssa2038_i_out \
    op interface \
    ports { p_0_0_033131896_lcssa2038_i_out { O 16 vector } p_0_0_033131896_lcssa2038_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name p_0_0_033131893_lcssa2036_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131893_lcssa2036_i_out \
    op interface \
    ports { p_0_0_033131893_lcssa2036_i_out { O 16 vector } p_0_0_033131893_lcssa2036_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name p_0_0_033131890_lcssa2034_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131890_lcssa2034_i_out \
    op interface \
    ports { p_0_0_033131890_lcssa2034_i_out { O 16 vector } p_0_0_033131890_lcssa2034_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name p_0_0_033131887_lcssa2032_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131887_lcssa2032_i_out \
    op interface \
    ports { p_0_0_033131887_lcssa2032_i_out { O 16 vector } p_0_0_033131887_lcssa2032_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name conv_i_i_i23841884_lcssa2030_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841884_lcssa2030_i_out \
    op interface \
    ports { conv_i_i_i23841884_lcssa2030_i_out { O 16 vector } conv_i_i_i23841884_lcssa2030_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name conv_i_i_i23841881_lcssa2028_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841881_lcssa2028_i_out \
    op interface \
    ports { conv_i_i_i23841881_lcssa2028_i_out { O 16 vector } conv_i_i_i23841881_lcssa2028_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name conv_i_i_i23841878_lcssa2026_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841878_lcssa2026_i_out \
    op interface \
    ports { conv_i_i_i23841878_lcssa2026_i_out { O 16 vector } conv_i_i_i23841878_lcssa2026_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name conv_i_i_i23841875_lcssa2024_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841875_lcssa2024_i_out \
    op interface \
    ports { conv_i_i_i23841875_lcssa2024_i_out { O 16 vector } conv_i_i_i23841875_lcssa2024_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name conv_i_i_i23841873_lcssa2022_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841873_lcssa2022_i_out \
    op interface \
    ports { conv_i_i_i23841873_lcssa2022_i_out { O 16 vector } conv_i_i_i23841873_lcssa2022_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name conv_i_i_i23841870_lcssa2020_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841870_lcssa2020_i_out \
    op interface \
    ports { conv_i_i_i23841870_lcssa2020_i_out { O 16 vector } conv_i_i_i23841870_lcssa2020_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name conv_i_i_i23841867_lcssa2018_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841867_lcssa2018_i_out \
    op interface \
    ports { conv_i_i_i23841867_lcssa2018_i_out { O 16 vector } conv_i_i_i23841867_lcssa2018_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name conv_i_i_i23841864_lcssa2016_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841864_lcssa2016_i_out \
    op interface \
    ports { conv_i_i_i23841864_lcssa2016_i_out { O 16 vector } conv_i_i_i23841864_lcssa2016_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name conv_i_i_i23841860_lcssa2014_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841860_lcssa2014_i_out \
    op interface \
    ports { conv_i_i_i23841860_lcssa2014_i_out { O 16 vector } conv_i_i_i23841860_lcssa2014_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name conv_i_i_i23841857_lcssa2012_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841857_lcssa2012_i_out \
    op interface \
    ports { conv_i_i_i23841857_lcssa2012_i_out { O 16 vector } conv_i_i_i23841857_lcssa2012_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name conv_i_i_i23841854_lcssa2010_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841854_lcssa2010_i_out \
    op interface \
    ports { conv_i_i_i23841854_lcssa2010_i_out { O 16 vector } conv_i_i_i23841854_lcssa2010_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name conv_i_i_i23841851_lcssa2008_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841851_lcssa2008_i_out \
    op interface \
    ports { conv_i_i_i23841851_lcssa2008_i_out { O 16 vector } conv_i_i_i23841851_lcssa2008_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name conv_i_i_i23841848_lcssa2006_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841848_lcssa2006_i_out \
    op interface \
    ports { conv_i_i_i23841848_lcssa2006_i_out { O 16 vector } conv_i_i_i23841848_lcssa2006_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name conv_i_i_i23841845_lcssa2004_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841845_lcssa2004_i_out \
    op interface \
    ports { conv_i_i_i23841845_lcssa2004_i_out { O 16 vector } conv_i_i_i23841845_lcssa2004_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name conv_i_i_i23841842_lcssa2002_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841842_lcssa2002_i_out \
    op interface \
    ports { conv_i_i_i23841842_lcssa2002_i_out { O 16 vector } conv_i_i_i23841842_lcssa2002_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name conv_i_i_i23841839_lcssa2000_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841839_lcssa2000_i_out \
    op interface \
    ports { conv_i_i_i23841839_lcssa2000_i_out { O 16 vector } conv_i_i_i23841839_lcssa2000_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name p_0_0_033121836_lcssa1998_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121836_lcssa1998_i_out \
    op interface \
    ports { p_0_0_033121836_lcssa1998_i_out { O 16 vector } p_0_0_033121836_lcssa1998_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name p_0_0_033121833_lcssa1996_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121833_lcssa1996_i_out \
    op interface \
    ports { p_0_0_033121833_lcssa1996_i_out { O 16 vector } p_0_0_033121833_lcssa1996_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name p_0_0_033121830_lcssa1994_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121830_lcssa1994_i_out \
    op interface \
    ports { p_0_0_033121830_lcssa1994_i_out { O 16 vector } p_0_0_033121830_lcssa1994_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name p_0_0_033121827_lcssa1992_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121827_lcssa1992_i_out \
    op interface \
    ports { p_0_0_033121827_lcssa1992_i_out { O 16 vector } p_0_0_033121827_lcssa1992_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name p_0_0_033121825_lcssa1990_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121825_lcssa1990_i_out \
    op interface \
    ports { p_0_0_033121825_lcssa1990_i_out { O 16 vector } p_0_0_033121825_lcssa1990_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name p_0_0_033121822_lcssa1988_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121822_lcssa1988_i_out \
    op interface \
    ports { p_0_0_033121822_lcssa1988_i_out { O 16 vector } p_0_0_033121822_lcssa1988_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name p_0_0_033121819_lcssa1986_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121819_lcssa1986_i_out \
    op interface \
    ports { p_0_0_033121819_lcssa1986_i_out { O 16 vector } p_0_0_033121819_lcssa1986_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name p_0_0_033121816_lcssa1984_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121816_lcssa1984_i_out \
    op interface \
    ports { p_0_0_033121816_lcssa1984_i_out { O 16 vector } p_0_0_033121816_lcssa1984_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name p_0_0_033121812_lcssa1982_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121812_lcssa1982_i_out \
    op interface \
    ports { p_0_0_033121812_lcssa1982_i_out { O 16 vector } p_0_0_033121812_lcssa1982_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name p_0_0_033121809_lcssa1980_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121809_lcssa1980_i_out \
    op interface \
    ports { p_0_0_033121809_lcssa1980_i_out { O 16 vector } p_0_0_033121809_lcssa1980_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name p_0_0_033121806_lcssa1978_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121806_lcssa1978_i_out \
    op interface \
    ports { p_0_0_033121806_lcssa1978_i_out { O 16 vector } p_0_0_033121806_lcssa1978_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name p_0_0_033121803_lcssa1976_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121803_lcssa1976_i_out \
    op interface \
    ports { p_0_0_033121803_lcssa1976_i_out { O 16 vector } p_0_0_033121803_lcssa1976_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name p_0_0_033121800_lcssa1974_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121800_lcssa1974_i_out \
    op interface \
    ports { p_0_0_033121800_lcssa1974_i_out { O 16 vector } p_0_0_033121800_lcssa1974_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name p_0_0_033121797_lcssa1972_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121797_lcssa1972_i_out \
    op interface \
    ports { p_0_0_033121797_lcssa1972_i_out { O 16 vector } p_0_0_033121797_lcssa1972_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name p_0_0_033121794_lcssa1970_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121794_lcssa1970_i_out \
    op interface \
    ports { p_0_0_033121794_lcssa1970_i_out { O 16 vector } p_0_0_033121794_lcssa1970_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name p_0_0_033121791_lcssa1968_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121791_lcssa1968_i_out \
    op interface \
    ports { p_0_0_033121791_lcssa1968_i_out { O 16 vector } p_0_0_033121791_lcssa1968_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name p_0_0_033131788_lcssa1966_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131788_lcssa1966_i_out \
    op interface \
    ports { p_0_0_033131788_lcssa1966_i_out { O 16 vector } p_0_0_033131788_lcssa1966_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name p_0_0_033131785_lcssa1964_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131785_lcssa1964_i_out \
    op interface \
    ports { p_0_0_033131785_lcssa1964_i_out { O 16 vector } p_0_0_033131785_lcssa1964_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name p_0_0_033131782_lcssa1962_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131782_lcssa1962_i_out \
    op interface \
    ports { p_0_0_033131782_lcssa1962_i_out { O 16 vector } p_0_0_033131782_lcssa1962_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name p_0_0_033131779_lcssa1960_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131779_lcssa1960_i_out \
    op interface \
    ports { p_0_0_033131779_lcssa1960_i_out { O 16 vector } p_0_0_033131779_lcssa1960_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name p_0_0_033131777_lcssa1958_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131777_lcssa1958_i_out \
    op interface \
    ports { p_0_0_033131777_lcssa1958_i_out { O 16 vector } p_0_0_033131777_lcssa1958_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name p_0_0_033131774_lcssa1956_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131774_lcssa1956_i_out \
    op interface \
    ports { p_0_0_033131774_lcssa1956_i_out { O 16 vector } p_0_0_033131774_lcssa1956_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name p_0_0_033131771_lcssa1954_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131771_lcssa1954_i_out \
    op interface \
    ports { p_0_0_033131771_lcssa1954_i_out { O 16 vector } p_0_0_033131771_lcssa1954_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name p_0_0_033131768_lcssa1952_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131768_lcssa1952_i_out \
    op interface \
    ports { p_0_0_033131768_lcssa1952_i_out { O 16 vector } p_0_0_033131768_lcssa1952_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name p_0_0_033131764_lcssa1950_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131764_lcssa1950_i_out \
    op interface \
    ports { p_0_0_033131764_lcssa1950_i_out { O 16 vector } p_0_0_033131764_lcssa1950_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name p_0_0_033131761_lcssa1948_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131761_lcssa1948_i_out \
    op interface \
    ports { p_0_0_033131761_lcssa1948_i_out { O 16 vector } p_0_0_033131761_lcssa1948_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name p_0_0_033131758_lcssa1946_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131758_lcssa1946_i_out \
    op interface \
    ports { p_0_0_033131758_lcssa1946_i_out { O 16 vector } p_0_0_033131758_lcssa1946_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name p_0_0_033131755_lcssa1944_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131755_lcssa1944_i_out \
    op interface \
    ports { p_0_0_033131755_lcssa1944_i_out { O 16 vector } p_0_0_033131755_lcssa1944_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name p_0_0_033131752_lcssa1942_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131752_lcssa1942_i_out \
    op interface \
    ports { p_0_0_033131752_lcssa1942_i_out { O 16 vector } p_0_0_033131752_lcssa1942_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name p_0_0_033131749_lcssa1940_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131749_lcssa1940_i_out \
    op interface \
    ports { p_0_0_033131749_lcssa1940_i_out { O 16 vector } p_0_0_033131749_lcssa1940_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name p_0_0_033131746_lcssa1938_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131746_lcssa1938_i_out \
    op interface \
    ports { p_0_0_033131746_lcssa1938_i_out { O 16 vector } p_0_0_033131746_lcssa1938_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name p_0_0_033131743_lcssa1936_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131743_lcssa1936_i_out \
    op interface \
    ports { p_0_0_033131743_lcssa1936_i_out { O 16 vector } p_0_0_033131743_lcssa1936_i_out_ap_vld { O 1 bit } } \
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


