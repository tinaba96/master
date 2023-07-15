set moduleName gradient
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
set C_modelName {gradient}
set C_modelType { void 0 }
set C_modelArgList {
	{ cnn_gradswxf_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ cnn_gradswxg_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ cnn_gradswxi_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ cnn_gradswxo_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ cnn_gradswxf2_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ cnn_gradswxg2_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ cnn_gradswxi2_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ cnn_gradswxo2_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ cnn_gradswhf_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ cnn_gradswhg_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ cnn_gradswhi_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ cnn_gradswho_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ cnn_gradswhf2_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ cnn_gradswhg2_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ cnn_gradswhi2_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ cnn_gradswho2_V int 16 regular {array 102400 { 2 0 } 2 1 }  }
	{ cnn_gradsbf_V int 16 regular {array 320 { 2 3 } 1 1 }  }
	{ cnn_gradsbg_V int 16 regular {array 320 { 2 3 } 1 1 }  }
	{ cnn_gradsbi_V int 16 regular {array 320 { 2 3 } 1 1 }  }
	{ cnn_gradsbo_V int 16 regular {array 320 { 2 3 } 1 1 }  }
	{ cnn_gradsbf2_V int 16 regular {array 320 { 2 3 } 1 1 }  }
	{ cnn_gradsbg2_V int 16 regular {array 320 { 2 3 } 1 1 }  }
	{ cnn_gradsbi2_V int 16 regular {array 320 { 2 3 } 1 1 }  }
	{ cnn_gradsbo2_V int 16 regular {array 320 { 2 3 } 1 1 }  }
	{ cnn_hs_V int 16 regular {array 48000 { 2 3 } 1 1 }  }
	{ cnn_lstm_f_V int 16 regular {array 24320 { 2 3 } 1 1 }  }
	{ cnn_lstm_g_V int 16 regular {array 24320 { 2 3 } 1 1 }  }
	{ cnn_lstm_i_V int 16 regular {array 24320 { 2 3 } 1 1 }  }
	{ cnn_lstm_o_V int 16 regular {array 24320 { 2 3 } 1 1 }  }
	{ cnn_lstm_cache_V int 16 regular {array 194560 { 1 1 } 1 1 }  }
	{ cnn_lstm2_f_V int 16 regular {array 24320 { 2 3 } 1 1 }  }
	{ cnn_lstm2_g_V int 16 regular {array 24320 { 2 3 } 1 1 }  }
	{ cnn_lstm2_i_V int 16 regular {array 24320 { 2 3 } 1 1 }  }
	{ cnn_lstm2_o_V int 16 regular {array 24320 { 2 3 } 1 1 }  }
	{ cnn_lstm2_cache_V int 16 regular {array 194560 { 1 1 } 1 1 }  }
	{ dout_V int 16 regular {array 48000 { 2 3 } 1 1 }  }
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
}
set C_modelArgMapList {[ 
	{ "Name" : "cnn_gradswxf_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradswxg_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradswxi_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradswxo_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradswxf2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradswxg2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradswxi2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradswxo2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradswhf_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradswhg_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradswhi_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradswho_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradswhf2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradswhg2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradswhi2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradswho2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradsbf_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradsbg_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradsbi_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradsbo_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradsbf2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradsbg2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradsbi2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_gradsbo2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_hs_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm_f_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm_g_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm_i_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm_o_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm_cache_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "cnn_lstm2_f_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm2_g_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm2_i_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm2_o_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "cnn_lstm2_cache_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "dout_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
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
 	{ "Name" : "who2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 300
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cnn_gradswxf_V_address0 sc_out sc_lv 17 signal 0 } 
	{ cnn_gradswxf_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ cnn_gradswxf_V_we0 sc_out sc_logic 1 signal 0 } 
	{ cnn_gradswxf_V_d0 sc_out sc_lv 16 signal 0 } 
	{ cnn_gradswxf_V_q0 sc_in sc_lv 16 signal 0 } 
	{ cnn_gradswxf_V_address1 sc_out sc_lv 17 signal 0 } 
	{ cnn_gradswxf_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ cnn_gradswxf_V_we1 sc_out sc_logic 1 signal 0 } 
	{ cnn_gradswxf_V_d1 sc_out sc_lv 16 signal 0 } 
	{ cnn_gradswxg_V_address0 sc_out sc_lv 17 signal 1 } 
	{ cnn_gradswxg_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ cnn_gradswxg_V_we0 sc_out sc_logic 1 signal 1 } 
	{ cnn_gradswxg_V_d0 sc_out sc_lv 16 signal 1 } 
	{ cnn_gradswxg_V_q0 sc_in sc_lv 16 signal 1 } 
	{ cnn_gradswxg_V_address1 sc_out sc_lv 17 signal 1 } 
	{ cnn_gradswxg_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ cnn_gradswxg_V_we1 sc_out sc_logic 1 signal 1 } 
	{ cnn_gradswxg_V_d1 sc_out sc_lv 16 signal 1 } 
	{ cnn_gradswxi_V_address0 sc_out sc_lv 17 signal 2 } 
	{ cnn_gradswxi_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ cnn_gradswxi_V_we0 sc_out sc_logic 1 signal 2 } 
	{ cnn_gradswxi_V_d0 sc_out sc_lv 16 signal 2 } 
	{ cnn_gradswxi_V_q0 sc_in sc_lv 16 signal 2 } 
	{ cnn_gradswxi_V_address1 sc_out sc_lv 17 signal 2 } 
	{ cnn_gradswxi_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ cnn_gradswxi_V_we1 sc_out sc_logic 1 signal 2 } 
	{ cnn_gradswxi_V_d1 sc_out sc_lv 16 signal 2 } 
	{ cnn_gradswxo_V_address0 sc_out sc_lv 17 signal 3 } 
	{ cnn_gradswxo_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ cnn_gradswxo_V_we0 sc_out sc_logic 1 signal 3 } 
	{ cnn_gradswxo_V_d0 sc_out sc_lv 16 signal 3 } 
	{ cnn_gradswxo_V_q0 sc_in sc_lv 16 signal 3 } 
	{ cnn_gradswxo_V_address1 sc_out sc_lv 17 signal 3 } 
	{ cnn_gradswxo_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ cnn_gradswxo_V_we1 sc_out sc_logic 1 signal 3 } 
	{ cnn_gradswxo_V_d1 sc_out sc_lv 16 signal 3 } 
	{ cnn_gradswxf2_V_address0 sc_out sc_lv 17 signal 4 } 
	{ cnn_gradswxf2_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ cnn_gradswxf2_V_we0 sc_out sc_logic 1 signal 4 } 
	{ cnn_gradswxf2_V_d0 sc_out sc_lv 16 signal 4 } 
	{ cnn_gradswxf2_V_q0 sc_in sc_lv 16 signal 4 } 
	{ cnn_gradswxf2_V_address1 sc_out sc_lv 17 signal 4 } 
	{ cnn_gradswxf2_V_ce1 sc_out sc_logic 1 signal 4 } 
	{ cnn_gradswxf2_V_we1 sc_out sc_logic 1 signal 4 } 
	{ cnn_gradswxf2_V_d1 sc_out sc_lv 16 signal 4 } 
	{ cnn_gradswxg2_V_address0 sc_out sc_lv 17 signal 5 } 
	{ cnn_gradswxg2_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ cnn_gradswxg2_V_we0 sc_out sc_logic 1 signal 5 } 
	{ cnn_gradswxg2_V_d0 sc_out sc_lv 16 signal 5 } 
	{ cnn_gradswxg2_V_q0 sc_in sc_lv 16 signal 5 } 
	{ cnn_gradswxg2_V_address1 sc_out sc_lv 17 signal 5 } 
	{ cnn_gradswxg2_V_ce1 sc_out sc_logic 1 signal 5 } 
	{ cnn_gradswxg2_V_we1 sc_out sc_logic 1 signal 5 } 
	{ cnn_gradswxg2_V_d1 sc_out sc_lv 16 signal 5 } 
	{ cnn_gradswxi2_V_address0 sc_out sc_lv 17 signal 6 } 
	{ cnn_gradswxi2_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ cnn_gradswxi2_V_we0 sc_out sc_logic 1 signal 6 } 
	{ cnn_gradswxi2_V_d0 sc_out sc_lv 16 signal 6 } 
	{ cnn_gradswxi2_V_q0 sc_in sc_lv 16 signal 6 } 
	{ cnn_gradswxi2_V_address1 sc_out sc_lv 17 signal 6 } 
	{ cnn_gradswxi2_V_ce1 sc_out sc_logic 1 signal 6 } 
	{ cnn_gradswxi2_V_we1 sc_out sc_logic 1 signal 6 } 
	{ cnn_gradswxi2_V_d1 sc_out sc_lv 16 signal 6 } 
	{ cnn_gradswxo2_V_address0 sc_out sc_lv 17 signal 7 } 
	{ cnn_gradswxo2_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ cnn_gradswxo2_V_we0 sc_out sc_logic 1 signal 7 } 
	{ cnn_gradswxo2_V_d0 sc_out sc_lv 16 signal 7 } 
	{ cnn_gradswxo2_V_q0 sc_in sc_lv 16 signal 7 } 
	{ cnn_gradswxo2_V_address1 sc_out sc_lv 17 signal 7 } 
	{ cnn_gradswxo2_V_ce1 sc_out sc_logic 1 signal 7 } 
	{ cnn_gradswxo2_V_we1 sc_out sc_logic 1 signal 7 } 
	{ cnn_gradswxo2_V_d1 sc_out sc_lv 16 signal 7 } 
	{ cnn_gradswhf_V_address0 sc_out sc_lv 17 signal 8 } 
	{ cnn_gradswhf_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ cnn_gradswhf_V_we0 sc_out sc_logic 1 signal 8 } 
	{ cnn_gradswhf_V_d0 sc_out sc_lv 16 signal 8 } 
	{ cnn_gradswhf_V_q0 sc_in sc_lv 16 signal 8 } 
	{ cnn_gradswhf_V_address1 sc_out sc_lv 17 signal 8 } 
	{ cnn_gradswhf_V_ce1 sc_out sc_logic 1 signal 8 } 
	{ cnn_gradswhf_V_we1 sc_out sc_logic 1 signal 8 } 
	{ cnn_gradswhf_V_d1 sc_out sc_lv 16 signal 8 } 
	{ cnn_gradswhg_V_address0 sc_out sc_lv 17 signal 9 } 
	{ cnn_gradswhg_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ cnn_gradswhg_V_we0 sc_out sc_logic 1 signal 9 } 
	{ cnn_gradswhg_V_d0 sc_out sc_lv 16 signal 9 } 
	{ cnn_gradswhg_V_q0 sc_in sc_lv 16 signal 9 } 
	{ cnn_gradswhg_V_address1 sc_out sc_lv 17 signal 9 } 
	{ cnn_gradswhg_V_ce1 sc_out sc_logic 1 signal 9 } 
	{ cnn_gradswhg_V_we1 sc_out sc_logic 1 signal 9 } 
	{ cnn_gradswhg_V_d1 sc_out sc_lv 16 signal 9 } 
	{ cnn_gradswhi_V_address0 sc_out sc_lv 17 signal 10 } 
	{ cnn_gradswhi_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ cnn_gradswhi_V_we0 sc_out sc_logic 1 signal 10 } 
	{ cnn_gradswhi_V_d0 sc_out sc_lv 16 signal 10 } 
	{ cnn_gradswhi_V_q0 sc_in sc_lv 16 signal 10 } 
	{ cnn_gradswhi_V_address1 sc_out sc_lv 17 signal 10 } 
	{ cnn_gradswhi_V_ce1 sc_out sc_logic 1 signal 10 } 
	{ cnn_gradswhi_V_we1 sc_out sc_logic 1 signal 10 } 
	{ cnn_gradswhi_V_d1 sc_out sc_lv 16 signal 10 } 
	{ cnn_gradswho_V_address0 sc_out sc_lv 17 signal 11 } 
	{ cnn_gradswho_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ cnn_gradswho_V_we0 sc_out sc_logic 1 signal 11 } 
	{ cnn_gradswho_V_d0 sc_out sc_lv 16 signal 11 } 
	{ cnn_gradswho_V_q0 sc_in sc_lv 16 signal 11 } 
	{ cnn_gradswho_V_address1 sc_out sc_lv 17 signal 11 } 
	{ cnn_gradswho_V_ce1 sc_out sc_logic 1 signal 11 } 
	{ cnn_gradswho_V_we1 sc_out sc_logic 1 signal 11 } 
	{ cnn_gradswho_V_d1 sc_out sc_lv 16 signal 11 } 
	{ cnn_gradswhf2_V_address0 sc_out sc_lv 17 signal 12 } 
	{ cnn_gradswhf2_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ cnn_gradswhf2_V_we0 sc_out sc_logic 1 signal 12 } 
	{ cnn_gradswhf2_V_d0 sc_out sc_lv 16 signal 12 } 
	{ cnn_gradswhf2_V_q0 sc_in sc_lv 16 signal 12 } 
	{ cnn_gradswhf2_V_address1 sc_out sc_lv 17 signal 12 } 
	{ cnn_gradswhf2_V_ce1 sc_out sc_logic 1 signal 12 } 
	{ cnn_gradswhf2_V_we1 sc_out sc_logic 1 signal 12 } 
	{ cnn_gradswhf2_V_d1 sc_out sc_lv 16 signal 12 } 
	{ cnn_gradswhg2_V_address0 sc_out sc_lv 17 signal 13 } 
	{ cnn_gradswhg2_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ cnn_gradswhg2_V_we0 sc_out sc_logic 1 signal 13 } 
	{ cnn_gradswhg2_V_d0 sc_out sc_lv 16 signal 13 } 
	{ cnn_gradswhg2_V_q0 sc_in sc_lv 16 signal 13 } 
	{ cnn_gradswhg2_V_address1 sc_out sc_lv 17 signal 13 } 
	{ cnn_gradswhg2_V_ce1 sc_out sc_logic 1 signal 13 } 
	{ cnn_gradswhg2_V_we1 sc_out sc_logic 1 signal 13 } 
	{ cnn_gradswhg2_V_d1 sc_out sc_lv 16 signal 13 } 
	{ cnn_gradswhi2_V_address0 sc_out sc_lv 17 signal 14 } 
	{ cnn_gradswhi2_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ cnn_gradswhi2_V_we0 sc_out sc_logic 1 signal 14 } 
	{ cnn_gradswhi2_V_d0 sc_out sc_lv 16 signal 14 } 
	{ cnn_gradswhi2_V_q0 sc_in sc_lv 16 signal 14 } 
	{ cnn_gradswhi2_V_address1 sc_out sc_lv 17 signal 14 } 
	{ cnn_gradswhi2_V_ce1 sc_out sc_logic 1 signal 14 } 
	{ cnn_gradswhi2_V_we1 sc_out sc_logic 1 signal 14 } 
	{ cnn_gradswhi2_V_d1 sc_out sc_lv 16 signal 14 } 
	{ cnn_gradswho2_V_address0 sc_out sc_lv 17 signal 15 } 
	{ cnn_gradswho2_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ cnn_gradswho2_V_we0 sc_out sc_logic 1 signal 15 } 
	{ cnn_gradswho2_V_d0 sc_out sc_lv 16 signal 15 } 
	{ cnn_gradswho2_V_q0 sc_in sc_lv 16 signal 15 } 
	{ cnn_gradswho2_V_address1 sc_out sc_lv 17 signal 15 } 
	{ cnn_gradswho2_V_ce1 sc_out sc_logic 1 signal 15 } 
	{ cnn_gradswho2_V_we1 sc_out sc_logic 1 signal 15 } 
	{ cnn_gradswho2_V_d1 sc_out sc_lv 16 signal 15 } 
	{ cnn_gradsbf_V_address0 sc_out sc_lv 9 signal 16 } 
	{ cnn_gradsbf_V_ce0 sc_out sc_logic 1 signal 16 } 
	{ cnn_gradsbf_V_we0 sc_out sc_logic 1 signal 16 } 
	{ cnn_gradsbf_V_d0 sc_out sc_lv 16 signal 16 } 
	{ cnn_gradsbf_V_q0 sc_in sc_lv 16 signal 16 } 
	{ cnn_gradsbg_V_address0 sc_out sc_lv 9 signal 17 } 
	{ cnn_gradsbg_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ cnn_gradsbg_V_we0 sc_out sc_logic 1 signal 17 } 
	{ cnn_gradsbg_V_d0 sc_out sc_lv 16 signal 17 } 
	{ cnn_gradsbg_V_q0 sc_in sc_lv 16 signal 17 } 
	{ cnn_gradsbi_V_address0 sc_out sc_lv 9 signal 18 } 
	{ cnn_gradsbi_V_ce0 sc_out sc_logic 1 signal 18 } 
	{ cnn_gradsbi_V_we0 sc_out sc_logic 1 signal 18 } 
	{ cnn_gradsbi_V_d0 sc_out sc_lv 16 signal 18 } 
	{ cnn_gradsbi_V_q0 sc_in sc_lv 16 signal 18 } 
	{ cnn_gradsbo_V_address0 sc_out sc_lv 9 signal 19 } 
	{ cnn_gradsbo_V_ce0 sc_out sc_logic 1 signal 19 } 
	{ cnn_gradsbo_V_we0 sc_out sc_logic 1 signal 19 } 
	{ cnn_gradsbo_V_d0 sc_out sc_lv 16 signal 19 } 
	{ cnn_gradsbo_V_q0 sc_in sc_lv 16 signal 19 } 
	{ cnn_gradsbf2_V_address0 sc_out sc_lv 9 signal 20 } 
	{ cnn_gradsbf2_V_ce0 sc_out sc_logic 1 signal 20 } 
	{ cnn_gradsbf2_V_we0 sc_out sc_logic 1 signal 20 } 
	{ cnn_gradsbf2_V_d0 sc_out sc_lv 16 signal 20 } 
	{ cnn_gradsbf2_V_q0 sc_in sc_lv 16 signal 20 } 
	{ cnn_gradsbg2_V_address0 sc_out sc_lv 9 signal 21 } 
	{ cnn_gradsbg2_V_ce0 sc_out sc_logic 1 signal 21 } 
	{ cnn_gradsbg2_V_we0 sc_out sc_logic 1 signal 21 } 
	{ cnn_gradsbg2_V_d0 sc_out sc_lv 16 signal 21 } 
	{ cnn_gradsbg2_V_q0 sc_in sc_lv 16 signal 21 } 
	{ cnn_gradsbi2_V_address0 sc_out sc_lv 9 signal 22 } 
	{ cnn_gradsbi2_V_ce0 sc_out sc_logic 1 signal 22 } 
	{ cnn_gradsbi2_V_we0 sc_out sc_logic 1 signal 22 } 
	{ cnn_gradsbi2_V_d0 sc_out sc_lv 16 signal 22 } 
	{ cnn_gradsbi2_V_q0 sc_in sc_lv 16 signal 22 } 
	{ cnn_gradsbo2_V_address0 sc_out sc_lv 9 signal 23 } 
	{ cnn_gradsbo2_V_ce0 sc_out sc_logic 1 signal 23 } 
	{ cnn_gradsbo2_V_we0 sc_out sc_logic 1 signal 23 } 
	{ cnn_gradsbo2_V_d0 sc_out sc_lv 16 signal 23 } 
	{ cnn_gradsbo2_V_q0 sc_in sc_lv 16 signal 23 } 
	{ cnn_hs_V_address0 sc_out sc_lv 16 signal 24 } 
	{ cnn_hs_V_ce0 sc_out sc_logic 1 signal 24 } 
	{ cnn_hs_V_we0 sc_out sc_logic 1 signal 24 } 
	{ cnn_hs_V_d0 sc_out sc_lv 16 signal 24 } 
	{ cnn_hs_V_q0 sc_in sc_lv 16 signal 24 } 
	{ cnn_lstm_f_V_address0 sc_out sc_lv 15 signal 25 } 
	{ cnn_lstm_f_V_ce0 sc_out sc_logic 1 signal 25 } 
	{ cnn_lstm_f_V_we0 sc_out sc_logic 1 signal 25 } 
	{ cnn_lstm_f_V_d0 sc_out sc_lv 16 signal 25 } 
	{ cnn_lstm_f_V_q0 sc_in sc_lv 16 signal 25 } 
	{ cnn_lstm_g_V_address0 sc_out sc_lv 15 signal 26 } 
	{ cnn_lstm_g_V_ce0 sc_out sc_logic 1 signal 26 } 
	{ cnn_lstm_g_V_we0 sc_out sc_logic 1 signal 26 } 
	{ cnn_lstm_g_V_d0 sc_out sc_lv 16 signal 26 } 
	{ cnn_lstm_g_V_q0 sc_in sc_lv 16 signal 26 } 
	{ cnn_lstm_i_V_address0 sc_out sc_lv 15 signal 27 } 
	{ cnn_lstm_i_V_ce0 sc_out sc_logic 1 signal 27 } 
	{ cnn_lstm_i_V_we0 sc_out sc_logic 1 signal 27 } 
	{ cnn_lstm_i_V_d0 sc_out sc_lv 16 signal 27 } 
	{ cnn_lstm_i_V_q0 sc_in sc_lv 16 signal 27 } 
	{ cnn_lstm_o_V_address0 sc_out sc_lv 15 signal 28 } 
	{ cnn_lstm_o_V_ce0 sc_out sc_logic 1 signal 28 } 
	{ cnn_lstm_o_V_we0 sc_out sc_logic 1 signal 28 } 
	{ cnn_lstm_o_V_d0 sc_out sc_lv 16 signal 28 } 
	{ cnn_lstm_o_V_q0 sc_in sc_lv 16 signal 28 } 
	{ cnn_lstm_cache_V_address0 sc_out sc_lv 18 signal 29 } 
	{ cnn_lstm_cache_V_ce0 sc_out sc_logic 1 signal 29 } 
	{ cnn_lstm_cache_V_q0 sc_in sc_lv 16 signal 29 } 
	{ cnn_lstm_cache_V_address1 sc_out sc_lv 18 signal 29 } 
	{ cnn_lstm_cache_V_ce1 sc_out sc_logic 1 signal 29 } 
	{ cnn_lstm_cache_V_q1 sc_in sc_lv 16 signal 29 } 
	{ cnn_lstm2_f_V_address0 sc_out sc_lv 15 signal 30 } 
	{ cnn_lstm2_f_V_ce0 sc_out sc_logic 1 signal 30 } 
	{ cnn_lstm2_f_V_we0 sc_out sc_logic 1 signal 30 } 
	{ cnn_lstm2_f_V_d0 sc_out sc_lv 16 signal 30 } 
	{ cnn_lstm2_f_V_q0 sc_in sc_lv 16 signal 30 } 
	{ cnn_lstm2_g_V_address0 sc_out sc_lv 15 signal 31 } 
	{ cnn_lstm2_g_V_ce0 sc_out sc_logic 1 signal 31 } 
	{ cnn_lstm2_g_V_we0 sc_out sc_logic 1 signal 31 } 
	{ cnn_lstm2_g_V_d0 sc_out sc_lv 16 signal 31 } 
	{ cnn_lstm2_g_V_q0 sc_in sc_lv 16 signal 31 } 
	{ cnn_lstm2_i_V_address0 sc_out sc_lv 15 signal 32 } 
	{ cnn_lstm2_i_V_ce0 sc_out sc_logic 1 signal 32 } 
	{ cnn_lstm2_i_V_we0 sc_out sc_logic 1 signal 32 } 
	{ cnn_lstm2_i_V_d0 sc_out sc_lv 16 signal 32 } 
	{ cnn_lstm2_i_V_q0 sc_in sc_lv 16 signal 32 } 
	{ cnn_lstm2_o_V_address0 sc_out sc_lv 15 signal 33 } 
	{ cnn_lstm2_o_V_ce0 sc_out sc_logic 1 signal 33 } 
	{ cnn_lstm2_o_V_we0 sc_out sc_logic 1 signal 33 } 
	{ cnn_lstm2_o_V_d0 sc_out sc_lv 16 signal 33 } 
	{ cnn_lstm2_o_V_q0 sc_in sc_lv 16 signal 33 } 
	{ cnn_lstm2_cache_V_address0 sc_out sc_lv 18 signal 34 } 
	{ cnn_lstm2_cache_V_ce0 sc_out sc_logic 1 signal 34 } 
	{ cnn_lstm2_cache_V_q0 sc_in sc_lv 16 signal 34 } 
	{ cnn_lstm2_cache_V_address1 sc_out sc_lv 18 signal 34 } 
	{ cnn_lstm2_cache_V_ce1 sc_out sc_logic 1 signal 34 } 
	{ cnn_lstm2_cache_V_q1 sc_in sc_lv 16 signal 34 } 
	{ dout_V_address0 sc_out sc_lv 16 signal 35 } 
	{ dout_V_ce0 sc_out sc_logic 1 signal 35 } 
	{ dout_V_we0 sc_out sc_logic 1 signal 35 } 
	{ dout_V_d0 sc_out sc_lv 16 signal 35 } 
	{ dout_V_q0 sc_in sc_lv 16 signal 35 } 
	{ wxf_V_address0 sc_out sc_lv 17 signal 36 } 
	{ wxf_V_ce0 sc_out sc_logic 1 signal 36 } 
	{ wxf_V_q0 sc_in sc_lv 16 signal 36 } 
	{ wxg_V_address0 sc_out sc_lv 17 signal 37 } 
	{ wxg_V_ce0 sc_out sc_logic 1 signal 37 } 
	{ wxg_V_q0 sc_in sc_lv 16 signal 37 } 
	{ wxi_V_address0 sc_out sc_lv 17 signal 38 } 
	{ wxi_V_ce0 sc_out sc_logic 1 signal 38 } 
	{ wxi_V_q0 sc_in sc_lv 16 signal 38 } 
	{ wxo_V_address0 sc_out sc_lv 17 signal 39 } 
	{ wxo_V_ce0 sc_out sc_logic 1 signal 39 } 
	{ wxo_V_q0 sc_in sc_lv 16 signal 39 } 
	{ whf_V_address0 sc_out sc_lv 17 signal 40 } 
	{ whf_V_ce0 sc_out sc_logic 1 signal 40 } 
	{ whf_V_q0 sc_in sc_lv 16 signal 40 } 
	{ whg_V_address0 sc_out sc_lv 17 signal 41 } 
	{ whg_V_ce0 sc_out sc_logic 1 signal 41 } 
	{ whg_V_q0 sc_in sc_lv 16 signal 41 } 
	{ whi_V_address0 sc_out sc_lv 17 signal 42 } 
	{ whi_V_ce0 sc_out sc_logic 1 signal 42 } 
	{ whi_V_q0 sc_in sc_lv 16 signal 42 } 
	{ who_V_address0 sc_out sc_lv 17 signal 43 } 
	{ who_V_ce0 sc_out sc_logic 1 signal 43 } 
	{ who_V_q0 sc_in sc_lv 16 signal 43 } 
	{ wxf2_V_address0 sc_out sc_lv 17 signal 44 } 
	{ wxf2_V_ce0 sc_out sc_logic 1 signal 44 } 
	{ wxf2_V_q0 sc_in sc_lv 16 signal 44 } 
	{ wxg2_V_address0 sc_out sc_lv 17 signal 45 } 
	{ wxg2_V_ce0 sc_out sc_logic 1 signal 45 } 
	{ wxg2_V_q0 sc_in sc_lv 16 signal 45 } 
	{ wxi2_V_address0 sc_out sc_lv 17 signal 46 } 
	{ wxi2_V_ce0 sc_out sc_logic 1 signal 46 } 
	{ wxi2_V_q0 sc_in sc_lv 16 signal 46 } 
	{ wxo2_V_address0 sc_out sc_lv 17 signal 47 } 
	{ wxo2_V_ce0 sc_out sc_logic 1 signal 47 } 
	{ wxo2_V_q0 sc_in sc_lv 16 signal 47 } 
	{ whf2_V_address0 sc_out sc_lv 17 signal 48 } 
	{ whf2_V_ce0 sc_out sc_logic 1 signal 48 } 
	{ whf2_V_q0 sc_in sc_lv 16 signal 48 } 
	{ whg2_V_address0 sc_out sc_lv 17 signal 49 } 
	{ whg2_V_ce0 sc_out sc_logic 1 signal 49 } 
	{ whg2_V_q0 sc_in sc_lv 16 signal 49 } 
	{ whi2_V_address0 sc_out sc_lv 17 signal 50 } 
	{ whi2_V_ce0 sc_out sc_logic 1 signal 50 } 
	{ whi2_V_q0 sc_in sc_lv 16 signal 50 } 
	{ who2_V_address0 sc_out sc_lv 17 signal 51 } 
	{ who2_V_ce0 sc_out sc_logic 1 signal 51 } 
	{ who2_V_q0 sc_in sc_lv 16 signal 51 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cnn_gradswxf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswxf_V", "role": "address0" }} , 
 	{ "name": "cnn_gradswxf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxf_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradswxf_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxf_V", "role": "we0" }} , 
 	{ "name": "cnn_gradswxf_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxf_V", "role": "d0" }} , 
 	{ "name": "cnn_gradswxf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxf_V", "role": "q0" }} , 
 	{ "name": "cnn_gradswxf_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswxf_V", "role": "address1" }} , 
 	{ "name": "cnn_gradswxf_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxf_V", "role": "ce1" }} , 
 	{ "name": "cnn_gradswxf_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxf_V", "role": "we1" }} , 
 	{ "name": "cnn_gradswxf_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxf_V", "role": "d1" }} , 
 	{ "name": "cnn_gradswxg_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswxg_V", "role": "address0" }} , 
 	{ "name": "cnn_gradswxg_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxg_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradswxg_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxg_V", "role": "we0" }} , 
 	{ "name": "cnn_gradswxg_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxg_V", "role": "d0" }} , 
 	{ "name": "cnn_gradswxg_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxg_V", "role": "q0" }} , 
 	{ "name": "cnn_gradswxg_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswxg_V", "role": "address1" }} , 
 	{ "name": "cnn_gradswxg_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxg_V", "role": "ce1" }} , 
 	{ "name": "cnn_gradswxg_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxg_V", "role": "we1" }} , 
 	{ "name": "cnn_gradswxg_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxg_V", "role": "d1" }} , 
 	{ "name": "cnn_gradswxi_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswxi_V", "role": "address0" }} , 
 	{ "name": "cnn_gradswxi_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxi_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradswxi_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxi_V", "role": "we0" }} , 
 	{ "name": "cnn_gradswxi_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxi_V", "role": "d0" }} , 
 	{ "name": "cnn_gradswxi_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxi_V", "role": "q0" }} , 
 	{ "name": "cnn_gradswxi_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswxi_V", "role": "address1" }} , 
 	{ "name": "cnn_gradswxi_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxi_V", "role": "ce1" }} , 
 	{ "name": "cnn_gradswxi_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxi_V", "role": "we1" }} , 
 	{ "name": "cnn_gradswxi_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxi_V", "role": "d1" }} , 
 	{ "name": "cnn_gradswxo_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswxo_V", "role": "address0" }} , 
 	{ "name": "cnn_gradswxo_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxo_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradswxo_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxo_V", "role": "we0" }} , 
 	{ "name": "cnn_gradswxo_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxo_V", "role": "d0" }} , 
 	{ "name": "cnn_gradswxo_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxo_V", "role": "q0" }} , 
 	{ "name": "cnn_gradswxo_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswxo_V", "role": "address1" }} , 
 	{ "name": "cnn_gradswxo_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxo_V", "role": "ce1" }} , 
 	{ "name": "cnn_gradswxo_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxo_V", "role": "we1" }} , 
 	{ "name": "cnn_gradswxo_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxo_V", "role": "d1" }} , 
 	{ "name": "cnn_gradswxf2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswxf2_V", "role": "address0" }} , 
 	{ "name": "cnn_gradswxf2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxf2_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradswxf2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxf2_V", "role": "we0" }} , 
 	{ "name": "cnn_gradswxf2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxf2_V", "role": "d0" }} , 
 	{ "name": "cnn_gradswxf2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxf2_V", "role": "q0" }} , 
 	{ "name": "cnn_gradswxf2_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswxf2_V", "role": "address1" }} , 
 	{ "name": "cnn_gradswxf2_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxf2_V", "role": "ce1" }} , 
 	{ "name": "cnn_gradswxf2_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxf2_V", "role": "we1" }} , 
 	{ "name": "cnn_gradswxf2_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxf2_V", "role": "d1" }} , 
 	{ "name": "cnn_gradswxg2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswxg2_V", "role": "address0" }} , 
 	{ "name": "cnn_gradswxg2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxg2_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradswxg2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxg2_V", "role": "we0" }} , 
 	{ "name": "cnn_gradswxg2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxg2_V", "role": "d0" }} , 
 	{ "name": "cnn_gradswxg2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxg2_V", "role": "q0" }} , 
 	{ "name": "cnn_gradswxg2_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswxg2_V", "role": "address1" }} , 
 	{ "name": "cnn_gradswxg2_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxg2_V", "role": "ce1" }} , 
 	{ "name": "cnn_gradswxg2_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxg2_V", "role": "we1" }} , 
 	{ "name": "cnn_gradswxg2_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxg2_V", "role": "d1" }} , 
 	{ "name": "cnn_gradswxi2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswxi2_V", "role": "address0" }} , 
 	{ "name": "cnn_gradswxi2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxi2_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradswxi2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxi2_V", "role": "we0" }} , 
 	{ "name": "cnn_gradswxi2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxi2_V", "role": "d0" }} , 
 	{ "name": "cnn_gradswxi2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxi2_V", "role": "q0" }} , 
 	{ "name": "cnn_gradswxi2_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswxi2_V", "role": "address1" }} , 
 	{ "name": "cnn_gradswxi2_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxi2_V", "role": "ce1" }} , 
 	{ "name": "cnn_gradswxi2_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxi2_V", "role": "we1" }} , 
 	{ "name": "cnn_gradswxi2_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxi2_V", "role": "d1" }} , 
 	{ "name": "cnn_gradswxo2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswxo2_V", "role": "address0" }} , 
 	{ "name": "cnn_gradswxo2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxo2_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradswxo2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxo2_V", "role": "we0" }} , 
 	{ "name": "cnn_gradswxo2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxo2_V", "role": "d0" }} , 
 	{ "name": "cnn_gradswxo2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxo2_V", "role": "q0" }} , 
 	{ "name": "cnn_gradswxo2_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswxo2_V", "role": "address1" }} , 
 	{ "name": "cnn_gradswxo2_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxo2_V", "role": "ce1" }} , 
 	{ "name": "cnn_gradswxo2_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswxo2_V", "role": "we1" }} , 
 	{ "name": "cnn_gradswxo2_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswxo2_V", "role": "d1" }} , 
 	{ "name": "cnn_gradswhf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswhf_V", "role": "address0" }} , 
 	{ "name": "cnn_gradswhf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhf_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradswhf_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhf_V", "role": "we0" }} , 
 	{ "name": "cnn_gradswhf_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhf_V", "role": "d0" }} , 
 	{ "name": "cnn_gradswhf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhf_V", "role": "q0" }} , 
 	{ "name": "cnn_gradswhf_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswhf_V", "role": "address1" }} , 
 	{ "name": "cnn_gradswhf_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhf_V", "role": "ce1" }} , 
 	{ "name": "cnn_gradswhf_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhf_V", "role": "we1" }} , 
 	{ "name": "cnn_gradswhf_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhf_V", "role": "d1" }} , 
 	{ "name": "cnn_gradswhg_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswhg_V", "role": "address0" }} , 
 	{ "name": "cnn_gradswhg_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhg_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradswhg_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhg_V", "role": "we0" }} , 
 	{ "name": "cnn_gradswhg_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhg_V", "role": "d0" }} , 
 	{ "name": "cnn_gradswhg_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhg_V", "role": "q0" }} , 
 	{ "name": "cnn_gradswhg_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswhg_V", "role": "address1" }} , 
 	{ "name": "cnn_gradswhg_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhg_V", "role": "ce1" }} , 
 	{ "name": "cnn_gradswhg_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhg_V", "role": "we1" }} , 
 	{ "name": "cnn_gradswhg_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhg_V", "role": "d1" }} , 
 	{ "name": "cnn_gradswhi_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswhi_V", "role": "address0" }} , 
 	{ "name": "cnn_gradswhi_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhi_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradswhi_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhi_V", "role": "we0" }} , 
 	{ "name": "cnn_gradswhi_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhi_V", "role": "d0" }} , 
 	{ "name": "cnn_gradswhi_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhi_V", "role": "q0" }} , 
 	{ "name": "cnn_gradswhi_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswhi_V", "role": "address1" }} , 
 	{ "name": "cnn_gradswhi_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhi_V", "role": "ce1" }} , 
 	{ "name": "cnn_gradswhi_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhi_V", "role": "we1" }} , 
 	{ "name": "cnn_gradswhi_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhi_V", "role": "d1" }} , 
 	{ "name": "cnn_gradswho_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswho_V", "role": "address0" }} , 
 	{ "name": "cnn_gradswho_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswho_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradswho_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswho_V", "role": "we0" }} , 
 	{ "name": "cnn_gradswho_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswho_V", "role": "d0" }} , 
 	{ "name": "cnn_gradswho_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswho_V", "role": "q0" }} , 
 	{ "name": "cnn_gradswho_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswho_V", "role": "address1" }} , 
 	{ "name": "cnn_gradswho_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswho_V", "role": "ce1" }} , 
 	{ "name": "cnn_gradswho_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswho_V", "role": "we1" }} , 
 	{ "name": "cnn_gradswho_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswho_V", "role": "d1" }} , 
 	{ "name": "cnn_gradswhf2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswhf2_V", "role": "address0" }} , 
 	{ "name": "cnn_gradswhf2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhf2_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradswhf2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhf2_V", "role": "we0" }} , 
 	{ "name": "cnn_gradswhf2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhf2_V", "role": "d0" }} , 
 	{ "name": "cnn_gradswhf2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhf2_V", "role": "q0" }} , 
 	{ "name": "cnn_gradswhf2_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswhf2_V", "role": "address1" }} , 
 	{ "name": "cnn_gradswhf2_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhf2_V", "role": "ce1" }} , 
 	{ "name": "cnn_gradswhf2_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhf2_V", "role": "we1" }} , 
 	{ "name": "cnn_gradswhf2_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhf2_V", "role": "d1" }} , 
 	{ "name": "cnn_gradswhg2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswhg2_V", "role": "address0" }} , 
 	{ "name": "cnn_gradswhg2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhg2_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradswhg2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhg2_V", "role": "we0" }} , 
 	{ "name": "cnn_gradswhg2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhg2_V", "role": "d0" }} , 
 	{ "name": "cnn_gradswhg2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhg2_V", "role": "q0" }} , 
 	{ "name": "cnn_gradswhg2_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswhg2_V", "role": "address1" }} , 
 	{ "name": "cnn_gradswhg2_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhg2_V", "role": "ce1" }} , 
 	{ "name": "cnn_gradswhg2_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhg2_V", "role": "we1" }} , 
 	{ "name": "cnn_gradswhg2_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhg2_V", "role": "d1" }} , 
 	{ "name": "cnn_gradswhi2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswhi2_V", "role": "address0" }} , 
 	{ "name": "cnn_gradswhi2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhi2_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradswhi2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhi2_V", "role": "we0" }} , 
 	{ "name": "cnn_gradswhi2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhi2_V", "role": "d0" }} , 
 	{ "name": "cnn_gradswhi2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhi2_V", "role": "q0" }} , 
 	{ "name": "cnn_gradswhi2_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswhi2_V", "role": "address1" }} , 
 	{ "name": "cnn_gradswhi2_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhi2_V", "role": "ce1" }} , 
 	{ "name": "cnn_gradswhi2_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswhi2_V", "role": "we1" }} , 
 	{ "name": "cnn_gradswhi2_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswhi2_V", "role": "d1" }} , 
 	{ "name": "cnn_gradswho2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswho2_V", "role": "address0" }} , 
 	{ "name": "cnn_gradswho2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswho2_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradswho2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswho2_V", "role": "we0" }} , 
 	{ "name": "cnn_gradswho2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswho2_V", "role": "d0" }} , 
 	{ "name": "cnn_gradswho2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswho2_V", "role": "q0" }} , 
 	{ "name": "cnn_gradswho2_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cnn_gradswho2_V", "role": "address1" }} , 
 	{ "name": "cnn_gradswho2_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswho2_V", "role": "ce1" }} , 
 	{ "name": "cnn_gradswho2_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradswho2_V", "role": "we1" }} , 
 	{ "name": "cnn_gradswho2_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradswho2_V", "role": "d1" }} , 
 	{ "name": "cnn_gradsbf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "cnn_gradsbf_V", "role": "address0" }} , 
 	{ "name": "cnn_gradsbf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradsbf_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradsbf_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradsbf_V", "role": "we0" }} , 
 	{ "name": "cnn_gradsbf_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradsbf_V", "role": "d0" }} , 
 	{ "name": "cnn_gradsbf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradsbf_V", "role": "q0" }} , 
 	{ "name": "cnn_gradsbg_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "cnn_gradsbg_V", "role": "address0" }} , 
 	{ "name": "cnn_gradsbg_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradsbg_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradsbg_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradsbg_V", "role": "we0" }} , 
 	{ "name": "cnn_gradsbg_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradsbg_V", "role": "d0" }} , 
 	{ "name": "cnn_gradsbg_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradsbg_V", "role": "q0" }} , 
 	{ "name": "cnn_gradsbi_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "cnn_gradsbi_V", "role": "address0" }} , 
 	{ "name": "cnn_gradsbi_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradsbi_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradsbi_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradsbi_V", "role": "we0" }} , 
 	{ "name": "cnn_gradsbi_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradsbi_V", "role": "d0" }} , 
 	{ "name": "cnn_gradsbi_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradsbi_V", "role": "q0" }} , 
 	{ "name": "cnn_gradsbo_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "cnn_gradsbo_V", "role": "address0" }} , 
 	{ "name": "cnn_gradsbo_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradsbo_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradsbo_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradsbo_V", "role": "we0" }} , 
 	{ "name": "cnn_gradsbo_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradsbo_V", "role": "d0" }} , 
 	{ "name": "cnn_gradsbo_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradsbo_V", "role": "q0" }} , 
 	{ "name": "cnn_gradsbf2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "cnn_gradsbf2_V", "role": "address0" }} , 
 	{ "name": "cnn_gradsbf2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradsbf2_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradsbf2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradsbf2_V", "role": "we0" }} , 
 	{ "name": "cnn_gradsbf2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradsbf2_V", "role": "d0" }} , 
 	{ "name": "cnn_gradsbf2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradsbf2_V", "role": "q0" }} , 
 	{ "name": "cnn_gradsbg2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "cnn_gradsbg2_V", "role": "address0" }} , 
 	{ "name": "cnn_gradsbg2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradsbg2_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradsbg2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradsbg2_V", "role": "we0" }} , 
 	{ "name": "cnn_gradsbg2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradsbg2_V", "role": "d0" }} , 
 	{ "name": "cnn_gradsbg2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradsbg2_V", "role": "q0" }} , 
 	{ "name": "cnn_gradsbi2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "cnn_gradsbi2_V", "role": "address0" }} , 
 	{ "name": "cnn_gradsbi2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradsbi2_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradsbi2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradsbi2_V", "role": "we0" }} , 
 	{ "name": "cnn_gradsbi2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradsbi2_V", "role": "d0" }} , 
 	{ "name": "cnn_gradsbi2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradsbi2_V", "role": "q0" }} , 
 	{ "name": "cnn_gradsbo2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "cnn_gradsbo2_V", "role": "address0" }} , 
 	{ "name": "cnn_gradsbo2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradsbo2_V", "role": "ce0" }} , 
 	{ "name": "cnn_gradsbo2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_gradsbo2_V", "role": "we0" }} , 
 	{ "name": "cnn_gradsbo2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradsbo2_V", "role": "d0" }} , 
 	{ "name": "cnn_gradsbo2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_gradsbo2_V", "role": "q0" }} , 
 	{ "name": "cnn_hs_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_hs_V", "role": "address0" }} , 
 	{ "name": "cnn_hs_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_hs_V", "role": "ce0" }} , 
 	{ "name": "cnn_hs_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_hs_V", "role": "we0" }} , 
 	{ "name": "cnn_hs_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_hs_V", "role": "d0" }} , 
 	{ "name": "cnn_hs_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_hs_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm_f_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm_f_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm_f_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_f_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm_f_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_f_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm_f_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_f_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm_f_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_f_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm_g_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm_g_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm_g_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_g_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm_g_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_g_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm_g_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_g_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm_g_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_g_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm_i_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm_i_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm_i_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_i_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm_i_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_i_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm_i_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_i_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm_i_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_i_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm_o_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm_o_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm_o_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_o_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm_o_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_o_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm_o_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_o_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm_o_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_o_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm_cache_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cnn_lstm_cache_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm_cache_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_cache_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm_cache_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_cache_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm_cache_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cnn_lstm_cache_V", "role": "address1" }} , 
 	{ "name": "cnn_lstm_cache_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm_cache_V", "role": "ce1" }} , 
 	{ "name": "cnn_lstm_cache_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm_cache_V", "role": "q1" }} , 
 	{ "name": "cnn_lstm2_f_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm2_f_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm2_f_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_f_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm2_f_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_f_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm2_f_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_f_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm2_f_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_f_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm2_g_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm2_g_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm2_g_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_g_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm2_g_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_g_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm2_g_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_g_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm2_g_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_g_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm2_i_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm2_i_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm2_i_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_i_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm2_i_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_i_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm2_i_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_i_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm2_i_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_i_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm2_o_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "cnn_lstm2_o_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm2_o_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_o_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm2_o_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_o_V", "role": "we0" }} , 
 	{ "name": "cnn_lstm2_o_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_o_V", "role": "d0" }} , 
 	{ "name": "cnn_lstm2_o_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_o_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm2_cache_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cnn_lstm2_cache_V", "role": "address0" }} , 
 	{ "name": "cnn_lstm2_cache_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_cache_V", "role": "ce0" }} , 
 	{ "name": "cnn_lstm2_cache_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_cache_V", "role": "q0" }} , 
 	{ "name": "cnn_lstm2_cache_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cnn_lstm2_cache_V", "role": "address1" }} , 
 	{ "name": "cnn_lstm2_cache_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cnn_lstm2_cache_V", "role": "ce1" }} , 
 	{ "name": "cnn_lstm2_cache_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cnn_lstm2_cache_V", "role": "q1" }} , 
 	{ "name": "dout_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dout_V", "role": "address0" }} , 
 	{ "name": "dout_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout_V", "role": "ce0" }} , 
 	{ "name": "dout_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout_V", "role": "we0" }} , 
 	{ "name": "dout_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dout_V", "role": "d0" }} , 
 	{ "name": "dout_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dout_V", "role": "q0" }} , 
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
 	{ "name": "who2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "who2_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "gradient",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "93478098", "EstimateLatencyMax" : "93478098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_backward_fu_310"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_backward_fu_310"}],
		"Port" : [
			{"Name" : "cnn_gradswxf_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswxf_V"}]},
			{"Name" : "cnn_gradswxg_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswxg_V"}]},
			{"Name" : "cnn_gradswxi_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswxi_V"}]},
			{"Name" : "cnn_gradswxo_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswxo_V"}]},
			{"Name" : "cnn_gradswxf2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswxf_V"}]},
			{"Name" : "cnn_gradswxg2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswxg_V"}]},
			{"Name" : "cnn_gradswxi2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswxi_V"}]},
			{"Name" : "cnn_gradswxo2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswxo_V"}]},
			{"Name" : "cnn_gradswhf_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswhf_V"}]},
			{"Name" : "cnn_gradswhg_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswhg_V"}]},
			{"Name" : "cnn_gradswhi_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswhi_V"}]},
			{"Name" : "cnn_gradswho_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswho_V"}]},
			{"Name" : "cnn_gradswhf2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswhf_V"}]},
			{"Name" : "cnn_gradswhg2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswhg_V"}]},
			{"Name" : "cnn_gradswhi2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswhi_V"}]},
			{"Name" : "cnn_gradswho2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswho_V"}]},
			{"Name" : "cnn_gradsbf_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradsbf_V"}]},
			{"Name" : "cnn_gradsbg_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradsbg_V"}]},
			{"Name" : "cnn_gradsbi_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradsbi_V"}]},
			{"Name" : "cnn_gradsbo_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradsbo_V"}]},
			{"Name" : "cnn_gradsbf2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradsbf_V"}]},
			{"Name" : "cnn_gradsbg2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradsbg_V"}]},
			{"Name" : "cnn_gradsbi2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradsbi_V"}]},
			{"Name" : "cnn_gradsbo2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "gradsbo_V"}]},
			{"Name" : "cnn_hs_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "hs_V"}]},
			{"Name" : "cnn_lstm_f_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_f_V"}]},
			{"Name" : "cnn_lstm_g_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_g_V"}]},
			{"Name" : "cnn_lstm_i_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_i_V"}]},
			{"Name" : "cnn_lstm_o_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_o_V"}]},
			{"Name" : "cnn_lstm_cache_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_cache_V"}]},
			{"Name" : "cnn_lstm2_f_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_f_V"}]},
			{"Name" : "cnn_lstm2_g_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_g_V"}]},
			{"Name" : "cnn_lstm2_i_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_i_V"}]},
			{"Name" : "cnn_lstm2_o_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_o_V"}]},
			{"Name" : "cnn_lstm2_cache_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_cache_V"}]},
			{"Name" : "dout_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "dout_V"}]},
			{"Name" : "wxf_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "wxf_V"}]},
			{"Name" : "wxg_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "wxg_V"}]},
			{"Name" : "wxi_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "wxi_V"}]},
			{"Name" : "wxo_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "wxo_V"}]},
			{"Name" : "whf_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "whf_V"}]},
			{"Name" : "whg_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "whg_V"}]},
			{"Name" : "whi_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "whi_V"}]},
			{"Name" : "who_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "who_V"}]},
			{"Name" : "wxf2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "wxf_V"}]},
			{"Name" : "wxg2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "wxg_V"}]},
			{"Name" : "wxi2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "wxi_V"}]},
			{"Name" : "wxo2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "wxo_V"}]},
			{"Name" : "whf2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "whf_V"}]},
			{"Name" : "whg2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "whg_V"}]},
			{"Name" : "whi2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "whi_V"}]},
			{"Name" : "who2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "who_V"}]},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backward_fu_310", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dh_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dc_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64"],
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
					{"ID" : "13", "SubInstance" : "grp_generic_tanh_double_s_fu_1360", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_generic_tanh_double_s_fu_1360", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_generic_tanh_double_s_fu_1360", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.di_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.df_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.dg_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.do_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.x_V_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.h_prev_V_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.c_prev_V_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.c_next_V_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.dh_next_V_U", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360", "Parent" : "3", "Child" : ["14", "23", "24", "25", "26", "27", "28", "29", "30", "31"],
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
					{"ID" : "14", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87", "Parent" : "13", "Child" : ["15", "16", "17", "18", "19", "20", "21", "22"],
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "14"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.kerneldl_mul_72ns_13s_84_5_1_U1", "Parent" : "14"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.kerneldl_mul_36ns_43ns_79_4_1_U2", "Parent" : "14"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.kerneldl_mul_44ns_49ns_93_5_1_U3", "Parent" : "14"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.kerneldl_mul_50ns_50ns_100_5_1_U4", "Parent" : "14"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.kerneldl_mac_muladd_16ns_16s_19s_31_4_1_U5", "Parent" : "14"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U15", "Parent" : "13"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_dsub_64ns_64ns_64_8_full_dsp_1_U16", "Parent" : "13"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U17", "Parent" : "13"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U18", "Parent" : "13"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U19", "Parent" : "13"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_dsub_64ns_64ns_64_8_full_dsp_1_U20", "Parent" : "13"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_dmul_64ns_64ns_64_8_max_dsp_1_U21", "Parent" : "13"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_ddiv_64ns_64ns_64_31_1_U22", "Parent" : "13"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_dcmp_64ns_64ns_1_2_1_U23", "Parent" : "13"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_fpext_32ns_64_2_1_U30", "Parent" : "3"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_32s_32s_62_4_1_U31", "Parent" : "3"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_16s_32s_48_4_1_U32", "Parent" : "3"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_17s_48s_62_5_1_U33", "Parent" : "3"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_16s_32s_48_4_1_U34", "Parent" : "3"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_16s_32s_48_4_1_U35", "Parent" : "3"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_32s_32s_62_4_1_U36", "Parent" : "3"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_17s_48s_62_5_1_U37", "Parent" : "3"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_17s_48s_62_5_1_U38", "Parent" : "3"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U39", "Parent" : "3"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mac_mulsub_16s_16s_26ns_32_4_1_U40", "Parent" : "3"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U41", "Parent" : "3"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U42", "Parent" : "3"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U43", "Parent" : "3"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U44", "Parent" : "3"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U45", "Parent" : "3"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mac_mulsub_16s_16s_26ns_32_4_1_U46", "Parent" : "3"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U47", "Parent" : "3"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U48", "Parent" : "3"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U49", "Parent" : "3"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U50", "Parent" : "3"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U51", "Parent" : "3"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U52", "Parent" : "3"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U53", "Parent" : "3"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U54", "Parent" : "3"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U55", "Parent" : "3"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U56", "Parent" : "3"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U57", "Parent" : "3"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U58", "Parent" : "3"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U59", "Parent" : "3"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U60", "Parent" : "3"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U61", "Parent" : "3"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U62", "Parent" : "3"}]}


set ArgLastReadFirstWriteLatency {
	gradient {
		cnn_gradswxf_V {Type IO LastRead 9 FirstWrite 12}
		cnn_gradswxg_V {Type IO LastRead 9 FirstWrite 12}
		cnn_gradswxi_V {Type IO LastRead 9 FirstWrite 12}
		cnn_gradswxo_V {Type IO LastRead 9 FirstWrite 12}
		cnn_gradswxf2_V {Type IO LastRead 9 FirstWrite 12}
		cnn_gradswxg2_V {Type IO LastRead 9 FirstWrite 12}
		cnn_gradswxi2_V {Type IO LastRead 9 FirstWrite 12}
		cnn_gradswxo2_V {Type IO LastRead 9 FirstWrite 12}
		cnn_gradswhf_V {Type IO LastRead 9 FirstWrite 13}
		cnn_gradswhg_V {Type IO LastRead 9 FirstWrite 13}
		cnn_gradswhi_V {Type IO LastRead 9 FirstWrite 13}
		cnn_gradswho_V {Type IO LastRead 9 FirstWrite 13}
		cnn_gradswhf2_V {Type IO LastRead 9 FirstWrite 13}
		cnn_gradswhg2_V {Type IO LastRead 9 FirstWrite 13}
		cnn_gradswhi2_V {Type IO LastRead 9 FirstWrite 13}
		cnn_gradswho2_V {Type IO LastRead 9 FirstWrite 13}
		cnn_gradsbf_V {Type IO LastRead 8 FirstWrite 10}
		cnn_gradsbg_V {Type IO LastRead 11 FirstWrite 13}
		cnn_gradsbi_V {Type IO LastRead 14 FirstWrite 16}
		cnn_gradsbo_V {Type IO LastRead 17 FirstWrite 19}
		cnn_gradsbf2_V {Type IO LastRead 8 FirstWrite 10}
		cnn_gradsbg2_V {Type IO LastRead 11 FirstWrite 13}
		cnn_gradsbi2_V {Type IO LastRead 14 FirstWrite 16}
		cnn_gradsbo2_V {Type IO LastRead 17 FirstWrite 19}
		cnn_hs_V {Type IO LastRead 2 FirstWrite -1}
		cnn_lstm_f_V {Type IO LastRead 116 FirstWrite 4}
		cnn_lstm_g_V {Type IO LastRead 116 FirstWrite 4}
		cnn_lstm_i_V {Type IO LastRead 116 FirstWrite 3}
		cnn_lstm_o_V {Type IO LastRead 107 FirstWrite 5}
		cnn_lstm_cache_V {Type I LastRead 5 FirstWrite -1}
		cnn_lstm2_f_V {Type IO LastRead 116 FirstWrite 4}
		cnn_lstm2_g_V {Type IO LastRead 116 FirstWrite 4}
		cnn_lstm2_i_V {Type IO LastRead 116 FirstWrite 3}
		cnn_lstm2_o_V {Type IO LastRead 107 FirstWrite 5}
		cnn_lstm2_cache_V {Type I LastRead 5 FirstWrite -1}
		dout_V {Type IO LastRead 12 FirstWrite 1}
		wxf_V {Type I LastRead 7 FirstWrite -1}
		wxg_V {Type I LastRead 7 FirstWrite -1}
		wxi_V {Type I LastRead 7 FirstWrite -1}
		wxo_V {Type I LastRead 7 FirstWrite -1}
		whf_V {Type I LastRead 7 FirstWrite -1}
		whg_V {Type I LastRead 7 FirstWrite -1}
		whi_V {Type I LastRead 7 FirstWrite -1}
		who_V {Type I LastRead 7 FirstWrite -1}
		wxf2_V {Type I LastRead 7 FirstWrite -1}
		wxg2_V {Type I LastRead 7 FirstWrite -1}
		wxi2_V {Type I LastRead 7 FirstWrite -1}
		wxo2_V {Type I LastRead 7 FirstWrite -1}
		whf2_V {Type I LastRead 7 FirstWrite -1}
		whg2_V {Type I LastRead 7 FirstWrite -1}
		whi2_V {Type I LastRead 7 FirstWrite -1}
		who2_V {Type I LastRead 7 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "93478098", "Max" : "93478098"}
	, {"Name" : "Interval", "Min" : "93478098", "Max" : "93478098"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	cnn_gradswxf_V { ap_memory {  { cnn_gradswxf_V_address0 mem_address 1 17 }  { cnn_gradswxf_V_ce0 mem_ce 1 1 }  { cnn_gradswxf_V_we0 mem_we 1 1 }  { cnn_gradswxf_V_d0 mem_din 1 16 }  { cnn_gradswxf_V_q0 mem_dout 0 16 }  { cnn_gradswxf_V_address1 MemPortADDR2 1 17 }  { cnn_gradswxf_V_ce1 MemPortCE2 1 1 }  { cnn_gradswxf_V_we1 MemPortWE2 1 1 }  { cnn_gradswxf_V_d1 MemPortDIN2 1 16 } } }
	cnn_gradswxg_V { ap_memory {  { cnn_gradswxg_V_address0 mem_address 1 17 }  { cnn_gradswxg_V_ce0 mem_ce 1 1 }  { cnn_gradswxg_V_we0 mem_we 1 1 }  { cnn_gradswxg_V_d0 mem_din 1 16 }  { cnn_gradswxg_V_q0 mem_dout 0 16 }  { cnn_gradswxg_V_address1 MemPortADDR2 1 17 }  { cnn_gradswxg_V_ce1 MemPortCE2 1 1 }  { cnn_gradswxg_V_we1 MemPortWE2 1 1 }  { cnn_gradswxg_V_d1 MemPortDIN2 1 16 } } }
	cnn_gradswxi_V { ap_memory {  { cnn_gradswxi_V_address0 mem_address 1 17 }  { cnn_gradswxi_V_ce0 mem_ce 1 1 }  { cnn_gradswxi_V_we0 mem_we 1 1 }  { cnn_gradswxi_V_d0 mem_din 1 16 }  { cnn_gradswxi_V_q0 mem_dout 0 16 }  { cnn_gradswxi_V_address1 MemPortADDR2 1 17 }  { cnn_gradswxi_V_ce1 MemPortCE2 1 1 }  { cnn_gradswxi_V_we1 MemPortWE2 1 1 }  { cnn_gradswxi_V_d1 MemPortDIN2 1 16 } } }
	cnn_gradswxo_V { ap_memory {  { cnn_gradswxo_V_address0 mem_address 1 17 }  { cnn_gradswxo_V_ce0 mem_ce 1 1 }  { cnn_gradswxo_V_we0 mem_we 1 1 }  { cnn_gradswxo_V_d0 mem_din 1 16 }  { cnn_gradswxo_V_q0 mem_dout 0 16 }  { cnn_gradswxo_V_address1 MemPortADDR2 1 17 }  { cnn_gradswxo_V_ce1 MemPortCE2 1 1 }  { cnn_gradswxo_V_we1 MemPortWE2 1 1 }  { cnn_gradswxo_V_d1 MemPortDIN2 1 16 } } }
	cnn_gradswxf2_V { ap_memory {  { cnn_gradswxf2_V_address0 mem_address 1 17 }  { cnn_gradswxf2_V_ce0 mem_ce 1 1 }  { cnn_gradswxf2_V_we0 mem_we 1 1 }  { cnn_gradswxf2_V_d0 mem_din 1 16 }  { cnn_gradswxf2_V_q0 mem_dout 0 16 }  { cnn_gradswxf2_V_address1 MemPortADDR2 1 17 }  { cnn_gradswxf2_V_ce1 MemPortCE2 1 1 }  { cnn_gradswxf2_V_we1 MemPortWE2 1 1 }  { cnn_gradswxf2_V_d1 MemPortDIN2 1 16 } } }
	cnn_gradswxg2_V { ap_memory {  { cnn_gradswxg2_V_address0 mem_address 1 17 }  { cnn_gradswxg2_V_ce0 mem_ce 1 1 }  { cnn_gradswxg2_V_we0 mem_we 1 1 }  { cnn_gradswxg2_V_d0 mem_din 1 16 }  { cnn_gradswxg2_V_q0 mem_dout 0 16 }  { cnn_gradswxg2_V_address1 MemPortADDR2 1 17 }  { cnn_gradswxg2_V_ce1 MemPortCE2 1 1 }  { cnn_gradswxg2_V_we1 MemPortWE2 1 1 }  { cnn_gradswxg2_V_d1 MemPortDIN2 1 16 } } }
	cnn_gradswxi2_V { ap_memory {  { cnn_gradswxi2_V_address0 mem_address 1 17 }  { cnn_gradswxi2_V_ce0 mem_ce 1 1 }  { cnn_gradswxi2_V_we0 mem_we 1 1 }  { cnn_gradswxi2_V_d0 mem_din 1 16 }  { cnn_gradswxi2_V_q0 mem_dout 0 16 }  { cnn_gradswxi2_V_address1 MemPortADDR2 1 17 }  { cnn_gradswxi2_V_ce1 MemPortCE2 1 1 }  { cnn_gradswxi2_V_we1 MemPortWE2 1 1 }  { cnn_gradswxi2_V_d1 MemPortDIN2 1 16 } } }
	cnn_gradswxo2_V { ap_memory {  { cnn_gradswxo2_V_address0 mem_address 1 17 }  { cnn_gradswxo2_V_ce0 mem_ce 1 1 }  { cnn_gradswxo2_V_we0 mem_we 1 1 }  { cnn_gradswxo2_V_d0 mem_din 1 16 }  { cnn_gradswxo2_V_q0 mem_dout 0 16 }  { cnn_gradswxo2_V_address1 MemPortADDR2 1 17 }  { cnn_gradswxo2_V_ce1 MemPortCE2 1 1 }  { cnn_gradswxo2_V_we1 MemPortWE2 1 1 }  { cnn_gradswxo2_V_d1 MemPortDIN2 1 16 } } }
	cnn_gradswhf_V { ap_memory {  { cnn_gradswhf_V_address0 mem_address 1 17 }  { cnn_gradswhf_V_ce0 mem_ce 1 1 }  { cnn_gradswhf_V_we0 mem_we 1 1 }  { cnn_gradswhf_V_d0 mem_din 1 16 }  { cnn_gradswhf_V_q0 mem_dout 0 16 }  { cnn_gradswhf_V_address1 MemPortADDR2 1 17 }  { cnn_gradswhf_V_ce1 MemPortCE2 1 1 }  { cnn_gradswhf_V_we1 MemPortWE2 1 1 }  { cnn_gradswhf_V_d1 MemPortDIN2 1 16 } } }
	cnn_gradswhg_V { ap_memory {  { cnn_gradswhg_V_address0 mem_address 1 17 }  { cnn_gradswhg_V_ce0 mem_ce 1 1 }  { cnn_gradswhg_V_we0 mem_we 1 1 }  { cnn_gradswhg_V_d0 mem_din 1 16 }  { cnn_gradswhg_V_q0 mem_dout 0 16 }  { cnn_gradswhg_V_address1 MemPortADDR2 1 17 }  { cnn_gradswhg_V_ce1 MemPortCE2 1 1 }  { cnn_gradswhg_V_we1 MemPortWE2 1 1 }  { cnn_gradswhg_V_d1 MemPortDIN2 1 16 } } }
	cnn_gradswhi_V { ap_memory {  { cnn_gradswhi_V_address0 mem_address 1 17 }  { cnn_gradswhi_V_ce0 mem_ce 1 1 }  { cnn_gradswhi_V_we0 mem_we 1 1 }  { cnn_gradswhi_V_d0 mem_din 1 16 }  { cnn_gradswhi_V_q0 mem_dout 0 16 }  { cnn_gradswhi_V_address1 MemPortADDR2 1 17 }  { cnn_gradswhi_V_ce1 MemPortCE2 1 1 }  { cnn_gradswhi_V_we1 MemPortWE2 1 1 }  { cnn_gradswhi_V_d1 MemPortDIN2 1 16 } } }
	cnn_gradswho_V { ap_memory {  { cnn_gradswho_V_address0 mem_address 1 17 }  { cnn_gradswho_V_ce0 mem_ce 1 1 }  { cnn_gradswho_V_we0 mem_we 1 1 }  { cnn_gradswho_V_d0 mem_din 1 16 }  { cnn_gradswho_V_q0 mem_dout 0 16 }  { cnn_gradswho_V_address1 MemPortADDR2 1 17 }  { cnn_gradswho_V_ce1 MemPortCE2 1 1 }  { cnn_gradswho_V_we1 MemPortWE2 1 1 }  { cnn_gradswho_V_d1 MemPortDIN2 1 16 } } }
	cnn_gradswhf2_V { ap_memory {  { cnn_gradswhf2_V_address0 mem_address 1 17 }  { cnn_gradswhf2_V_ce0 mem_ce 1 1 }  { cnn_gradswhf2_V_we0 mem_we 1 1 }  { cnn_gradswhf2_V_d0 mem_din 1 16 }  { cnn_gradswhf2_V_q0 mem_dout 0 16 }  { cnn_gradswhf2_V_address1 MemPortADDR2 1 17 }  { cnn_gradswhf2_V_ce1 MemPortCE2 1 1 }  { cnn_gradswhf2_V_we1 MemPortWE2 1 1 }  { cnn_gradswhf2_V_d1 MemPortDIN2 1 16 } } }
	cnn_gradswhg2_V { ap_memory {  { cnn_gradswhg2_V_address0 mem_address 1 17 }  { cnn_gradswhg2_V_ce0 mem_ce 1 1 }  { cnn_gradswhg2_V_we0 mem_we 1 1 }  { cnn_gradswhg2_V_d0 mem_din 1 16 }  { cnn_gradswhg2_V_q0 mem_dout 0 16 }  { cnn_gradswhg2_V_address1 MemPortADDR2 1 17 }  { cnn_gradswhg2_V_ce1 MemPortCE2 1 1 }  { cnn_gradswhg2_V_we1 MemPortWE2 1 1 }  { cnn_gradswhg2_V_d1 MemPortDIN2 1 16 } } }
	cnn_gradswhi2_V { ap_memory {  { cnn_gradswhi2_V_address0 mem_address 1 17 }  { cnn_gradswhi2_V_ce0 mem_ce 1 1 }  { cnn_gradswhi2_V_we0 mem_we 1 1 }  { cnn_gradswhi2_V_d0 mem_din 1 16 }  { cnn_gradswhi2_V_q0 mem_dout 0 16 }  { cnn_gradswhi2_V_address1 MemPortADDR2 1 17 }  { cnn_gradswhi2_V_ce1 MemPortCE2 1 1 }  { cnn_gradswhi2_V_we1 MemPortWE2 1 1 }  { cnn_gradswhi2_V_d1 MemPortDIN2 1 16 } } }
	cnn_gradswho2_V { ap_memory {  { cnn_gradswho2_V_address0 mem_address 1 17 }  { cnn_gradswho2_V_ce0 mem_ce 1 1 }  { cnn_gradswho2_V_we0 mem_we 1 1 }  { cnn_gradswho2_V_d0 mem_din 1 16 }  { cnn_gradswho2_V_q0 mem_dout 0 16 }  { cnn_gradswho2_V_address1 MemPortADDR2 1 17 }  { cnn_gradswho2_V_ce1 MemPortCE2 1 1 }  { cnn_gradswho2_V_we1 MemPortWE2 1 1 }  { cnn_gradswho2_V_d1 MemPortDIN2 1 16 } } }
	cnn_gradsbf_V { ap_memory {  { cnn_gradsbf_V_address0 mem_address 1 9 }  { cnn_gradsbf_V_ce0 mem_ce 1 1 }  { cnn_gradsbf_V_we0 mem_we 1 1 }  { cnn_gradsbf_V_d0 mem_din 1 16 }  { cnn_gradsbf_V_q0 mem_dout 0 16 } } }
	cnn_gradsbg_V { ap_memory {  { cnn_gradsbg_V_address0 mem_address 1 9 }  { cnn_gradsbg_V_ce0 mem_ce 1 1 }  { cnn_gradsbg_V_we0 mem_we 1 1 }  { cnn_gradsbg_V_d0 mem_din 1 16 }  { cnn_gradsbg_V_q0 mem_dout 0 16 } } }
	cnn_gradsbi_V { ap_memory {  { cnn_gradsbi_V_address0 mem_address 1 9 }  { cnn_gradsbi_V_ce0 mem_ce 1 1 }  { cnn_gradsbi_V_we0 mem_we 1 1 }  { cnn_gradsbi_V_d0 mem_din 1 16 }  { cnn_gradsbi_V_q0 mem_dout 0 16 } } }
	cnn_gradsbo_V { ap_memory {  { cnn_gradsbo_V_address0 mem_address 1 9 }  { cnn_gradsbo_V_ce0 mem_ce 1 1 }  { cnn_gradsbo_V_we0 mem_we 1 1 }  { cnn_gradsbo_V_d0 mem_din 1 16 }  { cnn_gradsbo_V_q0 mem_dout 0 16 } } }
	cnn_gradsbf2_V { ap_memory {  { cnn_gradsbf2_V_address0 mem_address 1 9 }  { cnn_gradsbf2_V_ce0 mem_ce 1 1 }  { cnn_gradsbf2_V_we0 mem_we 1 1 }  { cnn_gradsbf2_V_d0 mem_din 1 16 }  { cnn_gradsbf2_V_q0 mem_dout 0 16 } } }
	cnn_gradsbg2_V { ap_memory {  { cnn_gradsbg2_V_address0 mem_address 1 9 }  { cnn_gradsbg2_V_ce0 mem_ce 1 1 }  { cnn_gradsbg2_V_we0 mem_we 1 1 }  { cnn_gradsbg2_V_d0 mem_din 1 16 }  { cnn_gradsbg2_V_q0 mem_dout 0 16 } } }
	cnn_gradsbi2_V { ap_memory {  { cnn_gradsbi2_V_address0 mem_address 1 9 }  { cnn_gradsbi2_V_ce0 mem_ce 1 1 }  { cnn_gradsbi2_V_we0 mem_we 1 1 }  { cnn_gradsbi2_V_d0 mem_din 1 16 }  { cnn_gradsbi2_V_q0 mem_dout 0 16 } } }
	cnn_gradsbo2_V { ap_memory {  { cnn_gradsbo2_V_address0 mem_address 1 9 }  { cnn_gradsbo2_V_ce0 mem_ce 1 1 }  { cnn_gradsbo2_V_we0 mem_we 1 1 }  { cnn_gradsbo2_V_d0 mem_din 1 16 }  { cnn_gradsbo2_V_q0 mem_dout 0 16 } } }
	cnn_hs_V { ap_memory {  { cnn_hs_V_address0 mem_address 1 16 }  { cnn_hs_V_ce0 mem_ce 1 1 }  { cnn_hs_V_we0 mem_we 1 1 }  { cnn_hs_V_d0 mem_din 1 16 }  { cnn_hs_V_q0 mem_dout 0 16 } } }
	cnn_lstm_f_V { ap_memory {  { cnn_lstm_f_V_address0 mem_address 1 15 }  { cnn_lstm_f_V_ce0 mem_ce 1 1 }  { cnn_lstm_f_V_we0 mem_we 1 1 }  { cnn_lstm_f_V_d0 mem_din 1 16 }  { cnn_lstm_f_V_q0 mem_dout 0 16 } } }
	cnn_lstm_g_V { ap_memory {  { cnn_lstm_g_V_address0 mem_address 1 15 }  { cnn_lstm_g_V_ce0 mem_ce 1 1 }  { cnn_lstm_g_V_we0 mem_we 1 1 }  { cnn_lstm_g_V_d0 mem_din 1 16 }  { cnn_lstm_g_V_q0 mem_dout 0 16 } } }
	cnn_lstm_i_V { ap_memory {  { cnn_lstm_i_V_address0 mem_address 1 15 }  { cnn_lstm_i_V_ce0 mem_ce 1 1 }  { cnn_lstm_i_V_we0 mem_we 1 1 }  { cnn_lstm_i_V_d0 mem_din 1 16 }  { cnn_lstm_i_V_q0 mem_dout 0 16 } } }
	cnn_lstm_o_V { ap_memory {  { cnn_lstm_o_V_address0 mem_address 1 15 }  { cnn_lstm_o_V_ce0 mem_ce 1 1 }  { cnn_lstm_o_V_we0 mem_we 1 1 }  { cnn_lstm_o_V_d0 mem_din 1 16 }  { cnn_lstm_o_V_q0 mem_dout 0 16 } } }
	cnn_lstm_cache_V { ap_memory {  { cnn_lstm_cache_V_address0 mem_address 1 18 }  { cnn_lstm_cache_V_ce0 mem_ce 1 1 }  { cnn_lstm_cache_V_q0 mem_dout 0 16 }  { cnn_lstm_cache_V_address1 MemPortADDR2 1 18 }  { cnn_lstm_cache_V_ce1 MemPortCE2 1 1 }  { cnn_lstm_cache_V_q1 MemPortDOUT2 0 16 } } }
	cnn_lstm2_f_V { ap_memory {  { cnn_lstm2_f_V_address0 mem_address 1 15 }  { cnn_lstm2_f_V_ce0 mem_ce 1 1 }  { cnn_lstm2_f_V_we0 mem_we 1 1 }  { cnn_lstm2_f_V_d0 mem_din 1 16 }  { cnn_lstm2_f_V_q0 mem_dout 0 16 } } }
	cnn_lstm2_g_V { ap_memory {  { cnn_lstm2_g_V_address0 mem_address 1 15 }  { cnn_lstm2_g_V_ce0 mem_ce 1 1 }  { cnn_lstm2_g_V_we0 mem_we 1 1 }  { cnn_lstm2_g_V_d0 mem_din 1 16 }  { cnn_lstm2_g_V_q0 mem_dout 0 16 } } }
	cnn_lstm2_i_V { ap_memory {  { cnn_lstm2_i_V_address0 mem_address 1 15 }  { cnn_lstm2_i_V_ce0 mem_ce 1 1 }  { cnn_lstm2_i_V_we0 mem_we 1 1 }  { cnn_lstm2_i_V_d0 mem_din 1 16 }  { cnn_lstm2_i_V_q0 mem_dout 0 16 } } }
	cnn_lstm2_o_V { ap_memory {  { cnn_lstm2_o_V_address0 mem_address 1 15 }  { cnn_lstm2_o_V_ce0 mem_ce 1 1 }  { cnn_lstm2_o_V_we0 mem_we 1 1 }  { cnn_lstm2_o_V_d0 mem_din 1 16 }  { cnn_lstm2_o_V_q0 mem_dout 0 16 } } }
	cnn_lstm2_cache_V { ap_memory {  { cnn_lstm2_cache_V_address0 mem_address 1 18 }  { cnn_lstm2_cache_V_ce0 mem_ce 1 1 }  { cnn_lstm2_cache_V_q0 mem_dout 0 16 }  { cnn_lstm2_cache_V_address1 MemPortADDR2 1 18 }  { cnn_lstm2_cache_V_ce1 MemPortCE2 1 1 }  { cnn_lstm2_cache_V_q1 MemPortDOUT2 0 16 } } }
	dout_V { ap_memory {  { dout_V_address0 mem_address 1 16 }  { dout_V_ce0 mem_ce 1 1 }  { dout_V_we0 mem_we 1 1 }  { dout_V_d0 mem_din 1 16 }  { dout_V_q0 mem_dout 0 16 } } }
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
}
