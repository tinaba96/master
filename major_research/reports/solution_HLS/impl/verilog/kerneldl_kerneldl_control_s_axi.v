// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module kerneldl_kerneldl_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 10,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle,
    output wire [63:0]                   datax,
    output wire [63:0]                   datay,
    output wire [63:0]                   dout,
    output wire [63:0]                   buffer_output,
    output wire [31:0]                   model,
    output wire [63:0]                   wxf_V,
    output wire [63:0]                   wxg_V,
    output wire [63:0]                   wxi_V,
    output wire [63:0]                   wxo_V,
    output wire [63:0]                   whf_V,
    output wire [63:0]                   whg_V,
    output wire [63:0]                   whi_V,
    output wire [63:0]                   who_V,
    output wire [63:0]                   wxf2_V,
    output wire [63:0]                   wxg2_V,
    output wire [63:0]                   wxi2_V,
    output wire [63:0]                   wxo2_V,
    output wire [63:0]                   whf2_V,
    output wire [63:0]                   whg2_V,
    output wire [63:0]                   whi2_V,
    output wire [63:0]                   who2_V,
    output wire [63:0]                   bf_V,
    output wire [63:0]                   bg_V,
    output wire [63:0]                   bi_V,
    output wire [63:0]                   bo_V,
    output wire [63:0]                   bf2_V,
    output wire [63:0]                   bg2_V,
    output wire [63:0]                   bi2_V,
    output wire [63:0]                   bo2_V,
    output wire [63:0]                   h_wxf_V,
    output wire [63:0]                   h_wxg_V,
    output wire [63:0]                   h_wxi_V,
    output wire [63:0]                   h_wxo_V,
    output wire [63:0]                   h_whf_V,
    output wire [63:0]                   h_whg_V,
    output wire [63:0]                   h_whi_V,
    output wire [63:0]                   h_who_V,
    output wire [63:0]                   h_wxf2_V,
    output wire [63:0]                   h_wxg2_V,
    output wire [63:0]                   h_wxi2_V,
    output wire [63:0]                   h_wxo2_V,
    output wire [63:0]                   h_whf2_V,
    output wire [63:0]                   h_whg2_V,
    output wire [63:0]                   h_whi2_V,
    output wire [63:0]                   h_who2_V,
    output wire [63:0]                   h_bf_V,
    output wire [63:0]                   h_bg_V,
    output wire [63:0]                   h_bi_V,
    output wire [63:0]                   h_bo_V,
    output wire [63:0]                   h_bf2_V,
    output wire [63:0]                   h_bg2_V,
    output wire [63:0]                   h_bi2_V,
    output wire [63:0]                   h_bo2_V,
    output wire [31:0]                   count
);
//------------------------Address Info-------------------
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

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL              = 10'h000,
    ADDR_GIE                  = 10'h004,
    ADDR_IER                  = 10'h008,
    ADDR_ISR                  = 10'h00c,
    ADDR_DATAX_DATA_0         = 10'h010,
    ADDR_DATAX_DATA_1         = 10'h014,
    ADDR_DATAX_CTRL           = 10'h018,
    ADDR_DATAY_DATA_0         = 10'h01c,
    ADDR_DATAY_DATA_1         = 10'h020,
    ADDR_DATAY_CTRL           = 10'h024,
    ADDR_DOUT_DATA_0          = 10'h028,
    ADDR_DOUT_DATA_1          = 10'h02c,
    ADDR_DOUT_CTRL            = 10'h030,
    ADDR_BUFFER_OUTPUT_DATA_0 = 10'h034,
    ADDR_BUFFER_OUTPUT_DATA_1 = 10'h038,
    ADDR_BUFFER_OUTPUT_CTRL   = 10'h03c,
    ADDR_MODEL_DATA_0         = 10'h040,
    ADDR_MODEL_CTRL           = 10'h044,
    ADDR_WXF_V_DATA_0         = 10'h048,
    ADDR_WXF_V_DATA_1         = 10'h04c,
    ADDR_WXF_V_CTRL           = 10'h050,
    ADDR_WXG_V_DATA_0         = 10'h054,
    ADDR_WXG_V_DATA_1         = 10'h058,
    ADDR_WXG_V_CTRL           = 10'h05c,
    ADDR_WXI_V_DATA_0         = 10'h060,
    ADDR_WXI_V_DATA_1         = 10'h064,
    ADDR_WXI_V_CTRL           = 10'h068,
    ADDR_WXO_V_DATA_0         = 10'h06c,
    ADDR_WXO_V_DATA_1         = 10'h070,
    ADDR_WXO_V_CTRL           = 10'h074,
    ADDR_WHF_V_DATA_0         = 10'h078,
    ADDR_WHF_V_DATA_1         = 10'h07c,
    ADDR_WHF_V_CTRL           = 10'h080,
    ADDR_WHG_V_DATA_0         = 10'h084,
    ADDR_WHG_V_DATA_1         = 10'h088,
    ADDR_WHG_V_CTRL           = 10'h08c,
    ADDR_WHI_V_DATA_0         = 10'h090,
    ADDR_WHI_V_DATA_1         = 10'h094,
    ADDR_WHI_V_CTRL           = 10'h098,
    ADDR_WHO_V_DATA_0         = 10'h09c,
    ADDR_WHO_V_DATA_1         = 10'h0a0,
    ADDR_WHO_V_CTRL           = 10'h0a4,
    ADDR_WXF2_V_DATA_0        = 10'h0a8,
    ADDR_WXF2_V_DATA_1        = 10'h0ac,
    ADDR_WXF2_V_CTRL          = 10'h0b0,
    ADDR_WXG2_V_DATA_0        = 10'h0b4,
    ADDR_WXG2_V_DATA_1        = 10'h0b8,
    ADDR_WXG2_V_CTRL          = 10'h0bc,
    ADDR_WXI2_V_DATA_0        = 10'h0c0,
    ADDR_WXI2_V_DATA_1        = 10'h0c4,
    ADDR_WXI2_V_CTRL          = 10'h0c8,
    ADDR_WXO2_V_DATA_0        = 10'h0cc,
    ADDR_WXO2_V_DATA_1        = 10'h0d0,
    ADDR_WXO2_V_CTRL          = 10'h0d4,
    ADDR_WHF2_V_DATA_0        = 10'h0d8,
    ADDR_WHF2_V_DATA_1        = 10'h0dc,
    ADDR_WHF2_V_CTRL          = 10'h0e0,
    ADDR_WHG2_V_DATA_0        = 10'h0e4,
    ADDR_WHG2_V_DATA_1        = 10'h0e8,
    ADDR_WHG2_V_CTRL          = 10'h0ec,
    ADDR_WHI2_V_DATA_0        = 10'h0f0,
    ADDR_WHI2_V_DATA_1        = 10'h0f4,
    ADDR_WHI2_V_CTRL          = 10'h0f8,
    ADDR_WHO2_V_DATA_0        = 10'h0fc,
    ADDR_WHO2_V_DATA_1        = 10'h100,
    ADDR_WHO2_V_CTRL          = 10'h104,
    ADDR_BF_V_DATA_0          = 10'h108,
    ADDR_BF_V_DATA_1          = 10'h10c,
    ADDR_BF_V_CTRL            = 10'h110,
    ADDR_BG_V_DATA_0          = 10'h114,
    ADDR_BG_V_DATA_1          = 10'h118,
    ADDR_BG_V_CTRL            = 10'h11c,
    ADDR_BI_V_DATA_0          = 10'h120,
    ADDR_BI_V_DATA_1          = 10'h124,
    ADDR_BI_V_CTRL            = 10'h128,
    ADDR_BO_V_DATA_0          = 10'h12c,
    ADDR_BO_V_DATA_1          = 10'h130,
    ADDR_BO_V_CTRL            = 10'h134,
    ADDR_BF2_V_DATA_0         = 10'h138,
    ADDR_BF2_V_DATA_1         = 10'h13c,
    ADDR_BF2_V_CTRL           = 10'h140,
    ADDR_BG2_V_DATA_0         = 10'h144,
    ADDR_BG2_V_DATA_1         = 10'h148,
    ADDR_BG2_V_CTRL           = 10'h14c,
    ADDR_BI2_V_DATA_0         = 10'h150,
    ADDR_BI2_V_DATA_1         = 10'h154,
    ADDR_BI2_V_CTRL           = 10'h158,
    ADDR_BO2_V_DATA_0         = 10'h15c,
    ADDR_BO2_V_DATA_1         = 10'h160,
    ADDR_BO2_V_CTRL           = 10'h164,
    ADDR_H_WXF_V_DATA_0       = 10'h168,
    ADDR_H_WXF_V_DATA_1       = 10'h16c,
    ADDR_H_WXF_V_CTRL         = 10'h170,
    ADDR_H_WXG_V_DATA_0       = 10'h174,
    ADDR_H_WXG_V_DATA_1       = 10'h178,
    ADDR_H_WXG_V_CTRL         = 10'h17c,
    ADDR_H_WXI_V_DATA_0       = 10'h180,
    ADDR_H_WXI_V_DATA_1       = 10'h184,
    ADDR_H_WXI_V_CTRL         = 10'h188,
    ADDR_H_WXO_V_DATA_0       = 10'h18c,
    ADDR_H_WXO_V_DATA_1       = 10'h190,
    ADDR_H_WXO_V_CTRL         = 10'h194,
    ADDR_H_WHF_V_DATA_0       = 10'h198,
    ADDR_H_WHF_V_DATA_1       = 10'h19c,
    ADDR_H_WHF_V_CTRL         = 10'h1a0,
    ADDR_H_WHG_V_DATA_0       = 10'h1a4,
    ADDR_H_WHG_V_DATA_1       = 10'h1a8,
    ADDR_H_WHG_V_CTRL         = 10'h1ac,
    ADDR_H_WHI_V_DATA_0       = 10'h1b0,
    ADDR_H_WHI_V_DATA_1       = 10'h1b4,
    ADDR_H_WHI_V_CTRL         = 10'h1b8,
    ADDR_H_WHO_V_DATA_0       = 10'h1bc,
    ADDR_H_WHO_V_DATA_1       = 10'h1c0,
    ADDR_H_WHO_V_CTRL         = 10'h1c4,
    ADDR_H_WXF2_V_DATA_0      = 10'h1c8,
    ADDR_H_WXF2_V_DATA_1      = 10'h1cc,
    ADDR_H_WXF2_V_CTRL        = 10'h1d0,
    ADDR_H_WXG2_V_DATA_0      = 10'h1d4,
    ADDR_H_WXG2_V_DATA_1      = 10'h1d8,
    ADDR_H_WXG2_V_CTRL        = 10'h1dc,
    ADDR_H_WXI2_V_DATA_0      = 10'h1e0,
    ADDR_H_WXI2_V_DATA_1      = 10'h1e4,
    ADDR_H_WXI2_V_CTRL        = 10'h1e8,
    ADDR_H_WXO2_V_DATA_0      = 10'h1ec,
    ADDR_H_WXO2_V_DATA_1      = 10'h1f0,
    ADDR_H_WXO2_V_CTRL        = 10'h1f4,
    ADDR_H_WHF2_V_DATA_0      = 10'h1f8,
    ADDR_H_WHF2_V_DATA_1      = 10'h1fc,
    ADDR_H_WHF2_V_CTRL        = 10'h200,
    ADDR_H_WHG2_V_DATA_0      = 10'h204,
    ADDR_H_WHG2_V_DATA_1      = 10'h208,
    ADDR_H_WHG2_V_CTRL        = 10'h20c,
    ADDR_H_WHI2_V_DATA_0      = 10'h210,
    ADDR_H_WHI2_V_DATA_1      = 10'h214,
    ADDR_H_WHI2_V_CTRL        = 10'h218,
    ADDR_H_WHO2_V_DATA_0      = 10'h21c,
    ADDR_H_WHO2_V_DATA_1      = 10'h220,
    ADDR_H_WHO2_V_CTRL        = 10'h224,
    ADDR_H_BF_V_DATA_0        = 10'h228,
    ADDR_H_BF_V_DATA_1        = 10'h22c,
    ADDR_H_BF_V_CTRL          = 10'h230,
    ADDR_H_BG_V_DATA_0        = 10'h234,
    ADDR_H_BG_V_DATA_1        = 10'h238,
    ADDR_H_BG_V_CTRL          = 10'h23c,
    ADDR_H_BI_V_DATA_0        = 10'h240,
    ADDR_H_BI_V_DATA_1        = 10'h244,
    ADDR_H_BI_V_CTRL          = 10'h248,
    ADDR_H_BO_V_DATA_0        = 10'h24c,
    ADDR_H_BO_V_DATA_1        = 10'h250,
    ADDR_H_BO_V_CTRL          = 10'h254,
    ADDR_H_BF2_V_DATA_0       = 10'h258,
    ADDR_H_BF2_V_DATA_1       = 10'h25c,
    ADDR_H_BF2_V_CTRL         = 10'h260,
    ADDR_H_BG2_V_DATA_0       = 10'h264,
    ADDR_H_BG2_V_DATA_1       = 10'h268,
    ADDR_H_BG2_V_CTRL         = 10'h26c,
    ADDR_H_BI2_V_DATA_0       = 10'h270,
    ADDR_H_BI2_V_DATA_1       = 10'h274,
    ADDR_H_BI2_V_CTRL         = 10'h278,
    ADDR_H_BO2_V_DATA_0       = 10'h27c,
    ADDR_H_BO2_V_DATA_1       = 10'h280,
    ADDR_H_BO2_V_CTRL         = 10'h284,
    ADDR_COUNT_DATA_0         = 10'h288,
    ADDR_COUNT_CTRL           = 10'h28c,
    WRIDLE                    = 2'd0,
    WRDATA                    = 2'd1,
    WRRESP                    = 2'd2,
    WRRESET                   = 2'd3,
    RDIDLE                    = 2'd0,
    RDDATA                    = 2'd1,
    RDRESET                   = 2'd2,
    ADDR_BITS         = 10;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready;
    reg                           int_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [63:0]                   int_datax = 'b0;
    reg  [63:0]                   int_datay = 'b0;
    reg  [63:0]                   int_dout = 'b0;
    reg  [63:0]                   int_buffer_output = 'b0;
    reg  [31:0]                   int_model = 'b0;
    reg  [63:0]                   int_wxf_V = 'b0;
    reg  [63:0]                   int_wxg_V = 'b0;
    reg  [63:0]                   int_wxi_V = 'b0;
    reg  [63:0]                   int_wxo_V = 'b0;
    reg  [63:0]                   int_whf_V = 'b0;
    reg  [63:0]                   int_whg_V = 'b0;
    reg  [63:0]                   int_whi_V = 'b0;
    reg  [63:0]                   int_who_V = 'b0;
    reg  [63:0]                   int_wxf2_V = 'b0;
    reg  [63:0]                   int_wxg2_V = 'b0;
    reg  [63:0]                   int_wxi2_V = 'b0;
    reg  [63:0]                   int_wxo2_V = 'b0;
    reg  [63:0]                   int_whf2_V = 'b0;
    reg  [63:0]                   int_whg2_V = 'b0;
    reg  [63:0]                   int_whi2_V = 'b0;
    reg  [63:0]                   int_who2_V = 'b0;
    reg  [63:0]                   int_bf_V = 'b0;
    reg  [63:0]                   int_bg_V = 'b0;
    reg  [63:0]                   int_bi_V = 'b0;
    reg  [63:0]                   int_bo_V = 'b0;
    reg  [63:0]                   int_bf2_V = 'b0;
    reg  [63:0]                   int_bg2_V = 'b0;
    reg  [63:0]                   int_bi2_V = 'b0;
    reg  [63:0]                   int_bo2_V = 'b0;
    reg  [63:0]                   int_h_wxf_V = 'b0;
    reg  [63:0]                   int_h_wxg_V = 'b0;
    reg  [63:0]                   int_h_wxi_V = 'b0;
    reg  [63:0]                   int_h_wxo_V = 'b0;
    reg  [63:0]                   int_h_whf_V = 'b0;
    reg  [63:0]                   int_h_whg_V = 'b0;
    reg  [63:0]                   int_h_whi_V = 'b0;
    reg  [63:0]                   int_h_who_V = 'b0;
    reg  [63:0]                   int_h_wxf2_V = 'b0;
    reg  [63:0]                   int_h_wxg2_V = 'b0;
    reg  [63:0]                   int_h_wxi2_V = 'b0;
    reg  [63:0]                   int_h_wxo2_V = 'b0;
    reg  [63:0]                   int_h_whf2_V = 'b0;
    reg  [63:0]                   int_h_whg2_V = 'b0;
    reg  [63:0]                   int_h_whi2_V = 'b0;
    reg  [63:0]                   int_h_who2_V = 'b0;
    reg  [63:0]                   int_h_bf_V = 'b0;
    reg  [63:0]                   int_h_bg_V = 'b0;
    reg  [63:0]                   int_h_bi_V = 'b0;
    reg  [63:0]                   int_h_bo_V = 'b0;
    reg  [63:0]                   int_h_bf2_V = 'b0;
    reg  [63:0]                   int_h_bg2_V = 'b0;
    reg  [63:0]                   int_h_bi2_V = 'b0;
    reg  [63:0]                   int_h_bo2_V = 'b0;
    reg  [31:0]                   int_count = 'b0;

