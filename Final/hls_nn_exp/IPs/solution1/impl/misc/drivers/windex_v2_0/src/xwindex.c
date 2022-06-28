// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xwindex.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XWindex_CfgInitialize(XWindex *InstancePtr, XWindex_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XWindex_Set_recv(XWindex *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWindex_WriteReg(InstancePtr->Control_BaseAddress, XWINDEX_CONTROL_ADDR_RECV_DATA, Data);
}

u32 XWindex_Get_recv(XWindex *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWindex_ReadReg(InstancePtr->Control_BaseAddress, XWINDEX_CONTROL_ADDR_RECV_DATA);
    return Data;
}

void XWindex_Set_sent(XWindex *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWindex_WriteReg(InstancePtr->Control_BaseAddress, XWINDEX_CONTROL_ADDR_SENT_DATA, Data);
}

u32 XWindex_Get_sent(XWindex *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWindex_ReadReg(InstancePtr->Control_BaseAddress, XWINDEX_CONTROL_ADDR_SENT_DATA);
    return Data;
}

