#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1_AR73068_op (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Sun Dec 13 04:06:32 UTC 2020
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
xv_lib_path="/opt/Xilinx/Vivado/2019.1.op2552052/lib/lnx64.o/Default:/opt/Xilinx/Vivado/2019.1.op2552052/lib/lnx64.o"
set -Eeuo pipefail

xv_cxl_lib_path="/opt/Xilinx/Vivado/2019.1.op2552052/data/xsim"
xv_cpt_lib_path=""
xv_ext_lib_path=""
xv_boost_lib_path="/opt/Xilinx/Vivado/2019.1.op2552052/tps/boost_1_64_0"

echo "xsc --shared --gcc_link_options "-L/opt/Xilinx/Vivado/2019.1.op2552052/data/simmodels/xsim/2019.1/lnx64/6.2.0/ext/protobuf/ -lprotobuf"  -lib xil_defaultlib -o libdpi.so"
xsc --shared --gcc_link_options "-L/opt/Xilinx/Vivado/2019.1.op2552052/data/simmodels/xsim/2019.1/lnx64/6.2.0/ext/protobuf/ -lprotobuf"  -lib xil_defaultlib -o libdpi.so

echo "xelab -wto 0fad93a9176f4c88aaf01fe0e016a83e --incr --debug off --relax --mt 8 -sv_root "." -sv_lib libsdaccel_generic_pcie_v2_0.so -sv_root "." -sv_lib libperformance_monitor_v2_0.so -sv_root "." -sv_lib libsystemc_synchronizer.so -sv_root "." -sv_lib libxsc_main_main.so --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sdaccel_generic_pcie_0_0/sim_tlm" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_axi_perf_mon_0_0/sysc" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_axi_perf_mon_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_axi_perf_mon_1_0/sysc" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_axi_perf_mon_1_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_axi_perf_mon_2_0/sysc" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_axi_perf_mon_2_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_axi_perf_mon_3_0/sysc" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_axi_perf_mon_3_0/sim" --include "$xv_boost_lib_path" -L sim_clk_gen_v1_0_2 -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_19 -L fifo_generator_v13_2_4 -L axi_data_fifo_v2_1_18 -L axi_crossbar_v2_1_20 -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_15 -L floating_point_v7_1_8 -L axi_protocol_converter_v2_1_19 -L axi_clock_converter_v2_1_18 -L blk_mem_gen_v8_4_3 -L axi_dwidth_converter_v2_1_19 -L unisims_ver -L unimacro_ver -L secureip -L xpm -sv_root "." -sc_lib libdpi.so --snapshot emu_wrapper_behav xil_defaultlib.emu_wrapper xil_defaultlib.glbl -log elaborate.log -standalone --include /opt/Xilinx/Vivado/2019.1.op2552052/data/simmodels/xsim/2019.1/lnx64/6.2.0/ext/protobuf/include -ignore_assertions "
xelab -wto 0fad93a9176f4c88aaf01fe0e016a83e --incr --debug off --relax --mt 8 -sv_root "." -sv_lib libsdaccel_generic_pcie_v2_0.so -sv_root "." -sv_lib libperformance_monitor_v2_0.so -sv_root "." -sv_lib libsystemc_synchronizer.so -sv_root "." -sv_lib libxsc_main_main.so --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sdaccel_generic_pcie_0_0/sim_tlm" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_axi_perf_mon_0_0/sysc" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_axi_perf_mon_0_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_axi_perf_mon_1_0/sysc" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_axi_perf_mon_1_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_axi_perf_mon_2_0/sysc" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_axi_perf_mon_2_0/sim" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_axi_perf_mon_3_0/sysc" --include "../../../../prj.ip_user_files/bd/emu/ip/emu_sim_axi_perf_mon_3_0/sim" --include "$xv_boost_lib_path" -L sim_clk_gen_v1_0_2 -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_19 -L fifo_generator_v13_2_4 -L axi_data_fifo_v2_1_18 -L axi_crossbar_v2_1_20 -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_15 -L floating_point_v7_1_8 -L axi_protocol_converter_v2_1_19 -L axi_clock_converter_v2_1_18 -L blk_mem_gen_v8_4_3 -L axi_dwidth_converter_v2_1_19 -L unisims_ver -L unimacro_ver -L secureip -L xpm -sv_root "." -sc_lib libdpi.so --snapshot emu_wrapper_behav xil_defaultlib.emu_wrapper xil_defaultlib.glbl -log elaborate.log -standalone --include /opt/Xilinx/Vivado/2019.1.op2552052/data/simmodels/xsim/2019.1/lnx64/6.2.0/ext/protobuf/include -ignore_assertions 

