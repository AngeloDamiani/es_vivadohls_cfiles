#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/elva/Documents/ProgettoEmbedded/VivadoHLS/GCD/GCD/solution1/.autopilot/db/a.g.bc ${1+"$@"}
