// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="bellman_ford,hls_ip_2017_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.735000,HLS_SYN_LAT=4446,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=2,HLS_SYN_FF=2178,HLS_SYN_LUT=2620}" *)

module bellman_ford (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        graph_address0,
        graph_ce0,
        graph_q0,
        hwdist_address0,
        hwdist_ce0,
        hwdist_we0,
        hwdist_d0,
        hwdist_q0,
        hwdist_address1,
        hwdist_ce1,
        hwdist_we1,
        hwdist_d1,
        hwdist_q1
);

parameter    ap_ST_fsm_state1 = 27'd1;
parameter    ap_ST_fsm_state2 = 27'd2;
parameter    ap_ST_fsm_state3 = 27'd4;
parameter    ap_ST_fsm_state4 = 27'd8;
parameter    ap_ST_fsm_state5 = 27'd16;
parameter    ap_ST_fsm_state6 = 27'd32;
parameter    ap_ST_fsm_state7 = 27'd64;
parameter    ap_ST_fsm_state8 = 27'd128;
parameter    ap_ST_fsm_state9 = 27'd256;
parameter    ap_ST_fsm_state10 = 27'd512;
parameter    ap_ST_fsm_state11 = 27'd1024;
parameter    ap_ST_fsm_state12 = 27'd2048;
parameter    ap_ST_fsm_state13 = 27'd4096;
parameter    ap_ST_fsm_state14 = 27'd8192;
parameter    ap_ST_fsm_state15 = 27'd16384;
parameter    ap_ST_fsm_state16 = 27'd32768;
parameter    ap_ST_fsm_state17 = 27'd65536;
parameter    ap_ST_fsm_state18 = 27'd131072;
parameter    ap_ST_fsm_state19 = 27'd262144;
parameter    ap_ST_fsm_state20 = 27'd524288;
parameter    ap_ST_fsm_state21 = 27'd1048576;
parameter    ap_ST_fsm_state22 = 27'd2097152;
parameter    ap_ST_fsm_state23 = 27'd4194304;
parameter    ap_ST_fsm_state24 = 27'd8388608;
parameter    ap_ST_fsm_state25 = 27'd16777216;
parameter    ap_ST_fsm_state26 = 27'd33554432;
parameter    ap_ST_fsm_state27 = 27'd67108864;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] graph_address0;
output   graph_ce0;
input  [31:0] graph_q0;
output  [3:0] hwdist_address0;
output   hwdist_ce0;
output   hwdist_we0;
output  [63:0] hwdist_d0;
input  [63:0] hwdist_q0;
output  [3:0] hwdist_address1;
output   hwdist_ce1;
output   hwdist_we1;
output  [63:0] hwdist_d1;
input  [63:0] hwdist_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[6:0] graph_address0;
reg graph_ce0;
reg[3:0] hwdist_address0;
reg hwdist_ce0;
reg hwdist_we0;
reg[63:0] hwdist_d0;
reg[3:0] hwdist_address1;
reg hwdist_ce1;
reg hwdist_we1;
reg[63:0] hwdist_d1;

