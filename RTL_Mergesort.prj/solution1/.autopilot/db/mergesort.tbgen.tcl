set C_TypeInfoList {{ 
"mergesort" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"arr": [[], {"array": [ {"scalar": "long int"}, [10]]}] }],["0"],""],
 "0": [ "h", [[],"1"],""], 
"1": [ "int8_t", {"typedef": [[[], {"scalar": "signed char"}],""]}]
}}
set moduleName mergesort
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {mergesort}
set C_modelType { void 0 }
set C_modelArgList {
	{ arr int 64 regular {array 10 { 1 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arr", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "arr","cData": "long int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ arr_address0 sc_out sc_lv 4 signal 0 } 
	{ arr_ce0 sc_out sc_logic 1 signal 0 } 
	{ arr_q0 sc_in sc_lv 64 signal 0 } 
	{ arr_address1 sc_out sc_lv 4 signal 0 } 
	{ arr_ce1 sc_out sc_logic 1 signal 0 } 
	{ arr_we1 sc_out sc_logic 1 signal 0 } 
	{ arr_d1 sc_out sc_lv 64 signal 0 } 
	{ arr_q1 sc_in sc_lv 64 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "arr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arr", "role": "address0" }} , 
 	{ "name": "arr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr", "role": "ce0" }} , 
 	{ "name": "arr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr", "role": "q0" }} , 
 	{ "name": "arr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arr", "role": "address1" }} , 
 	{ "name": "arr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr", "role": "ce1" }} , 
 	{ "name": "arr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr", "role": "we1" }} , 
 	{ "name": "arr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr", "role": "d1" }} , 
 	{ "name": "arr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arr", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mergesort",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_merge_fu_73"}],
		"Port" : [
			{"Name" : "arr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_fu_73", "Port" : "arr"}]},
			{"Name" : "h", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_fu_73", "Port" : "h"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_merge_fu_73", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "arr", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "h", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_merge_fu_73.x_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	mergesort {
		arr {Type IO LastRead 3 FirstWrite 4}
		h {Type O LastRead -1 FirstWrite -1}}
	merge {
		i1 {Type I LastRead 0 FirstWrite -1}
		f1 {Type I LastRead 0 FirstWrite -1}
		f2 {Type I LastRead 0 FirstWrite -1}
		arr {Type IO LastRead 3 FirstWrite 4}
		h {Type O LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "61", "Max" : "1269"}
	, {"Name" : "Interval", "Min" : "62", "Max" : "1270"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	arr { ap_memory {  { arr_address0 mem_address 1 4 }  { arr_ce0 mem_ce 1 1 }  { arr_q0 mem_dout 0 64 }  { arr_address1 mem_address 1 4 }  { arr_ce1 mem_ce 1 1 }  { arr_we1 mem_we 1 1 }  { arr_d1 mem_din 1 64 }  { arr_q1 mem_dout 0 64 } } }
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
