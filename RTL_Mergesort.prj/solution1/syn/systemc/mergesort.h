// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _mergesort_HH_
#define _mergesort_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "merge.h"

namespace ap_rtl {

struct mergesort : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > arr_address0;
    sc_out< sc_logic > arr_ce0;
    sc_in< sc_lv<64> > arr_q0;
    sc_out< sc_lv<4> > arr_address1;
    sc_out< sc_logic > arr_ce1;
    sc_out< sc_logic > arr_we1;
    sc_out< sc_lv<64> > arr_d1;
    sc_in< sc_lv<64> > arr_q1;


    // Module declarations
    mergesort(sc_module_name name);
    SC_HAS_PROCESS(mergesort);

    ~mergesort();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    merge* grp_merge_fu_73;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<64> > m_1_fu_90_p2;
    sc_signal< sc_lv<64> > m_1_reg_143;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > tmp_fu_84_p2;
    sc_signal< sc_lv<8> > tmp_5_fu_102_p1;
    sc_signal< sc_lv<8> > tmp_5_reg_153;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > tmp_3_fu_96_p2;
    sc_signal< sc_lv<64> > tmp_6_fu_112_p2;
    sc_signal< sc_lv<64> > tmp_6_reg_158;
    sc_signal< sc_lv<64> > c_assign_fu_118_p2;
    sc_signal< sc_lv<64> > c_assign_reg_163;
    sc_signal< sc_lv<64> > x_1_fu_123_p2;
    sc_signal< sc_lv<64> > x_1_reg_169;
    sc_signal< sc_lv<64> > c_assign_1_fu_133_p3;
    sc_signal< sc_lv<64> > c_assign_1_reg_174;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > grp_merge_fu_73_ap_start;
    sc_signal< sc_logic > grp_merge_fu_73_ap_done;
    sc_signal< sc_logic > grp_merge_fu_73_ap_idle;
    sc_signal< sc_logic > grp_merge_fu_73_ap_ready;
    sc_signal< sc_lv<4> > grp_merge_fu_73_arr_address0;
    sc_signal< sc_logic > grp_merge_fu_73_arr_ce0;
    sc_signal< sc_lv<4> > grp_merge_fu_73_arr_address1;
    sc_signal< sc_logic > grp_merge_fu_73_arr_ce1;
    sc_signal< sc_logic > grp_merge_fu_73_arr_we1;
    sc_signal< sc_lv<64> > grp_merge_fu_73_arr_d1;
    sc_signal< sc_lv<64> > m_reg_50;
    sc_signal< sc_lv<64> > x_reg_62;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_reg_grp_merge_fu_73_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<64> > tmp1_fu_106_p2;
    sc_signal< sc_lv<1> > tmp_i_fu_128_p2;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<64> ap_const_lv64_A;
    static const sc_lv<64> ap_const_lv64_9;
    static const sc_lv<64> ap_const_lv64_FFFFFFFFFFFFFFFF;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_arr_address0();
    void thread_arr_address1();
    void thread_arr_ce0();
    void thread_arr_ce1();
    void thread_arr_d1();
    void thread_arr_we1();
    void thread_c_assign_1_fu_133_p3();
    void thread_c_assign_fu_118_p2();
    void thread_grp_merge_fu_73_ap_start();
    void thread_m_1_fu_90_p2();
    void thread_tmp1_fu_106_p2();
    void thread_tmp_3_fu_96_p2();
    void thread_tmp_5_fu_102_p1();
    void thread_tmp_6_fu_112_p2();
    void thread_tmp_fu_84_p2();
    void thread_tmp_i_fu_128_p2();
    void thread_x_1_fu_123_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif