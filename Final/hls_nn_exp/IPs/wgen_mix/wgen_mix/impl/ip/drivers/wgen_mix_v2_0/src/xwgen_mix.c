// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xwgen_mix.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XWgen_mix_CfgInitialize(XWgen_mix *InstancePtr, XWgen_mix_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XWgen_mix_Start(XWgen_mix *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWgen_mix_ReadReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_AP_CTRL) & 0x80;
    XWgen_mix_WriteReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XWgen_mix_IsDone(XWgen_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWgen_mix_ReadReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XWgen_mix_IsIdle(XWgen_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWgen_mix_ReadReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XWgen_mix_IsReady(XWgen_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWgen_mix_ReadReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XWgen_mix_EnableAutoRestart(XWgen_mix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWgen_mix_WriteReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XWgen_mix_DisableAutoRestart(XWgen_mix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWgen_mix_WriteReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_AP_CTRL, 0);
}

void XWgen_mix_Set_rows(XWgen_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWgen_mix_WriteReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_ROWS_DATA, Data);
}

u32 XWgen_mix_Get_rows(XWgen_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWgen_mix_ReadReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_ROWS_DATA);
    return Data;
}

void XWgen_mix_Set_cols(XWgen_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWgen_mix_WriteReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_COLS_DATA, Data);
}

u32 XWgen_mix_Get_cols(XWgen_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWgen_mix_ReadReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_COLS_DATA);
    return Data;
}

u32 XWgen_mix_Get_wrecv(XWgen_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWgen_mix_ReadReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_WRECV_DATA);
    return Data;
}

u32 XWgen_mix_Get_wrecv_vld(XWgen_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWgen_mix_ReadReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_WRECV_CTRL);
    return Data & 0x1;
}

u32 XWgen_mix_Get_isent(XWgen_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWgen_mix_ReadReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_ISENT_DATA);
    return Data;
}

u32 XWgen_mix_Get_isent_vld(XWgen_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWgen_mix_ReadReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_ISENT_CTRL);
    return Data & 0x1;
}

void XWgen_mix_InterruptGlobalEnable(XWgen_mix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWgen_mix_WriteReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_GIE, 1);
}

void XWgen_mix_InterruptGlobalDisable(XWgen_mix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWgen_mix_WriteReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_GIE, 0);
}

void XWgen_mix_InterruptEnable(XWgen_mix *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XWgen_mix_ReadReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_IER);
    XWgen_mix_WriteReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_IER, Register | Mask);
}

void XWgen_mix_InterruptDisable(XWgen_mix *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XWgen_mix_ReadReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_IER);
    XWgen_mix_WriteReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_IER, Register & (~Mask));
}

void XWgen_mix_InterruptClear(XWgen_mix *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWgen_mix_WriteReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_ISR, Mask);
}

u32 XWgen_mix_InterruptGetEnabled(XWgen_mix *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XWgen_mix_ReadReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_IER);
}

u32 XWgen_mix_InterruptGetStatus(XWgen_mix *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XWgen_mix_ReadReg(InstancePtr->Control_BaseAddress, XWGEN_MIX_CONTROL_ADDR_ISR);
}

