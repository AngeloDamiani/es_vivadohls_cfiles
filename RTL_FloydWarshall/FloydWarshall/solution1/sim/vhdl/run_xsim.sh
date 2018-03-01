
/home/elva/Programs/Xilinx/Vivado/2017.2/bin/xelab xil_defaultlib.apatb_floyd_warshall_top -prj floyd_warshall.prj -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 --initfile "/home/elva/Programs/Xilinx/Vivado/2017.2/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s floyd_warshall 
/home/elva/Programs/Xilinx/Vivado/2017.2/bin/xsim --noieeewarnings floyd_warshall -tclbatch floyd_warshall.tcl

