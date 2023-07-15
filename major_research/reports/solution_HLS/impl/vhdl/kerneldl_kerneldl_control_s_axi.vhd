-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity kerneldl_kerneldl_control_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 10;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC;
    datax                 :out  STD_LOGIC_VECTOR(63 downto 0);
    datay                 :out  STD_LOGIC_VECTOR(63 downto 0);
    dout                  :out  STD_LOGIC_VECTOR(63 downto 0);
    buffer_output         :out  STD_LOGIC_VECTOR(63 downto 0);
    model                 :out  STD_LOGIC_VECTOR(31 downto 0);
    wxf_V                 :out  STD_LOGIC_VECTOR(63 downto 0);
    wxg_V                 :out  STD_LOGIC_VECTOR(63 downto 0);
    wxi_V                 :out  STD_LOGIC_VECTOR(63 downto 0);
    wxo_V                 :out  STD_LOGIC_VECTOR(63 downto 0);
    whf_V                 :out  STD_LOGIC_VECTOR(63 downto 0);
    whg_V                 :out  STD_LOGIC_VECTOR(63 downto 0);
    whi_V                 :out  STD_LOGIC_VECTOR(63 downto 0);
    who_V                 :out  STD_LOGIC_VECTOR(63 downto 0);
    wxf2_V                :out  STD_LOGIC_VECTOR(63 downto 0);
    wxg2_V                :out  STD_LOGIC_VECTOR(63 downto 0);
    wxi2_V                :out  STD_LOGIC_VECTOR(63 downto 0);
    wxo2_V                :out  STD_LOGIC_VECTOR(63 downto 0);
    whf2_V                :out  STD_LOGIC_VECTOR(63 downto 0);
    whg2_V                :out  STD_LOGIC_VECTOR(63 downto 0);
    whi2_V                :out  STD_LOGIC_VECTOR(63 downto 0);
    who2_V                :out  STD_LOGIC_VECTOR(63 downto 0);
    bf_V                  :out  STD_LOGIC_VECTOR(63 downto 0);
    bg_V                  :out  STD_LOGIC_VECTOR(63 downto 0);
    bi_V                  :out  STD_LOGIC_VECTOR(63 downto 0);
    bo_V                  :out  STD_LOGIC_VECTOR(63 downto 0);
    bf2_V                 :out  STD_LOGIC_VECTOR(63 downto 0);
    bg2_V                 :out  STD_LOGIC_VECTOR(63 downto 0);
    bi2_V                 :out  STD_LOGIC_VECTOR(63 downto 0);
    bo2_V                 :out  STD_LOGIC_VECTOR(63 downto 0);
    h_wxf_V               :out  STD_LOGIC_VECTOR(63 downto 0);
    h_wxg_V               :out  STD_LOGIC_VECTOR(63 downto 0);
    h_wxi_V               :out  STD_LOGIC_VECTOR(63 downto 0);
    h_wxo_V               :out  STD_LOGIC_VECTOR(63 downto 0);
    h_whf_V               :out  STD_LOGIC_VECTOR(63 downto 0);
    h_whg_V               :out  STD_LOGIC_VECTOR(63 downto 0);
    h_whi_V               :out  STD_LOGIC_VECTOR(63 downto 0);
    h_who_V               :out  STD_LOGIC_VECTOR(63 downto 0);
    h_wxf2_V              :out  STD_LOGIC_VECTOR(63 downto 0);
    h_wxg2_V              :out  STD_LOGIC_VECTOR(63 downto 0);
    h_wxi2_V              :out  STD_LOGIC_VECTOR(63 downto 0);
    h_wxo2_V              :out  STD_LOGIC_VECTOR(63 downto 0);
    h_whf2_V              :out  STD_LOGIC_VECTOR(63 downto 0);
    h_whg2_V              :out  STD_LOGIC_VECTOR(63 downto 0);
    h_whi2_V              :out  STD_LOGIC_VECTOR(63 downto 0);
    h_who2_V              :out  STD_LOGIC_VECTOR(63 downto 0);
    h_bf_V                :out  STD_LOGIC_VECTOR(63 downto 0);
    h_bg_V                :out  STD_LOGIC_VECTOR(63 downto 0);
    h_bi_V                :out  STD_LOGIC_VECTOR(63 downto 0);
    h_bo_V                :out  STD_LOGIC_VECTOR(63 downto 0);
    h_bf2_V               :out  STD_LOGIC_VECTOR(63 downto 0);
    h_bg2_V               :out  STD_LOGIC_VECTOR(63 downto 0);
    h_bi2_V               :out  STD_LOGIC_VECTOR(63 downto 0);
    h_bo2_V               :out  STD_LOGIC_VECTOR(63 downto 0);
    count                 :out  STD_LOGIC_VECTOR(31 downto 0)
);
end entity kerneldl_kerneldl_control_s_axi;

