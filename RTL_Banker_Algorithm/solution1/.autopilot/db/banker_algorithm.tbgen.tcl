set C_TypeInfoList {{ 
"banker_algorithm" : [[], {"return": [[],"0"] }, [{"ExternC" : 0}], [ {"available": [[], {"array": ["0", [3]]}] }, {"allocated": [[], {"array": [ {"array": ["0", [3]]}, [4]]}] }, {"max": [[], {"array": [ {"array": ["0", [3]]}, [4]]}] }, {"need": [[], {"array": [ {"array": ["0", [3]]}, [4]]}] }],[],""], 
"0": [ "TARGET_TYPE", {"typedef": [[[], {"scalar": "long int"}],""]}]
}}
set moduleName banker_algorithm
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {banker_algorithm}
set C_modelType { int 64 }
set C_modelArgList {
	{ available int 64 regular {array 3 { 2 3 } 1 1 }  }
	{ allocated int 64 regular {array 12 { 2 3 } 1 1 }  }
	{ max int 64 unused {array 12 { } 0 1 }  }
	{ need int 64 regular {array 12 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "available", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "available","cData": "long int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "allocated", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "allocated","cData": "long int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 3,"step" : 1},{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "max", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "max","cData": "long int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 3,"step" : 1},{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "need", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "need","cData": "long int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 3,"step" : 1},{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "return","cData": "TARGET_TYPE","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ available_address0 sc_out sc_lv 2 signal 0 } 
	{ available_ce0 sc_out sc_logic 1 signal 0 } 
	{ available_we0 sc_out sc_logic 1 signal 0 } 
	{ available_d0 sc_out sc_lv 64 signal 0 } 
	{ available_q0 sc_in sc_lv 64 signal 0 } 
	{ allocated_address0 sc_out sc_lv 4 signal 1 } 
	{ allocated_ce0 sc_out sc_logic 1 signal 1 } 
	{ allocated_we0 sc_out sc_logic 1 signal 1 } 
	{ allocated_d0 sc_out sc_lv 64 signal 1 } 
	{ allocated_q0 sc_in sc_lv 64 signal 1 } 
	{ max_address0 sc_out sc_lv 4 signal 2 } 
	{ max_ce0 sc_out sc_logic 1 signal 2 } 
	{ max_we0 sc_out sc_logic 1 signal 2 } 
	{ max_d0 sc_out sc_lv 64 signal 2 } 
	{ max_q0 sc_in sc_lv 64 signal 2 } 
	{ max_address1 sc_out sc_lv 4 signal 2 } 
	{ max_ce1 sc_out sc_logic 1 signal 2 } 
	{ max_we1 sc_out sc_logic 1 signal 2 } 
	{ max_d1 sc_out sc_lv 64 signal 2 } 
	{ max_q1 sc_in sc_lv 64 signal 2 } 
	{ need_address0 sc_out sc_lv 4 signal 3 } 
	{ need_ce0 sc_out sc_logic 1 signal 3 } 
	{ need_q0 sc_in sc_lv 64 signal 3 } 
	{ ap_return sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "available_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "available", "role": "address0" }} , 
 	{ "name": "available_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "available", "role": "ce0" }} , 
 	{ "name": "available_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "available", "role": "we0" }} , 
 	{ "name": "available_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "available", "role": "d0" }} , 
 	{ "name": "available_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "available", "role": "q0" }} , 
 	{ "name": "allocated_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "allocated", "role": "address0" }} , 
 	{ "name": "allocated_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "allocated", "role": "ce0" }} , 
 	{ "name": "allocated_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "allocated", "role": "we0" }} , 
 	{ "name": "allocated_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "allocated", "role": "d0" }} , 
 	{ "name": "allocated_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "allocated", "role": "q0" }} , 
 	{ "name": "max_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "max", "role": "address0" }} , 
 	{ "name": "max_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max", "role": "ce0" }} , 
 	{ "name": "max_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max", "role": "we0" }} , 
 	{ "name": "max_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "max", "role": "d0" }} , 
 	{ "name": "max_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "max", "role": "q0" }} , 
 	{ "name": "max_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "max", "role": "address1" }} , 
 	{ "name": "max_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max", "role": "ce1" }} , 
 	{ "name": "max_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max", "role": "we1" }} , 
 	{ "name": "max_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "max", "role": "d1" }} , 
 	{ "name": "max_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "max", "role": "q1" }} , 
 	{ "name": "need_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "need", "role": "address0" }} , 
 	{ "name": "need_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "need", "role": "ce0" }} , 
 	{ "name": "need_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "need", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "banker_algorithm",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "available", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "allocated", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "max", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "need", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	banker_algorithm {
		available {Type IO LastRead 2 FirstWrite 4}
		allocated {Type IO LastRead 3 FirstWrite 4}
		max {Type X LastRead -1 FirstWrite -1}
		need {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "69"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "70"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	available { ap_memory {  { available_address0 mem_address 1 2 }  { available_ce0 mem_ce 1 1 }  { available_we0 mem_we 1 1 }  { available_d0 mem_din 1 64 }  { available_q0 mem_dout 0 64 } } }
	allocated { ap_memory {  { allocated_address0 mem_address 1 4 }  { allocated_ce0 mem_ce 1 1 }  { allocated_we0 mem_we 1 1 }  { allocated_d0 mem_din 1 64 }  { allocated_q0 mem_dout 0 64 } } }
	max { ap_memory {  { max_address0 mem_address 1 4 }  { max_ce0 mem_ce 1 1 }  { max_we0 mem_we 1 1 }  { max_d0 mem_din 1 64 }  { max_q0 mem_dout 0 64 }  { max_address1 mem_address 1 4 }  { max_ce1 mem_ce 1 1 }  { max_we1 mem_we 1 1 }  { max_d1 mem_din 1 64 }  { max_q1 mem_dout 0 64 } } }
	need { ap_memory {  { need_address0 mem_address 1 4 }  { need_ce0 mem_ce 1 1 }  { need_q0 mem_dout 0 64 } } }
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
