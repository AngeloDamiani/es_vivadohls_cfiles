// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _selection_sort_HH_
#define _selection_sort_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "selection_sort_fcbkb.h"

namespace ap_rtl {

struct selection_sort : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > arr_address0;
    sc_out< sc_logic > arr_ce0;
    sc_out< sc_logic > arr_we0;
    sc_out< sc_lv<32> > arr_d0;
    sc_in< sc_lv<32> > arr_q0;
    sc_out< sc_lv<4> > arr_address1;
    sc_out< sc_logic > arr_ce1;
    sc_out< sc_logic > arr_we1;
    sc_out< sc_lv<32> > arr_d1;
    sc_in< sc_lv<32> > arr_q1;
    sc_signal< sc_lv<5> > ap_var_for_const0;


    // Module declarations
    selection_sort(sc_module_name name);
    SC_HAS_PROCESS(selection_sort);

    ~selection_sort();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    selection_sort_fcbkb<1,1,32,32,1>* selection_sort_fcbkb_U1;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > reg_111;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > min_idx_1_cast1_fu_117_p1;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > i_fu_127_p2;
    sc_signal< sc_lv<4> > i_reg_259;
    sc_signal< sc_lv<8> > j_2_fu_133_p2;
    sc_signal< sc_lv<8> > j_2_reg_264;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > exitcond_fu_139_p2;
    sc_signal< sc_lv<4> > arr_addr_1_reg_283;
    sc_signal< sc_lv<4> > arr_addr_3_reg_288;
    sc_signal< sc_lv<32> > arr_load_1_reg_293;
    sc_signal< sc_lv<1> > notlhs_fu_200_p2;
    sc_signal< sc_lv<1> > notlhs_reg_299;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > notrhs_fu_206_p2;
    sc_signal< sc_lv<1> > notrhs_reg_304;
    sc_signal< sc_lv<1> > notlhs2_fu_212_p2;
    sc_signal< sc_lv<1> > notlhs2_reg_309;
    sc_signal< sc_lv<1> > notrhs3_fu_218_p2;
    sc_signal< sc_lv<1> > notrhs3_reg_314;
    sc_signal< sc_lv<1> > tmp_9_fu_107_p2;
    sc_signal< sc_lv<1> > tmp_9_reg_319;
    sc_signal< sc_lv<8> > j_fu_243_p3;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<4> > min_idx_reg_76;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > index_1_assign_reg_88;
    sc_signal< sc_lv<1> > exitcond1_fu_121_p2;
    sc_signal< sc_lv<8> > j_0_in_reg_98;
    sc_signal< sc_lv<64> > tmp_fu_145_p1;
    sc_signal< sc_lv<64> > tmp_2_fu_150_p1;
    sc_signal< sc_lv<64> > tmp_i_fu_155_p1;
    sc_signal< sc_lv<64> > tmp_1_i_fu_160_p1;
    sc_signal< sc_lv<32> > arr_load_to_int_fu_165_p1;
    sc_signal< sc_lv<32> > arr_load_1_to_int_fu_183_p1;
    sc_signal< sc_lv<8> > tmp_1_fu_169_p4;
    sc_signal< sc_lv<23> > tmp_3_fu_179_p1;
    sc_signal< sc_lv<8> > tmp_4_fu_186_p4;
    sc_signal< sc_lv<23> > tmp_5_fu_196_p1;
    sc_signal< sc_lv<1> > tmp_6_fu_224_p2;
    sc_signal< sc_lv<1> > tmp_7_fu_228_p2;
    sc_signal< sc_lv<1> > tmp_8_fu_232_p2;
    sc_signal< sc_lv<1> > tmp_s_fu_238_p2;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_fsm_state1;
    static const sc_lv<8> ap_ST_fsm_state2;
    static const sc_lv<8> ap_ST_fsm_state3;
    static const sc_lv<8> ap_ST_fsm_state4;
    static const sc_lv<8> ap_ST_fsm_state5;
    static const sc_lv<8> ap_ST_fsm_state6;
    static const sc_lv<8> ap_ST_fsm_state7;
    static const sc_lv<8> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_9;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<5> ap_const_lv5_4;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_arr_address0();
    void thread_arr_address1();
    void thread_arr_ce0();
    void thread_arr_ce1();
    void thread_arr_d0();
    void thread_arr_d1();
    void thread_arr_load_1_to_int_fu_183_p1();
    void thread_arr_load_to_int_fu_165_p1();
    void thread_arr_we0();
    void thread_arr_we1();
    void thread_exitcond1_fu_121_p2();
    void thread_exitcond_fu_139_p2();
    void thread_i_fu_127_p2();
    void thread_j_2_fu_133_p2();
    void thread_j_fu_243_p3();
    void thread_min_idx_1_cast1_fu_117_p1();
    void thread_notlhs2_fu_212_p2();
    void thread_notlhs_fu_200_p2();
    void thread_notrhs3_fu_218_p2();
    void thread_notrhs_fu_206_p2();
    void thread_tmp_1_fu_169_p4();
    void thread_tmp_1_i_fu_160_p1();
    void thread_tmp_2_fu_150_p1();
    void thread_tmp_3_fu_179_p1();
    void thread_tmp_4_fu_186_p4();
    void thread_tmp_5_fu_196_p1();
    void thread_tmp_6_fu_224_p2();
    void thread_tmp_7_fu_228_p2();
    void thread_tmp_8_fu_232_p2();
    void thread_tmp_fu_145_p1();
    void thread_tmp_i_fu_155_p1();
    void thread_tmp_s_fu_238_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif