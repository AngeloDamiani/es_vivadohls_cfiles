-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mergesort is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    arr_0_i : IN STD_LOGIC_VECTOR (63 downto 0);
    arr_0_o : OUT STD_LOGIC_VECTOR (63 downto 0);
    arr_0_o_ap_vld : OUT STD_LOGIC;
    arr_1_i : IN STD_LOGIC_VECTOR (63 downto 0);
    arr_1_o : OUT STD_LOGIC_VECTOR (63 downto 0);
    arr_1_o_ap_vld : OUT STD_LOGIC;
    arr_2_i : IN STD_LOGIC_VECTOR (63 downto 0);
    arr_2_o : OUT STD_LOGIC_VECTOR (63 downto 0);
    arr_2_o_ap_vld : OUT STD_LOGIC;
    arr_3_i : IN STD_LOGIC_VECTOR (63 downto 0);
    arr_3_o : OUT STD_LOGIC_VECTOR (63 downto 0);
    arr_3_o_ap_vld : OUT STD_LOGIC;
    arr_4_i : IN STD_LOGIC_VECTOR (63 downto 0);
    arr_4_o : OUT STD_LOGIC_VECTOR (63 downto 0);
    arr_4_o_ap_vld : OUT STD_LOGIC;
    arr_5_i : IN STD_LOGIC_VECTOR (63 downto 0);
    arr_5_o : OUT STD_LOGIC_VECTOR (63 downto 0);
    arr_5_o_ap_vld : OUT STD_LOGIC;
    arr_6_i : IN STD_LOGIC_VECTOR (63 downto 0);
    arr_6_o : OUT STD_LOGIC_VECTOR (63 downto 0);
    arr_6_o_ap_vld : OUT STD_LOGIC;
    arr_7_i : IN STD_LOGIC_VECTOR (63 downto 0);
    arr_7_o : OUT STD_LOGIC_VECTOR (63 downto 0);
    arr_7_o_ap_vld : OUT STD_LOGIC;
    arr_8_i : IN STD_LOGIC_VECTOR (63 downto 0);
    arr_8_o : OUT STD_LOGIC_VECTOR (63 downto 0);
    arr_8_o_ap_vld : OUT STD_LOGIC;
    arr_9_i : IN STD_LOGIC_VECTOR (63 downto 0);
    arr_9_o : OUT STD_LOGIC_VECTOR (63 downto 0);
    arr_9_o_ap_vld : OUT STD_LOGIC );
end;