-- ------------------------Address Info-------------------
-- 0x000 : Control signals
--         bit 0  - ap_start (Read/Write/COH)
--         bit 1  - ap_done (Read/COR)
--         bit 2  - ap_idle (Read)
--         bit 3  - ap_ready (Read)
--         bit 7  - auto_restart (Read/Write)
--         others - reserved
-- 0x004 : Global Interrupt Enable Register
--         bit 0  - Global Interrupt Enable (Read/Write)
--         others - reserved
-- 0x008 : IP Interrupt Enable Register (Read/Write)
--         bit 0  - Channel 0 (ap_done)
--         bit 1  - Channel 1 (ap_ready)
--         others - reserved
-- 0x00c : IP Interrupt Status Register (Read/TOW)
--         bit 0  - Channel 0 (ap_done)
--         bit 1  - Channel 1 (ap_ready)
--         others - reserved
-- 0x010 : Data signal of datax
--         bit 31~0 - datax[31:0] (Read/Write)
-- 0x014 : Data signal of datax
--         bit 31~0 - datax[63:32] (Read/Write)
-- 0x018 : reserved
-- 0x01c : Data signal of datay
--         bit 31~0 - datay[31:0] (Read/Write)
-- 0x020 : Data signal of datay
--         bit 31~0 - datay[63:32] (Read/Write)
-- 0x024 : reserved
-- 0x028 : Data signal of dout
--         bit 31~0 - dout[31:0] (Read/Write)
-- 0x02c : Data signal of dout
--         bit 31~0 - dout[63:32] (Read/Write)
-- 0x030 : reserved
-- 0x034 : Data signal of buffer_output
--         bit 31~0 - buffer_output[31:0] (Read/Write)
-- 0x038 : Data signal of buffer_output
--         bit 31~0 - buffer_output[63:32] (Read/Write)
-- 0x03c : reserved
-- 0x040 : Data signal of model
--         bit 31~0 - model[31:0] (Read/Write)
-- 0x044 : reserved
-- 0x048 : Data signal of wxf_V
--         bit 31~0 - wxf_V[31:0] (Read/Write)
-- 0x04c : Data signal of wxf_V
--         bit 31~0 - wxf_V[63:32] (Read/Write)
-- 0x050 : reserved
-- 0x054 : Data signal of wxg_V
--         bit 31~0 - wxg_V[31:0] (Read/Write)
-- 0x058 : Data signal of wxg_V
--         bit 31~0 - wxg_V[63:32] (Read/Write)
-- 0x05c : reserved
-- 0x060 : Data signal of wxi_V
--         bit 31~0 - wxi_V[31:0] (Read/Write)
-- 0x064 : Data signal of wxi_V
--         bit 31~0 - wxi_V[63:32] (Read/Write)
-- 0x068 : reserved
-- 0x06c : Data signal of wxo_V
--         bit 31~0 - wxo_V[31:0] (Read/Write)
-- 0x070 : Data signal of wxo_V
--         bit 31~0 - wxo_V[63:32] (Read/Write)
-- 0x074 : reserved
-- 0x078 : Data signal of whf_V
--         bit 31~0 - whf_V[31:0] (Read/Write)
-- 0x07c : Data signal of whf_V
--         bit 31~0 - whf_V[63:32] (Read/Write)
-- 0x080 : reserved
-- 0x084 : Data signal of whg_V
--         bit 31~0 - whg_V[31:0] (Read/Write)
-- 0x088 : Data signal of whg_V
--         bit 31~0 - whg_V[63:32] (Read/Write)
-- 0x08c : reserved
-- 0x090 : Data signal of whi_V
--         bit 31~0 - whi_V[31:0] (Read/Write)
-- 0x094 : Data signal of whi_V
--         bit 31~0 - whi_V[63:32] (Read/Write)
-- 0x098 : reserved
-- 0x09c : Data signal of who_V
--         bit 31~0 - who_V[31:0] (Read/Write)
-- 0x0a0 : Data signal of who_V
--         bit 31~0 - who_V[63:32] (Read/Write)
-- 0x0a4 : reserved
-- 0x0a8 : Data signal of wxf2_V
--         bit 31~0 - wxf2_V[31:0] (Read/Write)
-- 0x0ac : Data signal of wxf2_V
--         bit 31~0 - wxf2_V[63:32] (Read/Write)
-- 0x0b0 : reserved
-- 0x0b4 : Data signal of wxg2_V
--         bit 31~0 - wxg2_V[31:0] (Read/Write)
-- 0x0b8 : Data signal of wxg2_V
--         bit 31~0 - wxg2_V[63:32] (Read/Write)
-- 0x0bc : reserved
-- 0x0c0 : Data signal of wxi2_V
--         bit 31~0 - wxi2_V[31:0] (Read/Write)
-- 0x0c4 : Data signal of wxi2_V
--         bit 31~0 - wxi2_V[63:32] (Read/Write)
-- 0x0c8 : reserved
-- 0x0cc : Data signal of wxo2_V
--         bit 31~0 - wxo2_V[31:0] (Read/Write)
-- 0x0d0 : Data signal of wxo2_V
--         bit 31~0 - wxo2_V[63:32] (Read/Write)
-- 0x0d4 : reserved
-- 0x0d8 : Data signal of whf2_V
--         bit 31~0 - whf2_V[31:0] (Read/Write)
-- 0x0dc : Data signal of whf2_V
--         bit 31~0 - whf2_V[63:32] (Read/Write)
-- 0x0e0 : reserved
-- 0x0e4 : Data signal of whg2_V
--         bit 31~0 - whg2_V[31:0] (Read/Write)
-- 0x0e8 : Data signal of whg2_V
--         bit 31~0 - whg2_V[63:32] (Read/Write)
-- 0x0ec : reserved
-- 0x0f0 : Data signal of whi2_V
--         bit 31~0 - whi2_V[31:0] (Read/Write)
-- 0x0f4 : Data signal of whi2_V
--         bit 31~0 - whi2_V[63:32] (Read/Write)
-- 0x0f8 : reserved
-- 0x0fc : Data signal of who2_V
--         bit 31~0 - who2_V[31:0] (Read/Write)
-- 0x100 : Data signal of who2_V
--         bit 31~0 - who2_V[63:32] (Read/Write)
-- 0x104 : reserved
-- 0x108 : Data signal of bf_V
--         bit 31~0 - bf_V[31:0] (Read/Write)
-- 0x10c : Data signal of bf_V
--         bit 31~0 - bf_V[63:32] (Read/Write)
-- 0x110 : reserved
-- 0x114 : Data signal of bg_V
--         bit 31~0 - bg_V[31:0] (Read/Write)
-- 0x118 : Data signal of bg_V
--         bit 31~0 - bg_V[63:32] (Read/Write)
-- 0x11c : reserved
-- 0x120 : Data signal of bi_V
--         bit 31~0 - bi_V[31:0] (Read/Write)
-- 0x124 : Data signal of bi_V
--         bit 31~0 - bi_V[63:32] (Read/Write)
-- 0x128 : reserved
-- 0x12c : Data signal of bo_V
--         bit 31~0 - bo_V[31:0] (Read/Write)
-- 0x130 : Data signal of bo_V
--         bit 31~0 - bo_V[63:32] (Read/Write)
-- 0x134 : reserved
-- 0x138 : Data signal of bf2_V
--         bit 31~0 - bf2_V[31:0] (Read/Write)
-- 0x13c : Data signal of bf2_V
--         bit 31~0 - bf2_V[63:32] (Read/Write)
-- 0x140 : reserved
-- 0x144 : Data signal of bg2_V
--         bit 31~0 - bg2_V[31:0] (Read/Write)
-- 0x148 : Data signal of bg2_V
--         bit 31~0 - bg2_V[63:32] (Read/Write)
-- 0x14c : reserved
-- 0x150 : Data signal of bi2_V
--         bit 31~0 - bi2_V[31:0] (Read/Write)
-- 0x154 : Data signal of bi2_V
--         bit 31~0 - bi2_V[63:32] (Read/Write)
-- 0x158 : reserved
-- 0x15c : Data signal of bo2_V
--         bit 31~0 - bo2_V[31:0] (Read/Write)
-- 0x160 : Data signal of bo2_V
--         bit 31~0 - bo2_V[63:32] (Read/Write)
-- 0x164 : reserved
-- 0x168 : Data signal of h_wxf_V
--         bit 31~0 - h_wxf_V[31:0] (Read/Write)
-- 0x16c : Data signal of h_wxf_V
--         bit 31~0 - h_wxf_V[63:32] (Read/Write)
-- 0x170 : reserved
-- 0x174 : Data signal of h_wxg_V
--         bit 31~0 - h_wxg_V[31:0] (Read/Write)
-- 0x178 : Data signal of h_wxg_V
--         bit 31~0 - h_wxg_V[63:32] (Read/Write)
-- 0x17c : reserved
-- 0x180 : Data signal of h_wxi_V
--         bit 31~0 - h_wxi_V[31:0] (Read/Write)
-- 0x184 : Data signal of h_wxi_V
--         bit 31~0 - h_wxi_V[63:32] (Read/Write)
-- 0x188 : reserved
-- 0x18c : Data signal of h_wxo_V
--         bit 31~0 - h_wxo_V[31:0] (Read/Write)
-- 0x190 : Data signal of h_wxo_V
--         bit 31~0 - h_wxo_V[63:32] (Read/Write)
-- 0x194 : reserved
-- 0x198 : Data signal of h_whf_V
--         bit 31~0 - h_whf_V[31:0] (Read/Write)
-- 0x19c : Data signal of h_whf_V
--         bit 31~0 - h_whf_V[63:32] (Read/Write)
-- 0x1a0 : reserved
-- 0x1a4 : Data signal of h_whg_V
--         bit 31~0 - h_whg_V[31:0] (Read/Write)
-- 0x1a8 : Data signal of h_whg_V
--         bit 31~0 - h_whg_V[63:32] (Read/Write)
-- 0x1ac : reserved
-- 0x1b0 : Data signal of h_whi_V
--         bit 31~0 - h_whi_V[31:0] (Read/Write)
-- 0x1b4 : Data signal of h_whi_V
--         bit 31~0 - h_whi_V[63:32] (Read/Write)
-- 0x1b8 : reserved
-- 0x1bc : Data signal of h_who_V
--         bit 31~0 - h_who_V[31:0] (Read/Write)
-- 0x1c0 : Data signal of h_who_V
--         bit 31~0 - h_who_V[63:32] (Read/Write)
-- 0x1c4 : reserved
-- 0x1c8 : Data signal of h_wxf2_V
--         bit 31~0 - h_wxf2_V[31:0] (Read/Write)
-- 0x1cc : Data signal of h_wxf2_V
--         bit 31~0 - h_wxf2_V[63:32] (Read/Write)
-- 0x1d0 : reserved
-- 0x1d4 : Data signal of h_wxg2_V
--         bit 31~0 - h_wxg2_V[31:0] (Read/Write)
-- 0x1d8 : Data signal of h_wxg2_V
--         bit 31~0 - h_wxg2_V[63:32] (Read/Write)
-- 0x1dc : reserved
-- 0x1e0 : Data signal of h_wxi2_V
--         bit 31~0 - h_wxi2_V[31:0] (Read/Write)
-- 0x1e4 : Data signal of h_wxi2_V
--         bit 31~0 - h_wxi2_V[63:32] (Read/Write)
-- 0x1e8 : reserved
-- 0x1ec : Data signal of h_wxo2_V
--         bit 31~0 - h_wxo2_V[31:0] (Read/Write)
-- 0x1f0 : Data signal of h_wxo2_V
--         bit 31~0 - h_wxo2_V[63:32] (Read/Write)
-- 0x1f4 : reserved
-- 0x1f8 : Data signal of h_whf2_V
--         bit 31~0 - h_whf2_V[31:0] (Read/Write)
-- 0x1fc : Data signal of h_whf2_V
--         bit 31~0 - h_whf2_V[63:32] (Read/Write)
-- 0x200 : reserved
-- 0x204 : Data signal of h_whg2_V
--         bit 31~0 - h_whg2_V[31:0] (Read/Write)
-- 0x208 : Data signal of h_whg2_V
--         bit 31~0 - h_whg2_V[63:32] (Read/Write)
-- 0x20c : reserved
-- 0x210 : Data signal of h_whi2_V
--         bit 31~0 - h_whi2_V[31:0] (Read/Write)
-- 0x214 : Data signal of h_whi2_V
--         bit 31~0 - h_whi2_V[63:32] (Read/Write)
-- 0x218 : reserved
-- 0x21c : Data signal of h_who2_V
--         bit 31~0 - h_who2_V[31:0] (Read/Write)
-- 0x220 : Data signal of h_who2_V
--         bit 31~0 - h_who2_V[63:32] (Read/Write)
-- 0x224 : reserved
-- 0x228 : Data signal of h_bf_V
--         bit 31~0 - h_bf_V[31:0] (Read/Write)
-- 0x22c : Data signal of h_bf_V
--         bit 31~0 - h_bf_V[63:32] (Read/Write)
-- 0x230 : reserved
-- 0x234 : Data signal of h_bg_V
--         bit 31~0 - h_bg_V[31:0] (Read/Write)
-- 0x238 : Data signal of h_bg_V
--         bit 31~0 - h_bg_V[63:32] (Read/Write)
-- 0x23c : reserved
-- 0x240 : Data signal of h_bi_V
--         bit 31~0 - h_bi_V[31:0] (Read/Write)
-- 0x244 : Data signal of h_bi_V
--         bit 31~0 - h_bi_V[63:32] (Read/Write)
-- 0x248 : reserved
-- 0x24c : Data signal of h_bo_V
--         bit 31~0 - h_bo_V[31:0] (Read/Write)
-- 0x250 : Data signal of h_bo_V
--         bit 31~0 - h_bo_V[63:32] (Read/Write)
-- 0x254 : reserved
-- 0x258 : Data signal of h_bf2_V
--         bit 31~0 - h_bf2_V[31:0] (Read/Write)
-- 0x25c : Data signal of h_bf2_V
--         bit 31~0 - h_bf2_V[63:32] (Read/Write)
-- 0x260 : reserved
-- 0x264 : Data signal of h_bg2_V
--         bit 31~0 - h_bg2_V[31:0] (Read/Write)
-- 0x268 : Data signal of h_bg2_V
--         bit 31~0 - h_bg2_V[63:32] (Read/Write)
-- 0x26c : reserved
-- 0x270 : Data signal of h_bi2_V
--         bit 31~0 - h_bi2_V[31:0] (Read/Write)
-- 0x274 : Data signal of h_bi2_V
--         bit 31~0 - h_bi2_V[63:32] (Read/Write)
-- 0x278 : reserved
-- 0x27c : Data signal of h_bo2_V
--         bit 31~0 - h_bo2_V[31:0] (Read/Write)
-- 0x280 : Data signal of h_bo2_V
--         bit 31~0 - h_bo2_V[63:32] (Read/Write)
-- 0x284 : reserved
-- 0x288 : Data signal of count
--         bit 31~0 - count[31:0] (Read/Write)
-- 0x28c : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of kerneldl_kerneldl_control_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL              : INTEGER := 16#000#;
    constant ADDR_GIE                  : INTEGER := 16#004#;
    constant ADDR_IER                  : INTEGER := 16#008#;
    constant ADDR_ISR                  : INTEGER := 16#00c#;
    constant ADDR_DATAX_DATA_0         : INTEGER := 16#010#;
    constant ADDR_DATAX_DATA_1         : INTEGER := 16#014#;
    constant ADDR_DATAX_CTRL           : INTEGER := 16#018#;
    constant ADDR_DATAY_DATA_0         : INTEGER := 16#01c#;
    constant ADDR_DATAY_DATA_1         : INTEGER := 16#020#;
    constant ADDR_DATAY_CTRL           : INTEGER := 16#024#;
    constant ADDR_DOUT_DATA_0          : INTEGER := 16#028#;
    constant ADDR_DOUT_DATA_1          : INTEGER := 16#02c#;
    constant ADDR_DOUT_CTRL            : INTEGER := 16#030#;
    constant ADDR_BUFFER_OUTPUT_DATA_0 : INTEGER := 16#034#;
    constant ADDR_BUFFER_OUTPUT_DATA_1 : INTEGER := 16#038#;
    constant ADDR_BUFFER_OUTPUT_CTRL   : INTEGER := 16#03c#;
    constant ADDR_MODEL_DATA_0         : INTEGER := 16#040#;
    constant ADDR_MODEL_CTRL           : INTEGER := 16#044#;
    constant ADDR_WXF_V_DATA_0         : INTEGER := 16#048#;
    constant ADDR_WXF_V_DATA_1         : INTEGER := 16#04c#;
    constant ADDR_WXF_V_CTRL           : INTEGER := 16#050#;
    constant ADDR_WXG_V_DATA_0         : INTEGER := 16#054#;
    constant ADDR_WXG_V_DATA_1         : INTEGER := 16#058#;
    constant ADDR_WXG_V_CTRL           : INTEGER := 16#05c#;
    constant ADDR_WXI_V_DATA_0         : INTEGER := 16#060#;
    constant ADDR_WXI_V_DATA_1         : INTEGER := 16#064#;
    constant ADDR_WXI_V_CTRL           : INTEGER := 16#068#;
    constant ADDR_WXO_V_DATA_0         : INTEGER := 16#06c#;
    constant ADDR_WXO_V_DATA_1         : INTEGER := 16#070#;
    constant ADDR_WXO_V_CTRL           : INTEGER := 16#074#;
    constant ADDR_WHF_V_DATA_0         : INTEGER := 16#078#;
    constant ADDR_WHF_V_DATA_1         : INTEGER := 16#07c#;
    constant ADDR_WHF_V_CTRL           : INTEGER := 16#080#;
    constant ADDR_WHG_V_DATA_0         : INTEGER := 16#084#;
    constant ADDR_WHG_V_DATA_1         : INTEGER := 16#088#;
    constant ADDR_WHG_V_CTRL           : INTEGER := 16#08c#;
    constant ADDR_WHI_V_DATA_0         : INTEGER := 16#090#;
    constant ADDR_WHI_V_DATA_1         : INTEGER := 16#094#;
    constant ADDR_WHI_V_CTRL           : INTEGER := 16#098#;
    constant ADDR_WHO_V_DATA_0         : INTEGER := 16#09c#;
    constant ADDR_WHO_V_DATA_1         : INTEGER := 16#0a0#;
    constant ADDR_WHO_V_CTRL           : INTEGER := 16#0a4#;
    constant ADDR_WXF2_V_DATA_0        : INTEGER := 16#0a8#;
    constant ADDR_WXF2_V_DATA_1        : INTEGER := 16#0ac#;
    constant ADDR_WXF2_V_CTRL          : INTEGER := 16#0b0#;
    constant ADDR_WXG2_V_DATA_0        : INTEGER := 16#0b4#;
    constant ADDR_WXG2_V_DATA_1        : INTEGER := 16#0b8#;
    constant ADDR_WXG2_V_CTRL          : INTEGER := 16#0bc#;
    constant ADDR_WXI2_V_DATA_0        : INTEGER := 16#0c0#;
    constant ADDR_WXI2_V_DATA_1        : INTEGER := 16#0c4#;
    constant ADDR_WXI2_V_CTRL          : INTEGER := 16#0c8#;
    constant ADDR_WXO2_V_DATA_0        : INTEGER := 16#0cc#;
    constant ADDR_WXO2_V_DATA_1        : INTEGER := 16#0d0#;
    constant ADDR_WXO2_V_CTRL          : INTEGER := 16#0d4#;
    constant ADDR_WHF2_V_DATA_0        : INTEGER := 16#0d8#;
    constant ADDR_WHF2_V_DATA_1        : INTEGER := 16#0dc#;
    constant ADDR_WHF2_V_CTRL          : INTEGER := 16#0e0#;
    constant ADDR_WHG2_V_DATA_0        : INTEGER := 16#0e4#;
    constant ADDR_WHG2_V_DATA_1        : INTEGER := 16#0e8#;
    constant ADDR_WHG2_V_CTRL          : INTEGER := 16#0ec#;
    constant ADDR_WHI2_V_DATA_0        : INTEGER := 16#0f0#;
    constant ADDR_WHI2_V_DATA_1        : INTEGER := 16#0f4#;
    constant ADDR_WHI2_V_CTRL          : INTEGER := 16#0f8#;
    constant ADDR_WHO2_V_DATA_0        : INTEGER := 16#0fc#;
    constant ADDR_WHO2_V_DATA_1        : INTEGER := 16#100#;
    constant ADDR_WHO2_V_CTRL          : INTEGER := 16#104#;
    constant ADDR_BF_V_DATA_0          : INTEGER := 16#108#;
    constant ADDR_BF_V_DATA_1          : INTEGER := 16#10c#;
    constant ADDR_BF_V_CTRL            : INTEGER := 16#110#;
    constant ADDR_BG_V_DATA_0          : INTEGER := 16#114#;
    constant ADDR_BG_V_DATA_1          : INTEGER := 16#118#;
    constant ADDR_BG_V_CTRL            : INTEGER := 16#11c#;
    constant ADDR_BI_V_DATA_0          : INTEGER := 16#120#;
    constant ADDR_BI_V_DATA_1          : INTEGER := 16#124#;
    constant ADDR_BI_V_CTRL            : INTEGER := 16#128#;
    constant ADDR_BO_V_DATA_0          : INTEGER := 16#12c#;
    constant ADDR_BO_V_DATA_1          : INTEGER := 16#130#;
    constant ADDR_BO_V_CTRL            : INTEGER := 16#134#;
    constant ADDR_BF2_V_DATA_0         : INTEGER := 16#138#;
    constant ADDR_BF2_V_DATA_1         : INTEGER := 16#13c#;
    constant ADDR_BF2_V_CTRL           : INTEGER := 16#140#;
    constant ADDR_BG2_V_DATA_0         : INTEGER := 16#144#;
    constant ADDR_BG2_V_DATA_1         : INTEGER := 16#148#;
    constant ADDR_BG2_V_CTRL           : INTEGER := 16#14c#;
    constant ADDR_BI2_V_DATA_0         : INTEGER := 16#150#;
    constant ADDR_BI2_V_DATA_1         : INTEGER := 16#154#;
    constant ADDR_BI2_V_CTRL           : INTEGER := 16#158#;
    constant ADDR_BO2_V_DATA_0         : INTEGER := 16#15c#;
    constant ADDR_BO2_V_DATA_1         : INTEGER := 16#160#;
    constant ADDR_BO2_V_CTRL           : INTEGER := 16#164#;
    constant ADDR_H_WXF_V_DATA_0       : INTEGER := 16#168#;
    constant ADDR_H_WXF_V_DATA_1       : INTEGER := 16#16c#;
    constant ADDR_H_WXF_V_CTRL         : INTEGER := 16#170#;
    constant ADDR_H_WXG_V_DATA_0       : INTEGER := 16#174#;
    constant ADDR_H_WXG_V_DATA_1       : INTEGER := 16#178#;
    constant ADDR_H_WXG_V_CTRL         : INTEGER := 16#17c#;
    constant ADDR_H_WXI_V_DATA_0       : INTEGER := 16#180#;
    constant ADDR_H_WXI_V_DATA_1       : INTEGER := 16#184#;
    constant ADDR_H_WXI_V_CTRL         : INTEGER := 16#188#;
    constant ADDR_H_WXO_V_DATA_0       : INTEGER := 16#18c#;
    constant ADDR_H_WXO_V_DATA_1       : INTEGER := 16#190#;
    constant ADDR_H_WXO_V_CTRL         : INTEGER := 16#194#;
    constant ADDR_H_WHF_V_DATA_0       : INTEGER := 16#198#;
    constant ADDR_H_WHF_V_DATA_1       : INTEGER := 16#19c#;
    constant ADDR_H_WHF_V_CTRL         : INTEGER := 16#1a0#;
    constant ADDR_H_WHG_V_DATA_0       : INTEGER := 16#1a4#;
    constant ADDR_H_WHG_V_DATA_1       : INTEGER := 16#1a8#;
    constant ADDR_H_WHG_V_CTRL         : INTEGER := 16#1ac#;
    constant ADDR_H_WHI_V_DATA_0       : INTEGER := 16#1b0#;
    constant ADDR_H_WHI_V_DATA_1       : INTEGER := 16#1b4#;
    constant ADDR_H_WHI_V_CTRL         : INTEGER := 16#1b8#;
    constant ADDR_H_WHO_V_DATA_0       : INTEGER := 16#1bc#;
    constant ADDR_H_WHO_V_DATA_1       : INTEGER := 16#1c0#;
    constant ADDR_H_WHO_V_CTRL         : INTEGER := 16#1c4#;
    constant ADDR_H_WXF2_V_DATA_0      : INTEGER := 16#1c8#;
    constant ADDR_H_WXF2_V_DATA_1      : INTEGER := 16#1cc#;
    constant ADDR_H_WXF2_V_CTRL        : INTEGER := 16#1d0#;
    constant ADDR_H_WXG2_V_DATA_0      : INTEGER := 16#1d4#;
    constant ADDR_H_WXG2_V_DATA_1      : INTEGER := 16#1d8#;
    constant ADDR_H_WXG2_V_CTRL        : INTEGER := 16#1dc#;
    constant ADDR_H_WXI2_V_DATA_0      : INTEGER := 16#1e0#;
    constant ADDR_H_WXI2_V_DATA_1      : INTEGER := 16#1e4#;
    constant ADDR_H_WXI2_V_CTRL        : INTEGER := 16#1e8#;
    constant ADDR_H_WXO2_V_DATA_0      : INTEGER := 16#1ec#;
    constant ADDR_H_WXO2_V_DATA_1      : INTEGER := 16#1f0#;
    constant ADDR_H_WXO2_V_CTRL        : INTEGER := 16#1f4#;
    constant ADDR_H_WHF2_V_DATA_0      : INTEGER := 16#1f8#;
    constant ADDR_H_WHF2_V_DATA_1      : INTEGER := 16#1fc#;
    constant ADDR_H_WHF2_V_CTRL        : INTEGER := 16#200#;
    constant ADDR_H_WHG2_V_DATA_0      : INTEGER := 16#204#;
    constant ADDR_H_WHG2_V_DATA_1      : INTEGER := 16#208#;
    constant ADDR_H_WHG2_V_CTRL        : INTEGER := 16#20c#;
    constant ADDR_H_WHI2_V_DATA_0      : INTEGER := 16#210#;
    constant ADDR_H_WHI2_V_DATA_1      : INTEGER := 16#214#;
    constant ADDR_H_WHI2_V_CTRL        : INTEGER := 16#218#;
    constant ADDR_H_WHO2_V_DATA_0      : INTEGER := 16#21c#;
    constant ADDR_H_WHO2_V_DATA_1      : INTEGER := 16#220#;
    constant ADDR_H_WHO2_V_CTRL        : INTEGER := 16#224#;
    constant ADDR_H_BF_V_DATA_0        : INTEGER := 16#228#;
    constant ADDR_H_BF_V_DATA_1        : INTEGER := 16#22c#;
    constant ADDR_H_BF_V_CTRL          : INTEGER := 16#230#;
    constant ADDR_H_BG_V_DATA_0        : INTEGER := 16#234#;
    constant ADDR_H_BG_V_DATA_1        : INTEGER := 16#238#;
    constant ADDR_H_BG_V_CTRL          : INTEGER := 16#23c#;
    constant ADDR_H_BI_V_DATA_0        : INTEGER := 16#240#;
    constant ADDR_H_BI_V_DATA_1        : INTEGER := 16#244#;
    constant ADDR_H_BI_V_CTRL          : INTEGER := 16#248#;
    constant ADDR_H_BO_V_DATA_0        : INTEGER := 16#24c#;
    constant ADDR_H_BO_V_DATA_1        : INTEGER := 16#250#;
    constant ADDR_H_BO_V_CTRL          : INTEGER := 16#254#;
    constant ADDR_H_BF2_V_DATA_0       : INTEGER := 16#258#;
    constant ADDR_H_BF2_V_DATA_1       : INTEGER := 16#25c#;
    constant ADDR_H_BF2_V_CTRL         : INTEGER := 16#260#;
    constant ADDR_H_BG2_V_DATA_0       : INTEGER := 16#264#;
    constant ADDR_H_BG2_V_DATA_1       : INTEGER := 16#268#;
    constant ADDR_H_BG2_V_CTRL         : INTEGER := 16#26c#;
    constant ADDR_H_BI2_V_DATA_0       : INTEGER := 16#270#;
    constant ADDR_H_BI2_V_DATA_1       : INTEGER := 16#274#;
    constant ADDR_H_BI2_V_CTRL         : INTEGER := 16#278#;
    constant ADDR_H_BO2_V_DATA_0       : INTEGER := 16#27c#;
    constant ADDR_H_BO2_V_DATA_1       : INTEGER := 16#280#;
    constant ADDR_H_BO2_V_CTRL         : INTEGER := 16#284#;
    constant ADDR_COUNT_DATA_0         : INTEGER := 16#288#;
    constant ADDR_COUNT_CTRL           : INTEGER := 16#28c#;
    constant ADDR_BITS         : INTEGER := 10;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(31 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(31 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC;
    signal int_ap_ready        : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_datax           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_datay           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_dout            : UNSIGNED(63 downto 0) := (others => '0');
    signal int_buffer_output   : UNSIGNED(63 downto 0) := (others => '0');
    signal int_model           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_wxf_V           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_wxg_V           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_wxi_V           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_wxo_V           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_whf_V           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_whg_V           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_whi_V           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_who_V           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_wxf2_V          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_wxg2_V          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_wxi2_V          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_wxo2_V          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_whf2_V          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_whg2_V          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_whi2_V          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_who2_V          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bf_V            : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bg_V            : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bi_V            : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bo_V            : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bf2_V           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bg2_V           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bi2_V           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_bo2_V           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_wxf_V         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_wxg_V         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_wxi_V         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_wxo_V         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_whf_V         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_whg_V         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_whi_V         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_who_V         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_wxf2_V        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_wxg2_V        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_wxi2_V        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_wxo2_V        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_whf2_V        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_whg2_V        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_whi2_V        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_who2_V        : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_bf_V          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_bg_V          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_bi_V          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_bo_V          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_bf2_V         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_bg2_V         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_bi2_V         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_h_bo2_V         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_count           : UNSIGNED(31 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------

-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data <= (7 => int_auto_restart, 3 => int_ap_ready, 2 => int_ap_idle, 1 => int_ap_done, 0 => int_ap_start, others => '0');
                    when ADDR_GIE =>
                        rdata_data <= (0 => int_gie, others => '0');
                    when ADDR_IER =>
                        rdata_data <= (1 => int_ier(1), 0 => int_ier(0), others => '0');
                    when ADDR_ISR =>
                        rdata_data <= (1 => int_isr(1), 0 => int_isr(0), others => '0');
                    when ADDR_DATAX_DATA_0 =>
                        rdata_data <= RESIZE(int_datax(31 downto 0), 32);
                    when ADDR_DATAX_DATA_1 =>
                        rdata_data <= RESIZE(int_datax(63 downto 32), 32);
                    when ADDR_DATAY_DATA_0 =>
                        rdata_data <= RESIZE(int_datay(31 downto 0), 32);
                    when ADDR_DATAY_DATA_1 =>
                        rdata_data <= RESIZE(int_datay(63 downto 32), 32);
                    when ADDR_DOUT_DATA_0 =>
                        rdata_data <= RESIZE(int_dout(31 downto 0), 32);
                    when ADDR_DOUT_DATA_1 =>
                        rdata_data <= RESIZE(int_dout(63 downto 32), 32);
                    when ADDR_BUFFER_OUTPUT_DATA_0 =>
                        rdata_data <= RESIZE(int_buffer_output(31 downto 0), 32);
                    when ADDR_BUFFER_OUTPUT_DATA_1 =>
                        rdata_data <= RESIZE(int_buffer_output(63 downto 32), 32);
                    when ADDR_MODEL_DATA_0 =>
                        rdata_data <= RESIZE(int_model(31 downto 0), 32);
                    when ADDR_WXF_V_DATA_0 =>
                        rdata_data <= RESIZE(int_wxf_V(31 downto 0), 32);
                    when ADDR_WXF_V_DATA_1 =>
                        rdata_data <= RESIZE(int_wxf_V(63 downto 32), 32);
                    when ADDR_WXG_V_DATA_0 =>
                        rdata_data <= RESIZE(int_wxg_V(31 downto 0), 32);
                    when ADDR_WXG_V_DATA_1 =>
                        rdata_data <= RESIZE(int_wxg_V(63 downto 32), 32);
                    when ADDR_WXI_V_DATA_0 =>
                        rdata_data <= RESIZE(int_wxi_V(31 downto 0), 32);
                    when ADDR_WXI_V_DATA_1 =>
                        rdata_data <= RESIZE(int_wxi_V(63 downto 32), 32);
                    when ADDR_WXO_V_DATA_0 =>
                        rdata_data <= RESIZE(int_wxo_V(31 downto 0), 32);
                    when ADDR_WXO_V_DATA_1 =>
                        rdata_data <= RESIZE(int_wxo_V(63 downto 32), 32);
                    when ADDR_WHF_V_DATA_0 =>
                        rdata_data <= RESIZE(int_whf_V(31 downto 0), 32);
                    when ADDR_WHF_V_DATA_1 =>
                        rdata_data <= RESIZE(int_whf_V(63 downto 32), 32);
                    when ADDR_WHG_V_DATA_0 =>
                        rdata_data <= RESIZE(int_whg_V(31 downto 0), 32);
                    when ADDR_WHG_V_DATA_1 =>
                        rdata_data <= RESIZE(int_whg_V(63 downto 32), 32);
                    when ADDR_WHI_V_DATA_0 =>
                        rdata_data <= RESIZE(int_whi_V(31 downto 0), 32);
                    when ADDR_WHI_V_DATA_1 =>
                        rdata_data <= RESIZE(int_whi_V(63 downto 32), 32);
                    when ADDR_WHO_V_DATA_0 =>
                        rdata_data <= RESIZE(int_who_V(31 downto 0), 32);
                    when ADDR_WHO_V_DATA_1 =>
                        rdata_data <= RESIZE(int_who_V(63 downto 32), 32);
                    when ADDR_WXF2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_wxf2_V(31 downto 0), 32);
                    when ADDR_WXF2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_wxf2_V(63 downto 32), 32);
                    when ADDR_WXG2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_wxg2_V(31 downto 0), 32);
                    when ADDR_WXG2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_wxg2_V(63 downto 32), 32);
                    when ADDR_WXI2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_wxi2_V(31 downto 0), 32);
                    when ADDR_WXI2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_wxi2_V(63 downto 32), 32);
                    when ADDR_WXO2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_wxo2_V(31 downto 0), 32);
                    when ADDR_WXO2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_wxo2_V(63 downto 32), 32);
                    when ADDR_WHF2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_whf2_V(31 downto 0), 32);
                    when ADDR_WHF2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_whf2_V(63 downto 32), 32);
                    when ADDR_WHG2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_whg2_V(31 downto 0), 32);
                    when ADDR_WHG2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_whg2_V(63 downto 32), 32);
                    when ADDR_WHI2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_whi2_V(31 downto 0), 32);
                    when ADDR_WHI2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_whi2_V(63 downto 32), 32);
                    when ADDR_WHO2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_who2_V(31 downto 0), 32);
                    when ADDR_WHO2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_who2_V(63 downto 32), 32);
                    when ADDR_BF_V_DATA_0 =>
                        rdata_data <= RESIZE(int_bf_V(31 downto 0), 32);
                    when ADDR_BF_V_DATA_1 =>
                        rdata_data <= RESIZE(int_bf_V(63 downto 32), 32);
                    when ADDR_BG_V_DATA_0 =>
                        rdata_data <= RESIZE(int_bg_V(31 downto 0), 32);
                    when ADDR_BG_V_DATA_1 =>
                        rdata_data <= RESIZE(int_bg_V(63 downto 32), 32);
                    when ADDR_BI_V_DATA_0 =>
                        rdata_data <= RESIZE(int_bi_V(31 downto 0), 32);
                    when ADDR_BI_V_DATA_1 =>
                        rdata_data <= RESIZE(int_bi_V(63 downto 32), 32);
                    when ADDR_BO_V_DATA_0 =>
                        rdata_data <= RESIZE(int_bo_V(31 downto 0), 32);
                    when ADDR_BO_V_DATA_1 =>
                        rdata_data <= RESIZE(int_bo_V(63 downto 32), 32);
                    when ADDR_BF2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_bf2_V(31 downto 0), 32);
                    when ADDR_BF2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_bf2_V(63 downto 32), 32);
                    when ADDR_BG2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_bg2_V(31 downto 0), 32);
                    when ADDR_BG2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_bg2_V(63 downto 32), 32);
                    when ADDR_BI2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_bi2_V(31 downto 0), 32);
                    when ADDR_BI2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_bi2_V(63 downto 32), 32);
                    when ADDR_BO2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_bo2_V(31 downto 0), 32);
                    when ADDR_BO2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_bo2_V(63 downto 32), 32);
                    when ADDR_H_WXF_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_wxf_V(31 downto 0), 32);
                    when ADDR_H_WXF_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_wxf_V(63 downto 32), 32);
                    when ADDR_H_WXG_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_wxg_V(31 downto 0), 32);
                    when ADDR_H_WXG_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_wxg_V(63 downto 32), 32);
                    when ADDR_H_WXI_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_wxi_V(31 downto 0), 32);
                    when ADDR_H_WXI_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_wxi_V(63 downto 32), 32);
                    when ADDR_H_WXO_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_wxo_V(31 downto 0), 32);
                    when ADDR_H_WXO_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_wxo_V(63 downto 32), 32);
                    when ADDR_H_WHF_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_whf_V(31 downto 0), 32);
                    when ADDR_H_WHF_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_whf_V(63 downto 32), 32);
                    when ADDR_H_WHG_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_whg_V(31 downto 0), 32);
                    when ADDR_H_WHG_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_whg_V(63 downto 32), 32);
                    when ADDR_H_WHI_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_whi_V(31 downto 0), 32);
                    when ADDR_H_WHI_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_whi_V(63 downto 32), 32);
                    when ADDR_H_WHO_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_who_V(31 downto 0), 32);
                    when ADDR_H_WHO_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_who_V(63 downto 32), 32);
                    when ADDR_H_WXF2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_wxf2_V(31 downto 0), 32);
                    when ADDR_H_WXF2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_wxf2_V(63 downto 32), 32);
                    when ADDR_H_WXG2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_wxg2_V(31 downto 0), 32);
                    when ADDR_H_WXG2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_wxg2_V(63 downto 32), 32);
                    when ADDR_H_WXI2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_wxi2_V(31 downto 0), 32);
                    when ADDR_H_WXI2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_wxi2_V(63 downto 32), 32);
                    when ADDR_H_WXO2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_wxo2_V(31 downto 0), 32);
                    when ADDR_H_WXO2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_wxo2_V(63 downto 32), 32);
                    when ADDR_H_WHF2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_whf2_V(31 downto 0), 32);
                    when ADDR_H_WHF2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_whf2_V(63 downto 32), 32);
                    when ADDR_H_WHG2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_whg2_V(31 downto 0), 32);
                    when ADDR_H_WHG2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_whg2_V(63 downto 32), 32);
                    when ADDR_H_WHI2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_whi2_V(31 downto 0), 32);
                    when ADDR_H_WHI2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_whi2_V(63 downto 32), 32);
                    when ADDR_H_WHO2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_who2_V(31 downto 0), 32);
                    when ADDR_H_WHO2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_who2_V(63 downto 32), 32);
                    when ADDR_H_BF_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_bf_V(31 downto 0), 32);
                    when ADDR_H_BF_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_bf_V(63 downto 32), 32);
                    when ADDR_H_BG_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_bg_V(31 downto 0), 32);
                    when ADDR_H_BG_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_bg_V(63 downto 32), 32);
                    when ADDR_H_BI_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_bi_V(31 downto 0), 32);
                    when ADDR_H_BI_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_bi_V(63 downto 32), 32);
                    when ADDR_H_BO_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_bo_V(31 downto 0), 32);
                    when ADDR_H_BO_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_bo_V(63 downto 32), 32);
                    when ADDR_H_BF2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_bf2_V(31 downto 0), 32);
                    when ADDR_H_BF2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_bf2_V(63 downto 32), 32);
                    when ADDR_H_BG2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_bg2_V(31 downto 0), 32);
                    when ADDR_H_BG2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_bg2_V(63 downto 32), 32);
                    when ADDR_H_BI2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_bi2_V(31 downto 0), 32);
                    when ADDR_H_BI2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_bi2_V(63 downto 32), 32);
                    when ADDR_H_BO2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_h_bo2_V(31 downto 0), 32);
                    when ADDR_H_BO2_V_DATA_1 =>
                        rdata_data <= RESIZE(int_h_bo2_V(63 downto 32), 32);
                    when ADDR_COUNT_DATA_0 =>
                        rdata_data <= RESIZE(int_count(31 downto 0), 32);
                    when others =>
                        rdata_data <= (others => '0');
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_gie and (int_isr(0) or int_isr(1));
    ap_start             <= int_ap_start;
    datax                <= STD_LOGIC_VECTOR(int_datax);
    datay                <= STD_LOGIC_VECTOR(int_datay);
    dout                 <= STD_LOGIC_VECTOR(int_dout);
    buffer_output        <= STD_LOGIC_VECTOR(int_buffer_output);
    model                <= STD_LOGIC_VECTOR(int_model);
    wxf_V                <= STD_LOGIC_VECTOR(int_wxf_V);
    wxg_V                <= STD_LOGIC_VECTOR(int_wxg_V);
    wxi_V                <= STD_LOGIC_VECTOR(int_wxi_V);
    wxo_V                <= STD_LOGIC_VECTOR(int_wxo_V);
    whf_V                <= STD_LOGIC_VECTOR(int_whf_V);
    whg_V                <= STD_LOGIC_VECTOR(int_whg_V);
    whi_V                <= STD_LOGIC_VECTOR(int_whi_V);
    who_V                <= STD_LOGIC_VECTOR(int_who_V);
    wxf2_V               <= STD_LOGIC_VECTOR(int_wxf2_V);
    wxg2_V               <= STD_LOGIC_VECTOR(int_wxg2_V);
    wxi2_V               <= STD_LOGIC_VECTOR(int_wxi2_V);
    wxo2_V               <= STD_LOGIC_VECTOR(int_wxo2_V);
    whf2_V               <= STD_LOGIC_VECTOR(int_whf2_V);
    whg2_V               <= STD_LOGIC_VECTOR(int_whg2_V);
    whi2_V               <= STD_LOGIC_VECTOR(int_whi2_V);
    who2_V               <= STD_LOGIC_VECTOR(int_who2_V);
    bf_V                 <= STD_LOGIC_VECTOR(int_bf_V);
    bg_V                 <= STD_LOGIC_VECTOR(int_bg_V);
    bi_V                 <= STD_LOGIC_VECTOR(int_bi_V);
    bo_V                 <= STD_LOGIC_VECTOR(int_bo_V);
    bf2_V                <= STD_LOGIC_VECTOR(int_bf2_V);
    bg2_V                <= STD_LOGIC_VECTOR(int_bg2_V);
    bi2_V                <= STD_LOGIC_VECTOR(int_bi2_V);
    bo2_V                <= STD_LOGIC_VECTOR(int_bo2_V);
    h_wxf_V              <= STD_LOGIC_VECTOR(int_h_wxf_V);
    h_wxg_V              <= STD_LOGIC_VECTOR(int_h_wxg_V);
    h_wxi_V              <= STD_LOGIC_VECTOR(int_h_wxi_V);
    h_wxo_V              <= STD_LOGIC_VECTOR(int_h_wxo_V);
    h_whf_V              <= STD_LOGIC_VECTOR(int_h_whf_V);
    h_whg_V              <= STD_LOGIC_VECTOR(int_h_whg_V);
    h_whi_V              <= STD_LOGIC_VECTOR(int_h_whi_V);
    h_who_V              <= STD_LOGIC_VECTOR(int_h_who_V);
    h_wxf2_V             <= STD_LOGIC_VECTOR(int_h_wxf2_V);
    h_wxg2_V             <= STD_LOGIC_VECTOR(int_h_wxg2_V);
    h_wxi2_V             <= STD_LOGIC_VECTOR(int_h_wxi2_V);
    h_wxo2_V             <= STD_LOGIC_VECTOR(int_h_wxo2_V);
    h_whf2_V             <= STD_LOGIC_VECTOR(int_h_whf2_V);
    h_whg2_V             <= STD_LOGIC_VECTOR(int_h_whg2_V);
    h_whi2_V             <= STD_LOGIC_VECTOR(int_h_whi2_V);
    h_who2_V             <= STD_LOGIC_VECTOR(int_h_who2_V);
    h_bf_V               <= STD_LOGIC_VECTOR(int_h_bf_V);
    h_bg_V               <= STD_LOGIC_VECTOR(int_h_bg_V);
    h_bi_V               <= STD_LOGIC_VECTOR(int_h_bi_V);
    h_bo_V               <= STD_LOGIC_VECTOR(int_h_bo_V);
    h_bf2_V              <= STD_LOGIC_VECTOR(int_h_bf2_V);
    h_bg2_V              <= STD_LOGIC_VECTOR(int_h_bg2_V);
    h_bi2_V              <= STD_LOGIC_VECTOR(int_h_bi2_V);
    h_bo2_V              <= STD_LOGIC_VECTOR(int_h_bo2_V);
    count                <= STD_LOGIC_VECTOR(int_count);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (ap_done = '1') then
                    int_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_ready <= ap_ready;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= "00";
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DATAX_DATA_0) then
                    int_datax(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_datax(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DATAX_DATA_1) then
                    int_datax(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_datax(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DATAY_DATA_0) then
                    int_datay(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_datay(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DATAY_DATA_1) then
                    int_datay(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_datay(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DOUT_DATA_0) then
                    int_dout(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_dout(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DOUT_DATA_1) then
                    int_dout(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_dout(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BUFFER_OUTPUT_DATA_0) then
                    int_buffer_output(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_buffer_output(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BUFFER_OUTPUT_DATA_1) then
                    int_buffer_output(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_buffer_output(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_MODEL_DATA_0) then
                    int_model(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_model(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WXF_V_DATA_0) then
                    int_wxf_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wxf_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WXF_V_DATA_1) then
                    int_wxf_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wxf_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WXG_V_DATA_0) then
                    int_wxg_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wxg_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WXG_V_DATA_1) then
                    int_wxg_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wxg_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WXI_V_DATA_0) then
                    int_wxi_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wxi_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WXI_V_DATA_1) then
                    int_wxi_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wxi_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WXO_V_DATA_0) then
                    int_wxo_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wxo_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WXO_V_DATA_1) then
                    int_wxo_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wxo_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WHF_V_DATA_0) then
                    int_whf_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_whf_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WHF_V_DATA_1) then
                    int_whf_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_whf_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WHG_V_DATA_0) then
                    int_whg_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_whg_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WHG_V_DATA_1) then
                    int_whg_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_whg_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WHI_V_DATA_0) then
                    int_whi_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_whi_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WHI_V_DATA_1) then
                    int_whi_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_whi_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WHO_V_DATA_0) then
                    int_who_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_who_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WHO_V_DATA_1) then
                    int_who_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_who_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WXF2_V_DATA_0) then
                    int_wxf2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wxf2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WXF2_V_DATA_1) then
                    int_wxf2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wxf2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WXG2_V_DATA_0) then
                    int_wxg2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wxg2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WXG2_V_DATA_1) then
                    int_wxg2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wxg2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WXI2_V_DATA_0) then
                    int_wxi2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wxi2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WXI2_V_DATA_1) then
                    int_wxi2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wxi2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WXO2_V_DATA_0) then
                    int_wxo2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wxo2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WXO2_V_DATA_1) then
                    int_wxo2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_wxo2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WHF2_V_DATA_0) then
                    int_whf2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_whf2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WHF2_V_DATA_1) then
                    int_whf2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_whf2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WHG2_V_DATA_0) then
                    int_whg2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_whg2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WHG2_V_DATA_1) then
                    int_whg2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_whg2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WHI2_V_DATA_0) then
                    int_whi2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_whi2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WHI2_V_DATA_1) then
                    int_whi2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_whi2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WHO2_V_DATA_0) then
                    int_who2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_who2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WHO2_V_DATA_1) then
                    int_who2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_who2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BF_V_DATA_0) then
                    int_bf_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bf_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BF_V_DATA_1) then
                    int_bf_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bf_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BG_V_DATA_0) then
                    int_bg_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bg_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BG_V_DATA_1) then
                    int_bg_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bg_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BI_V_DATA_0) then
                    int_bi_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bi_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BI_V_DATA_1) then
                    int_bi_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bi_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BO_V_DATA_0) then
                    int_bo_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bo_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BO_V_DATA_1) then
                    int_bo_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bo_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BF2_V_DATA_0) then
                    int_bf2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bf2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BF2_V_DATA_1) then
                    int_bf2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bf2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BG2_V_DATA_0) then
                    int_bg2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bg2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BG2_V_DATA_1) then
                    int_bg2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bg2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BI2_V_DATA_0) then
                    int_bi2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bi2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BI2_V_DATA_1) then
                    int_bi2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bi2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BO2_V_DATA_0) then
                    int_bo2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bo2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BO2_V_DATA_1) then
                    int_bo2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_bo2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WXF_V_DATA_0) then
                    int_h_wxf_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_wxf_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WXF_V_DATA_1) then
                    int_h_wxf_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_wxf_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WXG_V_DATA_0) then
                    int_h_wxg_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_wxg_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WXG_V_DATA_1) then
                    int_h_wxg_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_wxg_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WXI_V_DATA_0) then
                    int_h_wxi_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_wxi_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WXI_V_DATA_1) then
                    int_h_wxi_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_wxi_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WXO_V_DATA_0) then
                    int_h_wxo_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_wxo_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WXO_V_DATA_1) then
                    int_h_wxo_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_wxo_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WHF_V_DATA_0) then
                    int_h_whf_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_whf_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WHF_V_DATA_1) then
                    int_h_whf_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_whf_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WHG_V_DATA_0) then
                    int_h_whg_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_whg_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WHG_V_DATA_1) then
                    int_h_whg_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_whg_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WHI_V_DATA_0) then
                    int_h_whi_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_whi_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WHI_V_DATA_1) then
                    int_h_whi_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_whi_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WHO_V_DATA_0) then
                    int_h_who_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_who_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WHO_V_DATA_1) then
                    int_h_who_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_who_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WXF2_V_DATA_0) then
                    int_h_wxf2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_wxf2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WXF2_V_DATA_1) then
                    int_h_wxf2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_wxf2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WXG2_V_DATA_0) then
                    int_h_wxg2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_wxg2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WXG2_V_DATA_1) then
                    int_h_wxg2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_wxg2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WXI2_V_DATA_0) then
                    int_h_wxi2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_wxi2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WXI2_V_DATA_1) then
                    int_h_wxi2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_wxi2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WXO2_V_DATA_0) then
                    int_h_wxo2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_wxo2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WXO2_V_DATA_1) then
                    int_h_wxo2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_wxo2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WHF2_V_DATA_0) then
                    int_h_whf2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_whf2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WHF2_V_DATA_1) then
                    int_h_whf2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_whf2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WHG2_V_DATA_0) then
                    int_h_whg2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_whg2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WHG2_V_DATA_1) then
                    int_h_whg2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_whg2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WHI2_V_DATA_0) then
                    int_h_whi2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_whi2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WHI2_V_DATA_1) then
                    int_h_whi2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_whi2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WHO2_V_DATA_0) then
                    int_h_who2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_who2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_WHO2_V_DATA_1) then
                    int_h_who2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_who2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_BF_V_DATA_0) then
                    int_h_bf_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_bf_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_BF_V_DATA_1) then
                    int_h_bf_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_bf_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_BG_V_DATA_0) then
                    int_h_bg_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_bg_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_BG_V_DATA_1) then
                    int_h_bg_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_bg_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_BI_V_DATA_0) then
                    int_h_bi_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_bi_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_BI_V_DATA_1) then
                    int_h_bi_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_bi_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_BO_V_DATA_0) then
                    int_h_bo_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_bo_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_BO_V_DATA_1) then
                    int_h_bo_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_bo_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_BF2_V_DATA_0) then
                    int_h_bf2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_bf2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_BF2_V_DATA_1) then
                    int_h_bf2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_bf2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_BG2_V_DATA_0) then
                    int_h_bg2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_bg2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_BG2_V_DATA_1) then
                    int_h_bg2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_bg2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_BI2_V_DATA_0) then
                    int_h_bi2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_bi2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_BI2_V_DATA_1) then
                    int_h_bi2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_bi2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_BO2_V_DATA_0) then
                    int_h_bo2_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_bo2_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_H_BO2_V_DATA_1) then
                    int_h_bo2_V(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_h_bo2_V(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_COUNT_DATA_0) then
                    int_count(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_count(31 downto 0));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
