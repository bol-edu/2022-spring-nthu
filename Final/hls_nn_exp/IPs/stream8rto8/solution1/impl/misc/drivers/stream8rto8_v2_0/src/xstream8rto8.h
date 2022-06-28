// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSTREAM8RTO8_H
#define XSTREAM8RTO8_H

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
#include "xstream8rto8_hw.h"

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
} XStream8rto8_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XStream8rto8;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XStream8rto8_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XStream8rto8_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XStream8rto8_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XStream8rto8_ReadReg(BaseAddress, RegOffset) \
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
int XStream8rto8_Initialize(XStream8rto8 *InstancePtr, u16 DeviceId);
XStream8rto8_Config* XStream8rto8_LookupConfig(u16 DeviceId);
int XStream8rto8_CfgInitialize(XStream8rto8 *InstancePtr, XStream8rto8_Config *ConfigPtr);
#else
int XStream8rto8_Initialize(XStream8rto8 *InstancePtr, const char* InstanceName);
int XStream8rto8_Release(XStream8rto8 *InstancePtr);
#endif


u32 XStream8rto8_Get_recv(XStream8rto8 *InstancePtr);
u32 XStream8rto8_Get_recv_vld(XStream8rto8 *InstancePtr);
u32 XStream8rto8_Get_send(XStream8rto8 *InstancePtr);
u32 XStream8rto8_Get_send_vld(XStream8rto8 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