architecture behav of mergesort is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "mergesort,hls_ip_2017_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.590000,HLS_SYN_LAT=309,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=2482,HLS_SYN_LUT=1400}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv64_A : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001010";
    constant ap_const_lv64_9 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001001";
    constant ap_const_lv64_FFFFFFFFFFFFFFFF : STD_LOGIC_VECTOR (63 downto 0) := "1111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal m_1_fu_198_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal m_1_reg_251 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_fu_192_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_fu_210_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_5_reg_261 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_3_fu_204_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_fu_220_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_6_reg_266 : STD_LOGIC_VECTOR (63 downto 0);
    signal c_assign_fu_226_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal c_assign_reg_271 : STD_LOGIC_VECTOR (63 downto 0);
    signal x_1_fu_231_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal x_1_reg_277 : STD_LOGIC_VECTOR (63 downto 0);
    signal c_assign_1_fu_241_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal c_assign_1_reg_282 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal grp_merge_fu_153_ap_start : STD_LOGIC;
    signal grp_merge_fu_153_ap_done : STD_LOGIC;
    signal grp_merge_fu_153_ap_idle : STD_LOGIC;
    signal grp_merge_fu_153_ap_ready : STD_LOGIC;
    signal grp_merge_fu_153_arr_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_merge_fu_153_arr_0_ap_vld : STD_LOGIC;
    signal grp_merge_fu_153_arr_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_merge_fu_153_arr_1_ap_vld : STD_LOGIC;
    signal grp_merge_fu_153_arr_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_merge_fu_153_arr_2_ap_vld : STD_LOGIC;
    signal grp_merge_fu_153_arr_3 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_merge_fu_153_arr_3_ap_vld : STD_LOGIC;
    signal grp_merge_fu_153_arr_4 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_merge_fu_153_arr_4_ap_vld : STD_LOGIC;
    signal grp_merge_fu_153_arr_5 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_merge_fu_153_arr_5_ap_vld : STD_LOGIC;
    signal grp_merge_fu_153_arr_6 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_merge_fu_153_arr_6_ap_vld : STD_LOGIC;
    signal grp_merge_fu_153_arr_7 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_merge_fu_153_arr_7_ap_vld : STD_LOGIC;
    signal grp_merge_fu_153_arr_8 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_merge_fu_153_arr_8_ap_vld : STD_LOGIC;
    signal grp_merge_fu_153_arr_9 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_merge_fu_153_arr_9_ap_vld : STD_LOGIC;
    signal m_reg_130 : STD_LOGIC_VECTOR (63 downto 0);
    signal x_reg_142 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_reg_grp_merge_fu_153_ap_start : STD_LOGIC := '0';
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp1_fu_214_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_i_fu_236_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);

    component merge IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        i1 : IN STD_LOGIC_VECTOR (7 downto 0);
        f1 : IN STD_LOGIC_VECTOR (63 downto 0);
        f2 : IN STD_LOGIC_VECTOR (63 downto 0);
        arr_0 : OUT STD_LOGIC_VECTOR (63 downto 0);
        arr_0_ap_vld : OUT STD_LOGIC;
        arr_0_read : IN STD_LOGIC_VECTOR (63 downto 0);
        arr_1 : OUT STD_LOGIC_VECTOR (63 downto 0);
        arr_1_ap_vld : OUT STD_LOGIC;
        arr_1_read : IN STD_LOGIC_VECTOR (63 downto 0);
        arr_2 : OUT STD_LOGIC_VECTOR (63 downto 0);
        arr_2_ap_vld : OUT STD_LOGIC;
        arr_2_read : IN STD_LOGIC_VECTOR (63 downto 0);
        arr_3 : OUT STD_LOGIC_VECTOR (63 downto 0);
        arr_3_ap_vld : OUT STD_LOGIC;
        arr_3_read : IN STD_LOGIC_VECTOR (63 downto 0);
        arr_4 : OUT STD_LOGIC_VECTOR (63 downto 0);
        arr_4_ap_vld : OUT STD_LOGIC;
        arr_4_read : IN STD_LOGIC_VECTOR (63 downto 0);
        arr_5 : OUT STD_LOGIC_VECTOR (63 downto 0);
        arr_5_ap_vld : OUT STD_LOGIC;
        arr_5_read : IN STD_LOGIC_VECTOR (63 downto 0);
        arr_6 : OUT STD_LOGIC_VECTOR (63 downto 0);
        arr_6_ap_vld : OUT STD_LOGIC;
        arr_6_read : IN STD_LOGIC_VECTOR (63 downto 0);
        arr_7 : OUT STD_LOGIC_VECTOR (63 downto 0);
        arr_7_ap_vld : OUT STD_LOGIC;
        arr_7_read : IN STD_LOGIC_VECTOR (63 downto 0);
        arr_8 : OUT STD_LOGIC_VECTOR (63 downto 0);
        arr_8_ap_vld : OUT STD_LOGIC;
        arr_8_read : IN STD_LOGIC_VECTOR (63 downto 0);
        arr_9 : OUT STD_LOGIC_VECTOR (63 downto 0);
        arr_9_ap_vld : OUT STD_LOGIC;
        arr_9_read : IN STD_LOGIC_VECTOR (63 downto 0) );
    end component;



