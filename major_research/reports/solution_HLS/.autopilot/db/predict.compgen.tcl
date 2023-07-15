# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 235 \
    name cnn_lstm_f_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_lstm_f_V \
    op interface \
    ports { cnn_lstm_f_V_address0 { O 15 vector } cnn_lstm_f_V_ce0 { O 1 bit } cnn_lstm_f_V_we0 { O 1 bit } cnn_lstm_f_V_d0 { O 16 vector } cnn_lstm_f_V_q0 { I 16 vector } cnn_lstm_f_V_address1 { O 15 vector } cnn_lstm_f_V_ce1 { O 1 bit } cnn_lstm_f_V_we1 { O 1 bit } cnn_lstm_f_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm_f_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 236 \
    name cnn_lstm_g_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_lstm_g_V \
    op interface \
    ports { cnn_lstm_g_V_address0 { O 15 vector } cnn_lstm_g_V_ce0 { O 1 bit } cnn_lstm_g_V_we0 { O 1 bit } cnn_lstm_g_V_d0 { O 16 vector } cnn_lstm_g_V_q0 { I 16 vector } cnn_lstm_g_V_address1 { O 15 vector } cnn_lstm_g_V_ce1 { O 1 bit } cnn_lstm_g_V_we1 { O 1 bit } cnn_lstm_g_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm_g_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 237 \
    name cnn_lstm_i_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_lstm_i_V \
    op interface \
    ports { cnn_lstm_i_V_address0 { O 15 vector } cnn_lstm_i_V_ce0 { O 1 bit } cnn_lstm_i_V_we0 { O 1 bit } cnn_lstm_i_V_d0 { O 16 vector } cnn_lstm_i_V_q0 { I 16 vector } cnn_lstm_i_V_address1 { O 15 vector } cnn_lstm_i_V_ce1 { O 1 bit } cnn_lstm_i_V_we1 { O 1 bit } cnn_lstm_i_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm_i_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 238 \
    name cnn_lstm_o_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_lstm_o_V \
    op interface \
    ports { cnn_lstm_o_V_address0 { O 15 vector } cnn_lstm_o_V_ce0 { O 1 bit } cnn_lstm_o_V_we0 { O 1 bit } cnn_lstm_o_V_d0 { O 16 vector } cnn_lstm_o_V_q0 { I 16 vector } cnn_lstm_o_V_address1 { O 15 vector } cnn_lstm_o_V_ce1 { O 1 bit } cnn_lstm_o_V_we1 { O 1 bit } cnn_lstm_o_V_d1 { O 16 vector } cnn_lstm_o_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm_o_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 239 \
    name cnn_lstm_cache_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename cnn_lstm_cache_V \
    op interface \
    ports { cnn_lstm_cache_V_address0 { O 18 vector } cnn_lstm_cache_V_ce0 { O 1 bit } cnn_lstm_cache_V_we0 { O 1 bit } cnn_lstm_cache_V_d0 { O 16 vector } cnn_lstm_cache_V_address1 { O 18 vector } cnn_lstm_cache_V_ce1 { O 1 bit } cnn_lstm_cache_V_we1 { O 1 bit } cnn_lstm_cache_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm_cache_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 240 \
    name cnn_lstm2_f_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_lstm2_f_V \
    op interface \
    ports { cnn_lstm2_f_V_address0 { O 15 vector } cnn_lstm2_f_V_ce0 { O 1 bit } cnn_lstm2_f_V_we0 { O 1 bit } cnn_lstm2_f_V_d0 { O 16 vector } cnn_lstm2_f_V_q0 { I 16 vector } cnn_lstm2_f_V_address1 { O 15 vector } cnn_lstm2_f_V_ce1 { O 1 bit } cnn_lstm2_f_V_we1 { O 1 bit } cnn_lstm2_f_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm2_f_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 241 \
    name cnn_lstm2_g_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_lstm2_g_V \
    op interface \
    ports { cnn_lstm2_g_V_address0 { O 15 vector } cnn_lstm2_g_V_ce0 { O 1 bit } cnn_lstm2_g_V_we0 { O 1 bit } cnn_lstm2_g_V_d0 { O 16 vector } cnn_lstm2_g_V_q0 { I 16 vector } cnn_lstm2_g_V_address1 { O 15 vector } cnn_lstm2_g_V_ce1 { O 1 bit } cnn_lstm2_g_V_we1 { O 1 bit } cnn_lstm2_g_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm2_g_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 242 \
    name cnn_lstm2_i_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_lstm2_i_V \
    op interface \
    ports { cnn_lstm2_i_V_address0 { O 15 vector } cnn_lstm2_i_V_ce0 { O 1 bit } cnn_lstm2_i_V_we0 { O 1 bit } cnn_lstm2_i_V_d0 { O 16 vector } cnn_lstm2_i_V_q0 { I 16 vector } cnn_lstm2_i_V_address1 { O 15 vector } cnn_lstm2_i_V_ce1 { O 1 bit } cnn_lstm2_i_V_we1 { O 1 bit } cnn_lstm2_i_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm2_i_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 243 \
    name cnn_lstm2_o_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_lstm2_o_V \
    op interface \
    ports { cnn_lstm2_o_V_address0 { O 15 vector } cnn_lstm2_o_V_ce0 { O 1 bit } cnn_lstm2_o_V_we0 { O 1 bit } cnn_lstm2_o_V_d0 { O 16 vector } cnn_lstm2_o_V_q0 { I 16 vector } cnn_lstm2_o_V_address1 { O 15 vector } cnn_lstm2_o_V_ce1 { O 1 bit } cnn_lstm2_o_V_we1 { O 1 bit } cnn_lstm2_o_V_d1 { O 16 vector } cnn_lstm2_o_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm2_o_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 244 \
    name cnn_lstm2_cache_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename cnn_lstm2_cache_V \
    op interface \
    ports { cnn_lstm2_cache_V_address0 { O 18 vector } cnn_lstm2_cache_V_ce0 { O 1 bit } cnn_lstm2_cache_V_we0 { O 1 bit } cnn_lstm2_cache_V_d0 { O 16 vector } cnn_lstm2_cache_V_address1 { O 18 vector } cnn_lstm2_cache_V_ce1 { O 1 bit } cnn_lstm2_cache_V_we1 { O 1 bit } cnn_lstm2_cache_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm2_cache_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 245 \
    name x_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename x_V \
    op interface \
    ports { x_V_address0 { O 15 vector } x_V_ce0 { O 1 bit } x_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 246 \
    name y_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename y_V \
    op interface \
    ports { y_V_address0 { O 16 vector } y_V_ce0 { O 1 bit } y_V_we0 { O 1 bit } y_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'y_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 247 \
    name wxf_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wxf_V \
    op interface \
    ports { wxf_V_address0 { O 17 vector } wxf_V_ce0 { O 1 bit } wxf_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wxf_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 248 \
    name wxg_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wxg_V \
    op interface \
    ports { wxg_V_address0 { O 17 vector } wxg_V_ce0 { O 1 bit } wxg_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wxg_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 249 \
    name wxi_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wxi_V \
    op interface \
    ports { wxi_V_address0 { O 17 vector } wxi_V_ce0 { O 1 bit } wxi_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wxi_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 250 \
    name wxo_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wxo_V \
    op interface \
    ports { wxo_V_address0 { O 17 vector } wxo_V_ce0 { O 1 bit } wxo_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wxo_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 251 \
    name whf_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename whf_V \
    op interface \
    ports { whf_V_address0 { O 17 vector } whf_V_ce0 { O 1 bit } whf_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'whf_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 252 \
    name whg_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename whg_V \
    op interface \
    ports { whg_V_address0 { O 17 vector } whg_V_ce0 { O 1 bit } whg_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'whg_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 253 \
    name whi_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename whi_V \
    op interface \
    ports { whi_V_address0 { O 17 vector } whi_V_ce0 { O 1 bit } whi_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'whi_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 254 \
    name who_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename who_V \
    op interface \
    ports { who_V_address0 { O 17 vector } who_V_ce0 { O 1 bit } who_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'who_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 255 \
    name wxf2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wxf2_V \
    op interface \
    ports { wxf2_V_address0 { O 17 vector } wxf2_V_ce0 { O 1 bit } wxf2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wxf2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 256 \
    name wxg2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wxg2_V \
    op interface \
    ports { wxg2_V_address0 { O 17 vector } wxg2_V_ce0 { O 1 bit } wxg2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wxg2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 257 \
    name wxi2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wxi2_V \
    op interface \
    ports { wxi2_V_address0 { O 17 vector } wxi2_V_ce0 { O 1 bit } wxi2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wxi2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 258 \
    name wxo2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wxo2_V \
    op interface \
    ports { wxo2_V_address0 { O 17 vector } wxo2_V_ce0 { O 1 bit } wxo2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wxo2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 259 \
    name whf2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename whf2_V \
    op interface \
    ports { whf2_V_address0 { O 17 vector } whf2_V_ce0 { O 1 bit } whf2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'whf2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 260 \
    name whg2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename whg2_V \
    op interface \
    ports { whg2_V_address0 { O 17 vector } whg2_V_ce0 { O 1 bit } whg2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'whg2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 261 \
    name whi2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename whi2_V \
    op interface \
    ports { whi2_V_address0 { O 17 vector } whi2_V_ce0 { O 1 bit } whi2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'whi2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 262 \
    name who2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename who2_V \
    op interface \
    ports { who2_V_address0 { O 17 vector } who2_V_ce0 { O 1 bit } who2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'who2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 263 \
    name bf_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bf_V \
    op interface \
    ports { bf_V_address0 { O 9 vector } bf_V_ce0 { O 1 bit } bf_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bf_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 264 \
    name bg_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bg_V \
    op interface \
    ports { bg_V_address0 { O 9 vector } bg_V_ce0 { O 1 bit } bg_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bg_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 265 \
    name bi_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bi_V \
    op interface \
    ports { bi_V_address0 { O 9 vector } bi_V_ce0 { O 1 bit } bi_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bi_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 266 \
    name bo_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bo_V \
    op interface \
    ports { bo_V_address0 { O 9 vector } bo_V_ce0 { O 1 bit } bo_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bo_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 267 \
    name bf2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bf2_V \
    op interface \
    ports { bf2_V_address0 { O 9 vector } bf2_V_ce0 { O 1 bit } bf2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bf2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 268 \
    name bg2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bg2_V \
    op interface \
    ports { bg2_V_address0 { O 9 vector } bg2_V_ce0 { O 1 bit } bg2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bg2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 269 \
    name bi2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bi2_V \
    op interface \
    ports { bi2_V_address0 { O 9 vector } bi2_V_ce0 { O 1 bit } bi2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bi2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 270 \
    name bo2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bo2_V \
    op interface \
    ports { bo2_V_address0 { O 9 vector } bo2_V_ce0 { O 1 bit } bo2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bo2_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


