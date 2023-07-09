#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1_AR73068_op (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sun Dec 13 04:06:32 UTC 2020
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail

xv_cxl_lib_path="/opt/Xilinx/Vivado/2019.1.op2552052/data/xsim"
xv_cpt_lib_path=""
xv_ext_lib_path=""
xv_lib_path="/opt/Xilinx/Vivado/2019.1.op2552052/lib/lnx64.o/Default:/opt/Xilinx/Vivado/2019.1.op2552052/lib/lnx64.o"

export LD_LIBRARY_PATH=$PWD:$xv_lib_path:$LD_LIBRARY_PATH


xv_ref_path=${VIVADO_LOC:-"/opt/Xilinx/Vivado/2019.1.op2552052"}
xv_lib_path="$xv_ref_path/lib/lnx64.o/Default:$xv_ref_path/lib/lnx64.o"

export LD_LIBRARY_PATH=$PWD:$xv_lib_path::$LD_LIBRARY_PATH

echo "./xsim.dir/emu_wrapper_behav/axsim"
./xsim.dir/emu_wrapper_behav/axsim

