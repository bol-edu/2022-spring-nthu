// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xwindex.h"

extern XWindex_Config XWindex_ConfigTable[];

XWindex_Config *XWindex_LookupConfig(u16 DeviceId) {
	XWindex_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XWINDEX_NUM_INSTANCES; Index++) {
		if (XWindex_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XWindex_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XWindex_Initialize(XWindex *InstancePtr, u16 DeviceId) {
	XWindex_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XWindex_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XWindex_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

