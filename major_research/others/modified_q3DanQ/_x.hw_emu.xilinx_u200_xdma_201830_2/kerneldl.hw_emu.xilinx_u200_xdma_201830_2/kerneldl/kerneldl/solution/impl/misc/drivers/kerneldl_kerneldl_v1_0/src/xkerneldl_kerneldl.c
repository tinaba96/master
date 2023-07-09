// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xkerneldl_kerneldl.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKerneldl_kerneldl_CfgInitialize(XKerneldl_kerneldl *InstancePtr, XKerneldl_kerneldl_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKerneldl_kerneldl_Start(XKerneldl_kerneldl *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKerneldl_kerneldl_IsDone(XKerneldl_kerneldl *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKerneldl_kerneldl_IsIdle(XKerneldl_kerneldl *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKerneldl_kerneldl_IsReady(XKerneldl_kerneldl *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKerneldl_kerneldl_EnableAutoRestart(XKerneldl_kerneldl *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XKerneldl_kerneldl_DisableAutoRestart(XKerneldl_kerneldl *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_AP_CTRL, 0);
}

void XKerneldl_kerneldl_Set_datax(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_DATAX_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_DATAX_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_datax(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_DATAX_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_DATAX_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_datay(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_DATAY_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_DATAY_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_datay(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_DATAY_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_DATAY_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_dout(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_DOUT_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_DOUT_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_dout(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_DOUT_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_DOUT_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_model(XKerneldl_kerneldl *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_MODEL_DATA, Data);
}

u32 XKerneldl_kerneldl_Get_model(XKerneldl_kerneldl *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_MODEL_DATA);
    return Data;
}

void XKerneldl_kerneldl_InterruptGlobalEnable(XKerneldl_kerneldl *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_GIE, 1);
}

void XKerneldl_kerneldl_InterruptGlobalDisable(XKerneldl_kerneldl *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_GIE, 0);
}

void XKerneldl_kerneldl_InterruptEnable(XKerneldl_kerneldl *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_IER);
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_IER, Register | Mask);
}

void XKerneldl_kerneldl_InterruptDisable(XKerneldl_kerneldl *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_IER);
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XKerneldl_kerneldl_InterruptClear(XKerneldl_kerneldl *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_ISR, Mask);
}

u32 XKerneldl_kerneldl_InterruptGetEnabled(XKerneldl_kerneldl *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_IER);
}

u32 XKerneldl_kerneldl_InterruptGetStatus(XKerneldl_kerneldl *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_ISR);
}

