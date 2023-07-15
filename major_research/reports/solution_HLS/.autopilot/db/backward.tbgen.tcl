set moduleName backward
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
set C_modelName {backward}
set C_modelType { void 0 }
set C_modelArgList {
	{ LSTM_f_V int 16 regular {array 24320 { 2 3 } 1 1 }  }
	{ LSTM_f_V_offset int 7 regular  }
	{ LSTM_g_V int 16 regular {array 24320 { 2 3 } 1 1 }  }
	{ LSTM_g_V_offset int 7 regular  }
	{ LSTM_i_V int 16 regular {array 24320 { 2 3 } 1 1 }  }
	{ LSTM_i_V_offset int 7 regular  }
	{ LSTM_o_V int 16 regular {array 24320 { 2 3 } 1 1 }  }
	{ LSTM_o_V_offset int 7 regular  }
	{ LSTM_cache_V int 16 regular {array 194560 { 1 1 } 1 1 }  }
	{ LSTM_cache_V_offset int 7 regular  }
	{ flag int 8 regular  }
	{ t int 7 regular  }
	{ dout_V int 16 regular {array 48000 { 2 3 } 1 1 }  }
	{ dh_V int 16 regular {array 320 { 2 2 } 1 1 }  }
	{ hs_V int 16 regular {array 48000 { 1 3 } 1 1 }  }
	{ dc_next_V int 16 regular {array 320 { 1 0 } 1 1 }  }
	{ wxf_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ wxg_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ wxi_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ wxo_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ whf_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ whg_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ whi_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ who_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ gradswxf_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ gradswxg_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ gradswxi_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ gradswxo_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ gradswhf_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ gradswhg_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ gradswhi_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ gradswho_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ gradsbf_V int 16 regular {array 320 { 2 3 } 1 1 }  }
	{ gradsbg_V int 16 regular {array 320 { 2 3 } 1 1 }  }
	{ gradsbi_V int 16 regular {array 320 { 2 3 } 1 1 }  }
	{ gradsbo_V int 16 regular {array 320 { 2 3 } 1 1 }  }
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
 	{ "Name" : "LSTM_cache_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "LSTM_cache_V_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "flag", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "dout_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "dh_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "hs_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "dc_next_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "wxf_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wxg_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wxi_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wxo_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "whf_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "whg_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "whi_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "who_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "gradswxf_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "gradswxg_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "gradswxi_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "gradswxo_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "gradswhf_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "gradswhg_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "gradswhi_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "gradswho_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "gradsbf_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "gradsbg_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "gradsbi_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "gradsbo_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 180
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
	{ LSTM_f_V_offset sc_in sc_lv 7 signal 1 } 
	{ LSTM_g_V_address0 sc_out sc_lv 15 signal 2 } 
	{ LSTM_g_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ LSTM_g_V_we0 sc_out sc_logic 1 signal 2 } 
	{ LSTM_g_V_d0 sc_out sc_lv 16 signal 2 } 
	{ LSTM_g_V_q0 sc_in sc_lv 16 signal 2 } 
	{ LSTM_g_V_offset sc_in sc_lv 7 signal 3 } 
	{ LSTM_i_V_address0 sc_out sc_lv 15 signal 4 } 
	{ LSTM_i_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ LSTM_i_V_we0 sc_out sc_logic 1 signal 4 } 
	{ LSTM_i_V_d0 sc_out sc_lv 16 signal 4 } 
	{ LSTM_i_V_q0 sc_in sc_lv 16 signal 4 } 
	{ LSTM_i_V_offset sc_in sc_lv 7 signal 5 } 
	{ LSTM_o_V_address0 sc_out sc_lv 15 signal 6 } 
	{ LSTM_o_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ LSTM_o_V_we0 sc_out sc_logic 1 signal 6 } 
	{ LSTM_o_V_d0 sc_out sc_lv 16 signal 6 } 
	{ LSTM_o_V_q0 sc_in sc_lv 16 signal 6 } 
	{ LSTM_o_V_offset sc_in sc_lv 7 signal 7 } 
	{ LSTM_cache_V_address0 sc_out sc_lv 18 signal 8 } 
	{ LSTM_cache_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ LSTM_cache_V_q0 sc_in sc_lv 16 signal 8 } 
	{ LSTM_cache_V_address1 sc_out sc_lv 18 signal 8 } 
	{ LSTM_cache_V_ce1 sc_out sc_logic 1 signal 8 } 
	{ LSTM_cache_V_q1 sc_in sc_lv 16 signal 8 } 
	{ LSTM_cache_V_offset sc_in sc_lv 7 signal 9 } 
	{ flag sc_in sc_lv 8 signal 10 } 
	{ t sc_in sc_lv 7 signal 11 } 
	{ dout_V_address0 sc_out sc_lv 16 signal 12 } 
	{ dout_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ dout_V_we0 sc_out sc_logic 1 signal 12 } 
	{ dout_V_d0 sc_out sc_lv 16 signal 12 } 
	{ dout_V_q0 sc_in sc_lv 16 signal 12 } 
	{ dh_V_address0 sc_out sc_lv 9 signal 13 } 
	{ dh_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ dh_V_we0 sc_out sc_logic 1 signal 13 } 
	{ dh_V_d0 sc_out sc_lv 16 signal 13 } 
	{ dh_V_q0 sc_in sc_lv 16 signal 13 } 
	{ dh_V_address1 sc_out sc_lv 9 signal 13 } 
	{ dh_V_ce1 sc_out sc_logic 1 signal 13 } 
	{ dh_V_we1 sc_out sc_logic 1 signal 13 } 
	{ dh_V_d1 sc_out sc_lv 16 signal 13 } 
	{ dh_V_q1 sc_in sc_lv 16 signal 13 } 
	{ hs_V_address0 sc_out sc_lv 16 signal 14 } 
	{ hs_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ hs_V_q0 sc_in sc_lv 16 signal 14 } 
	{ dc_next_V_address0 sc_out sc_lv 9 signal 15 } 
	{ dc_next_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ dc_next_V_q0 sc_in sc_lv 16 signal 15 } 
	{ dc_next_V_address1 sc_out sc_lv 9 signal 15 } 
	{ dc_next_V_ce1 sc_out sc_logic 1 signal 15 } 
	{ dc_next_V_we1 sc_out sc_logic 1 signal 15 } 
	{ dc_next_V_d1 sc_out sc_lv 16 signal 15 } 
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
	{ gradswxf_V_address0 sc_out sc_lv 17 signal 24 } 
	{ gradswxf_V_ce0 sc_out sc_logic 1 signal 24 } 
	{ gradswxf_V_we0 sc_out sc_logic 1 signal 24 } 
	{ gradswxf_V_d0 sc_out sc_lv 16 signal 24 } 
	{ gradswxf_V_q0 sc_in sc_lv 16 signal 24 } 
	{ gradswxf_V_address1 sc_out sc_lv 17 signal 24 } 
	{ gradswxf_V_ce1 sc_out sc_logic 1 signal 24 } 
	{ gradswxf_V_we1 sc_out sc_logic 1 signal 24 } 
	{ gradswxf_V_d1 sc_out sc_lv 16 signal 24 } 
	{ gradswxg_V_address0 sc_out sc_lv 17 signal 25 } 
	{ gradswxg_V_ce0 sc_out sc_logic 1 signal 25 } 
	{ gradswxg_V_we0 sc_out sc_logic 1 signal 25 } 
	{ gradswxg_V_d0 sc_out sc_lv 16 signal 25 } 
	{ gradswxg_V_q0 sc_in sc_lv 16 signal 25 } 
	{ gradswxg_V_address1 sc_out sc_lv 17 signal 25 } 
	{ gradswxg_V_ce1 sc_out sc_logic 1 signal 25 } 
	{ gradswxg_V_we1 sc_out sc_logic 1 signal 25 } 
	{ gradswxg_V_d1 sc_out sc_lv 16 signal 25 } 
	{ gradswxi_V_address0 sc_out sc_lv 17 signal 26 } 
	{ gradswxi_V_ce0 sc_out sc_logic 1 signal 26 } 
	{ gradswxi_V_we0 sc_out sc_logic 1 signal 26 } 
	{ gradswxi_V_d0 sc_out sc_lv 16 signal 26 } 
	{ gradswxi_V_q0 sc_in sc_lv 16 signal 26 } 
	{ gradswxi_V_address1 sc_out sc_lv 17 signal 26 } 
	{ gradswxi_V_ce1 sc_out sc_logic 1 signal 26 } 
	{ gradswxi_V_we1 sc_out sc_logic 1 signal 26 } 
	{ gradswxi_V_d1 sc_out sc_lv 16 signal 26 } 
	{ gradswxo_V_address0 sc_out sc_lv 17 signal 27 } 
	{ gradswxo_V_ce0 sc_out sc_logic 1 signal 27 } 
	{ gradswxo_V_we0 sc_out sc_logic 1 signal 27 } 
	{ gradswxo_V_d0 sc_out sc_lv 16 signal 27 } 
	{ gradswxo_V_q0 sc_in sc_lv 16 signal 27 } 
	{ gradswxo_V_address1 sc_out sc_lv 17 signal 27 } 
	{ gradswxo_V_ce1 sc_out sc_logic 1 signal 27 } 
	{ gradswxo_V_we1 sc_out sc_logic 1 signal 27 } 
	{ gradswxo_V_d1 sc_out sc_lv 16 signal 27 } 
	{ gradswhf_V_address0 sc_out sc_lv 17 signal 28 } 
	{ gradswhf_V_ce0 sc_out sc_logic 1 signal 28 } 
	{ gradswhf_V_we0 sc_out sc_logic 1 signal 28 } 
	{ gradswhf_V_d0 sc_out sc_lv 16 signal 28 } 
	{ gradswhf_V_q0 sc_in sc_lv 16 signal 28 } 
	{ gradswhf_V_address1 sc_out sc_lv 17 signal 28 } 
	{ gradswhf_V_ce1 sc_out sc_logic 1 signal 28 } 
	{ gradswhf_V_we1 sc_out sc_logic 1 signal 28 } 
	{ gradswhf_V_d1 sc_out sc_lv 16 signal 28 } 
	{ gradswhg_V_address0 sc_out sc_lv 17 signal 29 } 
	{ gradswhg_V_ce0 sc_out sc_logic 1 signal 29 } 
	{ gradswhg_V_we0 sc_out sc_logic 1 signal 29 } 
	{ gradswhg_V_d0 sc_out sc_lv 16 signal 29 } 
	{ gradswhg_V_q0 sc_in sc_lv 16 signal 29 } 
	{ gradswhg_V_address1 sc_out sc_lv 17 signal 29 } 
	{ gradswhg_V_ce1 sc_out sc_logic 1 signal 29 } 
	{ gradswhg_V_we1 sc_out sc_logic 1 signal 29 } 
	{ gradswhg_V_d1 sc_out sc_lv 16 signal 29 } 
	{ gradswhi_V_address0 sc_out sc_lv 17 signal 30 } 
	{ gradswhi_V_ce0 sc_out sc_logic 1 signal 30 } 
	{ gradswhi_V_we0 sc_out sc_logic 1 signal 30 } 
	{ gradswhi_V_d0 sc_out sc_lv 16 signal 30 } 
	{ gradswhi_V_q0 sc_in sc_lv 16 signal 30 } 
	{ gradswhi_V_address1 sc_out sc_lv 17 signal 30 } 
	{ gradswhi_V_ce1 sc_out sc_logic 1 signal 30 } 
	{ gradswhi_V_we1 sc_out sc_logic 1 signal 30 } 
	{ gradswhi_V_d1 sc_out sc_lv 16 signal 30 } 
	{ gradswho_V_address0 sc_out sc_lv 17 signal 31 } 
	{ gradswho_V_ce0 sc_out sc_logic 1 signal 31 } 
	{ gradswho_V_we0 sc_out sc_logic 1 signal 31 } 
	{ gradswho_V_d0 sc_out sc_lv 16 signal 31 } 
	{ gradswho_V_q0 sc_in sc_lv 16 signal 31 } 
	{ gradswho_V_address1 sc_out sc_lv 17 signal 31 } 
	{ gradswho_V_ce1 sc_out sc_logic 1 signal 31 } 
	{ gradswho_V_we1 sc_out sc_logic 1 signal 31 } 
	{ gradswho_V_d1 sc_out sc_lv 16 signal 31 } 
	{ gradsbf_V_address0 sc_out sc_lv 9 signal 32 } 
	{ gradsbf_V_ce0 sc_out sc_logic 1 signal 32 } 
	{ gradsbf_V_we0 sc_out sc_logic 1 signal 32 } 
	{ gradsbf_V_d0 sc_out sc_lv 16 signal 32 } 
	{ gradsbf_V_q0 sc_in sc_lv 16 signal 32 } 
	{ gradsbg_V_address0 sc_out sc_lv 9 signal 33 } 
	{ gradsbg_V_ce0 sc_out sc_logic 1 signal 33 } 
	{ gradsbg_V_we0 sc_out sc_logic 1 signal 33 } 
	{ gradsbg_V_d0 sc_out sc_lv 16 signal 33 } 
	{ gradsbg_V_q0 sc_in sc_lv 16 signal 33 } 
	{ gradsbi_V_address0 sc_out sc_lv 9 signal 34 } 
	{ gradsbi_V_ce0 sc_out sc_logic 1 signal 34 } 
	{ gradsbi_V_we0 sc_out sc_logic 1 signal 34 } 
	{ gradsbi_V_d0 sc_out sc_lv 16 signal 34 } 
	{ gradsbi_V_q0 sc_in sc_lv 16 signal 34 } 
	{ gradsbo_V_address0 sc_out sc_lv 9 signal 35 } 
	{ gradsbo_V_ce0 sc_out sc_logic 1 signal 35 } 
	{ gradsbo_V_we0 sc_out sc_logic 1 signal 35 } 
	{ gradsbo_V_d0 sc_out sc_lv 16 signal 35 } 
	{ gradsbo_V_q0 sc_in sc_lv 16 signal 35 } 
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
 	{ "name": "LSTM_f_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LSTM_f_V_offset", "role": "default" }} , 
 	{ "name": "LSTM_g_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "LSTM_g_V", "role": "address0" }} , 
 	{ "name": "LSTM_g_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_g_V", "role": "ce0" }} , 
 	{ "name": "LSTM_g_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_g_V", "role": "we0" }} , 
 	{ "name": "LSTM_g_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_g_V", "role": "d0" }} , 
 	{ "name": "LSTM_g_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_g_V", "role": "q0" }} , 
 	{ "name": "LSTM_g_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LSTM_g_V_offset", "role": "default" }} , 
 	{ "name": "LSTM_i_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "LSTM_i_V", "role": "address0" }} , 
 	{ "name": "LSTM_i_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_i_V", "role": "ce0" }} , 
 	{ "name": "LSTM_i_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_i_V", "role": "we0" }} , 
 	{ "name": "LSTM_i_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_i_V", "role": "d0" }} , 
 	{ "name": "LSTM_i_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_i_V", "role": "q0" }} , 
 	{ "name": "LSTM_i_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LSTM_i_V_offset", "role": "default" }} , 
 	{ "name": "LSTM_o_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "LSTM_o_V", "role": "address0" }} , 
 	{ "name": "LSTM_o_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_o_V", "role": "ce0" }} , 
 	{ "name": "LSTM_o_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_o_V", "role": "we0" }} , 
 	{ "name": "LSTM_o_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_o_V", "role": "d0" }} , 
 	{ "name": "LSTM_o_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_o_V", "role": "q0" }} , 
 	{ "name": "LSTM_o_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LSTM_o_V_offset", "role": "default" }} , 
 	{ "name": "LSTM_cache_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "LSTM_cache_V", "role": "address0" }} , 
 	{ "name": "LSTM_cache_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_cache_V", "role": "ce0" }} , 
 	{ "name": "LSTM_cache_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_cache_V", "role": "q0" }} , 
 	{ "name": "LSTM_cache_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "LSTM_cache_V", "role": "address1" }} , 
 	{ "name": "LSTM_cache_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LSTM_cache_V", "role": "ce1" }} , 
 	{ "name": "LSTM_cache_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "LSTM_cache_V", "role": "q1" }} , 
 	{ "name": "LSTM_cache_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LSTM_cache_V_offset", "role": "default" }} , 
 	{ "name": "flag", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "flag", "role": "default" }} , 
 	{ "name": "t", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "t", "role": "default" }} , 
 	{ "name": "dout_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dout_V", "role": "address0" }} , 
 	{ "name": "dout_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout_V", "role": "ce0" }} , 
 	{ "name": "dout_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout_V", "role": "we0" }} , 
 	{ "name": "dout_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dout_V", "role": "d0" }} , 
 	{ "name": "dout_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dout_V", "role": "q0" }} , 
 	{ "name": "dh_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dh_V", "role": "address0" }} , 
 	{ "name": "dh_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dh_V", "role": "ce0" }} , 
 	{ "name": "dh_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dh_V", "role": "we0" }} , 
 	{ "name": "dh_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dh_V", "role": "d0" }} , 
 	{ "name": "dh_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dh_V", "role": "q0" }} , 
 	{ "name": "dh_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dh_V", "role": "address1" }} , 
 	{ "name": "dh_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dh_V", "role": "ce1" }} , 
 	{ "name": "dh_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dh_V", "role": "we1" }} , 
 	{ "name": "dh_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dh_V", "role": "d1" }} , 
 	{ "name": "dh_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dh_V", "role": "q1" }} , 
 	{ "name": "hs_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "hs_V", "role": "address0" }} , 
 	{ "name": "hs_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hs_V", "role": "ce0" }} , 
 	{ "name": "hs_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "hs_V", "role": "q0" }} , 
 	{ "name": "dc_next_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dc_next_V", "role": "address0" }} , 
 	{ "name": "dc_next_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dc_next_V", "role": "ce0" }} , 
 	{ "name": "dc_next_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dc_next_V", "role": "q0" }} , 
 	{ "name": "dc_next_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dc_next_V", "role": "address1" }} , 
 	{ "name": "dc_next_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dc_next_V", "role": "ce1" }} , 
 	{ "name": "dc_next_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dc_next_V", "role": "we1" }} , 
 	{ "name": "dc_next_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dc_next_V", "role": "d1" }} , 
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
 	{ "name": "gradswxf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "gradswxf_V", "role": "address0" }} , 
 	{ "name": "gradswxf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswxf_V", "role": "ce0" }} , 
 	{ "name": "gradswxf_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswxf_V", "role": "we0" }} , 
 	{ "name": "gradswxf_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswxf_V", "role": "d0" }} , 
 	{ "name": "gradswxf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswxf_V", "role": "q0" }} , 
 	{ "name": "gradswxf_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "gradswxf_V", "role": "address1" }} , 
 	{ "name": "gradswxf_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswxf_V", "role": "ce1" }} , 
 	{ "name": "gradswxf_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswxf_V", "role": "we1" }} , 
 	{ "name": "gradswxf_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswxf_V", "role": "d1" }} , 
 	{ "name": "gradswxg_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "gradswxg_V", "role": "address0" }} , 
 	{ "name": "gradswxg_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswxg_V", "role": "ce0" }} , 
 	{ "name": "gradswxg_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswxg_V", "role": "we0" }} , 
 	{ "name": "gradswxg_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswxg_V", "role": "d0" }} , 
 	{ "name": "gradswxg_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswxg_V", "role": "q0" }} , 
 	{ "name": "gradswxg_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "gradswxg_V", "role": "address1" }} , 
 	{ "name": "gradswxg_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswxg_V", "role": "ce1" }} , 
 	{ "name": "gradswxg_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswxg_V", "role": "we1" }} , 
 	{ "name": "gradswxg_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswxg_V", "role": "d1" }} , 
 	{ "name": "gradswxi_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "gradswxi_V", "role": "address0" }} , 
 	{ "name": "gradswxi_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswxi_V", "role": "ce0" }} , 
 	{ "name": "gradswxi_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswxi_V", "role": "we0" }} , 
 	{ "name": "gradswxi_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswxi_V", "role": "d0" }} , 
 	{ "name": "gradswxi_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswxi_V", "role": "q0" }} , 
 	{ "name": "gradswxi_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "gradswxi_V", "role": "address1" }} , 
 	{ "name": "gradswxi_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswxi_V", "role": "ce1" }} , 
 	{ "name": "gradswxi_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswxi_V", "role": "we1" }} , 
 	{ "name": "gradswxi_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswxi_V", "role": "d1" }} , 
 	{ "name": "gradswxo_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "gradswxo_V", "role": "address0" }} , 
 	{ "name": "gradswxo_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswxo_V", "role": "ce0" }} , 
 	{ "name": "gradswxo_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswxo_V", "role": "we0" }} , 
 	{ "name": "gradswxo_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswxo_V", "role": "d0" }} , 
 	{ "name": "gradswxo_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswxo_V", "role": "q0" }} , 
 	{ "name": "gradswxo_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "gradswxo_V", "role": "address1" }} , 
 	{ "name": "gradswxo_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswxo_V", "role": "ce1" }} , 
 	{ "name": "gradswxo_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswxo_V", "role": "we1" }} , 
 	{ "name": "gradswxo_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswxo_V", "role": "d1" }} , 
 	{ "name": "gradswhf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "gradswhf_V", "role": "address0" }} , 
 	{ "name": "gradswhf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswhf_V", "role": "ce0" }} , 
 	{ "name": "gradswhf_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswhf_V", "role": "we0" }} , 
 	{ "name": "gradswhf_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswhf_V", "role": "d0" }} , 
 	{ "name": "gradswhf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswhf_V", "role": "q0" }} , 
 	{ "name": "gradswhf_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "gradswhf_V", "role": "address1" }} , 
 	{ "name": "gradswhf_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswhf_V", "role": "ce1" }} , 
 	{ "name": "gradswhf_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswhf_V", "role": "we1" }} , 
 	{ "name": "gradswhf_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswhf_V", "role": "d1" }} , 
 	{ "name": "gradswhg_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "gradswhg_V", "role": "address0" }} , 
 	{ "name": "gradswhg_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswhg_V", "role": "ce0" }} , 
 	{ "name": "gradswhg_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswhg_V", "role": "we0" }} , 
 	{ "name": "gradswhg_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswhg_V", "role": "d0" }} , 
 	{ "name": "gradswhg_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswhg_V", "role": "q0" }} , 
 	{ "name": "gradswhg_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "gradswhg_V", "role": "address1" }} , 
 	{ "name": "gradswhg_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswhg_V", "role": "ce1" }} , 
 	{ "name": "gradswhg_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswhg_V", "role": "we1" }} , 
 	{ "name": "gradswhg_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswhg_V", "role": "d1" }} , 
 	{ "name": "gradswhi_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "gradswhi_V", "role": "address0" }} , 
 	{ "name": "gradswhi_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswhi_V", "role": "ce0" }} , 
 	{ "name": "gradswhi_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswhi_V", "role": "we0" }} , 
 	{ "name": "gradswhi_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswhi_V", "role": "d0" }} , 
 	{ "name": "gradswhi_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswhi_V", "role": "q0" }} , 
 	{ "name": "gradswhi_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "gradswhi_V", "role": "address1" }} , 
 	{ "name": "gradswhi_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswhi_V", "role": "ce1" }} , 
 	{ "name": "gradswhi_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswhi_V", "role": "we1" }} , 
 	{ "name": "gradswhi_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswhi_V", "role": "d1" }} , 
 	{ "name": "gradswho_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "gradswho_V", "role": "address0" }} , 
 	{ "name": "gradswho_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswho_V", "role": "ce0" }} , 
 	{ "name": "gradswho_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswho_V", "role": "we0" }} , 
 	{ "name": "gradswho_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswho_V", "role": "d0" }} , 
 	{ "name": "gradswho_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswho_V", "role": "q0" }} , 
 	{ "name": "gradswho_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "gradswho_V", "role": "address1" }} , 
 	{ "name": "gradswho_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswho_V", "role": "ce1" }} , 
 	{ "name": "gradswho_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradswho_V", "role": "we1" }} , 
 	{ "name": "gradswho_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradswho_V", "role": "d1" }} , 
 	{ "name": "gradsbf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gradsbf_V", "role": "address0" }} , 
 	{ "name": "gradsbf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradsbf_V", "role": "ce0" }} , 
 	{ "name": "gradsbf_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradsbf_V", "role": "we0" }} , 
 	{ "name": "gradsbf_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradsbf_V", "role": "d0" }} , 
 	{ "name": "gradsbf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradsbf_V", "role": "q0" }} , 
 	{ "name": "gradsbg_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gradsbg_V", "role": "address0" }} , 
 	{ "name": "gradsbg_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradsbg_V", "role": "ce0" }} , 
 	{ "name": "gradsbg_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradsbg_V", "role": "we0" }} , 
 	{ "name": "gradsbg_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradsbg_V", "role": "d0" }} , 
 	{ "name": "gradsbg_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradsbg_V", "role": "q0" }} , 
 	{ "name": "gradsbi_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gradsbi_V", "role": "address0" }} , 
 	{ "name": "gradsbi_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradsbi_V", "role": "ce0" }} , 
 	{ "name": "gradsbi_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradsbi_V", "role": "we0" }} , 
 	{ "name": "gradsbi_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradsbi_V", "role": "d0" }} , 
 	{ "name": "gradsbi_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradsbi_V", "role": "q0" }} , 
 	{ "name": "gradsbo_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gradsbo_V", "role": "address0" }} , 
 	{ "name": "gradsbo_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradsbo_V", "role": "ce0" }} , 
 	{ "name": "gradsbo_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradsbo_V", "role": "we0" }} , 
 	{ "name": "gradsbo_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradsbo_V", "role": "d0" }} , 
 	{ "name": "gradsbo_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradsbo_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61"],
		"CDFG" : "backward",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "622861", "EstimateLatencyMax" : "622861",
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
			{"Name" : "LSTM_cache_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "LSTM_cache_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "flag", "Type" : "None", "Direction" : "I"},
			{"Name" : "t", "Type" : "None", "Direction" : "I"},
			{"Name" : "dout_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dh_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "hs_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dc_next_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "wxf_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wxg_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wxi_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wxo_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "whf_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "whg_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "whi_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "who_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "gradswxf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gradswxg_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gradswxi_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gradswxo_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gradswhf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gradswhg_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gradswhi_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gradswho_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gradsbf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gradsbg_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gradsbi_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gradsbo_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_generic_tanh_double_s_fu_1360", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_generic_tanh_double_s_fu_1360", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_generic_tanh_double_s_fu_1360", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.di_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.df_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dg_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.do_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_prev_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_prev_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_next_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dh_next_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360", "Parent" : "0", "Child" : ["11", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
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
					{"ID" : "11", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87", "Parent" : "10", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19"],
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.kerneldl_mul_72ns_13s_84_5_1_U1", "Parent" : "11"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.kerneldl_mul_36ns_43ns_79_4_1_U2", "Parent" : "11"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.kerneldl_mul_44ns_49ns_93_5_1_U3", "Parent" : "11"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.kerneldl_mul_50ns_50ns_100_5_1_U4", "Parent" : "11"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.kerneldl_mac_muladd_16ns_16s_19s_31_4_1_U5", "Parent" : "11"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U15", "Parent" : "10"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.kerneldl_dsub_64ns_64ns_64_8_full_dsp_1_U16", "Parent" : "10"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U17", "Parent" : "10"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U18", "Parent" : "10"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U19", "Parent" : "10"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.kerneldl_dsub_64ns_64ns_64_8_full_dsp_1_U20", "Parent" : "10"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.kerneldl_dmul_64ns_64ns_64_8_max_dsp_1_U21", "Parent" : "10"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.kerneldl_ddiv_64ns_64ns_64_31_1_U22", "Parent" : "10"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_1360.kerneldl_dcmp_64ns_64ns_1_2_1_U23", "Parent" : "10"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fpext_32ns_64_2_1_U30", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_32s_32s_62_4_1_U31", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_16s_32s_48_4_1_U32", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_17s_48s_62_5_1_U33", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_16s_32s_48_4_1_U34", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_16s_32s_48_4_1_U35", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_32s_32s_62_4_1_U36", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_17s_48s_62_5_1_U37", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_17s_48s_62_5_1_U38", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U39", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mac_mulsub_16s_16s_26ns_32_4_1_U40", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U41", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U42", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U43", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U44", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U45", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mac_mulsub_16s_16s_26ns_32_4_1_U46", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U47", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U48", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U49", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U50", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U51", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U52", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U53", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U54", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U55", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U56", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U57", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U58", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U59", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U60", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U61", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_mul_mul_16s_16s_32_4_1_U62", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	backward {
		LSTM_f_V {Type IO LastRead 116 FirstWrite 4}
		LSTM_f_V_offset {Type I LastRead 0 FirstWrite -1}
		LSTM_g_V {Type IO LastRead 116 FirstWrite 4}
		LSTM_g_V_offset {Type I LastRead 0 FirstWrite -1}
		LSTM_i_V {Type IO LastRead 116 FirstWrite 3}
		LSTM_i_V_offset {Type I LastRead 0 FirstWrite -1}
		LSTM_o_V {Type IO LastRead 107 FirstWrite 5}
		LSTM_o_V_offset {Type I LastRead 0 FirstWrite -1}
		LSTM_cache_V {Type I LastRead 5 FirstWrite -1}
		LSTM_cache_V_offset {Type I LastRead 0 FirstWrite -1}
		flag {Type I LastRead 0 FirstWrite -1}
		t {Type I LastRead 0 FirstWrite -1}
		dout_V {Type IO LastRead 12 FirstWrite 14}
		dh_V {Type IO LastRead 14 FirstWrite 1}
		hs_V {Type I LastRead 2 FirstWrite -1}
		dc_next_V {Type IO LastRead 115 FirstWrite 121}
		wxf_V {Type I LastRead 7 FirstWrite -1}
		wxg_V {Type I LastRead 7 FirstWrite -1}
		wxi_V {Type I LastRead 7 FirstWrite -1}
		wxo_V {Type I LastRead 7 FirstWrite -1}
		whf_V {Type I LastRead 7 FirstWrite -1}
		whg_V {Type I LastRead 7 FirstWrite -1}
		whi_V {Type I LastRead 7 FirstWrite -1}
		who_V {Type I LastRead 7 FirstWrite -1}
		gradswxf_V {Type IO LastRead 9 FirstWrite 12}
		gradswxg_V {Type IO LastRead 9 FirstWrite 12}
		gradswxi_V {Type IO LastRead 9 FirstWrite 12}
		gradswxo_V {Type IO LastRead 9 FirstWrite 12}
		gradswhf_V {Type IO LastRead 9 FirstWrite 13}
		gradswhg_V {Type IO LastRead 9 FirstWrite 13}
		gradswhi_V {Type IO LastRead 9 FirstWrite 13}
		gradswho_V {Type IO LastRead 9 FirstWrite 13}
		gradsbf_V {Type IO LastRead 8 FirstWrite 10}
		gradsbg_V {Type IO LastRead 11 FirstWrite 13}
		gradsbi_V {Type IO LastRead 14 FirstWrite 16}
		gradsbo_V {Type IO LastRead 17 FirstWrite 19}
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
	{"Name" : "Latency", "Min" : "622861", "Max" : "622861"}
	, {"Name" : "Interval", "Min" : "622861", "Max" : "622861"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
]}

set Spec2ImplPortList { 
	LSTM_f_V { ap_memory {  { LSTM_f_V_address0 mem_address 1 15 }  { LSTM_f_V_ce0 mem_ce 1 1 }  { LSTM_f_V_we0 mem_we 1 1 }  { LSTM_f_V_d0 mem_din 1 16 }  { LSTM_f_V_q0 mem_dout 0 16 } } }
	LSTM_f_V_offset { ap_none {  { LSTM_f_V_offset in_data 0 7 } } }
	LSTM_g_V { ap_memory {  { LSTM_g_V_address0 mem_address 1 15 }  { LSTM_g_V_ce0 mem_ce 1 1 }  { LSTM_g_V_we0 mem_we 1 1 }  { LSTM_g_V_d0 mem_din 1 16 }  { LSTM_g_V_q0 mem_dout 0 16 } } }
	LSTM_g_V_offset { ap_none {  { LSTM_g_V_offset in_data 0 7 } } }
	LSTM_i_V { ap_memory {  { LSTM_i_V_address0 mem_address 1 15 }  { LSTM_i_V_ce0 mem_ce 1 1 }  { LSTM_i_V_we0 mem_we 1 1 }  { LSTM_i_V_d0 mem_din 1 16 }  { LSTM_i_V_q0 mem_dout 0 16 } } }
	LSTM_i_V_offset { ap_none {  { LSTM_i_V_offset in_data 0 7 } } }
	LSTM_o_V { ap_memory {  { LSTM_o_V_address0 mem_address 1 15 }  { LSTM_o_V_ce0 mem_ce 1 1 }  { LSTM_o_V_we0 mem_we 1 1 }  { LSTM_o_V_d0 mem_din 1 16 }  { LSTM_o_V_q0 mem_dout 0 16 } } }
	LSTM_o_V_offset { ap_none {  { LSTM_o_V_offset in_data 0 7 } } }
	LSTM_cache_V { ap_memory {  { LSTM_cache_V_address0 mem_address 1 18 }  { LSTM_cache_V_ce0 mem_ce 1 1 }  { LSTM_cache_V_q0 mem_dout 0 16 }  { LSTM_cache_V_address1 MemPortADDR2 1 18 }  { LSTM_cache_V_ce1 MemPortCE2 1 1 }  { LSTM_cache_V_q1 MemPortDOUT2 0 16 } } }
	LSTM_cache_V_offset { ap_none {  { LSTM_cache_V_offset in_data 0 7 } } }
	flag { ap_none {  { flag in_data 0 8 } } }
	t { ap_none {  { t in_data 0 7 } } }
	dout_V { ap_memory {  { dout_V_address0 mem_address 1 16 }  { dout_V_ce0 mem_ce 1 1 }  { dout_V_we0 mem_we 1 1 }  { dout_V_d0 mem_din 1 16 }  { dout_V_q0 mem_dout 0 16 } } }
	dh_V { ap_memory {  { dh_V_address0 mem_address 1 9 }  { dh_V_ce0 mem_ce 1 1 }  { dh_V_we0 mem_we 1 1 }  { dh_V_d0 mem_din 1 16 }  { dh_V_q0 mem_dout 0 16 }  { dh_V_address1 MemPortADDR2 1 9 }  { dh_V_ce1 MemPortCE2 1 1 }  { dh_V_we1 MemPortWE2 1 1 }  { dh_V_d1 MemPortDIN2 1 16 }  { dh_V_q1 MemPortDOUT2 0 16 } } }
	hs_V { ap_memory {  { hs_V_address0 mem_address 1 16 }  { hs_V_ce0 mem_ce 1 1 }  { hs_V_q0 mem_dout 0 16 } } }
	dc_next_V { ap_memory {  { dc_next_V_address0 mem_address 1 9 }  { dc_next_V_ce0 mem_ce 1 1 }  { dc_next_V_q0 mem_dout 0 16 }  { dc_next_V_address1 MemPortADDR2 1 9 }  { dc_next_V_ce1 MemPortCE2 1 1 }  { dc_next_V_we1 MemPortWE2 1 1 }  { dc_next_V_d1 MemPortDIN2 1 16 } } }
	wxf_V { ap_memory {  { wxf_V_address0 mem_address 1 17 }  { wxf_V_ce0 mem_ce 1 1 }  { wxf_V_q0 mem_dout 0 16 } } }
	wxg_V { ap_memory {  { wxg_V_address0 mem_address 1 17 }  { wxg_V_ce0 mem_ce 1 1 }  { wxg_V_q0 mem_dout 0 16 } } }
	wxi_V { ap_memory {  { wxi_V_address0 mem_address 1 17 }  { wxi_V_ce0 mem_ce 1 1 }  { wxi_V_q0 mem_dout 0 16 } } }
	wxo_V { ap_memory {  { wxo_V_address0 mem_address 1 17 }  { wxo_V_ce0 mem_ce 1 1 }  { wxo_V_q0 mem_dout 0 16 } } }
	whf_V { ap_memory {  { whf_V_address0 mem_address 1 17 }  { whf_V_ce0 mem_ce 1 1 }  { whf_V_q0 mem_dout 0 16 } } }
	whg_V { ap_memory {  { whg_V_address0 mem_address 1 17 }  { whg_V_ce0 mem_ce 1 1 }  { whg_V_q0 mem_dout 0 16 } } }
	whi_V { ap_memory {  { whi_V_address0 mem_address 1 17 }  { whi_V_ce0 mem_ce 1 1 }  { whi_V_q0 mem_dout 0 16 } } }
	who_V { ap_memory {  { who_V_address0 mem_address 1 17 }  { who_V_ce0 mem_ce 1 1 }  { who_V_q0 mem_dout 0 16 } } }
	gradswxf_V { ap_memory {  { gradswxf_V_address0 mem_address 1 17 }  { gradswxf_V_ce0 mem_ce 1 1 }  { gradswxf_V_we0 mem_we 1 1 }  { gradswxf_V_d0 mem_din 1 16 }  { gradswxf_V_q0 mem_dout 0 16 }  { gradswxf_V_address1 MemPortADDR2 1 17 }  { gradswxf_V_ce1 MemPortCE2 1 1 }  { gradswxf_V_we1 MemPortWE2 1 1 }  { gradswxf_V_d1 MemPortDIN2 1 16 } } }
	gradswxg_V { ap_memory {  { gradswxg_V_address0 mem_address 1 17 }  { gradswxg_V_ce0 mem_ce 1 1 }  { gradswxg_V_we0 mem_we 1 1 }  { gradswxg_V_d0 mem_din 1 16 }  { gradswxg_V_q0 mem_dout 0 16 }  { gradswxg_V_address1 MemPortADDR2 1 17 }  { gradswxg_V_ce1 MemPortCE2 1 1 }  { gradswxg_V_we1 MemPortWE2 1 1 }  { gradswxg_V_d1 MemPortDIN2 1 16 } } }
	gradswxi_V { ap_memory {  { gradswxi_V_address0 mem_address 1 17 }  { gradswxi_V_ce0 mem_ce 1 1 }  { gradswxi_V_we0 mem_we 1 1 }  { gradswxi_V_d0 mem_din 1 16 }  { gradswxi_V_q0 mem_dout 0 16 }  { gradswxi_V_address1 MemPortADDR2 1 17 }  { gradswxi_V_ce1 MemPortCE2 1 1 }  { gradswxi_V_we1 MemPortWE2 1 1 }  { gradswxi_V_d1 MemPortDIN2 1 16 } } }
	gradswxo_V { ap_memory {  { gradswxo_V_address0 mem_address 1 17 }  { gradswxo_V_ce0 mem_ce 1 1 }  { gradswxo_V_we0 mem_we 1 1 }  { gradswxo_V_d0 mem_din 1 16 }  { gradswxo_V_q0 mem_dout 0 16 }  { gradswxo_V_address1 MemPortADDR2 1 17 }  { gradswxo_V_ce1 MemPortCE2 1 1 }  { gradswxo_V_we1 MemPortWE2 1 1 }  { gradswxo_V_d1 MemPortDIN2 1 16 } } }
	gradswhf_V { ap_memory {  { gradswhf_V_address0 mem_address 1 17 }  { gradswhf_V_ce0 mem_ce 1 1 }  { gradswhf_V_we0 mem_we 1 1 }  { gradswhf_V_d0 mem_din 1 16 }  { gradswhf_V_q0 mem_dout 0 16 }  { gradswhf_V_address1 MemPortADDR2 1 17 }  { gradswhf_V_ce1 MemPortCE2 1 1 }  { gradswhf_V_we1 MemPortWE2 1 1 }  { gradswhf_V_d1 MemPortDIN2 1 16 } } }
	gradswhg_V { ap_memory {  { gradswhg_V_address0 mem_address 1 17 }  { gradswhg_V_ce0 mem_ce 1 1 }  { gradswhg_V_we0 mem_we 1 1 }  { gradswhg_V_d0 mem_din 1 16 }  { gradswhg_V_q0 mem_dout 0 16 }  { gradswhg_V_address1 MemPortADDR2 1 17 }  { gradswhg_V_ce1 MemPortCE2 1 1 }  { gradswhg_V_we1 MemPortWE2 1 1 }  { gradswhg_V_d1 MemPortDIN2 1 16 } } }
	gradswhi_V { ap_memory {  { gradswhi_V_address0 mem_address 1 17 }  { gradswhi_V_ce0 mem_ce 1 1 }  { gradswhi_V_we0 mem_we 1 1 }  { gradswhi_V_d0 mem_din 1 16 }  { gradswhi_V_q0 mem_dout 0 16 }  { gradswhi_V_address1 MemPortADDR2 1 17 }  { gradswhi_V_ce1 MemPortCE2 1 1 }  { gradswhi_V_we1 MemPortWE2 1 1 }  { gradswhi_V_d1 MemPortDIN2 1 16 } } }
	gradswho_V { ap_memory {  { gradswho_V_address0 mem_address 1 17 }  { gradswho_V_ce0 mem_ce 1 1 }  { gradswho_V_we0 mem_we 1 1 }  { gradswho_V_d0 mem_din 1 16 }  { gradswho_V_q0 mem_dout 0 16 }  { gradswho_V_address1 MemPortADDR2 1 17 }  { gradswho_V_ce1 MemPortCE2 1 1 }  { gradswho_V_we1 MemPortWE2 1 1 }  { gradswho_V_d1 MemPortDIN2 1 16 } } }
	gradsbf_V { ap_memory {  { gradsbf_V_address0 mem_address 1 9 }  { gradsbf_V_ce0 mem_ce 1 1 }  { gradsbf_V_we0 mem_we 1 1 }  { gradsbf_V_d0 mem_din 1 16 }  { gradsbf_V_q0 mem_dout 0 16 } } }
	gradsbg_V { ap_memory {  { gradsbg_V_address0 mem_address 1 9 }  { gradsbg_V_ce0 mem_ce 1 1 }  { gradsbg_V_we0 mem_we 1 1 }  { gradsbg_V_d0 mem_din 1 16 }  { gradsbg_V_q0 mem_dout 0 16 } } }
	gradsbi_V { ap_memory {  { gradsbi_V_address0 mem_address 1 9 }  { gradsbi_V_ce0 mem_ce 1 1 }  { gradsbi_V_we0 mem_we 1 1 }  { gradsbi_V_d0 mem_din 1 16 }  { gradsbi_V_q0 mem_dout 0 16 } } }
	gradsbo_V { ap_memory {  { gradsbo_V_address0 mem_address 1 9 }  { gradsbo_V_ce0 mem_ce 1 1 }  { gradsbo_V_we0 mem_we 1 1 }  { gradsbo_V_d0 mem_din 1 16 }  { gradsbo_V_q0 mem_dout 0 16 } } }
}
