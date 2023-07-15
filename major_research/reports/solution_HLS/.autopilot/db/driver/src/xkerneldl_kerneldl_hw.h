// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x010 : Data signal of datax
//         bit 31~0 - datax[31:0] (Read/Write)
// 0x014 : Data signal of datax
//         bit 31~0 - datax[63:32] (Read/Write)
// 0x018 : reserved
// 0x01c : Data signal of datay
//         bit 31~0 - datay[31:0] (Read/Write)
// 0x020 : Data signal of datay
//         bit 31~0 - datay[63:32] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of dout
//         bit 31~0 - dout[31:0] (Read/Write)
// 0x02c : Data signal of dout
//         bit 31~0 - dout[63:32] (Read/Write)
// 0x030 : reserved
// 0x034 : Data signal of buffer_output
//         bit 31~0 - buffer_output[31:0] (Read/Write)
// 0x038 : Data signal of buffer_output
//         bit 31~0 - buffer_output[63:32] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of model
//         bit 31~0 - model[31:0] (Read/Write)
// 0x044 : reserved
// 0x048 : Data signal of wxf_V
//         bit 31~0 - wxf_V[31:0] (Read/Write)
// 0x04c : Data signal of wxf_V
//         bit 31~0 - wxf_V[63:32] (Read/Write)
// 0x050 : reserved
// 0x054 : Data signal of wxg_V
//         bit 31~0 - wxg_V[31:0] (Read/Write)
// 0x058 : Data signal of wxg_V
//         bit 31~0 - wxg_V[63:32] (Read/Write)
// 0x05c : reserved
// 0x060 : Data signal of wxi_V
//         bit 31~0 - wxi_V[31:0] (Read/Write)
// 0x064 : Data signal of wxi_V
//         bit 31~0 - wxi_V[63:32] (Read/Write)
// 0x068 : reserved
// 0x06c : Data signal of wxo_V
//         bit 31~0 - wxo_V[31:0] (Read/Write)
// 0x070 : Data signal of wxo_V
//         bit 31~0 - wxo_V[63:32] (Read/Write)
// 0x074 : reserved
// 0x078 : Data signal of whf_V
//         bit 31~0 - whf_V[31:0] (Read/Write)
// 0x07c : Data signal of whf_V
//         bit 31~0 - whf_V[63:32] (Read/Write)
// 0x080 : reserved
// 0x084 : Data signal of whg_V
//         bit 31~0 - whg_V[31:0] (Read/Write)
// 0x088 : Data signal of whg_V
//         bit 31~0 - whg_V[63:32] (Read/Write)
// 0x08c : reserved
// 0x090 : Data signal of whi_V
//         bit 31~0 - whi_V[31:0] (Read/Write)
// 0x094 : Data signal of whi_V
//         bit 31~0 - whi_V[63:32] (Read/Write)
// 0x098 : reserved
// 0x09c : Data signal of who_V
//         bit 31~0 - who_V[31:0] (Read/Write)
// 0x0a0 : Data signal of who_V
//         bit 31~0 - who_V[63:32] (Read/Write)
// 0x0a4 : reserved
// 0x0a8 : Data signal of wxf2_V
//         bit 31~0 - wxf2_V[31:0] (Read/Write)
// 0x0ac : Data signal of wxf2_V
//         bit 31~0 - wxf2_V[63:32] (Read/Write)
// 0x0b0 : reserved
// 0x0b4 : Data signal of wxg2_V
//         bit 31~0 - wxg2_V[31:0] (Read/Write)
// 0x0b8 : Data signal of wxg2_V
//         bit 31~0 - wxg2_V[63:32] (Read/Write)
// 0x0bc : reserved
// 0x0c0 : Data signal of wxi2_V
//         bit 31~0 - wxi2_V[31:0] (Read/Write)
// 0x0c4 : Data signal of wxi2_V
//         bit 31~0 - wxi2_V[63:32] (Read/Write)
// 0x0c8 : reserved
// 0x0cc : Data signal of wxo2_V
//         bit 31~0 - wxo2_V[31:0] (Read/Write)
// 0x0d0 : Data signal of wxo2_V
//         bit 31~0 - wxo2_V[63:32] (Read/Write)
// 0x0d4 : reserved
// 0x0d8 : Data signal of whf2_V
//         bit 31~0 - whf2_V[31:0] (Read/Write)
// 0x0dc : Data signal of whf2_V
//         bit 31~0 - whf2_V[63:32] (Read/Write)
// 0x0e0 : reserved
// 0x0e4 : Data signal of whg2_V
//         bit 31~0 - whg2_V[31:0] (Read/Write)
// 0x0e8 : Data signal of whg2_V
//         bit 31~0 - whg2_V[63:32] (Read/Write)
// 0x0ec : reserved
// 0x0f0 : Data signal of whi2_V
//         bit 31~0 - whi2_V[31:0] (Read/Write)
// 0x0f4 : Data signal of whi2_V
//         bit 31~0 - whi2_V[63:32] (Read/Write)
// 0x0f8 : reserved
// 0x0fc : Data signal of who2_V
//         bit 31~0 - who2_V[31:0] (Read/Write)
// 0x100 : Data signal of who2_V
//         bit 31~0 - who2_V[63:32] (Read/Write)
// 0x104 : reserved
// 0x108 : Data signal of bf_V
//         bit 31~0 - bf_V[31:0] (Read/Write)
// 0x10c : Data signal of bf_V
//         bit 31~0 - bf_V[63:32] (Read/Write)
// 0x110 : reserved
// 0x114 : Data signal of bg_V
//         bit 31~0 - bg_V[31:0] (Read/Write)
// 0x118 : Data signal of bg_V
//         bit 31~0 - bg_V[63:32] (Read/Write)
// 0x11c : reserved
// 0x120 : Data signal of bi_V
//         bit 31~0 - bi_V[31:0] (Read/Write)
// 0x124 : Data signal of bi_V
//         bit 31~0 - bi_V[63:32] (Read/Write)
// 0x128 : reserved
// 0x12c : Data signal of bo_V
//         bit 31~0 - bo_V[31:0] (Read/Write)
// 0x130 : Data signal of bo_V
//         bit 31~0 - bo_V[63:32] (Read/Write)
// 0x134 : reserved
// 0x138 : Data signal of bf2_V
//         bit 31~0 - bf2_V[31:0] (Read/Write)
// 0x13c : Data signal of bf2_V
//         bit 31~0 - bf2_V[63:32] (Read/Write)
// 0x140 : reserved
// 0x144 : Data signal of bg2_V
//         bit 31~0 - bg2_V[31:0] (Read/Write)
// 0x148 : Data signal of bg2_V
//         bit 31~0 - bg2_V[63:32] (Read/Write)
// 0x14c : reserved
// 0x150 : Data signal of bi2_V
//         bit 31~0 - bi2_V[31:0] (Read/Write)
// 0x154 : Data signal of bi2_V
//         bit 31~0 - bi2_V[63:32] (Read/Write)
// 0x158 : reserved
// 0x15c : Data signal of bo2_V
//         bit 31~0 - bo2_V[31:0] (Read/Write)
// 0x160 : Data signal of bo2_V
//         bit 31~0 - bo2_V[63:32] (Read/Write)
// 0x164 : reserved
// 0x168 : Data signal of h_wxf_V
//         bit 31~0 - h_wxf_V[31:0] (Read/Write)
// 0x16c : Data signal of h_wxf_V
//         bit 31~0 - h_wxf_V[63:32] (Read/Write)
// 0x170 : reserved
// 0x174 : Data signal of h_wxg_V
//         bit 31~0 - h_wxg_V[31:0] (Read/Write)
// 0x178 : Data signal of h_wxg_V
//         bit 31~0 - h_wxg_V[63:32] (Read/Write)
// 0x17c : reserved
// 0x180 : Data signal of h_wxi_V
//         bit 31~0 - h_wxi_V[31:0] (Read/Write)
// 0x184 : Data signal of h_wxi_V
//         bit 31~0 - h_wxi_V[63:32] (Read/Write)
// 0x188 : reserved
// 0x18c : Data signal of h_wxo_V
//         bit 31~0 - h_wxo_V[31:0] (Read/Write)
// 0x190 : Data signal of h_wxo_V
//         bit 31~0 - h_wxo_V[63:32] (Read/Write)
// 0x194 : reserved
// 0x198 : Data signal of h_whf_V
//         bit 31~0 - h_whf_V[31:0] (Read/Write)
// 0x19c : Data signal of h_whf_V
//         bit 31~0 - h_whf_V[63:32] (Read/Write)
// 0x1a0 : reserved
// 0x1a4 : Data signal of h_whg_V
//         bit 31~0 - h_whg_V[31:0] (Read/Write)
// 0x1a8 : Data signal of h_whg_V
//         bit 31~0 - h_whg_V[63:32] (Read/Write)
// 0x1ac : reserved
// 0x1b0 : Data signal of h_whi_V
//         bit 31~0 - h_whi_V[31:0] (Read/Write)
// 0x1b4 : Data signal of h_whi_V
//         bit 31~0 - h_whi_V[63:32] (Read/Write)
// 0x1b8 : reserved
// 0x1bc : Data signal of h_who_V
//         bit 31~0 - h_who_V[31:0] (Read/Write)
// 0x1c0 : Data signal of h_who_V
//         bit 31~0 - h_who_V[63:32] (Read/Write)
// 0x1c4 : reserved
// 0x1c8 : Data signal of h_wxf2_V
//         bit 31~0 - h_wxf2_V[31:0] (Read/Write)
// 0x1cc : Data signal of h_wxf2_V
//         bit 31~0 - h_wxf2_V[63:32] (Read/Write)
// 0x1d0 : reserved
// 0x1d4 : Data signal of h_wxg2_V
//         bit 31~0 - h_wxg2_V[31:0] (Read/Write)
// 0x1d8 : Data signal of h_wxg2_V
//         bit 31~0 - h_wxg2_V[63:32] (Read/Write)
// 0x1dc : reserved
// 0x1e0 : Data signal of h_wxi2_V
//         bit 31~0 - h_wxi2_V[31:0] (Read/Write)
// 0x1e4 : Data signal of h_wxi2_V
//         bit 31~0 - h_wxi2_V[63:32] (Read/Write)
// 0x1e8 : reserved
// 0x1ec : Data signal of h_wxo2_V
//         bit 31~0 - h_wxo2_V[31:0] (Read/Write)
// 0x1f0 : Data signal of h_wxo2_V
//         bit 31~0 - h_wxo2_V[63:32] (Read/Write)
// 0x1f4 : reserved
// 0x1f8 : Data signal of h_whf2_V
//         bit 31~0 - h_whf2_V[31:0] (Read/Write)
// 0x1fc : Data signal of h_whf2_V
//         bit 31~0 - h_whf2_V[63:32] (Read/Write)
// 0x200 : reserved
// 0x204 : Data signal of h_whg2_V
//         bit 31~0 - h_whg2_V[31:0] (Read/Write)
// 0x208 : Data signal of h_whg2_V
//         bit 31~0 - h_whg2_V[63:32] (Read/Write)
// 0x20c : reserved
// 0x210 : Data signal of h_whi2_V
//         bit 31~0 - h_whi2_V[31:0] (Read/Write)
// 0x214 : Data signal of h_whi2_V
//         bit 31~0 - h_whi2_V[63:32] (Read/Write)
// 0x218 : reserved
// 0x21c : Data signal of h_who2_V
//         bit 31~0 - h_who2_V[31:0] (Read/Write)
// 0x220 : Data signal of h_who2_V
//         bit 31~0 - h_who2_V[63:32] (Read/Write)
// 0x224 : reserved
// 0x228 : Data signal of h_bf_V
//         bit 31~0 - h_bf_V[31:0] (Read/Write)
// 0x22c : Data signal of h_bf_V
//         bit 31~0 - h_bf_V[63:32] (Read/Write)
// 0x230 : reserved
// 0x234 : Data signal of h_bg_V
//         bit 31~0 - h_bg_V[31:0] (Read/Write)
// 0x238 : Data signal of h_bg_V
//         bit 31~0 - h_bg_V[63:32] (Read/Write)
// 0x23c : reserved
// 0x240 : Data signal of h_bi_V
//         bit 31~0 - h_bi_V[31:0] (Read/Write)
// 0x244 : Data signal of h_bi_V
//         bit 31~0 - h_bi_V[63:32] (Read/Write)
// 0x248 : reserved
// 0x24c : Data signal of h_bo_V
//         bit 31~0 - h_bo_V[31:0] (Read/Write)
// 0x250 : Data signal of h_bo_V
//         bit 31~0 - h_bo_V[63:32] (Read/Write)
// 0x254 : reserved
// 0x258 : Data signal of h_bf2_V
//         bit 31~0 - h_bf2_V[31:0] (Read/Write)
// 0x25c : Data signal of h_bf2_V
//         bit 31~0 - h_bf2_V[63:32] (Read/Write)
// 0x260 : reserved
// 0x264 : Data signal of h_bg2_V
//         bit 31~0 - h_bg2_V[31:0] (Read/Write)
// 0x268 : Data signal of h_bg2_V
//         bit 31~0 - h_bg2_V[63:32] (Read/Write)
// 0x26c : reserved
// 0x270 : Data signal of h_bi2_V
//         bit 31~0 - h_bi2_V[31:0] (Read/Write)
// 0x274 : Data signal of h_bi2_V
//         bit 31~0 - h_bi2_V[63:32] (Read/Write)
// 0x278 : reserved
// 0x27c : Data signal of h_bo2_V
//         bit 31~0 - h_bo2_V[31:0] (Read/Write)
// 0x280 : Data signal of h_bo2_V
//         bit 31~0 - h_bo2_V[63:32] (Read/Write)
// 0x284 : reserved
// 0x288 : Data signal of count
//         bit 31~0 - count[31:0] (Read/Write)
// 0x28c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XKERNELDL_KERNELDL_CONTROL_ADDR_AP_CTRL            0x000
#define XKERNELDL_KERNELDL_CONTROL_ADDR_GIE                0x004
#define XKERNELDL_KERNELDL_CONTROL_ADDR_IER                0x008
#define XKERNELDL_KERNELDL_CONTROL_ADDR_ISR                0x00c
#define XKERNELDL_KERNELDL_CONTROL_ADDR_DATAX_DATA         0x010
#define XKERNELDL_KERNELDL_CONTROL_BITS_DATAX_DATA         64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_DATAY_DATA         0x01c
#define XKERNELDL_KERNELDL_CONTROL_BITS_DATAY_DATA         64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_DOUT_DATA          0x028
#define XKERNELDL_KERNELDL_CONTROL_BITS_DOUT_DATA          64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_BUFFER_OUTPUT_DATA 0x034
#define XKERNELDL_KERNELDL_CONTROL_BITS_BUFFER_OUTPUT_DATA 64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_MODEL_DATA         0x040
#define XKERNELDL_KERNELDL_CONTROL_BITS_MODEL_DATA         32
#define XKERNELDL_KERNELDL_CONTROL_ADDR_WXF_V_DATA         0x048
#define XKERNELDL_KERNELDL_CONTROL_BITS_WXF_V_DATA         64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_WXG_V_DATA         0x054
#define XKERNELDL_KERNELDL_CONTROL_BITS_WXG_V_DATA         64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_WXI_V_DATA         0x060
#define XKERNELDL_KERNELDL_CONTROL_BITS_WXI_V_DATA         64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_WXO_V_DATA         0x06c
#define XKERNELDL_KERNELDL_CONTROL_BITS_WXO_V_DATA         64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_WHF_V_DATA         0x078
#define XKERNELDL_KERNELDL_CONTROL_BITS_WHF_V_DATA         64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_WHG_V_DATA         0x084
#define XKERNELDL_KERNELDL_CONTROL_BITS_WHG_V_DATA         64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_WHI_V_DATA         0x090
#define XKERNELDL_KERNELDL_CONTROL_BITS_WHI_V_DATA         64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_WHO_V_DATA         0x09c
#define XKERNELDL_KERNELDL_CONTROL_BITS_WHO_V_DATA         64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_WXF2_V_DATA        0x0a8
#define XKERNELDL_KERNELDL_CONTROL_BITS_WXF2_V_DATA        64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_WXG2_V_DATA        0x0b4
#define XKERNELDL_KERNELDL_CONTROL_BITS_WXG2_V_DATA        64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_WXI2_V_DATA        0x0c0
#define XKERNELDL_KERNELDL_CONTROL_BITS_WXI2_V_DATA        64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_WXO2_V_DATA        0x0cc
#define XKERNELDL_KERNELDL_CONTROL_BITS_WXO2_V_DATA        64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_WHF2_V_DATA        0x0d8
#define XKERNELDL_KERNELDL_CONTROL_BITS_WHF2_V_DATA        64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_WHG2_V_DATA        0x0e4
#define XKERNELDL_KERNELDL_CONTROL_BITS_WHG2_V_DATA        64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_WHI2_V_DATA        0x0f0
#define XKERNELDL_KERNELDL_CONTROL_BITS_WHI2_V_DATA        64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_WHO2_V_DATA        0x0fc
#define XKERNELDL_KERNELDL_CONTROL_BITS_WHO2_V_DATA        64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_BF_V_DATA          0x108
#define XKERNELDL_KERNELDL_CONTROL_BITS_BF_V_DATA          64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_BG_V_DATA          0x114
#define XKERNELDL_KERNELDL_CONTROL_BITS_BG_V_DATA          64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_BI_V_DATA          0x120
#define XKERNELDL_KERNELDL_CONTROL_BITS_BI_V_DATA          64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_BO_V_DATA          0x12c
#define XKERNELDL_KERNELDL_CONTROL_BITS_BO_V_DATA          64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_BF2_V_DATA         0x138
#define XKERNELDL_KERNELDL_CONTROL_BITS_BF2_V_DATA         64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_BG2_V_DATA         0x144
#define XKERNELDL_KERNELDL_CONTROL_BITS_BG2_V_DATA         64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_BI2_V_DATA         0x150
#define XKERNELDL_KERNELDL_CONTROL_BITS_BI2_V_DATA         64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_BO2_V_DATA         0x15c
#define XKERNELDL_KERNELDL_CONTROL_BITS_BO2_V_DATA         64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXF_V_DATA       0x168
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_WXF_V_DATA       64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXG_V_DATA       0x174
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_WXG_V_DATA       64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXI_V_DATA       0x180
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_WXI_V_DATA       64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXO_V_DATA       0x18c
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_WXO_V_DATA       64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHF_V_DATA       0x198
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_WHF_V_DATA       64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHG_V_DATA       0x1a4
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_WHG_V_DATA       64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHI_V_DATA       0x1b0
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_WHI_V_DATA       64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHO_V_DATA       0x1bc
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_WHO_V_DATA       64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXF2_V_DATA      0x1c8
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_WXF2_V_DATA      64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXG2_V_DATA      0x1d4
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_WXG2_V_DATA      64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXI2_V_DATA      0x1e0
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_WXI2_V_DATA      64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_WXO2_V_DATA      0x1ec
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_WXO2_V_DATA      64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHF2_V_DATA      0x1f8
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_WHF2_V_DATA      64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHG2_V_DATA      0x204
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_WHG2_V_DATA      64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHI2_V_DATA      0x210
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_WHI2_V_DATA      64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_WHO2_V_DATA      0x21c
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_WHO2_V_DATA      64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_BF_V_DATA        0x228
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_BF_V_DATA        64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_BG_V_DATA        0x234
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_BG_V_DATA        64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_BI_V_DATA        0x240
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_BI_V_DATA        64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_BO_V_DATA        0x24c
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_BO_V_DATA        64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_BF2_V_DATA       0x258
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_BF2_V_DATA       64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_BG2_V_DATA       0x264
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_BG2_V_DATA       64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_BI2_V_DATA       0x270
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_BI2_V_DATA       64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_H_BO2_V_DATA       0x27c
#define XKERNELDL_KERNELDL_CONTROL_BITS_H_BO2_V_DATA       64
#define XKERNELDL_KERNELDL_CONTROL_ADDR_COUNT_DATA         0x288
#define XKERNELDL_KERNELDL_CONTROL_BITS_COUNT_DATA         32

