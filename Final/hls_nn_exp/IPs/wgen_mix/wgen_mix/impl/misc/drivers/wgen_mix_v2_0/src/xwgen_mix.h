// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XWGEN_MIX_H
#define XWGEN_MIX_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xwgen_mix_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XWgen_mix_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XWgen_mix;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XWgen_mix_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XWgen_mix_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XWgen_mix_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XWgen_mix_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XWgen_mix_Initialize(XWgen_mix *InstancePtr, u16 DeviceId);
XWgen_mix_Config* XWgen_mix_LookupConfig(u16 DeviceId);
int XWgen_mix_CfgInitialize(XWgen_mix *InstancePtr, XWgen_mix_Config *ConfigPtr);
#else
int XWgen_mix_Initialize(XWgen_mix *InstancePtr, const char* InstanceName);
int XWgen_mix_Release(XWgen_mix *InstancePtr);
#endif

void XWgen_mix_Start(XWgen_mix *InstancePtr);
u32 XWgen_mix_IsDone(XWgen_mix *InstancePtr);
u32 XWgen_mix_IsIdle(XWgen_mix *InstancePtr);
u32 XWgen_mix_IsReady(XWgen_mix *InstancePtr);
void XWgen_mix_EnableAutoRestart(XWgen_mix *InstancePtr);
void XWgen_mix_DisableAutoRestart(XWgen_mix *InstancePtr);

void XWgen_mix_Set_rows(XWgen_mix *InstancePtr, u32 Data);
u32 XWgen_mix_Get_rows(XWgen_mix *InstancePtr);
void XWgen_mix_Set_cols(XWgen_mix *InstancePtr, u32 Data);
u32 XWgen_mix_Get_cols(XWgen_mix *InstancePtr);
u32 XWgen_mix_Get_wrecv(XWgen_mix *InstancePtr);
u32 XWgen_mix_Get_wrecv_vld(XWgen_mix *InstancePtr);
u32 XWgen_mix_Get_isent(XWgen_mix *InstancePtr);
u32 XWgen_mix_Get_isent_vld(XWgen_mix *InstancePtr);

void XWgen_mix_InterruptGlobalEnable(XWgen_mix *InstancePtr);
void XWgen_mix_InterruptGlobalDisable(XWgen_mix *InstancePtr);
void XWgen_mix_InterruptEnable(XWgen_mix *InstancePtr, u32 Mask);
void XWgen_mix_InterruptDisable(XWgen_mix *InstancePtr, u32 Mask);
void XWgen_mix_InterruptClear(XWgen_mix *InstancePtr, u32 Mask);
u32 XWgen_mix_InterruptGetEnabled(XWgen_mix *InstancePtr);
u32 XWgen_mix_InterruptGetStatus(XWgen_mix *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
