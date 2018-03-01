set C_TypeInfoList {{ 
"bellman_ford" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"graph": [[], {"array": [ {"array": [ {"scalar": "float"}, [10]]}, [10]]}] }, {"hwdist": [[], {"array": ["0", [10]]}] }],[],""], 
"0": [ "TARGET_TYPE", {"typedef": [[[], {"scalar": "long int"}],""]}]
}}
set moduleName bellman_ford
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {bellman_ford}
set C_modelType { void 0 }
set C_modelArgList {
	{ graph float 32 regular {array 100 { 1 3 } 1 1 }  }
	{ hwdist int 64 regular {array 10 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "graph", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "graph","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "hwdist", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "hwdist","cData": "long int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ graph_address0 sc_out sc_lv 7 signal 0 } 
	{ graph_ce0 sc_out sc_logic 1 signal 0 } 
	{ graph_q0 sc_in sc_lv 32 signal 0 } 
	{ hwdist_address0 sc_out sc_lv 4 signal 1 } 
	{ hwdist_ce0 sc_out sc_logic 1 signal 1 } 
	{ hwdist_we0 sc_out sc_logic 1 signal 1 } 
	{ hwdist_d0 sc_out sc_lv 64 signal 1 } 
	{ hwdist_q0 sc_in sc_lv 64 signal 1 } 
	{ hwdist_address1 sc_out sc_lv 4 signal 1 } 
	{ hwdist_ce1 sc_out sc_logic 1 signal 1 } 
	{ hwdist_we1 sc_out sc_logic 1 signal 1 } 
	{ hwdist_d1 sc_out sc_lv 64 signal 1 } 
	{ hwdist_q1 sc_in sc_lv 64 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "graph_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "graph", "role": "address0" }} , 
 	{ "name": "graph_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "graph", "role": "ce0" }} , 
 	{ "name": "graph_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "graph", "role": "q0" }} , 
 	{ "name": "hwdist_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hwdist", "role": "address0" }} , 
 	{ "name": "hwdist_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hwdist", "role": "ce0" }} , 
 	{ "name": "hwdist_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hwdist", "role": "we0" }} , 
 	{ "name": "hwdist_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hwdist", "role": "d0" }} , 
 	{ "name": "hwdist_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hwdist", "role": "q0" }} , 
 	{ "name": "hwdist_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hwdist", "role": "address1" }} , 
 	{ "name": "hwdist_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hwdist", "role": "ce1" }} , 
 	{ "name": "hwdist_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hwdist", "role": "we1" }} , 
 	{ "name": "hwdist_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hwdist", "role": "d1" }} , 
 	{ "name": "hwdist_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hwdist", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "bellman_ford",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "graph", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hwdist", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bellman_ford_faddbkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bellman_ford_sitocud_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bellman_ford_fcmpdEe_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bellman_ford {
		graph {Type I LastRead 12 FirstWrite -1}
		hwdist {Type IO LastRead 12 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "446", "Max" : "8446"}
	, {"Name" : "Interval", "Min" : "447", "Max" : "8447"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	graph { ap_memory {  { graph_address0 mem_address 1 7 }  { graph_ce0 mem_ce 1 1 }  { graph_q0 mem_dout 0 32 } } }
	hwdist { ap_memory {  { hwdist_address0 mem_address 1 4 }  { hwdist_ce0 mem_ce 1 1 }  { hwdist_we0 mem_we 1 1 }  { hwdist_d0 mem_din 1 64 }  { hwdist_q0 mem_dout 0 64 }  { hwdist_address1 mem_address 1 4 }  { hwdist_ce1 mem_ce 1 1 }  { hwdist_we1 mem_we 1 1 }  { hwdist_d1 mem_din 1 64 }  { hwdist_q1 mem_dout 0 64 } } }
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
