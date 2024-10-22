// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "quicksort.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic quicksort::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic quicksort::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> quicksort::ap_ST_fsm_state1 = "1";
const sc_lv<4> quicksort::ap_ST_fsm_state2 = "10";
const sc_lv<4> quicksort::ap_ST_fsm_state3 = "100";
const sc_lv<4> quicksort::ap_ST_fsm_state4 = "1000";
const sc_lv<32> quicksort::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> quicksort::ap_const_lv32_1 = "1";
const sc_lv<1> quicksort::ap_const_lv1_0 = "0";
const sc_lv<32> quicksort::ap_const_lv32_2 = "10";
const sc_lv<1> quicksort::ap_const_lv1_1 = "1";
const sc_lv<32> quicksort::ap_const_lv32_3 = "11";
const sc_lv<64> quicksort::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const bool quicksort::ap_const_boolean_0 = false;
const sc_lv<32> quicksort::ap_const_lv32_3F = "111111";
const sc_lv<64> quicksort::ap_const_lv64_FFFFFFFFFFFFFFFF = "1111111111111111111111111111111111111111111111111111111111111111";
const sc_lv<64> quicksort::ap_const_lv64_1 = "1";
const bool quicksort::ap_const_boolean_1 = true;

quicksort::quicksort(sc_module_name name) : sc_module(name), mVcdFile(0) {
    stack_0_U = new quicksort_stack_0("stack_0_U");
    stack_0_U->clk(ap_clk);
    stack_0_U->reset(ap_rst);
    stack_0_U->address0(stack_0_address0);
    stack_0_U->ce0(stack_0_ce0);
    stack_0_U->we0(stack_0_we0);
    stack_0_U->d0(stack_0_d0);
    stack_0_U->q0(stack_0_q0);
    stack_1_U = new quicksort_stack_0("stack_1_U");
    stack_1_U->clk(ap_clk);
    stack_1_U->reset(ap_rst);
    stack_1_U->address0(stack_1_address0);
    stack_1_U->ce0(stack_1_ce0);
    stack_1_U->we0(stack_1_we0);
    stack_1_U->d0(stack_1_d0);
    stack_1_U->q0(stack_1_q0);
    grp_partition_fu_127 = new partition("grp_partition_fu_127");
    grp_partition_fu_127->ap_clk(ap_clk);
    grp_partition_fu_127->ap_rst(ap_rst);
    grp_partition_fu_127->ap_start(grp_partition_fu_127_ap_start);
    grp_partition_fu_127->ap_done(grp_partition_fu_127_ap_done);
    grp_partition_fu_127->ap_idle(grp_partition_fu_127_ap_idle);
    grp_partition_fu_127->ap_ready(grp_partition_fu_127_ap_ready);
    grp_partition_fu_127->init(base_reg_223);
    grp_partition_fu_127->end_r(stack_1_load_reg_228);
    grp_partition_fu_127->a_address0(grp_partition_fu_127_a_address0);
    grp_partition_fu_127->a_ce0(grp_partition_fu_127_a_ce0);
    grp_partition_fu_127->a_we0(grp_partition_fu_127_a_we0);
    grp_partition_fu_127->a_d0(grp_partition_fu_127_a_d0);
    grp_partition_fu_127->a_q0(a_q0);
    grp_partition_fu_127->ap_return(grp_partition_fu_127_ap_return);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_a_address0);
    sensitive << ( tmp_1_reg_233 );
    sensitive << ( grp_partition_fu_127_a_address0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_a_ce0);
    sensitive << ( tmp_1_reg_233 );
    sensitive << ( grp_partition_fu_127_a_ce0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_a_d0);
    sensitive << ( tmp_1_reg_233 );
    sensitive << ( grp_partition_fu_127_a_d0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_a_we0);
    sensitive << ( tmp_1_reg_233 );
    sensitive << ( grp_partition_fu_127_a_we0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state4_on_subcall_done);
    sensitive << ( tmp_1_reg_233 );
    sensitive << ( grp_partition_fu_127_ap_done );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_147_p3 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_147_p3 );

    SC_METHOD(thread_grp_partition_fu_127_ap_start);
    sensitive << ( ap_reg_grp_partition_fu_127_ap_start );

    SC_METHOD(thread_stack_0_address0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( stack_0_addr_reg_210 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( stack_size_1_fu_171_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( stack_size_fu_46 );

    SC_METHOD(thread_stack_0_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_block_state4_on_subcall_done );

    SC_METHOD(thread_stack_0_d0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( i );
    sensitive << ( stack_0_q0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_3_fu_182_p2 );

    SC_METHOD(thread_stack_0_we0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_1_fu_155_p2 );
    sensitive << ( tmp_1_reg_233 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_block_state4_on_subcall_done );

    SC_METHOD(thread_stack_1_address0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( stack_size_1_reg_237 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( stack_size_fu_46 );

    SC_METHOD(thread_stack_1_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_block_state4_on_subcall_done );

    SC_METHOD(thread_stack_1_d0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( f );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_5_fu_189_p2 );

    SC_METHOD(thread_stack_1_we0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( tmp_1_reg_233 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_block_state4_on_subcall_done );

    SC_METHOD(thread_stack_size_1_fu_171_p2);
    sensitive << ( stack_size_load_reg_204 );

    SC_METHOD(thread_stack_size_2_fu_161_p2);
    sensitive << ( stack_size_load_reg_204 );

    SC_METHOD(thread_tmp_1_fu_155_p2);
    sensitive << ( stack_0_q0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( stack_1_q0 );

    SC_METHOD(thread_tmp_3_fu_182_p2);
    sensitive << ( grp_partition_fu_127_ap_return );

    SC_METHOD(thread_tmp_5_fu_189_p2);
    sensitive << ( grp_partition_fu_127_ap_return );

    SC_METHOD(thread_tmp_fu_147_p3);
    sensitive << ( stack_size_fu_46 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_147_p3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_block_state4_on_subcall_done );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "0001";
    ap_reg_grp_partition_fu_127_ap_start = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "quicksort_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, i, "(port)i");
    sc_trace(mVcdFile, f, "(port)f");
    sc_trace(mVcdFile, a_address0, "(port)a_address0");
    sc_trace(mVcdFile, a_ce0, "(port)a_ce0");
    sc_trace(mVcdFile, a_we0, "(port)a_we0");
    sc_trace(mVcdFile, a_d0, "(port)a_d0");
    sc_trace(mVcdFile, a_q0, "(port)a_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, stack_size_load_reg_204, "stack_size_load_reg_204");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, stack_0_addr_reg_210, "stack_0_addr_reg_210");
    sc_trace(mVcdFile, tmp_fu_147_p3, "tmp_fu_147_p3");
    sc_trace(mVcdFile, stack_0_q0, "stack_0_q0");
    sc_trace(mVcdFile, base_reg_223, "base_reg_223");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, stack_1_q0, "stack_1_q0");
    sc_trace(mVcdFile, stack_1_load_reg_228, "stack_1_load_reg_228");
    sc_trace(mVcdFile, tmp_1_fu_155_p2, "tmp_1_fu_155_p2");
    sc_trace(mVcdFile, tmp_1_reg_233, "tmp_1_reg_233");
    sc_trace(mVcdFile, stack_size_1_fu_171_p2, "stack_size_1_fu_171_p2");
    sc_trace(mVcdFile, stack_size_1_reg_237, "stack_size_1_reg_237");
    sc_trace(mVcdFile, stack_0_address0, "stack_0_address0");
    sc_trace(mVcdFile, stack_0_ce0, "stack_0_ce0");
    sc_trace(mVcdFile, stack_0_we0, "stack_0_we0");
    sc_trace(mVcdFile, stack_0_d0, "stack_0_d0");
    sc_trace(mVcdFile, stack_1_address0, "stack_1_address0");
    sc_trace(mVcdFile, stack_1_ce0, "stack_1_ce0");
    sc_trace(mVcdFile, stack_1_we0, "stack_1_we0");
    sc_trace(mVcdFile, stack_1_d0, "stack_1_d0");
    sc_trace(mVcdFile, grp_partition_fu_127_ap_start, "grp_partition_fu_127_ap_start");
    sc_trace(mVcdFile, grp_partition_fu_127_ap_done, "grp_partition_fu_127_ap_done");
    sc_trace(mVcdFile, grp_partition_fu_127_ap_idle, "grp_partition_fu_127_ap_idle");
    sc_trace(mVcdFile, grp_partition_fu_127_ap_ready, "grp_partition_fu_127_ap_ready");
    sc_trace(mVcdFile, grp_partition_fu_127_a_address0, "grp_partition_fu_127_a_address0");
    sc_trace(mVcdFile, grp_partition_fu_127_a_ce0, "grp_partition_fu_127_a_ce0");
    sc_trace(mVcdFile, grp_partition_fu_127_a_we0, "grp_partition_fu_127_a_we0");
    sc_trace(mVcdFile, grp_partition_fu_127_a_d0, "grp_partition_fu_127_a_d0");
    sc_trace(mVcdFile, grp_partition_fu_127_ap_return, "grp_partition_fu_127_ap_return");
    sc_trace(mVcdFile, ap_reg_grp_partition_fu_127_ap_start, "ap_reg_grp_partition_fu_127_ap_start");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, stack_size_fu_46, "stack_size_fu_46");
    sc_trace(mVcdFile, stack_size_2_fu_161_p2, "stack_size_2_fu_161_p2");
    sc_trace(mVcdFile, ap_block_state4_on_subcall_done, "ap_block_state4_on_subcall_done");
    sc_trace(mVcdFile, tmp_3_fu_182_p2, "tmp_3_fu_182_p2");
    sc_trace(mVcdFile, tmp_5_fu_189_p2, "tmp_5_fu_189_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("quicksort.hdltvin.dat");
    mHdltvoutHandle.open("quicksort.hdltvout.dat");
}

quicksort::~quicksort() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete stack_0_U;
    delete stack_1_U;
    delete grp_partition_fu_127;
}

void quicksort::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_grp_partition_fu_127_ap_start = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
             esl_seteq<1,1,1>(tmp_1_fu_155_p2.read(), ap_const_lv1_1))) {
            ap_reg_grp_partition_fu_127_ap_start = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_partition_fu_127_ap_ready.read())) {
            ap_reg_grp_partition_fu_127_ap_start = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(tmp_1_fu_155_p2.read(), ap_const_lv1_1))) {
        stack_size_fu_46 = stack_size_1_fu_171_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, tmp_1_fu_155_p2.read()))) {
        stack_size_fu_46 = stack_size_2_fu_161_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        stack_size_fu_46 = ap_const_lv64_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        base_reg_223 = stack_0_q0.read();
        stack_1_load_reg_228 = stack_1_q0.read();
        tmp_1_reg_233 = tmp_1_fu_155_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        stack_0_addr_reg_210 =  (sc_lv<4>) (stack_size_fu_46.read());
        stack_size_load_reg_204 = stack_size_fu_46.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(tmp_1_fu_155_p2.read(), ap_const_lv1_1))) {
        stack_size_1_reg_237 = stack_size_1_fu_171_p2.read();
    }
}

