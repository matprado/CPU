-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "06/28/2018 16:33:53"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ula IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END ula;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ula IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst17|inst|inst4|inst1~combout\ : std_logic;
SIGNAL \inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst9|inst4|inst1~combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst28|inst4|inst2|inst1~0_combout\ : std_logic;
SIGNAL \inst8|inst2|inst9|inst2|inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst2|inst7|inst2|inst7~0_combout\ : std_logic;
SIGNAL \inst8|inst2|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst2|inst16|inst2|inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst3~0_combout\ : std_logic;
SIGNAL \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst14|inst2|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst16|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst16|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst1|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|$00001|auto_generated|l1_w0_n6_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|$00001|auto_generated|l1_w0_n6_mux_dataout~1_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \inst1|$00001|auto_generated|l3_w0_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \inst17|inst1|inst4|inst5|inst1~combout\ : std_logic;
SIGNAL \inst9|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst17|inst|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst4|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst16|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst16|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|$00001|auto_generated|l1_w0_n6_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|$00001|auto_generated|l3_w0_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst17|inst|inst3|inst1~combout\ : std_logic;
SIGNAL \inst9|inst3|inst1~combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~9_combout\ : std_logic;
SIGNAL \inst28|inst4|inst|inst~combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~10_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~8_combout\ : std_logic;
SIGNAL \inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~6_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ : std_logic;
SIGNAL \inst12|inst63~0_combout\ : std_logic;
SIGNAL \inst12|inst13~0_combout\ : std_logic;
SIGNAL \inst12|inst85~combout\ : std_logic;
SIGNAL \inst12|inst33~0_combout\ : std_logic;
SIGNAL \inst12|inst25~0_combout\ : std_logic;
SIGNAL \inst12|inst82~0_combout\ : std_logic;
SIGNAL \inst12|inst~0_combout\ : std_logic;
SIGNAL \inst7|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst5|$00001|auto_generated|l2_w0_n2_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst28|inst4|inst29|inst4~0_combout\ : std_logic;
SIGNAL \inst6|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst6|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \inst6|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst28|inst4|inst29|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst5|$00001|auto_generated|ALT_INV_l2_w0_n2_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst5|$00001|auto_generated|ALT_INV_l2_w0_n2_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst7|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|$00001|auto_generated|ALT_INV_l2_w0_n2_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|$00001|auto_generated|ALT_INV_l1_w0_n6_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst1|$00001|auto_generated|ALT_INV_l1_w0_n6_mux_dataout~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~0_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~10_combout\ : std_logic;
SIGNAL \inst9|inst3|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst17|inst|inst3|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~9_combout\ : std_logic;
SIGNAL \inst28|inst4|inst|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~8_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~7_combout\ : std_logic;
SIGNAL \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~6_combout\ : std_logic;
SIGNAL \inst4|$00001|auto_generated|ALT_INV_l3_w0_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|$00001|auto_generated|ALT_INV_l2_w0_n2_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst17|inst|inst4|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst17|inst1|inst4|inst5|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst9|inst4|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst4|$00001|auto_generated|ALT_INV_l1_w0_n6_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst16|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst16|inst1|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~1_combout\ : std_logic;
SIGNAL \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \inst9|inst4|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst17|inst|inst4|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \inst8|inst2|inst16|inst2|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst2|inst3|ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst2|inst9|inst2|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst2|inst7|inst2|ALT_INV_inst7~0_combout\ : std_logic;
SIGNAL \inst28|inst4|inst2|ALT_INV_inst1~0_combout\ : std_logic;
SIGNAL \inst8|inst19|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst43|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst18|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst8|inst42|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst16|inst|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst14|inst2|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst16|inst|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~5_combout\ : std_logic;
SIGNAL \inst4|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~11_combout\ : std_logic;
SIGNAL \inst1|$00001|auto_generated|ALT_INV_l3_w0_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst1|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ : std_logic;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\inst6|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ <= NOT \inst6|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\;
\inst28|inst4|inst29|ALT_INV_inst4~0_combout\ <= NOT \inst28|inst4|inst29|inst4~0_combout\;
\inst5|$00001|auto_generated|ALT_INV_l2_w0_n2_mux_dataout~1_combout\ <= NOT \inst5|$00001|auto_generated|l2_w0_n2_mux_dataout~1_combout\;
\inst5|$00001|auto_generated|ALT_INV_l2_w0_n2_mux_dataout~0_combout\ <= NOT \inst5|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\;
\inst7|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ <= NOT \inst7|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\;
\inst1|$00001|auto_generated|ALT_INV_l2_w0_n2_mux_dataout~0_combout\ <= NOT \inst1|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\;
\inst1|$00001|auto_generated|ALT_INV_l1_w0_n6_mux_dataout~1_combout\ <= NOT \inst1|$00001|auto_generated|l1_w0_n6_mux_dataout~1_combout\;
\inst1|$00001|auto_generated|ALT_INV_l1_w0_n6_mux_dataout~0_combout\ <= NOT \inst1|$00001|auto_generated|l1_w0_n6_mux_dataout~0_combout\;
\ALT_INV_rtl~0_combout\ <= NOT \rtl~0_combout\;
\inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~10_combout\ <= NOT \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~10_combout\;
\inst9|inst3|ALT_INV_inst1~combout\ <= NOT \inst9|inst3|inst1~combout\;
\inst17|inst|inst3|ALT_INV_inst1~combout\ <= NOT \inst17|inst|inst3|inst1~combout\;
\inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~9_combout\ <= NOT \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~9_combout\;
\inst28|inst4|inst|ALT_INV_inst~combout\ <= NOT \inst28|inst4|inst|inst~combout\;
\inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~8_combout\ <= NOT \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~8_combout\;
\inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~7_combout\ <= NOT \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~7_combout\;
\inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~2_combout\ <= NOT \inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~2_combout\;
\inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~6_combout\ <= NOT \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~6_combout\;
\inst4|$00001|auto_generated|ALT_INV_l3_w0_n1_mux_dataout~0_combout\ <= NOT \inst4|$00001|auto_generated|l3_w0_n1_mux_dataout~0_combout\;
\inst4|$00001|auto_generated|ALT_INV_l2_w0_n2_mux_dataout~0_combout\ <= NOT \inst4|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\;
\inst17|inst|inst4|ALT_INV_inst4~0_combout\ <= NOT \inst17|inst|inst4|inst4~0_combout\;
\inst17|inst1|inst4|inst5|ALT_INV_inst1~combout\ <= NOT \inst17|inst1|inst4|inst5|inst1~combout\;
\inst9|inst4|ALT_INV_inst4~0_combout\ <= NOT \inst9|inst4|inst4~0_combout\;
\inst4|$00001|auto_generated|ALT_INV_l1_w0_n6_mux_dataout~0_combout\ <= NOT \inst4|$00001|auto_generated|l1_w0_n6_mux_dataout~0_combout\;
\inst16|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\ <= NOT \inst16|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\;
\inst16|inst1|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst16|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\ALT_INV_rtl~1_combout\ <= NOT \rtl~1_combout\;
\inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~1_combout\ <= NOT \inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\;
\inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ <= NOT \inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~1_combout\;
\inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~5_combout\ <= NOT \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\;
\inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~4_combout\ <= NOT \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\;
\inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~4_combout\ <= NOT \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\;
\inst9|inst4|ALT_INV_inst1~combout\ <= NOT \inst9|inst4|inst1~combout\;
\inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\ <= NOT \inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\;
\inst17|inst|inst4|ALT_INV_inst1~combout\ <= NOT \inst17|inst|inst4|inst1~combout\;
\inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~3_combout\ <= NOT \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\;
\inst8|ALT_INV_inst3~0_combout\ <= NOT \inst8|inst3~0_combout\;
\inst8|inst2|inst16|inst2|ALT_INV_inst4~0_combout\ <= NOT \inst8|inst2|inst16|inst2|inst4~0_combout\;
\inst8|inst2|inst3|ALT_INV_inst5~0_combout\ <= NOT \inst8|inst2|inst3|inst5~0_combout\;
\inst8|inst2|inst9|inst2|ALT_INV_inst4~0_combout\ <= NOT \inst8|inst2|inst9|inst2|inst4~0_combout\;
\inst8|inst2|inst7|inst2|ALT_INV_inst7~0_combout\ <= NOT \inst8|inst2|inst7|inst2|inst7~0_combout\;
\inst28|inst4|inst2|ALT_INV_inst1~0_combout\ <= NOT \inst28|inst4|inst2|inst1~0_combout\;
\inst8|inst19|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst43|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst18|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst8|inst42|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~2_combout\ <= NOT \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\;
\inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~1_combout\ <= NOT \inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\;
\inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~1_combout\ <= NOT \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\;
\inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~3_combout\ <= NOT \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\;
\inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~2_combout\ <= NOT \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\;
\inst16|inst|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst16|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\ <= NOT \inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\;
\inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\ <= NOT \inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~1_combout\;
\inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ <= NOT \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\;
\inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~1_combout\ <= NOT \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\;
\inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ <= NOT \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\;
\inst14|inst2|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\ <= NOT \inst14|inst2|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\;
\inst16|inst|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\ <= NOT \inst16|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\;
\inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~5_combout\ <= NOT \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\;
\inst4|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ <= NOT \inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\;
\inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~11_combout\ <= NOT \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\;
\inst1|$00001|auto_generated|ALT_INV_l3_w0_n1_mux_dataout~0_combout\ <= NOT \inst1|$00001|auto_generated|l3_w0_n1_mux_dataout~0_combout\;
\inst1|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ <= NOT \inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\;

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst63~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst13~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst85~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst33~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst25~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst82~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X31_Y1_N42
\inst17|inst|inst4|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|inst|inst4|inst1~combout\ = ( \SW[2]~input_o\ & ( \SW[5]~input_o\ & ( !\SW[6]~input_o\ $ (((!\SW[1]~input_o\) # ((\SW[4]~input_o\ & !\SW[0]~input_o\)))) ) ) ) # ( !\SW[2]~input_o\ & ( \SW[5]~input_o\ & ( !\SW[6]~input_o\ $ (((\SW[1]~input_o\ & 
-- ((!\SW[4]~input_o\) # (\SW[0]~input_o\))))) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[5]~input_o\ & ( !\SW[6]~input_o\ $ (((\SW[4]~input_o\ & (!\SW[0]~input_o\ & !\SW[1]~input_o\)))) ) ) ) # ( !\SW[2]~input_o\ & ( !\SW[5]~input_o\ & ( !\SW[6]~input_o\ $ 
-- (((!\SW[4]~input_o\) # ((\SW[1]~input_o\) # (\SW[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101100001111101101001111000011110000010010110000111110110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \inst17|inst|inst4|inst1~combout\);

-- Location: LABCELL_X32_Y1_N48
\inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ = ( \SW[4]~input_o\ & ( \SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y1_N48
\inst9|inst4|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst4|inst1~combout\ = ( \SW[5]~input_o\ & ( !\SW[6]~input_o\ $ (!\SW[2]~input_o\ $ (((\inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\) # (\SW[1]~input_o\)))) ) ) # ( !\SW[5]~input_o\ & ( !\SW[6]~input_o\ $ (!\SW[2]~input_o\ $ 
-- (((\SW[1]~input_o\ & \inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010110100110100101101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \inst9|inst4|inst1~combout\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LABCELL_X32_Y1_N30
\inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \SW[2]~input_o\ & ( (!\SW[3]~input_o\) # ((!\SW[1]~input_o\ & !\SW[0]~input_o\)) ) ) # ( !\SW[2]~input_o\ & ( (\SW[3]~input_o\ & ((\SW[0]~input_o\) # (\SW[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111111111111110000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y1_N39
\inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = !\SW[1]~input_o\ $ (((!\SW[0]~input_o\) # (!\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101000001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	combout => \inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X32_Y1_N36
\inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \SW[4]~input_o\ & ( !\SW[7]~input_o\ $ (!\SW[5]~input_o\) ) ) # ( !\SW[4]~input_o\ & ( \SW[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y1_N15
\inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \SW[5]~input_o\ & ( !\SW[6]~input_o\ $ (!\SW[7]~input_o\) ) ) # ( !\SW[5]~input_o\ & ( !\SW[6]~input_o\ $ (((!\SW[4]~input_o\) # (!\SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y1_N18
\inst28|inst4|inst2|inst1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst28|inst4|inst2|inst1~0_combout\ = ( \inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\SW[0]~input_o\ $ 
-- (((!\inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\SW[4]~input_o\) # (!\inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) ) ) ) # ( !\inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- \inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\SW[0]~input_o\ $ (((!\SW[4]~input_o\) # (!\inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) ) # ( 
-- \inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( ((\SW[4]~input_o\ & \inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # 
-- (\inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\) ) ) ) # ( !\inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\SW[4]~input_o\ & 
-- \inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100011111111100011110000111100001111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \inst8|inst19|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \inst8|inst18|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst8|inst42|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst8|inst43|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst28|inst4|inst2|inst1~0_combout\);

-- Location: LABCELL_X32_Y1_N0
\inst8|inst2|inst9|inst2|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst2|inst9|inst2|inst4~0_combout\ = ( \SW[7]~input_o\ & ( !\SW[4]~input_o\ & ( (!\SW[5]~input_o\ & (((!\SW[6]~input_o\)) # (\inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # (\SW[5]~input_o\ & 
-- (\inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((\SW[6]~input_o\) # (\inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[4]~input_o\ & ( (!\SW[5]~input_o\ & 
-- (((!\SW[6]~input_o\)) # (\inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # (\SW[5]~input_o\ & (\inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\SW[6]~input_o\) # 
-- (\inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001011110011101000101011011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \inst8|inst18|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \inst8|inst19|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \inst8|inst2|inst9|inst2|inst4~0_combout\);

-- Location: LABCELL_X32_Y1_N57
\inst8|inst2|inst7|inst2|inst7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst2|inst7|inst2|inst7~0_combout\ = ( \inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\SW[5]~input_o\ & (!\SW[4]~input_o\ & \inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) # ( 
-- !\inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\SW[5]~input_o\ & !\SW[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \inst8|inst19|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst8|inst43|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst2|inst7|inst2|inst7~0_combout\);

-- Location: LABCELL_X32_Y1_N6
\inst8|inst2|inst3|inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst2|inst3|inst5~0_combout\ = ( \inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((\SW[4]~input_o\) # (\SW[5]~input_o\))) ) ) # ( 
-- !\inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst19|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \inst8|inst43|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst8|inst2|inst3|inst5~0_combout\);

-- Location: LABCELL_X32_Y1_N42
\inst8|inst2|inst16|inst2|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst2|inst16|inst2|inst4~0_combout\ = ( \inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \SW[4]~input_o\ & ( (\inst8|inst2|inst3|inst5~0_combout\ & (\inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- ((!\inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\SW[0]~input_o\)))) ) ) ) # ( !\inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \SW[4]~input_o\ & ( (\inst8|inst2|inst3|inst5~0_combout\ & 
-- (((!\inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\SW[0]~input_o\)) # (\inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) ) # ( \inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\SW[4]~input_o\ & ( (!\inst8|inst2|inst3|inst5~0_combout\ & (\inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\SW[0]~input_o\)))) # 
-- (\inst8|inst2|inst3|inst5~0_combout\ & (!\inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((!\inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\))))) ) ) ) # ( 
-- !\inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\SW[4]~input_o\ & ( ((!\inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\SW[0]~input_o\)) # (\inst8|inst2|inst3|inst5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101011111001100110100011001010101000101010001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|inst3|ALT_INV_inst5~0_combout\,
	datab => \inst8|inst18|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \inst8|inst43|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst8|inst42|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \inst8|inst2|inst16|inst2|inst4~0_combout\);

-- Location: LABCELL_X36_Y1_N51
\inst8|inst3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|inst3~0_combout\ = ( \SW[7]~input_o\ & ( !\SW[3]~input_o\ ) ) # ( !\SW[7]~input_o\ & ( \SW[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \inst8|inst3~0_combout\);

-- Location: LABCELL_X32_Y1_N9
\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\ = ( \inst8|inst3~0_combout\ & ( !\inst8|inst2|inst7|inst2|inst7~0_combout\ $ (((!\inst8|inst2|inst9|inst2|inst4~0_combout\ & !\inst8|inst2|inst16|inst2|inst4~0_combout\))) ) ) # ( 
-- !\inst8|inst3~0_combout\ & ( \inst8|inst2|inst7|inst2|inst7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011010111100000101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|inst9|inst2|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst2|inst7|inst2|ALT_INV_inst7~0_combout\,
	datad => \inst8|inst2|inst16|inst2|ALT_INV_inst4~0_combout\,
	dataf => \inst8|ALT_INV_inst3~0_combout\,
	combout => \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X31_Y1_N54
\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\ = ( \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\ & ( \KEY[0]~input_o\ & ( (!\KEY[1]~input_o\) # (\inst9|inst4|inst1~combout\) ) ) ) # ( 
-- !\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\ & ( \KEY[0]~input_o\ & ( (\KEY[1]~input_o\ & \inst9|inst4|inst1~combout\) ) ) ) # ( \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\ & ( !\KEY[0]~input_o\ & ( (!\KEY[1]~input_o\ & 
-- ((\inst28|inst4|inst2|inst1~0_combout\))) # (\KEY[1]~input_o\ & (\inst17|inst|inst4|inst1~combout\)) ) ) ) # ( !\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\ & ( !\KEY[0]~input_o\ & ( (!\KEY[1]~input_o\ & 
-- ((\inst28|inst4|inst2|inst1~0_combout\))) # (\KEY[1]~input_o\ & (\inst17|inst|inst4|inst1~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \inst17|inst|inst4|ALT_INV_inst1~combout\,
	datac => \inst9|inst4|ALT_INV_inst1~combout\,
	datad => \inst28|inst4|inst2|ALT_INV_inst1~0_combout\,
	datae => \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~3_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LABCELL_X31_Y1_N0
\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\ = ( \SW[6]~input_o\ & ( \SW[5]~input_o\ & ( (!\KEY[3]~input_o\ & \KEY[2]~input_o\) ) ) ) # ( !\SW[6]~input_o\ & ( \SW[5]~input_o\ & ( (!\KEY[3]~input_o\ & \KEY[2]~input_o\) ) ) ) # ( 
-- \SW[6]~input_o\ & ( !\SW[5]~input_o\ & ( (!\KEY[3]~input_o\ & (((!\KEY[0]~input_o\ & !\KEY[1]~input_o\)) # (\KEY[2]~input_o\))) ) ) ) # ( !\SW[6]~input_o\ & ( !\SW[5]~input_o\ & ( (!\KEY[3]~input_o\ & ((!\KEY[0]~input_o\) # (\KEY[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \ALT_INV_KEY[1]~input_o\,
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\);

-- Location: LABCELL_X31_Y1_N6
\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\ = ( \SW[6]~input_o\ & ( (!\SW[2]~input_o\ & (((!\KEY[0]~input_o\)))) # (\SW[2]~input_o\ & (\KEY[2]~input_o\ & (!\KEY[1]~input_o\))) ) ) # ( !\SW[6]~input_o\ & ( (!\KEY[2]~input_o\ & 
-- (!\KEY[0]~input_o\ $ (((!\KEY[1]~input_o\ & !\SW[2]~input_o\))))) # (\KEY[2]~input_o\ & (!\KEY[0]~input_o\ & (!\KEY[1]~input_o\ $ (!\SW[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111010000000001111101000000011110100000001001111010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X36_Y1_N30
\inst14|inst2|$00001|auto_generated|l1_w0_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|inst2|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ = ( \SW[0]~input_o\ & ( !\SW[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \inst14|inst2|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y1_N15
\inst16|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ = (!\SW[4]~input_o\ & (\SW[2]~input_o\)) # (\SW[4]~input_o\ & ((\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	combout => \inst16|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y1_N18
\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ = (!\SW[6]~input_o\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	combout => \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y1_N21
\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\ = ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (!\KEY[0]~input_o\ & \SW[3]~input_o\)) ) ) # ( !\SW[5]~input_o\ & ( (!\KEY[0]~input_o\ & (\SW[3]~input_o\ & ((!\SW[6]~input_o\) # 
-- (!\SW[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001000000011000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X35_Y1_N54
\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ = ( \SW[5]~input_o\ & ( (!\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\ & ((!\inst14|inst2|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\) # 
-- (!\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\))) ) ) # ( !\SW[5]~input_o\ & ( (!\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\ & ((!\inst16|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\) # 
-- (!\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111000000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst2|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	datab => \inst16|inst|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	datac => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	datad => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~1_combout\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y1_N15
\inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ = (\SW[4]~input_o\ & \SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	combout => \inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y1_N30
\inst16|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( !\inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & ( !\inst14|inst2|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst2|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	dataf => \inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	combout => \inst16|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y1_N30
\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\ = ( !\KEY[1]~input_o\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X36_Y1_N39
\inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = (\SW[4]~input_o\ & \SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	combout => \inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y1_N57
\inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( !\inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst14|inst2|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst2|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	dataf => \inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X32_Y1_N33
\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\ = ( \SW[5]~input_o\ & ( !\KEY[1]~input_o\ ) ) # ( !\SW[5]~input_o\ & ( (!\KEY[0]~input_o\ & !\KEY[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X35_Y1_N6
\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\ = ( \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\ & ( \inst16|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & ( 
-- (!\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\ & ((!\inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~1_combout\))) # (\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\ & 
-- (!\inst16|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) ) # ( !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\ & ( \inst16|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & ( 
-- (!\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\) # (\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\) ) ) ) # ( \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\ & ( 
-- !\inst16|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & ( (!\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\ & ((!\inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~1_combout\))) # 
-- (\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\ & (!\inst16|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) ) ) ) # ( !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\ & ( 
-- !\inst16|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & ( (!\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000111111000000110010101111101011111111110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	datab => \inst16|inst|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~3_combout\,
	datad => \inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datae => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~2_combout\,
	dataf => \inst16|inst|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	combout => \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X31_Y1_N36
\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ = ( \KEY[3]~input_o\ ) # ( !\KEY[3]~input_o\ & ( \KEY[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\);

-- Location: LABCELL_X36_Y1_N36
\inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\ = (!\SW[4]~input_o\ & \SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	combout => \inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\);

-- Location: LABCELL_X35_Y1_N36
\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ = ( !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & ( ((!\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\ & 
-- (((\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\)))) # (\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\ & (((\inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\)) # 
-- (\inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\)))) ) ) # ( \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & ( (!\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\ & 
-- (((\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\)))) # (\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\ & (\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111001111000111010001110100110011111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~4_combout\,
	datab => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~4_combout\,
	datac => \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~2_combout\,
	datad => \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~1_combout\,
	datae => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~5_combout\,
	dataf => \inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	datag => \inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~1_combout\,
	combout => \inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\);

-- Location: MLABCELL_X34_Y1_N9
\inst1|$00001|auto_generated|l2_w0_n2_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\ = ( \inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & ( (!\KEY[0]~input_o\) # (\inst8|inst2|inst16|inst2|inst4~0_combout\) ) ) # ( 
-- !\inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & ( (\KEY[0]~input_o\ & \inst8|inst2|inst16|inst2|inst4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \inst8|inst2|inst16|inst2|ALT_INV_inst4~0_combout\,
	dataf => \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	combout => \inst1|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y1_N12
\inst1|$00001|auto_generated|l1_w0_n6_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|$00001|auto_generated|l1_w0_n6_mux_dataout~0_combout\ = ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & ((!\SW[4]~input_o\ & (\SW[2]~input_o\)) # (\SW[4]~input_o\ & ((\SW[3]~input_o\))))) ) ) # ( !\SW[5]~input_o\ & ( (!\SW[4]~input_o\ & (\SW[6]~input_o\ 
-- & \SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000100000011100000010000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \inst1|$00001|auto_generated|l1_w0_n6_mux_dataout~0_combout\);

-- Location: LABCELL_X35_Y1_N24
\inst1|$00001|auto_generated|l1_w0_n6_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|$00001|auto_generated|l1_w0_n6_mux_dataout~1_combout\ = ( \KEY[0]~input_o\ & ( \inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\SW[5]~input_o\ & (\inst14|inst2|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & 
-- !\SW[6]~input_o\)) ) ) ) # ( !\KEY[0]~input_o\ & ( \inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( ((!\SW[5]~input_o\ & !\SW[6]~input_o\)) # (\inst1|$00001|auto_generated|l1_w0_n6_mux_dataout~0_combout\) ) ) ) # ( \KEY[0]~input_o\ & 
-- ( !\inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\SW[5]~input_o\ & (\inst14|inst2|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & !\SW[6]~input_o\)) ) ) ) # ( !\KEY[0]~input_o\ & ( 
-- !\inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( ((!\SW[5]~input_o\ & (\inst14|inst2|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & !\SW[6]~input_o\))) # (\inst1|$00001|auto_generated|l1_w0_n6_mux_dataout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100110011000010100000000010111011001100110000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \inst1|$00001|auto_generated|ALT_INV_l1_w0_n6_mux_dataout~0_combout\,
	datac => \inst14|inst2|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst1|$00001|auto_generated|l1_w0_n6_mux_dataout~1_combout\);

-- Location: LABCELL_X35_Y1_N48
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = ( \inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\ & ( \inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & ( (((\SW[5]~input_o\) # (\inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # 
-- (\KEY[0]~input_o\)) # (\inst14|inst2|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\) ) ) ) # ( !\inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\ & ( \inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & ( 
-- ((!\KEY[0]~input_o\ & ((\SW[5]~input_o\) # (\inst14|inst2|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\))) # (\KEY[0]~input_o\ & ((!\SW[5]~input_o\)))) # (\inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\) ) ) ) # ( 
-- \inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\ & ( !\inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & ( (((!\KEY[0]~input_o\ & \inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\SW[5]~input_o\)) 
-- # (\inst14|inst2|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\) ) ) ) # ( !\inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\ & ( !\inst18|inst|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & ( (!\SW[5]~input_o\ & 
-- (((!\KEY[0]~input_o\ & \inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst14|inst2|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\))) # (\SW[5]~input_o\ & (((\KEY[0]~input_o\ & 
-- \inst18|inst|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110100000011010111011111111101111111110011110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst2|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~1_combout\,
	dataf => \inst18|inst|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	combout => \rtl~0_combout\);

-- Location: MLABCELL_X34_Y1_N36
\inst1|$00001|auto_generated|l3_w0_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|$00001|auto_generated|l3_w0_n1_mux_dataout~0_combout\ = ( !\KEY[2]~input_o\ & ( ((!\KEY[1]~input_o\ & (\rtl~0_combout\)) # (\KEY[1]~input_o\ & (((\inst1|$00001|auto_generated|l1_w0_n6_mux_dataout~1_combout\))))) ) ) # ( \KEY[2]~input_o\ & ( 
-- (!\KEY[1]~input_o\ & ((((\inst1|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\))))) # (\KEY[1]~input_o\ & (!\SW[0]~input_o\ $ ((!\SW[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000100101101111000111111001111110001001011011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \inst1|$00001|auto_generated|ALT_INV_l2_w0_n2_mux_dataout~0_combout\,
	datae => \ALT_INV_KEY[2]~input_o\,
	dataf => \inst1|$00001|auto_generated|ALT_INV_l1_w0_n6_mux_dataout~1_combout\,
	datag => \ALT_INV_rtl~0_combout\,
	combout => \inst1|$00001|auto_generated|l3_w0_n1_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y1_N30
\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ = ( !\KEY[3]~input_o\ & ( (((\inst1|$00001|auto_generated|l3_w0_n1_mux_dataout~0_combout\))) ) ) # ( \KEY[3]~input_o\ & ( (!\SW[4]~input_o\ & ((!\KEY[2]~input_o\ & (!\KEY[0]~input_o\ $ 
-- (((!\KEY[1]~input_o\ & !\SW[0]~input_o\))))) # (\KEY[2]~input_o\ & (!\KEY[0]~input_o\ & (!\KEY[1]~input_o\ $ (!\SW[0]~input_o\)))))) # (\SW[4]~input_o\ & ((!\SW[0]~input_o\ & (!\KEY[0]~input_o\)) # (\SW[0]~input_o\ & (((!\KEY[1]~input_o\ & 
-- \KEY[2]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111011011000100110000001111000011111000100011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	datae => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	datag => \inst1|$00001|auto_generated|ALT_INV_l3_w0_n1_mux_dataout~0_combout\,
	combout => \inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y1_N27
\inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~1_combout\ = ( \SW[2]~input_o\ & ( \SW[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X36_Y1_N24
\inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\ = (!\SW[4]~input_o\ & \SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	combout => \inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\);

-- Location: LABCELL_X36_Y1_N12
\inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = (!\SW[4]~input_o\ & \SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	combout => \inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y1_N18
\rtl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = ( !\inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\ & ( \inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\SW[5]~input_o\ & ((!\KEY[0]~input_o\ & 
-- (!\inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\)) # (\KEY[0]~input_o\ & ((!\inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~1_combout\))))) ) ) ) # ( \inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\ & ( 
-- !\inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\SW[5]~input_o\ & ((!\KEY[0]~input_o\ & ((!\inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~1_combout\))) # (\KEY[0]~input_o\ & 
-- (!\inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\)))) ) ) ) # ( !\inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\ & ( !\inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & ((!\inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~1_combout\) # (!\SW[5]~input_o\ $ (\KEY[0]~input_o\)))) # 
-- (\inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & (!\inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~1_combout\ & (!\SW[5]~input_o\ $ (!\KEY[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110011001010000011000000101010100000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	datab => \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~1_combout\,
	dataf => \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \rtl~1_combout\);

-- Location: LABCELL_X31_Y1_N51
\inst17|inst1|inst4|inst5|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|inst1|inst4|inst5|inst1~combout\ = ( \SW[5]~input_o\ & ( !\SW[7]~input_o\ ) ) # ( !\SW[5]~input_o\ & ( !\SW[7]~input_o\ $ (((!\SW[6]~input_o\ & !\SW[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000010110101111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \inst17|inst1|inst4|inst5|inst1~combout\);

-- Location: LABCELL_X31_Y1_N12
\inst9|inst4|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst4|inst4~0_combout\ = ( \SW[2]~input_o\ & ( \SW[5]~input_o\ & ( (((\SW[4]~input_o\ & \SW[0]~input_o\)) # (\SW[1]~input_o\)) # (\SW[6]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( \SW[5]~input_o\ & ( (\SW[6]~input_o\ & (((\SW[4]~input_o\ & 
-- \SW[0]~input_o\)) # (\SW[1]~input_o\))) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[5]~input_o\ & ( ((\SW[4]~input_o\ & (\SW[0]~input_o\ & \SW[1]~input_o\))) # (\SW[6]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[4]~input_o\ & 
-- (\SW[0]~input_o\ & (\SW[6]~input_o\ & \SW[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000011110001111100000001000011110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \inst9|inst4|inst4~0_combout\);

-- Location: LABCELL_X31_Y1_N18
\inst17|inst|inst4|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|inst|inst4|inst4~0_combout\ = ( \SW[2]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\) # ((\SW[1]~input_o\ & ((!\SW[4]~input_o\) # (\SW[0]~input_o\)))) ) ) ) # ( !\SW[2]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (\SW[1]~input_o\ & 
-- ((!\SW[4]~input_o\) # (\SW[0]~input_o\)))) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[5]~input_o\ & ( (!\SW[4]~input_o\ & (((\SW[6]~input_o\)))) # (\SW[4]~input_o\ & (((!\SW[6]~input_o\) # (\SW[1]~input_o\)) # (\SW[0]~input_o\))) ) ) ) # ( !\SW[2]~input_o\ & ( 
-- !\SW[5]~input_o\ & ( (\SW[4]~input_o\ & (!\SW[6]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000010110110101111100000000101100001111000011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \inst17|inst|inst4|inst4~0_combout\);

-- Location: MLABCELL_X34_Y1_N54
\inst4|$00001|auto_generated|l2_w0_n2_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\ = ( \inst17|inst|inst4|inst4~0_combout\ & ( \SW[7]~input_o\ & ( !\SW[3]~input_o\ $ (((!\KEY[0]~input_o\ & (\inst17|inst1|inst4|inst5|inst1~combout\)) # (\KEY[0]~input_o\ & 
-- ((\inst9|inst4|inst4~0_combout\))))) ) ) ) # ( !\inst17|inst|inst4|inst4~0_combout\ & ( \SW[7]~input_o\ & ( !\SW[3]~input_o\ $ (((!\KEY[0]~input_o\ & (!\inst17|inst1|inst4|inst5|inst1~combout\)) # (\KEY[0]~input_o\ & ((\inst9|inst4|inst4~0_combout\))))) ) 
-- ) ) # ( \inst17|inst|inst4|inst4~0_combout\ & ( !\SW[7]~input_o\ & ( !\SW[3]~input_o\ $ (((!\KEY[0]~input_o\ & (\inst17|inst1|inst4|inst5|inst1~combout\)) # (\KEY[0]~input_o\ & ((!\inst9|inst4|inst4~0_combout\))))) ) ) ) # ( 
-- !\inst17|inst|inst4|inst4~0_combout\ & ( !\SW[7]~input_o\ & ( !\SW[3]~input_o\ $ (((!\KEY[0]~input_o\ & (!\inst17|inst1|inst4|inst5|inst1~combout\)) # (\KEY[0]~input_o\ & ((!\inst9|inst4|inst4~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001110101100101000110101110001011100101000111010110001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst1|inst4|inst5|ALT_INV_inst1~combout\,
	datab => \inst9|inst4|ALT_INV_inst4~0_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \inst17|inst|inst4|ALT_INV_inst4~0_combout\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \inst4|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y1_N3
\inst16|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ = ( \SW[2]~input_o\ & ( (\SW[3]~input_o\) # (\SW[4]~input_o\) ) ) # ( !\SW[2]~input_o\ & ( (!\SW[4]~input_o\ & \SW[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \inst16|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y1_N48
\inst16|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \SW[4]~input_o\ & ( \SW[0]~input_o\ ) ) # ( !\SW[4]~input_o\ & ( \SW[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \inst16|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X36_Y1_N0
\inst4|$00001|auto_generated|l1_w0_n6_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|$00001|auto_generated|l1_w0_n6_mux_dataout~0_combout\ = ( \inst16|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\ & 
-- ((!\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\) # ((!\inst16|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & !\SW[5]~input_o\)))) ) ) # ( !\inst16|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\ & ((!\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\) # ((!\inst16|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\) # (\SW[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101010101010001010101010101000100010001010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~1_combout\,
	datab => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	datac => \inst16|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	dataf => \inst16|inst1|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst4|$00001|auto_generated|l1_w0_n6_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y1_N0
\inst4|$00001|auto_generated|l3_w0_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|$00001|auto_generated|l3_w0_n1_mux_dataout~0_combout\ = ( \KEY[1]~input_o\ & ( \inst4|$00001|auto_generated|l1_w0_n6_mux_dataout~0_combout\ & ( (\KEY[2]~input_o\ & \inst4|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\) ) ) ) # ( 
-- !\KEY[1]~input_o\ & ( \inst4|$00001|auto_generated|l1_w0_n6_mux_dataout~0_combout\ & ( (!\KEY[2]~input_o\ & (!\rtl~1_combout\)) # (\KEY[2]~input_o\ & ((\inst8|inst3~0_combout\))) ) ) ) # ( \KEY[1]~input_o\ & ( 
-- !\inst4|$00001|auto_generated|l1_w0_n6_mux_dataout~0_combout\ & ( (!\KEY[2]~input_o\) # (\inst4|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\) ) ) ) # ( !\KEY[1]~input_o\ & ( !\inst4|$00001|auto_generated|l1_w0_n6_mux_dataout~0_combout\ & ( 
-- (!\KEY[2]~input_o\ & (!\rtl~1_combout\)) # (\KEY[2]~input_o\ & ((\inst8|inst3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010111011110011111100111110001000101110110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~1_combout\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \inst4|$00001|auto_generated|ALT_INV_l2_w0_n2_mux_dataout~0_combout\,
	datad => \inst8|ALT_INV_inst3~0_combout\,
	datae => \ALT_INV_KEY[1]~input_o\,
	dataf => \inst4|$00001|auto_generated|ALT_INV_l1_w0_n6_mux_dataout~0_combout\,
	combout => \inst4|$00001|auto_generated|l3_w0_n1_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y1_N42
\inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ = ( !\KEY[3]~input_o\ & ( (((\inst4|$00001|auto_generated|l3_w0_n1_mux_dataout~0_combout\))) ) ) # ( \KEY[3]~input_o\ & ( (!\SW[7]~input_o\ & ((!\KEY[2]~input_o\ & (!\KEY[0]~input_o\ $ 
-- (((!\KEY[1]~input_o\ & !\SW[3]~input_o\))))) # (\KEY[2]~input_o\ & (!\KEY[0]~input_o\ & (!\KEY[1]~input_o\ $ (!\SW[3]~input_o\)))))) # (\SW[7]~input_o\ & ((!\SW[3]~input_o\ & (!\KEY[0]~input_o\)) # (\SW[3]~input_o\ & (((\KEY[2]~input_o\ & 
-- !\KEY[1]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111010010101010100000001111000011111010101000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	datag => \inst4|$00001|auto_generated|ALT_INV_l3_w0_n1_mux_dataout~0_combout\,
	combout => \inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y1_N39
\inst17|inst|inst3|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|inst|inst3|inst1~combout\ = ( \SW[5]~input_o\ & ( !\SW[1]~input_o\ $ (((\SW[4]~input_o\ & !\SW[0]~input_o\))) ) ) # ( !\SW[5]~input_o\ & ( !\SW[1]~input_o\ $ (((!\SW[4]~input_o\) # (\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001011010010110100101110110100101101001011010010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \inst17|inst|inst3|inst1~combout\);

-- Location: LABCELL_X31_Y1_N33
\inst9|inst3|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst3|inst1~combout\ = ( \SW[5]~input_o\ & ( !\SW[1]~input_o\ $ (\inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\) ) ) # ( !\SW[5]~input_o\ & ( !\SW[1]~input_o\ $ 
-- (!\inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \inst9|inst3|inst1~combout\);

-- Location: LABCELL_X32_Y1_N12
\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~9_combout\ = ( \inst8|inst3~0_combout\ & ( !\inst8|inst2|inst16|inst2|inst4~0_combout\ $ (!\inst8|inst2|inst9|inst2|inst4~0_combout\) ) ) # ( !\inst8|inst3~0_combout\ & ( 
-- \inst8|inst2|inst9|inst2|inst4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|inst16|inst2|ALT_INV_inst4~0_combout\,
	datac => \inst8|inst2|inst9|inst2|ALT_INV_inst4~0_combout\,
	dataf => \inst8|ALT_INV_inst3~0_combout\,
	combout => \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~9_combout\);

-- Location: LABCELL_X32_Y1_N54
\inst28|inst4|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst28|inst4|inst|inst~combout\ = ( \inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\SW[4]~input_o\ $ (((!\inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (!\SW[0]~input_o\))) ) ) # ( 
-- !\inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & \SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \inst8|inst42|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \inst8|inst18|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst28|inst4|inst|inst~combout\);

-- Location: LABCELL_X31_Y1_N24
\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~10_combout\ = ( \inst28|inst4|inst|inst~combout\ & ( \KEY[0]~input_o\ & ( (!\KEY[1]~input_o\ & ((\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~9_combout\))) # (\KEY[1]~input_o\ & 
-- (\inst9|inst3|inst1~combout\)) ) ) ) # ( !\inst28|inst4|inst|inst~combout\ & ( \KEY[0]~input_o\ & ( (!\KEY[1]~input_o\ & ((\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~9_combout\))) # (\KEY[1]~input_o\ & (\inst9|inst3|inst1~combout\)) ) ) ) # ( 
-- \inst28|inst4|inst|inst~combout\ & ( !\KEY[0]~input_o\ & ( (!\KEY[1]~input_o\) # (\inst17|inst|inst3|inst1~combout\) ) ) ) # ( !\inst28|inst4|inst|inst~combout\ & ( !\KEY[0]~input_o\ & ( (\KEY[1]~input_o\ & \inst17|inst|inst3|inst1~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \inst17|inst|inst3|ALT_INV_inst1~combout\,
	datac => \inst9|inst3|ALT_INV_inst1~combout\,
	datad => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~9_combout\,
	datae => \inst28|inst4|inst|ALT_INV_inst~combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~10_combout\);

-- Location: LABCELL_X31_Y1_N9
\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~8_combout\ = ( \SW[5]~input_o\ & ( (!\SW[1]~input_o\ & (((!\KEY[0]~input_o\)))) # (\SW[1]~input_o\ & (\KEY[2]~input_o\ & (!\KEY[1]~input_o\))) ) ) # ( !\SW[5]~input_o\ & ( (!\KEY[2]~input_o\ & 
-- (!\KEY[0]~input_o\ $ (((!\KEY[1]~input_o\ & !\SW[1]~input_o\))))) # (\KEY[2]~input_o\ & (!\KEY[0]~input_o\ & (!\KEY[1]~input_o\ $ (!\SW[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111010000000001111101000000011110100000001001111010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~8_combout\);

-- Location: MLABCELL_X34_Y1_N6
\inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~2_combout\ = (!\inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ & !\inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	datad => \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~1_combout\,
	combout => \inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~2_combout\);

-- Location: LABCELL_X35_Y1_N33
\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~6_combout\ = ( \SW[5]~input_o\ & ( !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\ ) ) # ( !\SW[5]~input_o\ & ( (!\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\ & 
-- ((!\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\) # (!\inst16|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	datac => \inst16|inst1|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~1_combout\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~6_combout\);

-- Location: LABCELL_X35_Y1_N42
\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~7_combout\ = ( \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\ & ( \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\ & ( 
-- \inst16|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~0_combout\ ) ) ) # ( !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\ & ( \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\ & ( 
-- \inst16|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ ) ) ) # ( \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\ & ( !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\ & ( 
-- !\inst18|inst1|$00001|auto_generated|l1_w0_n1_mux_dataout~2_combout\ ) ) ) # ( !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~2_combout\ & ( !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~3_combout\ & ( 
-- !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000101010101010101000000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~2_combout\,
	datab => \inst16|inst1|$00001|auto_generated|ALT_INV_l1_w0_n1_mux_dataout~0_combout\,
	datac => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~6_combout\,
	datad => \inst16|inst1|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~2_combout\,
	dataf => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~3_combout\,
	combout => \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~7_combout\);

-- Location: LABCELL_X35_Y1_N0
\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ = ( !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & ( ((!\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\ & 
-- (((\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~7_combout\)))) # (\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\ & (((\inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~1_combout\)) # 
-- (\inst18|inst1|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) ) # ( \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & ( (!\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\ & 
-- (((\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~8_combout\)))) # (\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~4_combout\ & (\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111001111000111010001110100110011111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~10_combout\,
	datab => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~4_combout\,
	datac => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~8_combout\,
	datad => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~7_combout\,
	datae => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~5_combout\,
	dataf => \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~1_combout\,
	datag => \inst18|inst1|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\);

-- Location: LABCELL_X36_Y1_N9
\inst12|inst63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|inst63~0_combout\ = ( \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ & ( (\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & (\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & 
-- !\inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\)) ) ) # ( !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ & ( (!\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & 
-- ((!\inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\))) # (\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & (!\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & 
-- \inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010010100100101001001010010000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~5_combout\,
	datab => \inst1|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	datac => \inst4|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	dataf => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~11_combout\,
	combout => \inst12|inst63~0_combout\);

-- Location: LABCELL_X36_Y1_N42
\inst12|inst13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|inst13~0_combout\ = ( \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ & ( (!\inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & ((!\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\) # 
-- (\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\))) ) ) # ( !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ & ( (\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & 
-- (!\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ $ (\inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001111110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	datac => \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~5_combout\,
	datad => \inst4|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	dataf => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~11_combout\,
	combout => \inst12|inst13~0_combout\);

-- Location: LABCELL_X36_Y1_N6
\inst12|inst85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|inst85~combout\ = ( \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ & ( (\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & !\inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\) ) ) # ( 
-- !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ & ( (!\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & (\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\)) # 
-- (\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & ((!\inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100100010011101110010001000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~5_combout\,
	datab => \inst1|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	datad => \inst4|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	dataf => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~11_combout\,
	combout => \inst12|inst85~combout\);

-- Location: LABCELL_X36_Y1_N45
\inst12|inst33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|inst33~0_combout\ = ( \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ & ( (!\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & (!\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & 
-- \inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\)) # (\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & (\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\)) ) ) # ( 
-- !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ & ( (!\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & (\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\)) # 
-- (\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & (!\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & !\inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001001100010011000100110001000011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~5_combout\,
	datab => \inst1|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	datac => \inst4|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	dataf => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~11_combout\,
	combout => \inst12|inst33~0_combout\);

-- Location: LABCELL_X36_Y1_N18
\inst12|inst25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|inst25~0_combout\ = ( \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ & ( (!\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & (!\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & 
-- !\inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\)) # (\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & ((\inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\))) ) ) # ( 
-- !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ & ( (!\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & (\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & 
-- \inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	datac => \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~5_combout\,
	datad => \inst4|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	dataf => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~11_combout\,
	combout => \inst12|inst25~0_combout\);

-- Location: LABCELL_X36_Y1_N21
\inst12|inst82~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|inst82~0_combout\ = ( \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ & ( (!\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & (\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\)) # 
-- (\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & ((\inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\))) ) ) # ( !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ & ( 
-- (\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & (!\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ $ (!\inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~5_combout\,
	datab => \inst1|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	datac => \inst4|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	dataf => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~11_combout\,
	combout => \inst12|inst82~0_combout\);

-- Location: LABCELL_X36_Y1_N54
\inst12|inst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|inst~0_combout\ = ( \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ & ( (\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & (!\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & 
-- \inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\)) ) ) # ( !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ & ( (!\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & 
-- (\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ & !\inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\)) # (\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & 
-- (!\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\ $ (\inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000011001111000000001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	datac => \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~5_combout\,
	datad => \inst4|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	dataf => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~11_combout\,
	combout => \inst12|inst~0_combout\);

-- Location: LABCELL_X36_Y1_N57
\inst7|$00001|auto_generated|l4_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ = ( \inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ ) # ( !\inst2|$00001|auto_generated|l4_w0_n0_mux_dataout~11_combout\ & ( 
-- ((\inst4|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\) # (\inst1|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\)) # (\inst3|$00001|auto_generated|l4_w0_n0_mux_dataout~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~5_combout\,
	datab => \inst1|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	datac => \inst4|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	dataf => \inst2|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~11_combout\,
	combout => \inst7|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y1_N51
\inst5|$00001|auto_generated|l2_w0_n2_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\ = ( \inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # 
-- (\inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\) ) ) # ( !\inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- \inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst42|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst8|inst18|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst8|inst43|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst8|inst19|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst5|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y1_N12
\inst5|$00001|auto_generated|l2_w0_n2_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|$00001|auto_generated|l2_w0_n2_mux_dataout~1_combout\ = ( \inst17|inst|inst4|inst4~0_combout\ & ( \SW[7]~input_o\ & ( (!\KEY[0]~input_o\ & (!\inst17|inst1|inst4|inst5|inst1~combout\ & ((!\SW[3]~input_o\)))) # (\KEY[0]~input_o\ & 
-- (((!\inst9|inst4|inst4~0_combout\ & \SW[3]~input_o\)))) ) ) ) # ( !\inst17|inst|inst4|inst4~0_combout\ & ( \SW[7]~input_o\ & ( (\SW[3]~input_o\ & ((!\KEY[0]~input_o\ & (\inst17|inst1|inst4|inst5|inst1~combout\)) # (\KEY[0]~input_o\ & 
-- ((!\inst9|inst4|inst4~0_combout\))))) ) ) ) # ( \inst17|inst|inst4|inst4~0_combout\ & ( !\SW[7]~input_o\ & ( (!\SW[3]~input_o\ & ((!\KEY[0]~input_o\ & (!\inst17|inst1|inst4|inst5|inst1~combout\)) # (\KEY[0]~input_o\ & ((\inst9|inst4|inst4~0_combout\))))) 
-- ) ) ) # ( !\inst17|inst|inst4|inst4~0_combout\ & ( !\SW[7]~input_o\ & ( (!\KEY[0]~input_o\ & (\inst17|inst1|inst4|inst5|inst1~combout\ & ((\SW[3]~input_o\)))) # (\KEY[0]~input_o\ & (((\inst9|inst4|inst4~0_combout\ & !\SW[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000101000110000000000000000010111001010000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst1|inst4|inst5|ALT_INV_inst1~combout\,
	datab => \inst9|inst4|ALT_INV_inst4~0_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \inst17|inst|inst4|ALT_INV_inst4~0_combout\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \inst5|$00001|auto_generated|l2_w0_n2_mux_dataout~1_combout\);

-- Location: MLABCELL_X34_Y1_N51
\inst5|$00001|auto_generated|l4_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ = ( \inst5|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\ & ( \inst5|$00001|auto_generated|l2_w0_n2_mux_dataout~1_combout\ & ( (\KEY[2]~input_o\ & (!\KEY[3]~input_o\ & 
-- ((!\KEY[0]~input_o\) # (\KEY[1]~input_o\)))) ) ) ) # ( !\inst5|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\ & ( \inst5|$00001|auto_generated|l2_w0_n2_mux_dataout~1_combout\ & ( (\KEY[2]~input_o\ & (!\KEY[3]~input_o\ & \KEY[1]~input_o\)) ) ) ) # ( 
-- \inst5|$00001|auto_generated|l2_w0_n2_mux_dataout~0_combout\ & ( !\inst5|$00001|auto_generated|l2_w0_n2_mux_dataout~1_combout\ & ( (!\KEY[0]~input_o\ & (\KEY[2]~input_o\ & (!\KEY[3]~input_o\ & !\KEY[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000001100000010000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \ALT_INV_KEY[1]~input_o\,
	datae => \inst5|$00001|auto_generated|ALT_INV_l2_w0_n2_mux_dataout~0_combout\,
	dataf => \inst5|$00001|auto_generated|ALT_INV_l2_w0_n2_mux_dataout~1_combout\,
	combout => \inst5|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X32_Y1_N24
\inst28|inst4|inst29|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst28|inst4|inst29|inst4~0_combout\ = ( \inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (!\inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ 
-- & (((\SW[0]~input_o\ & \inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) # (\inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & (((\SW[4]~input_o\ & \SW[0]~input_o\)) # 
-- (\inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) ) # ( !\inst8|inst42|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst8|inst43|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( (\SW[4]~input_o\ & 
-- (\inst8|inst19|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & (\SW[0]~input_o\ & \inst8|inst18|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \inst8|inst19|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \inst8|inst18|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst8|inst42|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst8|inst43|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst28|inst4|inst29|inst4~0_combout\);

-- Location: MLABCELL_X34_Y1_N24
\inst6|$00001|auto_generated|l4_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ = ( \inst17|inst|inst4|inst4~0_combout\ & ( \SW[7]~input_o\ & ( ((!\KEY[0]~input_o\ & (\inst17|inst1|inst4|inst5|inst1~combout\)) # (\KEY[0]~input_o\ & ((\inst9|inst4|inst4~0_combout\)))) # 
-- (\SW[3]~input_o\) ) ) ) # ( !\inst17|inst|inst4|inst4~0_combout\ & ( \SW[7]~input_o\ & ( (!\KEY[0]~input_o\ & (\inst17|inst1|inst4|inst5|inst1~combout\ & ((\SW[3]~input_o\)))) # (\KEY[0]~input_o\ & (((\SW[3]~input_o\) # (\inst9|inst4|inst4~0_combout\)))) 
-- ) ) ) # ( \inst17|inst|inst4|inst4~0_combout\ & ( !\SW[7]~input_o\ & ( (!\KEY[0]~input_o\ & (((\SW[3]~input_o\)) # (\inst17|inst1|inst4|inst5|inst1~combout\))) # (\KEY[0]~input_o\ & (((\inst9|inst4|inst4~0_combout\ & \SW[3]~input_o\)))) ) ) ) # ( 
-- !\inst17|inst|inst4|inst4~0_combout\ & ( !\SW[7]~input_o\ & ( (\SW[3]~input_o\ & ((!\KEY[0]~input_o\ & (\inst17|inst1|inst4|inst5|inst1~combout\)) # (\KEY[0]~input_o\ & ((\inst9|inst4|inst4~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011010100001111001100000011010111110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst1|inst4|inst5|ALT_INV_inst1~combout\,
	datab => \inst9|inst4|ALT_INV_inst4~0_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \inst17|inst|inst4|ALT_INV_inst4~0_combout\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \inst6|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y1_N48
\inst6|$00001|auto_generated|l4_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\ = ( \inst28|inst4|inst29|inst4~0_combout\ & ( \inst6|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & ( (\KEY[2]~input_o\ & (!\KEY[3]~input_o\ & ((!\KEY[0]~input_o\) # 
-- (\KEY[1]~input_o\)))) ) ) ) # ( !\inst28|inst4|inst29|inst4~0_combout\ & ( \inst6|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & ( (\KEY[2]~input_o\ & (\KEY[1]~input_o\ & !\KEY[3]~input_o\)) ) ) ) # ( \inst28|inst4|inst29|inst4~0_combout\ & ( 
-- !\inst6|$00001|auto_generated|l4_w0_n0_mux_dataout~0_combout\ & ( (!\KEY[0]~input_o\ & (\KEY[2]~input_o\ & (!\KEY[1]~input_o\ & !\KEY[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000011000000000010001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_KEY[3]~input_o\,
	datae => \inst28|inst4|inst29|ALT_INV_inst4~0_combout\,
	dataf => \inst6|$00001|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	combout => \inst6|$00001|auto_generated|l4_w0_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X23_Y36_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


