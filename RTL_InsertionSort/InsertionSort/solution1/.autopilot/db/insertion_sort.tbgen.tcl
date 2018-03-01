set C_TypeInfoList {{ 
"insertion_sort" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"arr": [[], {"array": ["0", [10]]}] }],[],""], 
"0": [ "TARGET_TYPE", {"typedef": [[[], {"scalar": "float"}],""]}]
}}
set moduleName insertion_sort
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {insertion_sort}
set C_modelType { void 0 }
set C_modelArgList {
	{ arr_0 float 32 regular {pointer 2}  }
	{ arr_1 float 32 regular {pointer 2}  }
	{ arr_2 float 32 regular {pointer 2}  }
	{ arr_3 float 32 regular {pointer 2}  }
	{ arr_4 float 32 regular {pointer 2}  }
	{ arr_5 float 32 regular {pointer 2}  }
	{ arr_6 float 32 regular {pointer 2}  }
	{ arr_7 float 32 regular {pointer 2}  }
	{ arr_8 float 32 regular {pointer 2}  }
	{ arr_9 float 32 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arr_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arr","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "arr_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arr","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "arr_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arr","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "arr_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arr","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "arr_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arr","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}]} , 
 	{ "Name" : "arr_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arr","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}]} , 
 	{ "Name" : "arr_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arr","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}]} , 
 	{ "Name" : "arr_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arr","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}]} , 
 	{ "Name" : "arr_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arr","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]}]} , 
 	{ "Name" : "arr_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arr","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]}]} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ arr_0_i sc_in sc_lv 32 signal 0 } 
	{ arr_0_o sc_out sc_lv 32 signal 0 } 
	{ arr_0_o_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ arr_1_i sc_in sc_lv 32 signal 1 } 
	{ arr_1_o sc_out sc_lv 32 signal 1 } 
	{ arr_1_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ arr_2_i sc_in sc_lv 32 signal 2 } 
	{ arr_2_o sc_out sc_lv 32 signal 2 } 
	{ arr_2_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ arr_3_i sc_in sc_lv 32 signal 3 } 
	{ arr_3_o sc_out sc_lv 32 signal 3 } 
	{ arr_3_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ arr_4_i sc_in sc_lv 32 signal 4 } 
	{ arr_4_o sc_out sc_lv 32 signal 4 } 
	{ arr_4_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ arr_5_i sc_in sc_lv 32 signal 5 } 
	{ arr_5_o sc_out sc_lv 32 signal 5 } 
	{ arr_5_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ arr_6_i sc_in sc_lv 32 signal 6 } 
	{ arr_6_o sc_out sc_lv 32 signal 6 } 
	{ arr_6_o_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ arr_7_i sc_in sc_lv 32 signal 7 } 
	{ arr_7_o sc_out sc_lv 32 signal 7 } 
	{ arr_7_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ arr_8_i sc_in sc_lv 32 signal 8 } 
	{ arr_8_o sc_out sc_lv 32 signal 8 } 
	{ arr_8_o_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ arr_9_i sc_in sc_lv 32 signal 9 } 
	{ arr_9_o sc_out sc_lv 32 signal 9 } 
	{ arr_9_o_ap_vld sc_out sc_logic 1 outvld 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "arr_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_0", "role": "i" }} , 
 	{ "name": "arr_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_0", "role": "o" }} , 
 	{ "name": "arr_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_0", "role": "o_ap_vld" }} , 
 	{ "name": "arr_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_1", "role": "i" }} , 
 	{ "name": "arr_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_1", "role": "o" }} , 
 	{ "name": "arr_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_1", "role": "o_ap_vld" }} , 
 	{ "name": "arr_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_2", "role": "i" }} , 
 	{ "name": "arr_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_2", "role": "o" }} , 
 	{ "name": "arr_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_2", "role": "o_ap_vld" }} , 
 	{ "name": "arr_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_3", "role": "i" }} , 
 	{ "name": "arr_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_3", "role": "o" }} , 
 	{ "name": "arr_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_3", "role": "o_ap_vld" }} , 
 	{ "name": "arr_4_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_4", "role": "i" }} , 
 	{ "name": "arr_4_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_4", "role": "o" }} , 
 	{ "name": "arr_4_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_4", "role": "o_ap_vld" }} , 
 	{ "name": "arr_5_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_5", "role": "i" }} , 
 	{ "name": "arr_5_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_5", "role": "o" }} , 
 	{ "name": "arr_5_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_5", "role": "o_ap_vld" }} , 
 	{ "name": "arr_6_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_6", "role": "i" }} , 
 	{ "name": "arr_6_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_6", "role": "o" }} , 
 	{ "name": "arr_6_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_6", "role": "o_ap_vld" }} , 
 	{ "name": "arr_7_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_7", "role": "i" }} , 
 	{ "name": "arr_7_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_7", "role": "o" }} , 
 	{ "name": "arr_7_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_7", "role": "o_ap_vld" }} , 
 	{ "name": "arr_8_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_8", "role": "i" }} , 
 	{ "name": "arr_8_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_8", "role": "o" }} , 
 	{ "name": "arr_8_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_8", "role": "o_ap_vld" }} , 
 	{ "name": "arr_9_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_9", "role": "i" }} , 
 	{ "name": "arr_9_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_9", "role": "o" }} , 
 	{ "name": "arr_9_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arr_9", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "insertion_sort",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "arr_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arr_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arr_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arr_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arr_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arr_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arr_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arr_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arr_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arr_9", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.insertion_sort_fcbkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.insertion_sort_mucud_U2", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	insertion_sort {
		arr_0 {Type IO LastRead 3 FirstWrite 5}
		arr_1 {Type IO LastRead 1 FirstWrite 5}
		arr_2 {Type IO LastRead 1 FirstWrite 5}
		arr_3 {Type IO LastRead 1 FirstWrite 5}
		arr_4 {Type IO LastRead 1 FirstWrite 5}
		arr_5 {Type IO LastRead 2 FirstWrite 5}
		arr_6 {Type IO LastRead 2 FirstWrite 5}
		arr_7 {Type IO LastRead 2 FirstWrite 5}
		arr_8 {Type IO LastRead 2 FirstWrite 5}
		arr_9 {Type IO LastRead 1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "28", "Max" : "325"}
	, {"Name" : "Interval", "Min" : "29", "Max" : "326"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	arr_0 { ap_ovld {  { arr_0_i in_data 0 32 }  { arr_0_o out_data 1 32 }  { arr_0_o_ap_vld out_vld 1 1 } } }
	arr_1 { ap_ovld {  { arr_1_i in_data 0 32 }  { arr_1_o out_data 1 32 }  { arr_1_o_ap_vld out_vld 1 1 } } }
	arr_2 { ap_ovld {  { arr_2_i in_data 0 32 }  { arr_2_o out_data 1 32 }  { arr_2_o_ap_vld out_vld 1 1 } } }
	arr_3 { ap_ovld {  { arr_3_i in_data 0 32 }  { arr_3_o out_data 1 32 }  { arr_3_o_ap_vld out_vld 1 1 } } }
	arr_4 { ap_ovld {  { arr_4_i in_data 0 32 }  { arr_4_o out_data 1 32 }  { arr_4_o_ap_vld out_vld 1 1 } } }
	arr_5 { ap_ovld {  { arr_5_i in_data 0 32 }  { arr_5_o out_data 1 32 }  { arr_5_o_ap_vld out_vld 1 1 } } }
	arr_6 { ap_ovld {  { arr_6_i in_data 0 32 }  { arr_6_o out_data 1 32 }  { arr_6_o_ap_vld out_vld 1 1 } } }
	arr_7 { ap_ovld {  { arr_7_i in_data 0 32 }  { arr_7_o out_data 1 32 }  { arr_7_o_ap_vld out_vld 1 1 } } }
	arr_8 { ap_ovld {  { arr_8_i in_data 0 32 }  { arr_8_o out_data 1 32 }  { arr_8_o_ap_vld out_vld 1 1 } } }
	arr_9 { ap_ovld {  { arr_9_i in_data 0 32 }  { arr_9_o out_data 1 32 }  { arr_9_o_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
