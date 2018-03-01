############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project RTL_mergesort.prj
set_top mergesort
add_files RTL_mergesort.prj/solution1/mergesort.c
add_files RTL_mergesort.prj/solution1/mergesort.h
add_files -tb RTL_mergesort.prj/solution1/mergesort_test.c
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
source "./RTL_mergesort.prj/solution1/directives.tcl"
csim_design -clean -compiler gcc
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