//------------------------Instantiation------------------

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_DATAX_DATA_0: begin
                    rdata <= int_datax[31:0];
                end
                ADDR_DATAX_DATA_1: begin
                    rdata <= int_datax[63:32];
                end
                ADDR_DATAY_DATA_0: begin
                    rdata <= int_datay[31:0];
                end
                ADDR_DATAY_DATA_1: begin
                    rdata <= int_datay[63:32];
                end
                ADDR_DOUT_DATA_0: begin
                    rdata <= int_dout[31:0];
                end
                ADDR_DOUT_DATA_1: begin
                    rdata <= int_dout[63:32];
                end
                ADDR_BUFFER_OUTPUT_DATA_0: begin
                    rdata <= int_buffer_output[31:0];
                end
                ADDR_BUFFER_OUTPUT_DATA_1: begin
                    rdata <= int_buffer_output[63:32];
                end
                ADDR_MODEL_DATA_0: begin
                    rdata <= int_model[31:0];
                end
                ADDR_WXF_V_DATA_0: begin
                    rdata <= int_wxf_V[31:0];
                end
                ADDR_WXF_V_DATA_1: begin
                    rdata <= int_wxf_V[63:32];
                end
                ADDR_WXG_V_DATA_0: begin
                    rdata <= int_wxg_V[31:0];
                end
                ADDR_WXG_V_DATA_1: begin
                    rdata <= int_wxg_V[63:32];
                end
                ADDR_WXI_V_DATA_0: begin
                    rdata <= int_wxi_V[31:0];
                end
                ADDR_WXI_V_DATA_1: begin
                    rdata <= int_wxi_V[63:32];
                end
                ADDR_WXO_V_DATA_0: begin
                    rdata <= int_wxo_V[31:0];
                end
                ADDR_WXO_V_DATA_1: begin
                    rdata <= int_wxo_V[63:32];
                end
                ADDR_WHF_V_DATA_0: begin
                    rdata <= int_whf_V[31:0];
                end
                ADDR_WHF_V_DATA_1: begin
                    rdata <= int_whf_V[63:32];
                end
                ADDR_WHG_V_DATA_0: begin
                    rdata <= int_whg_V[31:0];
                end
                ADDR_WHG_V_DATA_1: begin
                    rdata <= int_whg_V[63:32];
                end
                ADDR_WHI_V_DATA_0: begin
                    rdata <= int_whi_V[31:0];
                end
                ADDR_WHI_V_DATA_1: begin
                    rdata <= int_whi_V[63:32];
                end
                ADDR_WHO_V_DATA_0: begin
                    rdata <= int_who_V[31:0];
                end
                ADDR_WHO_V_DATA_1: begin
                    rdata <= int_who_V[63:32];
                end
                ADDR_WXF2_V_DATA_0: begin
                    rdata <= int_wxf2_V[31:0];
                end
                ADDR_WXF2_V_DATA_1: begin
                    rdata <= int_wxf2_V[63:32];
                end
                ADDR_WXG2_V_DATA_0: begin
                    rdata <= int_wxg2_V[31:0];
                end
                ADDR_WXG2_V_DATA_1: begin
                    rdata <= int_wxg2_V[63:32];
                end
                ADDR_WXI2_V_DATA_0: begin
                    rdata <= int_wxi2_V[31:0];
                end
                ADDR_WXI2_V_DATA_1: begin
                    rdata <= int_wxi2_V[63:32];
                end
                ADDR_WXO2_V_DATA_0: begin
                    rdata <= int_wxo2_V[31:0];
                end
                ADDR_WXO2_V_DATA_1: begin
                    rdata <= int_wxo2_V[63:32];
                end
                ADDR_WHF2_V_DATA_0: begin
                    rdata <= int_whf2_V[31:0];
                end
                ADDR_WHF2_V_DATA_1: begin
                    rdata <= int_whf2_V[63:32];
                end
                ADDR_WHG2_V_DATA_0: begin
                    rdata <= int_whg2_V[31:0];
                end
                ADDR_WHG2_V_DATA_1: begin
                    rdata <= int_whg2_V[63:32];
                end
                ADDR_WHI2_V_DATA_0: begin
                    rdata <= int_whi2_V[31:0];
                end
                ADDR_WHI2_V_DATA_1: begin
                    rdata <= int_whi2_V[63:32];
                end
                ADDR_WHO2_V_DATA_0: begin
                    rdata <= int_who2_V[31:0];
                end
                ADDR_WHO2_V_DATA_1: begin
                    rdata <= int_who2_V[63:32];
                end
                ADDR_BF_V_DATA_0: begin
                    rdata <= int_bf_V[31:0];
                end
                ADDR_BF_V_DATA_1: begin
                    rdata <= int_bf_V[63:32];
                end
                ADDR_BG_V_DATA_0: begin
                    rdata <= int_bg_V[31:0];
                end
                ADDR_BG_V_DATA_1: begin
                    rdata <= int_bg_V[63:32];
                end
                ADDR_BI_V_DATA_0: begin
                    rdata <= int_bi_V[31:0];
                end
                ADDR_BI_V_DATA_1: begin
                    rdata <= int_bi_V[63:32];
                end
                ADDR_BO_V_DATA_0: begin
                    rdata <= int_bo_V[31:0];
                end
                ADDR_BO_V_DATA_1: begin
                    rdata <= int_bo_V[63:32];
                end
                ADDR_BF2_V_DATA_0: begin
                    rdata <= int_bf2_V[31:0];
                end
                ADDR_BF2_V_DATA_1: begin
                    rdata <= int_bf2_V[63:32];
                end
                ADDR_BG2_V_DATA_0: begin
                    rdata <= int_bg2_V[31:0];
                end
                ADDR_BG2_V_DATA_1: begin
                    rdata <= int_bg2_V[63:32];
                end
                ADDR_BI2_V_DATA_0: begin
                    rdata <= int_bi2_V[31:0];
                end
                ADDR_BI2_V_DATA_1: begin
                    rdata <= int_bi2_V[63:32];
                end
                ADDR_BO2_V_DATA_0: begin
                    rdata <= int_bo2_V[31:0];
                end
                ADDR_BO2_V_DATA_1: begin
                    rdata <= int_bo2_V[63:32];
                end
                ADDR_H_WXF_V_DATA_0: begin
                    rdata <= int_h_wxf_V[31:0];
                end
                ADDR_H_WXF_V_DATA_1: begin
                    rdata <= int_h_wxf_V[63:32];
                end
                ADDR_H_WXG_V_DATA_0: begin
                    rdata <= int_h_wxg_V[31:0];
                end
                ADDR_H_WXG_V_DATA_1: begin
                    rdata <= int_h_wxg_V[63:32];
                end
                ADDR_H_WXI_V_DATA_0: begin
                    rdata <= int_h_wxi_V[31:0];
                end
                ADDR_H_WXI_V_DATA_1: begin
                    rdata <= int_h_wxi_V[63:32];
                end
                ADDR_H_WXO_V_DATA_0: begin
                    rdata <= int_h_wxo_V[31:0];
                end
                ADDR_H_WXO_V_DATA_1: begin
                    rdata <= int_h_wxo_V[63:32];
                end
                ADDR_H_WHF_V_DATA_0: begin
                    rdata <= int_h_whf_V[31:0];
                end
                ADDR_H_WHF_V_DATA_1: begin
                    rdata <= int_h_whf_V[63:32];
                end
                ADDR_H_WHG_V_DATA_0: begin
                    rdata <= int_h_whg_V[31:0];
                end
                ADDR_H_WHG_V_DATA_1: begin
                    rdata <= int_h_whg_V[63:32];
                end
                ADDR_H_WHI_V_DATA_0: begin
                    rdata <= int_h_whi_V[31:0];
                end
                ADDR_H_WHI_V_DATA_1: begin
                    rdata <= int_h_whi_V[63:32];
                end
                ADDR_H_WHO_V_DATA_0: begin
                    rdata <= int_h_who_V[31:0];
                end
                ADDR_H_WHO_V_DATA_1: begin
                    rdata <= int_h_who_V[63:32];
                end
                ADDR_H_WXF2_V_DATA_0: begin
                    rdata <= int_h_wxf2_V[31:0];
                end
                ADDR_H_WXF2_V_DATA_1: begin
                    rdata <= int_h_wxf2_V[63:32];
                end
                ADDR_H_WXG2_V_DATA_0: begin
                    rdata <= int_h_wxg2_V[31:0];
                end
                ADDR_H_WXG2_V_DATA_1: begin
                    rdata <= int_h_wxg2_V[63:32];
                end
                ADDR_H_WXI2_V_DATA_0: begin
                    rdata <= int_h_wxi2_V[31:0];
                end
                ADDR_H_WXI2_V_DATA_1: begin
                    rdata <= int_h_wxi2_V[63:32];
                end
                ADDR_H_WXO2_V_DATA_0: begin
                    rdata <= int_h_wxo2_V[31:0];
                end
                ADDR_H_WXO2_V_DATA_1: begin
                    rdata <= int_h_wxo2_V[63:32];
                end
                ADDR_H_WHF2_V_DATA_0: begin
                    rdata <= int_h_whf2_V[31:0];
                end
                ADDR_H_WHF2_V_DATA_1: begin
                    rdata <= int_h_whf2_V[63:32];
                end
                ADDR_H_WHG2_V_DATA_0: begin
                    rdata <= int_h_whg2_V[31:0];
                end
                ADDR_H_WHG2_V_DATA_1: begin
                    rdata <= int_h_whg2_V[63:32];
                end
                ADDR_H_WHI2_V_DATA_0: begin
                    rdata <= int_h_whi2_V[31:0];
                end
                ADDR_H_WHI2_V_DATA_1: begin
                    rdata <= int_h_whi2_V[63:32];
                end
                ADDR_H_WHO2_V_DATA_0: begin
                    rdata <= int_h_who2_V[31:0];
                end
                ADDR_H_WHO2_V_DATA_1: begin
                    rdata <= int_h_who2_V[63:32];
                end
                ADDR_H_BF_V_DATA_0: begin
                    rdata <= int_h_bf_V[31:0];
                end
                ADDR_H_BF_V_DATA_1: begin
                    rdata <= int_h_bf_V[63:32];
                end
                ADDR_H_BG_V_DATA_0: begin
                    rdata <= int_h_bg_V[31:0];
                end
                ADDR_H_BG_V_DATA_1: begin
                    rdata <= int_h_bg_V[63:32];
                end
                ADDR_H_BI_V_DATA_0: begin
                    rdata <= int_h_bi_V[31:0];
                end
                ADDR_H_BI_V_DATA_1: begin
                    rdata <= int_h_bi_V[63:32];
                end
                ADDR_H_BO_V_DATA_0: begin
                    rdata <= int_h_bo_V[31:0];
                end
                ADDR_H_BO_V_DATA_1: begin
                    rdata <= int_h_bo_V[63:32];
                end
                ADDR_H_BF2_V_DATA_0: begin
                    rdata <= int_h_bf2_V[31:0];
                end
                ADDR_H_BF2_V_DATA_1: begin
                    rdata <= int_h_bf2_V[63:32];
                end
                ADDR_H_BG2_V_DATA_0: begin
                    rdata <= int_h_bg2_V[31:0];
                end
                ADDR_H_BG2_V_DATA_1: begin
                    rdata <= int_h_bg2_V[63:32];
                end
                ADDR_H_BI2_V_DATA_0: begin
                    rdata <= int_h_bi2_V[31:0];
                end
                ADDR_H_BI2_V_DATA_1: begin
                    rdata <= int_h_bi2_V[63:32];
                end
                ADDR_H_BO2_V_DATA_0: begin
                    rdata <= int_h_bo2_V[31:0];
                end
                ADDR_H_BO2_V_DATA_1: begin
                    rdata <= int_h_bo2_V[63:32];
                end
                ADDR_COUNT_DATA_0: begin
                    rdata <= int_count[31:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt     = int_gie & (|int_isr);
assign ap_start      = int_ap_start;
assign datax         = int_datax;
assign datay         = int_datay;
assign dout          = int_dout;
assign buffer_output = int_buffer_output;
assign model         = int_model;
assign wxf_V         = int_wxf_V;
assign wxg_V         = int_wxg_V;
assign wxi_V         = int_wxi_V;
assign wxo_V         = int_wxo_V;
assign whf_V         = int_whf_V;
assign whg_V         = int_whg_V;
assign whi_V         = int_whi_V;
assign who_V         = int_who_V;
assign wxf2_V        = int_wxf2_V;
assign wxg2_V        = int_wxg2_V;
assign wxi2_V        = int_wxi2_V;
assign wxo2_V        = int_wxo2_V;
assign whf2_V        = int_whf2_V;
assign whg2_V        = int_whg2_V;
assign whi2_V        = int_whi2_V;
assign who2_V        = int_who2_V;
assign bf_V          = int_bf_V;
assign bg_V          = int_bg_V;
assign bi_V          = int_bi_V;
assign bo_V          = int_bo_V;
assign bf2_V         = int_bf2_V;
assign bg2_V         = int_bg2_V;
assign bi2_V         = int_bi2_V;
assign bo2_V         = int_bo2_V;
assign h_wxf_V       = int_h_wxf_V;
assign h_wxg_V       = int_h_wxg_V;
assign h_wxi_V       = int_h_wxi_V;
assign h_wxo_V       = int_h_wxo_V;
assign h_whf_V       = int_h_whf_V;
assign h_whg_V       = int_h_whg_V;
assign h_whi_V       = int_h_whi_V;
assign h_who_V       = int_h_who_V;
assign h_wxf2_V      = int_h_wxf2_V;
assign h_wxg2_V      = int_h_wxg2_V;
assign h_wxi2_V      = int_h_wxi2_V;
assign h_wxo2_V      = int_h_wxo2_V;
assign h_whf2_V      = int_h_whf2_V;
assign h_whg2_V      = int_h_whg2_V;
assign h_whi2_V      = int_h_whi2_V;
assign h_who2_V      = int_h_who2_V;
assign h_bf_V        = int_h_bf_V;
assign h_bg_V        = int_h_bg_V;
assign h_bi_V        = int_h_bi_V;
assign h_bo_V        = int_h_bo_V;
assign h_bf2_V       = int_h_bf2_V;
assign h_bg2_V       = int_h_bg2_V;
assign h_bi2_V       = int_h_bi2_V;
assign h_bo2_V       = int_h_bo2_V;
assign count         = int_count;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_ready <= ap_ready;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_datax[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_datax[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DATAX_DATA_0)
            int_datax[31:0] <= (WDATA[31:0] & wmask) | (int_datax[31:0] & ~wmask);
    end
end

// int_datax[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_datax[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DATAX_DATA_1)
            int_datax[63:32] <= (WDATA[31:0] & wmask) | (int_datax[63:32] & ~wmask);
    end
end

// int_datay[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_datay[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DATAY_DATA_0)
            int_datay[31:0] <= (WDATA[31:0] & wmask) | (int_datay[31:0] & ~wmask);
    end
end

// int_datay[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_datay[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DATAY_DATA_1)
            int_datay[63:32] <= (WDATA[31:0] & wmask) | (int_datay[63:32] & ~wmask);
    end
end

// int_dout[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_dout[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DOUT_DATA_0)
            int_dout[31:0] <= (WDATA[31:0] & wmask) | (int_dout[31:0] & ~wmask);
    end
end

// int_dout[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_dout[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DOUT_DATA_1)
            int_dout[63:32] <= (WDATA[31:0] & wmask) | (int_dout[63:32] & ~wmask);
    end
end

// int_buffer_output[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_buffer_output[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BUFFER_OUTPUT_DATA_0)
            int_buffer_output[31:0] <= (WDATA[31:0] & wmask) | (int_buffer_output[31:0] & ~wmask);
    end
end

// int_buffer_output[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_buffer_output[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BUFFER_OUTPUT_DATA_1)
            int_buffer_output[63:32] <= (WDATA[31:0] & wmask) | (int_buffer_output[63:32] & ~wmask);
    end
end

// int_model[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_model[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MODEL_DATA_0)
            int_model[31:0] <= (WDATA[31:0] & wmask) | (int_model[31:0] & ~wmask);
    end
end

// int_wxf_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_wxf_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WXF_V_DATA_0)
            int_wxf_V[31:0] <= (WDATA[31:0] & wmask) | (int_wxf_V[31:0] & ~wmask);
    end
end

// int_wxf_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_wxf_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WXF_V_DATA_1)
            int_wxf_V[63:32] <= (WDATA[31:0] & wmask) | (int_wxf_V[63:32] & ~wmask);
    end
end

// int_wxg_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_wxg_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WXG_V_DATA_0)
            int_wxg_V[31:0] <= (WDATA[31:0] & wmask) | (int_wxg_V[31:0] & ~wmask);
    end
end

// int_wxg_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_wxg_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WXG_V_DATA_1)
            int_wxg_V[63:32] <= (WDATA[31:0] & wmask) | (int_wxg_V[63:32] & ~wmask);
    end
end

// int_wxi_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_wxi_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WXI_V_DATA_0)
            int_wxi_V[31:0] <= (WDATA[31:0] & wmask) | (int_wxi_V[31:0] & ~wmask);
    end
end

// int_wxi_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_wxi_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WXI_V_DATA_1)
            int_wxi_V[63:32] <= (WDATA[31:0] & wmask) | (int_wxi_V[63:32] & ~wmask);
    end
end

// int_wxo_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_wxo_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WXO_V_DATA_0)
            int_wxo_V[31:0] <= (WDATA[31:0] & wmask) | (int_wxo_V[31:0] & ~wmask);
    end
end

// int_wxo_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_wxo_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WXO_V_DATA_1)
            int_wxo_V[63:32] <= (WDATA[31:0] & wmask) | (int_wxo_V[63:32] & ~wmask);
    end
end

// int_whf_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_whf_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WHF_V_DATA_0)
            int_whf_V[31:0] <= (WDATA[31:0] & wmask) | (int_whf_V[31:0] & ~wmask);
    end
end

// int_whf_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_whf_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WHF_V_DATA_1)
            int_whf_V[63:32] <= (WDATA[31:0] & wmask) | (int_whf_V[63:32] & ~wmask);
    end
end

// int_whg_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_whg_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WHG_V_DATA_0)
            int_whg_V[31:0] <= (WDATA[31:0] & wmask) | (int_whg_V[31:0] & ~wmask);
    end
end

// int_whg_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_whg_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WHG_V_DATA_1)
            int_whg_V[63:32] <= (WDATA[31:0] & wmask) | (int_whg_V[63:32] & ~wmask);
    end
end

// int_whi_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_whi_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WHI_V_DATA_0)
            int_whi_V[31:0] <= (WDATA[31:0] & wmask) | (int_whi_V[31:0] & ~wmask);
    end
end

// int_whi_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_whi_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WHI_V_DATA_1)
            int_whi_V[63:32] <= (WDATA[31:0] & wmask) | (int_whi_V[63:32] & ~wmask);
    end
end

// int_who_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_who_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WHO_V_DATA_0)
            int_who_V[31:0] <= (WDATA[31:0] & wmask) | (int_who_V[31:0] & ~wmask);
    end
end

// int_who_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_who_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WHO_V_DATA_1)
            int_who_V[63:32] <= (WDATA[31:0] & wmask) | (int_who_V[63:32] & ~wmask);
    end
end

// int_wxf2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_wxf2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WXF2_V_DATA_0)
            int_wxf2_V[31:0] <= (WDATA[31:0] & wmask) | (int_wxf2_V[31:0] & ~wmask);
    end
end

// int_wxf2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_wxf2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WXF2_V_DATA_1)
            int_wxf2_V[63:32] <= (WDATA[31:0] & wmask) | (int_wxf2_V[63:32] & ~wmask);
    end
end

// int_wxg2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_wxg2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WXG2_V_DATA_0)
            int_wxg2_V[31:0] <= (WDATA[31:0] & wmask) | (int_wxg2_V[31:0] & ~wmask);
    end
end

// int_wxg2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_wxg2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WXG2_V_DATA_1)
            int_wxg2_V[63:32] <= (WDATA[31:0] & wmask) | (int_wxg2_V[63:32] & ~wmask);
    end
end

// int_wxi2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_wxi2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WXI2_V_DATA_0)
            int_wxi2_V[31:0] <= (WDATA[31:0] & wmask) | (int_wxi2_V[31:0] & ~wmask);
    end
end

// int_wxi2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_wxi2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WXI2_V_DATA_1)
            int_wxi2_V[63:32] <= (WDATA[31:0] & wmask) | (int_wxi2_V[63:32] & ~wmask);
    end
end

// int_wxo2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_wxo2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WXO2_V_DATA_0)
            int_wxo2_V[31:0] <= (WDATA[31:0] & wmask) | (int_wxo2_V[31:0] & ~wmask);
    end
end

// int_wxo2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_wxo2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WXO2_V_DATA_1)
            int_wxo2_V[63:32] <= (WDATA[31:0] & wmask) | (int_wxo2_V[63:32] & ~wmask);
    end
end

// int_whf2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_whf2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WHF2_V_DATA_0)
            int_whf2_V[31:0] <= (WDATA[31:0] & wmask) | (int_whf2_V[31:0] & ~wmask);
    end
end

// int_whf2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_whf2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WHF2_V_DATA_1)
            int_whf2_V[63:32] <= (WDATA[31:0] & wmask) | (int_whf2_V[63:32] & ~wmask);
    end
end

// int_whg2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_whg2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WHG2_V_DATA_0)
            int_whg2_V[31:0] <= (WDATA[31:0] & wmask) | (int_whg2_V[31:0] & ~wmask);
    end
end

// int_whg2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_whg2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WHG2_V_DATA_1)
            int_whg2_V[63:32] <= (WDATA[31:0] & wmask) | (int_whg2_V[63:32] & ~wmask);
    end
end

// int_whi2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_whi2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WHI2_V_DATA_0)
            int_whi2_V[31:0] <= (WDATA[31:0] & wmask) | (int_whi2_V[31:0] & ~wmask);
    end
end

// int_whi2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_whi2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WHI2_V_DATA_1)
            int_whi2_V[63:32] <= (WDATA[31:0] & wmask) | (int_whi2_V[63:32] & ~wmask);
    end
end

// int_who2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_who2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WHO2_V_DATA_0)
            int_who2_V[31:0] <= (WDATA[31:0] & wmask) | (int_who2_V[31:0] & ~wmask);
    end
end

// int_who2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_who2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WHO2_V_DATA_1)
            int_who2_V[63:32] <= (WDATA[31:0] & wmask) | (int_who2_V[63:32] & ~wmask);
    end
end

// int_bf_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bf_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BF_V_DATA_0)
            int_bf_V[31:0] <= (WDATA[31:0] & wmask) | (int_bf_V[31:0] & ~wmask);
    end
end

// int_bf_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bf_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BF_V_DATA_1)
            int_bf_V[63:32] <= (WDATA[31:0] & wmask) | (int_bf_V[63:32] & ~wmask);
    end
end

// int_bg_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bg_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BG_V_DATA_0)
            int_bg_V[31:0] <= (WDATA[31:0] & wmask) | (int_bg_V[31:0] & ~wmask);
    end
end

// int_bg_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bg_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BG_V_DATA_1)
            int_bg_V[63:32] <= (WDATA[31:0] & wmask) | (int_bg_V[63:32] & ~wmask);
    end
end

// int_bi_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bi_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BI_V_DATA_0)
            int_bi_V[31:0] <= (WDATA[31:0] & wmask) | (int_bi_V[31:0] & ~wmask);
    end
end

// int_bi_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bi_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BI_V_DATA_1)
            int_bi_V[63:32] <= (WDATA[31:0] & wmask) | (int_bi_V[63:32] & ~wmask);
    end
end

// int_bo_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bo_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BO_V_DATA_0)
            int_bo_V[31:0] <= (WDATA[31:0] & wmask) | (int_bo_V[31:0] & ~wmask);
    end
end

// int_bo_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bo_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BO_V_DATA_1)
            int_bo_V[63:32] <= (WDATA[31:0] & wmask) | (int_bo_V[63:32] & ~wmask);
    end
end

// int_bf2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bf2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BF2_V_DATA_0)
            int_bf2_V[31:0] <= (WDATA[31:0] & wmask) | (int_bf2_V[31:0] & ~wmask);
    end
end

// int_bf2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bf2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BF2_V_DATA_1)
            int_bf2_V[63:32] <= (WDATA[31:0] & wmask) | (int_bf2_V[63:32] & ~wmask);
    end
end

// int_bg2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bg2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BG2_V_DATA_0)
            int_bg2_V[31:0] <= (WDATA[31:0] & wmask) | (int_bg2_V[31:0] & ~wmask);
    end
end

// int_bg2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bg2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BG2_V_DATA_1)
            int_bg2_V[63:32] <= (WDATA[31:0] & wmask) | (int_bg2_V[63:32] & ~wmask);
    end
end

// int_bi2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bi2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BI2_V_DATA_0)
            int_bi2_V[31:0] <= (WDATA[31:0] & wmask) | (int_bi2_V[31:0] & ~wmask);
    end
end

// int_bi2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bi2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BI2_V_DATA_1)
            int_bi2_V[63:32] <= (WDATA[31:0] & wmask) | (int_bi2_V[63:32] & ~wmask);
    end
end

// int_bo2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bo2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BO2_V_DATA_0)
            int_bo2_V[31:0] <= (WDATA[31:0] & wmask) | (int_bo2_V[31:0] & ~wmask);
    end
end

// int_bo2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_bo2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BO2_V_DATA_1)
            int_bo2_V[63:32] <= (WDATA[31:0] & wmask) | (int_bo2_V[63:32] & ~wmask);
    end
end

// int_h_wxf_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_wxf_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WXF_V_DATA_0)
            int_h_wxf_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_wxf_V[31:0] & ~wmask);
    end
end

// int_h_wxf_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_wxf_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WXF_V_DATA_1)
            int_h_wxf_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_wxf_V[63:32] & ~wmask);
    end
