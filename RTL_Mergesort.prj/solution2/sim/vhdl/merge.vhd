-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity merge is
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
end;


architecture behav of merge is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_7 : STD_LOGIC_VECTOR (3 downto 0) := "0111";
    constant ap_const_lv4_6 : STD_LOGIC_VECTOR (3 downto 0) := "0110";
    constant ap_const_lv4_5 : STD_LOGIC_VECTOR (3 downto 0) := "0101";
    constant ap_const_lv4_4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_1_fu_424_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_reg_776 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_1_fu_429_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_6_fu_554_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_12_fu_528_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_16_fu_565_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_5_fu_601_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_6_fu_575_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_9_fu_612_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_7_fu_627_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_7_reg_820 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_19_fu_622_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_21_fu_648_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal x_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal x_ce0 : STD_LOGIC;
    signal x_we0 : STD_LOGIC;
    signal x_d0 : STD_LOGIC_VECTOR (63 downto 0);
    signal x_q0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_reg_323 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_3_fu_439_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_10_reg_335 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_2_reg_344 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_4_reg_354 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_3_reg_363 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_17_reg_373 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_4_reg_383 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_14_fu_498_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_7_fu_486_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_13_fu_514_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_15_fu_560_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_8_fu_607_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_20_fu_633_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_0_fu_114 : STD_LOGIC_VECTOR (7 downto 0);
    signal i1_assign_fu_492_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i2_1_fu_118 : STD_LOGIC_VECTOR (7 downto 0);
    signal i2_fu_398_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i2_2_fu_508_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_34_fu_644_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_24_fu_448_p12 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_25_fu_469_p12 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_28_fu_537_p12 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_26_fu_584_p12 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_394_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_s_fu_420_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_435_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_24_fu_448_p11 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_25_fu_469_p11 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_11_fu_524_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_28_fu_537_p11 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_5_fu_571_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_26_fu_584_p11 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_18_fu_618_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);

    component mergesort_mux_104bkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        din9_WIDTH : INTEGER;
        din10_WIDTH : INTEGER;
        din11_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        din2 : IN STD_LOGIC_VECTOR (63 downto 0);
        din3 : IN STD_LOGIC_VECTOR (63 downto 0);
        din4 : IN STD_LOGIC_VECTOR (63 downto 0);
        din5 : IN STD_LOGIC_VECTOR (63 downto 0);
        din6 : IN STD_LOGIC_VECTOR (63 downto 0);
        din7 : IN STD_LOGIC_VECTOR (63 downto 0);
        din8 : IN STD_LOGIC_VECTOR (63 downto 0);
        din9 : IN STD_LOGIC_VECTOR (63 downto 0);
        din10 : IN STD_LOGIC_VECTOR (63 downto 0);
        din11 : IN STD_LOGIC_VECTOR (3 downto 0);
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component merge_x IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (63 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;



begin
    x_U : component merge_x
    generic map (
        DataWidth => 64,
        AddressRange => 10,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => x_address0,
        ce0 => x_ce0,
        we0 => x_we0,
        d0 => x_d0,
        q0 => x_q0);

    mergesort_mux_104bkb_U1 : component mergesort_mux_104bkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din1_WIDTH => 64,
        din2_WIDTH => 64,
        din3_WIDTH => 64,
        din4_WIDTH => 64,
        din5_WIDTH => 64,
        din6_WIDTH => 64,
        din7_WIDTH => 64,
        din8_WIDTH => 64,
        din9_WIDTH => 64,
        din10_WIDTH => 64,
        din11_WIDTH => 4,
        dout_WIDTH => 64)
    port map (
        din1 => arr_0_read,
        din2 => arr_1_read,
        din3 => arr_2_read,
        din4 => arr_3_read,
        din5 => arr_4_read,
        din6 => arr_5_read,
        din7 => arr_6_read,
        din8 => arr_7_read,
        din9 => arr_8_read,
        din10 => arr_9_read,
        din11 => tmp_24_fu_448_p11,
        dout => tmp_24_fu_448_p12);

    mergesort_mux_104bkb_U2 : component mergesort_mux_104bkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din1_WIDTH => 64,
        din2_WIDTH => 64,
        din3_WIDTH => 64,
        din4_WIDTH => 64,
        din5_WIDTH => 64,
        din6_WIDTH => 64,
        din7_WIDTH => 64,
        din8_WIDTH => 64,
        din9_WIDTH => 64,
        din10_WIDTH => 64,
        din11_WIDTH => 4,
        dout_WIDTH => 64)
    port map (
        din1 => arr_0_read,
        din2 => arr_1_read,
        din3 => arr_2_read,
        din4 => arr_3_read,
        din5 => arr_4_read,
        din6 => arr_5_read,
        din7 => arr_6_read,
        din8 => arr_7_read,
        din9 => arr_8_read,
        din10 => arr_9_read,
        din11 => tmp_25_fu_469_p11,
        dout => tmp_25_fu_469_p12);

    mergesort_mux_104bkb_U3 : component mergesort_mux_104bkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din1_WIDTH => 64,
        din2_WIDTH => 64,
        din3_WIDTH => 64,
        din4_WIDTH => 64,
        din5_WIDTH => 64,
        din6_WIDTH => 64,
        din7_WIDTH => 64,
        din8_WIDTH => 64,
        din9_WIDTH => 64,
        din10_WIDTH => 64,
        din11_WIDTH => 4,
        dout_WIDTH => 64)
    port map (
        din1 => arr_0_read,
        din2 => arr_1_read,
        din3 => arr_2_read,
        din4 => arr_3_read,
        din5 => arr_4_read,
        din6 => arr_5_read,
        din7 => arr_6_read,
        din8 => arr_7_read,
        din9 => arr_8_read,
        din10 => arr_9_read,
        din11 => tmp_28_fu_537_p11,
        dout => tmp_28_fu_537_p12);

    mergesort_mux_104bkb_U4 : component mergesort_mux_104bkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din1_WIDTH => 64,
        din2_WIDTH => 64,
        din3_WIDTH => 64,
        din4_WIDTH => 64,
        din5_WIDTH => 64,
        din6_WIDTH => 64,
        din7_WIDTH => 64,
        din8_WIDTH => 64,
        din9_WIDTH => 64,
        din10_WIDTH => 64,
        din11_WIDTH => 4,
        dout_WIDTH => 64)
    port map (
        din1 => arr_0_read,
        din2 => arr_1_read,
        din3 => arr_2_read,
        din4 => arr_3_read,
        din5 => arr_4_read,
        din6 => arr_5_read,
        din7 => arr_6_read,
        din8 => arr_7_read,
        din9 => arr_8_read,
        din10 => arr_9_read,
        din11 => tmp_26_fu_584_p11,
        dout => tmp_26_fu_584_p12);





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


    i2_1_fu_118_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_1_fu_424_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_3_fu_439_p2) and (ap_const_lv1_1 = tmp_7_fu_486_p2))) then 
                i2_1_fu_118 <= i2_2_fu_508_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i2_1_fu_118 <= i2_fu_398_p2;
            end if; 
        end if;
    end process;

    i_2_reg_344_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_1_fu_424_p2 = ap_const_lv1_0) and (ap_const_lv1_1 = tmp_3_fu_439_p2))) then 
                i_2_reg_344 <= i_reg_323;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_1_reg_776 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_12_fu_528_p2))) then 
                i_2_reg_344 <= i_6_fu_554_p2;
            end if; 
        end if;
    end process;

    i_3_reg_363_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_1_fu_424_p2 = ap_const_lv1_1))) then 
                i_3_reg_363 <= i_reg_323;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_1_reg_776 = ap_const_lv1_1) and (ap_const_lv1_0 = tmp_6_fu_575_p2))) then 
                i_3_reg_363 <= i_5_fu_601_p2;
            end if; 
        end if;
    end process;

    i_4_reg_383_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                i_4_reg_383 <= i_7_reg_820;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (((tmp_1_reg_776 = ap_const_lv1_0) and (tmp_12_fu_528_p2 = ap_const_lv1_1)) or ((tmp_1_reg_776 = ap_const_lv1_1) and (ap_const_lv1_1 = tmp_6_fu_575_p2))))) then 
                i_4_reg_383 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    i_reg_323_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_1_fu_424_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_3_fu_439_p2))) then 
                i_reg_323 <= i_1_fu_429_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_323 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    p_0_fu_114_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_1_fu_424_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_3_fu_439_p2) and (ap_const_lv1_0 = tmp_7_fu_486_p2))) then 
                p_0_fu_114 <= i1_assign_fu_492_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                p_0_fu_114 <= i1;
            end if; 
        end if;
    end process;

    tmp_10_reg_335_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_1_fu_424_p2 = ap_const_lv1_0) and (ap_const_lv1_1 = tmp_3_fu_439_p2))) then 
                tmp_10_reg_335 <= p_0_fu_114;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_1_reg_776 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_12_fu_528_p2))) then 
                tmp_10_reg_335 <= tmp_16_fu_565_p2;
            end if; 
        end if;
    end process;

    tmp_17_reg_373_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                tmp_17_reg_373 <= tmp_21_fu_648_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (((tmp_1_reg_776 = ap_const_lv1_0) and (tmp_12_fu_528_p2 = ap_const_lv1_1)) or ((tmp_1_reg_776 = ap_const_lv1_1) and (ap_const_lv1_1 = tmp_6_fu_575_p2))))) then 
                tmp_17_reg_373 <= i1;
            end if; 
        end if;
    end process;

    tmp_4_reg_354_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_1_fu_424_p2 = ap_const_lv1_1))) then 
                tmp_4_reg_354 <= i2_1_fu_118;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_1_reg_776 = ap_const_lv1_1) and (ap_const_lv1_0 = tmp_6_fu_575_p2))) then 
                tmp_4_reg_354 <= tmp_9_fu_612_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                i_7_reg_820 <= i_7_fu_627_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                tmp_1_reg_776 <= tmp_1_fu_424_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_1_fu_424_p2, tmp_1_reg_776, ap_CS_fsm_state3, tmp_12_fu_528_p2, tmp_6_fu_575_p2, ap_CS_fsm_state4, tmp_19_fu_622_p2, tmp_3_fu_439_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and ((ap_const_lv1_1 = tmp_3_fu_439_p2) or (tmp_1_fu_424_p2 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (((tmp_1_reg_776 = ap_const_lv1_0) and (tmp_12_fu_528_p2 = ap_const_lv1_1)) or ((tmp_1_reg_776 = ap_const_lv1_1) and (ap_const_lv1_1 = tmp_6_fu_575_p2))))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_1 = tmp_19_fu_622_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state4, tmp_19_fu_622_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_1 = tmp_19_fu_622_p2)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state4, tmp_19_fu_622_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_1 = tmp_19_fu_622_p2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    arr_0 <= x_q0;

    arr_0_ap_vld_assign_proc : process(ap_CS_fsm_state5, tmp_34_fu_644_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_34_fu_644_p1 = ap_const_lv4_0))) then 
            arr_0_ap_vld <= ap_const_logic_1;
        else 
            arr_0_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    arr_1 <= x_q0;

    arr_1_ap_vld_assign_proc : process(ap_CS_fsm_state5, tmp_34_fu_644_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_34_fu_644_p1 = ap_const_lv4_1))) then 
            arr_1_ap_vld <= ap_const_logic_1;
        else 
            arr_1_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    arr_2 <= x_q0;

    arr_2_ap_vld_assign_proc : process(ap_CS_fsm_state5, tmp_34_fu_644_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_34_fu_644_p1 = ap_const_lv4_2))) then 
            arr_2_ap_vld <= ap_const_logic_1;
        else 
            arr_2_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    arr_3 <= x_q0;

    arr_3_ap_vld_assign_proc : process(ap_CS_fsm_state5, tmp_34_fu_644_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_34_fu_644_p1 = ap_const_lv4_3))) then 
            arr_3_ap_vld <= ap_const_logic_1;
        else 
            arr_3_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    arr_4 <= x_q0;

    arr_4_ap_vld_assign_proc : process(ap_CS_fsm_state5, tmp_34_fu_644_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_34_fu_644_p1 = ap_const_lv4_4))) then 
            arr_4_ap_vld <= ap_const_logic_1;
        else 
            arr_4_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    arr_5 <= x_q0;

    arr_5_ap_vld_assign_proc : process(ap_CS_fsm_state5, tmp_34_fu_644_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_34_fu_644_p1 = ap_const_lv4_5))) then 
            arr_5_ap_vld <= ap_const_logic_1;
        else 
            arr_5_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    arr_6 <= x_q0;

    arr_6_ap_vld_assign_proc : process(ap_CS_fsm_state5, tmp_34_fu_644_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_34_fu_644_p1 = ap_const_lv4_6))) then 
            arr_6_ap_vld <= ap_const_logic_1;
        else 
            arr_6_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    arr_7 <= x_q0;

    arr_7_ap_vld_assign_proc : process(ap_CS_fsm_state5, tmp_34_fu_644_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_34_fu_644_p1 = ap_const_lv4_7))) then 
            arr_7_ap_vld <= ap_const_logic_1;
        else 
            arr_7_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    arr_8 <= x_q0;

    arr_8_ap_vld_assign_proc : process(ap_CS_fsm_state5, tmp_34_fu_644_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_34_fu_644_p1 = ap_const_lv4_8))) then 
            arr_8_ap_vld <= ap_const_logic_1;
        else 
            arr_8_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    arr_9 <= x_q0;

    arr_9_ap_vld_assign_proc : process(ap_CS_fsm_state5, tmp_34_fu_644_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and not((tmp_34_fu_644_p1 = ap_const_lv4_0)) and not((tmp_34_fu_644_p1 = ap_const_lv4_1)) and not((tmp_34_fu_644_p1 = ap_const_lv4_2)) and not((tmp_34_fu_644_p1 = ap_const_lv4_3)) and not((tmp_34_fu_644_p1 = ap_const_lv4_4)) and not((tmp_34_fu_644_p1 = ap_const_lv4_5)) and not((tmp_34_fu_644_p1 = ap_const_lv4_6)) and not((tmp_34_fu_644_p1 = ap_const_lv4_7)) and not((tmp_34_fu_644_p1 = ap_const_lv4_8)))) then 
            arr_9_ap_vld <= ap_const_logic_1;
        else 
            arr_9_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    i1_assign_fu_492_p2 <= std_logic_vector(unsigned(p_0_fu_114) + unsigned(ap_const_lv8_1));
    i2_2_fu_508_p2 <= std_logic_vector(unsigned(i2_1_fu_118) + unsigned(ap_const_lv8_1));
    i2_fu_398_p2 <= std_logic_vector(unsigned(ap_const_lv8_1) + unsigned(tmp_fu_394_p1));
    i_1_fu_429_p2 <= std_logic_vector(unsigned(i_reg_323) + unsigned(ap_const_lv8_1));
    i_5_fu_601_p2 <= std_logic_vector(unsigned(ap_const_lv8_1) + unsigned(i_3_reg_363));
    i_6_fu_554_p2 <= std_logic_vector(unsigned(ap_const_lv8_1) + unsigned(i_2_reg_344));
    i_7_fu_627_p2 <= std_logic_vector(unsigned(i_4_reg_383) + unsigned(ap_const_lv8_1));
        tmp_11_fu_524_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_10_reg_335),64));

    tmp_12_fu_528_p2 <= "1" when (signed(tmp_11_fu_524_p1) > signed(f1)) else "0";
        tmp_13_fu_514_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(i_reg_323),64));

        tmp_14_fu_498_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(i_reg_323),64));

        tmp_15_fu_560_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(i_2_reg_344),64));

    tmp_16_fu_565_p2 <= std_logic_vector(unsigned(ap_const_lv8_1) + unsigned(tmp_10_reg_335));
        tmp_18_fu_618_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_17_reg_373),64));

    tmp_19_fu_622_p2 <= "1" when (signed(tmp_18_fu_618_p1) > signed(f2)) else "0";
    tmp_1_fu_424_p2 <= "1" when (signed(tmp_s_fu_420_p1) > signed(f1)) else "0";
        tmp_20_fu_633_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(i_4_reg_383),64));

    tmp_21_fu_648_p2 <= std_logic_vector(unsigned(tmp_17_reg_373) + unsigned(ap_const_lv8_1));
    tmp_24_fu_448_p11 <= p_0_fu_114(4 - 1 downto 0);
    tmp_25_fu_469_p11 <= i2_1_fu_118(4 - 1 downto 0);
    tmp_26_fu_584_p11 <= tmp_4_reg_354(4 - 1 downto 0);
    tmp_28_fu_537_p11 <= tmp_10_reg_335(4 - 1 downto 0);
        tmp_2_fu_435_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(i2_1_fu_118),64));

    tmp_34_fu_644_p1 <= tmp_17_reg_373(4 - 1 downto 0);
    tmp_3_fu_439_p2 <= "1" when (signed(tmp_2_fu_435_p1) > signed(f2)) else "0";
        tmp_5_fu_571_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_4_reg_354),64));

    tmp_6_fu_575_p2 <= "1" when (signed(tmp_5_fu_571_p1) > signed(f2)) else "0";
    tmp_7_fu_486_p2 <= "1" when (signed(tmp_24_fu_448_p12) > signed(tmp_25_fu_469_p12)) else "0";
        tmp_8_fu_607_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(i_3_reg_363),64));

    tmp_9_fu_612_p2 <= std_logic_vector(unsigned(ap_const_lv8_1) + unsigned(tmp_4_reg_354));
    tmp_fu_394_p1 <= f1(8 - 1 downto 0);
        tmp_s_fu_420_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_0_fu_114),64));


    x_address0_assign_proc : process(ap_CS_fsm_state2, tmp_1_fu_424_p2, tmp_1_reg_776, ap_CS_fsm_state3, tmp_12_fu_528_p2, tmp_6_fu_575_p2, ap_CS_fsm_state4, tmp_3_fu_439_p2, tmp_14_fu_498_p1, tmp_7_fu_486_p2, tmp_13_fu_514_p1, tmp_15_fu_560_p1, tmp_8_fu_607_p1, tmp_20_fu_633_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            x_address0 <= tmp_20_fu_633_p1(4 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_1_reg_776 = ap_const_lv1_1) and (ap_const_lv1_0 = tmp_6_fu_575_p2))) then 
            x_address0 <= tmp_8_fu_607_p1(4 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_1_reg_776 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_12_fu_528_p2))) then 
            x_address0 <= tmp_15_fu_560_p1(4 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_1_fu_424_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_3_fu_439_p2) and (ap_const_lv1_1 = tmp_7_fu_486_p2))) then 
            x_address0 <= tmp_13_fu_514_p1(4 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_1_fu_424_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_3_fu_439_p2) and (ap_const_lv1_0 = tmp_7_fu_486_p2))) then 
            x_address0 <= tmp_14_fu_498_p1(4 - 1 downto 0);
        else 
            x_address0 <= "XXXX";
        end if; 
    end process;


    x_ce0_assign_proc : process(ap_CS_fsm_state2, tmp_1_fu_424_p2, tmp_1_reg_776, ap_CS_fsm_state3, tmp_12_fu_528_p2, tmp_6_fu_575_p2, ap_CS_fsm_state4, tmp_3_fu_439_p2, tmp_7_fu_486_p2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_1_reg_776 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_12_fu_528_p2)) or ((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_1_reg_776 = ap_const_lv1_1) and (ap_const_lv1_0 = tmp_6_fu_575_p2)) or (ap_const_logic_1 = ap_CS_fsm_state4) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_1_fu_424_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_3_fu_439_p2) and (ap_const_lv1_0 = tmp_7_fu_486_p2)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_1_fu_424_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_3_fu_439_p2) and (ap_const_lv1_1 = tmp_7_fu_486_p2)))) then 
            x_ce0 <= ap_const_logic_1;
        else 
            x_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    x_d0_assign_proc : process(ap_CS_fsm_state2, tmp_1_fu_424_p2, tmp_1_reg_776, ap_CS_fsm_state3, tmp_12_fu_528_p2, tmp_6_fu_575_p2, tmp_3_fu_439_p2, tmp_7_fu_486_p2, tmp_24_fu_448_p12, tmp_25_fu_469_p12, tmp_28_fu_537_p12, tmp_26_fu_584_p12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_1_reg_776 = ap_const_lv1_1) and (ap_const_lv1_0 = tmp_6_fu_575_p2))) then 
            x_d0 <= tmp_26_fu_584_p12;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_1_reg_776 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_12_fu_528_p2))) then 
            x_d0 <= tmp_28_fu_537_p12;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_1_fu_424_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_3_fu_439_p2) and (ap_const_lv1_1 = tmp_7_fu_486_p2))) then 
            x_d0 <= tmp_25_fu_469_p12;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_1_fu_424_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_3_fu_439_p2) and (ap_const_lv1_0 = tmp_7_fu_486_p2))) then 
            x_d0 <= tmp_24_fu_448_p12;
        else 
            x_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    x_we0_assign_proc : process(ap_CS_fsm_state2, tmp_1_fu_424_p2, tmp_1_reg_776, ap_CS_fsm_state3, tmp_12_fu_528_p2, tmp_6_fu_575_p2, tmp_3_fu_439_p2, tmp_7_fu_486_p2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_1_reg_776 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_12_fu_528_p2)) or ((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_1_reg_776 = ap_const_lv1_1) and (ap_const_lv1_0 = tmp_6_fu_575_p2)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_1_fu_424_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_3_fu_439_p2) and (ap_const_lv1_0 = tmp_7_fu_486_p2)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_1_fu_424_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_3_fu_439_p2) and (ap_const_lv1_1 = tmp_7_fu_486_p2)))) then 
            x_we0 <= ap_const_logic_1;
        else 
            x_we0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;