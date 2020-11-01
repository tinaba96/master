#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/inaba/alveo/DanQ_fhalf/_x.hw_emu.xilinx_u200_xdma_201830_2/kerneldl.hw_emu.xilinx_u200_xdma_201830_2/kerneldl/kerneldl/solution/.autopilot/db/a.g.bc ${1+"$@"}
