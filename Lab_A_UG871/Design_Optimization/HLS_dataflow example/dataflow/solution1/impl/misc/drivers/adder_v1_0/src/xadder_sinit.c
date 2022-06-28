// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xadder.h"

extern XAdder_Config XAdder_ConfigTable[];

XAdder_Config *XAdder_LookupConfig(u16 DeviceId) {
	XAdder_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XADDER_NUM_INSTANCES; Index++) {
		if (XAdder_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAdder_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAdder_Initialize(XAdder *InstancePtr, u16 DeviceId) {
	XAdder_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAdder_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAdder_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

