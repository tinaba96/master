############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project final
set_top kerneldl
add_files src/kernel/optimizer.h
add_files src/kernel/kernel.cpp
add_files src/kernel/cnn.h
open_solution "solution_final"
set_part {xcvu9p-flgb2104-2-i}
create_clock -period 3.33 -name default
config_sdx -optimization_level none -target xocc
config_export -vivado_optimization_level 0 -vivado_phys_opt none
config_compile -name_max_length 80 -pipeline_loops 64
config_schedule -enable_dsp_full_reg
config_rtl -module_auto_prefix -register_reset_num 3
config_interface -m_axi_addr64
set_clock_uncertainty 27%
#source "./final/solution_final/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
