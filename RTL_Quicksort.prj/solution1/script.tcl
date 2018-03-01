############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project RTL_Quicksort.prj
set_top quicksort
add_files RTL_Quicksort.prj/quicksort.c
add_files quicksort.h
add_files -tb RTL_Quicksort.prj/quicksort_test.c
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
source "./RTL_Quicksort.prj/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
