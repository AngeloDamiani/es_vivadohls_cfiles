// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _quicksort_HH_
#define _quicksort_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "partition.h"
#include "quicksort_stack_0.h"

namespace ap_rtl {

struct quicksort : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<64> > i;
    sc_in< sc_lv<64> > f;
    sc_out< sc_lv<4> > a_address0;
    sc_out< sc_logic > a_ce0;
    sc_out< sc_logic > a_we0;
    sc_out< sc_lv<64> > a_d0;
    sc_in< sc_lv<64> > a_q0;


    // Module declarations
    quicksort(sc_module_name name);
    SC_HAS_PROCESS(quicksort);

    ~quicksort();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    quicksort_stack_0* stack_0_U;
    quicksort_stack_0* stack_1_U;
    partition* grp_partition_fu_127;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<64> > stack_size_load_reg_204;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > stack_0_addr_reg_210;
    sc_signal< sc_lv<1> > tmp_fu_147_p3;
    sc_signal< sc_lv<64> > stack_0_q0;
    sc_signal< sc_lv<64> > base_reg_223;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > stack_1_q0;
    sc_signal< sc_lv<64> > stack_1_load_reg_228;
    sc_signal< sc_lv<1> > tmp_1_fu_155_p2;
    sc_signal< sc_lv<1> > tmp_1_reg_233;
    sc_signal< sc_lv<64> > stack_size_1_fu_171_p2;
    sc_signal< sc_lv<64> > stack_size_1_reg_237;
    sc_signal< sc_lv<4> > stack_0_address0;
    sc_signal< sc_logic > stack_0_ce0;
    sc_signal< sc_logic > stack_0_we0;
    sc_signal< sc_lv<64> > stack_0_d0;
    sc_signal< sc_lv<4> > stack_1_address0;
    sc_signal< sc_logic > stack_1_ce0;
    sc_signal< sc_logic > stack_1_we0;
    sc_signal< sc_lv<64> > stack_1_d0;
    sc_signal< sc_logic > grp_partition_fu_127_ap_start;
    sc_signal< sc_logic > grp_partition_fu_127_ap_done;
    sc_signal< sc_logic > grp_partition_fu_127_ap_idle;
    sc_signal< sc_logic > grp_partition_fu_127_ap_ready;
    sc_signal< sc_lv<4> > grp_partition_fu_127_a_address0;
    sc_signal< sc_logic > grp_partition_fu_127_a_ce0;
    sc_signal< sc_logic > grp_partition_fu_127_a_we0;
    sc_signal< sc_lv<64> > grp_partition_fu_127_a_d0;
    sc_signal< sc_lv<64> > grp_partition_fu_127_ap_return;
    sc_signal< sc_logic > ap_reg_grp_partition_fu_127_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<64> > stack_size_fu_46;
    sc_signal< sc_lv<64> > stack_size_2_fu_161_p2;
    sc_signal< bool > ap_block_state4_on_subcall_done;
    sc_signal< sc_lv<64> > tmp_3_fu_182_p2;
    sc_signal< sc_lv<64> > tmp_5_fu_189_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<64> ap_const_lv64_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<64> ap_const_lv64_FFFFFFFFFFFFFFFF;
    static const sc_lv<64> ap_const_lv64_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_a_address0();
    void thread_a_ce0();
    void thread_a_d0();
    void thread_a_we0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_block_state4_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_partition_fu_127_ap_start();
    void thread_stack_0_address0();
    void thread_stack_0_ce0();
    void thread_stack_0_d0();
    void thread_stack_0_we0();
    void thread_stack_1_address0();
    void thread_stack_1_ce0();
    void thread_stack_1_d0();
    void thread_stack_1_we0();
    void thread_stack_size_1_fu_171_p2();
    void thread_stack_size_2_fu_161_p2();
    void thread_tmp_1_fu_155_p2();
    void thread_tmp_3_fu_182_p2();
    void thread_tmp_5_fu_189_p2();
    void thread_tmp_fu_147_p3();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif