// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xadder.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAdder_CfgInitialize(XAdder *InstancePtr, XAdder_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAdder_Start(XAdder *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdder_ReadReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAdder_WriteReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAdder_IsDone(XAdder *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdder_ReadReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAdder_IsIdle(XAdder *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdder_ReadReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAdder_IsReady(XAdder *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdder_ReadReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAdder_EnableAutoRestart(XAdder *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdder_WriteReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XAdder_DisableAutoRestart(XAdder *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdder_WriteReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_AP_CTRL, 0);
}

void XAdder_Set_in_r(XAdder *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdder_WriteReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_IN_R_DATA, (u32)(Data));
    XAdder_WriteReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_IN_R_DATA + 4, (u32)(Data >> 32));
}

u64 XAdder_Get_in_r(XAdder *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdder_ReadReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_IN_R_DATA);
    Data += (u64)XAdder_ReadReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_IN_R_DATA + 4) << 32;
    return Data;
}

void XAdder_Set_out_r(XAdder *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdder_WriteReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XAdder_WriteReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XAdder_Get_out_r(XAdder *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdder_ReadReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XAdder_ReadReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XAdder_Set_inc(XAdder *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdder_WriteReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_INC_DATA, Data);
}

u32 XAdder_Get_inc(XAdder *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdder_ReadReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_INC_DATA);
    return Data;
}

void XAdder_Set_size(XAdder *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdder_WriteReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_SIZE_DATA, Data);
}

u32 XAdder_Get_size(XAdder *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdder_ReadReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_SIZE_DATA);
    return Data;
}

void XAdder_InterruptGlobalEnable(XAdder *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdder_WriteReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_GIE, 1);
}

void XAdder_InterruptGlobalDisable(XAdder *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdder_WriteReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_GIE, 0);
}

void XAdder_InterruptEnable(XAdder *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAdder_ReadReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_IER);
    XAdder_WriteReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_IER, Register | Mask);
}

void XAdder_InterruptDisable(XAdder *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAdder_ReadReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_IER);
    XAdder_WriteReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XAdder_InterruptClear(XAdder *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdder_WriteReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_ISR, Mask);
}

u32 XAdder_InterruptGetEnabled(XAdder *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAdder_ReadReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_IER);
}

u32 XAdder_InterruptGetStatus(XAdder *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAdder_ReadReg(InstancePtr->Control_BaseAddress, XADDER_CONTROL_ADDR_ISR);
}

