// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _insertion_sort_HH_
#define _insertion_sort_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "insertion_sort_fcbkb.h"
#include "insertion_sort_mucud.h"

namespace ap_rtl {

struct insertion_sort : public sc_module {
    // Port declarations 36
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > arr_0_i;
    sc_out< sc_lv<32> > arr_0_o;
    sc_out< sc_logic > arr_0_o_ap_vld;
    sc_in< sc_lv<32> > arr_1_i;
    sc_out< sc_lv<32> > arr_1_o;
    sc_out< sc_logic > arr_1_o_ap_vld;
    sc_in< sc_lv<32> > arr_2_i;
    sc_out< sc_lv<32> > arr_2_o;
    sc_out< sc_logic > arr_2_o_ap_vld;
    sc_in< sc_lv<32> > arr_3_i;
    sc_out< sc_lv<32> > arr_3_o;
    sc_out< sc_logic > arr_3_o_ap_vld;
    sc_in< sc_lv<32> > arr_4_i;
    sc_out< sc_lv<32> > arr_4_o;
    sc_out< sc_logic > arr_4_o_ap_vld;
    sc_in< sc_lv<32> > arr_5_i;
    sc_out< sc_lv<32> > arr_5_o;
    sc_out< sc_logic > arr_5_o_ap_vld;
    sc_in< sc_lv<32> > arr_6_i;
    sc_out< sc_lv<32> > arr_6_o;
    sc_out< sc_logic > arr_6_o_ap_vld;
    sc_in< sc_lv<32> > arr_7_i;
    sc_out< sc_lv<32> > arr_7_o;
    sc_out< sc_logic > arr_7_o_ap_vld;
    sc_in< sc_lv<32> > arr_8_i;
    sc_out< sc_lv<32> > arr_8_o;
    sc_out< sc_logic > arr_8_o_ap_vld;
    sc_in< sc_lv<32> > arr_9_i;
    sc_out< sc_lv<32> > arr_9_o;
    sc_out< sc_logic > arr_9_o_ap_vld;
    sc_signal< sc_lv<5> > ap_var_for_const0;


    // Module declarations
    insertion_sort(sc_module_name name);
    SC_HAS_PROCESS(insertion_sort);

