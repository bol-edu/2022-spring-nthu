# This script segment is generated automatically by AutoPilot

set id 590
set name TOP_mul_mul_16s_16s_24_4_1
set corename simcore_mul
set op mul
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 1
set in1_width 16
set in1_signed 1
set ce_width 1
set ce_signed 0
set out_width 24
set arg_lists {i0 {16 1 +} i1 {16 1 +} p {24 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {add} IMPL {dsp} LATENCY 3 ALLOW_PRAGMA 1
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 591
set name TOP_mac_muladd_16s_16s_24ns_24_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 1
set in1_width 16
set in1_signed 1
set in2_width 24
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 24
set arg_lists {i0 {16 1 +} i1 {16 1 +} m {24 1 +} i2 {24 0 +} p {24 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {add} IMPL {dsp} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
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
    id 600 \
    name conv_i_i_i1582975_lcssa1488_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i1582975_lcssa1488_i \
    op interface \
    ports { conv_i_i_i1582975_lcssa1488_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 601 \
    name conv_i_i_i15491263_lcssa1632_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15491263_lcssa1632_i \
    op interface \
    ports { conv_i_i_i15491263_lcssa1632_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 602 \
    name conv_i_i_i15161295_lcssa1648_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15161295_lcssa1648_i \
    op interface \
    ports { conv_i_i_i15161295_lcssa1648_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 603 \
    name conv_i_i_i14831327_lcssa1664_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14831327_lcssa1664_i \
    op interface \
    ports { conv_i_i_i14831327_lcssa1664_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 604 \
    name conv_i_i_i14501359_lcssa1680_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14501359_lcssa1680_i \
    op interface \
    ports { conv_i_i_i14501359_lcssa1680_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 605 \
    name conv_i_i_i14171391_lcssa1696_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14171391_lcssa1696_i \
    op interface \
    ports { conv_i_i_i14171391_lcssa1696_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 606 \
    name conv_i_i_i13841423_lcssa1712_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i13841423_lcssa1712_i \
    op interface \
    ports { conv_i_i_i13841423_lcssa1712_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 607 \
    name conv_i_i_i13511455_lcssa1728_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i13511455_lcssa1728_i \
    op interface \
    ports { conv_i_i_i13511455_lcssa1728_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 608 \
    name conv_i_i_i1582979_lcssa1490_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i1582979_lcssa1490_i \
    op interface \
    ports { conv_i_i_i1582979_lcssa1490_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 609 \
    name conv_i_i_i15491267_lcssa1634_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15491267_lcssa1634_i \
    op interface \
    ports { conv_i_i_i15491267_lcssa1634_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 610 \
    name conv_i_i_i15161299_lcssa1650_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15161299_lcssa1650_i \
    op interface \
    ports { conv_i_i_i15161299_lcssa1650_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 611 \
    name conv_i_i_i14831331_lcssa1666_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14831331_lcssa1666_i \
    op interface \
    ports { conv_i_i_i14831331_lcssa1666_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 612 \
    name conv_i_i_i14501363_lcssa1682_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14501363_lcssa1682_i \
    op interface \
    ports { conv_i_i_i14501363_lcssa1682_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 613 \
    name conv_i_i_i14171395_lcssa1698_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14171395_lcssa1698_i \
    op interface \
    ports { conv_i_i_i14171395_lcssa1698_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 614 \
    name conv_i_i_i13841427_lcssa1714_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i13841427_lcssa1714_i \
    op interface \
    ports { conv_i_i_i13841427_lcssa1714_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 615 \
    name conv_i_i_i13511459_lcssa1730_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i13511459_lcssa1730_i \
    op interface \
    ports { conv_i_i_i13511459_lcssa1730_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 616 \
    name conv_i_i_i1582983_lcssa1492_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i1582983_lcssa1492_i \
    op interface \
    ports { conv_i_i_i1582983_lcssa1492_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 617 \
    name conv_i_i_i15491271_lcssa1636_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15491271_lcssa1636_i \
    op interface \
    ports { conv_i_i_i15491271_lcssa1636_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 618 \
    name conv_i_i_i15161303_lcssa1652_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15161303_lcssa1652_i \
    op interface \
    ports { conv_i_i_i15161303_lcssa1652_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 619 \
    name conv_i_i_i14831335_lcssa1668_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14831335_lcssa1668_i \
    op interface \
    ports { conv_i_i_i14831335_lcssa1668_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 620 \
    name conv_i_i_i14501367_lcssa1684_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14501367_lcssa1684_i \
    op interface \
    ports { conv_i_i_i14501367_lcssa1684_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 621 \
    name conv_i_i_i14171399_lcssa1700_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14171399_lcssa1700_i \
    op interface \
    ports { conv_i_i_i14171399_lcssa1700_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 622 \
    name conv_i_i_i13841431_lcssa1716_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i13841431_lcssa1716_i \
    op interface \
    ports { conv_i_i_i13841431_lcssa1716_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 623 \
    name conv_i_i_i13511463_lcssa1732_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i13511463_lcssa1732_i \
    op interface \
    ports { conv_i_i_i13511463_lcssa1732_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 624 \
    name conv_i_i_i1582987_lcssa1494_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i1582987_lcssa1494_i \
    op interface \
    ports { conv_i_i_i1582987_lcssa1494_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 625 \
    name conv_i_i_i15491275_lcssa1638_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15491275_lcssa1638_i \
    op interface \
    ports { conv_i_i_i15491275_lcssa1638_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 626 \
    name conv_i_i_i15161307_lcssa1654_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15161307_lcssa1654_i \
    op interface \
    ports { conv_i_i_i15161307_lcssa1654_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 627 \
    name conv_i_i_i14831339_lcssa1670_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14831339_lcssa1670_i \
    op interface \
    ports { conv_i_i_i14831339_lcssa1670_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 628 \
    name conv_i_i_i14501371_lcssa1686_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14501371_lcssa1686_i \
    op interface \
    ports { conv_i_i_i14501371_lcssa1686_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 629 \
    name conv_i_i_i14171403_lcssa1702_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14171403_lcssa1702_i \
    op interface \
    ports { conv_i_i_i14171403_lcssa1702_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 630 \
    name conv_i_i_i13841435_lcssa1718_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i13841435_lcssa1718_i \
    op interface \
    ports { conv_i_i_i13841435_lcssa1718_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 631 \
    name conv_i_i_i13511467_lcssa1734_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i13511467_lcssa1734_i \
    op interface \
    ports { conv_i_i_i13511467_lcssa1734_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 632 \
    name conv_i_i_i1582991_lcssa1496_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i1582991_lcssa1496_i \
    op interface \
    ports { conv_i_i_i1582991_lcssa1496_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 633 \
    name conv_i_i_i15491279_lcssa1640_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15491279_lcssa1640_i \
    op interface \
    ports { conv_i_i_i15491279_lcssa1640_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 634 \
    name conv_i_i_i15161311_lcssa1656_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15161311_lcssa1656_i \
    op interface \
    ports { conv_i_i_i15161311_lcssa1656_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 635 \
    name conv_i_i_i14831343_lcssa1672_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14831343_lcssa1672_i \
    op interface \
    ports { conv_i_i_i14831343_lcssa1672_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 636 \
    name conv_i_i_i14501375_lcssa1688_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14501375_lcssa1688_i \
    op interface \
    ports { conv_i_i_i14501375_lcssa1688_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 637 \
    name conv_i_i_i14171407_lcssa1704_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14171407_lcssa1704_i \
    op interface \
    ports { conv_i_i_i14171407_lcssa1704_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 638 \
    name conv_i_i_i13841439_lcssa1720_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i13841439_lcssa1720_i \
    op interface \
    ports { conv_i_i_i13841439_lcssa1720_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 639 \
    name conv_i_i_i13511471_lcssa1736_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i13511471_lcssa1736_i \
    op interface \
    ports { conv_i_i_i13511471_lcssa1736_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 640 \
    name conv_i_i_i1582995_lcssa1498_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i1582995_lcssa1498_i \
    op interface \
    ports { conv_i_i_i1582995_lcssa1498_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 641 \
    name conv_i_i_i15491283_lcssa1642_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15491283_lcssa1642_i \
    op interface \
    ports { conv_i_i_i15491283_lcssa1642_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 642 \
    name conv_i_i_i15161315_lcssa1658_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15161315_lcssa1658_i \
    op interface \
    ports { conv_i_i_i15161315_lcssa1658_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 643 \
    name conv_i_i_i14831347_lcssa1674_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14831347_lcssa1674_i \
    op interface \
    ports { conv_i_i_i14831347_lcssa1674_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 644 \
    name conv_i_i_i14501379_lcssa1690_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14501379_lcssa1690_i \
    op interface \
    ports { conv_i_i_i14501379_lcssa1690_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 645 \
    name conv_i_i_i14171411_lcssa1706_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14171411_lcssa1706_i \
    op interface \
    ports { conv_i_i_i14171411_lcssa1706_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 646 \
    name conv_i_i_i13841443_lcssa1722_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i13841443_lcssa1722_i \
    op interface \
    ports { conv_i_i_i13841443_lcssa1722_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 647 \
    name conv_i_i_i13511475_lcssa1738_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i13511475_lcssa1738_i \
    op interface \
    ports { conv_i_i_i13511475_lcssa1738_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 648 \
    name conv_i_i_i1582999_lcssa1500_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i1582999_lcssa1500_i \
    op interface \
    ports { conv_i_i_i1582999_lcssa1500_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 649 \
    name conv_i_i_i15491287_lcssa1644_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15491287_lcssa1644_i \
    op interface \
    ports { conv_i_i_i15491287_lcssa1644_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 650 \
    name conv_i_i_i15161319_lcssa1660_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15161319_lcssa1660_i \
    op interface \
    ports { conv_i_i_i15161319_lcssa1660_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 651 \
    name conv_i_i_i14831351_lcssa1676_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14831351_lcssa1676_i \
    op interface \
    ports { conv_i_i_i14831351_lcssa1676_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 652 \
    name conv_i_i_i14501383_lcssa1692_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14501383_lcssa1692_i \
    op interface \
    ports { conv_i_i_i14501383_lcssa1692_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 653 \
    name conv_i_i_i14171415_lcssa1708_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14171415_lcssa1708_i \
    op interface \
    ports { conv_i_i_i14171415_lcssa1708_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 654 \
    name conv_i_i_i13841447_lcssa1724_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i13841447_lcssa1724_i \
    op interface \
    ports { conv_i_i_i13841447_lcssa1724_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 655 \
    name conv_i_i_i13511479_lcssa1740_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i13511479_lcssa1740_i \
    op interface \
    ports { conv_i_i_i13511479_lcssa1740_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 656 \
    name conv_i_i_i15821003_lcssa1502_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15821003_lcssa1502_i \
    op interface \
    ports { conv_i_i_i15821003_lcssa1502_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 657 \
    name conv_i_i_i15491291_lcssa1646_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15491291_lcssa1646_i \
    op interface \
    ports { conv_i_i_i15491291_lcssa1646_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 658 \
    name conv_i_i_i15161323_lcssa1662_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i15161323_lcssa1662_i \
    op interface \
    ports { conv_i_i_i15161323_lcssa1662_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 659 \
    name conv_i_i_i14831355_lcssa1678_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14831355_lcssa1678_i \
    op interface \
    ports { conv_i_i_i14831355_lcssa1678_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 660 \
    name conv_i_i_i14501387_lcssa1694_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14501387_lcssa1694_i \
    op interface \
    ports { conv_i_i_i14501387_lcssa1694_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 661 \
    name conv_i_i_i14171419_lcssa1710_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i14171419_lcssa1710_i \
    op interface \
    ports { conv_i_i_i14171419_lcssa1710_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 662 \
    name conv_i_i_i13841451_lcssa1726_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i13841451_lcssa1726_i \
    op interface \
    ports { conv_i_i_i13841451_lcssa1726_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 663 \
    name conv_i_i_i13511483_lcssa1742_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv_i_i_i13511483_lcssa1742_i \
    op interface \
    ports { conv_i_i_i13511483_lcssa1742_i { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 664 \
    name Y_V_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_load \
    op interface \
    ports { Y_V_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 665 \
    name Y_V_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_1_load \
    op interface \
    ports { Y_V_1_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 666 \
    name Y_V_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_2_load \
    op interface \
    ports { Y_V_2_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 667 \
    name Y_V_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_3_load \
    op interface \
    ports { Y_V_3_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 668 \
    name Y_V_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_4_load \
    op interface \
    ports { Y_V_4_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 669 \
    name Y_V_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_5_load \
    op interface \
    ports { Y_V_5_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 670 \
    name Y_V_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_6_load \
    op interface \
    ports { Y_V_6_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 671 \
    name Y_V_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_7_load \
    op interface \
    ports { Y_V_7_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 672 \
    name Y_V_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_load_1 \
    op interface \
    ports { Y_V_load_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 673 \
    name Y_V_1_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_1_load_1 \
    op interface \
    ports { Y_V_1_load_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 674 \
    name Y_V_2_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_2_load_1 \
    op interface \
    ports { Y_V_2_load_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 675 \
    name Y_V_3_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_3_load_1 \
    op interface \
    ports { Y_V_3_load_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 676 \
    name Y_V_4_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_4_load_1 \
    op interface \
    ports { Y_V_4_load_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 677 \
    name Y_V_5_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_5_load_1 \
    op interface \
    ports { Y_V_5_load_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 678 \
    name Y_V_6_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_6_load_1 \
    op interface \
    ports { Y_V_6_load_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 679 \
    name Y_V_7_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_7_load_1 \
    op interface \
    ports { Y_V_7_load_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 680 \
    name Y_V_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_load_2 \
    op interface \
    ports { Y_V_load_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 681 \
    name Y_V_1_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_1_load_2 \
    op interface \
    ports { Y_V_1_load_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 682 \
    name Y_V_2_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_2_load_2 \
    op interface \
    ports { Y_V_2_load_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 683 \
    name Y_V_3_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_3_load_2 \
    op interface \
    ports { Y_V_3_load_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 684 \
    name Y_V_4_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_4_load_2 \
    op interface \
    ports { Y_V_4_load_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 685 \
    name Y_V_5_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_5_load_2 \
    op interface \
    ports { Y_V_5_load_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 686 \
    name Y_V_6_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_6_load_2 \
    op interface \
    ports { Y_V_6_load_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 687 \
    name Y_V_7_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_7_load_2 \
    op interface \
    ports { Y_V_7_load_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 688 \
    name Y_V_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_load_3 \
    op interface \
    ports { Y_V_load_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 689 \
    name Y_V_1_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_1_load_3 \
    op interface \
    ports { Y_V_1_load_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 690 \
    name Y_V_2_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_2_load_3 \
    op interface \
    ports { Y_V_2_load_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 691 \
    name Y_V_3_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_3_load_3 \
    op interface \
    ports { Y_V_3_load_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 692 \
    name Y_V_4_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_4_load_3 \
    op interface \
    ports { Y_V_4_load_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 693 \
    name Y_V_5_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_5_load_3 \
    op interface \
    ports { Y_V_5_load_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 694 \
    name Y_V_6_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_6_load_3 \
    op interface \
    ports { Y_V_6_load_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 695 \
    name Y_V_7_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_7_load_3 \
    op interface \
    ports { Y_V_7_load_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 696 \
    name Y_V_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_load_4 \
    op interface \
    ports { Y_V_load_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 697 \
    name Y_V_1_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_1_load_4 \
    op interface \
    ports { Y_V_1_load_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 698 \
    name Y_V_2_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_2_load_4 \
    op interface \
    ports { Y_V_2_load_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 699 \
    name Y_V_3_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_3_load_4 \
    op interface \
    ports { Y_V_3_load_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 700 \
    name Y_V_4_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_4_load_4 \
    op interface \
    ports { Y_V_4_load_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 701 \
    name Y_V_5_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_5_load_4 \
    op interface \
    ports { Y_V_5_load_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 702 \
    name Y_V_6_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_6_load_4 \
    op interface \
    ports { Y_V_6_load_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 703 \
    name Y_V_7_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_7_load_4 \
    op interface \
    ports { Y_V_7_load_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 704 \
    name Y_V_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_load_5 \
    op interface \
    ports { Y_V_load_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 705 \
    name Y_V_1_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_1_load_5 \
    op interface \
    ports { Y_V_1_load_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 706 \
    name Y_V_2_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_2_load_5 \
    op interface \
    ports { Y_V_2_load_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 707 \
    name Y_V_3_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_3_load_5 \
    op interface \
    ports { Y_V_3_load_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 708 \
    name Y_V_4_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_4_load_5 \
    op interface \
    ports { Y_V_4_load_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 709 \
    name Y_V_5_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_5_load_5 \
    op interface \
    ports { Y_V_5_load_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 710 \
    name Y_V_6_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_6_load_5 \
    op interface \
    ports { Y_V_6_load_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 711 \
    name Y_V_7_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_7_load_5 \
    op interface \
    ports { Y_V_7_load_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 712 \
    name Y_V_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_load_6 \
    op interface \
    ports { Y_V_load_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 713 \
    name Y_V_1_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_1_load_6 \
    op interface \
    ports { Y_V_1_load_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 714 \
    name Y_V_2_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_2_load_6 \
    op interface \
    ports { Y_V_2_load_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 715 \
    name Y_V_3_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_3_load_6 \
    op interface \
    ports { Y_V_3_load_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 716 \
    name Y_V_4_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_4_load_6 \
    op interface \
    ports { Y_V_4_load_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 717 \
    name Y_V_5_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_5_load_6 \
    op interface \
    ports { Y_V_5_load_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 718 \
    name Y_V_6_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_6_load_6 \
    op interface \
    ports { Y_V_6_load_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 719 \
    name Y_V_7_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_7_load_6 \
    op interface \
    ports { Y_V_7_load_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 720 \
    name Y_V_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_load_7 \
    op interface \
    ports { Y_V_load_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 721 \
    name Y_V_1_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_1_load_7 \
    op interface \
    ports { Y_V_1_load_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 722 \
    name Y_V_2_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_2_load_7 \
    op interface \
    ports { Y_V_2_load_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 723 \
    name Y_V_3_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_3_load_7 \
    op interface \
    ports { Y_V_3_load_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 724 \
    name Y_V_4_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_4_load_7 \
    op interface \
    ports { Y_V_4_load_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 725 \
    name Y_V_5_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_5_load_7 \
    op interface \
    ports { Y_V_5_load_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 726 \
    name Y_V_6_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_6_load_7 \
    op interface \
    ports { Y_V_6_load_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 727 \
    name Y_V_7_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Y_V_7_load_7 \
    op interface \
    ports { Y_V_7_load_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 728 \
    name Q \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Q \
    op interface \
    ports { Q_din { O 16 vector } Q_full_n { I 1 bit } Q_write { O 1 bit } } \
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


