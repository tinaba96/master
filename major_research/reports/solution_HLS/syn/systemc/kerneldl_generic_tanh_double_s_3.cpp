#include "kerneldl_generic_tanh_double_s.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void kerneldl_generic_tanh_double_s::thread_abst_in_fu_201_p1() {
    abst_in_fu_201_p1 = p_Result_97_fu_193_p3.read();
}

void kerneldl_generic_tanh_double_s::thread_and_ln75_fu_225_p2() {
    and_ln75_fu_225_p2 = (icmp_ln833_1_fu_219_p2.read() & grp_fu_141_p2.read());
}

void kerneldl_generic_tanh_double_s::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[0];
}

void kerneldl_generic_tanh_double_s::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_pp0_stage0_00001() {
    ap_block_pp0_stage0_00001 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()));
}

void kerneldl_generic_tanh_double_s::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()));
}

void kerneldl_generic_tanh_double_s::thread_ap_block_pp0_stage0_11001_ignoreCallOp161() {
    ap_block_pp0_stage0_11001_ignoreCallOp161 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()));
}

void kerneldl_generic_tanh_double_s::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read())) || esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_0));
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state10_pp0_stage0_iter9() {
    ap_block_state10_pp0_stage0_iter9 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state10_pp0_stage0_iter9_ignore_call0() {
    ap_block_state10_pp0_stage0_iter9_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state11_pp0_stage0_iter10() {
    ap_block_state11_pp0_stage0_iter10 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state11_pp0_stage0_iter10_ignore_call0() {
    ap_block_state11_pp0_stage0_iter10_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state12_pp0_stage0_iter11() {
    ap_block_state12_pp0_stage0_iter11 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state12_pp0_stage0_iter11_ignore_call0() {
    ap_block_state12_pp0_stage0_iter11_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state13_pp0_stage0_iter12() {
    ap_block_state13_pp0_stage0_iter12 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state13_pp0_stage0_iter12_ignore_call0() {
    ap_block_state13_pp0_stage0_iter12_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state14_pp0_stage0_iter13() {
    ap_block_state14_pp0_stage0_iter13 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state14_pp0_stage0_iter13_ignore_call0() {
    ap_block_state14_pp0_stage0_iter13_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state15_pp0_stage0_iter14() {
    ap_block_state15_pp0_stage0_iter14 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state15_pp0_stage0_iter14_ignore_call0() {
    ap_block_state15_pp0_stage0_iter14_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state16_pp0_stage0_iter15() {
    ap_block_state16_pp0_stage0_iter15 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state16_pp0_stage0_iter15_ignore_call0() {
    ap_block_state16_pp0_stage0_iter15_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state17_pp0_stage0_iter16() {
    ap_block_state17_pp0_stage0_iter16 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state17_pp0_stage0_iter16_ignore_call0() {
    ap_block_state17_pp0_stage0_iter16_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state18_pp0_stage0_iter17() {
    ap_block_state18_pp0_stage0_iter17 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state18_pp0_stage0_iter17_ignore_call0() {
    ap_block_state18_pp0_stage0_iter17_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state19_pp0_stage0_iter18() {
    ap_block_state19_pp0_stage0_iter18 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state19_pp0_stage0_iter18_ignore_call0() {
    ap_block_state19_pp0_stage0_iter18_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state1_pp0_stage0_iter0() {
    ap_block_state1_pp0_stage0_iter0 = esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read());
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state1_pp0_stage0_iter0_ignore_call0() {
    ap_block_state1_pp0_stage0_iter0_ignore_call0 = esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read());
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state20_pp0_stage0_iter19() {
    ap_block_state20_pp0_stage0_iter19 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state20_pp0_stage0_iter19_ignore_call0() {
    ap_block_state20_pp0_stage0_iter19_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state21_pp0_stage0_iter20() {
    ap_block_state21_pp0_stage0_iter20 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state21_pp0_stage0_iter20_ignore_call0() {
    ap_block_state21_pp0_stage0_iter20_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state22_pp0_stage0_iter21() {
    ap_block_state22_pp0_stage0_iter21 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state22_pp0_stage0_iter21_ignore_call0() {
    ap_block_state22_pp0_stage0_iter21_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state23_pp0_stage0_iter22() {
    ap_block_state23_pp0_stage0_iter22 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state23_pp0_stage0_iter22_ignore_call0() {
    ap_block_state23_pp0_stage0_iter22_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state24_pp0_stage0_iter23() {
    ap_block_state24_pp0_stage0_iter23 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state24_pp0_stage0_iter23_ignore_call0() {
    ap_block_state24_pp0_stage0_iter23_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state25_pp0_stage0_iter24() {
    ap_block_state25_pp0_stage0_iter24 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state25_pp0_stage0_iter24_ignore_call0() {
    ap_block_state25_pp0_stage0_iter24_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state26_pp0_stage0_iter25() {
    ap_block_state26_pp0_stage0_iter25 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state26_pp0_stage0_iter25_ignore_call0() {
    ap_block_state26_pp0_stage0_iter25_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state27_pp0_stage0_iter26() {
    ap_block_state27_pp0_stage0_iter26 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state27_pp0_stage0_iter26_ignore_call0() {
    ap_block_state27_pp0_stage0_iter26_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state28_pp0_stage0_iter27() {
    ap_block_state28_pp0_stage0_iter27 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state28_pp0_stage0_iter27_ignore_call0() {
    ap_block_state28_pp0_stage0_iter27_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state29_pp0_stage0_iter28() {
    ap_block_state29_pp0_stage0_iter28 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state29_pp0_stage0_iter28_ignore_call0() {
    ap_block_state29_pp0_stage0_iter28_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state2_pp0_stage0_iter1() {
    ap_block_state2_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state2_pp0_stage0_iter1_ignore_call0() {
    ap_block_state2_pp0_stage0_iter1_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state30_pp0_stage0_iter29() {
    ap_block_state30_pp0_stage0_iter29 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state30_pp0_stage0_iter29_ignore_call0() {
    ap_block_state30_pp0_stage0_iter29_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state31_pp0_stage0_iter30() {
    ap_block_state31_pp0_stage0_iter30 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state31_pp0_stage0_iter30_ignore_call0() {
    ap_block_state31_pp0_stage0_iter30_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state32_pp0_stage0_iter31() {
    ap_block_state32_pp0_stage0_iter31 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state32_pp0_stage0_iter31_ignore_call0() {
    ap_block_state32_pp0_stage0_iter31_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state33_pp0_stage0_iter32() {
    ap_block_state33_pp0_stage0_iter32 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state33_pp0_stage0_iter32_ignore_call0() {
    ap_block_state33_pp0_stage0_iter32_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state34_pp0_stage0_iter33() {
    ap_block_state34_pp0_stage0_iter33 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state34_pp0_stage0_iter33_ignore_call0() {
    ap_block_state34_pp0_stage0_iter33_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state35_pp0_stage0_iter34() {
    ap_block_state35_pp0_stage0_iter34 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state35_pp0_stage0_iter34_ignore_call0() {
    ap_block_state35_pp0_stage0_iter34_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state36_pp0_stage0_iter35() {
    ap_block_state36_pp0_stage0_iter35 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state36_pp0_stage0_iter35_ignore_call0() {
    ap_block_state36_pp0_stage0_iter35_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state37_pp0_stage0_iter36() {
    ap_block_state37_pp0_stage0_iter36 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state37_pp0_stage0_iter36_ignore_call0() {
    ap_block_state37_pp0_stage0_iter36_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state38_pp0_stage0_iter37() {
    ap_block_state38_pp0_stage0_iter37 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state38_pp0_stage0_iter37_ignore_call0() {
    ap_block_state38_pp0_stage0_iter37_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state39_pp0_stage0_iter38() {
    ap_block_state39_pp0_stage0_iter38 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state39_pp0_stage0_iter38_ignore_call0() {
    ap_block_state39_pp0_stage0_iter38_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state3_pp0_stage0_iter2() {
    ap_block_state3_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state3_pp0_stage0_iter2_ignore_call0() {
    ap_block_state3_pp0_stage0_iter2_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state40_pp0_stage0_iter39() {
    ap_block_state40_pp0_stage0_iter39 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state40_pp0_stage0_iter39_ignore_call0() {
    ap_block_state40_pp0_stage0_iter39_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state41_pp0_stage0_iter40() {
    ap_block_state41_pp0_stage0_iter40 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state41_pp0_stage0_iter40_ignore_call0() {
    ap_block_state41_pp0_stage0_iter40_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state42_pp0_stage0_iter41() {
    ap_block_state42_pp0_stage0_iter41 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state42_pp0_stage0_iter41_ignore_call0() {
    ap_block_state42_pp0_stage0_iter41_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state43_pp0_stage0_iter42() {
    ap_block_state43_pp0_stage0_iter42 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state43_pp0_stage0_iter42_ignore_call0() {
    ap_block_state43_pp0_stage0_iter42_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state44_pp0_stage0_iter43() {
    ap_block_state44_pp0_stage0_iter43 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state44_pp0_stage0_iter43_ignore_call0() {
    ap_block_state44_pp0_stage0_iter43_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state45_pp0_stage0_iter44() {
    ap_block_state45_pp0_stage0_iter44 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state45_pp0_stage0_iter44_ignore_call0() {
    ap_block_state45_pp0_stage0_iter44_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state46_pp0_stage0_iter45() {
    ap_block_state46_pp0_stage0_iter45 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state46_pp0_stage0_iter45_ignore_call0() {
    ap_block_state46_pp0_stage0_iter45_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state47_pp0_stage0_iter46() {
    ap_block_state47_pp0_stage0_iter46 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state47_pp0_stage0_iter46_ignore_call0() {
    ap_block_state47_pp0_stage0_iter46_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state48_pp0_stage0_iter47() {
    ap_block_state48_pp0_stage0_iter47 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state48_pp0_stage0_iter47_ignore_call0() {
    ap_block_state48_pp0_stage0_iter47_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state49_pp0_stage0_iter48() {
    ap_block_state49_pp0_stage0_iter48 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state49_pp0_stage0_iter48_ignore_call0() {
    ap_block_state49_pp0_stage0_iter48_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state4_pp0_stage0_iter3() {
    ap_block_state4_pp0_stage0_iter3 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state4_pp0_stage0_iter3_ignore_call0() {
    ap_block_state4_pp0_stage0_iter3_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state50_pp0_stage0_iter49() {
    ap_block_state50_pp0_stage0_iter49 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state50_pp0_stage0_iter49_ignore_call0() {
    ap_block_state50_pp0_stage0_iter49_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state51_pp0_stage0_iter50() {
    ap_block_state51_pp0_stage0_iter50 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state51_pp0_stage0_iter50_ignore_call0() {
    ap_block_state51_pp0_stage0_iter50_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state52_pp0_stage0_iter51() {
    ap_block_state52_pp0_stage0_iter51 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state52_pp0_stage0_iter51_ignore_call0() {
    ap_block_state52_pp0_stage0_iter51_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state53_pp0_stage0_iter52() {
    ap_block_state53_pp0_stage0_iter52 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state53_pp0_stage0_iter52_ignore_call0() {
    ap_block_state53_pp0_stage0_iter52_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state54_pp0_stage0_iter53() {
    ap_block_state54_pp0_stage0_iter53 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state54_pp0_stage0_iter53_ignore_call0() {
    ap_block_state54_pp0_stage0_iter53_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state55_pp0_stage0_iter54() {
    ap_block_state55_pp0_stage0_iter54 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state55_pp0_stage0_iter54_ignore_call0() {
    ap_block_state55_pp0_stage0_iter54_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state56_pp0_stage0_iter55() {
    ap_block_state56_pp0_stage0_iter55 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state56_pp0_stage0_iter55_ignore_call0() {
    ap_block_state56_pp0_stage0_iter55_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state57_pp0_stage0_iter56() {
    ap_block_state57_pp0_stage0_iter56 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state57_pp0_stage0_iter56_ignore_call0() {
    ap_block_state57_pp0_stage0_iter56_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state58_pp0_stage0_iter57() {
    ap_block_state58_pp0_stage0_iter57 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state58_pp0_stage0_iter57_ignore_call0() {
    ap_block_state58_pp0_stage0_iter57_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state59_pp0_stage0_iter58() {
    ap_block_state59_pp0_stage0_iter58 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state59_pp0_stage0_iter58_ignore_call0() {
    ap_block_state59_pp0_stage0_iter58_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state5_pp0_stage0_iter4() {
    ap_block_state5_pp0_stage0_iter4 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state5_pp0_stage0_iter4_ignore_call0() {
    ap_block_state5_pp0_stage0_iter4_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state60_pp0_stage0_iter59() {
    ap_block_state60_pp0_stage0_iter59 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state60_pp0_stage0_iter59_ignore_call0() {
    ap_block_state60_pp0_stage0_iter59_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state61_pp0_stage0_iter60() {
    ap_block_state61_pp0_stage0_iter60 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state61_pp0_stage0_iter60_ignore_call0() {
    ap_block_state61_pp0_stage0_iter60_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state62_pp0_stage0_iter61() {
    ap_block_state62_pp0_stage0_iter61 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state62_pp0_stage0_iter61_ignore_call0() {
    ap_block_state62_pp0_stage0_iter61_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state63_pp0_stage0_iter62() {
    ap_block_state63_pp0_stage0_iter62 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state63_pp0_stage0_iter62_ignore_call0() {
    ap_block_state63_pp0_stage0_iter62_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state64_pp0_stage0_iter63() {
    ap_block_state64_pp0_stage0_iter63 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state64_pp0_stage0_iter63_ignore_call0() {
    ap_block_state64_pp0_stage0_iter63_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state65_pp0_stage0_iter64() {
    ap_block_state65_pp0_stage0_iter64 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state65_pp0_stage0_iter64_ignore_call0() {
    ap_block_state65_pp0_stage0_iter64_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state66_pp0_stage0_iter65() {
    ap_block_state66_pp0_stage0_iter65 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state66_pp0_stage0_iter65_ignore_call0() {
    ap_block_state66_pp0_stage0_iter65_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state67_pp0_stage0_iter66() {
    ap_block_state67_pp0_stage0_iter66 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state67_pp0_stage0_iter66_ignore_call0() {
    ap_block_state67_pp0_stage0_iter66_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state68_pp0_stage0_iter67() {
    ap_block_state68_pp0_stage0_iter67 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state68_pp0_stage0_iter67_ignore_call0() {
    ap_block_state68_pp0_stage0_iter67_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state69_pp0_stage0_iter68() {
    ap_block_state69_pp0_stage0_iter68 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state69_pp0_stage0_iter68_ignore_call0() {
    ap_block_state69_pp0_stage0_iter68_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state6_pp0_stage0_iter5() {
    ap_block_state6_pp0_stage0_iter5 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state6_pp0_stage0_iter5_ignore_call0() {
    ap_block_state6_pp0_stage0_iter5_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state70_pp0_stage0_iter69() {
    ap_block_state70_pp0_stage0_iter69 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state70_pp0_stage0_iter69_ignore_call0() {
    ap_block_state70_pp0_stage0_iter69_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state71_pp0_stage0_iter70() {
    ap_block_state71_pp0_stage0_iter70 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state71_pp0_stage0_iter70_ignore_call0() {
    ap_block_state71_pp0_stage0_iter70_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state72_pp0_stage0_iter71() {
    ap_block_state72_pp0_stage0_iter71 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state72_pp0_stage0_iter71_ignore_call0() {
    ap_block_state72_pp0_stage0_iter71_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state73_pp0_stage0_iter72() {
    ap_block_state73_pp0_stage0_iter72 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state73_pp0_stage0_iter72_ignore_call0() {
    ap_block_state73_pp0_stage0_iter72_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state74_pp0_stage0_iter73() {
    ap_block_state74_pp0_stage0_iter73 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state74_pp0_stage0_iter73_ignore_call0() {
    ap_block_state74_pp0_stage0_iter73_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state75_pp0_stage0_iter74() {
    ap_block_state75_pp0_stage0_iter74 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state75_pp0_stage0_iter74_ignore_call0() {
    ap_block_state75_pp0_stage0_iter74_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state76_pp0_stage0_iter75() {
    ap_block_state76_pp0_stage0_iter75 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state76_pp0_stage0_iter75_ignore_call0() {
    ap_block_state76_pp0_stage0_iter75_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state77_pp0_stage0_iter76() {
    ap_block_state77_pp0_stage0_iter76 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state77_pp0_stage0_iter76_ignore_call0() {
    ap_block_state77_pp0_stage0_iter76_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state78_pp0_stage0_iter77() {
    ap_block_state78_pp0_stage0_iter77 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state78_pp0_stage0_iter77_ignore_call0() {
    ap_block_state78_pp0_stage0_iter77_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state79_pp0_stage0_iter78() {
    ap_block_state79_pp0_stage0_iter78 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state79_pp0_stage0_iter78_ignore_call0() {
    ap_block_state79_pp0_stage0_iter78_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state7_pp0_stage0_iter6() {
    ap_block_state7_pp0_stage0_iter6 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state7_pp0_stage0_iter6_ignore_call0() {
    ap_block_state7_pp0_stage0_iter6_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state80_pp0_stage0_iter79() {
    ap_block_state80_pp0_stage0_iter79 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state80_pp0_stage0_iter79_ignore_call0() {
    ap_block_state80_pp0_stage0_iter79_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state81_pp0_stage0_iter80() {
    ap_block_state81_pp0_stage0_iter80 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state81_pp0_stage0_iter80_ignore_call0() {
    ap_block_state81_pp0_stage0_iter80_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state82_pp0_stage0_iter81() {
    ap_block_state82_pp0_stage0_iter81 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state82_pp0_stage0_iter81_ignore_call0() {
    ap_block_state82_pp0_stage0_iter81_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state83_pp0_stage0_iter82() {
    ap_block_state83_pp0_stage0_iter82 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state83_pp0_stage0_iter82_ignore_call0() {
    ap_block_state83_pp0_stage0_iter82_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state84_pp0_stage0_iter83() {
    ap_block_state84_pp0_stage0_iter83 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state84_pp0_stage0_iter83_ignore_call0() {
    ap_block_state84_pp0_stage0_iter83_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state85_pp0_stage0_iter84() {
    ap_block_state85_pp0_stage0_iter84 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state85_pp0_stage0_iter84_ignore_call0() {
    ap_block_state85_pp0_stage0_iter84_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state86_pp0_stage0_iter85() {
    ap_block_state86_pp0_stage0_iter85 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state86_pp0_stage0_iter85_ignore_call0() {
    ap_block_state86_pp0_stage0_iter85_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state87_pp0_stage0_iter86() {
    ap_block_state87_pp0_stage0_iter86 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state87_pp0_stage0_iter86_ignore_call0() {
    ap_block_state87_pp0_stage0_iter86_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state88_pp0_stage0_iter87() {
    ap_block_state88_pp0_stage0_iter87 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state88_pp0_stage0_iter87_ignore_call0() {
    ap_block_state88_pp0_stage0_iter87_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state89_pp0_stage0_iter88() {
    ap_block_state89_pp0_stage0_iter88 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state89_pp0_stage0_iter88_ignore_call0() {
    ap_block_state89_pp0_stage0_iter88_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state8_pp0_stage0_iter7() {
    ap_block_state8_pp0_stage0_iter7 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state8_pp0_stage0_iter7_ignore_call0() {
    ap_block_state8_pp0_stage0_iter7_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state90_pp0_stage0_iter89() {
    ap_block_state90_pp0_stage0_iter89 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state90_pp0_stage0_iter89_ignore_call0() {
    ap_block_state90_pp0_stage0_iter89_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state91_pp0_stage0_iter90() {
    ap_block_state91_pp0_stage0_iter90 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state91_pp0_stage0_iter90_ignore_call0() {
    ap_block_state91_pp0_stage0_iter90_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state92_pp0_stage0_iter91() {
    ap_block_state92_pp0_stage0_iter91 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state92_pp0_stage0_iter91_ignore_call0() {
    ap_block_state92_pp0_stage0_iter91_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state93_pp0_stage0_iter92() {
    ap_block_state93_pp0_stage0_iter92 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state93_pp0_stage0_iter92_ignore_call0() {
    ap_block_state93_pp0_stage0_iter92_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state94_pp0_stage0_iter93() {
    ap_block_state94_pp0_stage0_iter93 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state94_pp0_stage0_iter93_ignore_call0() {
    ap_block_state94_pp0_stage0_iter93_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state95_pp0_stage0_iter94() {
    ap_block_state95_pp0_stage0_iter94 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state95_pp0_stage0_iter94_ignore_call0() {
    ap_block_state95_pp0_stage0_iter94_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state96_pp0_stage0_iter95() {
    ap_block_state96_pp0_stage0_iter95 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state96_pp0_stage0_iter95_ignore_call0() {
    ap_block_state96_pp0_stage0_iter95_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state97_pp0_stage0_iter96() {
    ap_block_state97_pp0_stage0_iter96 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state97_pp0_stage0_iter96_ignore_call0() {
    ap_block_state97_pp0_stage0_iter96_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state9_pp0_stage0_iter8() {
    ap_block_state9_pp0_stage0_iter8 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_block_state9_pp0_stage0_iter8_ignore_call0() {
    ap_block_state9_pp0_stage0_iter8_ignore_call0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_condition_2292() {
    ap_condition_2292 = (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()));
}

void kerneldl_generic_tanh_double_s::thread_ap_condition_2476() {
    ap_condition_2476 = (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter48.read()));
}

void kerneldl_generic_tanh_double_s::thread_ap_condition_2492() {
    ap_condition_2492 = ((esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln833_reg_366_pp0_iter47_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln849_reg_370_pp0_iter47_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, and_ln75_reg_374_pp0_iter47_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, tmp_15_reg_383_pp0_iter47_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, p_Result_96_reg_410_pp0_iter47_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, or_ln9_reg_418_pp0_iter47_reg.read())) || (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln833_reg_366_pp0_iter47_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln849_reg_370_pp0_iter47_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, and_ln75_reg_374_pp0_iter47_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, tmp_15_reg_383_pp0_iter47_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, p_Result_96_reg_410_pp0_iter47_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, or_ln10_reg_414_pp0_iter47_reg.read())));
}

void kerneldl_generic_tanh_double_s::thread_ap_condition_2733() {
    ap_condition_2733 = (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter95.read()));
}

void kerneldl_generic_tanh_double_s::thread_ap_condition_2738() {
    ap_condition_2738 = ((esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln833_reg_366_pp0_iter94_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, and_ln75_reg_374_pp0_iter94_reg.read())) || (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln833_reg_366_pp0_iter94_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln849_reg_370_pp0_iter94_reg.read())));
}

void kerneldl_generic_tanh_double_s::thread_ap_condition_2744() {
    ap_condition_2744 = (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln833_reg_366_pp0_iter94_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln849_reg_370_pp0_iter94_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, and_ln75_reg_374_pp0_iter94_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_15_reg_383_pp0_iter94_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln849_1_reg_387_pp0_iter94_reg.read()));
}

void kerneldl_generic_tanh_double_s::thread_ap_condition_2763() {
    ap_condition_2763 = (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln833_reg_366_pp0_iter1_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln849_reg_370_pp0_iter1_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, and_ln75_reg_374_pp0_iter1_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_15_reg_383.read()));
}

void kerneldl_generic_tanh_double_s::thread_ap_condition_4226() {
    ap_condition_4226 = (esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln833_reg_366_pp0_iter56_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln849_reg_370_pp0_iter56_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, and_ln75_reg_374_pp0_iter56_reg.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_15_reg_383_pp0_iter56_reg.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter57.read()));
}

void kerneldl_generic_tanh_double_s::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter96.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void kerneldl_generic_tanh_double_s::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void kerneldl_generic_tanh_double_s::thread_ap_enable_reg_pp0_iter0() {
    ap_enable_reg_pp0_iter0 = ap_start.read();
}

void kerneldl_generic_tanh_double_s::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_idle_pp0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void kerneldl_generic_tanh_double_s::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter3.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter4.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter5.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter6.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter7.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter8.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter9.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter10.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter11.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter12.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter13.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter14.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter15.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter16.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter17.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter18.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter19.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter20.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter22.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter23.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter24.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter25.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter26.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter27.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter28.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter29.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter30.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter31.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter32.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter33.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter34.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter35.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter36.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter37.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter38.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter39.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter40.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter41.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter42.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter43.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter44.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter45.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter46.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter47.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter48.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter49.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter50.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter51.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter52.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter53.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter54.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter55.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter56.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter57.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter58.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter59.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter60.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter61.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter62.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter63.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter64.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter65.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter66.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter67.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter68.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter69.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter70.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter71.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter72.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter73.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter74.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter75.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter76.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter77.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter78.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter79.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter80.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter81.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter82.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter83.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter84.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter85.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter86.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter87.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter88.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter89.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter90.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter91.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter92.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter93.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter94.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter95.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter96.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void kerneldl_generic_tanh_double_s::thread_ap_idle_pp0_0to95() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter3.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter4.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter5.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter6.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter7.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter8.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter9.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter10.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter11.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter12.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter13.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter14.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter15.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter16.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter17.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter18.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter19.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter20.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter22.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter23.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter24.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter25.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter26.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter27.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter28.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter29.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter30.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter31.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter32.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter33.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter34.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter35.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter36.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter37.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter38.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter39.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter40.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter41.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter42.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter43.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter44.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter45.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter46.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter47.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter48.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter49.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter50.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter51.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter52.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter53.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter54.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter55.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter56.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter57.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter58.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter59.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter60.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter61.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter62.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter63.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter64.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter65.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter66.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter67.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter68.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter69.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter70.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter71.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter72.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter73.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter74.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter75.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter76.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter77.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter78.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter79.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter80.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter81.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter82.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter83.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter84.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter85.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter86.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter87.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter88.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter89.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter90.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter91.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter92.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter93.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter94.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter95.read()))) {
        ap_idle_pp0_0to95 = ap_const_logic_1;
    } else {
        ap_idle_pp0_0to95 = ap_const_logic_0;
    }
}

void kerneldl_generic_tanh_double_s::thread_ap_phi_mux_resultf_4_phi_fu_74_p10() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln833_reg_366_pp0_iter95_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln849_reg_370_pp0_iter95_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, and_ln75_reg_374_pp0_iter95_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_15_reg_383_pp0_iter95_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln849_1_reg_387_pp0_iter95_reg.read()))) {
        ap_phi_mux_resultf_4_phi_fu_74_p10 = resultf_2_reg_447.read();
    } else {
        ap_phi_mux_resultf_4_phi_fu_74_p10 = ap_phi_reg_pp0_iter96_resultf_4_reg_70.read();
    }
}

void kerneldl_generic_tanh_double_s::thread_ap_phi_reg_pp0_iter0_expx_reg_58() {
    ap_phi_reg_pp0_iter0_expx_reg_58 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
}

void kerneldl_generic_tanh_double_s::thread_ap_phi_reg_pp0_iter0_resultf_4_reg_70() {
    ap_phi_reg_pp0_iter0_resultf_4_reg_70 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
}

void kerneldl_generic_tanh_double_s::thread_ap_predicate_op114_dcmp_state1() {
    ap_predicate_op114_dcmp_state1 = (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln833_fu_207_p2.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln849_fu_213_p2.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, and_ln75_fu_225_p2.read()));
}

void kerneldl_generic_tanh_double_s::thread_ap_predicate_op161_call_state11() {
    ap_predicate_op161_call_state11 = ((esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln833_reg_366_pp0_iter9_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln849_reg_370_pp0_iter9_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, and_ln75_reg_374_pp0_iter9_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, tmp_15_reg_383_pp0_iter9_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, p_Result_96_reg_410.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, or_ln9_reg_418.read())) || (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln833_reg_366_pp0_iter9_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln849_reg_370_pp0_iter9_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, and_ln75_reg_374_pp0_iter9_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, tmp_15_reg_383_pp0_iter9_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, p_Result_96_reg_410.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, or_ln10_reg_414.read())));
}

void kerneldl_generic_tanh_double_s::thread_ap_predicate_op161_call_state11_state10() {
    ap_predicate_op161_call_state11_state10 = ((esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln833_reg_366_pp0_iter8_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln849_reg_370_pp0_iter8_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, and_ln75_reg_374_pp0_iter8_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, tmp_15_reg_383_pp0_iter8_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, p_Result_96_fu_256_p3.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, or_ln9_fu_293_p2.read())) || (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln833_reg_366_pp0_iter8_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln849_reg_370_pp0_iter8_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, and_ln75_reg_374_pp0_iter8_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, tmp_15_reg_383_pp0_iter8_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, p_Result_96_fu_256_p3.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, or_ln10_fu_281_p2.read())));
}

void kerneldl_generic_tanh_double_s::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void kerneldl_generic_tanh_double_s::thread_ap_reset_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_idle_pp0_0to95.read()))) {
        ap_reset_idle_pp0 = ap_const_logic_1;
    } else {
        ap_reset_idle_pp0 = ap_const_logic_0;
    }
}

void kerneldl_generic_tanh_double_s::thread_ap_return() {
    ap_return = (!p_Result_s_reg_341_pp0_iter95_reg.read()[0].is_01())? sc_lv<64>(): ((p_Result_s_reg_341_pp0_iter95_reg.read()[0].to_bool())? bitcast_ln112_1_fu_330_p1.read(): ap_phi_mux_resultf_4_phi_fu_74_p10.read());
}

void kerneldl_generic_tanh_double_s::thread_bitcast_ln112_1_fu_330_p1() {
    bitcast_ln112_1_fu_330_p1 = xor_ln112_fu_324_p2.read();
}

void kerneldl_generic_tanh_double_s::thread_bitcast_ln112_fu_320_p1() {
    bitcast_ln112_fu_320_p1 = ap_phi_mux_resultf_4_phi_fu_74_p10.read();
}

void kerneldl_generic_tanh_double_s::thread_bitcast_ln95_1_fu_309_p1() {
    bitcast_ln95_1_fu_309_p1 = xor_ln95_reg_437.read();
}

void kerneldl_generic_tanh_double_s::thread_bitcast_ln95_fu_299_p1() {
    bitcast_ln95_fu_299_p1 = expx_reg_58_pp0_iter55_reg.read();
}

void kerneldl_generic_tanh_double_s::thread_grp_exp_generic_double_s_fu_87_ap_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001_ignoreCallOp161.read(), ap_const_boolean_0))) {
        grp_exp_generic_double_s_fu_87_ap_ce = ap_const_logic_1;
    } else {
        grp_exp_generic_double_s_fu_87_ap_ce = ap_const_logic_0;
    }
}

void kerneldl_generic_tanh_double_s::thread_grp_exp_generic_double_s_fu_87_ap_start() {
    grp_exp_generic_double_s_fu_87_ap_start = grp_exp_generic_double_s_fu_87_ap_start_reg.read();
}

void kerneldl_generic_tanh_double_s::thread_grp_fu_103_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_103_ce = ap_const_logic_1;
    } else {
        grp_fu_103_ce = ap_const_logic_0;
    }
}

void kerneldl_generic_tanh_double_s::thread_grp_fu_103_p0() {
    grp_fu_103_p0 = xor_ln84_fu_236_p2.read();
}

void kerneldl_generic_tanh_double_s::thread_grp_fu_107_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_107_ce = ap_const_logic_1;
    } else {
        grp_fu_107_ce = ap_const_logic_0;
    }
}

void kerneldl_generic_tanh_double_s::thread_grp_fu_111_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_111_ce = ap_const_logic_1;
    } else {
        grp_fu_111_ce = ap_const_logic_0;
    }
}

void kerneldl_generic_tanh_double_s::thread_grp_fu_116_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_116_ce = ap_const_logic_1;
    } else {
        grp_fu_116_ce = ap_const_logic_0;
    }
}

void kerneldl_generic_tanh_double_s::thread_grp_fu_122_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_122_ce = ap_const_logic_1;
    } else {
        grp_fu_122_ce = ap_const_logic_0;
    }
}

void kerneldl_generic_tanh_double_s::thread_grp_fu_127_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_127_ce = ap_const_logic_1;
    } else {
        grp_fu_127_ce = ap_const_logic_0;
    }
}

void kerneldl_generic_tanh_double_s::thread_grp_fu_131_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_131_ce = ap_const_logic_1;
    } else {
        grp_fu_131_ce = ap_const_logic_0;
    }
}

void kerneldl_generic_tanh_double_s::thread_grp_fu_131_p0() {
    if (esl_seteq<1,1,1>(ap_condition_4226.read(), ap_const_boolean_1)) {
        if (esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln849_1_reg_387_pp0_iter56_reg.read())) {
            grp_fu_131_p0 = bitcast_ln95_1_fu_309_p1.read();
        } else if (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln849_1_reg_387_pp0_iter56_reg.read())) {
            grp_fu_131_p0 = ap_const_lv64_4000000000000000;
        } else {
            grp_fu_131_p0 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        grp_fu_131_p0 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void kerneldl_generic_tanh_double_s::thread_grp_fu_136_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_136_ce = ap_const_logic_1;
    } else {
        grp_fu_136_ce = ap_const_logic_0;
    }
}

void kerneldl_generic_tanh_double_s::thread_grp_fu_141_p2() {
    grp_fu_141_p2 = (!tmp_V_18_fu_184_p1.read().is_01() || !ap_const_lv52_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_V_18_fu_184_p1.read() == ap_const_lv52_0);
}

void kerneldl_generic_tanh_double_s::thread_grp_fu_146_p2() {
    grp_fu_146_p2 = (!tmp_V_19_fu_264_p4.read().is_01() || !ap_const_lv11_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_V_19_fu_264_p4.read() == ap_const_lv11_0);
}

void kerneldl_generic_tanh_double_s::thread_grp_fu_98_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_98_ce = ap_const_logic_1;
    } else {
        grp_fu_98_ce = ap_const_logic_0;
    }
}

void kerneldl_generic_tanh_double_s::thread_icmp_ln10_fu_275_p2() {
    icmp_ln10_fu_275_p2 = (!tmp_V_19_fu_264_p4.read().is_01() || !ap_const_lv11_3E4.is_01())? sc_lv<1>(): (sc_biguint<11>(tmp_V_19_fu_264_p4.read()) > sc_biguint<11>(ap_const_lv11_3E4));
}

void kerneldl_generic_tanh_double_s::thread_icmp_ln833_1_fu_219_p2() {
    icmp_ln833_1_fu_219_p2 = (!tmp_V_fu_174_p4.read().is_01() || !ap_const_lv11_3C8.is_01())? sc_lv<1>(): sc_lv<1>(tmp_V_fu_174_p4.read() == ap_const_lv11_3C8);
}

void kerneldl_generic_tanh_double_s::thread_icmp_ln833_fu_207_p2() {
    icmp_ln833_fu_207_p2 = (!tmp_V_fu_174_p4.read().is_01() || !ap_const_lv11_7FF.is_01())? sc_lv<1>(): sc_lv<1>(tmp_V_fu_174_p4.read() == ap_const_lv11_7FF);
}

void kerneldl_generic_tanh_double_s::thread_icmp_ln849_1_fu_231_p2() {
    icmp_ln849_1_fu_231_p2 = (!tmp_V_reg_346.read().is_01() || !ap_const_lv11_3FF.is_01())? sc_lv<1>(): (sc_biguint<11>(tmp_V_reg_346.read()) < sc_biguint<11>(ap_const_lv11_3FF));
}

void kerneldl_generic_tanh_double_s::thread_icmp_ln849_fu_213_p2() {
    icmp_ln849_fu_213_p2 = (!tmp_V_fu_174_p4.read().is_01() || !ap_const_lv11_3C8.is_01())? sc_lv<1>(): (sc_biguint<11>(tmp_V_fu_174_p4.read()) < sc_biguint<11>(ap_const_lv11_3C8));
}

void kerneldl_generic_tanh_double_s::thread_icmp_ln9_fu_287_p2() {
    icmp_ln9_fu_287_p2 = (!tmp_V_19_fu_264_p4.read().is_01() || !ap_const_lv11_3E3.is_01())? sc_lv<1>(): (sc_biguint<11>(tmp_V_19_fu_264_p4.read()) > sc_biguint<11>(ap_const_lv11_3E3));
}

void kerneldl_generic_tanh_double_s::thread_or_ln10_fu_281_p2() {
    or_ln10_fu_281_p2 = (icmp_ln10_fu_275_p2.read() | grp_fu_146_p2.read());
}

void kerneldl_generic_tanh_double_s::thread_or_ln9_fu_293_p2() {
    or_ln9_fu_293_p2 = (icmp_ln9_fu_287_p2.read() | grp_fu_146_p2.read());
}

void kerneldl_generic_tanh_double_s::thread_p_Result_96_fu_256_p3() {
    p_Result_96_fu_256_p3 = p_Val2_71_fu_253_p1.read().range(63, 63);
}

void kerneldl_generic_tanh_double_s::thread_p_Result_97_fu_193_p3() {
    p_Result_97_fu_193_p3 = esl_concat<1,63>(ap_const_lv1_0, trunc_ln368_fu_189_p1.read());
}

void kerneldl_generic_tanh_double_s::thread_p_Val2_71_fu_253_p1() {
    p_Val2_71_fu_253_p1 = x_2_reg_402.read();
}

void kerneldl_generic_tanh_double_s::thread_p_Val2_s_fu_162_p1() {
    p_Val2_s_fu_162_p1 = t_in.read();
}

void kerneldl_generic_tanh_double_s::thread_select_ln67_fu_313_p3() {
    select_ln67_fu_313_p3 = (!icmp_ln837_reg_378_pp0_iter94_reg.read()[0].is_01())? sc_lv<64>(): ((icmp_ln837_reg_378_pp0_iter94_reg.read()[0].to_bool())? ap_const_lv64_3FF0000000000000: ap_const_lv64_7FFFFFFFFFFFFFFF);
}

void kerneldl_generic_tanh_double_s::thread_tmp_V_18_fu_184_p1() {
    tmp_V_18_fu_184_p1 = p_Val2_s_fu_162_p1.read().range(52-1, 0);
}

void kerneldl_generic_tanh_double_s::thread_tmp_V_19_fu_264_p4() {
    tmp_V_19_fu_264_p4 = p_Val2_71_fu_253_p1.read().range(62, 52);
}

void kerneldl_generic_tanh_double_s::thread_tmp_V_fu_174_p4() {
    tmp_V_fu_174_p4 = p_Val2_s_fu_162_p1.read().range(62, 52);
}

void kerneldl_generic_tanh_double_s::thread_trunc_ln368_fu_189_p1() {
    trunc_ln368_fu_189_p1 = p_Val2_s_fu_162_p1.read().range(63-1, 0);
}

void kerneldl_generic_tanh_double_s::thread_x_2_fu_246_p3() {
    x_2_fu_246_p3 = (!icmp_ln849_1_reg_387_pp0_iter7_reg.read()[0].is_01())? sc_lv<64>(): ((icmp_ln849_1_reg_387_pp0_iter7_reg.read()[0].to_bool())? grp_fu_103_p2.read(): grp_fu_107_p2.read());
}

void kerneldl_generic_tanh_double_s::thread_xor_ln112_fu_324_p2() {
    xor_ln112_fu_324_p2 = (bitcast_ln112_fu_320_p1.read() ^ ap_const_lv64_8000000000000000);
}

void kerneldl_generic_tanh_double_s::thread_xor_ln84_fu_236_p2() {
    xor_ln84_fu_236_p2 = (p_Result_97_reg_351.read() ^ ap_const_lv64_8000000000000000);
}

void kerneldl_generic_tanh_double_s::thread_xor_ln95_fu_303_p2() {
    xor_ln95_fu_303_p2 = (bitcast_ln95_fu_299_p1.read() ^ ap_const_lv64_8000000000000000);
}

}

