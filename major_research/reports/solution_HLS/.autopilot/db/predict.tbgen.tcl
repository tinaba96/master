set moduleName predict
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
set C_modelName {predict}
set C_modelType { void 0 }
set C_modelArgList {
	{ cnn_lstm_f_V int 16 regular {array 24320 { 2 0 } 1 1 }  }
	{ cnn_lstm_g_V int 16 regular {array 24320 { 2 0 } 1 1 }  }
	{ cnn_lstm_i_V int 16 regular {array 24320 { 2 0 } 1 1 }  }
	{ cnn_lstm_o_V int 16 regular {array 24320 { 2 2 } 1 1 }  }
	{ cnn_lstm_cache_V int 16 regular {array 194560 { 0 0 } 0 1 }  }
	{ cnn_lstm2_f_V int 16 regular {array 24320 { 2 0 } 1 1 }  }
	{ cnn_lstm2_g_V int 16 regular {array 24320 { 2 0 } 1 1 }  }
	{ cnn_lstm2_i_V int 16 regular {array 24320 { 2 0 } 1 1 }  }
	{ cnn_lstm2_o_V int 16 regular {array 24320 { 2 2 } 1 1 }  }
	{ cnn_lstm2_cache_V int 16 regular {array 194560 { 0 0 } 0 1 }  }
	{ x_V int 16 regular {array 24000 { 1 3 } 1 1 }  }
	{ y_V int 16 regular {array 48000 { 0 3 } 0 1 }  }
	{ wxf_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ wxg_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ wxi_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ wxo_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ whf_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ whg_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ whi_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ who_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ wxf2_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ wxg2_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ wxi2_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ wxo2_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ whf2_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ whg2_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ whi2_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ who2_V int 16 regular {array 102400 { 1 3 } 2 1 }  }
	{ bf_V int 16 regular {array 320 { 1 3 } 1 1 }  }
	{ bg_V int 16 regular {array 320 { 1 3 } 1 1 }  }
	{ bi_V int 16 regular {array 320 { 1 3 } 1 1 }  }
	{ bo_V int 16 regular {array 320 { 1 3 } 1 1 }  }
	{ bf2_V int 16 regular {array 320 { 1 3 } 1 1 }  }
	{ bg2_V int 16 regular {array 320 { 1 3 } 1 1 }  }
	{ bi2_V int 16 regular {array 320 { 1 3 } 1 1 }  }
	{ bo2_V int 16 regular {array 320 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cnn_lstm_f_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm_g_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm_i_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm_o_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm_cache_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cnn_lstm2_f_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm2_g_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm2_i_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm2_o_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm2_cache_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "y_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wxf_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wxg_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wxi_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wxo_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "whf_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "whg_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "whi_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "who_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wxf2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wxg2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wxi2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wxo2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "whf2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "whg2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "whi2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "who2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bf_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bg_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bi_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bo_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bf2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bg2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bi2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bo2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 175
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cnn_lstm_f_V_address0 sc_out sc_lv 15 signal 0 } 
	{ cnn_lstm_f_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ cnn_lstm_f_V_we0 sc_out sc_logic 1 signal 0 } 
	{ cnn_lstm_f_V_d0 sc_out sc_lv 16 signal 0 } 
	{ cnn_lstm_f_V_q0 sc_in sc_lv 16 signal 0 } 
	{ cnn_lstm_f_V_address1 sc_out sc_lv 15 signal 0 } 
	{ cnn_lstm_f_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ cnn_lstm_f_V_we1 sc_out sc_logic 1 signal 0 } 
	{ cnn_lstm_f_V_d1 sc_out sc_lv 16 signal 0 } 
	{ cnn_lstm_g_V_address0 sc_out sc_lv 15 signal 1 } 
	{ cnn_lstm_g_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ cnn_lstm_g_V_we0 sc_out sc_logic 1 signal 1 } 
	{ cnn_lstm_g_V_d0 sc_out sc_lv 16 signal 1 } 
	{ cnn_lstm_g_V_q0 sc_in sc_lv 16 signal 1 } 
	{ cnn_lstm_g_V_address1 sc_out sc_lv 15 signal 1 } 
	{ cnn_lstm_g_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ cnn_lstm_g_V_we1 sc_out sc_logic 1 signal 1 } 
	{ cnn_lstm_g_V_d1 sc_out sc_lv 16 signal 1 } 
	{ cnn_lstm_i_V_address0 sc_out sc_lv 15 signal 2 } 
	{ cnn_lstm_i_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ cnn_lstm_i_V_we0 sc_out sc_logic 1 signal 2 } 
	{ cnn_lstm_i_V_d0 sc_out sc_lv 16 signal 2 } 
	{ cnn_lstm_i_V_q0 sc_in sc_lv 16 signal 2 } 
	{ cnn_lstm_i_V_address1 sc_out sc_lv 15 signal 2 } 
	{ cnn_lstm_i_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ cnn_lstm_i_V_we1 sc_out sc_logic 1 signal 2 } 
	{ cnn_lstm_i_V_d1 sc_out sc_lv 16 signal 2 } 
	{ cnn_lstm_o_V_address0 sc_out sc_lv 15 signal 3 } 
	{ cnn_lstm_o_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ cnn_lstm_o_V_we0 sc_out sc_logic 1 signal 3 } 
	{ cnn_lstm_o_V_d0 sc_out sc_lv 16 signal 3 } 
	{ cnn_lstm_o_V_q0 sc_in sc_lv 16 signal 3 } 
	{ cnn_lstm_o_V_address1 sc_out sc_lv 15 signal 3 } 
	{ cnn_lstm_o_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ cnn_lstm_o_V_we1 sc_out sc_logic 1 signal 3 } 
	{ cnn_lstm_o_V_d1 sc_out sc_lv 16 signal 3 } 
	{ cnn_lstm_o_V_q1 sc_in sc_lv 16 signal 3 } 
	{ cnn_lstm_cache_V_address0 sc_out sc_lv 18 signal 4 } 
	{ cnn_lstm_cache_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ cnn_lstm_cache_V_we0 sc_out sc_logic 1 signal 4 } 
	{ cnn_lstm_cache_V_d0 sc_out sc_lv 16 signal 4 } 
	{ cnn_lstm_cache_V_address1 sc_out sc_lv 18 signal 4 } 
	{ cnn_lstm_cache_V_ce1 sc_out sc_logic 1 signal 4 } 
	{ cnn_lstm_cache_V_we1 sc_out sc_logic 1 signal 4 } 
	{ cnn_lstm_cache_V_d1 sc_out sc_lv 16 signal 4 } 
	{ cnn_lstm2_f_V_address0 sc_out sc_lv 15 signal 5 } 
	{ cnn_lstm2_f_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ cnn_lstm2_f_V_we0 sc_out sc_logic 1 signal 5 } 
	{ cnn_lstm2_f_V_d0 sc_out sc_lv 16 signal 5 } 
	{ cnn_lstm2_f_V_q0 sc_in sc_lv 16 signal 5 } 
	{ cnn_lstm2_f_V_address1 sc_out sc_lv 15 signal 5 } 
	{ cnn_lstm2_f_V_ce1 sc_out sc_logic 1 signal 5 } 
	{ cnn_lstm2_f_V_we1 sc_out sc_logic 1 signal 5 } 
	{ cnn_lstm2_f_V_d1 sc_out sc_lv 16 signal 5 } 
	{ cnn_lstm2_g_V_address0 sc_out sc_lv 15 signal 6 } 
	{ cnn_lstm2_g_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ cnn_lstm2_g_V_we0 sc_out sc_logic 1 signal 6 } 
	{ cnn_lstm2_g_V_d0 sc_out sc_lv 16 signal 6 } 
	{ cnn_lstm2_g_V_q0 sc_in sc_lv 16 signal 6 } 
	{ cnn_lstm2_g_V_address1 sc_out sc_lv 15 signal 6 } 
	{ cnn_lstm2_g_V_ce1 sc_out sc_logic 1 signal 6 } 
	{ cnn_lstm2_g_V_we1 sc_out sc_logic 1 signal 6 } 
	{ cnn_lstm2_g_V_d1 sc_out sc_lv 16 signal 6 } 
	{ cnn_lstm2_i_V_address0 sc_out sc_lv 15 signal 7 } 
	{ cnn_lstm2_i_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ cnn_lstm2_i_V_we0 sc_out sc_logic 1 signal 7 } 
	{ cnn_lstm2_i_V_d0 sc_out sc_lv 16 signal 7 } 
	{ cnn_lstm2_i_V_q0 sc_in sc_lv 16 signal 7 } 
	{ cnn_lstm2_i_V_address1 sc_out sc_lv 15 signal 7 } 
	{ cnn_lstm2_i_V_ce1 sc_out sc_logic 1 signal 7 } 
	{ cnn_lstm2_i_V_we1 sc_out sc_logic 1 signal 7 } 
	{ cnn_lstm2_i_V_d1 sc_out sc_lv 16 signal 7 } 
	{ cnn_lstm2_o_V_address0 sc_out sc_lv 15 signal 8 } 
	{ cnn_lstm2_o_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ cnn_lstm2_o_V_we0 sc_out sc_logic 1 signal 8 } 
	{ cnn_lstm2_o_V_d0 sc_out sc_lv 16 signal 8 } 
	{ cnn_lstm2_o_V_q0 sc_in sc_lv 16 signal 8 } 
	{ cnn_lstm2_o_V_address1 sc_out sc_lv 15 signal 8 } 
	{ cnn_lstm2_o_V_ce1 sc_out sc_logic 1 signal 8 } 
	{ cnn_lstm2_o_V_we1 sc_out sc_logic 1 signal 8 } 
	{ cnn_lstm2_o_V_d1 sc_out sc_lv 16 signal 8 } 
	{ cnn_lstm2_o_V_q1 sc_in sc_lv 16 signal 8 } 
	{ cnn_lstm2_cache_V_address0 sc_out sc_lv 18 signal 9 } 
	{ cnn_lstm2_cache_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ cnn_lstm2_cache_V_we0 sc_out sc_logic 1 signal 9 } 
	{ cnn_lstm2_cache_V_d0 sc_out sc_lv 16 signal 9 } 
	{ cnn_lstm2_cache_V_address1 sc_out sc_lv 18 signal 9 } 
	{ cnn_lstm2_cache_V_ce1 sc_out sc_logic 1 signal 9 } 
	{ cnn_lstm2_cache_V_we1 sc_out sc_logic 1 signal 9 } 
	{ cnn_lstm2_cache_V_d1 sc_out sc_lv 16 signal 9 } 
	{ x_V_address0 sc_out sc_lv 15 signal 10 } 
	{ x_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ x_V_q0 sc_in sc_lv 16 signal 10 } 
	{ y_V_address0 sc_out sc_lv 16 signal 11 } 
	{ y_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ y_V_we0 sc_out sc_logic 1 signal 11 } 
	{ y_V_d0 sc_out sc_lv 16 signal 11 } 
	{ wxf_V_address0 sc_out sc_lv 17 signal 12 } 
	{ wxf_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ wxf_V_q0 sc_in sc_lv 16 signal 12 } 
	{ wxg_V_address0 sc_out sc_lv 17 signal 13 } 
	{ wxg_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ wxg_V_q0 sc_in sc_lv 16 signal 13 } 
	{ wxi_V_address0 sc_out sc_lv 17 signal 14 } 
	{ wxi_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ wxi_V_q0 sc_in sc_lv 16 signal 14 } 
	{ wxo_V_address0 sc_out sc_lv 17 signal 15 } 
	{ wxo_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ wxo_V_q0 sc_in sc_lv 16 signal 15 } 
	{ whf_V_address0 sc_out sc_lv 17 signal 16 } 
	{ whf_V_ce0 sc_out sc_logic 1 signal 16 } 
	{ whf_V_q0 sc_in sc_lv 16 signal 16 } 
	{ whg_V_address0 sc_out sc_lv 17 signal 17 } 
	{ whg_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ whg_V_q0 sc_in sc_lv 16 signal 17 } 
	{ whi_V_address0 sc_out sc_lv 17 signal 18 } 
	{ whi_V_ce0 sc_out sc_logic 1 signal 18 } 
	{ whi_V_q0 sc_in sc_lv 16 signal 18 } 
	{ who_V_address0 sc_out sc_lv 17 signal 19 } 
	{ who_V_ce0 sc_out sc_logic 1 signal 19 } 
	{ who_V_q0 sc_in sc_lv 16 signal 19 } 
	{ wxf2_V_address0 sc_out sc_lv 17 signal 20 } 
	{ wxf2_V_ce0 sc_out sc_logic 1 signal 20 } 
	{ wxf2_V_q0 sc_in sc_lv 16 signal 20 } 
	{ wxg2_V_address0 sc_out sc_lv 17 signal 21 } 
	{ wxg2_V_ce0 sc_out sc_logic 1 signal 21 } 
	{ wxg2_V_q0 sc_in sc_lv 16 signal 21 } 
	{ wxi2_V_address0 sc_out sc_lv 17 signal 22 } 
	{ wxi2_V_ce0 sc_out sc_logic 1 signal 22 } 
	{ wxi2_V_q0 sc_in sc_lv 16 signal 22 } 
	{ wxo2_V_address0 sc_out sc_lv 17 signal 23 } 
	{ wxo2_V_ce0 sc_out sc_logic 1 signal 23 } 
	{ wxo2_V_q0 sc_in sc_lv 16 signal 23 } 
	{ whf2_V_address0 sc_out sc_lv 17 signal 24 } 
	{ whf2_V_ce0 sc_out sc_logic 1 signal 24 } 
	{ whf2_V_q0 sc_in sc_lv 16 signal 24 } 
	{ whg2_V_address0 sc_out sc_lv 17 signal 25 } 
	{ whg2_V_ce0 sc_out sc_logic 1 signal 25 } 
	{ whg2_V_q0 sc_in sc_lv 16 signal 25 } 
	{ whi2_V_address0 sc_out sc_lv 17 signal 26 } 
	{ whi2_V_ce0 sc_out sc_logic 1 signal 26 } 
	{ whi2_V_q0 sc_in sc_lv 16 signal 26 } 
	{ who2_V_address0 sc_out sc_lv 17 signal 27 } 
	{ who2_V_ce0 sc_out sc_logic 1 signal 27 } 
	{ who2_V_q0 sc_in sc_lv 16 signal 27 } 
	{ bf_V_address0 sc_out sc_lv 9 signal 28 } 
	{ bf_V_ce0 sc_out sc_logic 1 signal 28 } 
	{ bf_V_q0 sc_in sc_lv 16 signal 28 } 
	{ bg_V_address0 sc_out sc_lv 9 signal 29 } 
	{ bg_V_ce0 sc_out sc_logic 1 signal 29 } 
	{ bg_V_q0 sc_in sc_lv 16 signal 29 } 
	{ bi_V_address0 sc_out sc_lv 9 signal 30 } 
	{ bi_V_ce0 sc_out sc_logic 1 signal 30 } 
	{ bi_V_q0 sc_in sc_lv 16 signal 30 } 
	{ bo_V_address0 sc_out sc_lv 9 signal 31 } 
	{ bo_V_ce0 sc_out sc_logic 1 signal 31 } 
	{ bo_V_q0 sc_in sc_lv 16 signal 31 } 
	{ bf2_V_address0 sc_out sc_lv 9 signal 32 } 
	{ bf2_V_ce0 sc_out sc_logic 1 signal 32 } 
	{ bf2_V_q0 sc_in sc_lv 16 signal 32 } 
	{ bg2_V_address0 sc_out sc_lv 9 signal 33 } 
	{ bg2_V_ce0 sc_out sc_logic 1 signal 33 } 
	{ bg2_V_q0 sc_in sc_lv 16 signal 33 } 
	{ bi2_V_address0 sc_out sc_lv 9 signal 34 } 
	{ bi2_V_ce0 sc_out sc_logic 1 signal 34 } 
	{ bi2_V_q0 sc_in sc_lv 16 signal 34 } 
	{ bo2_V_address0 sc_out sc_lv 9 signal 35 } 
	{ bo2_V_ce0 sc_out sc_logic 1 signal 35 } 
	{ bo2_V_q0 sc_in sc_lv 16 signal 35 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cnn_lstm_f_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm_f_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm_f_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_f_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm_f_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_f_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm_f_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_f_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm_f_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_f_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm_f_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm_f_V", "role": "address1" }} , 
 	{ "name": "cnn_lstm_f_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_f_V", "role": "ce1" }} , 
 	{ "name": "cnn_lstm_f_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_f_V", "role": "we1" }} , 
 	{ "name": "cnn_lstm_f_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_f_V", "role": "d1" }} , 
 	{ "name": "cnn_lstm_g_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm_g_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm_g_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_g_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm_g_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_g_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm_g_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_g_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm_g_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_g_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm_g_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm_g_V", "role": "address1" }} , 
 	{ "name": "cnn_lstm_g_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_g_V", "role": "ce1" }} , 
 	{ "name": "cnn_lstm_g_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_g_V", "role": "we1" }} , 
 	{ "name": "cnn_lstm_g_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_g_V", "role": "d1" }} , 
 	{ "name": "cnn_lstm_i_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm_i_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm_i_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_i_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm_i_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_i_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm_i_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_i_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm_i_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_i_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm_i_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm_i_V", "role": "address1" }} , 
 	{ "name": "cnn_lstm_i_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_i_V", "role": "ce1" }} , 
 	{ "name": "cnn_lstm_i_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_i_V", "role": "we1" }} , 
 	{ "name": "cnn_lstm_i_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_i_V", "role": "d1" }} , 
 	{ "name": "cnn_lstm_o_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm_o_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm_o_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_o_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm_o_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_o_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm_o_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_o_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm_o_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_o_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm_o_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm_o_V", "role": "address1" }} , 
 	{ "name": "cnn_lstm_o_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_o_V", "role": "ce1" }} , 
 	{ "name": "cnn_lstm_o_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_o_V", "role": "we1" }} , 
 	{ "name": "cnn_lstm_o_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_o_V", "role": "d1" }} , 
 	{ "name": "cnn_lstm_o_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_o_V", "role": "q1" }} , 
 	{ "name": "cnn_lstm_cache_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cnn_lstm_cache_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm_cache_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_cache_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm_cache_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_cache_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm_cache_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_cache_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm_cache_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cnn_lstm_cache_V", "role": "address1" }} , 
 	{ "name": "cnn_lstm_cache_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_cache_V", "role": "ce1" }} , 
 	{ "name": "cnn_lstm_cache_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_cache_V", "role": "we1" }} , 
 	{ "name": "cnn_lstm_cache_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_cache_V", "role": "d1" }} , 
 	{ "name": "cnn_lstm2_f_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm2_f_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm2_f_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_f_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm2_f_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_f_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm2_f_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_f_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm2_f_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_f_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm2_f_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm2_f_V", "role": "address1" }} , 
 	{ "name": "cnn_lstm2_f_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_f_V", "role": "ce1" }} , 
 	{ "name": "cnn_lstm2_f_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_f_V", "role": "we1" }} , 
 	{ "name": "cnn_lstm2_f_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_f_V", "role": "d1" }} , 
 	{ "name": "cnn_lstm2_g_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm2_g_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm2_g_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_g_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm2_g_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_g_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm2_g_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_g_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm2_g_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_g_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm2_g_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm2_g_V", "role": "address1" }} , 
 	{ "name": "cnn_lstm2_g_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_g_V", "role": "ce1" }} , 
 	{ "name": "cnn_lstm2_g_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_g_V", "role": "we1" }} , 
 	{ "name": "cnn_lstm2_g_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_g_V", "role": "d1" }} , 
 	{ "name": "cnn_lstm2_i_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm2_i_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm2_i_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_i_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm2_i_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_i_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm2_i_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_i_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm2_i_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_i_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm2_i_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm2_i_V", "role": "address1" }} , 
 	{ "name": "cnn_lstm2_i_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_i_V", "role": "ce1" }} , 
 	{ "name": "cnn_lstm2_i_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_i_V", "role": "we1" }} , 
 	{ "name": "cnn_lstm2_i_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_i_V", "role": "d1" }} , 
 	{ "name": "cnn_lstm2_o_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm2_o_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm2_o_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_o_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm2_o_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_o_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm2_o_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_o_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm2_o_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_o_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm2_o_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm2_o_V", "role": "address1" }} , 
 	{ "name": "cnn_lstm2_o_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_o_V", "role": "ce1" }} , 
 	{ "name": "cnn_lstm2_o_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_o_V", "role": "we1" }} , 
 	{ "name": "cnn_lstm2_o_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_o_V", "role": "d1" }} , 
 	{ "name": "cnn_lstm2_o_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_o_V", "role": "q1" }} , 
 	{ "name": "cnn_lstm2_cache_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cnn_lstm2_cache_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm2_cache_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_cache_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm2_cache_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_cache_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm2_cache_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_cache_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm2_cache_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cnn_lstm2_cache_V", "role": "address1" }} , 
 	{ "name": "cnn_lstm2_cache_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_cache_V", "role": "ce1" }} , 
 	{ "name": "cnn_lstm2_cache_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_cache_V", "role": "we1" }} , 
 	{ "name": "cnn_lstm2_cache_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_cache_V", "role": "d1" }} , 
 	{ "name": "x_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "x_V", "role": "address0" }} , 
 	{ "name": "x_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "ce0" }} , 
 	{ "name": "x_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "x_V", "role": "q0" }} , 
 	{ "name": "y_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y_V", "role": "address0" }} , 
 	{ "name": "y_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_V", "role": "ce0" }} , 
 	{ "name": "y_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_V", "role": "we0" }} , 
 	{ "name": "y_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y_V", "role": "d0" }} , 
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
 	{ "name": "wxf2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "wxf2_V", "role": "address0" }} , 
 	{ "name": "wxf2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wxf2_V", "role": "ce0" }} , 
 	{ "name": "wxf2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wxf2_V", "role": "q0" }} , 
 	{ "name": "wxg2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "wxg2_V", "role": "address0" }} , 
 	{ "name": "wxg2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wxg2_V", "role": "ce0" }} , 
 	{ "name": "wxg2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wxg2_V", "role": "q0" }} , 
 	{ "name": "wxi2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "wxi2_V", "role": "address0" }} , 
 	{ "name": "wxi2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wxi2_V", "role": "ce0" }} , 
 	{ "name": "wxi2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wxi2_V", "role": "q0" }} , 
 	{ "name": "wxo2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "wxo2_V", "role": "address0" }} , 
 	{ "name": "wxo2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wxo2_V", "role": "ce0" }} , 
 	{ "name": "wxo2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wxo2_V", "role": "q0" }} , 
 	{ "name": "whf2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "whf2_V", "role": "address0" }} , 
 	{ "name": "whf2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "whf2_V", "role": "ce0" }} , 
 	{ "name": "whf2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "whf2_V", "role": "q0" }} , 
 	{ "name": "whg2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "whg2_V", "role": "address0" }} , 
 	{ "name": "whg2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "whg2_V", "role": "ce0" }} , 
 	{ "name": "whg2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "whg2_V", "role": "q0" }} , 
 	{ "name": "whi2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "whi2_V", "role": "address0" }} , 
 	{ "name": "whi2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "whi2_V", "role": "ce0" }} , 
 	{ "name": "whi2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "whi2_V", "role": "q0" }} , 
 	{ "name": "who2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "who2_V", "role": "address0" }} , 
 	{ "name": "who2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "who2_V", "role": "ce0" }} , 
 	{ "name": "who2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "who2_V", "role": "q0" }} , 
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
 	{ "name": "bo_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bo_V", "role": "q0" }} , 
 	{ "name": "bf2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bf2_V", "role": "address0" }} , 
 	{ "name": "bf2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bf2_V", "role": "ce0" }} , 
 	{ "name": "bf2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bf2_V", "role": "q0" }} , 
 	{ "name": "bg2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bg2_V", "role": "address0" }} , 
 	{ "name": "bg2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bg2_V", "role": "ce0" }} , 
 	{ "name": "bg2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bg2_V", "role": "q0" }} , 
 	{ "name": "bi2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bi2_V", "role": "address0" }} , 
 	{ "name": "bi2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bi2_V", "role": "ce0" }} , 
 	{ "name": "bi2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bi2_V", "role": "q0" }} , 
 	{ "name": "bo2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bo2_V", "role": "address0" }} , 
 	{ "name": "bo2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bo2_V", "role": "ce0" }} , 
 	{ "name": "bo2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bo2_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "predict",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "47699746", "EstimateLatencyMax" : "47699746",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_fu_224"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_fu_224"}],
		"Port" : [
			{"Name" : "cnn_lstm_f_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_f_V"}]},
			{"Name" : "cnn_lstm_g_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_g_V"}]},
			{"Name" : "cnn_lstm_i_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_i_V"}]},
			{"Name" : "cnn_lstm_o_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_o_V"}]},
			{"Name" : "cnn_lstm_cache_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_cache_V"}]},
			{"Name" : "cnn_lstm2_f_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_f_V"}]},
			{"Name" : "cnn_lstm2_g_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_g_V"}]},
			{"Name" : "cnn_lstm2_i_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_i_V"}]},
			{"Name" : "cnn_lstm2_o_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_o_V"}]},
			{"Name" : "cnn_lstm2_cache_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_cache_V"}]},
			{"Name" : "x_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "x_V"}]},
			{"Name" : "y_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "y_V"}]},
			{"Name" : "wxf_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "wxf_V"}]},
			{"Name" : "wxg_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "wxg_V"}]},
			{"Name" : "wxi_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "wxi_V"}]},
			{"Name" : "wxo_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "wxo_V"}]},
			{"Name" : "whf_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "whf_V"}]},
			{"Name" : "whg_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "whg_V"}]},
			{"Name" : "whi_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "whi_V"}]},
			{"Name" : "who_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "who_V"}]},
			{"Name" : "wxf2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "wxf_V"}]},
			{"Name" : "wxg2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "wxg_V"}]},
			{"Name" : "wxi2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "wxi_V"}]},
			{"Name" : "wxo2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "wxo_V"}]},
			{"Name" : "whf2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "whf_V"}]},
			{"Name" : "whg2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "whg_V"}]},
			{"Name" : "whi2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "whi_V"}]},
			{"Name" : "who2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "who_V"}]},
			{"Name" : "bf_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "bf_V"}]},
			{"Name" : "bg_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "bg_V"}]},
			{"Name" : "bi_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "bi_V"}]},
			{"Name" : "bo_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "bo_V"}]},
			{"Name" : "bf2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "bf_V"}]},
			{"Name" : "bg2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "bg_V"}]},
			{"Name" : "bi2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "bi_V"}]},
			{"Name" : "bo2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "bo_V"}]},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_224", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_next_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_next_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224", "Parent" : "0", "Child" : ["4", "5", "6", "7", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44"],
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
					{"ID" : "7", "SubInstance" : "grp_generic_tanh_double_s_fu_1076", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_generic_tanh_double_s_fu_1076", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_generic_tanh_double_s_fu_1076", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.in_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.c_prev_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.h_prev_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076", "Parent" : "3", "Child" : ["8", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
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
					{"ID" : "8", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87", "Parent" : "7", "Child" : ["9", "10", "11", "12", "13", "14", "15", "16"],
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
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "8"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.kerneldl_mul_72ns_13s_84_5_1_U1", "Parent" : "8"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.kerneldl_mul_36ns_43ns_79_4_1_U2", "Parent" : "8"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.kerneldl_mul_44ns_49ns_93_5_1_U3", "Parent" : "8"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.kerneldl_mul_50ns_50ns_100_5_1_U4", "Parent" : "8"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.kerneldl_mac_muladd_16ns_16s_19s_31_4_1_U5", "Parent" : "8"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U15", "Parent" : "7"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_dsub_64ns_64ns_64_8_full_dsp_1_U16", "Parent" : "7"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U17", "Parent" : "7"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U18", "Parent" : "7"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U19", "Parent" : "7"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_dsub_64ns_64ns_64_8_full_dsp_1_U20", "Parent" : "7"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_dmul_64ns_64ns_64_8_max_dsp_1_U21", "Parent" : "7"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_ddiv_64ns_64ns_64_31_1_U22", "Parent" : "7"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_dcmp_64ns_64ns_1_2_1_U23", "Parent" : "7"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_fadd_32ns_32ns_32_7_full_dsp_1_U183", "Parent" : "3"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_fmul_32ns_32ns_32_4_max_dsp_1_U184", "Parent" : "3"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_fdiv_32ns_32ns_32_12_1_U185", "Parent" : "3"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_fptrunc_64ns_32_2_1_U186", "Parent" : "3"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_fpext_32ns_64_2_1_U187", "Parent" : "3"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_fpext_32ns_64_2_1_U188", "Parent" : "3"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U189", "Parent" : "3"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_ddiv_64ns_64ns_64_31_1_U190", "Parent" : "3"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_dexp_64ns_64ns_64_30_full_dsp_1_U191", "Parent" : "3"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U192", "Parent" : "3"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U193", "Parent" : "3"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U194", "Parent" : "3"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U195", "Parent" : "3"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U196", "Parent" : "3"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U197", "Parent" : "3"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U198", "Parent" : "3"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U199", "Parent" : "3"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U200", "Parent" : "3"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U201", "Parent" : "3"}]}


set ArgLastReadFirstWriteLatency {
	predict {
		cnn_lstm_f_V {Type IO LastRead 15 FirstWrite 3}
		cnn_lstm_g_V {Type IO LastRead 15 FirstWrite 3}
		cnn_lstm_i_V {Type IO LastRead 15 FirstWrite 3}
		cnn_lstm_o_V {Type IO LastRead 17 FirstWrite 3}
		cnn_lstm_cache_V {Type O LastRead -1 FirstWrite 7}
		cnn_lstm2_f_V {Type IO LastRead 15 FirstWrite 3}
		cnn_lstm2_g_V {Type IO LastRead 15 FirstWrite 3}
		cnn_lstm2_i_V {Type IO LastRead 15 FirstWrite 3}
		cnn_lstm2_o_V {Type IO LastRead 17 FirstWrite 3}
		cnn_lstm2_cache_V {Type O LastRead -1 FirstWrite 7}
		x_V {Type I LastRead 2 FirstWrite -1}
		y_V {Type O LastRead -1 FirstWrite 9}
		wxf_V {Type I LastRead 7 FirstWrite -1}
		wxg_V {Type I LastRead 7 FirstWrite -1}
		wxi_V {Type I LastRead 7 FirstWrite -1}
		wxo_V {Type I LastRead 7 FirstWrite -1}
		whf_V {Type I LastRead 10 FirstWrite -1}
		whg_V {Type I LastRead 10 FirstWrite -1}
		whi_V {Type I LastRead 7 FirstWrite -1}
		who_V {Type I LastRead 10 FirstWrite -1}
		wxf2_V {Type I LastRead 7 FirstWrite -1}
		wxg2_V {Type I LastRead 7 FirstWrite -1}
		wxi2_V {Type I LastRead 7 FirstWrite -1}
		wxo2_V {Type I LastRead 7 FirstWrite -1}
		whf2_V {Type I LastRead 10 FirstWrite -1}
		whg2_V {Type I LastRead 10 FirstWrite -1}
		whi2_V {Type I LastRead 7 FirstWrite -1}
		who2_V {Type I LastRead 10 FirstWrite -1}
		bf_V {Type I LastRead 8 FirstWrite -1}
		bg_V {Type I LastRead 11 FirstWrite -1}
		bi_V {Type I LastRead 14 FirstWrite -1}
		bo_V {Type I LastRead 17 FirstWrite -1}
		bf2_V {Type I LastRead 8 FirstWrite -1}
		bg2_V {Type I LastRead 11 FirstWrite -1}
		bi2_V {Type I LastRead 14 FirstWrite -1}
		bo2_V {Type I LastRead 17 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "47699746", "Max" : "47699746"}
	, {"Name" : "Interval", "Min" : "47699746", "Max" : "47699746"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cnn_lstm_f_V { ap_memory {  { cnn_lstm_f_V_address0 mem_address 1 15 }  { cnn_lstm_f_V_ce0 mem_ce 1 1 }  { cnn_lstm_f_V_we0 mem_we 1 1 }  { cnn_lstm_f_V_d0 mem_din 1 16 }  { cnn_lstm_f_V_q0 mem_dout 0 16 }  { cnn_lstm_f_V_address1 MemPortADDR2 1 15 }  { cnn_lstm_f_V_ce1 MemPortCE2 1 1 }  { cnn_lstm_f_V_we1 MemPortWE2 1 1 }  { cnn_lstm_f_V_d1 MemPortDIN2 1 16 } } }
	cnn_lstm_g_V { ap_memory {  { cnn_lstm_g_V_address0 mem_address 1 15 }  { cnn_lstm_g_V_ce0 mem_ce 1 1 }  { cnn_lstm_g_V_we0 mem_we 1 1 }  { cnn_lstm_g_V_d0 mem_din 1 16 }  { cnn_lstm_g_V_q0 mem_dout 0 16 }  { cnn_lstm_g_V_address1 MemPortADDR2 1 15 }  { cnn_lstm_g_V_ce1 MemPortCE2 1 1 }  { cnn_lstm_g_V_we1 MemPortWE2 1 1 }  { cnn_lstm_g_V_d1 MemPortDIN2 1 16 } } }
	cnn_lstm_i_V { ap_memory {  { cnn_lstm_i_V_address0 mem_address 1 15 }  { cnn_lstm_i_V_ce0 mem_ce 1 1 }  { cnn_lstm_i_V_we0 mem_we 1 1 }  { cnn_lstm_i_V_d0 mem_din 1 16 }  { cnn_lstm_i_V_q0 mem_dout 0 16 }  { cnn_lstm_i_V_address1 MemPortADDR2 1 15 }  { cnn_lstm_i_V_ce1 MemPortCE2 1 1 }  { cnn_lstm_i_V_we1 MemPortWE2 1 1 }  { cnn_lstm_i_V_d1 MemPortDIN2 1 16 } } }
	cnn_lstm_o_V { ap_memory {  { cnn_lstm_o_V_address0 mem_address 1 15 }  { cnn_lstm_o_V_ce0 mem_ce 1 1 }  { cnn_lstm_o_V_we0 mem_we 1 1 }  { cnn_lstm_o_V_d0 mem_din 1 16 }  { cnn_lstm_o_V_q0 mem_dout 0 16 }  { cnn_lstm_o_V_address1 MemPortADDR2 1 15 }  { cnn_lstm_o_V_ce1 MemPortCE2 1 1 }  { cnn_lstm_o_V_we1 MemPortWE2 1 1 }  { cnn_lstm_o_V_d1 MemPortDIN2 1 16 }  { cnn_lstm_o_V_q1 MemPortDOUT2 0 16 } } }
	cnn_lstm_cache_V { ap_memory {  { cnn_lstm_cache_V_address0 mem_address 1 18 }  { cnn_lstm_cache_V_ce0 mem_ce 1 1 }  { cnn_lstm_cache_V_we0 mem_we 1 1 }  { cnn_lstm_cache_V_d0 mem_din 1 16 }  { cnn_lstm_cache_V_address1 MemPortADDR2 1 18 }  { cnn_lstm_cache_V_ce1 MemPortCE2 1 1 }  { cnn_lstm_cache_V_we1 MemPortWE2 1 1 }  { cnn_lstm_cache_V_d1 MemPortDIN2 1 16 } } }
	cnn_lstm2_f_V { ap_memory {  { cnn_lstm2_f_V_address0 mem_address 1 15 }  { cnn_lstm2_f_V_ce0 mem_ce 1 1 }  { cnn_lstm2_f_V_we0 mem_we 1 1 }  { cnn_lstm2_f_V_d0 mem_din 1 16 }  { cnn_lstm2_f_V_q0 mem_dout 0 16 }  { cnn_lstm2_f_V_address1 MemPortADDR2 1 15 }  { cnn_lstm2_f_V_ce1 MemPortCE2 1 1 }  { cnn_lstm2_f_V_we1 MemPortWE2 1 1 }  { cnn_lstm2_f_V_d1 MemPortDIN2 1 16 } } }
	cnn_lstm2_g_V { ap_memory {  { cnn_lstm2_g_V_address0 mem_address 1 15 }  { cnn_lstm2_g_V_ce0 mem_ce 1 1 }  { cnn_lstm2_g_V_we0 mem_we 1 1 }  { cnn_lstm2_g_V_d0 mem_din 1 16 }  { cnn_lstm2_g_V_q0 mem_dout 0 16 }  { cnn_lstm2_g_V_address1 MemPortADDR2 1 15 }  { cnn_lstm2_g_V_ce1 MemPortCE2 1 1 }  { cnn_lstm2_g_V_we1 MemPortWE2 1 1 }  { cnn_lstm2_g_V_d1 MemPortDIN2 1 16 } } }
	cnn_lstm2_i_V { ap_memory {  { cnn_lstm2_i_V_address0 mem_address 1 15 }  { cnn_lstm2_i_V_ce0 mem_ce 1 1 }  { cnn_lstm2_i_V_we0 mem_we 1 1 }  { cnn_lstm2_i_V_d0 mem_din 1 16 }  { cnn_lstm2_i_V_q0 mem_dout 0 16 }  { cnn_lstm2_i_V_address1 MemPortADDR2 1 15 }  { cnn_lstm2_i_V_ce1 MemPortCE2 1 1 }  { cnn_lstm2_i_V_we1 MemPortWE2 1 1 }  { cnn_lstm2_i_V_d1 MemPortDIN2 1 16 } } }
	cnn_lstm2_o_V { ap_memory {  { cnn_lstm2_o_V_address0 mem_address 1 15 }  { cnn_lstm2_o_V_ce0 mem_ce 1 1 }  { cnn_lstm2_o_V_we0 mem_we 1 1 }  { cnn_lstm2_o_V_d0 mem_din 1 16 }  { cnn_lstm2_o_V_q0 mem_dout 0 16 }  { cnn_lstm2_o_V_address1 MemPortADDR2 1 15 }  { cnn_lstm2_o_V_ce1 MemPortCE2 1 1 }  { cnn_lstm2_o_V_we1 MemPortWE2 1 1 }  { cnn_lstm2_o_V_d1 MemPortDIN2 1 16 }  { cnn_lstm2_o_V_q1 MemPortDOUT2 0 16 } } }
	cnn_lstm2_cache_V { ap_memory {  { cnn_lstm2_cache_V_address0 mem_address 1 18 }  { cnn_lstm2_cache_V_ce0 mem_ce 1 1 }  { cnn_lstm2_cache_V_we0 mem_we 1 1 }  { cnn_lstm2_cache_V_d0 mem_din 1 16 }  { cnn_lstm2_cache_V_address1 MemPortADDR2 1 18 }  { cnn_lstm2_cache_V_ce1 MemPortCE2 1 1 }  { cnn_lstm2_cache_V_we1 MemPortWE2 1 1 }  { cnn_lstm2_cache_V_d1 MemPortDIN2 1 16 } } }
	x_V { ap_memory {  { x_V_address0 mem_address 1 15 }  { x_V_ce0 mem_ce 1 1 }  { x_V_q0 mem_dout 0 16 } } }
	y_V { ap_memory {  { y_V_address0 mem_address 1 16 }  { y_V_ce0 mem_ce 1 1 }  { y_V_we0 mem_we 1 1 }  { y_V_d0 mem_din 1 16 } } }
	wxf_V { ap_memory {  { wxf_V_address0 mem_address 1 17 }  { wxf_V_ce0 mem_ce 1 1 }  { wxf_V_q0 mem_dout 0 16 } } }
	wxg_V { ap_memory {  { wxg_V_address0 mem_address 1 17 }  { wxg_V_ce0 mem_ce 1 1 }  { wxg_V_q0 mem_dout 0 16 } } }
	wxi_V { ap_memory {  { wxi_V_address0 mem_address 1 17 }  { wxi_V_ce0 mem_ce 1 1 }  { wxi_V_q0 mem_dout 0 16 } } }
	wxo_V { ap_memory {  { wxo_V_address0 mem_address 1 17 }  { wxo_V_ce0 mem_ce 1 1 }  { wxo_V_q0 mem_dout 0 16 } } }
	whf_V { ap_memory {  { whf_V_address0 mem_address 1 17 }  { whf_V_ce0 mem_ce 1 1 }  { whf_V_q0 mem_dout 0 16 } } }
	whg_V { ap_memory {  { whg_V_address0 mem_address 1 17 }  { whg_V_ce0 mem_ce 1 1 }  { whg_V_q0 mem_dout 0 16 } } }
	whi_V { ap_memory {  { whi_V_address0 mem_address 1 17 }  { whi_V_ce0 mem_ce 1 1 }  { whi_V_q0 mem_dout 0 16 } } }
	who_V { ap_memory {  { who_V_address0 mem_address 1 17 }  { who_V_ce0 mem_ce 1 1 }  { who_V_q0 mem_dout 0 16 } } }
	wxf2_V { ap_memory {  { wxf2_V_address0 mem_address 1 17 }  { wxf2_V_ce0 mem_ce 1 1 }  { wxf2_V_q0 mem_dout 0 16 } } }
	wxg2_V { ap_memory {  { wxg2_V_address0 mem_address 1 17 }  { wxg2_V_ce0 mem_ce 1 1 }  { wxg2_V_q0 mem_dout 0 16 } } }
	wxi2_V { ap_memory {  { wxi2_V_address0 mem_address 1 17 }  { wxi2_V_ce0 mem_ce 1 1 }  { wxi2_V_q0 mem_dout 0 16 } } }
	wxo2_V { ap_memory {  { wxo2_V_address0 mem_address 1 17 }  { wxo2_V_ce0 mem_ce 1 1 }  { wxo2_V_q0 mem_dout 0 16 } } }
	whf2_V { ap_memory {  { whf2_V_address0 mem_address 1 17 }  { whf2_V_ce0 mem_ce 1 1 }  { whf2_V_q0 mem_dout 0 16 } } }
	whg2_V { ap_memory {  { whg2_V_address0 mem_address 1 17 }  { whg2_V_ce0 mem_ce 1 1 }  { whg2_V_q0 mem_dout 0 16 } } }
	whi2_V { ap_memory {  { whi2_V_address0 mem_address 1 17 }  { whi2_V_ce0 mem_ce 1 1 }  { whi2_V_q0 mem_dout 0 16 } } }
	who2_V { ap_memory {  { who2_V_address0 mem_address 1 17 }  { who2_V_ce0 mem_ce 1 1 }  { who2_V_q0 mem_dout 0 16 } } }
	bf_V { ap_memory {  { bf_V_address0 mem_address 1 9 }  { bf_V_ce0 mem_ce 1 1 }  { bf_V_q0 mem_dout 0 16 } } }
	bg_V { ap_memory {  { bg_V_address0 mem_address 1 9 }  { bg_V_ce0 mem_ce 1 1 }  { bg_V_q0 mem_dout 0 16 } } }
	bi_V { ap_memory {  { bi_V_address0 mem_address 1 9 }  { bi_V_ce0 mem_ce 1 1 }  { bi_V_q0 mem_dout 0 16 } } }
	bo_V { ap_memory {  { bo_V_address0 mem_address 1 9 }  { bo_V_ce0 mem_ce 1 1 }  { bo_V_q0 mem_dout 0 16 } } }
	bf2_V { ap_memory {  { bf2_V_address0 mem_address 1 9 }  { bf2_V_ce0 mem_ce 1 1 }  { bf2_V_q0 mem_dout 0 16 } } }
	bg2_V { ap_memory {  { bg2_V_address0 mem_address 1 9 }  { bg2_V_ce0 mem_ce 1 1 }  { bg2_V_q0 mem_dout 0 16 } } }
	bi2_V { ap_memory {  { bi2_V_address0 mem_address 1 9 }  { bi2_V_ce0 mem_ce 1 1 }  { bi2_V_q0 mem_dout 0 16 } } }
	bo2_V { ap_memory {  { bo2_V_address0 mem_address 1 9 }  { bo2_V_ce0 mem_ce 1 1 }  { bo2_V_q0 mem_dout 0 16 } } }
}