    ~insertion_sort();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    insertion_sort_fcbkb<1,1,32,32,1>* insertion_sort_fcbkb_U1;
    insertion_sort_mucud<1,1,32,32,32,32,32,32,32,32,32,32,4,32>* insertion_sort_mucud_U2;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > i_cast_fu_632_p1;
    sc_signal< sc_lv<5> > i_cast_reg_884;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > arr_9_read_reg_892;
    sc_signal< sc_lv<1> > exitcond_fu_636_p2;
    sc_signal< sc_lv<32> > arr_1_read_reg_897;
    sc_signal< sc_lv<32> > arr_2_read_reg_902;
    sc_signal< sc_lv<32> > arr_3_read_reg_907;
    sc_signal< sc_lv<32> > arr_4_read_reg_912;
    sc_signal< sc_lv<32> > sel_tmp7_fu_690_p3;
    sc_signal< sc_lv<32> > sel_tmp7_reg_917;
    sc_signal< sc_lv<1> > sel_tmp8_fu_698_p2;
    sc_signal< sc_lv<1> > sel_tmp8_reg_922;
    sc_signal< sc_lv<1> > sel_tmp10_fu_704_p2;
    sc_signal< sc_lv<1> > sel_tmp10_reg_927;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > key_fu_743_p3;
    sc_signal< sc_lv<32> > key_reg_952;
    sc_signal< sc_lv<32> > key_to_int_fu_751_p1;
    sc_signal< sc_lv<32> > key_to_int_reg_967;
    sc_signal< sc_lv<1> > notrhs1_fu_759_p2;
    sc_signal< sc_lv<1> > notrhs1_reg_972;
    sc_signal< sc_lv<4> > tmp_12_fu_765_p1;
    sc_signal< sc_lv<4> > tmp_12_reg_977;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<5> > j_fu_769_p2;
    sc_signal< sc_lv<5> > j_reg_981;
    sc_signal< sc_lv<1> > tmp_1_fu_775_p2;
    sc_signal< sc_lv<1> > tmp_1_reg_986;
    sc_signal< sc_lv<32> > tmp_13_fu_787_p12;
    sc_signal< sc_lv<32> > tmp_13_reg_990;
    sc_signal< sc_lv<1> > notlhs1_fu_822_p2;
    sc_signal< sc_lv<1> > notlhs1_reg_1014;
    sc_signal< sc_lv<1> > tmp_20_fu_628_p2;
    sc_signal< sc_lv<1> > tmp_20_reg_1019;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<4> > i_1_fu_878_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > tmp_21_fu_873_p2;
    sc_signal< sc_lv<4> > i_reg_220;
    sc_signal< sc_lv<32> > tmp_2_reg_232;
    sc_signal< sc_lv<32> > tmp_22_phi_fu_335_p18;
    sc_signal< sc_lv<32> > tmp_3_reg_242;
    sc_signal< sc_lv<32> > tmp_23_phi_fu_368_p18;
    sc_signal< sc_lv<32> > tmp_5_reg_252;
    sc_signal< sc_lv<32> > tmp_24_phi_fu_401_p18;
    sc_signal< sc_lv<32> > tmp_7_reg_262;
    sc_signal< sc_lv<32> > tmp_25_phi_fu_434_p18;
    sc_signal< sc_lv<32> > tmp_8_reg_272;
    sc_signal< sc_lv<32> > tmp_26_phi_fu_467_p18;
    sc_signal< sc_lv<32> > tmp_9_reg_282;
    sc_signal< sc_lv<32> > tmp_27_phi_fu_500_p18;
    sc_signal< sc_lv<32> > tmp_s_reg_292;
    sc_signal< sc_lv<32> > tmp_28_phi_fu_533_p18;
    sc_signal< sc_lv<32> > tmp_10_reg_302;
    sc_signal< sc_lv<32> > tmp_29_phi_fu_566_p18;
    sc_signal< sc_lv<32> > tmp_11_reg_312;
    sc_signal< sc_lv<32> > tmp_30_phi_fu_599_p18;
    sc_signal< sc_lv<5> > j_0_in_reg_322;
    sc_signal< sc_lv<1> > sel_tmp_fu_642_p2;
    sc_signal< sc_lv<1> > sel_tmp2_fu_656_p2;
    sc_signal< sc_lv<32> > sel_tmp1_fu_648_p3;
    sc_signal< sc_lv<1> > sel_tmp4_fu_670_p2;
    sc_signal< sc_lv<32> > sel_tmp3_fu_662_p3;
    sc_signal< sc_lv<1> > sel_tmp6_fu_684_p2;
    sc_signal< sc_lv<32> > sel_tmp5_fu_676_p3;
    sc_signal< sc_lv<32> > sel_tmp9_fu_710_p3;
    sc_signal< sc_lv<1> > sel_tmp12_fu_723_p2;
    sc_signal< sc_lv<32> > sel_tmp11_fu_716_p3;
    sc_signal< sc_lv<1> > sel_tmp14_fu_737_p2;
    sc_signal< sc_lv<32> > sel_tmp13_fu_729_p3;
    sc_signal< sc_lv<23> > tmp_4_fu_755_p1;
    sc_signal< sc_lv<4> > tmp_13_fu_787_p11;
    sc_signal< sc_lv<8> > tmp_16_fu_813_p4;
    sc_signal< sc_lv<32> > p_to_int_fu_828_p1;
    sc_signal< sc_lv<8> > tmp_14_fu_831_p4;
    sc_signal< sc_lv<23> > tmp_15_fu_841_p1;
    sc_signal< sc_lv<1> > notrhs_fu_851_p2;
    sc_signal< sc_lv<1> > notlhs_fu_845_p2;
    sc_signal< sc_lv<1> > tmp_17_fu_857_p2;
    sc_signal< sc_lv<1> > tmp_18_fu_863_p2;
    sc_signal< sc_lv<1> > tmp_19_fu_867_p2;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    sc_signal< bool > ap_condition_230;
    sc_signal< bool > ap_condition_314;
    sc_signal< bool > ap_condition_227;
    sc_signal< bool > ap_condition_309;
    sc_signal< bool > ap_condition_224;
    sc_signal< bool > ap_condition_304;
    sc_signal< bool > ap_condition_221;
    sc_signal< bool > ap_condition_299;
    sc_signal< bool > ap_condition_218;
    sc_signal< bool > ap_condition_294;
    sc_signal< bool > ap_condition_215;
    sc_signal< bool > ap_condition_289;
    sc_signal< bool > ap_condition_212;
    sc_signal< bool > ap_condition_284;
    sc_signal< bool > ap_condition_210;
    sc_signal< bool > ap_condition_279;
    sc_signal< bool > ap_condition_208;
    sc_signal< bool > ap_condition_338;
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
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<4> ap_const_lv4_7;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<5> ap_const_lv5_2;
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
    void thread_ap_condition_208();
    void thread_ap_condition_210();
    void thread_ap_condition_212();
    void thread_ap_condition_215();
    void thread_ap_condition_218();
    void thread_ap_condition_221();
    void thread_ap_condition_224();
    void thread_ap_condition_227();
    void thread_ap_condition_230();
    void thread_ap_condition_279();
    void thread_ap_condition_284();
    void thread_ap_condition_289();
    void thread_ap_condition_294();
    void thread_ap_condition_299();
    void thread_ap_condition_304();
    void thread_ap_condition_309();
    void thread_ap_condition_314();
    void thread_ap_condition_338();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_arr_0_o();
    void thread_arr_0_o_ap_vld();
    void thread_arr_1_o();
    void thread_arr_1_o_ap_vld();
    void thread_arr_2_o();
    void thread_arr_2_o_ap_vld();
    void thread_arr_3_o();
    void thread_arr_3_o_ap_vld();
    void thread_arr_4_o();
    void thread_arr_4_o_ap_vld();
    void thread_arr_5_o();
    void thread_arr_5_o_ap_vld();
    void thread_arr_6_o();
    void thread_arr_6_o_ap_vld();
    void thread_arr_7_o();
    void thread_arr_7_o_ap_vld();
    void thread_arr_8_o();
    void thread_arr_8_o_ap_vld();
    void thread_arr_9_o();
    void thread_arr_9_o_ap_vld();
    void thread_exitcond_fu_636_p2();
    void thread_i_1_fu_878_p2();
    void thread_i_cast_fu_632_p1();
    void thread_j_fu_769_p2();
    void thread_key_fu_743_p3();
    void thread_key_to_int_fu_751_p1();
    void thread_notlhs1_fu_822_p2();
    void thread_notlhs_fu_845_p2();
    void thread_notrhs1_fu_759_p2();
    void thread_notrhs_fu_851_p2();
    void thread_p_to_int_fu_828_p1();
    void thread_sel_tmp10_fu_704_p2();
    void thread_sel_tmp11_fu_716_p3();
    void thread_sel_tmp12_fu_723_p2();
    void thread_sel_tmp13_fu_729_p3();
    void thread_sel_tmp14_fu_737_p2();
    void thread_sel_tmp1_fu_648_p3();
    void thread_sel_tmp2_fu_656_p2();
    void thread_sel_tmp3_fu_662_p3();
    void thread_sel_tmp4_fu_670_p2();
    void thread_sel_tmp5_fu_676_p3();
    void thread_sel_tmp6_fu_684_p2();
    void thread_sel_tmp7_fu_690_p3();
    void thread_sel_tmp8_fu_698_p2();
    void thread_sel_tmp9_fu_710_p3();
    void thread_sel_tmp_fu_642_p2();
    void thread_tmp_12_fu_765_p1();
    void thread_tmp_13_fu_787_p11();
    void thread_tmp_14_fu_831_p4();
    void thread_tmp_15_fu_841_p1();
    void thread_tmp_16_fu_813_p4();
    void thread_tmp_17_fu_857_p2();
    void thread_tmp_18_fu_863_p2();
    void thread_tmp_19_fu_867_p2();
    void thread_tmp_1_fu_775_p2();
    void thread_tmp_21_fu_873_p2();
    void thread_tmp_22_phi_fu_335_p18();
    void thread_tmp_23_phi_fu_368_p18();
    void thread_tmp_24_phi_fu_401_p18();
    void thread_tmp_25_phi_fu_434_p18();
    void thread_tmp_26_phi_fu_467_p18();
    void thread_tmp_27_phi_fu_500_p18();
    void thread_tmp_28_phi_fu_533_p18();
    void thread_tmp_29_phi_fu_566_p18();
    void thread_tmp_30_phi_fu_599_p18();
    void thread_tmp_4_fu_755_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif