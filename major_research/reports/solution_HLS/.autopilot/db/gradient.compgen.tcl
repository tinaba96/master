# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 106
set hasByteEnable 0
set MemName kerneldl_gradient_dh_V
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 16
set AddrRange 320
set AddrWd 9
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.158
set ClkPeriod 3.33
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 107
set hasByteEnable 0
set MemName kerneldl_gradient_dc_V
set CoreName ap_simcore_mem
set PortList { 2 0 }
set DataWd 16
set AddrRange 320
set AddrWd 9
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.158
set ClkPeriod 3.33
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


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
    id 108 \
    name cnn_gradswxf_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradswxf_V \
    op interface \
    ports { cnn_gradswxf_V_address0 { O 17 vector } cnn_gradswxf_V_ce0 { O 1 bit } cnn_gradswxf_V_we0 { O 1 bit } cnn_gradswxf_V_d0 { O 16 vector } cnn_gradswxf_V_q0 { I 16 vector } cnn_gradswxf_V_address1 { O 17 vector } cnn_gradswxf_V_ce1 { O 1 bit } cnn_gradswxf_V_we1 { O 1 bit } cnn_gradswxf_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradswxf_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 109 \
    name cnn_gradswxg_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradswxg_V \
    op interface \
    ports { cnn_gradswxg_V_address0 { O 17 vector } cnn_gradswxg_V_ce0 { O 1 bit } cnn_gradswxg_V_we0 { O 1 bit } cnn_gradswxg_V_d0 { O 16 vector } cnn_gradswxg_V_q0 { I 16 vector } cnn_gradswxg_V_address1 { O 17 vector } cnn_gradswxg_V_ce1 { O 1 bit } cnn_gradswxg_V_we1 { O 1 bit } cnn_gradswxg_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradswxg_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 110 \
    name cnn_gradswxi_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradswxi_V \
    op interface \
    ports { cnn_gradswxi_V_address0 { O 17 vector } cnn_gradswxi_V_ce0 { O 1 bit } cnn_gradswxi_V_we0 { O 1 bit } cnn_gradswxi_V_d0 { O 16 vector } cnn_gradswxi_V_q0 { I 16 vector } cnn_gradswxi_V_address1 { O 17 vector } cnn_gradswxi_V_ce1 { O 1 bit } cnn_gradswxi_V_we1 { O 1 bit } cnn_gradswxi_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradswxi_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 111 \
    name cnn_gradswxo_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradswxo_V \
    op interface \
    ports { cnn_gradswxo_V_address0 { O 17 vector } cnn_gradswxo_V_ce0 { O 1 bit } cnn_gradswxo_V_we0 { O 1 bit } cnn_gradswxo_V_d0 { O 16 vector } cnn_gradswxo_V_q0 { I 16 vector } cnn_gradswxo_V_address1 { O 17 vector } cnn_gradswxo_V_ce1 { O 1 bit } cnn_gradswxo_V_we1 { O 1 bit } cnn_gradswxo_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradswxo_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 112 \
    name cnn_gradswxf2_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradswxf2_V \
    op interface \
    ports { cnn_gradswxf2_V_address0 { O 17 vector } cnn_gradswxf2_V_ce0 { O 1 bit } cnn_gradswxf2_V_we0 { O 1 bit } cnn_gradswxf2_V_d0 { O 16 vector } cnn_gradswxf2_V_q0 { I 16 vector } cnn_gradswxf2_V_address1 { O 17 vector } cnn_gradswxf2_V_ce1 { O 1 bit } cnn_gradswxf2_V_we1 { O 1 bit } cnn_gradswxf2_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradswxf2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 113 \
    name cnn_gradswxg2_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradswxg2_V \
    op interface \
    ports { cnn_gradswxg2_V_address0 { O 17 vector } cnn_gradswxg2_V_ce0 { O 1 bit } cnn_gradswxg2_V_we0 { O 1 bit } cnn_gradswxg2_V_d0 { O 16 vector } cnn_gradswxg2_V_q0 { I 16 vector } cnn_gradswxg2_V_address1 { O 17 vector } cnn_gradswxg2_V_ce1 { O 1 bit } cnn_gradswxg2_V_we1 { O 1 bit } cnn_gradswxg2_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradswxg2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name cnn_gradswxi2_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradswxi2_V \
    op interface \
    ports { cnn_gradswxi2_V_address0 { O 17 vector } cnn_gradswxi2_V_ce0 { O 1 bit } cnn_gradswxi2_V_we0 { O 1 bit } cnn_gradswxi2_V_d0 { O 16 vector } cnn_gradswxi2_V_q0 { I 16 vector } cnn_gradswxi2_V_address1 { O 17 vector } cnn_gradswxi2_V_ce1 { O 1 bit } cnn_gradswxi2_V_we1 { O 1 bit } cnn_gradswxi2_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradswxi2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name cnn_gradswxo2_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradswxo2_V \
    op interface \
    ports { cnn_gradswxo2_V_address0 { O 17 vector } cnn_gradswxo2_V_ce0 { O 1 bit } cnn_gradswxo2_V_we0 { O 1 bit } cnn_gradswxo2_V_d0 { O 16 vector } cnn_gradswxo2_V_q0 { I 16 vector } cnn_gradswxo2_V_address1 { O 17 vector } cnn_gradswxo2_V_ce1 { O 1 bit } cnn_gradswxo2_V_we1 { O 1 bit } cnn_gradswxo2_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradswxo2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name cnn_gradswhf_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradswhf_V \
    op interface \
    ports { cnn_gradswhf_V_address0 { O 17 vector } cnn_gradswhf_V_ce0 { O 1 bit } cnn_gradswhf_V_we0 { O 1 bit } cnn_gradswhf_V_d0 { O 16 vector } cnn_gradswhf_V_q0 { I 16 vector } cnn_gradswhf_V_address1 { O 17 vector } cnn_gradswhf_V_ce1 { O 1 bit } cnn_gradswhf_V_we1 { O 1 bit } cnn_gradswhf_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradswhf_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 117 \
    name cnn_gradswhg_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradswhg_V \
    op interface \
    ports { cnn_gradswhg_V_address0 { O 17 vector } cnn_gradswhg_V_ce0 { O 1 bit } cnn_gradswhg_V_we0 { O 1 bit } cnn_gradswhg_V_d0 { O 16 vector } cnn_gradswhg_V_q0 { I 16 vector } cnn_gradswhg_V_address1 { O 17 vector } cnn_gradswhg_V_ce1 { O 1 bit } cnn_gradswhg_V_we1 { O 1 bit } cnn_gradswhg_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradswhg_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 118 \
    name cnn_gradswhi_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradswhi_V \
    op interface \
    ports { cnn_gradswhi_V_address0 { O 17 vector } cnn_gradswhi_V_ce0 { O 1 bit } cnn_gradswhi_V_we0 { O 1 bit } cnn_gradswhi_V_d0 { O 16 vector } cnn_gradswhi_V_q0 { I 16 vector } cnn_gradswhi_V_address1 { O 17 vector } cnn_gradswhi_V_ce1 { O 1 bit } cnn_gradswhi_V_we1 { O 1 bit } cnn_gradswhi_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradswhi_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 119 \
    name cnn_gradswho_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradswho_V \
    op interface \
    ports { cnn_gradswho_V_address0 { O 17 vector } cnn_gradswho_V_ce0 { O 1 bit } cnn_gradswho_V_we0 { O 1 bit } cnn_gradswho_V_d0 { O 16 vector } cnn_gradswho_V_q0 { I 16 vector } cnn_gradswho_V_address1 { O 17 vector } cnn_gradswho_V_ce1 { O 1 bit } cnn_gradswho_V_we1 { O 1 bit } cnn_gradswho_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradswho_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 120 \
    name cnn_gradswhf2_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradswhf2_V \
    op interface \
    ports { cnn_gradswhf2_V_address0 { O 17 vector } cnn_gradswhf2_V_ce0 { O 1 bit } cnn_gradswhf2_V_we0 { O 1 bit } cnn_gradswhf2_V_d0 { O 16 vector } cnn_gradswhf2_V_q0 { I 16 vector } cnn_gradswhf2_V_address1 { O 17 vector } cnn_gradswhf2_V_ce1 { O 1 bit } cnn_gradswhf2_V_we1 { O 1 bit } cnn_gradswhf2_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradswhf2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 121 \
    name cnn_gradswhg2_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradswhg2_V \
    op interface \
    ports { cnn_gradswhg2_V_address0 { O 17 vector } cnn_gradswhg2_V_ce0 { O 1 bit } cnn_gradswhg2_V_we0 { O 1 bit } cnn_gradswhg2_V_d0 { O 16 vector } cnn_gradswhg2_V_q0 { I 16 vector } cnn_gradswhg2_V_address1 { O 17 vector } cnn_gradswhg2_V_ce1 { O 1 bit } cnn_gradswhg2_V_we1 { O 1 bit } cnn_gradswhg2_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradswhg2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name cnn_gradswhi2_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradswhi2_V \
    op interface \
    ports { cnn_gradswhi2_V_address0 { O 17 vector } cnn_gradswhi2_V_ce0 { O 1 bit } cnn_gradswhi2_V_we0 { O 1 bit } cnn_gradswhi2_V_d0 { O 16 vector } cnn_gradswhi2_V_q0 { I 16 vector } cnn_gradswhi2_V_address1 { O 17 vector } cnn_gradswhi2_V_ce1 { O 1 bit } cnn_gradswhi2_V_we1 { O 1 bit } cnn_gradswhi2_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradswhi2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 123 \
    name cnn_gradswho2_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradswho2_V \
    op interface \
    ports { cnn_gradswho2_V_address0 { O 17 vector } cnn_gradswho2_V_ce0 { O 1 bit } cnn_gradswho2_V_we0 { O 1 bit } cnn_gradswho2_V_d0 { O 16 vector } cnn_gradswho2_V_q0 { I 16 vector } cnn_gradswho2_V_address1 { O 17 vector } cnn_gradswho2_V_ce1 { O 1 bit } cnn_gradswho2_V_we1 { O 1 bit } cnn_gradswho2_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradswho2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 124 \
    name cnn_gradsbf_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradsbf_V \
    op interface \
    ports { cnn_gradsbf_V_address0 { O 9 vector } cnn_gradsbf_V_ce0 { O 1 bit } cnn_gradsbf_V_we0 { O 1 bit } cnn_gradsbf_V_d0 { O 16 vector } cnn_gradsbf_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradsbf_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 125 \
    name cnn_gradsbg_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradsbg_V \
    op interface \
    ports { cnn_gradsbg_V_address0 { O 9 vector } cnn_gradsbg_V_ce0 { O 1 bit } cnn_gradsbg_V_we0 { O 1 bit } cnn_gradsbg_V_d0 { O 16 vector } cnn_gradsbg_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradsbg_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 126 \
    name cnn_gradsbi_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradsbi_V \
    op interface \
    ports { cnn_gradsbi_V_address0 { O 9 vector } cnn_gradsbi_V_ce0 { O 1 bit } cnn_gradsbi_V_we0 { O 1 bit } cnn_gradsbi_V_d0 { O 16 vector } cnn_gradsbi_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradsbi_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name cnn_gradsbo_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradsbo_V \
    op interface \
    ports { cnn_gradsbo_V_address0 { O 9 vector } cnn_gradsbo_V_ce0 { O 1 bit } cnn_gradsbo_V_we0 { O 1 bit } cnn_gradsbo_V_d0 { O 16 vector } cnn_gradsbo_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradsbo_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 128 \
    name cnn_gradsbf2_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradsbf2_V \
    op interface \
    ports { cnn_gradsbf2_V_address0 { O 9 vector } cnn_gradsbf2_V_ce0 { O 1 bit } cnn_gradsbf2_V_we0 { O 1 bit } cnn_gradsbf2_V_d0 { O 16 vector } cnn_gradsbf2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradsbf2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name cnn_gradsbg2_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradsbg2_V \
    op interface \
    ports { cnn_gradsbg2_V_address0 { O 9 vector } cnn_gradsbg2_V_ce0 { O 1 bit } cnn_gradsbg2_V_we0 { O 1 bit } cnn_gradsbg2_V_d0 { O 16 vector } cnn_gradsbg2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradsbg2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name cnn_gradsbi2_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradsbi2_V \
    op interface \
    ports { cnn_gradsbi2_V_address0 { O 9 vector } cnn_gradsbi2_V_ce0 { O 1 bit } cnn_gradsbi2_V_we0 { O 1 bit } cnn_gradsbi2_V_d0 { O 16 vector } cnn_gradsbi2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradsbi2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
    name cnn_gradsbo2_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_gradsbo2_V \
    op interface \
    ports { cnn_gradsbo2_V_address0 { O 9 vector } cnn_gradsbo2_V_ce0 { O 1 bit } cnn_gradsbo2_V_we0 { O 1 bit } cnn_gradsbo2_V_d0 { O 16 vector } cnn_gradsbo2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_gradsbo2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name cnn_hs_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_hs_V \
    op interface \
    ports { cnn_hs_V_address0 { O 16 vector } cnn_hs_V_ce0 { O 1 bit } cnn_hs_V_we0 { O 1 bit } cnn_hs_V_d0 { O 16 vector } cnn_hs_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_hs_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 133 \
    name cnn_lstm_f_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_lstm_f_V \
    op interface \
    ports { cnn_lstm_f_V_address0 { O 15 vector } cnn_lstm_f_V_ce0 { O 1 bit } cnn_lstm_f_V_we0 { O 1 bit } cnn_lstm_f_V_d0 { O 16 vector } cnn_lstm_f_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm_f_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name cnn_lstm_g_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_lstm_g_V \
    op interface \
    ports { cnn_lstm_g_V_address0 { O 15 vector } cnn_lstm_g_V_ce0 { O 1 bit } cnn_lstm_g_V_we0 { O 1 bit } cnn_lstm_g_V_d0 { O 16 vector } cnn_lstm_g_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm_g_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name cnn_lstm_i_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_lstm_i_V \
    op interface \
    ports { cnn_lstm_i_V_address0 { O 15 vector } cnn_lstm_i_V_ce0 { O 1 bit } cnn_lstm_i_V_we0 { O 1 bit } cnn_lstm_i_V_d0 { O 16 vector } cnn_lstm_i_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm_i_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 136 \
    name cnn_lstm_o_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_lstm_o_V \
    op interface \
    ports { cnn_lstm_o_V_address0 { O 15 vector } cnn_lstm_o_V_ce0 { O 1 bit } cnn_lstm_o_V_we0 { O 1 bit } cnn_lstm_o_V_d0 { O 16 vector } cnn_lstm_o_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm_o_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 137 \
    name cnn_lstm_cache_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cnn_lstm_cache_V \
    op interface \
    ports { cnn_lstm_cache_V_address0 { O 18 vector } cnn_lstm_cache_V_ce0 { O 1 bit } cnn_lstm_cache_V_q0 { I 16 vector } cnn_lstm_cache_V_address1 { O 18 vector } cnn_lstm_cache_V_ce1 { O 1 bit } cnn_lstm_cache_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm_cache_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 138 \
    name cnn_lstm2_f_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_lstm2_f_V \
    op interface \
    ports { cnn_lstm2_f_V_address0 { O 15 vector } cnn_lstm2_f_V_ce0 { O 1 bit } cnn_lstm2_f_V_we0 { O 1 bit } cnn_lstm2_f_V_d0 { O 16 vector } cnn_lstm2_f_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm2_f_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
    name cnn_lstm2_g_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_lstm2_g_V \
    op interface \
    ports { cnn_lstm2_g_V_address0 { O 15 vector } cnn_lstm2_g_V_ce0 { O 1 bit } cnn_lstm2_g_V_we0 { O 1 bit } cnn_lstm2_g_V_d0 { O 16 vector } cnn_lstm2_g_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm2_g_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
    name cnn_lstm2_i_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_lstm2_i_V \
    op interface \
    ports { cnn_lstm2_i_V_address0 { O 15 vector } cnn_lstm2_i_V_ce0 { O 1 bit } cnn_lstm2_i_V_we0 { O 1 bit } cnn_lstm2_i_V_d0 { O 16 vector } cnn_lstm2_i_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm2_i_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name cnn_lstm2_o_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cnn_lstm2_o_V \
    op interface \
    ports { cnn_lstm2_o_V_address0 { O 15 vector } cnn_lstm2_o_V_ce0 { O 1 bit } cnn_lstm2_o_V_we0 { O 1 bit } cnn_lstm2_o_V_d0 { O 16 vector } cnn_lstm2_o_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm2_o_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name cnn_lstm2_cache_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cnn_lstm2_cache_V \
    op interface \
    ports { cnn_lstm2_cache_V_address0 { O 18 vector } cnn_lstm2_cache_V_ce0 { O 1 bit } cnn_lstm2_cache_V_q0 { I 16 vector } cnn_lstm2_cache_V_address1 { O 18 vector } cnn_lstm2_cache_V_ce1 { O 1 bit } cnn_lstm2_cache_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cnn_lstm2_cache_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name dout_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dout_V \
    op interface \
    ports { dout_V_address0 { O 16 vector } dout_V_ce0 { O 1 bit } dout_V_we0 { O 1 bit } dout_V_d0 { O 16 vector } dout_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dout_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
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
    id 145 \
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
    id 146 \
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
    id 147 \
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
    id 148 \
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
    id 149 \
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
    id 150 \
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
    id 151 \
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
    id 152 \
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
    id 153 \
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
    id 154 \
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
    id 155 \
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
    id 156 \
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
    id 157 \
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
    id 158 \
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
    id 159 \
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


