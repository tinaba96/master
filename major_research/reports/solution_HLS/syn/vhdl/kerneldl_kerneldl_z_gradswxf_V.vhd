-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
--
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity kerneldl_kerneldl_z_gradswxf_V_ram is 
   generic(
  -- Common module parameters
       MEMORY_SIZE        : integer := 1638400;
       MEMORY_PRIMITIVE   : string := "ultra";
       CLOCKING_MODE      : string := "common_clock";
       ECC_MODE           : string := "no_ecc";
       MEMORY_INIT_FILE   : string := "none";
       WAKEUP_TIME        : string := "disable_sleep";
       MESSAGE_CONTROL    : integer := 0;

  -- Port A module parameters
       WRITE_DATA_WIDTH_A : integer := 16;
       READ_DATA_WIDTH_A  : integer := 16;
       BYTE_WRITE_WIDTH_A : integer := 16;
       ADDR_WIDTH_A       : integer := 17;
       READ_RESET_VALUE_A : string  := "0";
       READ_LATENCY_A     : integer := 2;
       WRITE_MODE_A       : string := "no_change";

  -- Port B module parameters
       WRITE_DATA_WIDTH_B : integer := 16;
       READ_DATA_WIDTH_B  : integer := 16;
       BYTE_WRITE_WIDTH_B : integer := 16;
       ADDR_WIDTH_B       : integer := 17;
       READ_RESET_VALUE_B : string  := "0";
       READ_LATENCY_B     : integer := 2;
       WRITE_MODE_B       : string := "no_change"

   ); 
    port (
  -- Port A module ports
       clka    : in std_logic;
       rsta    : in std_logic;
       ena     : in std_logic;
       addra   : in std_logic_vector(ADDR_WIDTH_A-1 downto 0);
       wea     : in std_logic;
       dina    : in std_logic_vector(WRITE_DATA_WIDTH_A-1 downto 0);
       douta   : out std_logic_vector(READ_DATA_WIDTH_A-1 downto 0);
  -- Port B module ports
       clkb    : in std_logic;
       rstb    : in std_logic;
       enb     : in std_logic;
       addrb   : in std_logic_vector(ADDR_WIDTH_B-1 downto 0);
       web     : in std_logic;
       dinb    : in std_logic_vector(WRITE_DATA_WIDTH_B-1 downto 0);
       doutb   : out std_logic_vector(READ_DATA_WIDTH_B-1 downto 0)
   );
end entity;

architecture rtl of kerneldl_kerneldl_z_gradswxf_V_ram is 
   signal wea_vector : std_logic_vector((WRITE_DATA_WIDTH_A/BYTE_WRITE_WIDTH_A)-1 downto 0);
   signal web_vector : std_logic_vector((WRITE_DATA_WIDTH_B/BYTE_WRITE_WIDTH_B)-1 downto 0);
-- Set generic values and connect ports to instantiate an XPM_MEMORY true dual port RAM configuration

-----Use the following component declaration in your design-----
component xpm_memory_tdpram
  generic (

    -- Common module generics
    MEMORY_SIZE        : integer;
    MEMORY_PRIMITIVE   : string;
    CLOCKING_MODE      : string;
    ECC_MODE           : string;
    MEMORY_INIT_FILE   : string;
    MEMORY_INIT_PARAM  : string;
    WAKEUP_TIME        : string;
    MESSAGE_CONTROL    : integer;

    -- Port A module generics
    WRITE_DATA_WIDTH_A : integer;
    READ_DATA_WIDTH_A  : integer;
    BYTE_WRITE_WIDTH_A : integer;
    ADDR_WIDTH_A       : integer;
    READ_RESET_VALUE_A : string;
    READ_LATENCY_A     : integer;
    WRITE_MODE_A       : string;

    -- Port B module generics
    WRITE_DATA_WIDTH_B : integer;
    READ_DATA_WIDTH_B  : integer;
    BYTE_WRITE_WIDTH_B : integer;
    ADDR_WIDTH_B       : integer;
    READ_RESET_VALUE_B : string;
    READ_LATENCY_B     : integer;
    WRITE_MODE_B       : string
  );
  port (

    -- Common module ports
    sleep          : in  std_logic;

    -- Port A module ports
    clka           : in  std_logic;
    rsta           : in  std_logic;
    ena            : in  std_logic;
    regcea         : in  std_logic;
    wea            : in  std_logic_vector((WRITE_DATA_WIDTH_A/BYTE_WRITE_WIDTH_A)-1 downto 0);
    addra          : in  std_logic_vector(ADDR_WIDTH_A-1 downto 0);
    dina           : in  std_logic_vector(WRITE_DATA_WIDTH_A-1 downto 0);
    injectsbiterra : in  std_logic;
    injectdbiterra : in  std_logic;
    douta          : out std_logic_vector(READ_DATA_WIDTH_A-1 downto 0);
    sbiterra       : out std_logic;
    dbiterra       : out std_logic;

    -- Port B module ports
    clkb           : in  std_logic;
    rstb           : in  std_logic;
    enb            : in  std_logic;
    regceb         : in  std_logic;
    web            : in  std_logic_vector((WRITE_DATA_WIDTH_B/BYTE_WRITE_WIDTH_B)-1 downto 0);
    addrb          : in  std_logic_vector(ADDR_WIDTH_B-1 downto 0);
    dinb           : in  std_logic_vector(WRITE_DATA_WIDTH_B-1 downto 0);
    injectsbiterrb : in  std_logic;
    injectdbiterrb : in  std_logic;
    doutb          : out std_logic_vector(READ_DATA_WIDTH_B-1 downto 0);
    sbiterrb       : out std_logic;
    dbiterrb       : out std_logic
  );
