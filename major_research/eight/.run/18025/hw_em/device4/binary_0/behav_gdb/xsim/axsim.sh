#!/bin/bash

export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/home/centos/src/project_data/aws-fpga/patches/AR73068_Vivado_2019_1_preliminary_rev1/vivado/data/../lib/lnx64.o:/home/centos/src/project_data/aws-fpga/patches/AR73068_Vivado_2019_1_preliminary_rev1/vivado/data/../lib/lnx64.o/Default:/opt/Xilinx/Vivado/2019.1.op2552052/data/../lib/lnx64.o:/opt/Xilinx/Vivado/2019.1.op2552052/data/../lib/lnx64.o/Default

xsim.dir/emu_wrapper_behav/axsim $@

if [ $? -ne 0 ] ; then
  echo "FATAL ERROR: Simulation exited unexpectantly"
fi
