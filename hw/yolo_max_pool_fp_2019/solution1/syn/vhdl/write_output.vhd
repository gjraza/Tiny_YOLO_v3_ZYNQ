-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity write_output is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    val_output_0_V : IN STD_LOGIC_VECTOR (15 downto 0);
    val_output_1_V : IN STD_LOGIC_VECTOR (15 downto 0);
    curr_input_keep_V : IN STD_LOGIC_VECTOR (3 downto 0);
    curr_input_strb_V : IN STD_LOGIC_VECTOR (3 downto 0);
    curr_input_user_V : IN STD_LOGIC_VECTOR (1 downto 0);
    curr_input_id_V : IN STD_LOGIC_VECTOR (4 downto 0);
    curr_input_dest_V : IN STD_LOGIC_VECTOR (5 downto 0);
    outStream_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    outStream_TVALID : OUT STD_LOGIC;
    outStream_TREADY : IN STD_LOGIC;
    outStream_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
    outStream_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    outStream_TUSER : OUT STD_LOGIC_VECTOR (1 downto 0);
    outStream_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    outStream_TID : OUT STD_LOGIC_VECTOR (4 downto 0);
    outStream_TDEST : OUT STD_LOGIC_VECTOR (5 downto 0);
    last_V : IN STD_LOGIC_VECTOR (0 downto 0);
    outStream_TDATA_blk_n : OUT STD_LOGIC;
    ap_ce : IN STD_LOGIC );
end;


architecture behav of write_output is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);


begin




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


    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, outStream_TREADY, ap_ce)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, outStream_TREADY, ap_ce)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or (not(((ap_start = ap_const_logic_0) or (outStream_TREADY = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_state1, outStream_TREADY, ap_ce)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (outStream_TREADY = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    outStream_TDATA <= (val_output_1_V & val_output_0_V);

    outStream_TDATA_blk_n_assign_proc : process(ap_start, ap_CS_fsm_state1, outStream_TREADY)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            outStream_TDATA_blk_n <= outStream_TREADY;
        else 
            outStream_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    outStream_TDEST <= curr_input_dest_V;
    outStream_TID <= curr_input_id_V;
    outStream_TKEEP <= curr_input_keep_V;
    outStream_TLAST <= last_V;
    outStream_TSTRB <= curr_input_strb_V;
    outStream_TUSER <= curr_input_user_V;

    outStream_TVALID_assign_proc : process(ap_start, ap_CS_fsm_state1, outStream_TREADY, ap_ce)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (outStream_TREADY = ap_const_logic_0))) and (ap_const_logic_1 = ap_ce) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            outStream_TVALID <= ap_const_logic_1;
        else 
            outStream_TVALID <= ap_const_logic_0;
        end if; 
    end process;

end behav;
