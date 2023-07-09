set moduleName backward_1
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
set C_modelName {backward.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv1d_actc float 32 regular {array 4000 { 1 3 } 1 1 }  }
	{ dout float 32 regular {array 24000 { 1 3 } 1 1 }  }
	{ gradsw1 float 32 regular {array 33280 { 2 3 } 1 1 }  }
	{ gradsb1 float 32 regular {array 312000 { 1 0 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv1d_actc", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dout", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gradsw1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "gradsb1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv1d_actc_address0 sc_out sc_lv 12 signal 0 } 
	{ conv1d_actc_ce0 sc_out sc_logic 1 signal 0 } 
	{ conv1d_actc_q0 sc_in sc_lv 32 signal 0 } 
	{ dout_address0 sc_out sc_lv 15 signal 1 } 
	{ dout_ce0 sc_out sc_logic 1 signal 1 } 
	{ dout_q0 sc_in sc_lv 32 signal 1 } 
	{ gradsw1_address0 sc_out sc_lv 16 signal 2 } 
	{ gradsw1_ce0 sc_out sc_logic 1 signal 2 } 
	{ gradsw1_we0 sc_out sc_logic 1 signal 2 } 
	{ gradsw1_d0 sc_out sc_lv 32 signal 2 } 
	{ gradsw1_q0 sc_in sc_lv 32 signal 2 } 
	{ gradsb1_address0 sc_out sc_lv 19 signal 3 } 
	{ gradsb1_ce0 sc_out sc_logic 1 signal 3 } 
	{ gradsb1_q0 sc_in sc_lv 32 signal 3 } 
	{ gradsb1_address1 sc_out sc_lv 19 signal 3 } 
	{ gradsb1_ce1 sc_out sc_logic 1 signal 3 } 
	{ gradsb1_we1 sc_out sc_logic 1 signal 3 } 
	{ gradsb1_d1 sc_out sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv1d_actc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "conv1d_actc", "role": "address0" }} , 
 	{ "name": "conv1d_actc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1d_actc", "role": "ce0" }} , 
 	{ "name": "conv1d_actc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1d_actc", "role": "q0" }} , 
 	{ "name": "dout_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dout", "role": "address0" }} , 
 	{ "name": "dout_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout", "role": "ce0" }} , 
 	{ "name": "dout_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dout", "role": "q0" }} , 
 	{ "name": "gradsw1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradsw1", "role": "address0" }} , 
 	{ "name": "gradsw1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradsw1", "role": "ce0" }} , 
 	{ "name": "gradsw1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradsw1", "role": "we0" }} , 
 	{ "name": "gradsw1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gradsw1", "role": "d0" }} , 
 	{ "name": "gradsw1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gradsw1", "role": "q0" }} , 
 	{ "name": "gradsb1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "gradsb1", "role": "address0" }} , 
 	{ "name": "gradsb1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradsb1", "role": "ce0" }} , 
 	{ "name": "gradsb1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gradsb1", "role": "q0" }} , 
 	{ "name": "gradsb1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "gradsb1", "role": "address1" }} , 
 	{ "name": "gradsb1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradsb1", "role": "ce1" }} , 
 	{ "name": "gradsb1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradsb1", "role": "we1" }} , 
 	{ "name": "gradsb1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gradsb1", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "backward_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "324792021", "EstimateLatencyMax" : "324792021",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv1d_actc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dout", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "gradsw1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gradsb1", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fadd_32ns_32ns_32_7_full_dsp_1_U4", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fmul_32ns_32ns_32_4_max_dsp_1_U5", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mac_muladd_9ns_11ns_10ns_19_4_1_U6", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mac_muladd_9ns_11ns_10ns_19_4_1_U7", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	backward_1 {
		conv1d_actc {Type I LastRead 2 FirstWrite -1}
		dout {Type I LastRead 7 FirstWrite -1}
		gradsw1 {Type IO LastRead 8 FirstWrite 17}
		gradsb1 {Type IO LastRead 7 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "324792021", "Max" : "324792021"}
	, {"Name" : "Interval", "Min" : "324792021", "Max" : "324792021"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	conv1d_actc { ap_memory {  { conv1d_actc_address0 mem_address 1 12 }  { conv1d_actc_ce0 mem_ce 1 1 }  { conv1d_actc_q0 mem_dout 0 32 } } }
	dout { ap_memory {  { dout_address0 mem_address 1 15 }  { dout_ce0 mem_ce 1 1 }  { dout_q0 mem_dout 0 32 } } }
	gradsw1 { ap_memory {  { gradsw1_address0 mem_address 1 16 }  { gradsw1_ce0 mem_ce 1 1 }  { gradsw1_we0 mem_we 1 1 }  { gradsw1_d0 mem_din 1 32 }  { gradsw1_q0 mem_dout 0 32 } } }
	gradsb1 { ap_memory {  { gradsb1_address0 mem_address 1 19 }  { gradsb1_ce0 mem_ce 1 1 }  { gradsb1_q0 mem_dout 0 32 }  { gradsb1_address1 MemPortADDR2 1 19 }  { gradsb1_ce1 MemPortCE2 1 1 }  { gradsb1_we1 MemPortWE2 1 1 }  { gradsb1_d1 MemPortDIN2 1 32 } } }
}