end

// int_h_wxg_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_wxg_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WXG_V_DATA_0)
            int_h_wxg_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_wxg_V[31:0] & ~wmask);
    end
end

// int_h_wxg_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_wxg_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WXG_V_DATA_1)
            int_h_wxg_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_wxg_V[63:32] & ~wmask);
    end
end

// int_h_wxi_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_wxi_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WXI_V_DATA_0)
            int_h_wxi_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_wxi_V[31:0] & ~wmask);
    end
end

// int_h_wxi_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_wxi_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WXI_V_DATA_1)
            int_h_wxi_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_wxi_V[63:32] & ~wmask);
    end
end

// int_h_wxo_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_wxo_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WXO_V_DATA_0)
            int_h_wxo_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_wxo_V[31:0] & ~wmask);
    end
end

// int_h_wxo_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_wxo_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WXO_V_DATA_1)
            int_h_wxo_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_wxo_V[63:32] & ~wmask);
    end
end

// int_h_whf_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_whf_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WHF_V_DATA_0)
            int_h_whf_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_whf_V[31:0] & ~wmask);
    end
end

// int_h_whf_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_whf_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WHF_V_DATA_1)
            int_h_whf_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_whf_V[63:32] & ~wmask);
    end
end

// int_h_whg_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_whg_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WHG_V_DATA_0)
            int_h_whg_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_whg_V[31:0] & ~wmask);
    end
