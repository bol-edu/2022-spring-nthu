// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        bit 5 - enable ap_local_deadlock interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (COR/TOW)
//        bit 1 - ap_ready (COR/TOW)
//        bit 5 - ap_local_deadlock (COR/TOW)
//        others - reserved
// 0x10 : Data signal of src_rows
//        bit 31~0 - src_rows[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of src_cols
//        bit 31~0 - src_cols[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of dst_rows
//        bit 31~0 - dst_rows[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of dst_cols
//        bit 31~0 - dst_cols[31:0] (Read/Write)
// 0x2c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XRESIZE_ACCEL_CONTROL_ADDR_AP_CTRL       0x00
#define XRESIZE_ACCEL_CONTROL_ADDR_GIE           0x04
#define XRESIZE_ACCEL_CONTROL_ADDR_IER           0x08
#define XRESIZE_ACCEL_CONTROL_ADDR_ISR           0x0c
#define XRESIZE_ACCEL_CONTROL_ADDR_SRC_ROWS_DATA 0x10
#define XRESIZE_ACCEL_CONTROL_BITS_SRC_ROWS_DATA 32
#define XRESIZE_ACCEL_CONTROL_ADDR_SRC_COLS_DATA 0x18
#define XRESIZE_ACCEL_CONTROL_BITS_SRC_COLS_DATA 32
#define XRESIZE_ACCEL_CONTROL_ADDR_DST_ROWS_DATA 0x20
#define XRESIZE_ACCEL_CONTROL_BITS_DST_ROWS_DATA 32
#define XRESIZE_ACCEL_CONTROL_ADDR_DST_COLS_DATA 0x28
#define XRESIZE_ACCEL_CONTROL_BITS_DST_COLS_DATA 32

