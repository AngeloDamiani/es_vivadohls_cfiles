set moduleName merge
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {merge}
set C_modelType { void 0 }
set C_modelArgList {
	{ i1 int 64 regular  }
	{ f1 int 64 regular  }
	{ f2 int 64 regular  }
	{ arr_0 int 64 regular {pointer 1}  }
	{ arr_0_read int 64 regular  }
	{ arr_1 int 64 regular {pointer 1}  }
	{ arr_1_read int 64 regular  }
	{ arr_2 int 64 regular {pointer 1}  }
	{ arr_2_read int 64 regular  }
	{ arr_3 int 64 regular {pointer 1}  }
	{ arr_3_read int 64 regular  }
	{ arr_4 int 64 regular {pointer 1}  }
	{ arr_4_read int 64 regular  }
	{ arr_5 int 64 regular {pointer 1}  }
	{ arr_5_read int 64 regular  }
	{ arr_6 int 64 regular {pointer 1}  }
	{ arr_6_read int 64 regular  }
	{ arr_7 int 64 regular {pointer 1}  }
	{ arr_7_read int 64 regular  }
	{ arr_8 int 64 regular {pointer 1}  }
	{ arr_8_read int 64 regular  }
	{ arr_9 int 64 regular {pointer 1}  }
	{ arr_9_read int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "i1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "f1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "f2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "arr_0", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr_0_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "arr_1", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr_1_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "arr_2", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr_2_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "arr_3", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr_3_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "arr_4", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr_4_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "arr_5", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr_5_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "arr_6", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr_6_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "arr_7", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr_7_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "arr_8", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr_8_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "arr_9", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr_9_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ i1 sc_in sc_lv 64 signal 0 } 
	{ f1 sc_in sc_lv 64 signal 1 } 
	{ f2 sc_in sc_lv 64 signal 2 } 
	{ arr_0 sc_out sc_lv 64 signal 3 } 
	{ arr_0_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ arr_0_read sc_in sc_lv 64 signal 4 } 
	{ arr_1 sc_out sc_lv 64 signal 5 } 
	{ arr_1_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ arr_1_read sc_in sc_lv 64 signal 6 } 
	{ arr_2 sc_out sc_lv 64 signal 7 } 
	{ arr_2_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ arr_2_read sc_in sc_lv 64 signal 8 } 
	{ arr_3 sc_out sc_lv 64 signal 9 } 
	{ arr_3_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ arr_3_read sc_in sc_lv 64 signal 10 } 
	{ arr_4 sc_out sc_lv 64 signal 11 } 
	{ arr_4_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ arr_4_read sc_in sc_lv 64 signal 12 } 
	{ arr_5 sc_out sc_lv 64 signal 13 } 
	{ arr_5_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ arr_5_read sc_in sc_lv 64 signal 14 } 
	{ arr_6 sc_out sc_lv 64 signal 15 } 
	{ arr_6_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ arr_6_read sc_in sc_lv 64 signal 16 } 
	{ arr_7 sc_out sc_lv 64 signal 17 } 
	{ arr_7_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ arr_7_read sc_in sc_lv 64 signal 18 } 
	{ arr_8 sc_out sc_lv 64 signal 19 } 
	{ arr_8_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ arr_8_read sc_in sc_lv 64 signal 20 } 
	{ arr_9 sc_out sc_lv 64 signal 21 } 
	{ arr_9_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ arr_9_read sc_in sc_lv 64 signal 22 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "i1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "i1", "role": "default" }} , 
 	{ "name": "f1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "f1", "role": "default" }} , 
 	{ "name": "f2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "f2", "role": "default" }} , 
 	{ "name": "arr_0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_0", "role": "default" }} , 
 	{ "name": "arr_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_0", "role": "ap_vld" }} , 
 	{ "name": "arr_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_0_read", "role": "default" }} , 
 	{ "name": "arr_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_1", "role": "default" }} , 
 	{ "name": "arr_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_1", "role": "ap_vld" }} , 
 	{ "name": "arr_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_1_read", "role": "default" }} , 
 	{ "name": "arr_2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_2", "role": "default" }} , 
 	{ "name": "arr_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_2", "role": "ap_vld" }} , 
 	{ "name": "arr_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_2_read", "role": "default" }} , 
 	{ "name": "arr_3", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_3", "role": "default" }} , 
 	{ "name": "arr_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_3", "role": "ap_vld" }} , 
 	{ "name": "arr_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_3_read", "role": "default" }} , 
 	{ "name": "arr_4", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_4", "role": "default" }} , 
 	{ "name": "arr_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_4", "role": "ap_vld" }} , 
 	{ "name": "arr_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_4_read", "role": "default" }} , 
 	{ "name": "arr_5", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_5", "role": "default" }} , 
 	{ "name": "arr_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_5", "role": "ap_vld" }} , 
 	{ "name": "arr_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_5_read", "role": "default" }} , 
 	{ "name": "arr_6", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_6", "role": "default" }} , 
 	{ "name": "arr_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_6", "role": "ap_vld" }} , 
 	{ "name": "arr_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_6_read", "role": "default" }} , 
 	{ "name": "arr_7", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_7", "role": "default" }} , 
 	{ "name": "arr_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_7", "role": "ap_vld" }} , 
 	{ "name": "arr_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_7_read", "role": "default" }} , 
 	{ "name": "arr_8", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_8", "role": "default" }} , 
 	{ "name": "arr_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_8", "role": "ap_vld" }} , 
 	{ "name": "arr_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_8_read", "role": "default" }} , 
 	{ "name": "arr_9", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_9", "role": "default" }} , 
 	{ "name": "arr_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_9", "role": "ap_vld" }} , 
 	{ "name": "arr_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr_9_read", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "merge",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "i1", "Type" : "None", "Direction" : "I"},
			{"Name" : "f1", "Type" : "None", "Direction" : "I"},
			{"Name" : "f2", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arr_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "h", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mergesort_mux_104bkb_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mergesort_mux_104bkb_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mergesort_mux_104bkb_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mergesort_mux_104bkb_U4", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	merge {
		i1 {Type I LastRead 0 FirstWrite -1}
		f1 {Type I LastRead 0 FirstWrite -1}
		f2 {Type I LastRead 0 FirstWrite -1}
		arr_0 {Type O LastRead -1 FirstWrite 4}
		arr_0_read {Type I LastRead 0 FirstWrite -1}
		arr_1 {Type O LastRead -1 FirstWrite 4}
		arr_1_read {Type I LastRead 0 FirstWrite -1}
		arr_2 {Type O LastRead -1 FirstWrite 4}
		arr_2_read {Type I LastRead 0 FirstWrite -1}
		arr_3 {Type O LastRead -1 FirstWrite 4}
		arr_3_read {Type I LastRead 0 FirstWrite -1}
		arr_4 {Type O LastRead -1 FirstWrite 4}
		arr_4_read {Type I LastRead 0 FirstWrite -1}
		arr_5 {Type O LastRead -1 FirstWrite 4}
		arr_5_read {Type I LastRead 0 FirstWrite -1}
		arr_6 {Type O LastRead -1 FirstWrite 4}
		arr_6_read {Type I LastRead 0 FirstWrite -1}
		arr_7 {Type O LastRead -1 FirstWrite 4}
		arr_7_read {Type I LastRead 0 FirstWrite -1}
		arr_8 {Type O LastRead -1 FirstWrite 4}
		arr_8_read {Type I LastRead 0 FirstWrite -1}
		arr_9 {Type O LastRead -1 FirstWrite 4}
		arr_9_read {Type I LastRead 0 FirstWrite -1}
		h {Type O LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	i1 { ap_none {  { i1 in_data 0 64 } } }
	f1 { ap_none {  { f1 in_data 0 64 } } }
	f2 { ap_none {  { f2 in_data 0 64 } } }
	arr_0 { ap_vld {  { arr_0 out_data 1 64 }  { arr_0_ap_vld out_vld 1 1 } } }
	arr_0_read { ap_none {  { arr_0_read in_data 0 64 } } }
	arr_1 { ap_vld {  { arr_1 out_data 1 64 }  { arr_1_ap_vld out_vld 1 1 } } }
	arr_1_read { ap_none {  { arr_1_read in_data 0 64 } } }
	arr_2 { ap_vld {  { arr_2 out_data 1 64 }  { arr_2_ap_vld out_vld 1 1 } } }
	arr_2_read { ap_none {  { arr_2_read in_data 0 64 } } }
	arr_3 { ap_vld {  { arr_3 out_data 1 64 }  { arr_3_ap_vld out_vld 1 1 } } }
	arr_3_read { ap_none {  { arr_3_read in_data 0 64 } } }
	arr_4 { ap_vld {  { arr_4 out_data 1 64 }  { arr_4_ap_vld out_vld 1 1 } } }
	arr_4_read { ap_none {  { arr_4_read in_data 0 64 } } }
	arr_5 { ap_vld {  { arr_5 out_data 1 64 }  { arr_5_ap_vld out_vld 1 1 } } }
	arr_5_read { ap_none {  { arr_5_read in_data 0 64 } } }
	arr_6 { ap_vld {  { arr_6 out_data 1 64 }  { arr_6_ap_vld out_vld 1 1 } } }
	arr_6_read { ap_none {  { arr_6_read in_data 0 64 } } }
	arr_7 { ap_vld {  { arr_7 out_data 1 64 }  { arr_7_ap_vld out_vld 1 1 } } }
	arr_7_read { ap_none {  { arr_7_read in_data 0 64 } } }
	arr_8 { ap_vld {  { arr_8 out_data 1 64 }  { arr_8_ap_vld out_vld 1 1 } } }
	arr_8_read { ap_none {  { arr_8_read in_data 0 64 } } }
	arr_9 { ap_vld {  { arr_9 out_data 1 64 }  { arr_9_ap_vld out_vld 1 1 } } }
	arr_9_read { ap_none {  { arr_9_read in_data 0 64 } } }
}
