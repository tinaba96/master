// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
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

void XKerneldl_kerneldl_Set_buffer_output(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BUFFER_OUTPUT_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BUFFER_OUTPUT_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_buffer_output(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BUFFER_OUTPUT_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BUFFER_OUTPUT_DATA + 4) << 32;
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

void XKerneldl_kerneldl_Set_wxf_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXF_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXF_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_wxf_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXF_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXF_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_wxg_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXG_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXG_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_wxg_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXG_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXG_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_wxi_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXI_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXI_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_wxi_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXI_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXI_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_wxo_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXO_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXO_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_wxo_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXO_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXO_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_whf_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHF_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHF_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_whf_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHF_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHF_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_whg_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHG_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHG_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_whg_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHG_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHG_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_whi_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHI_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHI_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_whi_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHI_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHI_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_who_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHO_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHO_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_who_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHO_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHO_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_wxf2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXF2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXF2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_wxf2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXF2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXF2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_wxg2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXG2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXG2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_wxg2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXG2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXG2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_wxi2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXI2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXI2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_wxi2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXI2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXI2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_wxo2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXO2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXO2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_wxo2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXO2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WXO2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_whf2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHF2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHF2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_whf2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHF2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHF2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_whg2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHG2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHG2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_whg2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHG2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHG2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_whi2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHI2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHI2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_whi2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHI2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHI2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_who2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHO2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHO2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_who2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHO2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_WHO2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_bf_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BF_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BF_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_bf_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BF_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BF_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_bg_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BG_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BG_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_bg_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BG_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BG_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_bi_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BI_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BI_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_bi_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BI_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BI_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_bo_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BO_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BO_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_bo_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BO_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BO_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_bf2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BF2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BF2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_bf2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BF2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BF2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_bg2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BG2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BG2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_bg2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BG2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BG2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_bi2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BI2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BI2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_bi2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BI2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BI2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_bo2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BO2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BO2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_bo2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BO2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_BO2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_wxf_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXF_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXF_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_wxf_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXF_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXF_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_wxg_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXG_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXG_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_wxg_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXG_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXG_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_wxi_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXI_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXI_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_wxi_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXI_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXI_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_wxo_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXO_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXO_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_wxo_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXO_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXO_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_whf_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHF_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHF_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_whf_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHF_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHF_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_whg_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHG_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHG_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_whg_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHG_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHG_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_whi_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHI_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHI_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_whi_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHI_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHI_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_who_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHO_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHO_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_who_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHO_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHO_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_wxf2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXF2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXF2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_wxf2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXF2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXF2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_wxg2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXG2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXG2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_wxg2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXG2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXG2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_wxi2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXI2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXI2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_wxi2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXI2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXI2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_wxo2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXO2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXO2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_wxo2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXO2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXO2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_whf2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHF2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHF2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_whf2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHF2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHF2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_whg2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHG2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHG2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_whg2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHG2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHG2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_whi2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHI2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHI2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_whi2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHI2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHI2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_who2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHO2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHO2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_who2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHO2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHO2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_bf_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BF_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BF_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_bf_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BF_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BF_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_bg_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BG_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BG_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_bg_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BG_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BG_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_bi_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BI_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BI_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_bi_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BI_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BI_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_bo_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BO_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BO_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_bo_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BO_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BO_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_bf2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BF2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BF2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_bf2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BF2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BF2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_bg2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BG2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BG2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_bg2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BG2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BG2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_bi2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BI2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BI2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_bi2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BI2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BI2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_h_bo2_V(XKerneldl_kerneldl *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BO2_V_DATA, (u32)(Data));
    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BO2_V_DATA + 4, (u32)(Data >> 32));
}

u64 XKerneldl_kerneldl_Get_h_bo2_V(XKerneldl_kerneldl *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BO2_V_DATA);
    Data += (u64)XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_H_BO2_V_DATA + 4) << 32;
    return Data;
}

void XKerneldl_kerneldl_Set_count(XKerneldl_kerneldl *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKerneldl_kerneldl_WriteReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_COUNT_DATA, Data);
}

u32 XKerneldl_kerneldl_Get_count(XKerneldl_kerneldl *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKerneldl_kerneldl_ReadReg(InstancePtr->Control_BaseAddress, XKERNELDL_KERNELDL_CONTROL_ADDR_COUNT_DATA);
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

