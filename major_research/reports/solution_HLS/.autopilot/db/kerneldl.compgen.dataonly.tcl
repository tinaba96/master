# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
datax { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
datay { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
dout { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
buffer_output { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
model { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
wxf_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 72
	offset_end 83
}
wxg_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 84
	offset_end 95
}
wxi_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 96
	offset_end 107
}
wxo_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 108
	offset_end 119
}
whf_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 120
	offset_end 131
}
whg_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 132
	offset_end 143
}
whi_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 144
	offset_end 155
}
who_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 156
	offset_end 167
}
wxf2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 168
	offset_end 179
}
wxg2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 180
	offset_end 191
}
wxi2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 192
	offset_end 203
}
wxo2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 204
	offset_end 215
}
whf2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 216
	offset_end 227
}
whg2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 228
	offset_end 239
}
whi2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 240
	offset_end 251
}
who2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 252
	offset_end 263
}
bf_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 264
	offset_end 275
}
bg_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 276
	offset_end 287
}
bi_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 288
	offset_end 299
}
bo_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 300
	offset_end 311
}
bf2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 312
	offset_end 323
}
bg2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 324
	offset_end 335
}
bi2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 336
	offset_end 347
}
bo2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 348
	offset_end 359
}
h_wxf_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 360
	offset_end 371
}
h_wxg_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 372
	offset_end 383
}
h_wxi_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 384
	offset_end 395
}
h_wxo_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 396
	offset_end 407
}
h_whf_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 408
	offset_end 419
}
h_whg_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 420
	offset_end 431
}
h_whi_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 432
	offset_end 443
}
h_who_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 444
	offset_end 455
}
h_wxf2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 456
	offset_end 467
}
h_wxg2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 468
	offset_end 479
}
h_wxi2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 480
	offset_end 491
}
h_wxo2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 492
	offset_end 503
}
h_whf2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 504
	offset_end 515
}
h_whg2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 516
	offset_end 527
}
h_whi2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 528
	offset_end 539
}
h_who2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 540
	offset_end 551
}
h_bf_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 552
	offset_end 563
}
h_bg_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 564
	offset_end 575
}
h_bi_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 576
	offset_end 587
}
h_bo_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 588
	offset_end 599
}
h_bf2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 600
	offset_end 611
}
h_bg2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 612
	offset_end 623
}
h_bi2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 624
	offset_end 635
}
h_bo2_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 636
	offset_end 647
}
count { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 648
	offset_end 655
}
}
dict set axilite_register_dict control $port_control


