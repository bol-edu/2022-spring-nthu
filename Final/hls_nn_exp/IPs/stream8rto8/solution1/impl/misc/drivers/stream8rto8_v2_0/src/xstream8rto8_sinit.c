// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xstream8rto8.h"

extern XStream8rto8_Config XStream8rto8_ConfigTable[];

XStream8rto8_Config *XStream8rto8_LookupConfig(u16 DeviceId) {
	XStream8rto8_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSTREAM8RTO8_NUM_INSTANCES; Index++) {
		if (XStream8rto8_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XStream8rto8_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XStream8rto8_Initialize(XStream8rto8 *InstancePtr, u16 DeviceId) {
	XStream8rto8_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XStream8rto8_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XStream8rto8_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

