############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_loop_tripcount -min 1 -max 9 "merge/MERGE_WHILE"
set_directive_loop_tripcount -max 5 "merge/merge_label0"
set_directive_loop_tripcount -max 5 "merge/merge_label1"
set_directive_loop_tripcount -max 5 "merge/merge_label2"
set_directive_loop_tripcount -min 0 -max 9 "merge/MERGE_FOR1"
set_directive_loop_tripcount -min 0 -max 5 "merge/MERGE_FOR2"
set_directive_loop_tripcount -min 2 -max 10 -avg 5 "merge/MERGE_FOR3"
set_directive_loop_tripcount -min 1 -max 5 "mergesort/FOR2"
set_directive_pipeline "mergesort/FOR2"
set_directive_array_partition -type complete -dim 1 "mergesort" arr