(* fsm_encoding = "none" *) reg   [26:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] reg_316;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state13;
wire   [31:0] grp_fu_303_p1;
reg   [31:0] reg_328;
wire    ap_CS_fsm_state23;
wire   [7:0] tmp_10_fu_363_p2;
reg   [7:0] tmp_10_reg_810;
wire    ap_CS_fsm_state2;
wire   [3:0] i_1_fu_375_p2;
reg   [3:0] i_1_reg_818;
wire    ap_CS_fsm_state3;
wire   [3:0] j_1_fu_401_p2;
reg   [3:0] j_1_reg_831;
wire   [0:0] notlhs_fu_425_p2;
reg   [0:0] notlhs_reg_836;
wire    ap_CS_fsm_state5;
wire   [0:0] notrhs_fu_431_p2;
reg   [0:0] notrhs_reg_841;
wire   [0:0] grp_fu_308_p2;
reg   [0:0] tmp_7_reg_846;
wire   [7:0] i_cast3_cast_fu_470_p1;
reg   [7:0] i_cast3_cast_reg_851;
wire    ap_CS_fsm_state11;
wire   [3:0] i_2_fu_480_p2;
reg   [3:0] i_2_reg_859;
reg   [3:0] hwdist_addr_10_reg_864;
wire   [0:0] exitcond_fu_474_p2;
reg   [6:0] graph_addr_reg_870;
wire    ap_CS_fsm_state12;
wire   [62:0] j_2_fu_537_p2;
reg   [62:0] j_2_reg_878;
wire   [0:0] tmp_fu_531_p2;
wire   [0:0] notlhs1_fu_561_p2;
reg   [0:0] notlhs1_reg_888;
wire    ap_CS_fsm_state19;
wire   [0:0] notrhs2_fu_567_p2;
reg   [0:0] notrhs2_reg_893;
reg   [0:0] tmp_21_reg_898;
wire   [0:0] tmp_23_fu_582_p2;
reg   [0:0] tmp_23_reg_903;
wire    ap_CS_fsm_state20;
wire   [31:0] grp_fu_299_p2;
reg   [31:0] x_assign_reg_908;
wire   [0:0] notlhs9_fu_606_p2;
reg   [0:0] notlhs9_reg_914;
wire    ap_CS_fsm_state24;
wire   [0:0] notrhs1_fu_612_p2;
reg   [0:0] notrhs1_reg_919;
reg   [0:0] tmp_16_reg_924;
wire   [22:0] loc_V_1_fu_631_p1;
reg   [22:0] loc_V_1_reg_929;
wire    ap_CS_fsm_state25;
wire   [0:0] or_cond_fu_668_p2;
reg   [0:0] or_cond_reg_934;
reg   [0:0] p_Result_s_reg_938;
wire   [0:0] isNeg_fu_691_p3;
reg   [0:0] isNeg_reg_943;
wire   [8:0] sh_assign_1_fu_709_p3;
reg   [8:0] sh_assign_1_reg_948;
wire   [62:0] p_Val2_2_fu_774_p3;
reg   [62:0] p_Val2_2_reg_954;
wire    ap_CS_fsm_state26;
reg   [3:0] i_i_reg_255;
wire   [0:0] exitcond_i_fu_395_p2;
reg   [3:0] j_i_reg_266;
wire   [0:0] exitcond1_i_fu_369_p2;
wire    ap_CS_fsm_state6;
reg   [3:0] i_reg_277;
wire    ap_CS_fsm_state10;
reg   [62:0] j_reg_288;
wire    ap_CS_fsm_state27;
wire   [63:0] tmp_27_cast_fu_390_p1;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire   [63:0] i_cast3_fu_465_p1;
wire   [63:0] tmp_30_cast_fu_526_p1;
wire   [63:0] j_cast_fu_486_p1;
reg   [63:0] total_edges_fu_118;
wire   [63:0] total_edges_2_fu_452_p3;
wire    ap_CS_fsm_state17;
wire   [63:0] p_Val2_4_fu_790_p3;
reg   [63:0] grp_fu_303_p0;
reg   [31:0] grp_fu_308_p0;
reg   [31:0] grp_fu_308_p1;
wire   [6:0] tmp_5_fu_339_p3;
wire   [4:0] tmp_9_fu_351_p3;
wire   [7:0] p_shl1_cast_fu_359_p1;
wire   [7:0] p_shl_cast_fu_347_p1;
wire   [7:0] j_i_cast4_cast_fu_381_p1;
wire   [7:0] tmp_12_fu_385_p2;
wire   [31:0] graph_load_1_to_int_fu_407_p1;
wire   [7:0] tmp_1_fu_411_p4;
wire   [22:0] tmp_19_fu_421_p1;
wire   [0:0] tmp_6_fu_437_p2;
wire   [0:0] tmp_8_fu_441_p2;
wire   [63:0] total_edges_1_fu_446_p2;
wire   [4:0] tmp_24_fu_491_p1;
wire   [6:0] tmp_25_fu_503_p1;
wire   [7:0] p_shl3_cast_fu_507_p3;
wire   [7:0] p_shl2_cast_fu_495_p3;
wire   [7:0] tmp_26_fu_515_p2;
wire   [7:0] tmp_27_fu_521_p2;
wire   [31:0] graph_load_to_int_fu_543_p1;
wire   [7:0] tmp_18_fu_547_p4;
wire   [22:0] tmp_30_fu_557_p1;
wire   [0:0] tmp_20_fu_573_p2;
wire   [0:0] tmp_22_fu_577_p2;
wire   [31:0] tmp_2_to_int_fu_588_p1;
wire   [7:0] tmp_11_fu_592_p4;
wire   [22:0] tmp_29_fu_602_p1;
wire   [31:0] p_Val2_s_fu_618_p1;
wire   [7:0] loc_V_fu_621_p4;
wire   [0:0] notrhs8_fu_641_p2;
wire   [0:0] notlhs7_fu_635_p2;
wire   [0:0] tmp_13_fu_647_p2;
wire   [0:0] tmp_14_fu_653_p2;
wire   [0:0] tmp_15_fu_657_p2;
wire   [0:0] tmp_17_fu_663_p2;
wire   [8:0] tmp_i_i_i_i_cast1_fu_681_p1;
wire   [8:0] sh_assign_fu_685_p2;
wire   [7:0] tmp_5_i_i_i_fu_699_p2;
wire  signed [8:0] tmp_5_i_i_i_cast_fu_705_p1;
wire   [24:0] tmp_3_i_i_i_fu_717_p4;
wire  signed [31:0] sh_assign_1_cast_fu_730_p1;
wire  signed [24:0] sh_assign_1_cast_cas_fu_733_p1;
wire   [110:0] tmp_3_i_i_i_cast2_fu_726_p1;
wire   [110:0] tmp_7_i_i_i_fu_736_p1;
wire   [24:0] tmp_8_i_i_i_fu_740_p2;
wire   [0:0] tmp_35_fu_752_p3;
wire   [110:0] tmp_i_i_i_fu_746_p2;
wire   [62:0] tmp_28_fu_760_p1;
wire   [62:0] tmp_31_fu_764_p4;
wire   [63:0] tmp_1_i_i_i_fu_781_p1;
wire   [63:0] tmp_10_i_i_i_fu_784_p2;
reg   [4:0] grp_fu_308_opcode;
reg   [26:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 27'd1;
end

bellman_ford_faddbkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
bellman_ford_faddbkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_328),
    .din1(reg_316),
    .ce(1'b1),
    .dout(grp_fu_299_p2)
);