void quicksort::thread_a_address0() {
    a_address0 = grp_partition_fu_127_a_address0.read();
}

void quicksort::thread_a_ce0() {
    a_ce0 = grp_partition_fu_127_a_ce0.read();
}

void quicksort::thread_a_d0() {
    a_d0 = grp_partition_fu_127_a_d0.read();
}

void quicksort::thread_a_we0() {
    a_we0 = grp_partition_fu_127_a_we0.read();
}

void quicksort::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void quicksort::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void quicksort::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void quicksort::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void quicksort::thread_ap_block_state4_on_subcall_done() {
    ap_block_state4_on_subcall_done = (esl_seteq<1,1,1>(tmp_1_reg_233.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_0, grp_partition_fu_127_ap_done.read()));
}

void quicksort::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_147_p3.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void quicksort::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void quicksort::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_147_p3.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void quicksort::thread_grp_partition_fu_127_ap_start() {
    grp_partition_fu_127_ap_start = ap_reg_grp_partition_fu_127_ap_start.read();
}

void quicksort::thread_stack_0_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        stack_0_address0 = stack_0_addr_reg_210.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        stack_0_address0 =  (sc_lv<4>) (stack_size_1_fu_171_p2.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        stack_0_address0 =  (sc_lv<4>) (stack_size_fu_46.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        stack_0_address0 =  (sc_lv<4>) (ap_const_lv64_0);
    } else {
        stack_0_address0 = "XXXX";
    }
}

