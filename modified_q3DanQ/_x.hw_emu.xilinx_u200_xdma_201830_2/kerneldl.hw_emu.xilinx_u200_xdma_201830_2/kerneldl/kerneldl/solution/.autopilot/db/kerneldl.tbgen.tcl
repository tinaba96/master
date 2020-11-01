set moduleName kerneldl
set isTopModule 1
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
set C_modelName {kerneldl}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmemm float 32 regular {axi_master 2}  }
	{ datax int 64 regular {axi_slave 0}  }
	{ datay int 64 regular {axi_slave 0}  }
	{ dout int 64 regular {axi_slave 0}  }
	{ model int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmemm", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "datax","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "datax","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "datay","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "datay","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "dout","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "dout","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "datax", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "datay", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "dout", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "model", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "model","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":52}, "offset_end" : {"in":59}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmemm_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmemm_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmemm_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmemm_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmemm_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmemm_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmemm_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmemm_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmemm_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmemm_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmemm_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmemm_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmemm_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmemm_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmemm_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmemm_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmemm_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmemm_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmemm_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmemm_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmemm_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmemm_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmemm_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmemm_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmemm_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmemm_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmemm_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmemm_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmemm_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmemm_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmemm_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmemm_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmemm_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmemm_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmemm_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmemm_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmemm_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmemm_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmemm_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmemm_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmemm_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmemm_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmemm_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmemm_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmemm_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"kerneldl","role":"start","value":"0","valid_bit":"0"},{"name":"kerneldl","role":"continue","value":"0","valid_bit":"4"},{"name":"kerneldl","role":"auto_start","value":"0","valid_bit":"7"},{"name":"datax","role":"data","value":"16"},{"name":"datay","role":"data","value":"28"},{"name":"dout","role":"data","value":"40"},{"name":"model","role":"data","value":"52"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"kerneldl","role":"start","value":"0","valid_bit":"0"},{"name":"kerneldl","role":"done","value":"0","valid_bit":"1"},{"name":"kerneldl","role":"idle","value":"0","valid_bit":"2"},{"name":"kerneldl","role":"ready","value":"0","valid_bit":"3"},{"name":"kerneldl","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmemm_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmemm_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmemm_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmemm", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmemm_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "AWID" }} , 
 	{ "name": "m_axi_gmemm_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmemm", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmemm_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmemm", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmemm_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemm", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmemm_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemm", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmemm_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemm", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmemm_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmemm", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmemm_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemm", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmemm_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemm", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmemm_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmemm_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmemm_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmemm_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmemm", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmemm_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemm", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmemm_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmemm_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "WID" }} , 
 	{ "name": "m_axi_gmemm_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmemm_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmemm_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmemm_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmemm", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmemm_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "ARID" }} , 
 	{ "name": "m_axi_gmemm_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmemm", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmemm_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmemm", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmemm_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemm", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmemm_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemm", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmemm_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemm", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmemm_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmemm", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmemm_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemm", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmemm_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemm", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmemm_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmemm_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmemm_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmemm_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmemm", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmemm_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmemm_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "RID" }} , 
 	{ "name": "m_axi_gmemm_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmemm_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemm", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmemm_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmemm_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmemm_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemm", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmemm_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "BID" }} , 
 	{ "name": "m_axi_gmemm_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemm", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "21", "26", "31", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47"],
		"CDFG" : "kerneldl",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "345285", "EstimateLatencyMax" : "326788085",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state245", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_fu_634"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_backward_1_fu_640"},
			{"State" : "ap_ST_fsm_state237", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_1_fu_648"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_backward_fu_657"}],
		"Port" : [
			{"Name" : "gmemm", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmemm_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmemm_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmemm_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmemm_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmemm_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "datax", "Type" : "None", "Direction" : "I"},
			{"Name" : "datay", "Type" : "None", "Direction" : "I"},
			{"Name" : "dout", "Type" : "None", "Direction" : "I"},
			{"Name" : "model", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_gmemm_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_paramsw1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_paramsb1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradsw1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradsb1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_a_actc_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_b_mask_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_c_max_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bufferx_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffery_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h1_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h2_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bufferd_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_634", "Parent" : "0", "Child" : ["16", "17", "18", "19", "20"],
		"CDFG" : "forward",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2880007", "EstimateLatencyMax" : "2880007",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mpool_max", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_634.grp_p_hls_fptosi_float_i32_fu_567", "Parent" : "15",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_634.kerneldl_sitofp_32ns_32_5_1_U26", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_634.kerneldl_fcmp_32ns_32ns_1_2_1_U27", "Parent" : "15"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_634.kerneldl_mul_mul_11ns_9ns_19_4_1_U28", "Parent" : "15"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_634.kerneldl_mac_muladd_5ns_7ns_19ns_19_4_1_U29", "Parent" : "15"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backward_1_fu_640", "Parent" : "0", "Child" : ["22", "23", "24", "25"],
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
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_1_fu_640.kerneldl_fadd_32ns_32ns_32_7_full_dsp_1_U4", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_1_fu_640.kerneldl_fmul_32ns_32ns_32_4_max_dsp_1_U5", "Parent" : "21"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_1_fu_640.kerneldl_mac_muladd_9ns_11ns_10ns_19_4_1_U6", "Parent" : "21"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_1_fu_640.kerneldl_mac_muladd_9ns_11ns_10ns_19_4_1_U7", "Parent" : "21"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_1_fu_648", "Parent" : "0", "Child" : ["27", "28", "29", "30"],
		"CDFG" : "forward_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "234316003", "EstimateLatencyMax" : "234316003",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv1d_actc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "kernel", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_1_fu_648.kerneldl_fadd_32ns_32ns_32_7_full_dsp_1_U15", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_1_fu_648.kerneldl_fmul_32ns_32ns_32_4_max_dsp_1_U16", "Parent" : "26"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_1_fu_648.kerneldl_mac_muladd_9ns_11ns_10ns_19_4_1_U17", "Parent" : "26"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_1_fu_648.kerneldl_mac_muladd_3ns_6ns_16ns_16_4_1_U18", "Parent" : "26"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_657", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "backward",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "624005", "EstimateLatencyMax" : "624005",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mpool_max", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dout", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_657.tempp_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fadd_32ns_32ns_32_7_full_dsp_1_U36", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fmul_32ns_32ns_32_4_max_dsp_1_U37", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fmul_32ns_32ns_32_4_max_dsp_1_U38", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fmul_32ns_32ns_32_4_max_dsp_1_U39", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fmul_32ns_32ns_32_4_max_dsp_1_U40", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fptrunc_64ns_32_2_1_U41", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fpext_32ns_64_2_1_U42", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fpext_32ns_64_2_1_U43", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fpext_32ns_64_2_1_U44", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fcmp_32ns_32ns_1_2_1_U45", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fcmp_32ns_32ns_1_2_1_U46", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U47", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_dsub_64ns_64ns_64_8_full_dsp_1_U48", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_ddiv_64ns_64ns_64_31_1_U49", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_dsqrt_64ns_64ns_64_30_1_U50", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kerneldl {
		gmemm {Type IO LastRead 24 FirstWrite 21}
		datax {Type I LastRead 0 FirstWrite -1}
		datay {Type I LastRead 0 FirstWrite -1}
		dout {Type I LastRead 0 FirstWrite -1}
		model {Type I LastRead 0 FirstWrite -1}}
	forward {
		mpool_max {Type O LastRead -1 FirstWrite 1}
		in_r {Type IO LastRead 14 FirstWrite 113}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	backward_1 {
		conv1d_actc {Type I LastRead 2 FirstWrite -1}
		dout {Type I LastRead 7 FirstWrite -1}
		gradsw1 {Type IO LastRead 8 FirstWrite 17}
		gradsb1 {Type IO LastRead 7 FirstWrite 16}}
	forward_1 {
		conv1d_actc {Type O LastRead -1 FirstWrite 2}
		in_r {Type I LastRead 8 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 17}
		kernel {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 8 FirstWrite -1}}
	backward {
		mpool_max {Type I LastRead 1 FirstWrite -1}
		dout {Type IO LastRead 2 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "345285", "Max" : "326788085"}
	, {"Name" : "Interval", "Min" : "345286", "Max" : "326788086"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
	{"Pipeline" : "8", "EnableSignal" : "ap_enable_pp8"}
	{"Pipeline" : "10", "EnableSignal" : "ap_enable_pp10"}
	{"Pipeline" : "11", "EnableSignal" : "ap_enable_pp11"}
]}

set Spec2ImplPortList { 
	gmemm { m_axi {  { m_axi_gmemm_AWVALID VALID 1 1 }  { m_axi_gmemm_AWREADY READY 0 1 }  { m_axi_gmemm_AWADDR ADDR 1 64 }  { m_axi_gmemm_AWID ID 1 1 }  { m_axi_gmemm_AWLEN LEN 1 8 }  { m_axi_gmemm_AWSIZE SIZE 1 3 }  { m_axi_gmemm_AWBURST BURST 1 2 }  { m_axi_gmemm_AWLOCK LOCK 1 2 }  { m_axi_gmemm_AWCACHE CACHE 1 4 }  { m_axi_gmemm_AWPROT PROT 1 3 }  { m_axi_gmemm_AWQOS QOS 1 4 }  { m_axi_gmemm_AWREGION REGION 1 4 }  { m_axi_gmemm_AWUSER USER 1 1 }  { m_axi_gmemm_WVALID VALID 1 1 }  { m_axi_gmemm_WREADY READY 0 1 }  { m_axi_gmemm_WDATA DATA 1 32 }  { m_axi_gmemm_WSTRB STRB 1 4 }  { m_axi_gmemm_WLAST LAST 1 1 }  { m_axi_gmemm_WID ID 1 1 }  { m_axi_gmemm_WUSER USER 1 1 }  { m_axi_gmemm_ARVALID VALID 1 1 }  { m_axi_gmemm_ARREADY READY 0 1 }  { m_axi_gmemm_ARADDR ADDR 1 64 }  { m_axi_gmemm_ARID ID 1 1 }  { m_axi_gmemm_ARLEN LEN 1 8 }  { m_axi_gmemm_ARSIZE SIZE 1 3 }  { m_axi_gmemm_ARBURST BURST 1 2 }  { m_axi_gmemm_ARLOCK LOCK 1 2 }  { m_axi_gmemm_ARCACHE CACHE 1 4 }  { m_axi_gmemm_ARPROT PROT 1 3 }  { m_axi_gmemm_ARQOS QOS 1 4 }  { m_axi_gmemm_ARREGION REGION 1 4 }  { m_axi_gmemm_ARUSER USER 1 1 }  { m_axi_gmemm_RVALID VALID 0 1 }  { m_axi_gmemm_RREADY READY 1 1 }  { m_axi_gmemm_RDATA DATA 0 32 }  { m_axi_gmemm_RLAST LAST 0 1 }  { m_axi_gmemm_RID ID 0 1 }  { m_axi_gmemm_RUSER USER 0 1 }  { m_axi_gmemm_RRESP RESP 0 2 }  { m_axi_gmemm_BVALID VALID 0 1 }  { m_axi_gmemm_BREADY READY 1 1 }  { m_axi_gmemm_BRESP RESP 0 2 }  { m_axi_gmemm_BID ID 0 1 }  { m_axi_gmemm_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ gmemm { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmemm 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmemm 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