begin
    grp_merge_fu_153 : component merge
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_merge_fu_153_ap_start,
        ap_done => grp_merge_fu_153_ap_done,
        ap_idle => grp_merge_fu_153_ap_idle,
        ap_ready => grp_merge_fu_153_ap_ready,
        i1 => tmp_5_reg_261,
        f1 => tmp_6_reg_266,
        f2 => c_assign_1_reg_282,
        arr_0 => grp_merge_fu_153_arr_0,
        arr_0_ap_vld => grp_merge_fu_153_arr_0_ap_vld,
        arr_0_read => arr_0_i,
        arr_1 => grp_merge_fu_153_arr_1,
        arr_1_ap_vld => grp_merge_fu_153_arr_1_ap_vld,
        arr_1_read => arr_1_i,
        arr_2 => grp_merge_fu_153_arr_2,
        arr_2_ap_vld => grp_merge_fu_153_arr_2_ap_vld,
        arr_2_read => arr_2_i,
        arr_3 => grp_merge_fu_153_arr_3,
        arr_3_ap_vld => grp_merge_fu_153_arr_3_ap_vld,
        arr_3_read => arr_3_i,
        arr_4 => grp_merge_fu_153_arr_4,
        arr_4_ap_vld => grp_merge_fu_153_arr_4_ap_vld,
        arr_4_read => arr_4_i,
        arr_5 => grp_merge_fu_153_arr_5,
        arr_5_ap_vld => grp_merge_fu_153_arr_5_ap_vld,
        arr_5_read => arr_5_i,
        arr_6 => grp_merge_fu_153_arr_6,
        arr_6_ap_vld => grp_merge_fu_153_arr_6_ap_vld,
        arr_6_read => arr_6_i,
        arr_7 => grp_merge_fu_153_arr_7,
        arr_7_ap_vld => grp_merge_fu_153_arr_7_ap_vld,
        arr_7_read => arr_7_i,
        arr_8 => grp_merge_fu_153_arr_8,
        arr_8_ap_vld => grp_merge_fu_153_arr_8_ap_vld,
        arr_8_read => arr_8_i,
        arr_9 => grp_merge_fu_153_arr_9,
        arr_9_ap_vld => grp_merge_fu_153_arr_9_ap_vld,
        arr_9_read => arr_9_i);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_reg_grp_merge_fu_153_ap_start_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_grp_merge_fu_153_ap_start <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    ap_reg_grp_merge_fu_153_ap_start <= ap_const_logic_1;
                elsif ((ap_const_logic_1 = grp_merge_fu_153_ap_ready)) then 
                    ap_reg_grp_merge_fu_153_ap_start <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    m_reg_130_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_3_fu_204_p2 = ap_const_lv1_0))) then 
                m_reg_130 <= m_1_reg_251;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                m_reg_130 <= ap_const_lv64_1;
            end if; 
        end if;
    end process;

    x_reg_142_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_merge_fu_153_ap_done = ap_const_logic_1))) then 
                x_reg_142 <= x_1_reg_277;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_192_p2 = ap_const_lv1_1))) then 
                x_reg_142 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                c_assign_1_reg_282 <= c_assign_1_fu_241_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_1 = tmp_3_fu_204_p2))) then
                c_assign_reg_271 <= c_assign_fu_226_p2;
                tmp_5_reg_261 <= tmp_5_fu_210_p1;
                tmp_6_reg_266 <= tmp_6_fu_220_p2;
                x_1_reg_277 <= x_1_fu_231_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_192_p2 = ap_const_lv1_1))) then
                    m_1_reg_251(63 downto 1) <= m_1_fu_198_p2(63 downto 1);
            end if;
        end if;
    end process;
    m_1_reg_251(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_fu_192_p2, ap_CS_fsm_state3, tmp_3_fu_204_p2, grp_merge_fu_153_ap_done, ap_CS_fsm_state6)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_192_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_3_fu_204_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_merge_fu_153_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_done_assign_proc : process(ap_CS_fsm_state2, tmp_fu_192_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_192_p2 = ap_const_lv1_0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, tmp_fu_192_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_192_p2 = ap_const_lv1_0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    arr_0_o_assign_proc : process(arr_0_i, grp_merge_fu_153_arr_0, grp_merge_fu_153_arr_0_ap_vld, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_logic_1 = grp_merge_fu_153_arr_0_ap_vld))) then 
            arr_0_o <= grp_merge_fu_153_arr_0;
        else 
            arr_0_o <= arr_0_i;
        end if; 
    end process;


    arr_0_o_ap_vld_assign_proc : process(grp_merge_fu_153_arr_0_ap_vld, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            arr_0_o_ap_vld <= grp_merge_fu_153_arr_0_ap_vld;
        else 
            arr_0_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    arr_1_o_assign_proc : process(arr_1_i, grp_merge_fu_153_arr_1, grp_merge_fu_153_arr_1_ap_vld, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_logic_1 = grp_merge_fu_153_arr_1_ap_vld))) then 
            arr_1_o <= grp_merge_fu_153_arr_1;
        else 
            arr_1_o <= arr_1_i;
        end if; 
    end process;


    arr_1_o_ap_vld_assign_proc : process(grp_merge_fu_153_arr_1_ap_vld, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            arr_1_o_ap_vld <= grp_merge_fu_153_arr_1_ap_vld;
        else 
            arr_1_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    arr_2_o_assign_proc : process(arr_2_i, grp_merge_fu_153_arr_2, grp_merge_fu_153_arr_2_ap_vld, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_logic_1 = grp_merge_fu_153_arr_2_ap_vld))) then 
            arr_2_o <= grp_merge_fu_153_arr_2;
        else 
            arr_2_o <= arr_2_i;
        end if; 
    end process;


    arr_2_o_ap_vld_assign_proc : process(grp_merge_fu_153_arr_2_ap_vld, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            arr_2_o_ap_vld <= grp_merge_fu_153_arr_2_ap_vld;
        else 
            arr_2_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    arr_3_o_assign_proc : process(arr_3_i, grp_merge_fu_153_arr_3, grp_merge_fu_153_arr_3_ap_vld, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_logic_1 = grp_merge_fu_153_arr_3_ap_vld))) then 
            arr_3_o <= grp_merge_fu_153_arr_3;
        else 
            arr_3_o <= arr_3_i;
        end if; 
    end process;


    arr_3_o_ap_vld_assign_proc : process(grp_merge_fu_153_arr_3_ap_vld, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            arr_3_o_ap_vld <= grp_merge_fu_153_arr_3_ap_vld;
        else 
            arr_3_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    arr_4_o_assign_proc : process(arr_4_i, grp_merge_fu_153_arr_4, grp_merge_fu_153_arr_4_ap_vld, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_logic_1 = grp_merge_fu_153_arr_4_ap_vld))) then 
            arr_4_o <= grp_merge_fu_153_arr_4;
        else 
            arr_4_o <= arr_4_i;
        end if; 
    end process;


    arr_4_o_ap_vld_assign_proc : process(grp_merge_fu_153_arr_4_ap_vld, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            arr_4_o_ap_vld <= grp_merge_fu_153_arr_4_ap_vld;
        else 
            arr_4_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    arr_5_o_assign_proc : process(arr_5_i, grp_merge_fu_153_arr_5, grp_merge_fu_153_arr_5_ap_vld, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_logic_1 = grp_merge_fu_153_arr_5_ap_vld))) then 
            arr_5_o <= grp_merge_fu_153_arr_5;
        else 
            arr_5_o <= arr_5_i;
        end if; 
    end process;


    arr_5_o_ap_vld_assign_proc : process(grp_merge_fu_153_arr_5_ap_vld, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            arr_5_o_ap_vld <= grp_merge_fu_153_arr_5_ap_vld;
        else 
            arr_5_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    arr_6_o_assign_proc : process(arr_6_i, grp_merge_fu_153_arr_6, grp_merge_fu_153_arr_6_ap_vld, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_logic_1 = grp_merge_fu_153_arr_6_ap_vld))) then 
            arr_6_o <= grp_merge_fu_153_arr_6;
        else 
            arr_6_o <= arr_6_i;
        end if; 
    end process;


    arr_6_o_ap_vld_assign_proc : process(grp_merge_fu_153_arr_6_ap_vld, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            arr_6_o_ap_vld <= grp_merge_fu_153_arr_6_ap_vld;
        else 
            arr_6_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    arr_7_o_assign_proc : process(arr_7_i, grp_merge_fu_153_arr_7, grp_merge_fu_153_arr_7_ap_vld, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_logic_1 = grp_merge_fu_153_arr_7_ap_vld))) then 
            arr_7_o <= grp_merge_fu_153_arr_7;
        else 
            arr_7_o <= arr_7_i;
        end if; 
    end process;


    arr_7_o_ap_vld_assign_proc : process(grp_merge_fu_153_arr_7_ap_vld, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            arr_7_o_ap_vld <= grp_merge_fu_153_arr_7_ap_vld;
        else 
            arr_7_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    arr_8_o_assign_proc : process(arr_8_i, grp_merge_fu_153_arr_8, grp_merge_fu_153_arr_8_ap_vld, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_logic_1 = grp_merge_fu_153_arr_8_ap_vld))) then 
            arr_8_o <= grp_merge_fu_153_arr_8;
        else 
            arr_8_o <= arr_8_i;
        end if; 
    end process;


    arr_8_o_ap_vld_assign_proc : process(grp_merge_fu_153_arr_8_ap_vld, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            arr_8_o_ap_vld <= grp_merge_fu_153_arr_8_ap_vld;
        else 
            arr_8_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    arr_9_o_assign_proc : process(arr_9_i, grp_merge_fu_153_arr_9, grp_merge_fu_153_arr_9_ap_vld, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_logic_1 = grp_merge_fu_153_arr_9_ap_vld))) then 
            arr_9_o <= grp_merge_fu_153_arr_9;
        else 
            arr_9_o <= arr_9_i;
        end if; 
    end process;


    arr_9_o_ap_vld_assign_proc : process(grp_merge_fu_153_arr_9_ap_vld, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            arr_9_o_ap_vld <= grp_merge_fu_153_arr_9_ap_vld;
        else 
            arr_9_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    c_assign_1_fu_241_p3 <= 
        c_assign_reg_271 when (tmp_i_fu_236_p2(0) = '1') else 
        ap_const_lv64_9;
    c_assign_fu_226_p2 <= std_logic_vector(unsigned(tmp1_fu_214_p2) + unsigned(m_1_reg_251));
    grp_merge_fu_153_ap_start <= ap_reg_grp_merge_fu_153_ap_start;
    m_1_fu_198_p2 <= std_logic_vector(shift_left(unsigned(m_reg_130),to_integer(unsigned('0' & ap_const_lv64_1(31-1 downto 0)))));
    tmp1_fu_214_p2 <= std_logic_vector(signed(ap_const_lv64_FFFFFFFFFFFFFFFF) + signed(x_reg_142));
    tmp_3_fu_204_p2 <= "1" when (signed(x_reg_142) < signed(ap_const_lv64_9)) else "0";
    tmp_5_fu_210_p1 <= x_reg_142(8 - 1 downto 0);
    tmp_6_fu_220_p2 <= std_logic_vector(unsigned(tmp1_fu_214_p2) + unsigned(m_reg_130));
    tmp_fu_192_p2 <= "1" when (signed(m_reg_130) < signed(ap_const_lv64_A)) else "0";
    tmp_i_fu_236_p2 <= "1" when (signed(c_assign_reg_271) < signed(ap_const_lv64_9)) else "0";
    x_1_fu_231_p2 <= std_logic_vector(unsigned(m_1_reg_251) + unsigned(x_reg_142));
end behav;
