#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_mergesort.prj/solution2/.autopilot/db/a.g.bc ${1+"$@"}
