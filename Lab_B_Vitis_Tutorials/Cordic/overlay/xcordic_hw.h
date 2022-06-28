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
// 0x10 : Data signal of theta
//        bit 11~0 - theta[11:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of s
//        bit 11~0 - s[11:0] (Read)
//        others   - reserved
// 0x1c : Control signal of s
//        bit 0  - s_ap_vld (Read/COR)
//        others - reserved
// 0x28 : Data signal of c
//        bit 11~0 - c[11:0] (Read)
//        others   - reserved
// 0x2c : Control signal of c
//        bit 0  - c_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCORDIC_CONTROL_ADDR_AP_CTRL    0x00
#define XCORDIC_CONTROL_ADDR_GIE        0x04
#define XCORDIC_CONTROL_ADDR_IER        0x08
#define XCORDIC_CONTROL_ADDR_ISR        0x0c
#define XCORDIC_CONTROL_ADDR_THETA_DATA 0x10
#define XCORDIC_CONTROL_BITS_THETA_DATA 12
#define XCORDIC_CONTROL_ADDR_S_DATA     0x18
#define XCORDIC_CONTROL_BITS_S_DATA     12
#define XCORDIC_CONTROL_ADDR_S_CTRL     0x1c
#define XCORDIC_CONTROL_ADDR_C_DATA     0x28
#define XCORDIC_CONTROL_BITS_C_DATA     12
#define XCORDIC_CONTROL_ADDR_C_CTRL     0x2c
