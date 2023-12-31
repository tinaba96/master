// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _kerneldl_forward_1_HH_
#define _kerneldl_forward_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "kerneldl_kerneldl_fadd_32ns_32ns_32_7_full_dsp_1.h"
#include "kerneldl_kerneldl_fmul_32ns_32ns_32_4_max_dsp_1.h"
#include "kerneldl_kerneldl_mac_muladd_9ns_11ns_10ns_19_4_1.h"
#include "kerneldl_kerneldl_mac_muladd_3ns_6ns_16ns_16_4_1.h"

namespace ap_rtl {

struct kerneldl_forward_1 : public sc_module {
    // Port declarations 23
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<12> > conv1d_actc_address0;
    sc_out< sc_logic > conv1d_actc_ce0;
    sc_out< sc_logic > conv1d_actc_we0;
    sc_out< sc_lv<32> > conv1d_actc_d0;
    sc_out< sc_lv<12> > in_r_address0;
    sc_out< sc_logic > in_r_ce0;
    sc_in< sc_lv<32> > in_r_q0;
    sc_out< sc_lv<19> > out_r_address0;
    sc_out< sc_logic > out_r_ce0;
    sc_out< sc_logic > out_r_we0;
    sc_out< sc_lv<32> > out_r_d0;
    sc_out< sc_lv<16> > kernel_address0;
    sc_out< sc_logic > kernel_ce0;
    sc_in< sc_lv<32> > kernel_q0;
    sc_out< sc_lv<19> > b_address0;
    sc_out< sc_logic > b_ce0;
    sc_in< sc_lv<32> > b_q0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    kerneldl_forward_1(sc_module_name name);
    SC_HAS_PROCESS(kerneldl_forward_1);

    ~kerneldl_forward_1();

    sc_trace_file* mVcdFile;