end

// int_h_whg_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_whg_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WHG_V_DATA_1)
            int_h_whg_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_whg_V[63:32] & ~wmask);
    end
end

// int_h_whi_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_whi_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WHI_V_DATA_0)
            int_h_whi_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_whi_V[31:0] & ~wmask);
    end
end

// int_h_whi_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_whi_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WHI_V_DATA_1)
            int_h_whi_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_whi_V[63:32] & ~wmask);
    end
end

// int_h_who_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_who_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WHO_V_DATA_0)
            int_h_who_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_who_V[31:0] & ~wmask);
    end
end

// int_h_who_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_who_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WHO_V_DATA_1)
            int_h_who_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_who_V[63:32] & ~wmask);
    end
end

// int_h_wxf2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_wxf2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WXF2_V_DATA_0)
            int_h_wxf2_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_wxf2_V[31:0] & ~wmask);
    end
end

// int_h_wxf2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_wxf2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WXF2_V_DATA_1)
            int_h_wxf2_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_wxf2_V[63:32] & ~wmask);
    end
end

// int_h_wxg2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_wxg2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WXG2_V_DATA_0)
            int_h_wxg2_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_wxg2_V[31:0] & ~wmask);
    end
end

// int_h_wxg2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_wxg2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WXG2_V_DATA_1)
            int_h_wxg2_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_wxg2_V[63:32] & ~wmask);
    end
