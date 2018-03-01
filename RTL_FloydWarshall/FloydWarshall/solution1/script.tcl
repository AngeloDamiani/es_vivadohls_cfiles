############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FloydWarshall
set_top floyd_warshall
add_files floyd_warshall.c
add_files floyd_warshall.h
add_files -tb floyd_warshall_test.c
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
source "./FloydWarshall/solution1/directives.tcl"
csim_design -clean -compiler gcc
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
