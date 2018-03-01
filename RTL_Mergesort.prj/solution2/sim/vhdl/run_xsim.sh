
/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado/2017.2/bin/xelab xil_defaultlib.apatb_mergesort_top -prj mergesort.prj -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 --initfile "/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado/2017.2/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s mergesort 
/mnt/B4A0CD3FA0CD08B6/Embedded/Vivado/2017.2/bin/xsim --noieeewarnings mergesort -tclbatch mergesort.tcl