end

// int_h_wxi2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_wxi2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WXI2_V_DATA_0)
            int_h_wxi2_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_wxi2_V[31:0] & ~wmask);
    end
end

// int_h_wxi2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_wxi2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WXI2_V_DATA_1)
            int_h_wxi2_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_wxi2_V[63:32] & ~wmask);
    end
end

// int_h_wxo2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_wxo2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WXO2_V_DATA_0)
            int_h_wxo2_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_wxo2_V[31:0] & ~wmask);
    end
end

// int_h_wxo2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_wxo2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WXO2_V_DATA_1)
            int_h_wxo2_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_wxo2_V[63:32] & ~wmask);
    end
end

// int_h_whf2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_whf2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WHF2_V_DATA_0)
            int_h_whf2_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_whf2_V[31:0] & ~wmask);
    end
end

// int_h_whf2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_whf2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WHF2_V_DATA_1)
            int_h_whf2_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_whf2_V[63:32] & ~wmask);
    end
end

// int_h_whg2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_whg2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WHG2_V_DATA_0)
            int_h_whg2_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_whg2_V[31:0] & ~wmask);
    end
end

// int_h_whg2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_whg2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WHG2_V_DATA_1)
            int_h_whg2_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_whg2_V[63:32] & ~wmask);
    end
