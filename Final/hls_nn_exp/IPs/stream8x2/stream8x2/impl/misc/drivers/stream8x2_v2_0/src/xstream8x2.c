// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xstream8x2.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XStream8x2_CfgInitialize(XStream8x2 *InstancePtr, XStream8x2_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

u32 XStream8x2_Get_recv(XStream8x2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStream8x2_ReadReg(InstancePtr->Control_BaseAddress, XSTREAM8X2_CONTROL_ADDR_RECV_DATA);
    return Data;
}

u32 XStream8x2_Get_recv_vld(XStream8x2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStream8x2_ReadReg(InstancePtr->Control_BaseAddress, XSTREAM8X2_CONTROL_ADDR_RECV_CTRL);
    return Data & 0x1;
}

u32 XStream8x2_Get_send(XStream8x2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStream8x2_ReadReg(InstancePtr->Control_BaseAddress, XSTREAM8X2_CONTROL_ADDR_SEND_DATA);
    return Data;
}

u32 XStream8x2_Get_send_vld(XStream8x2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStream8x2_ReadReg(InstancePtr->Control_BaseAddress, XSTREAM8X2_CONTROL_ADDR_SEND_CTRL);
    return Data & 0x1;
}

