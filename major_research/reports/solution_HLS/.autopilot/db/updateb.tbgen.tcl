set moduleName updateb
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {updateb}
set C_modelType { void 0 }
set C_modelArgList {
	{ params_V int 16 regular {array 320 { 1 0 } 1 1 }  }
	{ grads_V int 16 regular {array 320 { 1 3 } 1 1 }  }
	{ h_V int 16 regular {array 320 { 1 0 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "params_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "grads_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ params_V_address0 sc_out sc_lv 9 signal 0 } 
	{ params_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ params_V_q0 sc_in sc_lv 16 signal 0 } 
	{ params_V_address1 sc_out sc_lv 9 signal 0 } 
	{ params_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ params_V_we1 sc_out sc_logic 1 signal 0 } 
	{ params_V_d1 sc_out sc_lv 16 signal 0 } 
	{ grads_V_address0 sc_out sc_lv 9 signal 1 } 
	{ grads_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ grads_V_q0 sc_in sc_lv 16 signal 1 } 
	{ h_V_address0 sc_out sc_lv 9 signal 2 } 
	{ h_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ h_V_q0 sc_in sc_lv 16 signal 2 } 
	{ h_V_address1 sc_out sc_lv 9 signal 2 } 
	{ h_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ h_V_we1 sc_out sc_logic 1 signal 2 } 
	{ h_V_d1 sc_out sc_lv 16 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "params_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "params_V", "role": "address0" }} , 
 	{ "name": "params_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "params_V", "role": "ce0" }} , 
 	{ "name": "params_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "params_V", "role": "q0" }} , 
 	{ "name": "params_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "params_V", "role": "address1" }} , 
 	{ "name": "params_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "params_V", "role": "ce1" }} , 
 	{ "name": "params_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "params_V", "role": "we1" }} , 
 	{ "name": "params_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "params_V", "role": "d1" }} , 
 	{ "name": "grads_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "grads_V", "role": "address0" }} , 
 	{ "name": "grads_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grads_V", "role": "ce0" }} , 
 	{ "name": "grads_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grads_V", "role": "q0" }} , 
 	{ "name": "h_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "h_V", "role": "address0" }} , 
 	{ "name": "h_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_V", "role": "ce0" }} , 
 	{ "name": "h_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_V", "role": "q0" }} , 
 	{ "name": "h_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "h_V", "role": "address1" }} , 
 	{ "name": "h_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_V", "role": "ce1" }} , 
 	{ "name": "h_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_V", "role": "we1" }} , 
 	{ "name": "h_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "updateb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "408", "EstimateLatencyMax" : "408",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "params_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "grads_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fpext_32ns_64_2_1_U174", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_dsqrt_64ns_64ns_64_30_1_U175", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_sdiv_36s_16s_36_40_1_U176", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_7ns_16s_23_4_1_U177", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_13ns_16s_29_4_1_U178", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_23s_16s_39_4_1_U179", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	updateb {
		params_V {Type IO LastRead 85 FirstWrite 88}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 3 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "408", "Max" : "408"}
	, {"Name" : "Interval", "Min" : "408", "Max" : "408"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	params_V { ap_memory {  { params_V_address0 mem_address 1 9 }  { params_V_ce0 mem_ce 1 1 }  { params_V_q0 mem_dout 0 16 }  { params_V_address1 MemPortADDR2 1 9 }  { params_V_ce1 MemPortCE2 1 1 }  { params_V_we1 MemPortWE2 1 1 }  { params_V_d1 MemPortDIN2 1 16 } } }
	grads_V { ap_memory {  { grads_V_address0 mem_address 1 9 }  { grads_V_ce0 mem_ce 1 1 }  { grads_V_q0 mem_dout 0 16 } } }
	h_V { ap_memory {  { h_V_address0 mem_address 1 9 }  { h_V_ce0 mem_ce 1 1 }  { h_V_q0 mem_dout 0 16 }  { h_V_address1 MemPortADDR2 1 9 }  { h_V_ce1 MemPortCE2 1 1 }  { h_V_we1 MemPortWE2 1 1 }  { h_V_d1 MemPortDIN2 1 16 } } }
}
