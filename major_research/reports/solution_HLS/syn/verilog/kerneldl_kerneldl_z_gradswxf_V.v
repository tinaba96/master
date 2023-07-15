// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1ps/1ps

module kerneldl_kerneldl_z_gradswxf_V_ram # (

  // Common module parameters
  parameter integer                 MEMORY_SIZE        = 1638400,
  parameter                         MEMORY_PRIMITIVE   = "ultra",
  parameter                         CLOCKING_MODE      = "common_clock",
  parameter                         ECC_MODE           = "no_ecc",
  parameter                         MEMORY_INIT_FILE   = "none",
  parameter                         WAKEUP_TIME        = "disable_sleep",
  parameter integer                 MESSAGE_CONTROL    = 0,

  // Port A module parameters
  parameter integer                 WRITE_DATA_WIDTH_A = 16,
  parameter integer                 READ_DATA_WIDTH_A  = WRITE_DATA_WIDTH_A,
  parameter integer                 BYTE_WRITE_WIDTH_A = WRITE_DATA_WIDTH_A,
  parameter integer                 ADDR_WIDTH_A       = 17,
  parameter                         READ_RESET_VALUE_A = "0",
  parameter integer                 READ_LATENCY_A     = 2,
  parameter                         WRITE_MODE_A       = "no_change",

  // Port B module parameters
  parameter integer                 WRITE_DATA_WIDTH_B = WRITE_DATA_WIDTH_A,
  parameter integer                 READ_DATA_WIDTH_B  = WRITE_DATA_WIDTH_B,
  parameter integer                 BYTE_WRITE_WIDTH_B = WRITE_DATA_WIDTH_B,
  parameter integer                 ADDR_WIDTH_B       = ADDR_WIDTH_A,
  parameter                         READ_RESET_VALUE_B = "0",
  parameter integer                 READ_LATENCY_B     = READ_LATENCY_A,
  parameter                         WRITE_MODE_B       = WRITE_MODE_A
) (

  // Port A module ports
  input  wire                                               clka,
  input  wire                                               rsta,
  input  wire                                               ena,
  input  wire [ADDR_WIDTH_A-1:0]                            addra,
  input  wire [(WRITE_DATA_WIDTH_A/BYTE_WRITE_WIDTH_A)-1:0] wea,
  input  wire [WRITE_DATA_WIDTH_A-1:0]                      dina,
  output wire [READ_DATA_WIDTH_A-1:0]                       douta,

  // Port B module ports
  input  wire                                               clkb,
  input  wire                                               rstb,
  input  wire                                               enb,
  input  wire [ADDR_WIDTH_B-1:0]                            addrb,
  input  wire [(WRITE_DATA_WIDTH_B/BYTE_WRITE_WIDTH_B)-1:0] web,
  input  wire [WRITE_DATA_WIDTH_B-1:0]                      dinb,
  output wire [READ_DATA_WIDTH_B-1:0]                       doutb
);

// Set parameter values and connect ports to instantiate an XPM_MEMORY true dual port RAM configuration
xpm_memory_tdpram # (

  // Common module parameters
  .MEMORY_SIZE        (MEMORY_SIZE),   //positive integer
  .MEMORY_PRIMITIVE   (MEMORY_PRIMITIVE),      //string; "auto", "distributed", "block" or "ultra";
  .CLOCKING_MODE      (CLOCKING_MODE),      //string; "common_clock", "independent_clock"
  .ECC_MODE           (ECC_MODE),      //do not change
  .MEMORY_INIT_FILE   (MEMORY_INIT_FILE), //string; "none" or "<filename>.mem" 
  .MEMORY_INIT_PARAM  (""), //string;
  .WAKEUP_TIME        (WAKEUP_TIME),      //string; "disable_sleep" or "use_sleep_pin"
  .MESSAGE_CONTROL    (MESSAGE_CONTROL),      //do not change

  // Port A module parameters
  .WRITE_DATA_WIDTH_A (WRITE_DATA_WIDTH_A),     //positive integer
  .READ_DATA_WIDTH_A  (READ_DATA_WIDTH_A),     //positive integer
  .BYTE_WRITE_WIDTH_A (BYTE_WRITE_WIDTH_A),     //integer; 8, 9, or WRITE_DATA_WIDTH_A value
  .ADDR_WIDTH_A       (ADDR_WIDTH_A),      //positive integer
  .READ_RESET_VALUE_A (READ_RESET_VALUE_A),  //string
  .READ_LATENCY_A     (READ_LATENCY_A),      //non-negative integer
  .WRITE_MODE_A       (WRITE_MODE_A),       //string; "write_first", "read_first", "no_change"

  // Port B module parameters
  .WRITE_DATA_WIDTH_B (WRITE_DATA_WIDTH_B),     //positive integer
  .READ_DATA_WIDTH_B  (READ_DATA_WIDTH_B),     //positive integer
  .BYTE_WRITE_WIDTH_B (BYTE_WRITE_WIDTH_B),     //integer; 8, 9, or WRITE_DATA_WIDTH_B value
  .ADDR_WIDTH_B       (ADDR_WIDTH_B),      //positive integer
  .READ_RESET_VALUE_B (READ_RESET_VALUE_B),  //string
  .READ_LATENCY_B     (READ_LATENCY_B),      //non-negative integer
  .WRITE_MODE_B       (WRITE_MODE_B)       //string; "write_first", "read_first", "no_change"

) xpm_memory_tdpram_inst (

  // Common module ports
  .sleep          (1'b0),  //do not change

  // Port A module ports
  .clka           (clka),
  .rsta           (rsta),
  .ena            (ena),
  .regcea         (ena),
  .addra          (addra),
  .wea            (wea),
  .dina           (dina),
  .injectsbiterra (1'b0),  //do not change
  .injectdbiterra (1'b0),  //do not change
  .douta          (douta),
  .sbiterra       (),      //do not change
  .dbiterra       (),      //do not change

  // Port B module ports
  .clkb           (clkb),
  .rstb           (rstb),
  .enb            (enb),
  .regceb         (enb),
  .addrb          (addrb),
  .web            (web),
  .dinb           (dinb),
  .injectsbiterrb (1'b0),  //do not change
  .injectdbiterrb (1'b0),  //do not change
  .doutb          (doutb),
  .sbiterrb       (),      //do not change
  .dbiterrb       ()       //do not change

);

endmodule : kerneldl_kerneldl_z_gradswxf_V_ram
`timescale 1 ns / 1 ps
module kerneldl_kerneldl_z_gradswxf_V(
    reset,
    clk,
    address0,
    ce0,
    address1,
    ce1,
    we0,
    d0,
    we1,
    d1,
    q0,
    q1);

parameter DataWidth = 32'd16;
parameter AddressRange = 32'd102400;
parameter AddressWidth = 32'd17;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
input[AddressWidth - 1:0] address1;
input ce1;
input we0;
input[DataWidth - 1:0] d0;
input we1;
input[DataWidth - 1:0] d1;
output[DataWidth - 1:0] q0;
output[DataWidth - 1:0] q1;



kerneldl_kerneldl_z_gradswxf_V_ram kerneldl_kerneldl_z_gradswxf_V_ram_U(
    .clka( clk ),
    .clkb( clk ),
    .rsta( reset ),
    .rstb( reset ),
    .addra( address0 ),
    .ena( ce0 ),
    .addrb( address1 ),
    .enb( ce1 ),
    .dina( d0 ),
    .wea( we0 ),
    .dinb( d1 ),
    .web( we1 ),
    .douta( q0 ),
    .doutb( q1 ));

endmodule

