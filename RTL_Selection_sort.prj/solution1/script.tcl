############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project RTL_selection_sort.prj
set_top selection_sort
add_files RTL_selection_sort.prj/solution1/selection_sort.h
add_files RTL_selection_sort.prj/solution1/selection_sort.c
add_files -tb RTL_selection_sort.prj/solution1/.tcls/selection_sort_test.c
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./RTL_selection_sort.prj/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