end component;


begin
   wea_vector(0) <= wea;
   web_vector(0) <= web;
-----Cut code below this line and paste into the architecture body-----
xpm_memory_tdpram_inst : xpm_memory_tdpram
  generic map (

    -- Common module generics
    MEMORY_SIZE        => MEMORY_SIZE,        --positive integer
    MEMORY_PRIMITIVE   => MEMORY_PRIMITIVE,           --string; "auto", "distributed", "block" or "ultra" 
    CLOCKING_MODE      => CLOCKING_MODE,           --string; "common_clock", "independent_clock"
    ECC_MODE           => ECC_MODE,           --do not change
    MEMORY_INIT_FILE   => MEMORY_INIT_FILE,      --string; "none" or "<filename>.mem" 
    MEMORY_INIT_PARAM  => "",      --string
    WAKEUP_TIME        => WAKEUP_TIME,           --string; "disable_sleep" or "use_sleep_pin"
    MESSAGE_CONTROL    => MESSAGE_CONTROL,           --do not change

    -- Port A module generics
    WRITE_DATA_WIDTH_A => WRITE_DATA_WIDTH_A,          --positive integer
    READ_DATA_WIDTH_A  => READ_DATA_WIDTH_A,          --positive integer
    BYTE_WRITE_WIDTH_A => BYTE_WRITE_WIDTH_A,          --integer; 8, 9, or WRITE_DATA_WIDTH_A value
    ADDR_WIDTH_A       => ADDR_WIDTH_A,           --positive integer
    READ_RESET_VALUE_A => READ_RESET_VALUE_A, --string
    READ_LATENCY_A     => READ_LATENCY_A,           --non-negative integer
    WRITE_MODE_A       => WRITE_MODE_A,           --string; "write_first", "read_first", "no_change"

    -- Port B module generics
    WRITE_DATA_WIDTH_B => WRITE_DATA_WIDTH_B,          --positive integer
    READ_DATA_WIDTH_B  => READ_DATA_WIDTH_B,          --positive integer
    BYTE_WRITE_WIDTH_B => BYTE_WRITE_WIDTH_B,          --integer; 8, 9, or WRITE_DATA_WIDTH_B value
    ADDR_WIDTH_B       => ADDR_WIDTH_B,           --positive integer
    READ_RESET_VALUE_B => READ_RESET_VALUE_B, --string
    READ_LATENCY_B     => READ_LATENCY_B,           --non-negative integer
    WRITE_MODE_B       => WRITE_MODE_B            --string; "write_first", "read_first", "no_change"
  )
  port map (

    -- Common module ports
    sleep          => '0',   --do not change

    -- Port A module ports
    clka           => clka,
    rsta           => rsta,
    ena            => ena,
    regcea         => ena,
    wea            => wea_vector,
    addra          => addra,
    dina           => dina,
    injectsbiterra => '0',   --do not change
    injectdbiterra => '0',   --do not change
    douta          => douta,
    sbiterra       => open,  --do not change
    dbiterra       => open,  --do not change

    -- Port B module ports
    clkb           => clkb,
    rstb           => rstb,
    enb            => enb,
    regceb         => enb,
    web            => web_vector,
    addrb          => addrb,
    dinb           => dinb,
    injectsbiterrb => '0',   --do not change
    injectdbiterrb => '0',   --do not change
    doutb          => doutb,
    sbiterrb       => open,  --do not change
    dbiterrb       => open   --do not change
  );
end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity kerneldl_kerneldl_z_gradswxf_V is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 102400;
        AddressWidth : INTEGER := 17);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        address1 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce1 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        q1 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of kerneldl_kerneldl_z_gradswxf_V is
    component kerneldl_kerneldl_z_gradswxf_V_ram is
        port (
            clka : IN STD_LOGIC;
            clkb : IN STD_LOGIC;
            rsta : IN STD_LOGIC;
            rstb : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR;
            ena : IN STD_LOGIC;
            addrb : IN STD_LOGIC_VECTOR;
            enb : IN STD_LOGIC;
            dina : IN STD_LOGIC_VECTOR;
            wea : IN STD_LOGIC;
            dinb : IN STD_LOGIC_VECTOR;
            web : IN STD_LOGIC;
            douta : OUT STD_LOGIC_VECTOR;
            doutb : OUT STD_LOGIC_VECTOR);
    end component;



begin
    kerneldl_kerneldl_z_gradswxf_V_ram_U :  component kerneldl_kerneldl_z_gradswxf_V_ram
    port map (
        clka => clk,
        clkb => clk,
        rsta => reset,
        rstb => reset,
        addra => address0,
        ena => ce0,
        addrb => address1,
        enb => ce1,
        dina => d0,
        wea => we0,
        dinb => d1,
        web => we1,
        douta => q0,
        doutb => q1);

end architecture;


