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
//        bit 31~0 - recv[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of sent
//        bit 31~0 - sent[31:0] (Read/Write)
// 0x1c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XWINDEX_CONTROL_ADDR_RECV_DATA 0x10
#define XWINDEX_CONTROL_BITS_RECV_DATA 32
#define XWINDEX_CONTROL_ADDR_SENT_DATA 0x18
#define XWINDEX_CONTROL_BITS_SENT_DATA 32

