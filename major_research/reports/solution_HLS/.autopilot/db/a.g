#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ino-s1910023/final/single/final/solution_final/.autopilot/db/a.g.bc ${1+"$@"}
