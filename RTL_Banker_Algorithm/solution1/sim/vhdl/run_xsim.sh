
/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado/2017.2/bin/xelab xil_defaultlib.apatb_banker_algorithm_top -prj banker_algorithm.prj -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 --initfile "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado/2017.2/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s banker_algorithm 
/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado/2017.2/bin/xsim --noieeewarnings banker_algorithm -tclbatch banker_algorithm.tcl

