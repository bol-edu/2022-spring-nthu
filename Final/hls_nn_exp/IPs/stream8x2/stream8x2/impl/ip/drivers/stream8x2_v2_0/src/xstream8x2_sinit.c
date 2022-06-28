// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xstream8x2.h"

extern XStream8x2_Config XStream8x2_ConfigTable[];

XStream8x2_Config *XStream8x2_LookupConfig(u16 DeviceId) {
	XStream8x2_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSTREAM8X2_NUM_INSTANCES; Index++) {
		if (XStream8x2_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XStream8x2_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XStream8x2_Initialize(XStream8x2 *InstancePtr, u16 DeviceId) {
	XStream8x2_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XStream8x2_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XStream8x2_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

