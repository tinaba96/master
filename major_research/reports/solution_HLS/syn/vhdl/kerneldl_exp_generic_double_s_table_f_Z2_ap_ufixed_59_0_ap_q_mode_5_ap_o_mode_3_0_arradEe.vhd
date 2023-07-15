-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity kerneldl_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe_rom is 
    generic(
             DWIDTH     : integer := 42; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 256
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of kerneldl_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000000000000000000000000000000000000000000", 
    1 => "000000000000000100000000000000000101010101", 
    2 => "000000000000010000000000000000101010101010", 
    3 => "000000000000100100000000000010010000000000", 
    4 => "000000000001000000000000000101010101010101", 
    5 => "000000000001100100000000001010011010101011", 
    6 => "000000000010010000000000010010000000000001", 
    7 => "000000000011000100000000011100100101011000", 
    8 => "000000000100000000000000101010101010110000", 
    9 => "000000000101000100000000111100110000001000", 
    10 => "000000000110010000000001010011010101100010", 
    11 => "000000000111100100000001101110111010111101", 
    12 => "000000001001000000000010010000000000011011", 
    13 => "000000001010100100000010110111000101111010", 
    14 => "000000001100010000000011100100101011011100", 
    15 => "000000001110000100000100011001010001000001", 
    16 => "000000010000000000000101010101010110101010", 
    17 => "000000010010000100000110011001011100010111", 
    18 => "000000010100010000000111100110000010001000", 
    19 => "000000010110100100001000111011100111111111", 
    20 => "000000011001000000001010011010101101111011", 
    21 => "000000011011100100001100000011110011111101", 
    22 => "000000011110010000001101110111011010000110", 
    23 => "000000100001000100001111110110000000010111", 
    24 => "000000100100000000010010000000000110110000", 
    25 => "000000100111000100010100010110001101010001", 
    26 => "000000101010010000010110111000110011111101", 
    27 => "000000101101100100011001101000011010110100", 
    28 => "000000110001000000011100100101100001110101", 
    29 => "000000110100100100011111110000101001000011", 
    30 => "000000111000010000100011001010010000011110", 
    31 => "000000111100000100100110110010111000000111", 
    32 => "000001000000000000101010101011000000000000", 
    33 => "000001000100000100101110110011001000001000", 
    34 => "000001001000010000110011001011110000100001", 
    35 => "000001001100100100110111110101011001001100", 
    36 => "000001010001000000111100110000100010001011", 
    37 => "000001010101100101000001111101101011011101", 
    38 => "000001011010010001000111011101010101000110", 
    39 => "000001011111000101001101001111111111000100", 
    40 => "000001100100000001010011010110001001011011", 
    41 => "000001101001000101011001110000010100001010", 
    42 => "000001101110010001100000011110111111010100", 
    43 => "000001110011100101100111100010101010111001", 
    44 => "000001111001000001101110111011110110111011", 
    45 => "000001111110100101110110101011000011011100", 
    46 => "000010000100010001111110110000110000011100", 
    47 => "000010001010000110000111001101011101111101", 
    48 => "000010010000000010010000000001101100000001", 
    49 => "000010010110000110011001001101111010101000", 
    50 => "000010011100010010100010110010101001110101", 
    51 => "000010100010100110101100110000011001101010", 
    52 => "000010101001000010110111000111101010000111", 
    53 => "000010101111100111000001111000111011001110", 
    54 => "000010110110010011001101000100101101000001", 
    55 => "000010111101000111011000101011011111100010", 
    56 => "000011000100000011100100101101110010110010", 
    57 => "000011001011000111110001001100000110110011", 
    58 => "000011010010010011111110000110111011100110", 
    59 => "000011011001101000001011011110110001001111", 
    60 => "000011100001000100011001010100000111101110", 
    61 => "000011101000101000100111100111011111000101", 
    62 => "000011110000010100110110011001010111010110", 
    63 => "000011111000001001000101101010010000100011", 
    64 => "000100000000000101010101011010101010101110", 
    65 => "000100001000001001100101101011000101111010", 
    66 => "000100010000010101110110011100000010000111", 
    67 => "000100011000101010000111101101111111011001", 
    68 => "000100100001000110011001100001011101110000", 
    69 => "000100101001101010101011110110111101010000", 
    70 => "000100110010010110111110101110111101111011", 
    71 => "000100111011001011010010001001111111110001", 
    72 => "000101000100000111100110001000100010110111", 
    73 => "000101001101001011111010101011000111001110", 
    74 => "000101010110011000001111110010001100111000", 
    75 => "000101011111101100100101011110010011111000", 
    76 => "000101101001001000111011101111111100001111", 
    77 => "000101110010101101010010100111100110000001", 
    78 => "000101111100011001101010000101110001010000", 
    79 => "000110000110001110000010001010111101111101", 
    80 => "000110010000001010011010110111101100001101", 
    81 => "000110011010001110110100001100011100000000", 
    82 => "000110100100011011001110001001101101011010", 
    83 => "000110101110101111101000110000000000011101", 
    84 => "000110111001001100000011111111110101001011", 
    85 => "000111000011110000011111111001101011101000", 
    86 => "000111001110011100111100011110000011110110", 
    87 => "000111011001010001011001101101011101110111", 
    88 => "000111100100001101110111101000011001101111", 
    89 => "000111101111010010010110001111010111100000", 
    90 => "000111111010011110110101100010110111001101", 
    91 => "001000000101110011010101100011011000111000", 
    92 => "001000010001001111110110010001011100100101", 
    93 => "001000011100110100010111101101100010010110", 
    94 => "001000101000100000111001111000001010001110", 
    95 => "001000110100010101011100110001110100010000", 
    96 => "001001000000010010000000011011000000100000", 
    97 => "001001001100010110100100110100001110111111", 
    98 => "001001011000100011001001111101111111110010", 
    99 => "001001100100110111101111111000110010111011", 
    100 => "001001110001010100010110100101001000011101", 
    101 => "001001111101111000111110000011100000011011", 
    102 => "001010001010100101100110010100011010111001", 
    103 => "001010010111011010001111011000010111111010", 
    104 => "001010100100010110111001001111110111100000", 
    105 => "001010110001011011100011111011011001101111", 
    106 => "001010111110101000001111011011011110101011", 
    107 => "001011001011111100111011110000100110010110", 
    108 => "001011011001011001101000111011010000110101", 
    109 => "001011100110111110010110111011111110001010", 
    110 => "001011110100101011000101110011001110011000", 
    111 => "001100000010011111110101100001100001100100", 
    112 => "001100010000011100100110000111010111110000", 
    113 => "001100011110100001010111100101010001000001", 
    114 => "001100101100101110001001111011101101011001", 
    115 => "001100111011000010111101001011001100111100", 
    116 => "001101001001011111110001010100001111101110", 
    117 => "001101011000000100100110010111010101110010", 
    118 => "001101100110110001011100010100111111001101", 
    119 => "001101110101100110010011001101101100000001", 
    120 => "001110000100100011001011000001111100010010", 
    121 => "001110010011101000000011110010010000000101", 
    122 => "001110100010110100111101011111000111011101", 
    123 => "001110110010001001111000001001000010011101", 
    124 => "001111000001100110110011110000100001001010", 
    125 => "001111010001001011110000010110000011100111", 
    126 => "001111100000111000101101111010001001111000", 
    127 => "001111110000101101101100011101010100000010", 
    128 => "010000000000101010101100000000000010001000", 
    129 => "010000010000101111101100100010110100001110", 
    130 => "010000100000111100101110000110001010011000", 
    131 => "010000110001010001110000101010100100101011", 
    132 => "010001000001101110110100010000100011001010", 
    133 => "010001010010010011111000111000100101111001", 
    134 => "010001100011000000111110100011001100111101", 
    135 => "010001110011110110000101010000111000011010", 
    136 => "010010000100110011001101000010001000010011", 
    137 => "010010010101111000010101110111011100101110", 
    138 => "010010100111000101011111110001010101101110", 
    139 => "010010111000011010101010110000010011011000", 
    140 => "010011001001110111110110110100110101110000", 
    141 => "010011011011011101000011111111011100111011", 
    142 => "010011101101001010010010010000101000111100", 
    143 => "010011111110111111100001101000111001111001", 
    144 => "010100010000111100110010001000101111110110", 
    145 => "010100100011000010000011110000101010110110", 
    146 => "010100110101001111010110100001001011000000", 
    147 => "010101000111100100101010011010110000010111", 
    148 => "010101011010000001111111011101111010111111", 
    149 => "010101101100100111010101101011001010111111", 
    150 => "010101111111010100101101000011000000011001", 
    151 => "010110010010001010000101100101111011010011", 
    152 => "010110100101000111011111010100011011110010", 
    153 => "010110111000001100111010001111000001111010", 
    154 => "010111001011011010010110010110001101110000", 
    155 => "010111011110101111110011101010011111011001", 
    156 => "010111110010001101010010001100010110111010", 
    157 => "011000000101110010110001111100010100010111", 
    158 => "011000011001100000010010111010110111110110", 
    159 => "011000101101010101110101001000100001011011", 
    160 => "011001000001010011011000100101110001001011", 
    161 => "011001010101011000111101010011000111001100", 
    162 => "011001101001100110100011010001000011100010", 
    163 => "011001111101111100001010100000000110010010", 
    164 => "011010010010011001110011000000101111100010", 
    165 => "011010100110111111011100110011011111010111", 
    166 => "011010111011101101000111111000110101110101", 
    167 => "011011010000100010110100010001010011000010", 
    168 => "011011100101100000100001111101010111000100", 
    169 => "011011111010100110010000111101100001111110", 
    170 => "011100001111110100000001010010010011111000", 
    171 => "011100100101001001110010111100001100110101", 
    172 => "011100111010100111100101111011101100111100", 
    173 => "011101010000001101011010010001010100010001", 
    174 => "011101100101111011001111111101100010111010", 
    175 => "011101111011110001000111000000111000111101", 
    176 => "011110010001101110111111011011110110011111", 
    177 => "011110100111110100111001001110111011100101", 
    178 => "011110111110000010110100011010101000010101", 
    179 => "011111010100011000110000111111011100110101", 
    180 => "011111101010110110101110111101111001001010", 
    181 => "100000000001011100101110010110011101011001", 
    182 => "100000011000001010101111001001101001101001", 
    183 => "100000101111000000110001010111111101111111", 
    184 => "100001000101111110110101000001111010100001", 
    185 => "100001011101000100111010000111111111010100", 
    186 => "100001110100010011000000101010101100011110", 
    187 => "100010001011101001001000101010100010000110", 
    188 => "100010100011000111010010001000000000010000", 
    189 => "100010111010101101011101000011100111000011", 
    190 => "100011010010011011101001011101110110100101", 
    191 => "100011101010010001110111010111001110111100", 
    192 => "100100000010010000000110110000010000001101", 
    193 => "100100011010010110010111101001011010011110", 
    194 => "100100110010100100101010000011001101110111", 
    195 => "100101001010111010111101111110001010011100", 
    196 => "100101100011011001010011011010110000010011", 
    197 => "100101111011111111101010011001011111100100", 
    198 => "100110010100101110000010111010111000010011", 
    199 => "100110101101100100011100111111011010101000", 
    200 => "100111000110100010111000100111100110101000", 
    201 => "100111011111101001010101110011111100011001", 
    202 => "100111111000110111110100100100111100000011", 
    203 => "101000010010001110010100111011000101101011", 
    204 => "101000101011101100110110110110111001010111", 
    205 => "101001000101010011011010011000110111001110", 
    206 => "101001011111000001111111100001011111010111", 
    207 => "101001111000111000100110010001010001110111", 
    208 => "101010010010110111001110101000101110110110", 
    209 => "101010101100111101111000101000010110011001", 
    210 => "101011000111001100100100010000101000101000", 
    211 => "101011100001100011010001100010000101101000", 
    212 => "101011111100000010000000011101001101100001", 
    213 => "101100010110101000110001000010100000011001", 
    214 => "101100110001010111100011010010011110010110", 
    215 => "101101001100001110010111001101100111100000", 
    216 => "101101100111001101001100110100011011111101", 
    217 => "101110000010010100000100000111011011110100", 
    218 => "101110011101100010111101000111000111001011", 
    219 => "101110111000111001110111110011111110001001", 
    220 => "101111010100011000110100001110100000110110", 
    221 => "101111101111111111110010010111001111011000", 
    222 => "110000001011101110110010001110101001110110", 
    223 => "110000100111100101110011110101010000010111", 
    224 => "110001000011100100110111001011100011000010", 
    225 => "110001011111101011111100010010000001111101", 
    226 => "110001111011111011000011001001001101010001", 
    227 => "110010011000010010001011110001100101000100", 
    228 => "110010110100110001010110001011101001011100", 
    229 => "110011010001011000100010010111111010100010", 
    230 => "110011101110000111110000010110111000011100", 
    231 => "110100001010111111000000001001000011010010", 
    232 => "110100100111111110010001101110111011001010", 
    233 => "110101000101000101100101001001000000001101", 
    234 => "110101100010010100111010010111110010100001", 
    235 => "110101111111101100010001011011110010001101", 
    236 => "110110011101001011101010010101011111011001", 
    237 => "110110111010110011000101000101011010001101", 
    238 => "110111011000100010100001101100000010101111", 
    239 => "110111110110011010000000001001111001000111", 
    240 => "111000010100011001100000011111011101011101", 
    241 => "111000110010100001000010101101001111111001", 
    242 => "111001010000110000100110110011110000100000", 
    243 => "111001101111001000001100110011011111011100", 
    244 => "111010001101100111110100101100111100110100", 
    245 => "111010101100001111011110100000101000101111", 
    246 => "111011001010111111001010001111000011010101", 
    247 => "111011101001110110110111111000101100101110", 
    248 => "111100001000110110100111011110000101000010", 
    249 => "111100100111111110011000111111101100010111", 
    250 => "111101000111001110001100011110000010110111", 
    251 => "111101100110100110000001111001101000101000", 
    252 => "111110000110000101111001010010111101110011", 
    253 => "111110100101101101110010101010100010100000", 
    254 => "111111000101011101101110000000110110110110", 
    255 => "111111100101010101101011010110011010111101" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity kerneldl_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe is
    generic (
        DataWidth : INTEGER := 42;
        AddressRange : INTEGER := 256;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of kerneldl_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe is
    component kerneldl_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    kerneldl_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe_rom_U :  component kerneldl_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


