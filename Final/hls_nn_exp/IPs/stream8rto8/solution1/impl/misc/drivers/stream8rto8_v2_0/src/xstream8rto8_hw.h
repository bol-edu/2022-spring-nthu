// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of recv
//        bit 31~0 - recv[31:0] (Read)
// 0x14 : Control signal of recv
//        bit 0  - recv_ap_vld (Read/COR)
//        others - reserved
// 0x20 : Data signal of send
//        bit 31~0 - send[31:0] (Read)
// 0x24 : Control signal of send
//        bit 0  - send_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XSTREAM8RTO8_CONTROL_ADDR_RECV_DATA 0x10
#define XSTREAM8RTO8_CONTROL_BITS_RECV_DATA 32
#define XSTREAM8RTO8_CONTROL_ADDR_RECV_CTRL 0x14
#define XSTREAM8RTO8_CONTROL_ADDR_SEND_DATA 0x20
#define XSTREAM8RTO8_CONTROL_BITS_SEND_DATA 32
#define XSTREAM8RTO8_CONTROL_ADDR_SEND_CTRL 0x24