end

// int_h_whi2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_whi2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WHI2_V_DATA_0)
            int_h_whi2_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_whi2_V[31:0] & ~wmask);
    end
end

// int_h_whi2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_whi2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WHI2_V_DATA_1)
            int_h_whi2_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_whi2_V[63:32] & ~wmask);
    end
end

// int_h_who2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_who2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WHO2_V_DATA_0)
            int_h_who2_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_who2_V[31:0] & ~wmask);
    end
end

// int_h_who2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_who2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_WHO2_V_DATA_1)
            int_h_who2_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_who2_V[63:32] & ~wmask);
    end
end

// int_h_bf_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_bf_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_BF_V_DATA_0)
            int_h_bf_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_bf_V[31:0] & ~wmask);
    end
end

// int_h_bf_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_bf_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_BF_V_DATA_1)
            int_h_bf_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_bf_V[63:32] & ~wmask);
    end
end

// int_h_bg_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_bg_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_BG_V_DATA_0)
            int_h_bg_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_bg_V[31:0] & ~wmask);
    end
end

// int_h_bg_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_bg_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_BG_V_DATA_1)
            int_h_bg_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_bg_V[63:32] & ~wmask);
    end
end

// int_h_bi_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_bi_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_BI_V_DATA_0)
            int_h_bi_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_bi_V[31:0] & ~wmask);
    end