bellman_ford_sitocud #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 64 ),
    .dout_WIDTH( 32 ))
bellman_ford_sitocud_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_303_p0),
    .ce(1'b1),
    .dout(grp_fu_303_p1)
);

bellman_ford_fcmpdEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
bellman_ford_fcmpdEe_U3(
    .din0(grp_fu_308_p0),
    .din1(grp_fu_308_p1),
    .opcode(grp_fu_308_opcode),
    .dout(grp_fu_308_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd1 == exitcond_i_fu_395_p2))) begin
        i_i_reg_255 <= i_1_reg_818;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_i_reg_255 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (1'd0 == tmp_fu_531_p2))) begin
        i_reg_277 <= i_2_reg_859;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        i_reg_277 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        j_i_reg_266 <= j_1_reg_831;
    end else if (((1'b1 == ap_CS_fsm_state2) & (1'd0 == exitcond1_i_fu_369_p2))) begin
        j_i_reg_266 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        j_reg_288 <= j_2_reg_878;
    end else if (((1'b1 == ap_CS_fsm_state11) & (exitcond_fu_474_p2 == 1'd0))) begin
        j_reg_288 <= 63'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        total_edges_fu_118 <= total_edges_2_fu_452_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        total_edges_fu_118 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        graph_addr_reg_870 <= tmp_30_cast_fu_526_p1;
        j_2_reg_878 <= j_2_fu_537_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state11) & (exitcond_fu_474_p2 == 1'd0))) begin
        hwdist_addr_10_reg_864 <= i_cast3_fu_465_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_818 <= i_1_fu_375_p2;
        tmp_10_reg_810[7 : 1] <= tmp_10_fu_363_p2[7 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        i_2_reg_859 <= i_2_fu_480_p2;
        i_cast3_cast_reg_851[3 : 0] <= i_cast3_cast_fu_470_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) & (1'd1 == or_cond_fu_668_p2))) begin
        isNeg_reg_943 <= sh_assign_fu_685_p2[32'd8];
        p_Result_s_reg_938 <= p_Val2_s_fu_618_p1[32'd31];
        sh_assign_1_reg_948 <= sh_assign_1_fu_709_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_1_reg_831 <= j_1_fu_401_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        loc_V_1_reg_929 <= loc_V_1_fu_631_p1;
        or_cond_reg_934 <= or_cond_fu_668_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        notlhs1_reg_888 <= notlhs1_fu_561_p2;
        notrhs2_reg_893 <= notrhs2_fu_567_p2;
        tmp_21_reg_898 <= grp_fu_308_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        notlhs9_reg_914 <= notlhs9_fu_606_p2;
        notrhs1_reg_919 <= notrhs1_fu_612_p2;
        tmp_16_reg_924 <= grp_fu_308_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        notlhs_reg_836 <= notlhs_fu_425_p2;
        notrhs_reg_841 <= notrhs_fu_431_p2;
        tmp_7_reg_846 <= grp_fu_308_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        p_Val2_2_reg_954 <= p_Val2_2_fu_774_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state18))) begin
        reg_316 <= graph_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state23))) begin
        reg_328 <= grp_fu_303_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        tmp_23_reg_903 <= tmp_23_fu_582_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        x_assign_reg_908 <= grp_fu_299_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (exitcond_fu_474_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (exitcond_fu_474_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        graph_address0 = graph_addr_reg_870;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        graph_address0 = tmp_27_cast_fu_390_p1;
    end else begin
        graph_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state17))) begin
        graph_ce0 = 1'b1;
    end else begin
        graph_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_303_p0 = hwdist_q1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_303_p0 = hwdist_q0;
    end else begin
        grp_fu_303_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_308_opcode = 5'd5;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_308_opcode = 5'd1;
    end else begin
        grp_fu_308_opcode = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_308_p0 = x_assign_reg_908;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_308_p0 = reg_316;
    end else begin
        grp_fu_308_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_308_p1 = reg_328;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_308_p1 = 32'd3212836864;
    end else begin
        grp_fu_308_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        hwdist_address0 = hwdist_addr_10_reg_864;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        hwdist_address0 = j_cast_fu_486_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        hwdist_address0 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        hwdist_address0 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        hwdist_address0 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        hwdist_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        hwdist_address0 = 64'd1;
    end else begin
        hwdist_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        hwdist_address1 = hwdist_addr_10_reg_864;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        hwdist_address1 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        hwdist_address1 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        hwdist_address1 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        hwdist_address1 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        hwdist_address1 = 64'd2;
    end else begin
        hwdist_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        hwdist_ce0 = 1'b1;
    end else begin
        hwdist_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state17))) begin
        hwdist_ce1 = 1'b1;
    end else begin
        hwdist_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        hwdist_d0 = p_Val2_4_fu_790_p3;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        hwdist_d0 = 64'd127;
    end else begin
        hwdist_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        hwdist_d1 = 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        hwdist_d1 = 64'd127;
    end else begin
        hwdist_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | ((1'b1 == ap_CS_fsm_state2) & (1'd1 == exitcond1_i_fu_369_p2)) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state27) & (1'd1 == or_cond_reg_934)))) begin
        hwdist_we0 = 1'b1;
    end else begin
        hwdist_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | ((1'b1 == ap_CS_fsm_state2) & (1'd1 == exitcond1_i_fu_369_p2)) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        hwdist_we1 = 1'b1;
    end else begin
        hwdist_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (1'd0 == exitcond1_i_fu_369_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (1'd1 == exitcond_i_fu_395_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (exitcond_fu_474_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (1'd0 == tmp_fu_531_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            if (((1'b1 == ap_CS_fsm_state25) & (1'd0 == or_cond_fu_668_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign exitcond1_i_fu_369_p2 = ((i_i_reg_255 == 4'd10) ? 1'b1 : 1'b0);

assign exitcond_fu_474_p2 = ((i_reg_277 == 4'd10) ? 1'b1 : 1'b0);

assign exitcond_i_fu_395_p2 = ((j_i_reg_266 == 4'd10) ? 1'b1 : 1'b0);

assign graph_load_1_to_int_fu_407_p1 = reg_316;

assign graph_load_to_int_fu_543_p1 = reg_316;

assign i_1_fu_375_p2 = (i_i_reg_255 + 4'd1);

assign i_2_fu_480_p2 = (i_reg_277 + 4'd1);

assign i_cast3_cast_fu_470_p1 = i_reg_277;

assign i_cast3_fu_465_p1 = i_reg_277;

assign isNeg_fu_691_p3 = sh_assign_fu_685_p2[32'd8];

assign j_1_fu_401_p2 = (j_i_reg_266 + 4'd1);

assign j_2_fu_537_p2 = (63'd1 + j_reg_288);

assign j_cast_fu_486_p1 = j_reg_288;

assign j_i_cast4_cast_fu_381_p1 = j_i_reg_266;

assign loc_V_1_fu_631_p1 = p_Val2_s_fu_618_p1[22:0];

assign loc_V_fu_621_p4 = {{p_Val2_s_fu_618_p1[30:23]}};

assign notlhs1_fu_561_p2 = ((tmp_18_fu_547_p4 != 8'd255) ? 1'b1 : 1'b0);

assign notlhs7_fu_635_p2 = ((loc_V_fu_621_p4 != 8'd255) ? 1'b1 : 1'b0);

assign notlhs9_fu_606_p2 = ((tmp_11_fu_592_p4 != 8'd255) ? 1'b1 : 1'b0);

assign notlhs_fu_425_p2 = ((tmp_1_fu_411_p4 != 8'd255) ? 1'b1 : 1'b0);

assign notrhs1_fu_612_p2 = ((tmp_29_fu_602_p1 == 23'd0) ? 1'b1 : 1'b0);

assign notrhs2_fu_567_p2 = ((tmp_30_fu_557_p1 == 23'd0) ? 1'b1 : 1'b0);

assign notrhs8_fu_641_p2 = ((loc_V_1_fu_631_p1 == 23'd0) ? 1'b1 : 1'b0);

assign notrhs_fu_431_p2 = ((tmp_19_fu_421_p1 == 23'd0) ? 1'b1 : 1'b0);

assign or_cond_fu_668_p2 = (tmp_17_fu_663_p2 & tmp_23_reg_903);

assign p_Val2_2_fu_774_p3 = ((isNeg_reg_943[0:0] === 1'b1) ? tmp_28_fu_760_p1 : tmp_31_fu_764_p4);

assign p_Val2_4_fu_790_p3 = ((p_Result_s_reg_938[0:0] === 1'b1) ? tmp_10_i_i_i_fu_784_p2 : tmp_1_i_i_i_fu_781_p1);

assign p_Val2_s_fu_618_p1 = x_assign_reg_908;

assign p_shl1_cast_fu_359_p1 = tmp_9_fu_351_p3;

assign p_shl2_cast_fu_495_p3 = {{tmp_24_fu_491_p1}, {3'd0}};

assign p_shl3_cast_fu_507_p3 = {{tmp_25_fu_503_p1}, {1'd0}};

assign p_shl_cast_fu_347_p1 = tmp_5_fu_339_p3;

assign sh_assign_1_cast_cas_fu_733_p1 = $signed(sh_assign_1_reg_948);

assign sh_assign_1_cast_fu_730_p1 = $signed(sh_assign_1_reg_948);

assign sh_assign_1_fu_709_p3 = ((isNeg_fu_691_p3[0:0] === 1'b1) ? tmp_5_i_i_i_cast_fu_705_p1 : sh_assign_fu_685_p2);

assign sh_assign_fu_685_p2 = ($signed(tmp_i_i_i_i_cast1_fu_681_p1) + $signed(9'd385));

assign tmp_10_fu_363_p2 = (p_shl1_cast_fu_359_p1 + p_shl_cast_fu_347_p1);

assign tmp_10_i_i_i_fu_784_p2 = (64'd0 - tmp_1_i_i_i_fu_781_p1);

assign tmp_11_fu_592_p4 = {{tmp_2_to_int_fu_588_p1[30:23]}};

assign tmp_12_fu_385_p2 = (tmp_10_reg_810 + j_i_cast4_cast_fu_381_p1);

assign tmp_13_fu_647_p2 = (notrhs8_fu_641_p2 | notlhs7_fu_635_p2);

assign tmp_14_fu_653_p2 = (notrhs1_reg_919 | notlhs9_reg_914);

assign tmp_15_fu_657_p2 = (tmp_13_fu_647_p2 & tmp_14_fu_653_p2);

assign tmp_17_fu_663_p2 = (tmp_15_fu_657_p2 & tmp_16_reg_924);

assign tmp_18_fu_547_p4 = {{graph_load_to_int_fu_543_p1[30:23]}};

assign tmp_19_fu_421_p1 = graph_load_1_to_int_fu_407_p1[22:0];

assign tmp_1_fu_411_p4 = {{graph_load_1_to_int_fu_407_p1[30:23]}};

assign tmp_1_i_i_i_fu_781_p1 = p_Val2_2_reg_954;

assign tmp_20_fu_573_p2 = (notrhs2_reg_893 | notlhs1_reg_888);

assign tmp_22_fu_577_p2 = (tmp_20_fu_573_p2 & tmp_21_reg_898);

assign tmp_23_fu_582_p2 = (tmp_22_fu_577_p2 ^ 1'd1);

assign tmp_24_fu_491_p1 = j_reg_288[4:0];

assign tmp_25_fu_503_p1 = j_reg_288[6:0];

assign tmp_26_fu_515_p2 = (p_shl3_cast_fu_507_p3 + p_shl2_cast_fu_495_p3);

assign tmp_27_cast_fu_390_p1 = tmp_12_fu_385_p2;

assign tmp_27_fu_521_p2 = (tmp_26_fu_515_p2 + i_cast3_cast_reg_851);

assign tmp_28_fu_760_p1 = tmp_35_fu_752_p3;

assign tmp_29_fu_602_p1 = tmp_2_to_int_fu_588_p1[22:0];

assign tmp_2_to_int_fu_588_p1 = reg_328;

assign tmp_30_cast_fu_526_p1 = tmp_27_fu_521_p2;

assign tmp_30_fu_557_p1 = graph_load_to_int_fu_543_p1[22:0];

assign tmp_31_fu_764_p4 = {{tmp_i_i_i_fu_746_p2[86:24]}};

assign tmp_35_fu_752_p3 = tmp_8_i_i_i_fu_740_p2[32'd24];

assign tmp_3_i_i_i_cast2_fu_726_p1 = tmp_3_i_i_i_fu_717_p4;

assign tmp_3_i_i_i_fu_717_p4 = {{{{1'd1}, {loc_V_1_reg_929}}}, {1'd0}};

assign tmp_5_fu_339_p3 = {{i_i_reg_255}, {3'd0}};

assign tmp_5_i_i_i_cast_fu_705_p1 = $signed(tmp_5_i_i_i_fu_699_p2);

assign tmp_5_i_i_i_fu_699_p2 = (8'd127 - loc_V_fu_621_p4);

assign tmp_6_fu_437_p2 = (notrhs_reg_841 | notlhs_reg_836);

assign tmp_7_i_i_i_fu_736_p1 = $unsigned(sh_assign_1_cast_fu_730_p1);

assign tmp_8_fu_441_p2 = (tmp_6_fu_437_p2 & tmp_7_reg_846);

assign tmp_8_i_i_i_fu_740_p2 = tmp_3_i_i_i_fu_717_p4 >> sh_assign_1_cast_cas_fu_733_p1;

assign tmp_9_fu_351_p3 = {{i_i_reg_255}, {1'd0}};

assign tmp_fu_531_p2 = (($signed(j_cast_fu_486_p1) < $signed(total_edges_fu_118)) ? 1'b1 : 1'b0);

assign tmp_i_i_i_fu_746_p2 = tmp_3_i_i_i_cast2_fu_726_p1 << tmp_7_i_i_i_fu_736_p1;

assign tmp_i_i_i_i_cast1_fu_681_p1 = loc_V_fu_621_p4;

assign total_edges_1_fu_446_p2 = (64'd1 + total_edges_fu_118);

assign total_edges_2_fu_452_p3 = ((tmp_8_fu_441_p2[0:0] === 1'b1) ? total_edges_fu_118 : total_edges_1_fu_446_p2);

always @ (posedge ap_clk) begin
    tmp_10_reg_810[0] <= 1'b0;
    i_cast3_cast_reg_851[7:4] <= 4'b0000;
end

endmodule //bellman_ford
