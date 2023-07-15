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
	{ gmem int 32 regular {axi_master 2}  }
	{ datax int 64 regular {axi_slave 0}  }
	{ datay int 64 regular {axi_slave 0}  }
	{ dout int 64 regular {axi_slave 0}  }
	{ buffer_output int 64 regular {axi_slave 0}  }
	{ model int 32 regular {axi_slave 0}  }
	{ wxf_V int 64 regular {axi_slave 0}  }
	{ wxg_V int 64 regular {axi_slave 0}  }
	{ wxi_V int 64 regular {axi_slave 0}  }
	{ wxo_V int 64 regular {axi_slave 0}  }
	{ whf_V int 64 regular {axi_slave 0}  }
	{ whg_V int 64 regular {axi_slave 0}  }
	{ whi_V int 64 regular {axi_slave 0}  }
	{ who_V int 64 regular {axi_slave 0}  }
	{ wxf2_V int 64 regular {axi_slave 0}  }
	{ wxg2_V int 64 regular {axi_slave 0}  }
	{ wxi2_V int 64 regular {axi_slave 0}  }
	{ wxo2_V int 64 regular {axi_slave 0}  }
	{ whf2_V int 64 regular {axi_slave 0}  }
	{ whg2_V int 64 regular {axi_slave 0}  }
	{ whi2_V int 64 regular {axi_slave 0}  }
	{ who2_V int 64 regular {axi_slave 0}  }
	{ bf_V int 64 regular {axi_slave 0}  }
	{ bg_V int 64 regular {axi_slave 0}  }
	{ bi_V int 64 regular {axi_slave 0}  }
	{ bo_V int 64 regular {axi_slave 0}  }
	{ bf2_V int 64 regular {axi_slave 0}  }
	{ bg2_V int 64 regular {axi_slave 0}  }
	{ bi2_V int 64 regular {axi_slave 0}  }
	{ bo2_V int 64 regular {axi_slave 0}  }
	{ h_wxf_V int 64 regular {axi_slave 0}  }
	{ h_wxg_V int 64 regular {axi_slave 0}  }
	{ h_wxi_V int 64 regular {axi_slave 0}  }
	{ h_wxo_V int 64 regular {axi_slave 0}  }
	{ h_whf_V int 64 regular {axi_slave 0}  }
	{ h_whg_V int 64 regular {axi_slave 0}  }
	{ h_whi_V int 64 regular {axi_slave 0}  }
	{ h_who_V int 64 regular {axi_slave 0}  }
	{ h_wxf2_V int 64 regular {axi_slave 0}  }
	{ h_wxg2_V int 64 regular {axi_slave 0}  }
	{ h_wxi2_V int 64 regular {axi_slave 0}  }
	{ h_wxo2_V int 64 regular {axi_slave 0}  }
	{ h_whf2_V int 64 regular {axi_slave 0}  }
	{ h_whg2_V int 64 regular {axi_slave 0}  }
	{ h_whi2_V int 64 regular {axi_slave 0}  }
	{ h_who2_V int 64 regular {axi_slave 0}  }
	{ h_bf_V int 64 regular {axi_slave 0}  }
	{ h_bg_V int 64 regular {axi_slave 0}  }
	{ h_bi_V int 64 regular {axi_slave 0}  }
	{ h_bo_V int 64 regular {axi_slave 0}  }
	{ h_bf2_V int 64 regular {axi_slave 0}  }
	{ h_bg2_V int 64 regular {axi_slave 0}  }
	{ h_bi2_V int 64 regular {axi_slave 0}  }
	{ h_bo2_V int 64 regular {axi_slave 0}  }
	{ count int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "datax","cData": "float","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "datax","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "datay","cData": "float","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "datay","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "dout","cData": "float","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "dout","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "buffer_output","cData": "float","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "buffer_output","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "wxf_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "wxf_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "wxg_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "wxg_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "wxi_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "wxi_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "wxo_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "wxo_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "whf_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "whf_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "whg_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "whg_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "whi_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "whi_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "who_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "who_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "wxf2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "wxf2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "wxg2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "wxg2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "wxi2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "wxi2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "wxo2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "wxo2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "whf2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "whf2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "whg2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "whg2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "whi2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "whi2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "who2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "who2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "bf_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bf_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "bg_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bg_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "bi_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bi_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "bo_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bo_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "bf2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bf2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "bg2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bg2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "bi2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bi2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "bo2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bo2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_wxf_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_wxf_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_wxg_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_wxg_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_wxi_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_wxi_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_wxo_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_wxo_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_whf_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_whf_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_whg_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_whg_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_whi_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_whi_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_who_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_who_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_wxf2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_wxf2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_wxg2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_wxg2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_wxi2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_wxi2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_wxo2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_wxo2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_whf2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_whf2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_whg2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_whg2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_whi2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_whi2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_who2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_who2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_bf_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_bf_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_bg_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_bg_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_bi_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_bi_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_bo_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_bo_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_bf2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_bf2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_bg2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_bg2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_bi2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_bi2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]},{"cName": "h_bo2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_bo2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]},{"low":16,"up":31,"cElement": [{"cName": "datax","cData": "float","bit_use": { "low": 16,"up": 31},"offset": { "type": "dynamic","port_name": "datax","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "datay","cData": "float","bit_use": { "low": 16,"up": 31},"offset": { "type": "dynamic","port_name": "datay","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "dout","cData": "float","bit_use": { "low": 16,"up": 31},"offset": { "type": "dynamic","port_name": "dout","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "buffer_output","cData": "float","bit_use": { "low": 16,"up": 31},"offset": { "type": "dynamic","port_name": "buffer_output","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "wxf_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "wxf_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "wxg_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "wxg_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "wxi_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "wxi_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "wxo_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "wxo_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "whf_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "whf_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "whg_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "whg_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "whi_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "whi_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "who_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "who_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "wxf2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "wxf2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "wxg2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "wxg2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "wxi2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "wxi2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "wxo2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "wxo2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "whf2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "whf2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "whg2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "whg2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "whi2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "whi2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "who2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "who2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "bf_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bf_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "bg_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bg_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "bi_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bi_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "bo_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bo_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "bf2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bf2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "bg2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bg2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "bi2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bi2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "bo2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bo2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_wxf_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_wxf_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_wxg_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_wxg_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_wxi_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_wxi_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_wxo_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_wxo_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_whf_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_whf_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_whg_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_whg_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_whi_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_whi_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_who_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_who_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_wxf2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_wxf2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_wxg2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_wxg2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_wxi2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_wxi2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_wxo2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_wxo2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_whf2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_whf2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_whg2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_whg2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_whi2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_whi2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_who2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_who2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_bf_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_bf_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_bg_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_bg_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_bi_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_bi_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_bo_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_bo_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_bf2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_bf2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_bg2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_bg2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_bi2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_bi2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]},{"cName": "h_bo2_.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "h_bo2_V","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 1,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "datax", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "datay", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "dout", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "buffer_output", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "model", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "model","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "wxf_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":83}} , 
 	{ "Name" : "wxg_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":84}, "offset_end" : {"in":95}} , 
 	{ "Name" : "wxi_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":107}} , 
 	{ "Name" : "wxo_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":108}, "offset_end" : {"in":119}} , 
 	{ "Name" : "whf_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":120}, "offset_end" : {"in":131}} , 
 	{ "Name" : "whg_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":132}, "offset_end" : {"in":143}} , 
 	{ "Name" : "whi_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":144}, "offset_end" : {"in":155}} , 
 	{ "Name" : "who_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":156}, "offset_end" : {"in":167}} , 
 	{ "Name" : "wxf2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":168}, "offset_end" : {"in":179}} , 
 	{ "Name" : "wxg2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":180}, "offset_end" : {"in":191}} , 
 	{ "Name" : "wxi2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":192}, "offset_end" : {"in":203}} , 
 	{ "Name" : "wxo2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":204}, "offset_end" : {"in":215}} , 
 	{ "Name" : "whf2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":216}, "offset_end" : {"in":227}} , 
 	{ "Name" : "whg2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":228}, "offset_end" : {"in":239}} , 
 	{ "Name" : "whi2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":240}, "offset_end" : {"in":251}} , 
 	{ "Name" : "who2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":252}, "offset_end" : {"in":263}} , 
 	{ "Name" : "bf_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":264}, "offset_end" : {"in":275}} , 
 	{ "Name" : "bg_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":276}, "offset_end" : {"in":287}} , 
 	{ "Name" : "bi_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":288}, "offset_end" : {"in":299}} , 
 	{ "Name" : "bo_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":300}, "offset_end" : {"in":311}} , 
 	{ "Name" : "bf2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":312}, "offset_end" : {"in":323}} , 
 	{ "Name" : "bg2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":324}, "offset_end" : {"in":335}} , 
 	{ "Name" : "bi2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":336}, "offset_end" : {"in":347}} , 
 	{ "Name" : "bo2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":348}, "offset_end" : {"in":359}} , 
 	{ "Name" : "h_wxf_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":360}, "offset_end" : {"in":371}} , 
 	{ "Name" : "h_wxg_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":372}, "offset_end" : {"in":383}} , 
 	{ "Name" : "h_wxi_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":384}, "offset_end" : {"in":395}} , 
 	{ "Name" : "h_wxo_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":396}, "offset_end" : {"in":407}} , 
 	{ "Name" : "h_whf_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":408}, "offset_end" : {"in":419}} , 
 	{ "Name" : "h_whg_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":420}, "offset_end" : {"in":431}} , 
 	{ "Name" : "h_whi_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":432}, "offset_end" : {"in":443}} , 
 	{ "Name" : "h_who_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":444}, "offset_end" : {"in":455}} , 
 	{ "Name" : "h_wxf2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":456}, "offset_end" : {"in":467}} , 
 	{ "Name" : "h_wxg2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":468}, "offset_end" : {"in":479}} , 
 	{ "Name" : "h_wxi2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":480}, "offset_end" : {"in":491}} , 
 	{ "Name" : "h_wxo2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":492}, "offset_end" : {"in":503}} , 
 	{ "Name" : "h_whf2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":504}, "offset_end" : {"in":515}} , 
 	{ "Name" : "h_whg2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":516}, "offset_end" : {"in":527}} , 
 	{ "Name" : "h_whi2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":528}, "offset_end" : {"in":539}} , 
 	{ "Name" : "h_who2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":540}, "offset_end" : {"in":551}} , 
 	{ "Name" : "h_bf_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":552}, "offset_end" : {"in":563}} , 
 	{ "Name" : "h_bg_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":564}, "offset_end" : {"in":575}} , 
 	{ "Name" : "h_bi_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":576}, "offset_end" : {"in":587}} , 
 	{ "Name" : "h_bo_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":588}, "offset_end" : {"in":599}} , 
 	{ "Name" : "h_bf2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":600}, "offset_end" : {"in":611}} , 
 	{ "Name" : "h_bg2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":612}, "offset_end" : {"in":623}} , 
 	{ "Name" : "h_bi2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":624}, "offset_end" : {"in":635}} , 
 	{ "Name" : "h_bo2_V", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":636}, "offset_end" : {"in":647}} , 
 	{ "Name" : "count", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "count","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":648}, "offset_end" : {"in":655}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 10 signal -1 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"kerneldl","role":"start","value":"0","valid_bit":"0"},{"name":"kerneldl","role":"continue","value":"0","valid_bit":"4"},{"name":"kerneldl","role":"auto_start","value":"0","valid_bit":"7"},{"name":"datax","role":"data","value":"16"},{"name":"datay","role":"data","value":"28"},{"name":"dout","role":"data","value":"40"},{"name":"buffer_output","role":"data","value":"52"},{"name":"model","role":"data","value":"64"},{"name":"wxf_V","role":"data","value":"72"},{"name":"wxg_V","role":"data","value":"84"},{"name":"wxi_V","role":"data","value":"96"},{"name":"wxo_V","role":"data","value":"108"},{"name":"whf_V","role":"data","value":"120"},{"name":"whg_V","role":"data","value":"132"},{"name":"whi_V","role":"data","value":"144"},{"name":"who_V","role":"data","value":"156"},{"name":"wxf2_V","role":"data","value":"168"},{"name":"wxg2_V","role":"data","value":"180"},{"name":"wxi2_V","role":"data","value":"192"},{"name":"wxo2_V","role":"data","value":"204"},{"name":"whf2_V","role":"data","value":"216"},{"name":"whg2_V","role":"data","value":"228"},{"name":"whi2_V","role":"data","value":"240"},{"name":"who2_V","role":"data","value":"252"},{"name":"bf_V","role":"data","value":"264"},{"name":"bg_V","role":"data","value":"276"},{"name":"bi_V","role":"data","value":"288"},{"name":"bo_V","role":"data","value":"300"},{"name":"bf2_V","role":"data","value":"312"},{"name":"bg2_V","role":"data","value":"324"},{"name":"bi2_V","role":"data","value":"336"},{"name":"bo2_V","role":"data","value":"348"},{"name":"h_wxf_V","role":"data","value":"360"},{"name":"h_wxg_V","role":"data","value":"372"},{"name":"h_wxi_V","role":"data","value":"384"},{"name":"h_wxo_V","role":"data","value":"396"},{"name":"h_whf_V","role":"data","value":"408"},{"name":"h_whg_V","role":"data","value":"420"},{"name":"h_whi_V","role":"data","value":"432"},{"name":"h_who_V","role":"data","value":"444"},{"name":"h_wxf2_V","role":"data","value":"456"},{"name":"h_wxg2_V","role":"data","value":"468"},{"name":"h_wxi2_V","role":"data","value":"480"},{"name":"h_wxo2_V","role":"data","value":"492"},{"name":"h_whf2_V","role":"data","value":"504"},{"name":"h_whg2_V","role":"data","value":"516"},{"name":"h_whi2_V","role":"data","value":"528"},{"name":"h_who2_V","role":"data","value":"540"},{"name":"h_bf_V","role":"data","value":"552"},{"name":"h_bg_V","role":"data","value":"564"},{"name":"h_bi_V","role":"data","value":"576"},{"name":"h_bo_V","role":"data","value":"588"},{"name":"h_bf2_V","role":"data","value":"600"},{"name":"h_bg2_V","role":"data","value":"612"},{"name":"h_bi2_V","role":"data","value":"624"},{"name":"h_bo2_V","role":"data","value":"636"},{"name":"count","role":"data","value":"648"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"kerneldl","role":"start","value":"0","valid_bit":"0"},{"name":"kerneldl","role":"done","value":"0","valid_bit":"1"},{"name":"kerneldl","role":"idle","value":"0","valid_bit":"2"},{"name":"kerneldl","role":"ready","value":"0","valid_bit":"3"},{"name":"kerneldl","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "134", "199", "206", "213", "220", "227", "234", "241", "248", "255", "262", "269", "276", "283", "290", "297", "304", "311", "318", "325", "332", "339", "346", "353", "360", "367"],
		"CDFG" : "kerneldl",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102727", "EstimateLatencyMax" : "100423057",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state583", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_predict_fu_4856"},
			{"State" : "ap_ST_fsm_state549", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_gradient_fu_4902"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_4964"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_4971"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_4978"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_4985"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_4992"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_4999"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_5006"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_5013"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_5020"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_5027"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_5034"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_5041"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_5048"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_5055"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_5062"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_5069"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_updateb_fu_5076"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_updateb_fu_5083"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_updateb_fu_5090"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_updateb_fu_5097"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_updateb_fu_5104"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_updateb_fu_5111"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_updateb_fu_5118"},
			{"State" : "ap_ST_fsm_state561", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_updateb_fu_5125"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "datax", "Type" : "None", "Direction" : "I"},
			{"Name" : "datay", "Type" : "None", "Direction" : "I"},
			{"Name" : "dout", "Type" : "None", "Direction" : "I"},
			{"Name" : "buffer_output", "Type" : "None", "Direction" : "I"},
			{"Name" : "model", "Type" : "None", "Direction" : "I"},
			{"Name" : "wxf_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "wxg_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "wxi_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "wxo_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "whf_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "whg_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "whi_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "who_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "wxf2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "wxg2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "wxi2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "wxo2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "whf2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "whg2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "whi2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "who2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bf_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bg_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bi_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bo_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bf2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bg2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bi2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bo2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_wxf_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_wxg_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_wxi_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_wxo_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_whf_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_whg_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_whi_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_who_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_wxf2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_wxg2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_wxi2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_wxo2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_whf2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_whg2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_whi2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_who2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_bf_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_bg_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_bi_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_bo_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_bf2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_bg2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_bi2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_bo2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "count", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_predict_fu_4856", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"},
					{"ID" : "134", "SubInstance" : "grp_gradient_fu_4902", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_predict_fu_4856", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"},
					{"ID" : "134", "SubInstance" : "grp_gradient_fu_4902", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_predict_fu_4856", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"},
					{"ID" : "134", "SubInstance" : "grp_gradient_fu_4902", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradswxf_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradswxg_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradswxi_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradswxo_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradswxf2_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradswxg2_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradswxi2_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradswxo2_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradswhf_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradswhg_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradswhi_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradswho_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradswhf2_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradswhg2_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradswhi2_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradswho2_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradsbf_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradsbg_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradsbi_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradsbo_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradsbf2_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradsbg2_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradsbi2_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_gradsbo2_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_hs_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_lstm_f_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_lstm_g_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_lstm_i_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_lstm_o_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_lstm_cache_V_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_lstm2_f_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_lstm2_g_V_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_lstm2_i_V_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_lstm2_o_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_lstm2_cache_V_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wxf_V_68_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wxg_V_69_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wxi_V_70_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wxo_V_71_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.whf_V_72_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.whg_V_73_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.whi_V_74_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.who_V_75_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wxf2_V_76_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wxg2_V_77_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wxi2_V_78_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wxo2_V_79_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.whf2_V_80_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.whg2_V_81_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.whi2_V_82_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.who2_V_83_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bf_V_84_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bg_V_85_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bi_V_86_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bo_V_87_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bf2_V_88_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bg2_V_89_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bi2_V_90_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bo2_V_91_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_wxf_V_92_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_wxg_V_93_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_wxi_V_94_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_wxo_V_95_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_whf_V_96_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_whg_V_97_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_whi_V_98_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_who_V_99_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_wxf2_V_100_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_wxg2_V_101_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_wxi2_V_102_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_wxo2_V_103_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_whf2_V_104_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_whg2_V_105_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_whi2_V_106_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_who2_V_107_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_bf_V_108_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_bg_V_109_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_bi_V_110_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_bo_V_111_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_bf2_V_112_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_bg2_V_113_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_bi2_V_114_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_bo2_V_115_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bufferx_V_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffery_V_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bufferd_V_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856", "Parent" : "0", "Child" : ["90", "91", "92"],
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
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_f_V"}]},
			{"Name" : "cnn_lstm_g_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_g_V"}]},
			{"Name" : "cnn_lstm_i_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_i_V"}]},
			{"Name" : "cnn_lstm_o_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_o_V"}]},
			{"Name" : "cnn_lstm_cache_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_cache_V"}]},
			{"Name" : "cnn_lstm2_f_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_f_V"}]},
			{"Name" : "cnn_lstm2_g_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_g_V"}]},
			{"Name" : "cnn_lstm2_i_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_i_V"}]},
			{"Name" : "cnn_lstm2_o_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_o_V"}]},
			{"Name" : "cnn_lstm2_cache_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "LSTM_cache_V"}]},
			{"Name" : "x_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "x_V"}]},
			{"Name" : "y_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "y_V"}]},
			{"Name" : "wxf_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "wxf_V"}]},
			{"Name" : "wxg_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "wxg_V"}]},
			{"Name" : "wxi_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "wxi_V"}]},
			{"Name" : "wxo_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "wxo_V"}]},
			{"Name" : "whf_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "whf_V"}]},
			{"Name" : "whg_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "whg_V"}]},
			{"Name" : "whi_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "whi_V"}]},
			{"Name" : "who_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "who_V"}]},
			{"Name" : "wxf2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "wxf_V"}]},
			{"Name" : "wxg2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "wxg_V"}]},
			{"Name" : "wxi2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "wxi_V"}]},
			{"Name" : "wxo2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "wxo_V"}]},
			{"Name" : "whf2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "whf_V"}]},
			{"Name" : "whg2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "whg_V"}]},
			{"Name" : "whi2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "whi_V"}]},
			{"Name" : "who2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "who_V"}]},
			{"Name" : "bf_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "bf_V"}]},
			{"Name" : "bg_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "bg_V"}]},
			{"Name" : "bi_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "bi_V"}]},
			{"Name" : "bo_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "bo_V"}]},
			{"Name" : "bf2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "bf_V"}]},
			{"Name" : "bg2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "bg_V"}]},
			{"Name" : "bi2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "bi_V"}]},
			{"Name" : "bo2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "bo_V"}]},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_forward_fu_224", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.h_next_V_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.c_next_V_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224", "Parent" : "89", "Child" : ["93", "94", "95", "96", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133"],
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
					{"ID" : "96", "SubInstance" : "grp_generic_tanh_double_s_fu_1076", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_generic_tanh_double_s_fu_1076", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_generic_tanh_double_s_fu_1076", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.in_V_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.c_prev_V_U", "Parent" : "92"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.h_prev_V_U", "Parent" : "92"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076", "Parent" : "92", "Child" : ["97", "106", "107", "108", "109", "110", "111", "112", "113", "114"],
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
					{"ID" : "97", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87", "Parent" : "96", "Child" : ["98", "99", "100", "101", "102", "103", "104", "105"],
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
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "97"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "97"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.kerneldl_mul_72ns_13s_84_5_1_U1", "Parent" : "97"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.kerneldl_mul_36ns_43ns_79_4_1_U2", "Parent" : "97"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.kerneldl_mul_44ns_49ns_93_5_1_U3", "Parent" : "97"},
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.kerneldl_mul_50ns_50ns_100_5_1_U4", "Parent" : "97"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.grp_exp_generic_double_s_fu_87.kerneldl_mac_muladd_16ns_16s_19s_31_4_1_U5", "Parent" : "97"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U15", "Parent" : "96"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_dsub_64ns_64ns_64_8_full_dsp_1_U16", "Parent" : "96"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U17", "Parent" : "96"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U18", "Parent" : "96"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U19", "Parent" : "96"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_dsub_64ns_64ns_64_8_full_dsp_1_U20", "Parent" : "96"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_dmul_64ns_64ns_64_8_max_dsp_1_U21", "Parent" : "96"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_ddiv_64ns_64ns_64_31_1_U22", "Parent" : "96"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.grp_generic_tanh_double_s_fu_1076.kerneldl_dcmp_64ns_64ns_1_2_1_U23", "Parent" : "96"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_fadd_32ns_32ns_32_7_full_dsp_1_U183", "Parent" : "92"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_fmul_32ns_32ns_32_4_max_dsp_1_U184", "Parent" : "92"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_fdiv_32ns_32ns_32_12_1_U185", "Parent" : "92"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_fptrunc_64ns_32_2_1_U186", "Parent" : "92"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_fpext_32ns_64_2_1_U187", "Parent" : "92"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_fpext_32ns_64_2_1_U188", "Parent" : "92"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U189", "Parent" : "92"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_ddiv_64ns_64ns_64_31_1_U190", "Parent" : "92"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_dexp_64ns_64ns_64_30_full_dsp_1_U191", "Parent" : "92"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U192", "Parent" : "92"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U193", "Parent" : "92"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U194", "Parent" : "92"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U195", "Parent" : "92"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U196", "Parent" : "92"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U197", "Parent" : "92"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U198", "Parent" : "92"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U199", "Parent" : "92"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U200", "Parent" : "92"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_predict_fu_4856.grp_forward_fu_224.kerneldl_mul_mul_16s_16s_32_4_1_U201", "Parent" : "92"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902", "Parent" : "0", "Child" : ["135", "136", "137"],
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
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswxf_V"}]},
			{"Name" : "cnn_gradswxg_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswxg_V"}]},
			{"Name" : "cnn_gradswxi_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswxi_V"}]},
			{"Name" : "cnn_gradswxo_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswxo_V"}]},
			{"Name" : "cnn_gradswxf2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswxf_V"}]},
			{"Name" : "cnn_gradswxg2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswxg_V"}]},
			{"Name" : "cnn_gradswxi2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswxi_V"}]},
			{"Name" : "cnn_gradswxo2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswxo_V"}]},
			{"Name" : "cnn_gradswhf_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswhf_V"}]},
			{"Name" : "cnn_gradswhg_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswhg_V"}]},
			{"Name" : "cnn_gradswhi_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswhi_V"}]},
			{"Name" : "cnn_gradswho_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswho_V"}]},
			{"Name" : "cnn_gradswhf2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswhf_V"}]},
			{"Name" : "cnn_gradswhg2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswhg_V"}]},
			{"Name" : "cnn_gradswhi2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswhi_V"}]},
			{"Name" : "cnn_gradswho2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradswho_V"}]},
			{"Name" : "cnn_gradsbf_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradsbf_V"}]},
			{"Name" : "cnn_gradsbg_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradsbg_V"}]},
			{"Name" : "cnn_gradsbi_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradsbi_V"}]},
			{"Name" : "cnn_gradsbo_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradsbo_V"}]},
			{"Name" : "cnn_gradsbf2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradsbf_V"}]},
			{"Name" : "cnn_gradsbg2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradsbg_V"}]},
			{"Name" : "cnn_gradsbi2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradsbi_V"}]},
			{"Name" : "cnn_gradsbo2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "gradsbo_V"}]},
			{"Name" : "cnn_hs_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "hs_V"}]},
			{"Name" : "cnn_lstm_f_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_f_V"}]},
			{"Name" : "cnn_lstm_g_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_g_V"}]},
			{"Name" : "cnn_lstm_i_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_i_V"}]},
			{"Name" : "cnn_lstm_o_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_o_V"}]},
			{"Name" : "cnn_lstm_cache_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_cache_V"}]},
			{"Name" : "cnn_lstm2_f_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_f_V"}]},
			{"Name" : "cnn_lstm2_g_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_g_V"}]},
			{"Name" : "cnn_lstm2_i_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_i_V"}]},
			{"Name" : "cnn_lstm2_o_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_o_V"}]},
			{"Name" : "cnn_lstm2_cache_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "LSTM_cache_V"}]},
			{"Name" : "dout_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "dout_V"}]},
			{"Name" : "wxf_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "wxf_V"}]},
			{"Name" : "wxg_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "wxg_V"}]},
			{"Name" : "wxi_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "wxi_V"}]},
			{"Name" : "wxo_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "wxo_V"}]},
			{"Name" : "whf_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "whf_V"}]},
			{"Name" : "whg_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "whg_V"}]},
			{"Name" : "whi_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "whi_V"}]},
			{"Name" : "who_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "who_V"}]},
			{"Name" : "wxf2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "wxf_V"}]},
			{"Name" : "wxg2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "wxg_V"}]},
			{"Name" : "wxi2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "wxi_V"}]},
			{"Name" : "wxo2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "wxo_V"}]},
			{"Name" : "whf2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "whf_V"}]},
			{"Name" : "whg2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "whg_V"}]},
			{"Name" : "whi2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "whi_V"}]},
			{"Name" : "who2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "who_V"}]},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_backward_fu_310", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.dh_V_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.dc_V_U", "Parent" : "134"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310", "Parent" : "134", "Child" : ["138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198"],
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
					{"ID" : "147", "SubInstance" : "grp_generic_tanh_double_s_fu_1360", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_generic_tanh_double_s_fu_1360", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_generic_tanh_double_s_fu_1360", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.di_V_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.df_V_U", "Parent" : "137"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.dg_V_U", "Parent" : "137"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.do_V_U", "Parent" : "137"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.x_V_U", "Parent" : "137"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.h_prev_V_U", "Parent" : "137"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.c_prev_V_U", "Parent" : "137"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.c_next_V_U", "Parent" : "137"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.dh_next_V_U", "Parent" : "137"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360", "Parent" : "137", "Child" : ["148", "157", "158", "159", "160", "161", "162", "163", "164", "165"],
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
					{"ID" : "148", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "grp_exp_generic_double_s_fu_87", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]}]},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87", "Parent" : "147", "Child" : ["149", "150", "151", "152", "153", "154", "155", "156"],
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
	{"ID" : "149", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "148"},
	{"ID" : "150", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "148"},
	{"ID" : "151", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "148"},
	{"ID" : "152", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.kerneldl_mul_72ns_13s_84_5_1_U1", "Parent" : "148"},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.kerneldl_mul_36ns_43ns_79_4_1_U2", "Parent" : "148"},
	{"ID" : "154", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.kerneldl_mul_44ns_49ns_93_5_1_U3", "Parent" : "148"},
	{"ID" : "155", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.kerneldl_mul_50ns_50ns_100_5_1_U4", "Parent" : "148"},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.grp_exp_generic_double_s_fu_87.kerneldl_mac_muladd_16ns_16s_19s_31_4_1_U5", "Parent" : "148"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U15", "Parent" : "147"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_dsub_64ns_64ns_64_8_full_dsp_1_U16", "Parent" : "147"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U17", "Parent" : "147"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U18", "Parent" : "147"},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_dadd_64ns_64ns_64_8_full_dsp_1_U19", "Parent" : "147"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_dsub_64ns_64ns_64_8_full_dsp_1_U20", "Parent" : "147"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_dmul_64ns_64ns_64_8_max_dsp_1_U21", "Parent" : "147"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_ddiv_64ns_64ns_64_31_1_U22", "Parent" : "147"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.grp_generic_tanh_double_s_fu_1360.kerneldl_dcmp_64ns_64ns_1_2_1_U23", "Parent" : "147"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_fpext_32ns_64_2_1_U30", "Parent" : "137"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_32s_32s_62_4_1_U31", "Parent" : "137"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_16s_32s_48_4_1_U32", "Parent" : "137"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_17s_48s_62_5_1_U33", "Parent" : "137"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_16s_32s_48_4_1_U34", "Parent" : "137"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_16s_32s_48_4_1_U35", "Parent" : "137"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_32s_32s_62_4_1_U36", "Parent" : "137"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_17s_48s_62_5_1_U37", "Parent" : "137"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_17s_48s_62_5_1_U38", "Parent" : "137"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U39", "Parent" : "137"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mac_mulsub_16s_16s_26ns_32_4_1_U40", "Parent" : "137"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U41", "Parent" : "137"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U42", "Parent" : "137"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U43", "Parent" : "137"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U44", "Parent" : "137"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U45", "Parent" : "137"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mac_mulsub_16s_16s_26ns_32_4_1_U46", "Parent" : "137"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U47", "Parent" : "137"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U48", "Parent" : "137"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U49", "Parent" : "137"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U50", "Parent" : "137"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U51", "Parent" : "137"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U52", "Parent" : "137"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U53", "Parent" : "137"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U54", "Parent" : "137"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U55", "Parent" : "137"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U56", "Parent" : "137"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U57", "Parent" : "137"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U58", "Parent" : "137"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U59", "Parent" : "137"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U60", "Parent" : "137"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U61", "Parent" : "137"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_gradient_fu_4902.grp_backward_fu_310.kerneldl_mul_mul_16s_16s_32_4_1_U62", "Parent" : "137"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4964", "Parent" : "0", "Child" : ["200", "201", "202", "203", "204", "205"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102489", "EstimateLatencyMax" : "102489",
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
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4964.kerneldl_fpext_32ns_64_2_1_U160", "Parent" : "199"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4964.kerneldl_dsqrt_64ns_64ns_64_30_1_U161", "Parent" : "199"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4964.kerneldl_sdiv_36s_16s_36_40_1_U162", "Parent" : "199"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4964.kerneldl_mul_mul_7ns_16s_23_4_1_U163", "Parent" : "199"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4964.kerneldl_mul_mul_13ns_16s_29_4_1_U164", "Parent" : "199"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4964.kerneldl_mul_mul_23s_16s_39_4_1_U165", "Parent" : "199"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4971", "Parent" : "0", "Child" : ["207", "208", "209", "210", "211", "212"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102489", "EstimateLatencyMax" : "102489",
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
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4971.kerneldl_fpext_32ns_64_2_1_U160", "Parent" : "206"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4971.kerneldl_dsqrt_64ns_64ns_64_30_1_U161", "Parent" : "206"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4971.kerneldl_sdiv_36s_16s_36_40_1_U162", "Parent" : "206"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4971.kerneldl_mul_mul_7ns_16s_23_4_1_U163", "Parent" : "206"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4971.kerneldl_mul_mul_13ns_16s_29_4_1_U164", "Parent" : "206"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4971.kerneldl_mul_mul_23s_16s_39_4_1_U165", "Parent" : "206"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4978", "Parent" : "0", "Child" : ["214", "215", "216", "217", "218", "219"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102489", "EstimateLatencyMax" : "102489",
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
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4978.kerneldl_fpext_32ns_64_2_1_U160", "Parent" : "213"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4978.kerneldl_dsqrt_64ns_64ns_64_30_1_U161", "Parent" : "213"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4978.kerneldl_sdiv_36s_16s_36_40_1_U162", "Parent" : "213"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4978.kerneldl_mul_mul_7ns_16s_23_4_1_U163", "Parent" : "213"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4978.kerneldl_mul_mul_13ns_16s_29_4_1_U164", "Parent" : "213"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4978.kerneldl_mul_mul_23s_16s_39_4_1_U165", "Parent" : "213"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4985", "Parent" : "0", "Child" : ["221", "222", "223", "224", "225", "226"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102489", "EstimateLatencyMax" : "102489",
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
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4985.kerneldl_fpext_32ns_64_2_1_U160", "Parent" : "220"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4985.kerneldl_dsqrt_64ns_64ns_64_30_1_U161", "Parent" : "220"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4985.kerneldl_sdiv_36s_16s_36_40_1_U162", "Parent" : "220"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4985.kerneldl_mul_mul_7ns_16s_23_4_1_U163", "Parent" : "220"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4985.kerneldl_mul_mul_13ns_16s_29_4_1_U164", "Parent" : "220"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4985.kerneldl_mul_mul_23s_16s_39_4_1_U165", "Parent" : "220"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4992", "Parent" : "0", "Child" : ["228", "229", "230", "231", "232", "233"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102489", "EstimateLatencyMax" : "102489",
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
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4992.kerneldl_fpext_32ns_64_2_1_U160", "Parent" : "227"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4992.kerneldl_dsqrt_64ns_64ns_64_30_1_U161", "Parent" : "227"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4992.kerneldl_sdiv_36s_16s_36_40_1_U162", "Parent" : "227"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4992.kerneldl_mul_mul_7ns_16s_23_4_1_U163", "Parent" : "227"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4992.kerneldl_mul_mul_13ns_16s_29_4_1_U164", "Parent" : "227"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4992.kerneldl_mul_mul_23s_16s_39_4_1_U165", "Parent" : "227"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4999", "Parent" : "0", "Child" : ["235", "236", "237", "238", "239", "240"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102489", "EstimateLatencyMax" : "102489",
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
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4999.kerneldl_fpext_32ns_64_2_1_U160", "Parent" : "234"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4999.kerneldl_dsqrt_64ns_64ns_64_30_1_U161", "Parent" : "234"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4999.kerneldl_sdiv_36s_16s_36_40_1_U162", "Parent" : "234"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4999.kerneldl_mul_mul_7ns_16s_23_4_1_U163", "Parent" : "234"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4999.kerneldl_mul_mul_13ns_16s_29_4_1_U164", "Parent" : "234"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_4999.kerneldl_mul_mul_23s_16s_39_4_1_U165", "Parent" : "234"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5006", "Parent" : "0", "Child" : ["242", "243", "244", "245", "246", "247"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102489", "EstimateLatencyMax" : "102489",
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
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5006.kerneldl_fpext_32ns_64_2_1_U160", "Parent" : "241"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5006.kerneldl_dsqrt_64ns_64ns_64_30_1_U161", "Parent" : "241"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5006.kerneldl_sdiv_36s_16s_36_40_1_U162", "Parent" : "241"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5006.kerneldl_mul_mul_7ns_16s_23_4_1_U163", "Parent" : "241"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5006.kerneldl_mul_mul_13ns_16s_29_4_1_U164", "Parent" : "241"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5006.kerneldl_mul_mul_23s_16s_39_4_1_U165", "Parent" : "241"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5013", "Parent" : "0", "Child" : ["249", "250", "251", "252", "253", "254"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102489", "EstimateLatencyMax" : "102489",
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
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5013.kerneldl_fpext_32ns_64_2_1_U160", "Parent" : "248"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5013.kerneldl_dsqrt_64ns_64ns_64_30_1_U161", "Parent" : "248"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5013.kerneldl_sdiv_36s_16s_36_40_1_U162", "Parent" : "248"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5013.kerneldl_mul_mul_7ns_16s_23_4_1_U163", "Parent" : "248"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5013.kerneldl_mul_mul_13ns_16s_29_4_1_U164", "Parent" : "248"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5013.kerneldl_mul_mul_23s_16s_39_4_1_U165", "Parent" : "248"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5020", "Parent" : "0", "Child" : ["256", "257", "258", "259", "260", "261"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102489", "EstimateLatencyMax" : "102489",
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
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5020.kerneldl_fpext_32ns_64_2_1_U160", "Parent" : "255"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5020.kerneldl_dsqrt_64ns_64ns_64_30_1_U161", "Parent" : "255"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5020.kerneldl_sdiv_36s_16s_36_40_1_U162", "Parent" : "255"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5020.kerneldl_mul_mul_7ns_16s_23_4_1_U163", "Parent" : "255"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5020.kerneldl_mul_mul_13ns_16s_29_4_1_U164", "Parent" : "255"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5020.kerneldl_mul_mul_23s_16s_39_4_1_U165", "Parent" : "255"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5027", "Parent" : "0", "Child" : ["263", "264", "265", "266", "267", "268"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102489", "EstimateLatencyMax" : "102489",
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
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5027.kerneldl_fpext_32ns_64_2_1_U160", "Parent" : "262"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5027.kerneldl_dsqrt_64ns_64ns_64_30_1_U161", "Parent" : "262"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5027.kerneldl_sdiv_36s_16s_36_40_1_U162", "Parent" : "262"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5027.kerneldl_mul_mul_7ns_16s_23_4_1_U163", "Parent" : "262"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5027.kerneldl_mul_mul_13ns_16s_29_4_1_U164", "Parent" : "262"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5027.kerneldl_mul_mul_23s_16s_39_4_1_U165", "Parent" : "262"},
	{"ID" : "269", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5034", "Parent" : "0", "Child" : ["270", "271", "272", "273", "274", "275"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102489", "EstimateLatencyMax" : "102489",
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
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5034.kerneldl_fpext_32ns_64_2_1_U160", "Parent" : "269"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5034.kerneldl_dsqrt_64ns_64ns_64_30_1_U161", "Parent" : "269"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5034.kerneldl_sdiv_36s_16s_36_40_1_U162", "Parent" : "269"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5034.kerneldl_mul_mul_7ns_16s_23_4_1_U163", "Parent" : "269"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5034.kerneldl_mul_mul_13ns_16s_29_4_1_U164", "Parent" : "269"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5034.kerneldl_mul_mul_23s_16s_39_4_1_U165", "Parent" : "269"},
	{"ID" : "276", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5041", "Parent" : "0", "Child" : ["277", "278", "279", "280", "281", "282"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102489", "EstimateLatencyMax" : "102489",
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
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5041.kerneldl_fpext_32ns_64_2_1_U160", "Parent" : "276"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5041.kerneldl_dsqrt_64ns_64ns_64_30_1_U161", "Parent" : "276"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5041.kerneldl_sdiv_36s_16s_36_40_1_U162", "Parent" : "276"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5041.kerneldl_mul_mul_7ns_16s_23_4_1_U163", "Parent" : "276"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5041.kerneldl_mul_mul_13ns_16s_29_4_1_U164", "Parent" : "276"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5041.kerneldl_mul_mul_23s_16s_39_4_1_U165", "Parent" : "276"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5048", "Parent" : "0", "Child" : ["284", "285", "286", "287", "288", "289"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102489", "EstimateLatencyMax" : "102489",
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
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5048.kerneldl_fpext_32ns_64_2_1_U160", "Parent" : "283"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5048.kerneldl_dsqrt_64ns_64ns_64_30_1_U161", "Parent" : "283"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5048.kerneldl_sdiv_36s_16s_36_40_1_U162", "Parent" : "283"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5048.kerneldl_mul_mul_7ns_16s_23_4_1_U163", "Parent" : "283"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5048.kerneldl_mul_mul_13ns_16s_29_4_1_U164", "Parent" : "283"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5048.kerneldl_mul_mul_23s_16s_39_4_1_U165", "Parent" : "283"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5055", "Parent" : "0", "Child" : ["291", "292", "293", "294", "295", "296"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102489", "EstimateLatencyMax" : "102489",
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
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5055.kerneldl_fpext_32ns_64_2_1_U160", "Parent" : "290"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5055.kerneldl_dsqrt_64ns_64ns_64_30_1_U161", "Parent" : "290"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5055.kerneldl_sdiv_36s_16s_36_40_1_U162", "Parent" : "290"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5055.kerneldl_mul_mul_7ns_16s_23_4_1_U163", "Parent" : "290"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5055.kerneldl_mul_mul_13ns_16s_29_4_1_U164", "Parent" : "290"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5055.kerneldl_mul_mul_23s_16s_39_4_1_U165", "Parent" : "290"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5062", "Parent" : "0", "Child" : ["298", "299", "300", "301", "302", "303"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102489", "EstimateLatencyMax" : "102489",
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
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5062.kerneldl_fpext_32ns_64_2_1_U160", "Parent" : "297"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5062.kerneldl_dsqrt_64ns_64ns_64_30_1_U161", "Parent" : "297"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5062.kerneldl_sdiv_36s_16s_36_40_1_U162", "Parent" : "297"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5062.kerneldl_mul_mul_7ns_16s_23_4_1_U163", "Parent" : "297"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5062.kerneldl_mul_mul_13ns_16s_29_4_1_U164", "Parent" : "297"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5062.kerneldl_mul_mul_23s_16s_39_4_1_U165", "Parent" : "297"},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5069", "Parent" : "0", "Child" : ["305", "306", "307", "308", "309", "310"],
		"CDFG" : "update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102489", "EstimateLatencyMax" : "102489",
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
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5069.kerneldl_fpext_32ns_64_2_1_U160", "Parent" : "304"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5069.kerneldl_dsqrt_64ns_64ns_64_30_1_U161", "Parent" : "304"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5069.kerneldl_sdiv_36s_16s_36_40_1_U162", "Parent" : "304"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5069.kerneldl_mul_mul_7ns_16s_23_4_1_U163", "Parent" : "304"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5069.kerneldl_mul_mul_13ns_16s_29_4_1_U164", "Parent" : "304"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_5069.kerneldl_mul_mul_23s_16s_39_4_1_U165", "Parent" : "304"},
	{"ID" : "311", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5076", "Parent" : "0", "Child" : ["312", "313", "314", "315", "316", "317"],
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
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5076.kerneldl_fpext_32ns_64_2_1_U174", "Parent" : "311"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5076.kerneldl_dsqrt_64ns_64ns_64_30_1_U175", "Parent" : "311"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5076.kerneldl_sdiv_36s_16s_36_40_1_U176", "Parent" : "311"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5076.kerneldl_mul_mul_7ns_16s_23_4_1_U177", "Parent" : "311"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5076.kerneldl_mul_mul_13ns_16s_29_4_1_U178", "Parent" : "311"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5076.kerneldl_mul_mul_23s_16s_39_4_1_U179", "Parent" : "311"},
	{"ID" : "318", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5083", "Parent" : "0", "Child" : ["319", "320", "321", "322", "323", "324"],
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
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5083.kerneldl_fpext_32ns_64_2_1_U174", "Parent" : "318"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5083.kerneldl_dsqrt_64ns_64ns_64_30_1_U175", "Parent" : "318"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5083.kerneldl_sdiv_36s_16s_36_40_1_U176", "Parent" : "318"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5083.kerneldl_mul_mul_7ns_16s_23_4_1_U177", "Parent" : "318"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5083.kerneldl_mul_mul_13ns_16s_29_4_1_U178", "Parent" : "318"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5083.kerneldl_mul_mul_23s_16s_39_4_1_U179", "Parent" : "318"},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5090", "Parent" : "0", "Child" : ["326", "327", "328", "329", "330", "331"],
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
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5090.kerneldl_fpext_32ns_64_2_1_U174", "Parent" : "325"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5090.kerneldl_dsqrt_64ns_64ns_64_30_1_U175", "Parent" : "325"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5090.kerneldl_sdiv_36s_16s_36_40_1_U176", "Parent" : "325"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5090.kerneldl_mul_mul_7ns_16s_23_4_1_U177", "Parent" : "325"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5090.kerneldl_mul_mul_13ns_16s_29_4_1_U178", "Parent" : "325"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5090.kerneldl_mul_mul_23s_16s_39_4_1_U179", "Parent" : "325"},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5097", "Parent" : "0", "Child" : ["333", "334", "335", "336", "337", "338"],
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
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5097.kerneldl_fpext_32ns_64_2_1_U174", "Parent" : "332"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5097.kerneldl_dsqrt_64ns_64ns_64_30_1_U175", "Parent" : "332"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5097.kerneldl_sdiv_36s_16s_36_40_1_U176", "Parent" : "332"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5097.kerneldl_mul_mul_7ns_16s_23_4_1_U177", "Parent" : "332"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5097.kerneldl_mul_mul_13ns_16s_29_4_1_U178", "Parent" : "332"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5097.kerneldl_mul_mul_23s_16s_39_4_1_U179", "Parent" : "332"},
	{"ID" : "339", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5104", "Parent" : "0", "Child" : ["340", "341", "342", "343", "344", "345"],
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
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5104.kerneldl_fpext_32ns_64_2_1_U174", "Parent" : "339"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5104.kerneldl_dsqrt_64ns_64ns_64_30_1_U175", "Parent" : "339"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5104.kerneldl_sdiv_36s_16s_36_40_1_U176", "Parent" : "339"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5104.kerneldl_mul_mul_7ns_16s_23_4_1_U177", "Parent" : "339"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5104.kerneldl_mul_mul_13ns_16s_29_4_1_U178", "Parent" : "339"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5104.kerneldl_mul_mul_23s_16s_39_4_1_U179", "Parent" : "339"},
	{"ID" : "346", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5111", "Parent" : "0", "Child" : ["347", "348", "349", "350", "351", "352"],
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
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5111.kerneldl_fpext_32ns_64_2_1_U174", "Parent" : "346"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5111.kerneldl_dsqrt_64ns_64ns_64_30_1_U175", "Parent" : "346"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5111.kerneldl_sdiv_36s_16s_36_40_1_U176", "Parent" : "346"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5111.kerneldl_mul_mul_7ns_16s_23_4_1_U177", "Parent" : "346"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5111.kerneldl_mul_mul_13ns_16s_29_4_1_U178", "Parent" : "346"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5111.kerneldl_mul_mul_23s_16s_39_4_1_U179", "Parent" : "346"},
	{"ID" : "353", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5118", "Parent" : "0", "Child" : ["354", "355", "356", "357", "358", "359"],
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
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5118.kerneldl_fpext_32ns_64_2_1_U174", "Parent" : "353"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5118.kerneldl_dsqrt_64ns_64ns_64_30_1_U175", "Parent" : "353"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5118.kerneldl_sdiv_36s_16s_36_40_1_U176", "Parent" : "353"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5118.kerneldl_mul_mul_7ns_16s_23_4_1_U177", "Parent" : "353"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5118.kerneldl_mul_mul_13ns_16s_29_4_1_U178", "Parent" : "353"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5118.kerneldl_mul_mul_23s_16s_39_4_1_U179", "Parent" : "353"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5125", "Parent" : "0", "Child" : ["361", "362", "363", "364", "365", "366"],
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
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5125.kerneldl_fpext_32ns_64_2_1_U174", "Parent" : "360"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5125.kerneldl_dsqrt_64ns_64ns_64_30_1_U175", "Parent" : "360"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5125.kerneldl_sdiv_36s_16s_36_40_1_U176", "Parent" : "360"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5125.kerneldl_mul_mul_7ns_16s_23_4_1_U177", "Parent" : "360"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5125.kerneldl_mul_mul_13ns_16s_29_4_1_U178", "Parent" : "360"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateb_fu_5125.kerneldl_mul_mul_23s_16s_39_4_1_U179", "Parent" : "360"},
	{"ID" : "367", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kerneldl_fpext_32ns_64_2_1_U271", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kerneldl {
		gmem {Type IO LastRead 597 FirstWrite 115}
		datax {Type I LastRead 0 FirstWrite -1}
		datay {Type I LastRead 0 FirstWrite -1}
		dout {Type I LastRead 0 FirstWrite -1}
		buffer_output {Type I LastRead 0 FirstWrite -1}
		model {Type I LastRead 0 FirstWrite -1}
		wxf_V {Type I LastRead 0 FirstWrite -1}
		wxg_V {Type I LastRead 0 FirstWrite -1}
		wxi_V {Type I LastRead 0 FirstWrite -1}
		wxo_V {Type I LastRead 0 FirstWrite -1}
		whf_V {Type I LastRead 0 FirstWrite -1}
		whg_V {Type I LastRead 0 FirstWrite -1}
		whi_V {Type I LastRead 0 FirstWrite -1}
		who_V {Type I LastRead 0 FirstWrite -1}
		wxf2_V {Type I LastRead 0 FirstWrite -1}
		wxg2_V {Type I LastRead 0 FirstWrite -1}
		wxi2_V {Type I LastRead 0 FirstWrite -1}
		wxo2_V {Type I LastRead 0 FirstWrite -1}
		whf2_V {Type I LastRead 0 FirstWrite -1}
		whg2_V {Type I LastRead 0 FirstWrite -1}
		whi2_V {Type I LastRead 0 FirstWrite -1}
		who2_V {Type I LastRead 0 FirstWrite -1}
		bf_V {Type I LastRead 0 FirstWrite -1}
		bg_V {Type I LastRead 0 FirstWrite -1}
		bi_V {Type I LastRead 0 FirstWrite -1}
		bo_V {Type I LastRead 0 FirstWrite -1}
		bf2_V {Type I LastRead 0 FirstWrite -1}
		bg2_V {Type I LastRead 0 FirstWrite -1}
		bi2_V {Type I LastRead 0 FirstWrite -1}
		bo2_V {Type I LastRead 0 FirstWrite -1}
		h_wxf_V {Type I LastRead 0 FirstWrite -1}
		h_wxg_V {Type I LastRead 0 FirstWrite -1}
		h_wxi_V {Type I LastRead 0 FirstWrite -1}
		h_wxo_V {Type I LastRead 0 FirstWrite -1}
		h_whf_V {Type I LastRead 0 FirstWrite -1}
		h_whg_V {Type I LastRead 0 FirstWrite -1}
		h_whi_V {Type I LastRead 0 FirstWrite -1}
		h_who_V {Type I LastRead 0 FirstWrite -1}
		h_wxf2_V {Type I LastRead 0 FirstWrite -1}
		h_wxg2_V {Type I LastRead 0 FirstWrite -1}
		h_wxi2_V {Type I LastRead 0 FirstWrite -1}
		h_wxo2_V {Type I LastRead 0 FirstWrite -1}
		h_whf2_V {Type I LastRead 0 FirstWrite -1}
		h_whg2_V {Type I LastRead 0 FirstWrite -1}
		h_whi2_V {Type I LastRead 0 FirstWrite -1}
		h_who2_V {Type I LastRead 0 FirstWrite -1}
		h_bf_V {Type I LastRead 0 FirstWrite -1}
		h_bg_V {Type I LastRead 0 FirstWrite -1}
		h_bi_V {Type I LastRead 0 FirstWrite -1}
		h_bo_V {Type I LastRead 0 FirstWrite -1}
		h_bf2_V {Type I LastRead 0 FirstWrite -1}
		h_bg2_V {Type I LastRead 0 FirstWrite -1}
		h_bi2_V {Type I LastRead 0 FirstWrite -1}
		h_bo2_V {Type I LastRead 0 FirstWrite -1}
		count {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}
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
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}
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
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}
	update {
		params_V {Type IO LastRead 85 FirstWrite 89}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 4 FirstWrite 10}}
	update {
		params_V {Type IO LastRead 85 FirstWrite 89}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 4 FirstWrite 10}}
	update {
		params_V {Type IO LastRead 85 FirstWrite 89}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 4 FirstWrite 10}}
	update {
		params_V {Type IO LastRead 85 FirstWrite 89}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 4 FirstWrite 10}}
	update {
		params_V {Type IO LastRead 85 FirstWrite 89}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 4 FirstWrite 10}}
	update {
		params_V {Type IO LastRead 85 FirstWrite 89}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 4 FirstWrite 10}}
	update {
		params_V {Type IO LastRead 85 FirstWrite 89}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 4 FirstWrite 10}}
	update {
		params_V {Type IO LastRead 85 FirstWrite 89}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 4 FirstWrite 10}}
	update {
		params_V {Type IO LastRead 85 FirstWrite 89}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 4 FirstWrite 10}}
	update {
		params_V {Type IO LastRead 85 FirstWrite 89}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 4 FirstWrite 10}}
	update {
		params_V {Type IO LastRead 85 FirstWrite 89}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 4 FirstWrite 10}}
	update {
		params_V {Type IO LastRead 85 FirstWrite 89}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 4 FirstWrite 10}}
	update {
		params_V {Type IO LastRead 85 FirstWrite 89}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 4 FirstWrite 10}}
	update {
		params_V {Type IO LastRead 85 FirstWrite 89}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 4 FirstWrite 10}}
	update {
		params_V {Type IO LastRead 85 FirstWrite 89}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 4 FirstWrite 10}}
	update {
		params_V {Type IO LastRead 85 FirstWrite 89}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 4 FirstWrite 10}}
	updateb {
		params_V {Type IO LastRead 85 FirstWrite 88}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 3 FirstWrite 9}}
	updateb {
		params_V {Type IO LastRead 85 FirstWrite 88}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 3 FirstWrite 9}}
	updateb {
		params_V {Type IO LastRead 85 FirstWrite 88}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 3 FirstWrite 9}}
	updateb {
		params_V {Type IO LastRead 85 FirstWrite 88}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 3 FirstWrite 9}}
	updateb {
		params_V {Type IO LastRead 85 FirstWrite 88}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 3 FirstWrite 9}}
	updateb {
		params_V {Type IO LastRead 85 FirstWrite 88}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 3 FirstWrite 9}}
	updateb {
		params_V {Type IO LastRead 85 FirstWrite 88}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 3 FirstWrite 9}}
	updateb {
		params_V {Type IO LastRead 85 FirstWrite 88}
		grads_V {Type I LastRead 1 FirstWrite -1}
		h_V {Type IO LastRead 3 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "102727", "Max" : "100423057"}
	, {"Name" : "Interval", "Min" : "102728", "Max" : "100423058"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
	{"Pipeline" : "7", "EnableSignal" : "ap_enable_pp7"}
	{"Pipeline" : "8", "EnableSignal" : "ap_enable_pp8"}
	{"Pipeline" : "9", "EnableSignal" : "ap_enable_pp9"}
	{"Pipeline" : "10", "EnableSignal" : "ap_enable_pp10"}
	{"Pipeline" : "11", "EnableSignal" : "ap_enable_pp11"}
	{"Pipeline" : "12", "EnableSignal" : "ap_enable_pp12"}
	{"Pipeline" : "13", "EnableSignal" : "ap_enable_pp13"}
	{"Pipeline" : "14", "EnableSignal" : "ap_enable_pp14"}
	{"Pipeline" : "15", "EnableSignal" : "ap_enable_pp15"}
	{"Pipeline" : "16", "EnableSignal" : "ap_enable_pp16"}
	{"Pipeline" : "17", "EnableSignal" : "ap_enable_pp17"}
	{"Pipeline" : "18", "EnableSignal" : "ap_enable_pp18"}
	{"Pipeline" : "19", "EnableSignal" : "ap_enable_pp19"}
	{"Pipeline" : "20", "EnableSignal" : "ap_enable_pp20"}
	{"Pipeline" : "21", "EnableSignal" : "ap_enable_pp21"}
	{"Pipeline" : "22", "EnableSignal" : "ap_enable_pp22"}
	{"Pipeline" : "23", "EnableSignal" : "ap_enable_pp23"}
	{"Pipeline" : "24", "EnableSignal" : "ap_enable_pp24"}
	{"Pipeline" : "25", "EnableSignal" : "ap_enable_pp25"}
	{"Pipeline" : "26", "EnableSignal" : "ap_enable_pp26"}
	{"Pipeline" : "27", "EnableSignal" : "ap_enable_pp27"}
	{"Pipeline" : "28", "EnableSignal" : "ap_enable_pp28"}
	{"Pipeline" : "29", "EnableSignal" : "ap_enable_pp29"}
	{"Pipeline" : "30", "EnableSignal" : "ap_enable_pp30"}
	{"Pipeline" : "31", "EnableSignal" : "ap_enable_pp31"}
	{"Pipeline" : "32", "EnableSignal" : "ap_enable_pp32"}
	{"Pipeline" : "33", "EnableSignal" : "ap_enable_pp33"}
	{"Pipeline" : "34", "EnableSignal" : "ap_enable_pp34"}
	{"Pipeline" : "35", "EnableSignal" : "ap_enable_pp35"}
	{"Pipeline" : "36", "EnableSignal" : "ap_enable_pp36"}
	{"Pipeline" : "37", "EnableSignal" : "ap_enable_pp37"}
	{"Pipeline" : "38", "EnableSignal" : "ap_enable_pp38"}
	{"Pipeline" : "39", "EnableSignal" : "ap_enable_pp39"}
	{"Pipeline" : "40", "EnableSignal" : "ap_enable_pp40"}
	{"Pipeline" : "41", "EnableSignal" : "ap_enable_pp41"}
	{"Pipeline" : "42", "EnableSignal" : "ap_enable_pp42"}
	{"Pipeline" : "43", "EnableSignal" : "ap_enable_pp43"}
	{"Pipeline" : "44", "EnableSignal" : "ap_enable_pp44"}
	{"Pipeline" : "45", "EnableSignal" : "ap_enable_pp45"}
	{"Pipeline" : "46", "EnableSignal" : "ap_enable_pp46"}
	{"Pipeline" : "47", "EnableSignal" : "ap_enable_pp47"}
	{"Pipeline" : "48", "EnableSignal" : "ap_enable_pp48"}
	{"Pipeline" : "49", "EnableSignal" : "ap_enable_pp49"}
	{"Pipeline" : "50", "EnableSignal" : "ap_enable_pp50"}
	{"Pipeline" : "51", "EnableSignal" : "ap_enable_pp51"}
	{"Pipeline" : "54", "EnableSignal" : "ap_enable_pp54"}
	{"Pipeline" : "56", "EnableSignal" : "ap_enable_pp56"}
	{"Pipeline" : "57", "EnableSignal" : "ap_enable_pp57"}
	{"Pipeline" : "58", "EnableSignal" : "ap_enable_pp58"}
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 8 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 8 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ gmem { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