end

// int_h_bi_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_bi_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_BI_V_DATA_1)
            int_h_bi_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_bi_V[63:32] & ~wmask);
    end
end

// int_h_bo_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_bo_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_BO_V_DATA_0)
            int_h_bo_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_bo_V[31:0] & ~wmask);
    end
end

// int_h_bo_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_bo_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_BO_V_DATA_1)
            int_h_bo_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_bo_V[63:32] & ~wmask);
    end
end

// int_h_bf2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_bf2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_BF2_V_DATA_0)
            int_h_bf2_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_bf2_V[31:0] & ~wmask);
    end
end

// int_h_bf2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_bf2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_BF2_V_DATA_1)
            int_h_bf2_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_bf2_V[63:32] & ~wmask);
    end
end

// int_h_bg2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_bg2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_BG2_V_DATA_0)
            int_h_bg2_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_bg2_V[31:0] & ~wmask);
    end
end

// int_h_bg2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_bg2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_BG2_V_DATA_1)
            int_h_bg2_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_bg2_V[63:32] & ~wmask);
    end
end

// int_h_bi2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_bi2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_BI2_V_DATA_0)
            int_h_bi2_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_bi2_V[31:0] & ~wmask);
    end
end

// int_h_bi2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_bi2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_BI2_V_DATA_1)
            int_h_bi2_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_bi2_V[63:32] & ~wmask);
    end
end

// int_h_bo2_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_bo2_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_BO2_V_DATA_0)
            int_h_bo2_V[31:0] <= (WDATA[31:0] & wmask) | (int_h_bo2_V[31:0] & ~wmask);
    end
end

// int_h_bo2_V[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_h_bo2_V[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_BO2_V_DATA_1)
            int_h_bo2_V[63:32] <= (WDATA[31:0] & wmask) | (int_h_bo2_V[63:32] & ~wmask);
    end
end

// int_count[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_count[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_COUNT_DATA_0)
            int_count[31:0] <= (WDATA[31:0] & wmask) | (int_count[31:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