    kerneldl_kerneldl_fadd_32ns_32ns_32_7_full_dsp_1<1,7,32,32,32>* kerneldl_fadd_32ns_32ns_32_7_full_dsp_1_U15;
    kerneldl_kerneldl_fmul_32ns_32ns_32_4_max_dsp_1<1,4,32,32,32>* kerneldl_fmul_32ns_32ns_32_4_max_dsp_1_U16;
    kerneldl_kerneldl_mac_muladd_9ns_11ns_10ns_19_4_1<1,4,9,11,10,19>* kerneldl_mac_muladd_9ns_11ns_10ns_19_4_1_U17;
    kerneldl_kerneldl_mac_muladd_3ns_6ns_16ns_16_4_1<1,4,3,6,16,16>* kerneldl_mac_muladd_3ns_6ns_16ns_16_4_1_U18;
    sc_signal< sc_lv<24> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<12> > i_0_reg_155;
    sc_signal< sc_lv<7> > indvar_flatten_reg_199;
    sc_signal< sc_lv<3> > t_0_reg_210;
    sc_signal< sc_lv<32> > empty_26_reg_221;
    sc_signal< sc_lv<5> > k_0_reg_233;
    sc_signal< sc_lv<1> > icmp_ln349_fu_253_p2;
    sc_signal< sc_lv<1> > icmp_ln349_reg_448;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<12> > i_fu_259_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<64> > zext_ln351_fu_265_p1;
    sc_signal< sc_lv<64> > zext_ln351_reg_457;
    sc_signal< sc_lv<19> > add_ln356_fu_276_p2;
    sc_signal< sc_lv<19> > add_ln356_reg_470;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<10> > select_ln359_fu_288_p3;
    sc_signal< sc_lv<10> > select_ln359_reg_475;
    sc_signal< sc_lv<1> > icmp_ln356_fu_270_p2;
    sc_signal< sc_lv<9> > select_ln359_1_fu_302_p3;
    sc_signal< sc_lv<9> > select_ln359_1_reg_483;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<16> > mul_ln359_1_fu_320_p2;
    sc_signal< sc_lv<16> > mul_ln359_1_reg_499;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<19> > out_addr_reg_504;
    sc_signal< sc_lv<1> > icmp_ln364_fu_330_p2;
    sc_signal< sc_lv<1> > icmp_ln364_reg_509;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state9_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state16_pp1_stage0_iter1;
    sc_signal< bool > ap_block_state23_pp1_stage0_iter2;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln364_reg_509_pp1_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln364_reg_509_pp1_iter2_reg;
    sc_signal< sc_lv<7> > add_ln364_fu_336_p2;
    sc_signal< sc_lv<7> > add_ln364_reg_513;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<5> > select_ln364_fu_348_p3;
    sc_signal< sc_lv<5> > select_ln364_reg_518;
    sc_signal< sc_lv<3> > select_ln364_1_fu_362_p3;
    sc_signal< sc_lv<3> > select_ln364_1_reg_525;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage1;
    sc_signal< bool > ap_block_state10_pp1_stage1_iter0;
    sc_signal< bool > ap_block_state17_pp1_stage1_iter1;
    sc_signal< bool > ap_block_state24_pp1_stage1_iter2;
    sc_signal< bool > ap_block_pp1_stage1_11001;
    sc_signal< sc_lv<32> > in_load_1_reg_541;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage2;
    sc_signal< bool > ap_block_state11_pp1_stage2_iter0;
    sc_signal< bool > ap_block_state18_pp1_stage2_iter1;
    sc_signal< bool > ap_block_pp1_stage2_11001;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage3;
    sc_signal< bool > ap_block_state12_pp1_stage3_iter0;
    sc_signal< bool > ap_block_state19_pp1_stage3_iter1;
    sc_signal< bool > ap_block_pp1_stage3_11001;
    sc_signal< sc_lv<32> > kernel_load_reg_556;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage4;
    sc_signal< bool > ap_block_state13_pp1_stage4_iter0;
    sc_signal< bool > ap_block_state20_pp1_stage4_iter1;
    sc_signal< bool > ap_block_pp1_stage4_11001;
    sc_signal< sc_lv<5> > k_fu_416_p2;
    sc_signal< sc_lv<5> > k_reg_561;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage6;
    sc_signal< bool > ap_block_state15_pp1_stage6_iter0;
    sc_signal< bool > ap_block_state22_pp1_stage6_iter1;
    sc_signal< bool > ap_block_pp1_stage6_11001;
    sc_signal< sc_lv<32> > grp_fu_249_p2;
    sc_signal< sc_lv<32> > tmp_s_reg_566;
    sc_signal< sc_lv<32> > grp_fu_244_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter2;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_lv<10> > i_11_fu_425_p2;
    sc_signal< sc_lv<10> > i_11_reg_581;
    sc_signal< sc_lv<32> > b_load_reg_586;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_lv<32> > tmp_reg_591;
    sc_signal< sc_logic > ap_CS_fsm_state33;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state9;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp1_stage6_subdone;
    sc_signal< bool > ap_block_pp1_stage1_subdone;
    sc_signal< sc_lv<19> > indvar_flatten8_reg_166;
    sc_signal< sc_logic > ap_CS_fsm_state34;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<9> > nk_0_reg_177;
    sc_signal< sc_lv<10> > j_reg_188;
    sc_signal< sc_lv<7> > ap_phi_mux_indvar_flatten_phi_fu_203_p4;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<3> > ap_phi_mux_t_0_phi_fu_214_p4;
    sc_signal< sc_lv<32> > ap_phi_mux_empty_26_phi_fu_225_p4;
    sc_signal< sc_lv<5> > ap_phi_mux_k_0_phi_fu_237_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<64> > zext_ln363_fu_326_p1;
    sc_signal< sc_lv<64> > zext_ln369_1_fu_399_p1;
    sc_signal< bool > ap_block_pp1_stage1;
    sc_signal< sc_lv<64> > zext_ln369_2_fu_412_p1;
    sc_signal< bool > ap_block_pp1_stage3;
    sc_signal< sc_lv<64> > zext_ln372_fu_421_p1;
    sc_signal< sc_lv<32> > grp_fu_244_p0;
    sc_signal< sc_lv<32> > grp_fu_244_p1;
    sc_signal< bool > ap_block_pp1_stage2;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage5;
    sc_signal< bool > ap_block_pp1_stage5;
    sc_signal< sc_lv<1> > icmp_ln361_fu_282_p2;
    sc_signal< sc_lv<9> > add_ln356_1_fu_296_p2;
    sc_signal< sc_lv<9> > mul_ln359_1_fu_320_p0;
    sc_signal< sc_lv<19> > grp_fu_430_p3;
    sc_signal< sc_lv<1> > icmp_ln367_fu_342_p2;
    sc_signal< sc_lv<3> > add_ln364_1_fu_356_p2;
    sc_signal< sc_lv<10> > zext_ln369_fu_377_p1;
    sc_signal< sc_lv<10> > add_ln369_fu_380_p2;
    sc_signal< sc_lv<12> > zext_ln364_fu_374_p1;
    sc_signal< sc_lv<12> > shl_ln_fu_385_p3;
    sc_signal< sc_lv<12> > add_ln369_1_fu_393_p2;
    sc_signal< sc_lv<16> > k_0_cast2_fu_404_p1;
    sc_signal< sc_lv<16> > grp_fu_439_p3;
    sc_signal< bool > ap_block_pp1_stage6;
    sc_signal< sc_lv<9> > grp_fu_430_p0;
    sc_signal< sc_lv<11> > grp_fu_430_p1;
    sc_signal< sc_lv<10> > grp_fu_430_p2;
    sc_signal< sc_lv<3> > grp_fu_439_p0;
    sc_signal< sc_lv<6> > grp_fu_439_p1;
    sc_signal< sc_lv<16> > grp_fu_439_p2;
    sc_signal< sc_lv<24> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp1_stage2_subdone;
    sc_signal< bool > ap_block_pp1_stage3_subdone;
    sc_signal< bool > ap_block_pp1_stage4_subdone;
    sc_signal< bool > ap_block_state14_pp1_stage5_iter0;
    sc_signal< bool > ap_block_state21_pp1_stage5_iter1;
    sc_signal< bool > ap_block_pp1_stage5_subdone;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    sc_signal< sc_lv<19> > grp_fu_430_p00;
    sc_signal< sc_lv<19> > grp_fu_430_p20;
    sc_signal< sc_lv<9> > grp_fu_439_p00;
    sc_signal< sc_lv<16> > mul_ln359_1_fu_320_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<24> ap_ST_fsm_state1;
    static const sc_lv<24> ap_ST_fsm_pp0_stage0;
    static const sc_lv<24> ap_ST_fsm_state4;
    static const sc_lv<24> ap_ST_fsm_state5;
    static const sc_lv<24> ap_ST_fsm_state6;
    static const sc_lv<24> ap_ST_fsm_state7;
    static const sc_lv<24> ap_ST_fsm_state8;
    static const sc_lv<24> ap_ST_fsm_pp1_stage0;
    static const sc_lv<24> ap_ST_fsm_pp1_stage1;
    static const sc_lv<24> ap_ST_fsm_pp1_stage2;
    static const sc_lv<24> ap_ST_fsm_pp1_stage3;
    static const sc_lv<24> ap_ST_fsm_pp1_stage4;
    static const sc_lv<24> ap_ST_fsm_pp1_stage5;
    static const sc_lv<24> ap_ST_fsm_pp1_stage6;
    static const sc_lv<24> ap_ST_fsm_state25;
    static const sc_lv<24> ap_ST_fsm_state26;
    static const sc_lv<24> ap_ST_fsm_state27;
    static const sc_lv<24> ap_ST_fsm_state28;
    static const sc_lv<24> ap_ST_fsm_state29;
    static const sc_lv<24> ap_ST_fsm_state30;
    static const sc_lv<24> ap_ST_fsm_state31;
    static const sc_lv<24> ap_ST_fsm_state32;
    static const sc_lv<24> ap_ST_fsm_state33;
    static const sc_lv<24> ap_ST_fsm_state34;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<19> ap_const_lv19_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<12> ap_const_lv12_FA0;
    static const sc_lv<12> ap_const_lv12_1;
    static const sc_lv<19> ap_const_lv19_4C2C0;
    static const sc_lv<19> ap_const_lv19_1;
    static const sc_lv<10> ap_const_lv10_3CF;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<16> ap_const_lv16_68;
    static const sc_lv<7> ap_const_lv7_68;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<5> ap_const_lv5_1A;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<19> ap_const_lv19_3CF;
    static const sc_lv<9> ap_const_lv9_1A;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln356_1_fu_296_p2();
    void thread_add_ln356_fu_276_p2();
    void thread_add_ln364_1_fu_356_p2();
    void thread_add_ln364_fu_336_p2();
    void thread_add_ln369_1_fu_393_p2();
    void thread_add_ln369_fu_380_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_pp1_stage1();
    void thread_ap_CS_fsm_pp1_stage2();
    void thread_ap_CS_fsm_pp1_stage3();
    void thread_ap_CS_fsm_pp1_stage4();
    void thread_ap_CS_fsm_pp1_stage5();
    void thread_ap_CS_fsm_pp1_stage6();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state33();
    void thread_ap_CS_fsm_state34();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_pp1_stage1();
    void thread_ap_block_pp1_stage1_11001();
    void thread_ap_block_pp1_stage1_subdone();
    void thread_ap_block_pp1_stage2();
    void thread_ap_block_pp1_stage2_11001();
    void thread_ap_block_pp1_stage2_subdone();
    void thread_ap_block_pp1_stage3();
    void thread_ap_block_pp1_stage3_11001();
    void thread_ap_block_pp1_stage3_subdone();
    void thread_ap_block_pp1_stage4_11001();
    void thread_ap_block_pp1_stage4_subdone();
    void thread_ap_block_pp1_stage5();
    void thread_ap_block_pp1_stage5_subdone();
    void thread_ap_block_pp1_stage6();
    void thread_ap_block_pp1_stage6_11001();
    void thread_ap_block_pp1_stage6_subdone();
    void thread_ap_block_state10_pp1_stage1_iter0();
    void thread_ap_block_state11_pp1_stage2_iter0();
    void thread_ap_block_state12_pp1_stage3_iter0();
    void thread_ap_block_state13_pp1_stage4_iter0();
    void thread_ap_block_state14_pp1_stage5_iter0();
    void thread_ap_block_state15_pp1_stage6_iter0();
    void thread_ap_block_state16_pp1_stage0_iter1();
    void thread_ap_block_state17_pp1_stage1_iter1();
    void thread_ap_block_state18_pp1_stage2_iter1();
    void thread_ap_block_state19_pp1_stage3_iter1();
    void thread_ap_block_state20_pp1_stage4_iter1();
    void thread_ap_block_state21_pp1_stage5_iter1();
    void thread_ap_block_state22_pp1_stage6_iter1();
    void thread_ap_block_state23_pp1_stage0_iter2();
    void thread_ap_block_state24_pp1_stage1_iter2();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state9_pp1_stage0_iter0();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_condition_pp1_exit_iter0_state9();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_phi_mux_empty_26_phi_fu_225_p4();
    void thread_ap_phi_mux_indvar_flatten_phi_fu_203_p4();
    void thread_ap_phi_mux_k_0_phi_fu_237_p4();
    void thread_ap_phi_mux_t_0_phi_fu_214_p4();
    void thread_ap_ready();
    void thread_b_address0();
    void thread_b_ce0();
    void thread_conv1d_actc_address0();
    void thread_conv1d_actc_ce0();
    void thread_conv1d_actc_d0();
    void thread_conv1d_actc_we0();
    void thread_grp_fu_244_p0();
    void thread_grp_fu_244_p1();
    void thread_grp_fu_430_p0();
    void thread_grp_fu_430_p00();
    void thread_grp_fu_430_p1();
    void thread_grp_fu_430_p2();
    void thread_grp_fu_430_p20();
    void thread_grp_fu_439_p0();
    void thread_grp_fu_439_p00();
    void thread_grp_fu_439_p1();
    void thread_grp_fu_439_p2();
    void thread_i_11_fu_425_p2();
    void thread_i_fu_259_p2();
    void thread_icmp_ln349_fu_253_p2();
    void thread_icmp_ln356_fu_270_p2();
    void thread_icmp_ln361_fu_282_p2();
    void thread_icmp_ln364_fu_330_p2();
    void thread_icmp_ln367_fu_342_p2();
    void thread_in_r_address0();
    void thread_in_r_ce0();
    void thread_k_0_cast2_fu_404_p1();
    void thread_k_fu_416_p2();
    void thread_kernel_address0();
    void thread_kernel_ce0();
    void thread_mul_ln359_1_fu_320_p0();
    void thread_mul_ln359_1_fu_320_p00();
    void thread_mul_ln359_1_fu_320_p2();
    void thread_out_r_address0();
    void thread_out_r_ce0();
    void thread_out_r_d0();
    void thread_out_r_we0();
    void thread_select_ln359_1_fu_302_p3();
    void thread_select_ln359_fu_288_p3();
    void thread_select_ln364_1_fu_362_p3();
    void thread_select_ln364_fu_348_p3();
    void thread_shl_ln_fu_385_p3();
    void thread_zext_ln351_fu_265_p1();
    void thread_zext_ln363_fu_326_p1();
    void thread_zext_ln364_fu_374_p1();
    void thread_zext_ln369_1_fu_399_p1();
    void thread_zext_ln369_2_fu_412_p1();
    void thread_zext_ln369_fu_377_p1();
    void thread_zext_ln372_fu_421_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