void quicksort::thread_stack_0_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_block_state4_on_subcall_done.read(), ap_const_boolean_0)))) {
        stack_0_ce0 = ap_const_logic_1;
    } else {
        stack_0_ce0 = ap_const_logic_0;
    }
}

void quicksort::thread_stack_0_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        stack_0_d0 = tmp_3_fu_182_p2.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        stack_0_d0 = stack_0_q0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        stack_0_d0 = i.read();
    } else {
        stack_0_d0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void quicksort::thread_stack_0_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(tmp_1_fu_155_p2.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(tmp_1_reg_233.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_block_state4_on_subcall_done.read(), ap_const_boolean_0)))) {
        stack_0_we0 = ap_const_logic_1;
    } else {
        stack_0_we0 = ap_const_logic_0;
    }
}

void quicksort::thread_stack_1_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        stack_1_address0 =  (sc_lv<4>) (stack_size_1_reg_237.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        stack_1_address0 =  (sc_lv<4>) (stack_size_fu_46.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        stack_1_address0 =  (sc_lv<4>) (ap_const_lv64_0);
    } else {
        stack_1_address0 = "XXXX";
    }
}

void quicksort::thread_stack_1_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_block_state4_on_subcall_done.read(), ap_const_boolean_0)))) {
        stack_1_ce0 = ap_const_logic_1;
    } else {
        stack_1_ce0 = ap_const_logic_0;
    }
}

