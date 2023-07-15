set moduleName forward
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
set C_modelName {forward}
set C_modelType { void 0 }
set C_modelArgList {
	{ LSTM_f_V int 16 regular {array 24320 { 2 0 } 1 1 }  }
	{ LSTM_f_V_offset int 7 regular  }
	{ LSTM_g_V int 16 regular {array 24320 { 2 0 } 1 1 }  }
	{ LSTM_g_V_offset int 7 regular  }
	{ LSTM_i_V int 16 regular {array 24320 { 2 0 } 1 1 }  }
	{ LSTM_i_V_offset int 7 regular  }
	{ LSTM_o_V int 16 regular {array 24320 { 2 2 } 1 1 }  }
	{ LSTM_o_V_offset int 7 regular  }
	{ LSTM_cache_V int 16 regular {array 194560 { 0 0 } 0 1 }  }
	{ LSTM_cache_V_offset int 7 regular  }
	{ flag int 8 regular  }
	{ t int 7 regular  }
	{ x_V int 16 regular {array 24000 { 1 3 } 1 1 }  }
	{ y_V int 16 regular {array 48000 { 0 3 } 0 1 }  }
	{ h_next_V int 16 regular {array 320 { 2 3 } 1 1 }  }
	{ c_next_V int 16 regular {array 320 { 2 3 } 1 1 }  }
	{ wxf_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ wxg_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ wxi_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ wxo_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ whf_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ whg_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ whi_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ who_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ bf_V int 16 regular {array 320 { 1 3 } 1 1 }  }
	{ bg_V int 16 regular {array 320 { 1 3 } 1 1 }  }
	{ bi_V int 16 regular {array 320 { 1 3 } 1 1 }  }
	{ bo_V int 16 regular {array 320 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "LSTM_f_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "LSTM_f_V_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "LSTM_g_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "LSTM_g_V_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "LSTM_i_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "LSTM_i_V_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "LSTM_o_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "LSTM_o_V_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "LSTM_cache_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "LSTM_cache_V_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "flag", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "x_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "y_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_next_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "c_next_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "wxf_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wxg_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wxi_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wxo_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "whf_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "whg_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "whi_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "who_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bf_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bg_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bi_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bo_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 111
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ LSTM_f_V_address0 sc_out sc_lv 15 signal 0 } 
	{ LSTM_f_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ LSTM_f_V_we0 sc_out sc_logic 1 signal 0 } 
	{ LSTM_f_V_d0 sc_out sc_lv 16 signal 0 } 
	{ LSTM_f_V_q0 sc_in sc_lv 16 signal 0 } 
	{ LSTM_f_V_address1 sc_out sc_lv 15 signal 0 } 
	{ LSTM_f_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ LSTM_f_V_we1 sc_out sc_logic 1 signal 0 } 
	{ LSTM_f_V_d1 sc_out sc_lv 16 signal 0 } 
	{ LSTM_f_V_offset sc_in sc_lv 7 signal 1 } 
	{ LSTM_g_V_address0 sc_out sc_lv 15 signal 2 } 
	{ LSTM_g_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ LSTM_g_V_we0 sc_out sc_logic 1 signal 2 } 
	{ LSTM_g_V_d0 sc_out sc_lv 16 signal 2 } 
	{ LSTM_g_V_q0 sc_in sc_lv 16 signal 2 } 
	{ LSTM_g_V_address1 sc_out sc_lv 15 signal 2 } 
	{ LSTM_g_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ LSTM_g_V_we1 sc_out sc_logic 1 signal 2 } 
	{ LSTM_g_V_d1 sc_out sc_lv 16 signal 2 } 
	{ LSTM_g_V_offset sc_in sc_lv 7 signal 3 } 
	{ LSTM_i_V_address0 sc_out sc_lv 15 signal 4 } 
	{ LSTM_i_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ LSTM_i_V_we0 sc_out sc_logic 1 signal 4 } 
	{ LSTM_i_V_d0 sc_out sc_lv 16 signal 4 } 
	{ LSTM_i_V_q0 sc_in sc_lv 16 signal 4 } 
	{ LSTM_i_V_address1 sc_out sc_lv 15 signal 4 } 
	{ LSTM_i_V_ce1 sc_out sc_logic 1 signal 4 } 
	{ LSTM_i_V_we1 sc_out sc_logic 1 signal 4 } 
	{ LSTM_i_V_d1 sc_out sc_lv 16 signal 4 } 
	{ LSTM_i_V_offset sc_in sc_lv 7 signal 5 } 
	{ LSTM_o_V_address0 sc_out sc_lv 15 signal 6 } 
	{ LSTM_o_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ LSTM_o_V_we0 sc_out sc_logic 1 signal 6 } 
	{ LSTM_o_V_d0 sc_out sc_lv 16 signal 6 } 
	{ LSTM_o_V_q0 sc_in sc_lv 16 signal 6 } 
	{ LSTM_o_V_address1 sc_out sc_lv 15 signal 6 } 
	{ LSTM_o_V_ce1 sc_out sc_logic 1 signal 6 } 
	{ LSTM_o_V_we1 sc_out sc_logic 1 signal 6 } 
	{ LSTM_o_V_d1 sc_out sc_lv 16 signal 6 } 
	{ LSTM_o_V_q1 sc_in sc_lv 16 signal 6 } 
	{ LSTM_o_V_offset sc_in sc_lv 7 signal 7 } 
	{ LSTM_cache_V_address0 sc_out sc_lv 18 signal 8 } 
	{ LSTM_cache_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ LSTM_cache_V_we0 sc_out sc_logic 1 signal 8 } 
	{ LSTM_cache_V_d0 sc_out sc_lv 16 signal 8 } 
	{ LSTM_cache_V_address1 sc_out sc_lv 18 signal 8 } 
	{ LSTM_cache_V_ce1 sc_out sc_logic 1 signal 8 } 
	{ LSTM_cache_V_we1 sc_out sc_logic 1 signal 8 } 
	{ LSTM_cache_V_d1 sc_out sc_lv 16 signal 8 } 
	{ LSTM_cache_V_offset sc_in sc_lv 7 signal 9 } 
	{ flag sc_in sc_lv 8 signal 10 } 
	{ t sc_in sc_lv 7 signal 11 } 
	{ x_V_address0 sc_out sc_lv 15 signal 12 } 
	{ x_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ x_V_q0 sc_in sc_lv 16 signal 12 } 
	{ y_V_address0 sc_out sc_lv 16 signal 13 } 
	{ y_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ y_V_we0 sc_out sc_logic 1 signal 13 } 
	{ y_V_d0 sc_out sc_lv 16 signal 13 } 
	{ h_next_V_address0 sc_out sc_lv 9 signal 14 } 
	{ h_next_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ h_next_V_we0 sc_out sc_logic 1 signal 14 } 
	{ h_next_V_d0 sc_out sc_lv 16 signal 14 } 
	{ h_next_V_q0 sc_in sc_lv 16 signal 14 } 
	{ c_next_V_address0 sc_out sc_lv 9 signal 15 } 
	{ c_next_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ c_next_V_we0 sc_out sc_logic 1 signal 15 } 
	{ c_next_V_d0 sc_out sc_lv 16 signal 15 } 
	{ c_next_V_q0 sc_in sc_lv 16 signal 15 } 
	{ wxf_V_address0 sc_out sc_lv 17 signal 16 } 
	{ wxf_V_ce0 sc_out sc_logic 1 signal 16 } 
	{ wxf_V_q0 sc_in sc_lv 16 signal 16 } 
	{ wxg_V_address0 sc_out sc_lv 17 signal 17 } 
	{ wxg_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ wxg_V_q0 sc_in sc_lv 16 signal 17 } 
	{ wxi_V_address0 sc_out sc_lv 17 signal 18 } 
	{ wxi_V_ce0 sc_out sc_logic 1 signal 18 } 
	{ wxi_V_q0 sc_in sc_lv 16 signal 18 } 
	{ wxo_V_address0 sc_out sc_lv 17 signal 19 } 
	{ wxo_V_ce0 sc_out sc_logic 1 signal 19 } 
	{ wxo_V_q0 sc_in sc_lv 16 signal 19 } 
	{ whf_V_address0 sc_out sc_lv 17 signal 20 } 
	{ whf_V_ce0 sc_out sc_logic 1 signal 20 } 
	{ whf_V_q0 sc_in sc_lv 16 signal 20 } 
	{ whg_V_address0 sc_out sc_lv 17 signal 21 } 
	{ whg_V_ce0 sc_out sc_logic 1 signal 21 } 
	{ whg_V_q0 sc_in sc_lv 16 signal 21 } 
	{ whi_V_address0 sc_out sc_lv 17 signal 22 } 
	{ whi_V_ce0 sc_out sc_logic 1 signal 22 } 
	{ whi_V_q0 sc_in sc_lv 16 signal 22 } 
	{ who_V_address0 sc_out sc_lv 17 signal 23 } 
	{ who_V_ce0 sc_out sc_logic 1 signal 23 } 
	{ who_V_q0 sc_in sc_lv 16 signal 23 } 
	{ bf_V_address0 sc_out sc_lv 9 signal 24 } 
	{ bf_V_ce0 sc_out sc_logic 1 signal 24 } 
	{ bf_V_q0 sc_in sc_lv 16 signal 24 } 
	{ bg_V_address0 sc_out sc_lv 9 signal 25 } 
	{ bg_V_ce0 sc_out sc_logic 1 signal 25 } 
	{ bg_V_q0 sc_in sc_lv 16 signal 25 } 
	{ bi_V_address0 sc_out sc_lv 9 signal 26 } 
	{ bi_V_ce0 sc_out sc_logic 1 signal 26 } 
	{ bi_V_q0 sc_in sc_lv 16 signal 26 } 
	{ bo_V_address0 sc_out sc_lv 9 signal 27 } 
	{ bo_V_ce0 sc_out sc_logic 1 signal 27 } 
	{ bo_V_q0 sc_in sc_lv 16 signal 27 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "LSTM_f_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "LSTM_f_V", "role": "address0" }} , 
 	{ "name": "LSTM_f_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_f_V", "role": "ce0" }} , 
 	{ "name": "LSTM_f_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_f_V", "role": "we0" }} , 
 	{ "name": "LSTM_f_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_f_V", "role": "d0" }} , 
 	{ "name": "LSTM_f_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_f_V", "role": "q0" }} , 
 	{ "name": "LSTM_f_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "LSTM_f_V", "role": "address1" }} , 
 	{ "name": "LSTM_f_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_f_V", "role": "ce1" }} , 
 	{ "name": "LSTM_f_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_f_V", "role": "we1" }} , 
 	{ "name": "LSTM_f_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_f_V", "role": "d1" }} , 
 	{ "name": "LSTM_f_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LSTM_f_V_offset", "role": "default" }} , 
 	{ "name": "LSTM_g_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "LSTM_g_V", "role": "address0" }} , 
 	{ "name": "LSTM_g_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_g_V", "role": "ce0" }} , 
 	{ "name": "LSTM_g_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_g_V", "role": "we0" }} , 
 	{ "name": "LSTM_g_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_g_V", "role": "d0" }} , 
 	{ "name": "LSTM_g_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_g_V", "role": "q0" }} , 
 	{ "name": "LSTM_g_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "LSTM_g_V", "role": "address1" }} , 
 	{ "name": "LSTM_g_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_g_V", "role": "ce1" }} , 
 	{ "name": "LSTM_g_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_g_V", "role": "we1" }} , 
 	{ "name": "LSTM_g_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_g_V", "role": "d1" }} , 
 	{ "name": "LSTM_g_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LSTM_g_V_offset", "role": "default" }} , 
 	{ "name": "LSTM_i_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "LSTM_i_V", "role": "address0" }} , 
 	{ "name": "LSTM_i_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_i_V", "role": "ce0" }} , 
 	{ "name": "LSTM_i_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_i_V", "role": "we0" }} , 
 	{ "name": "LSTM_i_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_i_V", "role": "d0" }} , 
 	{ "name": "LSTM_i_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_i_V", "role": "q0" }} , 
 	{ "name": "LSTM_i_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "LSTM_i_V", "role": "address1" }} , 
 	{ "name": "LSTM_i_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_i_V", "role": "ce1" }} , 
 	{ "name": "LSTM_i_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_i_V", "role": "we1" }} , 
 	{ "name": "LSTM_i_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_i_V", "role": "d1" }} , 
 	{ "name": "LSTM_i_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LSTM_i_V_offset", "role": "default" }} , 
 	{ "name": "LSTM_o_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "LSTM_o_V", "role": "address0" }} , 
 	{ "name": "LSTM_o_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_o_V", "role": "ce0" }} , 
 	{ "name": "LSTM_o_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_o_V", "role": "we0" }} , 
 	{ "name": "LSTM_o_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_o_V", "role": "d0" }} , 
 	{ "name": "LSTM_o_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_o_V", "role": "q0" }} , 
 	{ "name": "LSTM_o_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "LSTM_o_V", "role": "address1" }} , 
 	{ "name": "LSTM_o_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_o_V", "role": "ce1" }} , 
 	{ "name": "LSTM_o_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_o_V", "role": "we1" }} , 
 	{ "name": "LSTM_o_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_o_V", "role": "d1" }} , 
 	{ "name": "LSTM_o_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_o_V", "role": "q1" }} , 
 	{ "name": "LSTM_o_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LSTM_o_V_offset", "role": "default" }} , 
 	{ "name": "LSTM_cache_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "LSTM_cache_V", "role": "address0" }} , 
 	{ "name": "LSTM_cache_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_cache_V", "role": "ce0" }} , 
 	{ "name": "LSTM_cache_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_cache_V", "role": "we0" }} , 
 	{ "name": "LSTM_cache_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_cache_V", "role": "d0" }} , 
 	{ "name": "LSTM_cache_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "LSTM_cache_V", "role": "address1" }} , 
 	{ "name": "LSTM_cache_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_cache_V", "role": "ce1" }} , 
 	{ "name": "LSTM_cache_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_cache_V", "role": "we1" }} , 
 	{ "name": "LSTM_cache_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_cache_V", "role": "d1" }} , 
 	{ "name": "LSTM_cache_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LSTM_cache_V_offset", "role": "default" }} , 
 	{ "name": "flag", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "flag", "role": "default" }} , 
 	{ "name": "t", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "t", "role": "default" }} , 
 	{ "name": "x_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "x_V", "role": "address0" }} , 
 	{ "name": "x_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "ce0" }} , 
 	{ "name": "x_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "x_V", "role": "q0" }} , 
 	{ "name": "y_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y_V", "role": "address0" }} , 
 	{ "name": "y_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_V", "role": "ce0" }} , 
 	{ "name": "y_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_V", "role": "we0" }} , 
 	{ "name": "y_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y_V", "role": "d0" }} , 
 	{ "name": "h_next_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "h_next_V", "role": "address0" }} , 
 	{ "name": "h_next_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_next_V", "role": "ce0" }} , 
 	{ "name": "h_next_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_next_V", "role": "we0" }} , 
 	{ "name": "h_next_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_next_V", "role": "d0" }} , 
 	{ "name": "h_next_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_next_V", "role": "q0" }} , 
 	{ "name": "c_next_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "c_next_V", "role": "address0" }} , 
 	{ "name": "c_next_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_next_V", "role": "ce0" }} , 
 	{ "name": "c_next_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_next_V", "role": "we0" }} , 
 	{ "name": "c_next_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "c_next_V", "role": "d0" }} , 
 	{ "name": "c_next_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "c_next_V", "role": "q0" }} , 
 	{ "name": "wxf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "wxf_V", "role": "address0" }} , 
 	{ "name": "wxf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wxf_V", "role": "ce0" }} , 
 	{ "name": "wxf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wxf_V", "role": "q0" }} , 
 	{ "name": "wxg_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "wxg_V", "role": "address0" }} , 
 	{ "name": "wxg_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wxg_V", "role": "ce0" }} , 
 	{ "name": "wxg_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wxg_V", "role": "q0" }} , 
 	{ "name": "wxi_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "wxi_V", "role": "address0" }} , 
 	{ "name": "wxi_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wxi_V", "role": "ce0" }} , 
 	{ "name": "wxi_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wxi_V", "role": "q0" }} , 
 	{ "name": "wxo_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "wxo_V", "role": "address0" }} , 
 	{ "name": "wxo_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wxo_V", "role": "ce0" }} , 
 	{ "name": "wxo_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wxo_V", "role": "q0" }} , 
 	{ "name": "whf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "whf_V", "role": "address0" }} , 
 	{ "name": "whf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "whf_V", "role": "ce0" }} , 
 	{ "name": "whf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "whf_V", "role": "q0" }} , 
 	{ "name": "whg_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "whg_V", "role": "address0" }} , 
 	{ "name": "whg_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "whg_V", "role": "ce0" }} , 
 	{ "name": "whg_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "whg_V", "role": "q0" }} , 
 	{ "name": "whi_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "whi_V", "role": "address0" }} , 
 	{ "name": "whi_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "whi_V", "role": "ce0" }} , 
 	{ "name": "whi_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "whi_V", "role": "q0" }} , 
 	{ "name": "who_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "who_V", "role": "address0" }} , 
 	{ "name": "who_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "who_V", "role": "ce0" }} , 
 	{ "name": "who_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "who_V", "role": "q0" }} , 
 	{ "name": "bf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bf_V", "role": "address0" }} , 
 	{ "name": "bf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bf_V", "role": "ce0" }} , 
 	{ "name": "bf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bf_V", "role": "q0" }} , 
 	{ "name": "bg_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bg_V", "role": "address0" }} , 
 	{ "name": "bg_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bg_V", "role": "ce0" }} , 
 	{ "name": "bg_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bg_V", "role": "q0" }} , 
 	{ "name": "bi_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bi_V", "role": "address0" }} , 
 	{ "name": "bi_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi_V", "role": "ce0" }} , 
 	{ "name": "bi_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bi_V", "role": "q0" }} , 
 	{ "name": "bo_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bo_V", "role": "address0" }} , 
 	{ "name": "bo_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bo_V", "role": "ce0" }} , 
 	{ "name": "bo_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bo_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41"],
		"CDFG" : "forward",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "317992", "EstimateLatencyMax" : "317992",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "LSTM_f_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LSTM_f_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "LSTM_g_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LSTM_g_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "LSTM_i_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LSTM_i_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "LSTM_o_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LSTM_o_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "LSTM_cache_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "LSTM_cache_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "flag", "Type" : "None", "Direction" : "I"},
			{"Name" : "t", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_next_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_next_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "wxf_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wxg_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wxi_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wxo_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "whf_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "whg_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "whi_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "who_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bf_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bg_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bi_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bo_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_generic_tanh_double_s_fu_1076", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_generic_tanh_double_s_fu_1076", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_generic_tanh_double_s_fu_1076", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_prev_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_prev_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076", "Parent" : "0", "Child" : ["5", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "generic_tanh_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "96", "EstimateLatencyMin" : "96", "EstimateLatencyMax" : "96",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87", "Parent" : "4", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "exp_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "29", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.kerneldl_mul_72ns_13s_84_5_1_U1", "Parent" : "5"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.kerneldl_mul_36ns_43ns_79_4_1_U2", "Parent" : "5"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.kerneldl_mul_44ns_49ns_93_5_1_U3", "Parent" : "5"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.kerneldl_mul_50ns_50ns_100_5_1_U4", "Parent" : "5"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.kerneldl_mac_muladd_16ns_16s_19s_31_4_1_U5", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U15", "Parent" : "4"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.kerneldl_dsub_64ns_64ns_64_8_full_dsp_1_U16", "Parent" : "4"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U17", "Parent" : "4"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U18", "Parent" : "4"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U19", "Parent" : "4"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.kerneldl_dsub_64ns_64ns_64_8_full_dsp_1_U20", "Parent" : "4"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.kerneldl_dmul_64ns_64ns_64_8_max_dsp_1_U21", "Parent" : "4"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.kerneldl_ddiv_64ns_64ns_64_31_1_U22", "Parent" : "4"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1076.kerneldl_dcmp_64ns_64ns_1_2_1_U23", "Parent" : "4"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fadd_32ns_32ns_32_7_full_dsp_1_U183", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fmul_32ns_32ns_32_4_max_dsp_1_U184", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fdiv_32ns_32ns_32_12_1_U185", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fptrunc_64ns_32_2_1_U186", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fpext_32ns_64_2_1_U187", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fpext_32ns_64_2_1_U188", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U189", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_ddiv_64ns_64ns_64_31_1_U190", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_dexp_64ns_64ns_64_30_full_dsp_1_U191", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U192", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U193", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U194", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U195", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U196", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U197", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U198", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U199", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U200", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U201", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	forward {
		LSTM_f_V {Type IO LastRead 15 FirstWrite 3}
		LSTM_f_V_offset {Type I LastRead 0 FirstWrite -1}
		LSTM_g_V {Type IO LastRead 15 FirstWrite 3}
		LSTM_g_V_offset {Type I LastRead 0 FirstWrite -1}
		LSTM_i_V {Type IO LastRead 15 FirstWrite 3}
		LSTM_i_V_offset {Type I LastRead 0 FirstWrite -1}
		LSTM_o_V {Type IO LastRead 17 FirstWrite 3}
		LSTM_o_V_offset {Type I LastRead 0 FirstWrite -1}
		LSTM_cache_V {Type O LastRead -1 FirstWrite 7}
		LSTM_cache_V_offset {Type I LastRead 0 FirstWrite -1}
		flag {Type I LastRead 0 FirstWrite -1}
		t {Type I LastRead 0 FirstWrite -1}
		x_V {Type I LastRead 2 FirstWrite -1}
		y_V {Type O LastRead -1 FirstWrite 9}
		h_next_V {Type IO LastRead 9 FirstWrite 233}
		c_next_V {Type IO LastRead 3 FirstWrite 115}
		wxf_V {Type I LastRead 7 FirstWrite -1}
		wxg_V {Type I LastRead 7 FirstWrite -1}
		wxi_V {Type I LastRead 7 FirstWrite -1}
		wxo_V {Type I LastRead 7 FirstWrite -1}
		whf_V {Type I LastRead 10 FirstWrite -1}
		whg_V {Type I LastRead 10 FirstWrite -1}
		whi_V {Type I LastRead 7 FirstWrite -1}
		who_V {Type I LastRead 10 FirstWrite -1}
		bf_V {Type I LastRead 8 FirstWrite -1}
		bg_V {Type I LastRead 11 FirstWrite -1}
		bi_V {Type I LastRead 14 FirstWrite -1}
		bo_V {Type I LastRead 17 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}
	generic_tanh_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}
	exp_generic_double_s {
		x {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "317992", "Max" : "317992"}
	, {"Name" : "Interval", "Min" : "317992", "Max" : "317992"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
]}

