
/home/elva/Programs/Xilinx/Vivado/2017.2/bin/xelab xil_defaultlib.apatb_insertion_sort_top -prj insertion_sort.prj -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 --initfile "/home/elva/Programs/Xilinx/Vivado/2017.2/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s insertion_sort 
/home/elva/Programs/Xilinx/Vivado/2017.2/bin/xsim --noieeewarnings insertion_sort -tclbatch insertion_sort.tcl

