// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="banker_algorithm,hls_ip_2017_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.439000,HLS_SYN_LAT=26,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=877,HLS_SYN_LUT=370}" *)

module banker_algorithm (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        available_address0,
        available_ce0,
        available_we0,
        available_d0,
        available_q0,
        allocated_address0,
        allocated_ce0,
        allocated_we0,
        allocated_d0,
        allocated_q0,
        max_address0,
        max_ce0,
        max_we0,
        max_d0,
        max_q0,
        max_address1,
        max_ce1,
        max_we1,
        max_d1,
        max_q1,
        need_address0,
        need_ce0,
        need_q0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] available_address0;
output   available_ce0;
output   available_we0;
output  [63:0] available_d0;
input  [63:0] available_q0;
output  [3:0] allocated_address0;
output   allocated_ce0;
output   allocated_we0;
output  [63:0] allocated_d0;
input  [63:0] allocated_q0;
output  [3:0] max_address0;
output   max_ce0;
output   max_we0;
output  [63:0] max_d0;
input  [63:0] max_q0;
output  [3:0] max_address1;
output   max_ce1;
output   max_we1;
output  [63:0] max_d1;
input  [63:0] max_q1;
output  [3:0] need_address0;
output   need_ce0;
input  [63:0] need_q0;
output  [63:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[1:0] available_address0;
reg available_ce0;
reg available_we0;
reg[63:0] available_d0;
reg allocated_ce0;
reg allocated_we0;
reg need_ce0;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] tmp_7_fu_124_p2;
reg   [4:0] tmp_7_reg_201;
wire    ap_CS_fsm_state2;
wire   [2:0] i_1_fu_138_p2;
reg   [2:0] i_1_reg_209;
reg   [3:0] allocated_addr_reg_214;
wire    ap_CS_fsm_state3;
wire   [1:0] j_1_fu_170_p2;
reg   [1:0] j_1_reg_227;
reg   [1:0] available_addr_reg_232;
wire   [0:0] tmp_1_fu_164_p2;
reg   [63:0] need_load_reg_237;
wire    ap_CS_fsm_state4;
reg   [63:0] available_load_reg_244;
wire   [63:0] tmp_6_fu_192_p2;
reg   [63:0] tmp_6_reg_253;
wire    ap_CS_fsm_state5;
wire   [0:0] tmp_4_fu_187_p2;
reg   [2:0] i_reg_77;
reg   [1:0] j_reg_88;
wire    ap_CS_fsm_state6;
wire   [0:0] tmp_fu_130_p3;
reg   [1:0] p_0_reg_99;
wire  signed [63:0] tmp_8_cast_fu_158_p1;
wire   [63:0] j_cast1_fu_144_p1;
wire   [63:0] tmp_2_fu_176_p2;
wire   [4:0] tmp_5_fu_116_p3;
wire   [4:0] i_cast2_cast_fu_112_p1;
wire   [4:0] j_cast1_cast_fu_149_p1;
wire   [4:0] tmp_8_fu_153_p2;
wire    ap_CS_fsm_state7;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (tmp_1_fu_164_p2 == 1'd1))) begin
        i_reg_77 <= i_1_reg_209;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_77 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'd0 == tmp_fu_130_p3))) begin
        j_reg_88 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        j_reg_88 <= j_1_reg_227;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'd1 == tmp_fu_130_p3))) begin
                p_0_reg_99[1] <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (tmp_4_fu_187_p2 == 1'd1))) begin
                p_0_reg_99[1] <= 1'b1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        allocated_addr_reg_214 <= tmp_8_cast_fu_158_p1;
        j_1_reg_227 <= j_1_fu_170_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (tmp_1_fu_164_p2 == 1'd0))) begin
        available_addr_reg_232 <= j_cast1_fu_144_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        available_load_reg_244 <= available_q0;
        need_load_reg_237 <= need_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_209 <= i_1_fu_138_p2;
        tmp_7_reg_201 <= tmp_7_fu_124_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == tmp_4_fu_187_p2))) begin
        tmp_6_reg_253 <= tmp_6_fu_192_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5))) begin
        allocated_ce0 = 1'b1;
    end else begin
        allocated_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        allocated_we0 = 1'b1;
    end else begin
        allocated_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6))) begin
        available_address0 = available_addr_reg_232;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        available_address0 = j_cast1_fu_144_p1;
    end else begin
        available_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6))) begin
        available_ce0 = 1'b1;
    end else begin
        available_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        available_d0 = tmp_6_reg_253;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        available_d0 = tmp_2_fu_176_p2;
    end else begin
        available_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6))) begin
        available_we0 = 1'b1;
    end else begin
        available_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        need_ce0 = 1'b1;
    end else begin
        need_ce0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (1'd1 == tmp_fu_130_p3))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (tmp_1_fu_164_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (tmp_4_fu_187_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign allocated_address0 = allocated_addr_reg_214;

assign allocated_d0 = (allocated_q0 + need_load_reg_237);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_return = $signed(p_0_reg_99);

assign i_1_fu_138_p2 = (i_reg_77 + 3'd1);

assign i_cast2_cast_fu_112_p1 = i_reg_77;

assign j_1_fu_170_p2 = (j_reg_88 + 2'd1);

assign j_cast1_cast_fu_149_p1 = j_reg_88;

assign j_cast1_fu_144_p1 = j_reg_88;

assign max_address0 = 4'd0;

assign max_address1 = 4'd0;

assign max_ce0 = 1'b0;

assign max_ce1 = 1'b0;

assign max_d0 = 64'd0;

assign max_d1 = 64'd0;

assign max_we0 = 1'b0;

assign max_we1 = 1'b0;

assign need_address0 = tmp_8_cast_fu_158_p1;

assign tmp_1_fu_164_p2 = ((j_reg_88 == 2'd3) ? 1'b1 : 1'b0);

assign tmp_2_fu_176_p2 = (available_load_reg_244 - need_load_reg_237);

assign tmp_4_fu_187_p2 = (($signed(need_load_reg_237) > $signed(tmp_2_fu_176_p2)) ? 1'b1 : 1'b0);

assign tmp_5_fu_116_p3 = {{i_reg_77}, {2'd0}};

assign tmp_6_fu_192_p2 = (allocated_q0 + available_load_reg_244);

assign tmp_7_fu_124_p2 = (tmp_5_fu_116_p3 - i_cast2_cast_fu_112_p1);

assign tmp_8_cast_fu_158_p1 = $signed(tmp_8_fu_153_p2);

assign tmp_8_fu_153_p2 = (tmp_7_reg_201 + j_cast1_cast_fu_149_p1);

assign tmp_fu_130_p3 = i_reg_77[32'd2];

always @ (posedge ap_clk) begin
    p_0_reg_99[0] <= 1'b1;
end

endmodule //banker_algorithm