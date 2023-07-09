// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XKERNELDL_KERNELDL_H
#define XKERNELDL_KERNELDL_H

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
#include "xkerneldl_kerneldl_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XKerneldl_kerneldl_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XKerneldl_kerneldl;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XKerneldl_kerneldl_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XKerneldl_kerneldl_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XKerneldl_kerneldl_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XKerneldl_kerneldl_ReadReg(BaseAddress, RegOffset) \
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
int XKerneldl_kerneldl_Initialize(XKerneldl_kerneldl *InstancePtr, u16 DeviceId);
XKerneldl_kerneldl_Config* XKerneldl_kerneldl_LookupConfig(u16 DeviceId);
int XKerneldl_kerneldl_CfgInitialize(XKerneldl_kerneldl *InstancePtr, XKerneldl_kerneldl_Config *ConfigPtr);
#else
int XKerneldl_kerneldl_Initialize(XKerneldl_kerneldl *InstancePtr, const char* InstanceName);
int XKerneldl_kerneldl_Release(XKerneldl_kerneldl *InstancePtr);
#endif

void XKerneldl_kerneldl_Start(XKerneldl_kerneldl *InstancePtr);
u32 XKerneldl_kerneldl_IsDone(XKerneldl_kerneldl *InstancePtr);
u32 XKerneldl_kerneldl_IsIdle(XKerneldl_kerneldl *InstancePtr);
u32 XKerneldl_kerneldl_IsReady(XKerneldl_kerneldl *InstancePtr);
void XKerneldl_kerneldl_EnableAutoRestart(XKerneldl_kerneldl *InstancePtr);
void XKerneldl_kerneldl_DisableAutoRestart(XKerneldl_kerneldl *InstancePtr);

void XKerneldl_kerneldl_Set_datax(XKerneldl_kerneldl *InstancePtr, u64 Data);
u64 XKerneldl_kerneldl_Get_datax(XKerneldl_kerneldl *InstancePtr);
void XKerneldl_kerneldl_Set_datay(XKerneldl_kerneldl *InstancePtr, u64 Data);
u64 XKerneldl_kerneldl_Get_datay(XKerneldl_kerneldl *InstancePtr);
void XKerneldl_kerneldl_Set_dout(XKerneldl_kerneldl *InstancePtr, u64 Data);
u64 XKerneldl_kerneldl_Get_dout(XKerneldl_kerneldl *InstancePtr);
void XKerneldl_kerneldl_Set_model(XKerneldl_kerneldl *InstancePtr, u32 Data);
u32 XKerneldl_kerneldl_Get_model(XKerneldl_kerneldl *InstancePtr);

void XKerneldl_kerneldl_InterruptGlobalEnable(XKerneldl_kerneldl *InstancePtr);
void XKerneldl_kerneldl_InterruptGlobalDisable(XKerneldl_kerneldl *InstancePtr);
void XKerneldl_kerneldl_InterruptEnable(XKerneldl_kerneldl *InstancePtr, u32 Mask);
void XKerneldl_kerneldl_InterruptDisable(XKerneldl_kerneldl *InstancePtr, u32 Mask);
void XKerneldl_kerneldl_InterruptClear(XKerneldl_kerneldl *InstancePtr, u32 Mask);
u32 XKerneldl_kerneldl_InterruptGetEnabled(XKerneldl_kerneldl *InstancePtr);
u32 XKerneldl_kerneldl_InterruptGetStatus(XKerneldl_kerneldl *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
