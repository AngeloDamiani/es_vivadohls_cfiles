
/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado/2017.2/bin/xelab xil_defaultlib.apatb_bellman_ford_top -prj bellman_ford.prj -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 --initfile "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado/2017.2/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s bellman_ford 
/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado/2017.2/bin/xsim --noieeewarnings bellman_ford -tclbatch bellman_ford.tcl