set Spec2ImplPortList { 
	LSTM_f_V { ap_memory {  { LSTM_f_V_address0 mem_address 1 15 }  { LSTM_f_V_ce0 mem_ce 1 1 }  { LSTM_f_V_we0 mem_we 1 1 }  { LSTM_f_V_d0 mem_din 1 16 }  { LSTM_f_V_q0 mem_dout 0 16 }  { LSTM_f_V_address1 MemPortADDR2 1 15 }  { LSTM_f_V_ce1 MemPortCE2 1 1 }  { LSTM_f_V_we1 MemPortWE2 1 1 }  { LSTM_f_V_d1 MemPortDIN2 1 16 } } }
	LSTM_f_V_offset { ap_none {  { LSTM_f_V_offset in_data 0 7 } } }
	LSTM_g_V { ap_memory {  { LSTM_g_V_address0 mem_address 1 15 }  { LSTM_g_V_ce0 mem_ce 1 1 }  { LSTM_g_V_we0 mem_we 1 1 }  { LSTM_g_V_d0 mem_din 1 16 }  { LSTM_g_V_q0 mem_dout 0 16 }  { LSTM_g_V_address1 MemPortADDR2 1 15 }  { LSTM_g_V_ce1 MemPortCE2 1 1 }  { LSTM_g_V_we1 MemPortWE2 1 1 }  { LSTM_g_V_d1 MemPortDIN2 1 16 } } }
	LSTM_g_V_offset { ap_none {  { LSTM_g_V_offset in_data 0 7 } } }
	LSTM_i_V { ap_memory {  { LSTM_i_V_address0 mem_address 1 15 }  { LSTM_i_V_ce0 mem_ce 1 1 }  { LSTM_i_V_we0 mem_we 1 1 }  { LSTM_i_V_d0 mem_din 1 16 }  { LSTM_i_V_q0 mem_dout 0 16 }  { LSTM_i_V_address1 MemPortADDR2 1 15 }  { LSTM_i_V_ce1 MemPortCE2 1 1 }  { LSTM_i_V_we1 MemPortWE2 1 1 }  { LSTM_i_V_d1 MemPortDIN2 1 16 } } }
	LSTM_i_V_offset { ap_none {  { LSTM_i_V_offset in_data 0 7 } } }
	LSTM_o_V { ap_memory {  { LSTM_o_V_address0 mem_address 1 15 }  { LSTM_o_V_ce0 mem_ce 1 1 }  { LSTM_o_V_we0 mem_we 1 1 }  { LSTM_o_V_d0 mem_din 1 16 }  { LSTM_o_V_q0 mem_dout 0 16 }  { LSTM_o_V_address1 MemPortADDR2 1 15 }  { LSTM_o_V_ce1 MemPortCE2 1 1 }  { LSTM_o_V_we1 MemPortWE2 1 1 }  { LSTM_o_V_d1 MemPortDIN2 1 16 }  { LSTM_o_V_q1 MemPortDOUT2 0 16 } } }
	LSTM_o_V_offset { ap_none {  { LSTM_o_V_offset in_data 0 7 } } }
	LSTM_cache_V { ap_memory {  { LSTM_cache_V_address0 mem_address 1 18 }  { LSTM_cache_V_ce0 mem_ce 1 1 }  { LSTM_cache_V_we0 mem_we 1 1 }  { LSTM_cache_V_d0 mem_din 1 16 }  { LSTM_cache_V_address1 MemPortADDR2 1 18 }  { LSTM_cache_V_ce1 MemPortCE2 1 1 }  { LSTM_cache_V_we1 MemPortWE2 1 1 }  { LSTM_cache_V_d1 MemPortDIN2 1 16 } } }
	LSTM_cache_V_offset { ap_none {  { LSTM_cache_V_offset in_data 0 7 } } }
	flag { ap_none {  { flag in_data 0 8 } } }
	t { ap_none {  { t in_data 0 7 } } }
	x_V { ap_memory {  { x_V_address0 mem_address 1 15 }  { x_V_ce0 mem_ce 1 1 }  { x_V_q0 mem_dout 0 16 } } }
	y_V { ap_memory {  { y_V_address0 mem_address 1 16 }  { y_V_ce0 mem_ce 1 1 }  { y_V_we0 mem_we 1 1 }  { y_V_d0 mem_din 1 16 } } }
	h_next_V { ap_memory {  { h_next_V_address0 mem_address 1 9 }  { h_next_V_ce0 mem_ce 1 1 }  { h_next_V_we0 mem_we 1 1 }  { h_next_V_d0 mem_din 1 16 }  { h_next_V_q0 mem_dout 0 16 } } }
	c_next_V { ap_memory {  { c_next_V_address0 mem_address 1 9 }  { c_next_V_ce0 mem_ce 1 1 }  { c_next_V_we0 mem_we 1 1 }  { c_next_V_d0 mem_din 1 16 }  { c_next_V_q0 mem_dout 0 16 } } }
	wxf_V { ap_memory {  { wxf_V_address0 mem_address 1 17 }  { wxf_V_ce0 mem_ce 1 1 }  { wxf_V_q0 mem_dout 0 16 } } }
	wxg_V { ap_memory {  { wxg_V_address0 mem_address 1 17 }  { wxg_V_ce0 mem_ce 1 1 }  { wxg_V_q0 mem_dout 0 16 } } }
	wxi_V { ap_memory {  { wxi_V_address0 mem_address 1 17 }  { wxi_V_ce0 mem_ce 1 1 }  { wxi_V_q0 mem_dout 0 16 } } }
	wxo_V { ap_memory {  { wxo_V_address0 mem_address 1 17 }  { wxo_V_ce0 mem_ce 1 1 }  { wxo_V_q0 mem_dout 0 16 } } }
	whf_V { ap_memory {  { whf_V_address0 mem_address 1 17 }  { whf_V_ce0 mem_ce 1 1 }  { whf_V_q0 mem_dout 0 16 } } }
	whg_V { ap_memory {  { whg_V_address0 mem_address 1 17 }  { whg_V_ce0 mem_ce 1 1 }  { whg_V_q0 mem_dout 0 16 } } }
	whi_V { ap_memory {  { whi_V_address0 mem_address 1 17 }  { whi_V_ce0 mem_ce 1 1 }  { whi_V_q0 mem_dout 0 16 } } }
	who_V { ap_memory {  { who_V_address0 mem_address 1 17 }  { who_V_ce0 mem_ce 1 1 }  { who_V_q0 mem_dout 0 16 } } }
	bf_V { ap_memory {  { bf_V_address0 mem_address 1 9 }  { bf_V_ce0 mem_ce 1 1 }  { bf_V_q0 mem_dout 0 16 } } }
	bg_V { ap_memory {  { bg_V_address0 mem_address 1 9 }  { bg_V_ce0 mem_ce 1 1 }  { bg_V_q0 mem_dout 0 16 } } }
	bi_V { ap_memory {  { bi_V_address0 mem_address 1 9 }  { bi_V_ce0 mem_ce 1 1 }  { bi_V_q0 mem_dout 0 16 } } }
	bo_V { ap_memory {  { bo_V_address0 mem_address 1 9 }  { bo_V_ce0 mem_ce 1 1 }  { bo_V_q0 mem_dout 0 16 } } }
}
