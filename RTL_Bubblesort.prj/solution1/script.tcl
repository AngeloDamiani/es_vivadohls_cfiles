############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project RTL_Bubblesort.prj
set_top bubble_sort
add_files RTL_Bubblesort.prj/solution1/bubblesort.h
add_files RTL_Bubblesort.prj/solution1/bubblesort.c
add_files -tb RTL_Bubblesort.prj/solution1/bubblesort_test.c
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
source "./RTL_Bubblesort.prj/solution1/directives.tcl"
csim_design -clean -compiler gcc
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
