# This script segment is generated automatically by AutoPilot

set id 290
set name TOP_mux_84_16_1_1
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
set din4_width 16
set din4_signed 0
set din5_width 16
set din5_signed 0
set din6_width 16
set din6_signed 0
set din7_width 16
set din7_signed 0
set din8_width 4
set din8_signed 0
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
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
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
    id 300 \
    name p_0_0_033131774_lcssa1956_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131774_lcssa1956_i_reload \
    op interface \
    ports { p_0_0_033131774_lcssa1956_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name conv_i_i_i23841870_lcssa2020_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841870_lcssa2020_i_reload \
    op interface \
    ports { conv_i_i_i23841870_lcssa2020_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name p_0_0_033131771_lcssa1954_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131771_lcssa1954_i_reload \
    op interface \
    ports { p_0_0_033131771_lcssa1954_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name conv_i_i_i23841867_lcssa2018_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841867_lcssa2018_i_reload \
    op interface \
    ports { conv_i_i_i23841867_lcssa2018_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name p_0_0_033131768_lcssa1952_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131768_lcssa1952_i_reload \
    op interface \
    ports { p_0_0_033131768_lcssa1952_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name conv_i_i_i23841864_lcssa2016_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841864_lcssa2016_i_reload \
    op interface \
    ports { conv_i_i_i23841864_lcssa2016_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name p_0_0_033131777_lcssa1958_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131777_lcssa1958_i_reload \
    op interface \
    ports { p_0_0_033131777_lcssa1958_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name conv_i_i_i23841873_lcssa2022_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841873_lcssa2022_i_reload \
    op interface \
    ports { conv_i_i_i23841873_lcssa2022_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name p_0_0_033121822_lcssa1988_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121822_lcssa1988_i_reload \
    op interface \
    ports { p_0_0_033121822_lcssa1988_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name p_0_0_033131918_lcssa2052_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131918_lcssa2052_i_reload \
    op interface \
    ports { p_0_0_033131918_lcssa2052_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name p_0_0_033121819_lcssa1986_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121819_lcssa1986_i_reload \
    op interface \
    ports { p_0_0_033121819_lcssa1986_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name p_0_0_033131915_lcssa2050_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131915_lcssa2050_i_reload \
    op interface \
    ports { p_0_0_033131915_lcssa2050_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name p_0_0_033121816_lcssa1984_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121816_lcssa1984_i_reload \
    op interface \
    ports { p_0_0_033121816_lcssa1984_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name p_0_0_033131912_lcssa2048_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131912_lcssa2048_i_reload \
    op interface \
    ports { p_0_0_033131912_lcssa2048_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name p_0_0_033121825_lcssa1990_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121825_lcssa1990_i_reload \
    op interface \
    ports { p_0_0_033121825_lcssa1990_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name p_0_0_033131921_lcssa2054_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131921_lcssa2054_i_reload \
    op interface \
    ports { p_0_0_033131921_lcssa2054_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name p_0_0_033131761_lcssa1948_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131761_lcssa1948_i_reload \
    op interface \
    ports { p_0_0_033131761_lcssa1948_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name conv_i_i_i23841857_lcssa2012_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841857_lcssa2012_i_reload \
    op interface \
    ports { conv_i_i_i23841857_lcssa2012_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name p_0_0_033131758_lcssa1946_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131758_lcssa1946_i_reload \
    op interface \
    ports { p_0_0_033131758_lcssa1946_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name conv_i_i_i23841854_lcssa2010_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841854_lcssa2010_i_reload \
    op interface \
    ports { conv_i_i_i23841854_lcssa2010_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name p_0_0_033131755_lcssa1944_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131755_lcssa1944_i_reload \
    op interface \
    ports { p_0_0_033131755_lcssa1944_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name conv_i_i_i23841851_lcssa2008_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841851_lcssa2008_i_reload \
    op interface \
    ports { conv_i_i_i23841851_lcssa2008_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name p_0_0_033131764_lcssa1950_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131764_lcssa1950_i_reload \
    op interface \
    ports { p_0_0_033131764_lcssa1950_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name conv_i_i_i23841860_lcssa2014_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841860_lcssa2014_i_reload \
    op interface \
    ports { conv_i_i_i23841860_lcssa2014_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name p_0_0_033121809_lcssa1980_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121809_lcssa1980_i_reload \
    op interface \
    ports { p_0_0_033121809_lcssa1980_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name p_0_0_033131905_lcssa2044_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131905_lcssa2044_i_reload \
    op interface \
    ports { p_0_0_033131905_lcssa2044_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name p_0_0_033121806_lcssa1978_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121806_lcssa1978_i_reload \
    op interface \
    ports { p_0_0_033121806_lcssa1978_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name p_0_0_033131902_lcssa2042_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131902_lcssa2042_i_reload \
    op interface \
    ports { p_0_0_033131902_lcssa2042_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name p_0_0_033121803_lcssa1976_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121803_lcssa1976_i_reload \
    op interface \
    ports { p_0_0_033121803_lcssa1976_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name p_0_0_033131899_lcssa2040_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131899_lcssa2040_i_reload \
    op interface \
    ports { p_0_0_033131899_lcssa2040_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name p_0_0_033121812_lcssa1982_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121812_lcssa1982_i_reload \
    op interface \
    ports { p_0_0_033121812_lcssa1982_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name p_0_0_033131908_lcssa2046_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131908_lcssa2046_i_reload \
    op interface \
    ports { p_0_0_033131908_lcssa2046_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name p_0_0_033131749_lcssa1940_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131749_lcssa1940_i_reload \
    op interface \
    ports { p_0_0_033131749_lcssa1940_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name conv_i_i_i23841845_lcssa2004_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841845_lcssa2004_i_reload \
    op interface \
    ports { conv_i_i_i23841845_lcssa2004_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name p_0_0_033131746_lcssa1938_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131746_lcssa1938_i_reload \
    op interface \
    ports { p_0_0_033131746_lcssa1938_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name conv_i_i_i23841842_lcssa2002_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841842_lcssa2002_i_reload \
    op interface \
    ports { conv_i_i_i23841842_lcssa2002_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name p_0_0_033131743_lcssa1936_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131743_lcssa1936_i_reload \
    op interface \
    ports { p_0_0_033131743_lcssa1936_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name conv_i_i_i23841839_lcssa2000_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841839_lcssa2000_i_reload \
    op interface \
    ports { conv_i_i_i23841839_lcssa2000_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name p_0_0_033131752_lcssa1942_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131752_lcssa1942_i_reload \
    op interface \
    ports { p_0_0_033131752_lcssa1942_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name conv_i_i_i23841848_lcssa2006_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841848_lcssa2006_i_reload \
    op interface \
    ports { conv_i_i_i23841848_lcssa2006_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name p_0_0_033121797_lcssa1972_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121797_lcssa1972_i_reload \
    op interface \
    ports { p_0_0_033121797_lcssa1972_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name p_0_0_033131893_lcssa2036_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131893_lcssa2036_i_reload \
    op interface \
    ports { p_0_0_033131893_lcssa2036_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name p_0_0_033121794_lcssa1970_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121794_lcssa1970_i_reload \
    op interface \
    ports { p_0_0_033121794_lcssa1970_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name p_0_0_033131890_lcssa2034_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131890_lcssa2034_i_reload \
    op interface \
    ports { p_0_0_033131890_lcssa2034_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name p_0_0_033121791_lcssa1968_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121791_lcssa1968_i_reload \
    op interface \
    ports { p_0_0_033121791_lcssa1968_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name p_0_0_033131887_lcssa2032_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131887_lcssa2032_i_reload \
    op interface \
    ports { p_0_0_033131887_lcssa2032_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name p_0_0_033121800_lcssa1974_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121800_lcssa1974_i_reload \
    op interface \
    ports { p_0_0_033121800_lcssa1974_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name p_0_0_033131896_lcssa2038_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131896_lcssa2038_i_reload \
    op interface \
    ports { p_0_0_033131896_lcssa2038_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name p_0_0_033131785_lcssa1964_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131785_lcssa1964_i_reload \
    op interface \
    ports { p_0_0_033131785_lcssa1964_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name conv_i_i_i23841881_lcssa2028_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841881_lcssa2028_i_reload \
    op interface \
    ports { conv_i_i_i23841881_lcssa2028_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name p_0_0_033131782_lcssa1962_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131782_lcssa1962_i_reload \
    op interface \
    ports { p_0_0_033131782_lcssa1962_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name conv_i_i_i23841878_lcssa2026_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841878_lcssa2026_i_reload \
    op interface \
    ports { conv_i_i_i23841878_lcssa2026_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name p_0_0_033131779_lcssa1960_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131779_lcssa1960_i_reload \
    op interface \
    ports { p_0_0_033131779_lcssa1960_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name conv_i_i_i23841875_lcssa2024_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841875_lcssa2024_i_reload \
    op interface \
    ports { conv_i_i_i23841875_lcssa2024_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name p_0_0_033131788_lcssa1966_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131788_lcssa1966_i_reload \
    op interface \
    ports { p_0_0_033131788_lcssa1966_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name conv_i_i_i23841884_lcssa2030_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i23841884_lcssa2030_i_reload \
    op interface \
    ports { conv_i_i_i23841884_lcssa2030_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name p_0_0_033121833_lcssa1996_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121833_lcssa1996_i_reload \
    op interface \
    ports { p_0_0_033121833_lcssa1996_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name p_0_0_033131929_lcssa2060_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131929_lcssa2060_i_reload \
    op interface \
    ports { p_0_0_033131929_lcssa2060_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name p_0_0_033121830_lcssa1994_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121830_lcssa1994_i_reload \
    op interface \
    ports { p_0_0_033121830_lcssa1994_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name p_0_0_033131926_lcssa2058_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131926_lcssa2058_i_reload \
    op interface \
    ports { p_0_0_033131926_lcssa2058_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name p_0_0_033121827_lcssa1992_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121827_lcssa1992_i_reload \
    op interface \
    ports { p_0_0_033121827_lcssa1992_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name p_0_0_033131923_lcssa2056_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131923_lcssa2056_i_reload \
    op interface \
    ports { p_0_0_033131923_lcssa2056_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name p_0_0_033121836_lcssa1998_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033121836_lcssa1998_i_reload \
    op interface \
    ports { p_0_0_033121836_lcssa1998_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name p_0_0_033131932_lcssa2062_i_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_033131932_lcssa2062_i_reload \
    op interface \
    ports { p_0_0_033131932_lcssa2062_i_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name R \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_R \
    op interface \
    ports { R_din { O 16 vector } R_full_n { I 1 bit } R_write { O 1 bit } } \
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


