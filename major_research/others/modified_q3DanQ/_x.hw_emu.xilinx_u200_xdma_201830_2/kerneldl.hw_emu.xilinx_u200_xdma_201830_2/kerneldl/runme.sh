#!/bin/sh

# 
# xocc(TM)
# runme.sh: a xocc-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/tools/Xilinx/Vivado/2019.1/bin:/tools/Xilinx/SDK/2019.1/bin:/tools/Xilinx/SDx/2019.1/bin
else
  PATH=/tools/Xilinx/Vivado/2019.1/bin:/tools/Xilinx/SDK/2019.1/bin:/tools/Xilinx/SDx/2019.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/inaba/alveo/DanQ_fhalf/_x.hw_emu.xilinx_u200_xdma_201830_2/kerneldl.hw_emu.xilinx_u200_xdma_201830_2/kerneldl'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado_hls -f kerneldl.tcl -messageDb vivado_hls.pb
