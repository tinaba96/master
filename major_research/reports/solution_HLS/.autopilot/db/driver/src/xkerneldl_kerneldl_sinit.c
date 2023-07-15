// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xkerneldl_kerneldl.h"

extern XKerneldl_kerneldl_Config XKerneldl_kerneldl_ConfigTable[];

XKerneldl_kerneldl_Config *XKerneldl_kerneldl_LookupConfig(u16 DeviceId) {
	XKerneldl_kerneldl_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XKERNELDL_KERNELDL_NUM_INSTANCES; Index++) {
		if (XKerneldl_kerneldl_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XKerneldl_kerneldl_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKerneldl_kerneldl_Initialize(XKerneldl_kerneldl *InstancePtr, u16 DeviceId) {
	XKerneldl_kerneldl_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKerneldl_kerneldl_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKerneldl_kerneldl_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

