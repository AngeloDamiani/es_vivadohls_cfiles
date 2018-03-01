############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project RTL_bellman_ford.prj
set_top bellman_ford
add_files RTL_bellman_ford.prj/solution1/bellman_ford.c
add_files RTL_bellman_ford.prj/solution1/bellman_ford.h
add_files -tb RTL_bellman_ford.prj/solution1/bellman_ford_test.c
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./RTL_bellman_ford.prj/solution1/directives.tcl"
csim_design -clean -compiler gcc
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
