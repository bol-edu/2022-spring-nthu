# This script segment is generated automatically by AutoPilot

set id 1208
set name TOP_mux_32_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 2
set din3_signed 0
set dout_width 32
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

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1257 \
    name PED_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename PED_V \
    op interface \
    ports { PED_V_address0 { O 2 vector } PED_V_ce0 { O 1 bit } PED_V_we0 { O 1 bit } PED_V_d0 { O 16 vector } PED_V_q0 { I 16 vector } PED_V_address1 { O 2 vector } PED_V_ce1 { O 1 bit } PED_V_we1 { O 1 bit } PED_V_d1 { O 16 vector } PED_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'PED_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1225 \
    name p_reload247 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload247 \
    op interface \
    ports { p_reload247 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1226 \
    name p_reload253 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload253 \
    op interface \
    ports { p_reload253 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1227 \
    name p_reload252 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload252 \
    op interface \
    ports { p_reload252 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1228 \
    name p_reload251 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload251 \
    op interface \
    ports { p_reload251 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1229 \
    name p_reload250 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload250 \
    op interface \
    ports { p_reload250 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1230 \
    name p_reload249 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload249 \
    op interface \
    ports { p_reload249 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1231 \
    name p_reload248 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload248 \
    op interface \
    ports { p_reload248 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1232 \
    name select_ln42_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln42_58 \
    op interface \
    ports { select_ln42_58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1233 \
    name p_reload254 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload254 \
    op interface \
    ports { p_reload254 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1234 \
    name p_reload260 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload260 \
    op interface \
    ports { p_reload260 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1235 \
    name p_reload259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload259 \
    op interface \
    ports { p_reload259 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1236 \
    name p_reload258 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload258 \
    op interface \
    ports { p_reload258 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1237 \
    name p_reload257 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload257 \
    op interface \
    ports { p_reload257 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1238 \
    name p_reload256 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload256 \
    op interface \
    ports { p_reload256 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1239 \
    name p_reload255 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload255 \
    op interface \
    ports { p_reload255 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1240 \
    name select_ln42_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln42_18 \
    op interface \
    ports { select_ln42_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1241 \
    name p_reload261 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload261 \
    op interface \
    ports { p_reload261 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1242 \
    name p_reload267 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload267 \
    op interface \
    ports { p_reload267 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1243 \
    name p_reload266 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload266 \
    op interface \
    ports { p_reload266 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1244 \
    name p_reload265 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload265 \
    op interface \
    ports { p_reload265 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1245 \
    name p_reload264 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload264 \
    op interface \
    ports { p_reload264 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1246 \
    name p_reload263 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload263 \
    op interface \
    ports { p_reload263 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1247 \
    name p_reload262 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload262 \
    op interface \
    ports { p_reload262 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1248 \
    name select_ln42_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln42_39 \
    op interface \
    ports { select_ln42_39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1249 \
    name p_reload268 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload268 \
    op interface \
    ports { p_reload268 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1250 \
    name p_reload274 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload274 \
    op interface \
    ports { p_reload274 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1251 \
    name p_reload273 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload273 \
    op interface \
    ports { p_reload273 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1252 \
    name p_reload272 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload272 \
    op interface \
    ports { p_reload272 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1253 \
    name p_reload271 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload271 \
    op interface \
    ports { p_reload271 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1254 \
    name p_reload270 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload270 \
    op interface \
    ports { p_reload270 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1255 \
    name p_reload269 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload269 \
    op interface \
    ports { p_reload269 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1256 \
    name select_ln42_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln42_37 \
    op interface \
    ports { select_ln42_37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1258 \
    name conv_i2_i_i349_lcssa447_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i349_lcssa447_i_out \
    op interface \
    ports { conv_i2_i_i349_lcssa447_i_out { O 32 vector } conv_i2_i_i349_lcssa447_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1259 \
    name conv_i2_i_i345_lcssa444_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i345_lcssa444_i_out \
    op interface \
    ports { conv_i2_i_i345_lcssa444_i_out { O 32 vector } conv_i2_i_i345_lcssa444_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1260 \
    name conv_i2_i_i341_lcssa441_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i341_lcssa441_i_out \
    op interface \
    ports { conv_i2_i_i341_lcssa441_i_out { O 32 vector } conv_i2_i_i341_lcssa441_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1261 \
    name conv_i2_i_i337_lcssa438_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i337_lcssa438_i_out \
    op interface \
    ports { conv_i2_i_i337_lcssa438_i_out { O 32 vector } conv_i2_i_i337_lcssa438_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1262 \
    name conv_i2_i_i333_lcssa435_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i333_lcssa435_i_out \
    op interface \
    ports { conv_i2_i_i333_lcssa435_i_out { O 32 vector } conv_i2_i_i333_lcssa435_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1263 \
    name conv_i2_i_i329_lcssa432_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i329_lcssa432_i_out \
    op interface \
    ports { conv_i2_i_i329_lcssa432_i_out { O 32 vector } conv_i2_i_i329_lcssa432_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1264 \
    name conv_i2_i_i325_lcssa429_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i325_lcssa429_i_out \
    op interface \
    ports { conv_i2_i_i325_lcssa429_i_out { O 32 vector } conv_i2_i_i325_lcssa429_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1265 \
    name conv_i2_i_i321_lcssa426_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i321_lcssa426_i_out \
    op interface \
    ports { conv_i2_i_i321_lcssa426_i_out_i { I 32 vector } conv_i2_i_i321_lcssa426_i_out_o { O 32 vector } conv_i2_i_i321_lcssa426_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1266 \
    name conv_i2_i_i316_lcssa423_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i316_lcssa423_i_out \
    op interface \
    ports { conv_i2_i_i316_lcssa423_i_out { O 32 vector } conv_i2_i_i316_lcssa423_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1267 \
    name conv_i2_i_i310_lcssa420_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i310_lcssa420_i_out \
    op interface \
    ports { conv_i2_i_i310_lcssa420_i_out { O 32 vector } conv_i2_i_i310_lcssa420_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1268 \
    name conv_i2_i_i304_lcssa417_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i304_lcssa417_i_out \
    op interface \
    ports { conv_i2_i_i304_lcssa417_i_out { O 32 vector } conv_i2_i_i304_lcssa417_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1269 \
    name conv_i2_i_i298_lcssa414_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i298_lcssa414_i_out \
    op interface \
    ports { conv_i2_i_i298_lcssa414_i_out { O 32 vector } conv_i2_i_i298_lcssa414_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1270 \
    name conv_i2_i_i292_lcssa411_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i292_lcssa411_i_out \
    op interface \
    ports { conv_i2_i_i292_lcssa411_i_out { O 32 vector } conv_i2_i_i292_lcssa411_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1271 \
    name conv_i2_i_i286_lcssa408_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i286_lcssa408_i_out \
    op interface \
    ports { conv_i2_i_i286_lcssa408_i_out { O 32 vector } conv_i2_i_i286_lcssa408_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1272 \
    name conv_i2_i_i280_lcssa405_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i280_lcssa405_i_out \
    op interface \
    ports { conv_i2_i_i280_lcssa405_i_out { O 32 vector } conv_i2_i_i280_lcssa405_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1273 \
    name conv_i2_i_i274_lcssa402_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i274_lcssa402_i_out \
    op interface \
    ports { conv_i2_i_i274_lcssa402_i_out_i { I 32 vector } conv_i2_i_i274_lcssa402_i_out_o { O 32 vector } conv_i2_i_i274_lcssa402_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1274 \
    name conv_i2_i_i269_lcssa399_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i269_lcssa399_i_out \
    op interface \
    ports { conv_i2_i_i269_lcssa399_i_out { O 32 vector } conv_i2_i_i269_lcssa399_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1275 \
    name conv_i2_i_i263_lcssa396_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i263_lcssa396_i_out \
    op interface \
    ports { conv_i2_i_i263_lcssa396_i_out { O 32 vector } conv_i2_i_i263_lcssa396_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1276 \
    name conv_i2_i_i257_lcssa393_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i257_lcssa393_i_out \
    op interface \
    ports { conv_i2_i_i257_lcssa393_i_out { O 32 vector } conv_i2_i_i257_lcssa393_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1277 \
    name conv_i2_i_i251_lcssa390_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i251_lcssa390_i_out \
    op interface \
    ports { conv_i2_i_i251_lcssa390_i_out { O 32 vector } conv_i2_i_i251_lcssa390_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1278 \
    name conv_i2_i_i245_lcssa387_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i245_lcssa387_i_out \
    op interface \
    ports { conv_i2_i_i245_lcssa387_i_out { O 32 vector } conv_i2_i_i245_lcssa387_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1279 \
    name conv_i2_i_i239_lcssa384_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i239_lcssa384_i_out \
    op interface \
    ports { conv_i2_i_i239_lcssa384_i_out { O 32 vector } conv_i2_i_i239_lcssa384_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1280 \
    name conv_i2_i_i233_lcssa381_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i233_lcssa381_i_out \
    op interface \
    ports { conv_i2_i_i233_lcssa381_i_out { O 32 vector } conv_i2_i_i233_lcssa381_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1281 \
    name conv_i2_i_i227_lcssa378_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i2_i_i227_lcssa378_i_out \
    op interface \
    ports { conv_i2_i_i227_lcssa378_i_out_i { I 32 vector } conv_i2_i_i227_lcssa378_i_out_o { O 32 vector } conv_i2_i_i227_lcssa378_i_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1282 \
    name p_lcssa226375_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_lcssa226375_i_out \
    op interface \
    ports { p_lcssa226375_i_out { O 32 vector } p_lcssa226375_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1283 \
    name p_lcssa224372_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_lcssa224372_i_out \
    op interface \
    ports { p_lcssa224372_i_out { O 32 vector } p_lcssa224372_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1284 \
    name p_lcssa222369_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_lcssa222369_i_out \
    op interface \
    ports { p_lcssa222369_i_out { O 32 vector } p_lcssa222369_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1285 \
    name p_lcssa220366_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_lcssa220366_i_out \
    op interface \
    ports { p_lcssa220366_i_out { O 32 vector } p_lcssa220366_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1286 \
    name p_lcssa218363_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_lcssa218363_i_out \
    op interface \
    ports { p_lcssa218363_i_out { O 32 vector } p_lcssa218363_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1287 \
    name p_lcssa216360_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_lcssa216360_i_out \
    op interface \
    ports { p_lcssa216360_i_out { O 32 vector } p_lcssa216360_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1288 \
    name p_lcssa214357_i_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_lcssa214357_i_out \
    op interface \
    ports { p_lcssa214357_i_out { O 32 vector } p_lcssa214357_i_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1289 \
    name p_lcssa212354_i_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_lcssa212354_i_out \
    op interface \
    ports { p_lcssa212354_i_out_i { I 32 vector } p_lcssa212354_i_out_o { O 32 vector } p_lcssa212354_i_out_o_ap_vld { O 1 bit } } \
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


