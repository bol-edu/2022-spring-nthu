// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XADDER_H
#define XADDER_H

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
#include "xadder_hw.h"

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
} XAdder_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XAdder;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAdder_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAdder_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAdder_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAdder_ReadReg(BaseAddress, RegOffset) \
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
int XAdder_Initialize(XAdder *InstancePtr, u16 DeviceId);
XAdder_Config* XAdder_LookupConfig(u16 DeviceId);
int XAdder_CfgInitialize(XAdder *InstancePtr, XAdder_Config *ConfigPtr);
#else
int XAdder_Initialize(XAdder *InstancePtr, const char* InstanceName);
int XAdder_Release(XAdder *InstancePtr);
#endif

void XAdder_Start(XAdder *InstancePtr);
u32 XAdder_IsDone(XAdder *InstancePtr);
u32 XAdder_IsIdle(XAdder *InstancePtr);
u32 XAdder_IsReady(XAdder *InstancePtr);
void XAdder_EnableAutoRestart(XAdder *InstancePtr);
void XAdder_DisableAutoRestart(XAdder *InstancePtr);

void XAdder_Set_in_r(XAdder *InstancePtr, u64 Data);
u64 XAdder_Get_in_r(XAdder *InstancePtr);
void XAdder_Set_out_r(XAdder *InstancePtr, u64 Data);
u64 XAdder_Get_out_r(XAdder *InstancePtr);
void XAdder_Set_inc(XAdder *InstancePtr, u32 Data);
u32 XAdder_Get_inc(XAdder *InstancePtr);
void XAdder_Set_size(XAdder *InstancePtr, u32 Data);
u32 XAdder_Get_size(XAdder *InstancePtr);

void XAdder_InterruptGlobalEnable(XAdder *InstancePtr);
void XAdder_InterruptGlobalDisable(XAdder *InstancePtr);
void XAdder_InterruptEnable(XAdder *InstancePtr, u32 Mask);
void XAdder_InterruptDisable(XAdder *InstancePtr, u32 Mask);
void XAdder_InterruptClear(XAdder *InstancePtr, u32 Mask);
u32 XAdder_InterruptGetEnabled(XAdder *InstancePtr);
u32 XAdder_InterruptGetStatus(XAdder *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
