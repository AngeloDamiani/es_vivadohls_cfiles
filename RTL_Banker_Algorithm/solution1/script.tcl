############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project RTL_Banker_Algorithm
set_top banker_algorithm
add_files RTL_Banker_Algorithm/solution1/banker_algorithm.c
add_files RTL_Banker_Algorithm/solution1/banker_algorithm.h
add_files -tb RTL_Banker_Algorithm/solution1/banker_algorithm_test.c
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
source "./RTL_Banker_Algorithm/solution1/directives.tcl"
csim_design -clean -compiler gcc
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
