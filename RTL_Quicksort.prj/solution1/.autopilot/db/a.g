#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/angelo/Desktop/SistemiEmbedded/VivadoHLSProject/ProjectFolder/RTL_Quicksort.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
