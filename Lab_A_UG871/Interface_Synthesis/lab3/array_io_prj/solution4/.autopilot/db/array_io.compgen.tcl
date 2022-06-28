# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name d_o_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_0 \
    op interface \
    ports { d_o_0_din { O 16 vector } d_o_0_full_n { I 1 bit } d_o_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name d_o_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_1 \
    op interface \
    ports { d_o_1_din { O 16 vector } d_o_1_full_n { I 1 bit } d_o_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name d_o_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_2 \
    op interface \
    ports { d_o_2_din { O 16 vector } d_o_2_full_n { I 1 bit } d_o_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name d_o_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_3 \
    op interface \
    ports { d_o_3_din { O 16 vector } d_o_3_full_n { I 1 bit } d_o_3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name d_o_4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_4 \
    op interface \
    ports { d_o_4_din { O 16 vector } d_o_4_full_n { I 1 bit } d_o_4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name d_o_5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_5 \
    op interface \
    ports { d_o_5_din { O 16 vector } d_o_5_full_n { I 1 bit } d_o_5_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name d_o_6 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_6 \
    op interface \
    ports { d_o_6_din { O 16 vector } d_o_6_full_n { I 1 bit } d_o_6_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name d_o_7 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_7 \
    op interface \
    ports { d_o_7_din { O 16 vector } d_o_7_full_n { I 1 bit } d_o_7_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name d_o_8 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_8 \
    op interface \
    ports { d_o_8_din { O 16 vector } d_o_8_full_n { I 1 bit } d_o_8_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name d_o_9 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_9 \
    op interface \
    ports { d_o_9_din { O 16 vector } d_o_9_full_n { I 1 bit } d_o_9_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name d_o_10 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_10 \
    op interface \
    ports { d_o_10_din { O 16 vector } d_o_10_full_n { I 1 bit } d_o_10_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name d_o_11 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_11 \
    op interface \
    ports { d_o_11_din { O 16 vector } d_o_11_full_n { I 1 bit } d_o_11_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name d_o_12 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_12 \
    op interface \
    ports { d_o_12_din { O 16 vector } d_o_12_full_n { I 1 bit } d_o_12_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name d_o_13 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_13 \
    op interface \
    ports { d_o_13_din { O 16 vector } d_o_13_full_n { I 1 bit } d_o_13_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name d_o_14 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_14 \
    op interface \
    ports { d_o_14_din { O 16 vector } d_o_14_full_n { I 1 bit } d_o_14_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name d_o_15 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_15 \
    op interface \
    ports { d_o_15_din { O 16 vector } d_o_15_full_n { I 1 bit } d_o_15_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name d_o_16 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_16 \
    op interface \
    ports { d_o_16_din { O 16 vector } d_o_16_full_n { I 1 bit } d_o_16_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name d_o_17 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_17 \
    op interface \
    ports { d_o_17_din { O 16 vector } d_o_17_full_n { I 1 bit } d_o_17_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name d_o_18 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_18 \
    op interface \
    ports { d_o_18_din { O 16 vector } d_o_18_full_n { I 1 bit } d_o_18_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name d_o_19 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_19 \
    op interface \
    ports { d_o_19_din { O 16 vector } d_o_19_full_n { I 1 bit } d_o_19_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name d_o_20 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_20 \
    op interface \
    ports { d_o_20_din { O 16 vector } d_o_20_full_n { I 1 bit } d_o_20_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name d_o_21 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_21 \
    op interface \
    ports { d_o_21_din { O 16 vector } d_o_21_full_n { I 1 bit } d_o_21_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name d_o_22 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_22 \
    op interface \
    ports { d_o_22_din { O 16 vector } d_o_22_full_n { I 1 bit } d_o_22_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name d_o_23 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_23 \
    op interface \
    ports { d_o_23_din { O 16 vector } d_o_23_full_n { I 1 bit } d_o_23_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name d_o_24 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_24 \
    op interface \
    ports { d_o_24_din { O 16 vector } d_o_24_full_n { I 1 bit } d_o_24_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name d_o_25 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_25 \
    op interface \
    ports { d_o_25_din { O 16 vector } d_o_25_full_n { I 1 bit } d_o_25_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name d_o_26 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_26 \
    op interface \
    ports { d_o_26_din { O 16 vector } d_o_26_full_n { I 1 bit } d_o_26_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name d_o_27 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_27 \
    op interface \
    ports { d_o_27_din { O 16 vector } d_o_27_full_n { I 1 bit } d_o_27_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name d_o_28 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_28 \
    op interface \
    ports { d_o_28_din { O 16 vector } d_o_28_full_n { I 1 bit } d_o_28_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name d_o_29 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_29 \
    op interface \
    ports { d_o_29_din { O 16 vector } d_o_29_full_n { I 1 bit } d_o_29_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name d_o_30 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_30 \
    op interface \
    ports { d_o_30_din { O 16 vector } d_o_30_full_n { I 1 bit } d_o_30_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name d_o_31 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_31 \
    op interface \
    ports { d_o_31_din { O 16 vector } d_o_31_full_n { I 1 bit } d_o_31_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name d_i_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_0 \
    op interface \
    ports { d_i_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name d_i_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_1 \
    op interface \
    ports { d_i_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name d_i_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_2 \
    op interface \
    ports { d_i_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name d_i_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_3 \
    op interface \
    ports { d_i_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name d_i_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_4 \
    op interface \
    ports { d_i_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name d_i_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_5 \
    op interface \
    ports { d_i_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name d_i_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_6 \
    op interface \
    ports { d_i_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name d_i_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_7 \
    op interface \
    ports { d_i_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name d_i_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_8 \
    op interface \
    ports { d_i_8 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name d_i_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_9 \
    op interface \
    ports { d_i_9 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name d_i_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_10 \
    op interface \
    ports { d_i_10 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name d_i_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_11 \
    op interface \
    ports { d_i_11 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name d_i_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_12 \
    op interface \
    ports { d_i_12 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name d_i_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_13 \
    op interface \
    ports { d_i_13 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name d_i_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_14 \
    op interface \
    ports { d_i_14 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name d_i_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_15 \
    op interface \
    ports { d_i_15 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name d_i_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_16 \
    op interface \
    ports { d_i_16 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name d_i_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_17 \
    op interface \
    ports { d_i_17 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name d_i_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_18 \
    op interface \
    ports { d_i_18 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name d_i_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_19 \
    op interface \
    ports { d_i_19 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name d_i_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_20 \
    op interface \
    ports { d_i_20 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name d_i_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_21 \
    op interface \
    ports { d_i_21 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name d_i_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_22 \
    op interface \
    ports { d_i_22 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name d_i_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_23 \
    op interface \
    ports { d_i_23 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name d_i_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_24 \
    op interface \
    ports { d_i_24 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name d_i_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_25 \
    op interface \
    ports { d_i_25 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name d_i_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_26 \
    op interface \
    ports { d_i_26 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name d_i_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_27 \
    op interface \
    ports { d_i_27 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name d_i_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_28 \
    op interface \
    ports { d_i_28 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name d_i_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_29 \
    op interface \
    ports { d_i_29 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name d_i_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_30 \
    op interface \
    ports { d_i_30 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name d_i_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_i_31 \
    op interface \
    ports { d_i_31 { I 16 vector } } \
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