void quicksort::thread_stack_1_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        stack_1_d0 = tmp_5_fu_189_p2.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        stack_1_d0 = f.read();
    } else {
        stack_1_d0 =  (sc_lv<64>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void quicksort::thread_stack_1_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(tmp_1_reg_233.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_block_state4_on_subcall_done.read(), ap_const_boolean_0)))) {
        stack_1_we0 = ap_const_logic_1;
    } else {
        stack_1_we0 = ap_const_logic_0;
    }
}

void quicksort::thread_stack_size_1_fu_171_p2() {
    stack_size_1_fu_171_p2 = (!stack_size_load_reg_204.read().is_01() || !ap_const_lv64_1.is_01())? sc_lv<64>(): (sc_biguint<64>(stack_size_load_reg_204.read()) + sc_biguint<64>(ap_const_lv64_1));
}

void quicksort::thread_stack_size_2_fu_161_p2() {
    stack_size_2_fu_161_p2 = (!stack_size_load_reg_204.read().is_01() || !ap_const_lv64_FFFFFFFFFFFFFFFF.is_01())? sc_lv<64>(): (sc_biguint<64>(stack_size_load_reg_204.read()) + sc_bigint<64>(ap_const_lv64_FFFFFFFFFFFFFFFF));
}

void quicksort::thread_tmp_1_fu_155_p2() {
    tmp_1_fu_155_p2 = (!stack_0_q0.read().is_01() || !stack_1_q0.read().is_01())? sc_lv<1>(): (sc_bigint<64>(stack_0_q0.read()) < sc_bigint<64>(stack_1_q0.read()));
}

void quicksort::thread_tmp_3_fu_182_p2() {
    tmp_3_fu_182_p2 = (!grp_partition_fu_127_ap_return.read().is_01() || !ap_const_lv64_1.is_01())? sc_lv<64>(): (sc_biguint<64>(grp_partition_fu_127_ap_return.read()) + sc_biguint<64>(ap_const_lv64_1));
}

void quicksort::thread_tmp_5_fu_189_p2() {
    tmp_5_fu_189_p2 = (!grp_partition_fu_127_ap_return.read().is_01() || !ap_const_lv64_FFFFFFFFFFFFFFFF.is_01())? sc_lv<64>(): (sc_biguint<64>(grp_partition_fu_127_ap_return.read()) + sc_bigint<64>(ap_const_lv64_FFFFFFFFFFFFFFFF));
}

void quicksort::thread_tmp_fu_147_p3() {
    tmp_fu_147_p3 = stack_size_fu_46.read().range(63, 63);
}

void quicksort::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_147_p3.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_block_state4_on_subcall_done.read(), ap_const_boolean_0))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

void quicksort::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"i\" :  \"" << i.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"f\" :  \"" << f.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_address0\" :  \"" << a_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_ce0\" :  \"" << a_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_we0\" :  \"" << a_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_d0\" :  \"" << a_d0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"a_q0\" :  \"" << a_q0.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

