// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xwgen_mix.h"

extern XWgen_mix_Config XWgen_mix_ConfigTable[];

XWgen_mix_Config *XWgen_mix_LookupConfig(u16 DeviceId) {
	XWgen_mix_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XWGEN_MIX_NUM_INSTANCES; Index++) {
		if (XWgen_mix_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XWgen_mix_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XWgen_mix_Initialize(XWgen_mix *InstancePtr, u16 DeviceId) {
	XWgen_mix_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XWgen_mix_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XWgen_mix_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

