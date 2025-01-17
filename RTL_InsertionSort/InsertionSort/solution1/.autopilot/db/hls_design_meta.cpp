#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("arr_0_i", 32, hls_in, 0, "ap_ovld", "in_data", 1),
	Port_Property("arr_0_o", 32, hls_out, 0, "ap_ovld", "out_data", 1),
	Port_Property("arr_0_o_ap_vld", 1, hls_out, 0, "ap_ovld", "out_vld", 1),
	Port_Property("arr_1_i", 32, hls_in, 1, "ap_ovld", "in_data", 1),
	Port_Property("arr_1_o", 32, hls_out, 1, "ap_ovld", "out_data", 1),
	Port_Property("arr_1_o_ap_vld", 1, hls_out, 1, "ap_ovld", "out_vld", 1),
	Port_Property("arr_2_i", 32, hls_in, 2, "ap_ovld", "in_data", 1),
	Port_Property("arr_2_o", 32, hls_out, 2, "ap_ovld", "out_data", 1),
	Port_Property("arr_2_o_ap_vld", 1, hls_out, 2, "ap_ovld", "out_vld", 1),
	Port_Property("arr_3_i", 32, hls_in, 3, "ap_ovld", "in_data", 1),
	Port_Property("arr_3_o", 32, hls_out, 3, "ap_ovld", "out_data", 1),
	Port_Property("arr_3_o_ap_vld", 1, hls_out, 3, "ap_ovld", "out_vld", 1),
	Port_Property("arr_4_i", 32, hls_in, 4, "ap_ovld", "in_data", 1),
	Port_Property("arr_4_o", 32, hls_out, 4, "ap_ovld", "out_data", 1),
	Port_Property("arr_4_o_ap_vld", 1, hls_out, 4, "ap_ovld", "out_vld", 1),
	Port_Property("arr_5_i", 32, hls_in, 5, "ap_ovld", "in_data", 1),
	Port_Property("arr_5_o", 32, hls_out, 5, "ap_ovld", "out_data", 1),
	Port_Property("arr_5_o_ap_vld", 1, hls_out, 5, "ap_ovld", "out_vld", 1),
	Port_Property("arr_6_i", 32, hls_in, 6, "ap_ovld", "in_data", 1),
	Port_Property("arr_6_o", 32, hls_out, 6, "ap_ovld", "out_data", 1),
	Port_Property("arr_6_o_ap_vld", 1, hls_out, 6, "ap_ovld", "out_vld", 1),
	Port_Property("arr_7_i", 32, hls_in, 7, "ap_ovld", "in_data", 1),
	Port_Property("arr_7_o", 32, hls_out, 7, "ap_ovld", "out_data", 1),
	Port_Property("arr_7_o_ap_vld", 1, hls_out, 7, "ap_ovld", "out_vld", 1),
	Port_Property("arr_8_i", 32, hls_in, 8, "ap_ovld", "in_data", 1),
	Port_Property("arr_8_o", 32, hls_out, 8, "ap_ovld", "out_data", 1),
	Port_Property("arr_8_o_ap_vld", 1, hls_out, 8, "ap_ovld", "out_vld", 1),
	Port_Property("arr_9_i", 32, hls_in, 9, "ap_ovld", "in_data", 1),
	Port_Property("arr_9_o", 32, hls_out, 9, "ap_ovld", "out_data", 1),
	Port_Property("arr_9_o_ap_vld", 1, hls_out, 9, "ap_ovld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "insertion_sort";
