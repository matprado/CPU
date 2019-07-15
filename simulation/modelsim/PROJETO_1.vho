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

-- DATE "10/22/2018 19:48:43"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	LED0 : OUT std_logic;
	clk_1mhz : IN std_logic;
	reset : IN std_logic;
	In_clock : IN std_logic;
	Master_clear : IN std_logic;
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	LED4 : OUT std_logic;
	LED5 : OUT std_logic;
	LED6 : OUT std_logic;
	LED7 : OUT std_logic;
	DISPLAY0 : OUT std_logic_vector(6 DOWNTO 0);
	DISPLAY1 : OUT std_logic_vector(6 DOWNTO 0);
	DISPLAY2 : OUT std_logic_vector(6 DOWNTO 0);
	DISPLAY3 : OUT std_logic_vector(6 DOWNTO 0);
	DISPLAY4 : OUT std_logic_vector(6 DOWNTO 0);
	DISPLAY5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- LED0	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED1	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED2	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED3	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED4	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED5	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED6	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY1[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY1[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY1[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY2[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY2[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY2[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY2[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY2[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY3[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY3[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY3[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY3[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY3[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY3[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY3[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY4[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY4[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY4[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY4[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY4[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY4[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY4[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY5[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY5[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY5[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY5[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY5[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY5[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY5[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Master_clear	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- In_clock	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_1mhz	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED0 : std_logic;
SIGNAL ww_clk_1mhz : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_In_clock : std_logic;
SIGNAL ww_Master_clear : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL ww_LED4 : std_logic;
SIGNAL ww_LED5 : std_logic;
SIGNAL ww_LED6 : std_logic;
SIGNAL ww_LED7 : std_logic;
SIGNAL ww_DISPLAY0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DISPLAY1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DISPLAY2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DISPLAY3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DISPLAY4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DISPLAY5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \In_clock~input_o\ : std_logic;
SIGNAL \clk_1mhz~input_o\ : std_logic;
SIGNAL \clk_1mhz~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst5|outb~1_combout\ : std_logic;
SIGNAL \inst5|intermediate~1_combout\ : std_logic;
SIGNAL \inst5|intermediate~_emulated_q\ : std_logic;
SIGNAL \inst5|intermediate~0_combout\ : std_logic;
SIGNAL \inst5|Add0~1_sumout\ : std_logic;
SIGNAL \inst5|always0~0_combout\ : std_logic;
SIGNAL \inst5|Add0~2\ : std_logic;
SIGNAL \inst5|Add0~61_sumout\ : std_logic;
SIGNAL \inst5|Add0~62\ : std_logic;
SIGNAL \inst5|Add0~45_sumout\ : std_logic;
SIGNAL \inst5|Add0~46\ : std_logic;
SIGNAL \inst5|Add0~57_sumout\ : std_logic;
SIGNAL \inst5|Add0~58\ : std_logic;
SIGNAL \inst5|Add0~53_sumout\ : std_logic;
SIGNAL \inst5|Add0~54\ : std_logic;
SIGNAL \inst5|Add0~49_sumout\ : std_logic;
SIGNAL \inst5|Add0~50\ : std_logic;
SIGNAL \inst5|Add0~17_sumout\ : std_logic;
SIGNAL \inst5|Add0~18\ : std_logic;
SIGNAL \inst5|Add0~13_sumout\ : std_logic;
SIGNAL \inst5|Add0~14\ : std_logic;
SIGNAL \inst5|Add0~9_sumout\ : std_logic;
SIGNAL \inst5|Add0~10\ : std_logic;
SIGNAL \inst5|Add0~5_sumout\ : std_logic;
SIGNAL \inst5|Add0~6\ : std_logic;
SIGNAL \inst5|Add0~41_sumout\ : std_logic;
SIGNAL \inst5|Add0~42\ : std_logic;
SIGNAL \inst5|Add0~37_sumout\ : std_logic;
SIGNAL \inst5|Add0~38\ : std_logic;
SIGNAL \inst5|Add0~33_sumout\ : std_logic;
SIGNAL \inst5|Add0~34\ : std_logic;
SIGNAL \inst5|Add0~29_sumout\ : std_logic;
SIGNAL \inst5|Add0~30\ : std_logic;
SIGNAL \inst5|Add0~25_sumout\ : std_logic;
SIGNAL \inst5|Add0~26\ : std_logic;
SIGNAL \inst5|Add0~21_sumout\ : std_logic;
SIGNAL \inst5|outb~6_combout\ : std_logic;
SIGNAL \inst5|outb~5_combout\ : std_logic;
SIGNAL \inst5|outb~7_combout\ : std_logic;
SIGNAL \inst5|outb~8_combout\ : std_logic;
SIGNAL \inst5|outb~3_combout\ : std_logic;
SIGNAL \inst5|outb~_emulated_q\ : std_logic;
SIGNAL \inst5|outb~2_combout\ : std_logic;
SIGNAL \inst|inst45~0_combout\ : std_logic;
SIGNAL \inst|inst45~feeder_combout\ : std_logic;
SIGNAL \Master_clear~input_o\ : std_logic;
SIGNAL \inst27|outb~1_combout\ : std_logic;
SIGNAL \inst27|intermediate~1_combout\ : std_logic;
SIGNAL \inst27|intermediate~_emulated_q\ : std_logic;
SIGNAL \inst27|intermediate~0_combout\ : std_logic;
SIGNAL \inst27|Add0~45_sumout\ : std_logic;
SIGNAL \inst27|always0~0_combout\ : std_logic;
SIGNAL \inst27|Add0~46\ : std_logic;
SIGNAL \inst27|Add0~17_sumout\ : std_logic;
SIGNAL \inst27|Add0~18\ : std_logic;
SIGNAL \inst27|Add0~13_sumout\ : std_logic;
SIGNAL \inst27|Add0~14\ : std_logic;
SIGNAL \inst27|Add0~9_sumout\ : std_logic;
SIGNAL \inst27|Add0~10\ : std_logic;
SIGNAL \inst27|Add0~5_sumout\ : std_logic;
SIGNAL \inst27|Add0~6\ : std_logic;
SIGNAL \inst27|Add0~41_sumout\ : std_logic;
SIGNAL \inst27|Add0~42\ : std_logic;
SIGNAL \inst27|Add0~37_sumout\ : std_logic;
SIGNAL \inst27|Add0~38\ : std_logic;
SIGNAL \inst27|Add0~33_sumout\ : std_logic;
SIGNAL \inst27|Add0~34\ : std_logic;
SIGNAL \inst27|Add0~29_sumout\ : std_logic;
SIGNAL \inst27|Add0~30\ : std_logic;
SIGNAL \inst27|Add0~25_sumout\ : std_logic;
SIGNAL \inst27|Add0~26\ : std_logic;
SIGNAL \inst27|Add0~21_sumout\ : std_logic;
SIGNAL \inst27|outb~6_combout\ : std_logic;
SIGNAL \inst27|Add0~22\ : std_logic;
SIGNAL \inst27|Add0~1_sumout\ : std_logic;
SIGNAL \inst27|Add0~2\ : std_logic;
SIGNAL \inst27|Add0~61_sumout\ : std_logic;
SIGNAL \inst27|Add0~62\ : std_logic;
SIGNAL \inst27|Add0~57_sumout\ : std_logic;
SIGNAL \inst27|Add0~58\ : std_logic;
SIGNAL \inst27|Add0~53_sumout\ : std_logic;
SIGNAL \inst27|Add0~54\ : std_logic;
SIGNAL \inst27|Add0~49_sumout\ : std_logic;
SIGNAL \inst27|outb~7_combout\ : std_logic;
SIGNAL \inst27|outb~5_combout\ : std_logic;
SIGNAL \inst27|outb~8_combout\ : std_logic;
SIGNAL \inst27|outb~3_combout\ : std_logic;
SIGNAL \inst27|outb~_emulated_q\ : std_logic;
SIGNAL \inst27|outb~2_combout\ : std_logic;
SIGNAL \inst|inst20~0_combout\ : std_logic;
SIGNAL \inst|inst45~q\ : std_logic;
SIGNAL \inst|inst46~0_combout\ : std_logic;
SIGNAL \inst|inst46~q\ : std_logic;
SIGNAL \inst|inst47~0_combout\ : std_logic;
SIGNAL \inst|inst47~q\ : std_logic;
SIGNAL \inst|inst48~DUPLICATE_q\ : std_logic;
SIGNAL \inst|inst48~0_combout\ : std_logic;
SIGNAL \inst|inst48~q\ : std_logic;
SIGNAL \inst|inst11~combout\ : std_logic;
SIGNAL \inst|inst19~combout\ : std_logic;
SIGNAL \inst|inst44~1_combout\ : std_logic;
SIGNAL \inst|inst44~3_combout\ : std_logic;
SIGNAL \inst|inst44~0_combout\ : std_logic;
SIGNAL \inst|inst44~_emulated_q\ : std_logic;
SIGNAL \inst|inst44~2_combout\ : std_logic;
SIGNAL \inst|inst10~combout\ : std_logic;
SIGNAL \inst|inst18~combout\ : std_logic;
SIGNAL \inst|inst43~1_combout\ : std_logic;
SIGNAL \inst|inst43~3_combout\ : std_logic;
SIGNAL \inst|inst43~0_combout\ : std_logic;
SIGNAL \inst|inst43~_emulated_q\ : std_logic;
SIGNAL \inst|inst43~2_combout\ : std_logic;
SIGNAL \inst|inst9~combout\ : std_logic;
SIGNAL \inst|inst17~combout\ : std_logic;
SIGNAL \inst|inst42~1_combout\ : std_logic;
SIGNAL \inst|inst42~3_combout\ : std_logic;
SIGNAL \inst|inst42~0_combout\ : std_logic;
SIGNAL \inst|inst42~_emulated_q\ : std_logic;
SIGNAL \inst|inst42~2_combout\ : std_logic;
SIGNAL \inst|inst16~combout\ : std_logic;
SIGNAL \inst|inst8~combout\ : std_logic;
SIGNAL \inst|inst41~1_combout\ : std_logic;
SIGNAL \inst|inst41~3_combout\ : std_logic;
SIGNAL \inst|inst41~0_combout\ : std_logic;
SIGNAL \inst|inst41~_emulated_q\ : std_logic;
SIGNAL \inst|inst41~2_combout\ : std_logic;
SIGNAL \inst9~combout\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \inst20|inst12~combout\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \inst4|inst6~q\ : std_logic;
SIGNAL \inst2|inst17|inst3|inst1~0_combout\ : std_logic;
SIGNAL \inst20|inst16~0_combout\ : std_logic;
SIGNAL \inst3|inst5~q\ : std_logic;
SIGNAL \inst20|inst7~0_combout\ : std_logic;
SIGNAL \inst4|inst5~q\ : std_logic;
SIGNAL \inst20|inst26|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst20|inst10~combout\ : std_logic;
SIGNAL \inst4|inst20~q\ : std_logic;
SIGNAL \inst2|inst17|inst1|inst1~0_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \inst20|inst17~combout\ : std_logic;
SIGNAL \inst3|inst20~q\ : std_logic;
SIGNAL \inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|inst17|inst1|inst7~0_combout\ : std_logic;
SIGNAL \inst2|inst17|inst3|inst1~combout\ : std_logic;
SIGNAL \inst2|inst9|inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst2|inst9|inst4|inst1~combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \inst20|inst18~combout\ : std_logic;
SIGNAL \inst3|inst6~q\ : std_logic;
SIGNAL \inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst2|inst17|inst2|inst1~combout\ : std_logic;
SIGNAL \inst20|inst14~combout\ : std_logic;
SIGNAL \inst4|inst7~q\ : std_logic;
SIGNAL \inst2|inst17|inst2|inst1~0_combout\ : std_logic;
SIGNAL \inst2|inst9|inst5|inst1~combout\ : std_logic;
SIGNAL \inst20|inst19~combout\ : std_logic;
SIGNAL \inst3|inst7~q\ : std_logic;
SIGNAL \inst31|inst63~0_combout\ : std_logic;
SIGNAL \inst31|inst13~0_combout\ : std_logic;
SIGNAL \inst31|inst85~0_combout\ : std_logic;
SIGNAL \inst31|inst33~0_combout\ : std_logic;
SIGNAL \inst31|inst25~0_combout\ : std_logic;
SIGNAL \inst31|inst82~0_combout\ : std_logic;
SIGNAL \inst31|inst~0_combout\ : std_logic;
SIGNAL \inst30|inst63~0_combout\ : std_logic;
SIGNAL \inst30|inst13~0_combout\ : std_logic;
SIGNAL \inst30|inst85~0_combout\ : std_logic;
SIGNAL \inst30|inst33~0_combout\ : std_logic;
SIGNAL \inst30|inst25~0_combout\ : std_logic;
SIGNAL \inst30|inst82~0_combout\ : std_logic;
SIGNAL \inst30|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst63~0_combout\ : std_logic;
SIGNAL \inst10|inst13~0_combout\ : std_logic;
SIGNAL \inst10|inst85~0_combout\ : std_logic;
SIGNAL \inst10|inst33~0_combout\ : std_logic;
SIGNAL \inst10|inst25~0_combout\ : std_logic;
SIGNAL \inst10|inst82~0_combout\ : std_logic;
SIGNAL \inst10|inst~0_combout\ : std_logic;
SIGNAL \inst11|inst63~0_combout\ : std_logic;
SIGNAL \inst11|inst13~0_combout\ : std_logic;
SIGNAL \inst11|inst85~0_combout\ : std_logic;
SIGNAL \inst11|inst33~0_combout\ : std_logic;
SIGNAL \inst11|inst25~0_combout\ : std_logic;
SIGNAL \inst11|inst82~0_combout\ : std_logic;
SIGNAL \inst11|inst~0_combout\ : std_logic;
SIGNAL \inst12|inst63~0_combout\ : std_logic;
SIGNAL \inst12|inst13~0_combout\ : std_logic;
SIGNAL \inst12|inst85~0_combout\ : std_logic;
SIGNAL \inst12|inst33~0_combout\ : std_logic;
SIGNAL \inst12|inst25~0_combout\ : std_logic;
SIGNAL \inst12|inst82~0_combout\ : std_logic;
SIGNAL \inst12|inst~0_combout\ : std_logic;
SIGNAL \inst13|inst63~0_combout\ : std_logic;
SIGNAL \inst13|inst13~0_combout\ : std_logic;
SIGNAL \inst13|inst85~0_combout\ : std_logic;
SIGNAL \inst13|inst33~0_combout\ : std_logic;
SIGNAL \inst13|inst25~0_combout\ : std_logic;
SIGNAL \inst13|inst82~0_combout\ : std_logic;
SIGNAL \inst13|inst~0_combout\ : std_logic;
SIGNAL \inst1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst27|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ALT_INV_inst48~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_In_clock~input_o\ : std_logic;
SIGNAL \ALT_INV_Master_clear~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \inst5|ALT_INV_outb~1_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_outb~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst44~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst43~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst42~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst41~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst45~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_intermediate~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_intermediate~_emulated_q\ : std_logic;
SIGNAL \inst27|ALT_INV_intermediate~0_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_intermediate~_emulated_q\ : std_logic;
SIGNAL \inst5|ALT_INV_outb~8_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_outb~7_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_outb~6_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_outb~5_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_outb~8_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_outb~7_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_outb~6_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_outb~5_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_outb~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_outb~_emulated_q\ : std_logic;
SIGNAL \inst27|ALT_INV_outb~2_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_outb~_emulated_q\ : std_logic;
SIGNAL \inst|ALT_INV_inst19~combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst11~combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst18~combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst43~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst17~combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst9~combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst42~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst16~combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst8~combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst41~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~1_combout\ : std_logic;
SIGNAL \inst2|inst17|inst3|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst2|inst9|inst4|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst2|inst17|inst3|ALT_INV_inst1~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~0_combout\ : std_logic;
SIGNAL \inst2|inst17|inst1|ALT_INV_inst1~0_combout\ : std_logic;
SIGNAL \inst2|inst9|inst5|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst2|inst9|inst3|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst2|inst17|inst2|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst2|inst17|inst2|ALT_INV_inst1~0_combout\ : std_logic;
SIGNAL \inst2|inst17|inst1|ALT_INV_inst7~0_combout\ : std_logic;
SIGNAL \inst20|inst27|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst20|inst28|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst7~combout\ : std_logic;
SIGNAL \inst20|inst26|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst20~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst44~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst44~_emulated_q\ : std_logic;
SIGNAL \inst|ALT_INV_inst43~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst43~_emulated_q\ : std_logic;
SIGNAL \inst|ALT_INV_inst42~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst42~_emulated_q\ : std_logic;
SIGNAL \inst|ALT_INV_inst41~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst41~_emulated_q\ : std_logic;
SIGNAL \inst4|ALT_INV_inst6~q\ : std_logic;
SIGNAL \inst4|ALT_INV_inst20~q\ : std_logic;
SIGNAL \inst4|ALT_INV_inst7~q\ : std_logic;
SIGNAL \inst4|ALT_INV_inst5~q\ : std_logic;
SIGNAL \inst3|ALT_INV_inst6~q\ : std_logic;
SIGNAL \inst3|ALT_INV_inst20~q\ : std_logic;
SIGNAL \inst3|ALT_INV_inst7~q\ : std_logic;
SIGNAL \inst3|ALT_INV_inst5~q\ : std_logic;
SIGNAL \inst|ALT_INV_inst47~q\ : std_logic;
SIGNAL \inst|ALT_INV_inst46~q\ : std_logic;
SIGNAL \inst|ALT_INV_inst45~q\ : std_logic;
SIGNAL \inst5|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst27|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(15 DOWNTO 0);

BEGIN

LED0 <= ww_LED0;
ww_clk_1mhz <= clk_1mhz;
ww_reset <= reset;
ww_In_clock <= In_clock;
ww_Master_clear <= Master_clear;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
LED4 <= ww_LED4;
LED5 <= ww_LED5;
LED6 <= ww_LED6;
LED7 <= ww_LED7;
DISPLAY0 <= ww_DISPLAY0;
DISPLAY1 <= ww_DISPLAY1;
DISPLAY2 <= ww_DISPLAY2;
DISPLAY3 <= ww_DISPLAY3;
DISPLAY4 <= ww_DISPLAY4;
DISPLAY5 <= ww_DISPLAY5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|inst48~q\ & \inst|inst47~q\ & \inst|inst46~q\ & \inst|inst45~q\ & \inst|inst44~2_combout\ & \inst|inst43~2_combout\ & \inst|inst42~2_combout\ & \inst|inst41~2_combout\);

\inst1|altsyncram_component|auto_generated|q_a\(0) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst1|altsyncram_component|auto_generated|q_a\(1) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst1|altsyncram_component|auto_generated|q_a\(2) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst1|altsyncram_component|auto_generated|q_a\(3) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst1|altsyncram_component|auto_generated|q_a\(4) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst1|altsyncram_component|auto_generated|q_a\(5) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst1|altsyncram_component|auto_generated|q_a\(6) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst1|altsyncram_component|auto_generated|q_a\(7) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst1|altsyncram_component|auto_generated|q_a\(8) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst1|altsyncram_component|auto_generated|q_a\(9) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst1|altsyncram_component|auto_generated|q_a\(10) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst1|altsyncram_component|auto_generated|q_a\(11) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst1|altsyncram_component|auto_generated|q_a\(12) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst1|altsyncram_component|auto_generated|q_a\(13) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst1|altsyncram_component|auto_generated|q_a\(14) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst1|altsyncram_component|auto_generated|q_a\(15) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst|ALT_INV_inst48~DUPLICATE_q\ <= NOT \inst|inst48~DUPLICATE_q\;
\ALT_INV_In_clock~input_o\ <= NOT \In_clock~input_o\;
\ALT_INV_Master_clear~input_o\ <= NOT \Master_clear~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\inst5|ALT_INV_outb~1_combout\ <= NOT \inst5|outb~1_combout\;
\inst27|ALT_INV_outb~1_combout\ <= NOT \inst27|outb~1_combout\;
\inst|ALT_INV_inst44~1_combout\ <= NOT \inst|inst44~1_combout\;
\inst|ALT_INV_inst43~1_combout\ <= NOT \inst|inst43~1_combout\;
\inst|ALT_INV_inst42~1_combout\ <= NOT \inst|inst42~1_combout\;
\inst|ALT_INV_inst41~1_combout\ <= NOT \inst|inst41~1_combout\;
\inst|ALT_INV_inst45~0_combout\ <= NOT \inst|inst45~0_combout\;
\inst5|ALT_INV_intermediate~0_combout\ <= NOT \inst5|intermediate~0_combout\;
\inst5|ALT_INV_intermediate~_emulated_q\ <= NOT \inst5|intermediate~_emulated_q\;
\inst27|ALT_INV_intermediate~0_combout\ <= NOT \inst27|intermediate~0_combout\;
\inst27|ALT_INV_intermediate~_emulated_q\ <= NOT \inst27|intermediate~_emulated_q\;
\inst5|ALT_INV_outb~8_combout\ <= NOT \inst5|outb~8_combout\;
\inst5|ALT_INV_outb~7_combout\ <= NOT \inst5|outb~7_combout\;
\inst5|ALT_INV_outb~6_combout\ <= NOT \inst5|outb~6_combout\;
\inst5|ALT_INV_outb~5_combout\ <= NOT \inst5|outb~5_combout\;
\inst27|ALT_INV_outb~8_combout\ <= NOT \inst27|outb~8_combout\;
\inst27|ALT_INV_outb~7_combout\ <= NOT \inst27|outb~7_combout\;
\inst27|ALT_INV_outb~6_combout\ <= NOT \inst27|outb~6_combout\;
\inst27|ALT_INV_outb~5_combout\ <= NOT \inst27|outb~5_combout\;
\inst5|ALT_INV_outb~2_combout\ <= NOT \inst5|outb~2_combout\;
\inst5|ALT_INV_outb~_emulated_q\ <= NOT \inst5|outb~_emulated_q\;
\inst27|ALT_INV_outb~2_combout\ <= NOT \inst27|outb~2_combout\;
\inst27|ALT_INV_outb~_emulated_q\ <= NOT \inst27|outb~_emulated_q\;
\inst|ALT_INV_inst19~combout\ <= NOT \inst|inst19~combout\;
\inst|ALT_INV_inst11~combout\ <= NOT \inst|inst11~combout\;
\inst|ALT_INV_inst44~0_combout\ <= NOT \inst|inst44~0_combout\;
\inst|ALT_INV_inst18~combout\ <= NOT \inst|inst18~combout\;
\inst|ALT_INV_inst10~combout\ <= NOT \inst|inst10~combout\;
\inst|ALT_INV_inst43~0_combout\ <= NOT \inst|inst43~0_combout\;
\inst|ALT_INV_inst17~combout\ <= NOT \inst|inst17~combout\;
\inst|ALT_INV_inst9~combout\ <= NOT \inst|inst9~combout\;
\inst|ALT_INV_inst42~0_combout\ <= NOT \inst|inst42~0_combout\;
\inst|ALT_INV_inst16~combout\ <= NOT \inst|inst16~combout\;
\inst|ALT_INV_inst8~combout\ <= NOT \inst|inst8~combout\;
\inst|ALT_INV_inst41~0_combout\ <= NOT \inst|inst41~0_combout\;
\ALT_INV_rtl~1_combout\ <= NOT \rtl~1_combout\;
\inst2|inst17|inst3|ALT_INV_inst1~combout\ <= NOT \inst2|inst17|inst3|inst1~combout\;
\inst2|inst9|inst4|ALT_INV_inst1~combout\ <= NOT \inst2|inst9|inst4|inst1~combout\;
\inst2|inst17|inst3|ALT_INV_inst1~0_combout\ <= NOT \inst2|inst17|inst3|inst1~0_combout\;
\ALT_INV_rtl~0_combout\ <= NOT \rtl~0_combout\;
\inst2|inst17|inst1|ALT_INV_inst1~0_combout\ <= NOT \inst2|inst17|inst1|inst1~0_combout\;
\inst2|inst9|inst5|ALT_INV_inst1~combout\ <= NOT \inst2|inst9|inst5|inst1~combout\;
\inst2|inst9|inst3|ALT_INV_inst4~0_combout\ <= NOT \inst2|inst9|inst3|inst4~0_combout\;
\inst2|inst17|inst2|ALT_INV_inst1~combout\ <= NOT \inst2|inst17|inst2|inst1~combout\;
\inst2|inst17|inst2|ALT_INV_inst1~0_combout\ <= NOT \inst2|inst17|inst2|inst1~0_combout\;
\inst2|inst17|inst1|ALT_INV_inst7~0_combout\ <= NOT \inst2|inst17|inst1|inst7~0_combout\;
\inst20|inst27|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst20|inst28|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\ALT_INV_inst7~combout\ <= NOT \inst7~combout\;
\inst20|inst26|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst20|inst26|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|ALT_INV_inst20~0_combout\ <= NOT \inst|inst20~0_combout\;
\inst|ALT_INV_inst44~2_combout\ <= NOT \inst|inst44~2_combout\;
\inst|ALT_INV_inst44~_emulated_q\ <= NOT \inst|inst44~_emulated_q\;
\inst|ALT_INV_inst43~2_combout\ <= NOT \inst|inst43~2_combout\;
\inst|ALT_INV_inst43~_emulated_q\ <= NOT \inst|inst43~_emulated_q\;
\inst|ALT_INV_inst42~2_combout\ <= NOT \inst|inst42~2_combout\;
\inst|ALT_INV_inst42~_emulated_q\ <= NOT \inst|inst42~_emulated_q\;
\inst|ALT_INV_inst41~2_combout\ <= NOT \inst|inst41~2_combout\;
\inst|ALT_INV_inst41~_emulated_q\ <= NOT \inst|inst41~_emulated_q\;
\inst4|ALT_INV_inst6~q\ <= NOT \inst4|inst6~q\;
\inst4|ALT_INV_inst20~q\ <= NOT \inst4|inst20~q\;
\inst4|ALT_INV_inst7~q\ <= NOT \inst4|inst7~q\;
\inst4|ALT_INV_inst5~q\ <= NOT \inst4|inst5~q\;
\inst3|ALT_INV_inst6~q\ <= NOT \inst3|inst6~q\;
\inst3|ALT_INV_inst20~q\ <= NOT \inst3|inst20~q\;
\inst3|ALT_INV_inst7~q\ <= NOT \inst3|inst7~q\;
\inst3|ALT_INV_inst5~q\ <= NOT \inst3|inst5~q\;
\inst|ALT_INV_inst47~q\ <= NOT \inst|inst47~q\;
\inst|ALT_INV_inst46~q\ <= NOT \inst|inst46~q\;
\inst|ALT_INV_inst45~q\ <= NOT \inst|inst45~q\;
\inst5|ALT_INV_counter\(1) <= NOT \inst5|counter\(1);
\inst5|ALT_INV_counter\(3) <= NOT \inst5|counter\(3);
\inst5|ALT_INV_counter\(4) <= NOT \inst5|counter\(4);
\inst5|ALT_INV_counter\(5) <= NOT \inst5|counter\(5);
\inst5|ALT_INV_counter\(2) <= NOT \inst5|counter\(2);
\inst5|ALT_INV_counter\(10) <= NOT \inst5|counter\(10);
\inst5|ALT_INV_counter\(11) <= NOT \inst5|counter\(11);
\inst5|ALT_INV_counter\(12) <= NOT \inst5|counter\(12);
\inst5|ALT_INV_counter\(13) <= NOT \inst5|counter\(13);
\inst5|ALT_INV_counter\(14) <= NOT \inst5|counter\(14);
\inst5|ALT_INV_counter\(15) <= NOT \inst5|counter\(15);
\inst5|ALT_INV_counter\(6) <= NOT \inst5|counter\(6);
\inst5|ALT_INV_counter\(7) <= NOT \inst5|counter\(7);
\inst5|ALT_INV_counter\(8) <= NOT \inst5|counter\(8);
\inst5|ALT_INV_counter\(9) <= NOT \inst5|counter\(9);
\inst5|ALT_INV_counter\(0) <= NOT \inst5|counter\(0);
\inst27|ALT_INV_counter\(12) <= NOT \inst27|counter\(12);
\inst27|ALT_INV_counter\(13) <= NOT \inst27|counter\(13);
\inst27|ALT_INV_counter\(14) <= NOT \inst27|counter\(14);
\inst27|ALT_INV_counter\(15) <= NOT \inst27|counter\(15);
\inst27|ALT_INV_counter\(0) <= NOT \inst27|counter\(0);
\inst27|ALT_INV_counter\(5) <= NOT \inst27|counter\(5);
\inst27|ALT_INV_counter\(6) <= NOT \inst27|counter\(6);
\inst27|ALT_INV_counter\(7) <= NOT \inst27|counter\(7);
\inst27|ALT_INV_counter\(8) <= NOT \inst27|counter\(8);
\inst27|ALT_INV_counter\(9) <= NOT \inst27|counter\(9);
\inst27|ALT_INV_counter\(10) <= NOT \inst27|counter\(10);
\inst27|ALT_INV_counter\(1) <= NOT \inst27|counter\(1);
\inst27|ALT_INV_counter\(2) <= NOT \inst27|counter\(2);
\inst27|ALT_INV_counter\(3) <= NOT \inst27|counter\(3);
\inst27|ALT_INV_counter\(4) <= NOT \inst27|counter\(4);
\inst27|ALT_INV_counter\(11) <= NOT \inst27|counter\(11);
\inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst1|altsyncram_component|auto_generated|q_a\(1);
\inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst1|altsyncram_component|auto_generated|q_a\(2);
\inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst1|altsyncram_component|auto_generated|q_a\(3);
\inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst1|altsyncram_component|auto_generated|q_a\(4);
\inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst1|altsyncram_component|auto_generated|q_a\(5);
\inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst1|altsyncram_component|auto_generated|q_a\(6);
\inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst1|altsyncram_component|auto_generated|q_a\(7);
\inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \inst1|altsyncram_component|auto_generated|q_a\(8);
\inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \inst1|altsyncram_component|auto_generated|q_a\(9);
\inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \inst1|altsyncram_component|auto_generated|q_a\(10);
\inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \inst1|altsyncram_component|auto_generated|q_a\(11);
\inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12) <= NOT \inst1|altsyncram_component|auto_generated|q_a\(12);
\inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(13) <= NOT \inst1|altsyncram_component|auto_generated|q_a\(13);
\inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(14) <= NOT \inst1|altsyncram_component|auto_generated|q_a\(14);
\inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(15) <= NOT \inst1|altsyncram_component|auto_generated|q_a\(15);
\inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst1|altsyncram_component|auto_generated|q_a\(0);

-- Location: IOOBUF_X0_Y18_N79
\LED0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst41~2_combout\,
	devoe => ww_devoe,
	o => ww_LED0);

-- Location: IOOBUF_X0_Y18_N96
\LED1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst42~2_combout\,
	devoe => ww_devoe,
	o => ww_LED1);

-- Location: IOOBUF_X0_Y18_N62
\LED2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst43~2_combout\,
	devoe => ww_devoe,
	o => ww_LED2);

-- Location: IOOBUF_X0_Y18_N45
\LED3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst44~2_combout\,
	devoe => ww_devoe,
	o => ww_LED3);

-- Location: IOOBUF_X0_Y19_N39
\LED4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst45~q\,
	devoe => ww_devoe,
	o => ww_LED4);

-- Location: IOOBUF_X0_Y19_N56
\LED5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst46~q\,
	devoe => ww_devoe,
	o => ww_LED5);

-- Location: IOOBUF_X0_Y19_N5
\LED6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst47~q\,
	devoe => ww_devoe,
	o => ww_LED6);

-- Location: IOOBUF_X0_Y19_N22
\LED7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst48~q\,
	devoe => ww_devoe,
	o => ww_LED7);

-- Location: IOOBUF_X46_Y0_N36
\DISPLAY0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|inst63~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY0(6));

-- Location: IOOBUF_X50_Y0_N53
\DISPLAY0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|inst13~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY0(5));

-- Location: IOOBUF_X48_Y0_N93
\DISPLAY0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|inst85~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY0(4));

-- Location: IOOBUF_X50_Y0_N36
\DISPLAY0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|inst33~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY0(3));

-- Location: IOOBUF_X48_Y0_N76
\DISPLAY0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|inst25~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY0(2));

-- Location: IOOBUF_X51_Y0_N36
\DISPLAY0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|inst82~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY0(1));

-- Location: IOOBUF_X52_Y0_N53
\DISPLAY0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|inst~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY0(0));

-- Location: IOOBUF_X51_Y0_N53
\DISPLAY1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst63~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY1(6));

-- Location: IOOBUF_X43_Y0_N53
\DISPLAY1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst13~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY1(5));

-- Location: IOOBUF_X38_Y0_N36
\DISPLAY1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst85~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY1(4));

-- Location: IOOBUF_X43_Y0_N36
\DISPLAY1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst33~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY1(3));

-- Location: IOOBUF_X44_Y0_N53
\DISPLAY1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst25~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY1(2));

-- Location: IOOBUF_X40_Y0_N93
\DISPLAY1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst82~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY1(1));

-- Location: IOOBUF_X44_Y0_N36
\DISPLAY1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|inst~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY1(0));

-- Location: IOOBUF_X40_Y0_N76
\DISPLAY2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst63~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY2(6));

-- Location: IOOBUF_X46_Y0_N53
\DISPLAY2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst13~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY2(5));

-- Location: IOOBUF_X38_Y0_N19
\DISPLAY2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst85~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY2(4));

-- Location: IOOBUF_X36_Y0_N19
\DISPLAY2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst33~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY2(3));

-- Location: IOOBUF_X22_Y0_N53
\DISPLAY2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst25~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY2(2));

-- Location: IOOBUF_X38_Y0_N53
\DISPLAY2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst82~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY2(1));

-- Location: IOOBUF_X48_Y0_N42
\DISPLAY2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY2(0));

-- Location: IOOBUF_X51_Y0_N19
\DISPLAY3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|inst63~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY3(6));

-- Location: IOOBUF_X51_Y0_N2
\DISPLAY3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|inst13~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY3(5));

-- Location: IOOBUF_X52_Y0_N2
\DISPLAY3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|inst85~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY3(4));

-- Location: IOOBUF_X46_Y0_N19
\DISPLAY3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|inst33~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY3(3));

-- Location: IOOBUF_X40_Y0_N42
\DISPLAY3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|inst25~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY3(2));

-- Location: IOOBUF_X46_Y0_N2
\DISPLAY3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|inst82~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY3(1));

-- Location: IOOBUF_X40_Y0_N59
\DISPLAY3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|inst~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY3(0));

-- Location: IOOBUF_X29_Y0_N19
\DISPLAY4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst63~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY4(6));

-- Location: IOOBUF_X36_Y0_N2
\DISPLAY4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst13~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY4(5));

-- Location: IOOBUF_X43_Y0_N2
\DISPLAY4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst85~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY4(4));

-- Location: IOOBUF_X52_Y0_N19
\DISPLAY4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst33~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY4(3));

-- Location: IOOBUF_X44_Y0_N19
\DISPLAY4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst25~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY4(2));

-- Location: IOOBUF_X48_Y0_N59
\DISPLAY4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst82~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY4(1));

-- Location: IOOBUF_X52_Y0_N36
\DISPLAY4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY4(0));

-- Location: IOOBUF_X44_Y0_N2
\DISPLAY5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst63~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY5(6));

-- Location: IOOBUF_X0_Y21_N39
\DISPLAY5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst13~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY5(5));

-- Location: IOOBUF_X0_Y21_N56
\DISPLAY5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst85~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY5(4));

-- Location: IOOBUF_X50_Y0_N19
\DISPLAY5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst33~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY5(3));

-- Location: IOOBUF_X43_Y0_N19
\DISPLAY5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst25~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY5(2));

-- Location: IOOBUF_X22_Y0_N19
\DISPLAY5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst82~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY5(1));

-- Location: IOOBUF_X29_Y0_N2
\DISPLAY5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst~0_combout\,
	devoe => ww_devoe,
	o => ww_DISPLAY5(0));

-- Location: IOIBUF_X33_Y0_N75
\In_clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_In_clock,
	o => \In_clock~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\clk_1mhz~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_1mhz,
	o => \clk_1mhz~input_o\);

-- Location: CLKCTRL_G6
\clk_1mhz~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk_1mhz~input_o\,
	outclk => \clk_1mhz~inputCLKENA0_outclk\);

-- Location: IOIBUF_X11_Y0_N35
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X32_Y2_N30
\inst5|outb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|outb~1_combout\ = ( \reset~input_o\ & ( \In_clock~input_o\ & ( \inst5|outb~1_combout\ ) ) ) # ( !\reset~input_o\ & ( \In_clock~input_o\ ) ) # ( \reset~input_o\ & ( !\In_clock~input_o\ & ( \inst5|outb~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_outb~1_combout\,
	datae => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_In_clock~input_o\,
	combout => \inst5|outb~1_combout\);

-- Location: LABCELL_X32_Y2_N54
\inst5|intermediate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|intermediate~1_combout\ = ( \In_clock~input_o\ & ( !\inst5|outb~1_combout\ ) ) # ( !\In_clock~input_o\ & ( \inst5|outb~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_outb~1_combout\,
	dataf => \ALT_INV_In_clock~input_o\,
	combout => \inst5|intermediate~1_combout\);

-- Location: FF_X32_Y2_N56
\inst5|intermediate~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|intermediate~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|intermediate~_emulated_q\);

-- Location: LABCELL_X32_Y2_N18
\inst5|intermediate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|intermediate~0_combout\ = ( \inst5|intermediate~_emulated_q\ & ( \inst5|outb~1_combout\ & ( (\In_clock~input_o\ & !\reset~input_o\) ) ) ) # ( !\inst5|intermediate~_emulated_q\ & ( \inst5|outb~1_combout\ & ( (\reset~input_o\) # (\In_clock~input_o\) 
-- ) ) ) # ( \inst5|intermediate~_emulated_q\ & ( !\inst5|outb~1_combout\ & ( (\reset~input_o\) # (\In_clock~input_o\) ) ) ) # ( !\inst5|intermediate~_emulated_q\ & ( !\inst5|outb~1_combout\ & ( (\In_clock~input_o\ & !\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111101011111010111110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_In_clock~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datae => \inst5|ALT_INV_intermediate~_emulated_q\,
	dataf => \inst5|ALT_INV_outb~1_combout\,
	combout => \inst5|intermediate~0_combout\);

-- Location: MLABCELL_X28_Y2_N0
\inst5|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~1_sumout\ = SUM(( \inst5|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \inst5|Add0~2\ = CARRY(( \inst5|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_counter\(0),
	cin => GND,
	sumout => \inst5|Add0~1_sumout\,
	cout => \inst5|Add0~2\);

-- Location: LABCELL_X32_Y2_N27
\inst5|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|always0~0_combout\ = ( \inst5|intermediate~0_combout\ & ( !\In_clock~input_o\ ) ) # ( !\inst5|intermediate~0_combout\ & ( \In_clock~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_In_clock~input_o\,
	dataf => \inst5|ALT_INV_intermediate~0_combout\,
	combout => \inst5|always0~0_combout\);

-- Location: FF_X28_Y2_N1
\inst5|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|Add0~1_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst5|always0~0_combout\,
	ena => \inst5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(0));

-- Location: MLABCELL_X28_Y2_N3
\inst5|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~61_sumout\ = SUM(( \inst5|counter\(1) ) + ( GND ) + ( \inst5|Add0~2\ ))
-- \inst5|Add0~62\ = CARRY(( \inst5|counter\(1) ) + ( GND ) + ( \inst5|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_counter\(1),
	cin => \inst5|Add0~2\,
	sumout => \inst5|Add0~61_sumout\,
	cout => \inst5|Add0~62\);

-- Location: FF_X28_Y2_N4
\inst5|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|Add0~61_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst5|always0~0_combout\,
	ena => \inst5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(1));

-- Location: MLABCELL_X28_Y2_N6
\inst5|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~45_sumout\ = SUM(( \inst5|counter\(2) ) + ( GND ) + ( \inst5|Add0~62\ ))
-- \inst5|Add0~46\ = CARRY(( \inst5|counter\(2) ) + ( GND ) + ( \inst5|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_counter\(2),
	cin => \inst5|Add0~62\,
	sumout => \inst5|Add0~45_sumout\,
	cout => \inst5|Add0~46\);

-- Location: FF_X28_Y2_N7
\inst5|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|Add0~45_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst5|always0~0_combout\,
	ena => \inst5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(2));

-- Location: MLABCELL_X28_Y2_N9
\inst5|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~57_sumout\ = SUM(( \inst5|counter\(3) ) + ( GND ) + ( \inst5|Add0~46\ ))
-- \inst5|Add0~58\ = CARRY(( \inst5|counter\(3) ) + ( GND ) + ( \inst5|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_counter\(3),
	cin => \inst5|Add0~46\,
	sumout => \inst5|Add0~57_sumout\,
	cout => \inst5|Add0~58\);

-- Location: FF_X28_Y2_N10
\inst5|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|Add0~57_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst5|always0~0_combout\,
	ena => \inst5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(3));

-- Location: MLABCELL_X28_Y2_N12
\inst5|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~53_sumout\ = SUM(( \inst5|counter\(4) ) + ( GND ) + ( \inst5|Add0~58\ ))
-- \inst5|Add0~54\ = CARRY(( \inst5|counter\(4) ) + ( GND ) + ( \inst5|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_counter\(4),
	cin => \inst5|Add0~58\,
	sumout => \inst5|Add0~53_sumout\,
	cout => \inst5|Add0~54\);

-- Location: FF_X28_Y2_N13
\inst5|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|Add0~53_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst5|always0~0_combout\,
	ena => \inst5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(4));

-- Location: MLABCELL_X28_Y2_N15
\inst5|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~49_sumout\ = SUM(( \inst5|counter\(5) ) + ( GND ) + ( \inst5|Add0~54\ ))
-- \inst5|Add0~50\ = CARRY(( \inst5|counter\(5) ) + ( GND ) + ( \inst5|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_counter\(5),
	cin => \inst5|Add0~54\,
	sumout => \inst5|Add0~49_sumout\,
	cout => \inst5|Add0~50\);

-- Location: FF_X28_Y2_N16
\inst5|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|Add0~49_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst5|always0~0_combout\,
	ena => \inst5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(5));

-- Location: MLABCELL_X28_Y2_N18
\inst5|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~17_sumout\ = SUM(( \inst5|counter\(6) ) + ( GND ) + ( \inst5|Add0~50\ ))
-- \inst5|Add0~18\ = CARRY(( \inst5|counter\(6) ) + ( GND ) + ( \inst5|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_counter\(6),
	cin => \inst5|Add0~50\,
	sumout => \inst5|Add0~17_sumout\,
	cout => \inst5|Add0~18\);

-- Location: FF_X28_Y2_N19
\inst5|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst5|always0~0_combout\,
	ena => \inst5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(6));

-- Location: MLABCELL_X28_Y2_N21
\inst5|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~13_sumout\ = SUM(( \inst5|counter\(7) ) + ( GND ) + ( \inst5|Add0~18\ ))
-- \inst5|Add0~14\ = CARRY(( \inst5|counter\(7) ) + ( GND ) + ( \inst5|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_counter\(7),
	cin => \inst5|Add0~18\,
	sumout => \inst5|Add0~13_sumout\,
	cout => \inst5|Add0~14\);

-- Location: FF_X28_Y2_N22
\inst5|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst5|always0~0_combout\,
	ena => \inst5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(7));

-- Location: MLABCELL_X28_Y2_N24
\inst5|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~9_sumout\ = SUM(( \inst5|counter\(8) ) + ( GND ) + ( \inst5|Add0~14\ ))
-- \inst5|Add0~10\ = CARRY(( \inst5|counter\(8) ) + ( GND ) + ( \inst5|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_counter\(8),
	cin => \inst5|Add0~14\,
	sumout => \inst5|Add0~9_sumout\,
	cout => \inst5|Add0~10\);

-- Location: FF_X28_Y2_N25
\inst5|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|Add0~9_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst5|always0~0_combout\,
	ena => \inst5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(8));

-- Location: MLABCELL_X28_Y2_N27
\inst5|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~5_sumout\ = SUM(( \inst5|counter\(9) ) + ( GND ) + ( \inst5|Add0~10\ ))
-- \inst5|Add0~6\ = CARRY(( \inst5|counter\(9) ) + ( GND ) + ( \inst5|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_counter\(9),
	cin => \inst5|Add0~10\,
	sumout => \inst5|Add0~5_sumout\,
	cout => \inst5|Add0~6\);

-- Location: FF_X28_Y2_N28
\inst5|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst5|always0~0_combout\,
	ena => \inst5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(9));

-- Location: MLABCELL_X28_Y2_N30
\inst5|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~41_sumout\ = SUM(( \inst5|counter\(10) ) + ( GND ) + ( \inst5|Add0~6\ ))
-- \inst5|Add0~42\ = CARRY(( \inst5|counter\(10) ) + ( GND ) + ( \inst5|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_counter\(10),
	cin => \inst5|Add0~6\,
	sumout => \inst5|Add0~41_sumout\,
	cout => \inst5|Add0~42\);

-- Location: FF_X28_Y2_N32
\inst5|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|Add0~41_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst5|always0~0_combout\,
	ena => \inst5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(10));

-- Location: MLABCELL_X28_Y2_N33
\inst5|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~37_sumout\ = SUM(( \inst5|counter\(11) ) + ( GND ) + ( \inst5|Add0~42\ ))
-- \inst5|Add0~38\ = CARRY(( \inst5|counter\(11) ) + ( GND ) + ( \inst5|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_counter\(11),
	cin => \inst5|Add0~42\,
	sumout => \inst5|Add0~37_sumout\,
	cout => \inst5|Add0~38\);

-- Location: FF_X28_Y2_N35
\inst5|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|Add0~37_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst5|always0~0_combout\,
	ena => \inst5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(11));

-- Location: MLABCELL_X28_Y2_N36
\inst5|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~33_sumout\ = SUM(( \inst5|counter\(12) ) + ( GND ) + ( \inst5|Add0~38\ ))
-- \inst5|Add0~34\ = CARRY(( \inst5|counter\(12) ) + ( GND ) + ( \inst5|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_counter\(12),
	cin => \inst5|Add0~38\,
	sumout => \inst5|Add0~33_sumout\,
	cout => \inst5|Add0~34\);

-- Location: FF_X28_Y2_N38
\inst5|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|Add0~33_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst5|always0~0_combout\,
	ena => \inst5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(12));

-- Location: MLABCELL_X28_Y2_N39
\inst5|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~29_sumout\ = SUM(( \inst5|counter\(13) ) + ( GND ) + ( \inst5|Add0~34\ ))
-- \inst5|Add0~30\ = CARRY(( \inst5|counter\(13) ) + ( GND ) + ( \inst5|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_counter\(13),
	cin => \inst5|Add0~34\,
	sumout => \inst5|Add0~29_sumout\,
	cout => \inst5|Add0~30\);

-- Location: FF_X28_Y2_N41
\inst5|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst5|always0~0_combout\,
	ena => \inst5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(13));

-- Location: MLABCELL_X28_Y2_N42
\inst5|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~25_sumout\ = SUM(( \inst5|counter\(14) ) + ( GND ) + ( \inst5|Add0~30\ ))
-- \inst5|Add0~26\ = CARRY(( \inst5|counter\(14) ) + ( GND ) + ( \inst5|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_counter\(14),
	cin => \inst5|Add0~30\,
	sumout => \inst5|Add0~25_sumout\,
	cout => \inst5|Add0~26\);

-- Location: FF_X28_Y2_N44
\inst5|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst5|always0~0_combout\,
	ena => \inst5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(14));

-- Location: MLABCELL_X28_Y2_N45
\inst5|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~21_sumout\ = SUM(( \inst5|counter\(15) ) + ( GND ) + ( \inst5|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_counter\(15),
	cin => \inst5|Add0~26\,
	sumout => \inst5|Add0~21_sumout\);

-- Location: FF_X28_Y2_N47
\inst5|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst5|always0~0_combout\,
	ena => \inst5|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(15));

-- Location: MLABCELL_X28_Y2_N54
\inst5|outb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|outb~6_combout\ = ( \inst5|counter\(15) & ( \inst5|counter\(14) & ( (\inst5|counter\(12) & (\inst5|counter\(13) & (\inst5|counter\(11) & \inst5|counter\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_counter\(12),
	datab => \inst5|ALT_INV_counter\(13),
	datac => \inst5|ALT_INV_counter\(11),
	datad => \inst5|ALT_INV_counter\(10),
	datae => \inst5|ALT_INV_counter\(15),
	dataf => \inst5|ALT_INV_counter\(14),
	combout => \inst5|outb~6_combout\);

-- Location: LABCELL_X29_Y2_N36
\inst5|outb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|outb~5_combout\ = ( \inst5|counter\(7) & ( \inst5|counter\(9) & ( (\inst5|counter\(6) & \inst5|counter\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_counter\(6),
	datad => \inst5|ALT_INV_counter\(8),
	datae => \inst5|ALT_INV_counter\(7),
	dataf => \inst5|ALT_INV_counter\(9),
	combout => \inst5|outb~5_combout\);

-- Location: LABCELL_X29_Y2_N45
\inst5|outb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|outb~7_combout\ = ( \inst5|counter\(4) & ( \inst5|counter\(2) & ( (\inst5|counter\(3) & (\inst5|counter\(5) & \inst5|counter\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_counter\(3),
	datac => \inst5|ALT_INV_counter\(5),
	datad => \inst5|ALT_INV_counter\(1),
	datae => \inst5|ALT_INV_counter\(4),
	dataf => \inst5|ALT_INV_counter\(2),
	combout => \inst5|outb~7_combout\);

-- Location: MLABCELL_X28_Y2_N48
\inst5|outb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|outb~8_combout\ = ( \inst5|outb~5_combout\ & ( \inst5|outb~7_combout\ & ( (!\inst5|outb~6_combout\) # ((!\inst5|counter\(0)) # (!\inst5|intermediate~0_combout\ $ (!\In_clock~input_o\))) ) ) ) # ( !\inst5|outb~5_combout\ & ( \inst5|outb~7_combout\ ) 
-- ) # ( \inst5|outb~5_combout\ & ( !\inst5|outb~7_combout\ ) ) # ( !\inst5|outb~5_combout\ & ( !\inst5|outb~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_intermediate~0_combout\,
	datab => \ALT_INV_In_clock~input_o\,
	datac => \inst5|ALT_INV_outb~6_combout\,
	datad => \inst5|ALT_INV_counter\(0),
	datae => \inst5|ALT_INV_outb~5_combout\,
	dataf => \inst5|ALT_INV_outb~7_combout\,
	combout => \inst5|outb~8_combout\);

-- Location: LABCELL_X32_Y2_N12
\inst5|outb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|outb~3_combout\ = ( \inst5|outb~8_combout\ & ( \inst5|intermediate~0_combout\ & ( !\inst5|outb~2_combout\ $ (!\inst5|outb~1_combout\) ) ) ) # ( !\inst5|outb~8_combout\ & ( \inst5|intermediate~0_combout\ & ( !\inst5|outb~1_combout\ ) ) ) # ( 
-- \inst5|outb~8_combout\ & ( !\inst5|intermediate~0_combout\ & ( !\inst5|outb~2_combout\ $ (!\inst5|outb~1_combout\) ) ) ) # ( !\inst5|outb~8_combout\ & ( !\inst5|intermediate~0_combout\ & ( \inst5|outb~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011011001100110011011001100110011000110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_outb~2_combout\,
	datab => \inst5|ALT_INV_outb~1_combout\,
	datae => \inst5|ALT_INV_outb~8_combout\,
	dataf => \inst5|ALT_INV_intermediate~0_combout\,
	combout => \inst5|outb~3_combout\);

-- Location: FF_X32_Y2_N14
\inst5|outb~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst5|outb~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|outb~_emulated_q\);

-- Location: LABCELL_X32_Y2_N45
\inst5|outb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|outb~2_combout\ = ( \reset~input_o\ & ( \inst5|outb~1_combout\ & ( !\inst5|outb~_emulated_q\ ) ) ) # ( !\reset~input_o\ & ( \inst5|outb~1_combout\ & ( \In_clock~input_o\ ) ) ) # ( \reset~input_o\ & ( !\inst5|outb~1_combout\ & ( 
-- \inst5|outb~_emulated_q\ ) ) ) # ( !\reset~input_o\ & ( !\inst5|outb~1_combout\ & ( \In_clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011001100111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_In_clock~input_o\,
	datac => \inst5|ALT_INV_outb~_emulated_q\,
	datae => \ALT_INV_reset~input_o\,
	dataf => \inst5|ALT_INV_outb~1_combout\,
	combout => \inst5|outb~2_combout\);

-- Location: LABCELL_X17_Y2_N54
\inst|inst45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst45~0_combout\ = ( !\inst|inst45~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_inst45~q\,
	combout => \inst|inst45~0_combout\);

-- Location: LABCELL_X17_Y2_N0
\inst|inst45~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst45~feeder_combout\ = ( \inst|inst45~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_inst45~0_combout\,
	combout => \inst|inst45~feeder_combout\);

-- Location: IOIBUF_X33_Y0_N41
\Master_clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Master_clear,
	o => \Master_clear~input_o\);

-- Location: LABCELL_X14_Y1_N18
\inst27|outb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|outb~1_combout\ = ( \inst27|outb~1_combout\ & ( (\reset~input_o\) # (\Master_clear~input_o\) ) ) # ( !\inst27|outb~1_combout\ & ( (\Master_clear~input_o\ & !\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Master_clear~input_o\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \inst27|ALT_INV_outb~1_combout\,
	combout => \inst27|outb~1_combout\);

-- Location: LABCELL_X14_Y1_N33
\inst27|intermediate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|intermediate~1_combout\ = ( \inst27|outb~1_combout\ & ( !\Master_clear~input_o\ ) ) # ( !\inst27|outb~1_combout\ & ( \Master_clear~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Master_clear~input_o\,
	dataf => \inst27|ALT_INV_outb~1_combout\,
	combout => \inst27|intermediate~1_combout\);

-- Location: FF_X14_Y1_N35
\inst27|intermediate~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|intermediate~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|intermediate~_emulated_q\);

-- Location: LABCELL_X14_Y1_N24
\inst27|intermediate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|intermediate~0_combout\ = ( \Master_clear~input_o\ & ( \inst27|outb~1_combout\ & ( (!\reset~input_o\) # (!\inst27|intermediate~_emulated_q\) ) ) ) # ( !\Master_clear~input_o\ & ( \inst27|outb~1_combout\ & ( (\reset~input_o\ & 
-- !\inst27|intermediate~_emulated_q\) ) ) ) # ( \Master_clear~input_o\ & ( !\inst27|outb~1_combout\ & ( (!\reset~input_o\) # (\inst27|intermediate~_emulated_q\) ) ) ) # ( !\Master_clear~input_o\ & ( !\inst27|outb~1_combout\ & ( (\reset~input_o\ & 
-- \inst27|intermediate~_emulated_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111101010000010100001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \inst27|ALT_INV_intermediate~_emulated_q\,
	datae => \ALT_INV_Master_clear~input_o\,
	dataf => \inst27|ALT_INV_outb~1_combout\,
	combout => \inst27|intermediate~0_combout\);

-- Location: LABCELL_X14_Y2_N0
\inst27|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~45_sumout\ = SUM(( \inst27|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \inst27|Add0~46\ = CARRY(( \inst27|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_counter\(0),
	cin => GND,
	sumout => \inst27|Add0~45_sumout\,
	cout => \inst27|Add0~46\);

-- Location: LABCELL_X14_Y1_N15
\inst27|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|always0~0_combout\ = ( \inst27|intermediate~0_combout\ & ( !\Master_clear~input_o\ ) ) # ( !\inst27|intermediate~0_combout\ & ( \Master_clear~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Master_clear~input_o\,
	dataf => \inst27|ALT_INV_intermediate~0_combout\,
	combout => \inst27|always0~0_combout\);

-- Location: FF_X14_Y2_N1
\inst27|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|Add0~45_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst27|always0~0_combout\,
	ena => \inst27|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|counter\(0));

-- Location: LABCELL_X14_Y2_N3
\inst27|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~17_sumout\ = SUM(( \inst27|counter\(1) ) + ( GND ) + ( \inst27|Add0~46\ ))
-- \inst27|Add0~18\ = CARRY(( \inst27|counter\(1) ) + ( GND ) + ( \inst27|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_counter\(1),
	cin => \inst27|Add0~46\,
	sumout => \inst27|Add0~17_sumout\,
	cout => \inst27|Add0~18\);

-- Location: FF_X14_Y2_N4
\inst27|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst27|always0~0_combout\,
	ena => \inst27|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|counter\(1));

-- Location: LABCELL_X14_Y2_N6
\inst27|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~13_sumout\ = SUM(( \inst27|counter\(2) ) + ( GND ) + ( \inst27|Add0~18\ ))
-- \inst27|Add0~14\ = CARRY(( \inst27|counter\(2) ) + ( GND ) + ( \inst27|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_counter\(2),
	cin => \inst27|Add0~18\,
	sumout => \inst27|Add0~13_sumout\,
	cout => \inst27|Add0~14\);

-- Location: FF_X14_Y2_N7
\inst27|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst27|always0~0_combout\,
	ena => \inst27|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|counter\(2));

-- Location: LABCELL_X14_Y2_N9
\inst27|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~9_sumout\ = SUM(( \inst27|counter\(3) ) + ( GND ) + ( \inst27|Add0~14\ ))
-- \inst27|Add0~10\ = CARRY(( \inst27|counter\(3) ) + ( GND ) + ( \inst27|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_counter\(3),
	cin => \inst27|Add0~14\,
	sumout => \inst27|Add0~9_sumout\,
	cout => \inst27|Add0~10\);

-- Location: FF_X14_Y2_N11
\inst27|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|Add0~9_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst27|always0~0_combout\,
	ena => \inst27|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|counter\(3));

-- Location: LABCELL_X14_Y2_N12
\inst27|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~5_sumout\ = SUM(( \inst27|counter\(4) ) + ( GND ) + ( \inst27|Add0~10\ ))
-- \inst27|Add0~6\ = CARRY(( \inst27|counter\(4) ) + ( GND ) + ( \inst27|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_counter\(4),
	cin => \inst27|Add0~10\,
	sumout => \inst27|Add0~5_sumout\,
	cout => \inst27|Add0~6\);

-- Location: FF_X14_Y2_N13
\inst27|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst27|always0~0_combout\,
	ena => \inst27|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|counter\(4));

-- Location: LABCELL_X14_Y2_N15
\inst27|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~41_sumout\ = SUM(( \inst27|counter\(5) ) + ( GND ) + ( \inst27|Add0~6\ ))
-- \inst27|Add0~42\ = CARRY(( \inst27|counter\(5) ) + ( GND ) + ( \inst27|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_counter\(5),
	cin => \inst27|Add0~6\,
	sumout => \inst27|Add0~41_sumout\,
	cout => \inst27|Add0~42\);

-- Location: FF_X14_Y2_N17
\inst27|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|Add0~41_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst27|always0~0_combout\,
	ena => \inst27|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|counter\(5));

-- Location: LABCELL_X14_Y2_N18
\inst27|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~37_sumout\ = SUM(( \inst27|counter\(6) ) + ( GND ) + ( \inst27|Add0~42\ ))
-- \inst27|Add0~38\ = CARRY(( \inst27|counter\(6) ) + ( GND ) + ( \inst27|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_counter\(6),
	cin => \inst27|Add0~42\,
	sumout => \inst27|Add0~37_sumout\,
	cout => \inst27|Add0~38\);

-- Location: FF_X14_Y2_N19
\inst27|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|Add0~37_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst27|always0~0_combout\,
	ena => \inst27|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|counter\(6));

-- Location: LABCELL_X14_Y2_N21
\inst27|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~33_sumout\ = SUM(( \inst27|counter\(7) ) + ( GND ) + ( \inst27|Add0~38\ ))
-- \inst27|Add0~34\ = CARRY(( \inst27|counter\(7) ) + ( GND ) + ( \inst27|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_counter\(7),
	cin => \inst27|Add0~38\,
	sumout => \inst27|Add0~33_sumout\,
	cout => \inst27|Add0~34\);

-- Location: FF_X14_Y2_N23
\inst27|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|Add0~33_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst27|always0~0_combout\,
	ena => \inst27|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|counter\(7));

-- Location: LABCELL_X14_Y2_N24
\inst27|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~29_sumout\ = SUM(( \inst27|counter\(8) ) + ( GND ) + ( \inst27|Add0~34\ ))
-- \inst27|Add0~30\ = CARRY(( \inst27|counter\(8) ) + ( GND ) + ( \inst27|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_counter\(8),
	cin => \inst27|Add0~34\,
	sumout => \inst27|Add0~29_sumout\,
	cout => \inst27|Add0~30\);

-- Location: FF_X14_Y2_N26
\inst27|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst27|always0~0_combout\,
	ena => \inst27|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|counter\(8));

-- Location: LABCELL_X14_Y2_N27
\inst27|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~25_sumout\ = SUM(( \inst27|counter\(9) ) + ( GND ) + ( \inst27|Add0~30\ ))
-- \inst27|Add0~26\ = CARRY(( \inst27|counter\(9) ) + ( GND ) + ( \inst27|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_counter\(9),
	cin => \inst27|Add0~30\,
	sumout => \inst27|Add0~25_sumout\,
	cout => \inst27|Add0~26\);

-- Location: FF_X14_Y2_N29
\inst27|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst27|always0~0_combout\,
	ena => \inst27|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|counter\(9));

-- Location: LABCELL_X14_Y2_N30
\inst27|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~21_sumout\ = SUM(( \inst27|counter\(10) ) + ( GND ) + ( \inst27|Add0~26\ ))
-- \inst27|Add0~22\ = CARRY(( \inst27|counter\(10) ) + ( GND ) + ( \inst27|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_counter\(10),
	cin => \inst27|Add0~26\,
	sumout => \inst27|Add0~21_sumout\,
	cout => \inst27|Add0~22\);

-- Location: FF_X14_Y2_N32
\inst27|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst27|always0~0_combout\,
	ena => \inst27|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|counter\(10));

-- Location: LABCELL_X14_Y2_N48
\inst27|outb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|outb~6_combout\ = ( \inst27|counter\(9) & ( \inst27|counter\(10) & ( (\inst27|counter\(8) & (\inst27|counter\(5) & (\inst27|counter\(7) & \inst27|counter\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_counter\(8),
	datab => \inst27|ALT_INV_counter\(5),
	datac => \inst27|ALT_INV_counter\(7),
	datad => \inst27|ALT_INV_counter\(6),
	datae => \inst27|ALT_INV_counter\(9),
	dataf => \inst27|ALT_INV_counter\(10),
	combout => \inst27|outb~6_combout\);

-- Location: LABCELL_X14_Y2_N33
\inst27|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~1_sumout\ = SUM(( \inst27|counter\(11) ) + ( GND ) + ( \inst27|Add0~22\ ))
-- \inst27|Add0~2\ = CARRY(( \inst27|counter\(11) ) + ( GND ) + ( \inst27|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_counter\(11),
	cin => \inst27|Add0~22\,
	sumout => \inst27|Add0~1_sumout\,
	cout => \inst27|Add0~2\);

-- Location: FF_X14_Y2_N34
\inst27|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|Add0~1_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst27|always0~0_combout\,
	ena => \inst27|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|counter\(11));

-- Location: LABCELL_X14_Y2_N36
\inst27|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~61_sumout\ = SUM(( \inst27|counter\(12) ) + ( GND ) + ( \inst27|Add0~2\ ))
-- \inst27|Add0~62\ = CARRY(( \inst27|counter\(12) ) + ( GND ) + ( \inst27|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_counter\(12),
	cin => \inst27|Add0~2\,
	sumout => \inst27|Add0~61_sumout\,
	cout => \inst27|Add0~62\);

-- Location: FF_X14_Y2_N37
\inst27|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|Add0~61_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst27|always0~0_combout\,
	ena => \inst27|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|counter\(12));

-- Location: LABCELL_X14_Y2_N39
\inst27|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~57_sumout\ = SUM(( \inst27|counter\(13) ) + ( GND ) + ( \inst27|Add0~62\ ))
-- \inst27|Add0~58\ = CARRY(( \inst27|counter\(13) ) + ( GND ) + ( \inst27|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_counter\(13),
	cin => \inst27|Add0~62\,
	sumout => \inst27|Add0~57_sumout\,
	cout => \inst27|Add0~58\);

-- Location: FF_X14_Y2_N41
\inst27|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|Add0~57_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst27|always0~0_combout\,
	ena => \inst27|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|counter\(13));

-- Location: LABCELL_X14_Y2_N42
\inst27|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~53_sumout\ = SUM(( \inst27|counter\(14) ) + ( GND ) + ( \inst27|Add0~58\ ))
-- \inst27|Add0~54\ = CARRY(( \inst27|counter\(14) ) + ( GND ) + ( \inst27|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_counter\(14),
	cin => \inst27|Add0~58\,
	sumout => \inst27|Add0~53_sumout\,
	cout => \inst27|Add0~54\);

-- Location: FF_X14_Y2_N43
\inst27|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|Add0~53_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst27|always0~0_combout\,
	ena => \inst27|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|counter\(14));

-- Location: LABCELL_X14_Y2_N45
\inst27|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~49_sumout\ = SUM(( \inst27|counter\(15) ) + ( GND ) + ( \inst27|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_counter\(15),
	cin => \inst27|Add0~54\,
	sumout => \inst27|Add0~49_sumout\);

-- Location: FF_X14_Y2_N46
\inst27|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|Add0~49_sumout\,
	clrn => \reset~input_o\,
	sclr => \inst27|always0~0_combout\,
	ena => \inst27|outb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|counter\(15));

-- Location: MLABCELL_X13_Y2_N33
\inst27|outb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|outb~7_combout\ = ( \inst27|counter\(15) & ( (\inst27|counter\(14) & (\inst27|counter\(12) & (\inst27|counter\(13) & \inst27|counter\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_counter\(14),
	datab => \inst27|ALT_INV_counter\(12),
	datac => \inst27|ALT_INV_counter\(13),
	datad => \inst27|ALT_INV_counter\(0),
	dataf => \inst27|ALT_INV_counter\(15),
	combout => \inst27|outb~7_combout\);

-- Location: LABCELL_X16_Y2_N45
\inst27|outb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|outb~5_combout\ = ( \inst27|counter\(1) & ( \inst27|counter\(3) & ( (\inst27|counter\(4) & \inst27|counter\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_counter\(4),
	datad => \inst27|ALT_INV_counter\(2),
	datae => \inst27|ALT_INV_counter\(1),
	dataf => \inst27|ALT_INV_counter\(3),
	combout => \inst27|outb~5_combout\);

-- Location: LABCELL_X14_Y2_N54
\inst27|outb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|outb~8_combout\ = ( \inst27|outb~7_combout\ & ( \inst27|outb~5_combout\ & ( (!\inst27|outb~6_combout\) # ((!\inst27|counter\(11)) # (!\Master_clear~input_o\ $ (!\inst27|intermediate~0_combout\))) ) ) ) # ( !\inst27|outb~7_combout\ & ( 
-- \inst27|outb~5_combout\ ) ) # ( \inst27|outb~7_combout\ & ( !\inst27|outb~5_combout\ ) ) # ( !\inst27|outb~7_combout\ & ( !\inst27|outb~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Master_clear~input_o\,
	datab => \inst27|ALT_INV_intermediate~0_combout\,
	datac => \inst27|ALT_INV_outb~6_combout\,
	datad => \inst27|ALT_INV_counter\(11),
	datae => \inst27|ALT_INV_outb~7_combout\,
	dataf => \inst27|ALT_INV_outb~5_combout\,
	combout => \inst27|outb~8_combout\);

-- Location: LABCELL_X10_Y2_N0
\inst27|outb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|outb~3_combout\ = ( \inst27|outb~8_combout\ & ( \inst27|outb~2_combout\ & ( !\inst27|outb~1_combout\ ) ) ) # ( !\inst27|outb~8_combout\ & ( \inst27|outb~2_combout\ & ( !\inst27|intermediate~0_combout\ $ (!\inst27|outb~1_combout\) ) ) ) # ( 
-- \inst27|outb~8_combout\ & ( !\inst27|outb~2_combout\ & ( \inst27|outb~1_combout\ ) ) ) # ( !\inst27|outb~8_combout\ & ( !\inst27|outb~2_combout\ & ( !\inst27|intermediate~0_combout\ $ (!\inst27|outb~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010000000001111111101010101101010101111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_intermediate~0_combout\,
	datad => \inst27|ALT_INV_outb~1_combout\,
	datae => \inst27|ALT_INV_outb~8_combout\,
	dataf => \inst27|ALT_INV_outb~2_combout\,
	combout => \inst27|outb~3_combout\);

-- Location: FF_X10_Y2_N2
\inst27|outb~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputCLKENA0_outclk\,
	d => \inst27|outb~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|outb~_emulated_q\);

-- Location: LABCELL_X10_Y2_N9
\inst27|outb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|outb~2_combout\ = ( \reset~input_o\ & ( !\inst27|outb~1_combout\ $ (!\inst27|outb~_emulated_q\) ) ) # ( !\reset~input_o\ & ( \Master_clear~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst27|ALT_INV_outb~1_combout\,
	datac => \ALT_INV_Master_clear~input_o\,
	datad => \inst27|ALT_INV_outb~_emulated_q\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \inst27|outb~2_combout\);

-- Location: LABCELL_X16_Y2_N6
\inst|inst20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst20~0_combout\ = ( \inst27|outb~2_combout\ & ( \inst1|altsyncram_component|auto_generated|q_a\(11) ) ) # ( !\inst27|outb~2_combout\ & ( \inst1|altsyncram_component|auto_generated|q_a\(11) ) ) # ( \inst27|outb~2_combout\ & ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst27|ALT_INV_outb~2_combout\,
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \inst|inst20~0_combout\);

-- Location: FF_X17_Y2_N2
\inst|inst45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_inst44~2_combout\,
	d => \inst|inst45~feeder_combout\,
	clrn => \inst|ALT_INV_inst20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst45~q\);

-- Location: LABCELL_X16_Y2_N30
\inst|inst46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst46~0_combout\ = !\inst|inst46~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_inst46~q\,
	combout => \inst|inst46~0_combout\);

-- Location: FF_X16_Y2_N29
\inst|inst46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_inst45~q\,
	asdata => \inst|inst46~0_combout\,
	clrn => \inst|ALT_INV_inst20~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst46~q\);

-- Location: LABCELL_X16_Y2_N57
\inst|inst47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst47~0_combout\ = !\inst|inst47~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_inst47~q\,
	combout => \inst|inst47~0_combout\);

-- Location: FF_X16_Y2_N50
\inst|inst47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_inst46~q\,
	asdata => \inst|inst47~0_combout\,
	clrn => \inst|ALT_INV_inst20~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst47~q\);

-- Location: FF_X12_Y2_N20
\inst|inst48~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_inst47~q\,
	asdata => \inst|inst48~0_combout\,
	clrn => \inst|ALT_INV_inst20~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst48~DUPLICATE_q\);

-- Location: LABCELL_X12_Y2_N3
\inst|inst48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst48~0_combout\ = ( !\inst|inst48~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_inst48~DUPLICATE_q\,
	combout => \inst|inst48~0_combout\);

-- Location: FF_X12_Y2_N19
\inst|inst48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_inst47~q\,
	asdata => \inst|inst48~0_combout\,
	clrn => \inst|ALT_INV_inst20~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst48~q\);

-- Location: M10K_X11_Y2_N0
\inst1|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000600306200093020610106302090020000000000000000000000C0D0040009003060020900206305062010910206004",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom:inst1|altsyncram:altsyncram_component|altsyncram_c224:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst5|outb~2_combout\,
	portaaddr => \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X12_Y2_N15
\inst|inst11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst11~combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(3) & ( (\inst1|altsyncram_component|auto_generated|q_a\(11) & \inst1|altsyncram_component|auto_generated|q_a\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \inst|inst11~combout\);

-- Location: LABCELL_X12_Y2_N27
\inst|inst19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst19~combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(11) & ( \inst27|outb~2_combout\ ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(11) & ( \inst27|outb~2_combout\ ) ) # ( \inst1|altsyncram_component|auto_generated|q_a\(11) 
-- & ( !\inst27|outb~2_combout\ & ( (!\inst1|altsyncram_component|auto_generated|q_a\(3)) # (!\inst1|altsyncram_component|auto_generated|q_a\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \inst27|ALT_INV_outb~2_combout\,
	combout => \inst|inst19~combout\);

-- Location: LABCELL_X12_Y2_N0
\inst|inst44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst44~1_combout\ = (!\inst|inst19~combout\ & ((\inst|inst44~1_combout\) # (\inst|inst11~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst11~combout\,
	datac => \inst|ALT_INV_inst19~combout\,
	datad => \inst|ALT_INV_inst44~1_combout\,
	combout => \inst|inst44~1_combout\);

-- Location: LABCELL_X12_Y2_N42
\inst|inst44~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst44~3_combout\ = ( \inst|inst44~2_combout\ & ( \inst|inst44~1_combout\ ) ) # ( !\inst|inst44~2_combout\ & ( !\inst|inst44~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_inst44~1_combout\,
	dataf => \inst|ALT_INV_inst44~2_combout\,
	combout => \inst|inst44~3_combout\);

-- Location: LABCELL_X12_Y2_N45
\inst|inst44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst44~0_combout\ = ( \inst|inst19~combout\ ) # ( !\inst|inst19~combout\ & ( \inst|inst11~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_inst11~combout\,
	dataf => \inst|ALT_INV_inst19~combout\,
	combout => \inst|inst44~0_combout\);

-- Location: FF_X12_Y2_N44
\inst|inst44~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_inst43~2_combout\,
	d => \inst|inst44~3_combout\,
	clrn => \inst|ALT_INV_inst44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst44~_emulated_q\);

-- Location: LABCELL_X12_Y2_N6
\inst|inst44~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst44~2_combout\ = ( \inst|inst11~combout\ & ( !\inst|inst19~combout\ ) ) # ( !\inst|inst11~combout\ & ( (!\inst|inst19~combout\ & (!\inst|inst44~_emulated_q\ $ (!\inst|inst44~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_inst44~_emulated_q\,
	datac => \inst|ALT_INV_inst44~1_combout\,
	datad => \inst|ALT_INV_inst19~combout\,
	dataf => \inst|ALT_INV_inst11~combout\,
	combout => \inst|inst44~2_combout\);

-- Location: LABCELL_X10_Y2_N33
\inst|inst10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst10~combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(10) & ( (\inst1|altsyncram_component|auto_generated|q_a\(11) & \inst1|altsyncram_component|auto_generated|q_a\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst|inst10~combout\);

-- Location: LABCELL_X10_Y2_N39
\inst|inst18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst18~combout\ = ( \inst27|outb~2_combout\ ) # ( !\inst27|outb~2_combout\ & ( (\inst1|altsyncram_component|auto_generated|q_a\(11) & ((!\inst1|altsyncram_component|auto_generated|q_a\(10)) # (!\inst1|altsyncram_component|auto_generated|q_a\(2)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \inst27|ALT_INV_outb~2_combout\,
	combout => \inst|inst18~combout\);

-- Location: MLABCELL_X9_Y2_N51
\inst|inst43~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst43~1_combout\ = ( !\inst|inst18~combout\ & ( \inst|inst43~1_combout\ ) ) # ( !\inst|inst18~combout\ & ( !\inst|inst43~1_combout\ & ( \inst|inst10~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_inst10~combout\,
	datae => \inst|ALT_INV_inst18~combout\,
	dataf => \inst|ALT_INV_inst43~1_combout\,
	combout => \inst|inst43~1_combout\);

-- Location: MLABCELL_X9_Y2_N21
\inst|inst43~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst43~3_combout\ = ( \inst|inst43~2_combout\ & ( \inst|inst43~1_combout\ ) ) # ( !\inst|inst43~2_combout\ & ( !\inst|inst43~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst43~1_combout\,
	dataf => \inst|ALT_INV_inst43~2_combout\,
	combout => \inst|inst43~3_combout\);

-- Location: MLABCELL_X9_Y2_N30
\inst|inst43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst43~0_combout\ = ( \inst|inst18~combout\ & ( \inst|inst10~combout\ ) ) # ( !\inst|inst18~combout\ & ( \inst|inst10~combout\ ) ) # ( \inst|inst18~combout\ & ( !\inst|inst10~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_inst18~combout\,
	dataf => \inst|ALT_INV_inst10~combout\,
	combout => \inst|inst43~0_combout\);

-- Location: FF_X9_Y2_N22
\inst|inst43~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_inst42~2_combout\,
	d => \inst|inst43~3_combout\,
	clrn => \inst|ALT_INV_inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst43~_emulated_q\);

-- Location: LABCELL_X10_Y2_N48
\inst|inst43~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst43~2_combout\ = ( !\inst|inst18~combout\ & ( (!\inst|inst43~_emulated_q\ $ (!\inst|inst43~1_combout\)) # (\inst|inst10~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111101101111011011110110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_inst43~_emulated_q\,
	datab => \inst|ALT_INV_inst43~1_combout\,
	datac => \inst|ALT_INV_inst10~combout\,
	dataf => \inst|ALT_INV_inst18~combout\,
	combout => \inst|inst43~2_combout\);

-- Location: LABCELL_X10_Y2_N15
\inst|inst9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst9~combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(10) & ( (\inst1|altsyncram_component|auto_generated|q_a\(1) & \inst1|altsyncram_component|auto_generated|q_a\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst|inst9~combout\);

-- Location: LABCELL_X10_Y2_N57
\inst|inst17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst17~combout\ = ( \inst27|outb~2_combout\ ) # ( !\inst27|outb~2_combout\ & ( (\inst1|altsyncram_component|auto_generated|q_a\(11) & ((!\inst1|altsyncram_component|auto_generated|q_a\(1)) # (!\inst1|altsyncram_component|auto_generated|q_a\(10)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \inst27|ALT_INV_outb~2_combout\,
	combout => \inst|inst17~combout\);

-- Location: LABCELL_X10_Y2_N54
\inst|inst42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst42~1_combout\ = (!\inst|inst17~combout\ & ((\inst|inst42~1_combout\) # (\inst|inst9~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_inst17~combout\,
	datac => \inst|ALT_INV_inst9~combout\,
	datad => \inst|ALT_INV_inst42~1_combout\,
	combout => \inst|inst42~1_combout\);

-- Location: MLABCELL_X9_Y2_N57
\inst|inst42~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst42~3_combout\ = ( \inst|inst42~1_combout\ & ( \inst|inst42~2_combout\ ) ) # ( !\inst|inst42~1_combout\ & ( !\inst|inst42~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_inst42~1_combout\,
	dataf => \inst|ALT_INV_inst42~2_combout\,
	combout => \inst|inst42~3_combout\);

-- Location: LABCELL_X10_Y2_N36
\inst|inst42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst42~0_combout\ = ( \inst|inst9~combout\ ) # ( !\inst|inst9~combout\ & ( \inst|inst17~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_inst17~combout\,
	dataf => \inst|ALT_INV_inst9~combout\,
	combout => \inst|inst42~0_combout\);

-- Location: FF_X9_Y2_N58
\inst|inst42~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_inst41~2_combout\,
	d => \inst|inst42~3_combout\,
	clrn => \inst|ALT_INV_inst42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst42~_emulated_q\);

-- Location: LABCELL_X10_Y2_N42
\inst|inst42~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst42~2_combout\ = ( !\inst|inst17~combout\ & ( (!\inst|inst42~1_combout\ $ (!\inst|inst42~_emulated_q\)) # (\inst|inst9~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111110011001111111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_inst9~combout\,
	datac => \inst|ALT_INV_inst42~1_combout\,
	datad => \inst|ALT_INV_inst42~_emulated_q\,
	dataf => \inst|ALT_INV_inst17~combout\,
	combout => \inst|inst42~2_combout\);

-- Location: LABCELL_X10_Y2_N6
\inst|inst16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst16~combout\ = ( \inst27|outb~2_combout\ ) # ( !\inst27|outb~2_combout\ & ( (\inst1|altsyncram_component|auto_generated|q_a\(11) & ((!\inst1|altsyncram_component|auto_generated|q_a\(0)) # (!\inst1|altsyncram_component|auto_generated|q_a\(10)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \inst27|ALT_INV_outb~2_combout\,
	combout => \inst|inst16~combout\);

-- Location: LABCELL_X10_Y2_N18
\inst|inst8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst8~combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(10) & ( (\inst1|altsyncram_component|auto_generated|q_a\(11) & \inst1|altsyncram_component|auto_generated|q_a\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst|inst8~combout\);

-- Location: LABCELL_X10_Y2_N30
\inst|inst41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst41~1_combout\ = ( \inst|inst41~1_combout\ & ( !\inst|inst16~combout\ ) ) # ( !\inst|inst41~1_combout\ & ( (!\inst|inst16~combout\ & \inst|inst8~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_inst16~combout\,
	datac => \inst|ALT_INV_inst8~combout\,
	dataf => \inst|ALT_INV_inst41~1_combout\,
	combout => \inst|inst41~1_combout\);

-- Location: LABCELL_X10_Y2_N24
\inst|inst41~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst41~3_combout\ = ( \inst|inst41~2_combout\ & ( \inst|inst41~1_combout\ ) ) # ( !\inst|inst41~2_combout\ & ( !\inst|inst41~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_inst41~1_combout\,
	dataf => \inst|ALT_INV_inst41~2_combout\,
	combout => \inst|inst41~3_combout\);

-- Location: LABCELL_X10_Y2_N21
\inst|inst41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst41~0_combout\ = ( \inst|inst8~combout\ ) # ( !\inst|inst8~combout\ & ( \inst|inst16~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_inst16~combout\,
	dataf => \inst|ALT_INV_inst8~combout\,
	combout => \inst|inst41~0_combout\);

-- Location: FF_X10_Y2_N23
\inst|inst41~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|outb~2_combout\,
	asdata => \inst|inst41~3_combout\,
	clrn => \inst|ALT_INV_inst41~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst41~_emulated_q\);

-- Location: LABCELL_X10_Y2_N27
\inst|inst41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst41~2_combout\ = ( \inst|inst8~combout\ & ( !\inst|inst16~combout\ ) ) # ( !\inst|inst8~combout\ & ( (!\inst|inst16~combout\ & (!\inst|inst41~1_combout\ $ (!\inst|inst41~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_inst41~1_combout\,
	datac => \inst|ALT_INV_inst16~combout\,
	datad => \inst|ALT_INV_inst41~_emulated_q\,
	dataf => \inst|ALT_INV_inst8~combout\,
	combout => \inst|inst41~2_combout\);

-- Location: LABCELL_X12_Y2_N48
inst9 : cyclonev_lcell_comb
-- Equation(s):
-- \inst9~combout\ = LCELL(( \inst1|altsyncram_component|auto_generated|q_a\(10) & ( (\inst1|altsyncram_component|auto_generated|q_a\(12) & (!\inst5|outb~2_combout\ & !\inst1|altsyncram_component|auto_generated|q_a\(11))) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(10) & ( (\inst1|altsyncram_component|auto_generated|q_a\(12) & !\inst5|outb~2_combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst5|ALT_INV_outb~2_combout\,
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst9~combout\);

-- Location: LABCELL_X12_Y2_N39
inst8 : cyclonev_lcell_comb
-- Equation(s):
-- \inst8~combout\ = LCELL(( \inst1|altsyncram_component|auto_generated|q_a\(10) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(12) & (!\inst1|altsyncram_component|auto_generated|q_a\(11) & !\inst5|outb~2_combout\)) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(10) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(12) & !\inst5|outb~2_combout\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \inst5|ALT_INV_outb~2_combout\,
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst8~combout\);

-- Location: MLABCELL_X13_Y2_N51
\inst20|inst12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|inst12~combout\ = (\rtl~1_combout\ & \inst1|altsyncram_component|auto_generated|q_a\(14))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~1_combout\,
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst20|inst12~combout\);

-- Location: MLABCELL_X13_Y2_N3
inst7 : cyclonev_lcell_comb
-- Equation(s):
-- \inst7~combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(10) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(11)) # (\inst27|outb~2_combout\) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(10) & ( \inst27|outb~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_outb~2_combout\,
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst7~combout\);

-- Location: FF_X13_Y2_N53
\inst4|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8~combout\,
	d => \inst20|inst12~combout\,
	clrn => \ALT_INV_inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst6~q\);

-- Location: LABCELL_X12_Y2_N51
\inst2|inst17|inst3|inst1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst17|inst3|inst1~0_combout\ = ( \inst3|inst6~q\ & ( !\inst1|altsyncram_component|auto_generated|q_a\(2) $ (((\inst1|altsyncram_component|auto_generated|q_a\(12) & !\inst4|inst6~q\))) ) ) # ( !\inst3|inst6~q\ & ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(2) $ (((!\inst1|altsyncram_component|auto_generated|q_a\(12)) # (!\inst4|inst6~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110011001111001100001100111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst4|ALT_INV_inst6~q\,
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \inst3|ALT_INV_inst6~q\,
	combout => \inst2|inst17|inst3|inst1~0_combout\);

-- Location: LABCELL_X12_Y3_N54
\inst20|inst16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|inst16~0_combout\ = ( !\inst1|altsyncram_component|auto_generated|q_a\(14) & ( \inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(8) & 
-- (!\inst20|inst26|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((!\inst1|altsyncram_component|auto_generated|q_a\(0)))))) # (\inst1|altsyncram_component|auto_generated|q_a\(8) & (((\inst1|altsyncram_component|auto_generated|q_a\(9))))) ) ) ) # 
-- ( !\inst1|altsyncram_component|auto_generated|q_a\(14) & ( !\inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(8) & (!\inst20|inst26|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ 
-- (!\inst1|altsyncram_component|auto_generated|q_a\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000000000000000000000100111100011010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datab => \inst20|inst26|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst20|inst16~0_combout\);

-- Location: FF_X12_Y3_N56
\inst3|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9~combout\,
	d => \inst20|inst16~0_combout\,
	clrn => \ALT_INV_inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst5~q\);

-- Location: LABCELL_X12_Y3_N24
\inst20|inst7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|inst7~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(14) & ( \inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(8) & 
-- (!\inst20|inst26|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((!\inst1|altsyncram_component|auto_generated|q_a\(0)))))) # (\inst1|altsyncram_component|auto_generated|q_a\(8) & (((\inst1|altsyncram_component|auto_generated|q_a\(9))))) ) ) ) # 
-- ( \inst1|altsyncram_component|auto_generated|q_a\(14) & ( !\inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(8) & (!\inst20|inst26|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ 
-- (!\inst1|altsyncram_component|auto_generated|q_a\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101000100000000000000000000010011110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datab => \inst20|inst26|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst20|inst7~0_combout\);

-- Location: FF_X12_Y3_N26
\inst4|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8~combout\,
	d => \inst20|inst7~0_combout\,
	clrn => \ALT_INV_inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst5~q\);

-- Location: LABCELL_X12_Y3_N3
\inst20|inst26|$00001|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|inst26|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst4|inst5~q\ & ( \inst1|altsyncram_component|auto_generated|q_a\(12) ) ) # ( \inst4|inst5~q\ & ( !\inst1|altsyncram_component|auto_generated|q_a\(12) & ( \inst3|inst5~q\ ) ) ) # ( 
-- !\inst4|inst5~q\ & ( !\inst1|altsyncram_component|auto_generated|q_a\(12) & ( \inst3|inst5~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_inst5~q\,
	datae => \inst4|ALT_INV_inst5~q\,
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \inst20|inst26|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X13_Y2_N9
\inst20|inst10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|inst10~combout\ = (\rtl~0_combout\ & \inst1|altsyncram_component|auto_generated|q_a\(14))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~0_combout\,
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst20|inst10~combout\);

-- Location: FF_X13_Y2_N11
\inst4|inst20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8~combout\,
	d => \inst20|inst10~combout\,
	clrn => \ALT_INV_inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst20~q\);

-- Location: LABCELL_X12_Y2_N21
\inst2|inst17|inst1|inst1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst17|inst1|inst1~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(12) & ( \inst3|inst20~q\ & ( !\inst1|altsyncram_component|auto_generated|q_a\(1) $ (!\inst4|inst20~q\) ) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(12) 
-- & ( \inst3|inst20~q\ & ( !\inst1|altsyncram_component|auto_generated|q_a\(1) ) ) ) # ( \inst1|altsyncram_component|auto_generated|q_a\(12) & ( !\inst3|inst20~q\ & ( !\inst1|altsyncram_component|auto_generated|q_a\(1) $ (!\inst4|inst20~q\) ) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(12) & ( !\inst3|inst20~q\ & ( \inst1|altsyncram_component|auto_generated|q_a\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101011010101010101010101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst4|ALT_INV_inst20~q\,
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \inst3|ALT_INV_inst20~q\,
	combout => \inst2|inst17|inst1|inst1~0_combout\);

-- Location: LABCELL_X12_Y2_N57
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(2) & ( \inst2|inst17|inst1|inst1~0_combout\ & ( (!\inst1|altsyncram_component|auto_generated|q_a\(0) & (((!\inst1|altsyncram_component|auto_generated|q_a\(8)) # 
-- (\inst1|altsyncram_component|auto_generated|q_a\(9))))) # (\inst1|altsyncram_component|auto_generated|q_a\(0) & ((!\inst20|inst26|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (\inst1|altsyncram_component|auto_generated|q_a\(9))) # 
-- (\inst1|altsyncram_component|auto_generated|q_a\(8)))) ) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(2) & ( \inst2|inst17|inst1|inst1~0_combout\ & ( (!\inst1|altsyncram_component|auto_generated|q_a\(0) & 
-- (((!\inst1|altsyncram_component|auto_generated|q_a\(8))))) # (\inst1|altsyncram_component|auto_generated|q_a\(0) & (!\inst1|altsyncram_component|auto_generated|q_a\(9) $ (((\inst20|inst26|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- !\inst1|altsyncram_component|auto_generated|q_a\(8)))))) ) ) ) # ( \inst1|altsyncram_component|auto_generated|q_a\(2) & ( !\inst2|inst17|inst1|inst1~0_combout\ & ( (!\inst1|altsyncram_component|auto_generated|q_a\(0) & 
-- (((\inst1|altsyncram_component|auto_generated|q_a\(9) & \inst1|altsyncram_component|auto_generated|q_a\(8))))) # (\inst1|altsyncram_component|auto_generated|q_a\(0) & ((!\inst20|inst26|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ 
-- (!\inst1|altsyncram_component|auto_generated|q_a\(9))) # (\inst1|altsyncram_component|auto_generated|q_a\(8)))) ) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(2) & ( !\inst2|inst17|inst1|inst1~0_combout\ & ( 
-- (\inst1|altsyncram_component|auto_generated|q_a\(0) & (!\inst1|altsyncram_component|auto_generated|q_a\(9) $ (((!\inst20|inst26|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & !\inst1|altsyncram_component|auto_generated|q_a\(8)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000110000000100100011111111101101001100001110110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst26|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \inst2|inst17|inst1|ALT_INV_inst1~0_combout\,
	combout => \rtl~0_combout\);

-- Location: MLABCELL_X13_Y2_N30
\inst20|inst17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|inst17~combout\ = ( \rtl~0_combout\ & ( !\inst1|altsyncram_component|auto_generated|q_a\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \inst20|inst17~combout\);

-- Location: FF_X13_Y2_N32
\inst3|inst20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9~combout\,
	d => \inst20|inst17~combout\,
	clrn => \ALT_INV_inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst20~q\);

-- Location: LABCELL_X12_Y2_N9
\inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(12) & ( \inst4|inst20~q\ ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(12) & ( \inst3|inst20~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_inst20~q\,
	datac => \inst4|ALT_INV_inst20~q\,
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X12_Y2_N36
\inst2|inst17|inst1|inst7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst17|inst1|inst7~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(0) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(12) & ((!\inst3|inst5~q\))) # (\inst1|altsyncram_component|auto_generated|q_a\(12) & (!\inst4|inst5~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000101010101111000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst5~q\,
	datac => \inst3|ALT_INV_inst5~q\,
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst2|inst17|inst1|inst7~0_combout\);

-- Location: LABCELL_X12_Y2_N30
\inst2|inst17|inst3|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst17|inst3|inst1~combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(1) & ( \inst2|inst17|inst1|inst7~0_combout\ & ( !\inst2|inst17|inst3|inst1~0_combout\ ) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(1) & ( 
-- \inst2|inst17|inst1|inst7~0_combout\ & ( !\inst2|inst17|inst3|inst1~0_combout\ $ (\inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\) ) ) ) # ( \inst1|altsyncram_component|auto_generated|q_a\(1) & ( !\inst2|inst17|inst1|inst7~0_combout\ 
-- & ( !\inst2|inst17|inst3|inst1~0_combout\ $ (\inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\) ) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(1) & ( !\inst2|inst17|inst1|inst7~0_combout\ & ( 
-- \inst2|inst17|inst3|inst1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101100110011001100110011001100110011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst17|inst3|ALT_INV_inst1~0_combout\,
	datab => \inst20|inst27|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \inst2|inst17|inst1|ALT_INV_inst7~0_combout\,
	combout => \inst2|inst17|inst3|inst1~combout\);

-- Location: MLABCELL_X13_Y2_N0
\inst2|inst9|inst3|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst9|inst3|inst4~0_combout\ = ( \inst3|inst5~q\ & ( (\inst1|altsyncram_component|auto_generated|q_a\(0) & ((!\inst1|altsyncram_component|auto_generated|q_a\(12)) # (\inst4|inst5~q\))) ) ) # ( !\inst3|inst5~q\ & ( (\inst4|inst5~q\ & 
-- (\inst1|altsyncram_component|auto_generated|q_a\(12) & \inst1|altsyncram_component|auto_generated|q_a\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_inst5~q\,
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst3|ALT_INV_inst5~q\,
	combout => \inst2|inst9|inst3|inst4~0_combout\);

-- Location: MLABCELL_X13_Y2_N48
\inst2|inst9|inst4|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst9|inst4|inst1~combout\ = ( \inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst2|inst17|inst3|inst1~0_combout\ $ (((!\inst2|inst9|inst3|inst4~0_combout\ & !\inst1|altsyncram_component|auto_generated|q_a\(1)))) ) ) # ( 
-- !\inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst2|inst17|inst3|inst1~0_combout\ $ (((!\inst2|inst9|inst3|inst4~0_combout\) # (!\inst1|altsyncram_component|auto_generated|q_a\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101001011010101010100101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst17|inst3|ALT_INV_inst1~0_combout\,
	datac => \inst2|inst9|inst3|ALT_INV_inst4~0_combout\,
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \inst20|inst27|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst2|inst9|inst4|inst1~combout\);

-- Location: MLABCELL_X13_Y2_N36
\rtl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(1) & ( \inst1|altsyncram_component|auto_generated|q_a\(9) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(8) & (\inst2|inst17|inst3|inst1~combout\)) # 
-- (\inst1|altsyncram_component|auto_generated|q_a\(8) & ((\inst1|altsyncram_component|auto_generated|q_a\(3)))) ) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(1) & ( \inst1|altsyncram_component|auto_generated|q_a\(9) & ( 
-- (!\inst1|altsyncram_component|auto_generated|q_a\(8) & (\inst2|inst17|inst3|inst1~combout\)) # (\inst1|altsyncram_component|auto_generated|q_a\(8) & ((\inst1|altsyncram_component|auto_generated|q_a\(3)))) ) ) ) # ( 
-- \inst1|altsyncram_component|auto_generated|q_a\(1) & ( !\inst1|altsyncram_component|auto_generated|q_a\(9) & ( (\inst1|altsyncram_component|auto_generated|q_a\(8)) # (\inst2|inst9|inst4|inst1~combout\) ) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(1) & ( !\inst1|altsyncram_component|auto_generated|q_a\(9) & ( (\inst2|inst9|inst4|inst1~combout\ & !\inst1|altsyncram_component|auto_generated|q_a\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst17|inst3|ALT_INV_inst1~combout\,
	datab => \inst2|inst9|inst4|ALT_INV_inst1~combout\,
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \rtl~1_combout\);

-- Location: MLABCELL_X13_Y2_N18
\inst20|inst18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|inst18~combout\ = (\rtl~1_combout\ & !\inst1|altsyncram_component|auto_generated|q_a\(14))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rtl~1_combout\,
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst20|inst18~combout\);

-- Location: FF_X13_Y2_N20
\inst3|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9~combout\,
	d => \inst20|inst18~combout\,
	clrn => \ALT_INV_inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst6~q\);

-- Location: MLABCELL_X13_Y2_N21
\inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \inst3|inst6~q\ & ( (!\inst1|altsyncram_component|auto_generated|q_a\(12)) # (\inst4|inst6~q\) ) ) # ( !\inst3|inst6~q\ & ( (\inst1|altsyncram_component|auto_generated|q_a\(12) & 
-- \inst4|inst6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datad => \inst4|ALT_INV_inst6~q\,
	dataf => \inst3|ALT_INV_inst6~q\,
	combout => \inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X13_Y2_N24
\inst2|inst17|inst2|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst17|inst2|inst1~combout\ = ( \inst2|inst17|inst1|inst7~0_combout\ & ( \inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst2|inst17|inst2|inst1~0_combout\ $ 
-- (((!\inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & (!\inst1|altsyncram_component|auto_generated|q_a\(1) & !\inst1|altsyncram_component|auto_generated|q_a\(2))) # (\inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ 
-- & ((!\inst1|altsyncram_component|auto_generated|q_a\(1)) # (!\inst1|altsyncram_component|auto_generated|q_a\(2)))))) ) ) ) # ( !\inst2|inst17|inst1|inst7~0_combout\ & ( \inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( 
-- !\inst2|inst17|inst2|inst1~0_combout\ $ (((!\inst1|altsyncram_component|auto_generated|q_a\(2)) # (\inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) ) # ( \inst2|inst17|inst1|inst7~0_combout\ & ( 
-- !\inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst2|inst17|inst2|inst1~0_combout\ $ (((\inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & !\inst1|altsyncram_component|auto_generated|q_a\(2)))) ) ) ) # ( 
-- !\inst2|inst17|inst1|inst7~0_combout\ & ( !\inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst2|inst17|inst2|inst1~0_combout\ $ (((!\inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- (!\inst1|altsyncram_component|auto_generated|q_a\(1) & !\inst1|altsyncram_component|auto_generated|q_a\(2))) # (\inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\inst1|altsyncram_component|auto_generated|q_a\(1)) # 
-- (!\inst1|altsyncram_component|auto_generated|q_a\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100110011010100110011010101001010101100110010101100110011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst17|inst2|ALT_INV_inst1~0_combout\,
	datab => \inst20|inst28|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \inst2|inst17|inst1|ALT_INV_inst7~0_combout\,
	dataf => \inst20|inst27|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst2|inst17|inst2|inst1~combout\);

-- Location: MLABCELL_X13_Y2_N54
\inst20|inst14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|inst14~combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(2) & ( \inst2|inst17|inst2|inst1~combout\ & ( (\inst1|altsyncram_component|auto_generated|q_a\(14) & ((!\inst1|altsyncram_component|auto_generated|q_a\(8) & 
-- ((\inst1|altsyncram_component|auto_generated|q_a\(9)) # (\inst2|inst9|inst5|inst1~combout\))) # (\inst1|altsyncram_component|auto_generated|q_a\(8) & ((!\inst1|altsyncram_component|auto_generated|q_a\(9)))))) ) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(2) & ( \inst2|inst17|inst2|inst1~combout\ & ( (!\inst1|altsyncram_component|auto_generated|q_a\(8) & (\inst1|altsyncram_component|auto_generated|q_a\(14) & 
-- ((\inst1|altsyncram_component|auto_generated|q_a\(9)) # (\inst2|inst9|inst5|inst1~combout\)))) ) ) ) # ( \inst1|altsyncram_component|auto_generated|q_a\(2) & ( !\inst2|inst17|inst2|inst1~combout\ & ( (\inst1|altsyncram_component|auto_generated|q_a\(14) & 
-- (!\inst1|altsyncram_component|auto_generated|q_a\(9) & ((\inst2|inst9|inst5|inst1~combout\) # (\inst1|altsyncram_component|auto_generated|q_a\(8))))) ) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(2) & ( !\inst2|inst17|inst2|inst1~combout\ & ( 
-- (!\inst1|altsyncram_component|auto_generated|q_a\(8) & (\inst2|inst9|inst5|inst1~combout\ & (\inst1|altsyncram_component|auto_generated|q_a\(14) & !\inst1|altsyncram_component|auto_generated|q_a\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000001110000000000000010000010100000011100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datab => \inst2|inst9|inst5|ALT_INV_inst1~combout\,
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \inst2|inst17|inst2|ALT_INV_inst1~combout\,
	combout => \inst20|inst14~combout\);

-- Location: FF_X13_Y2_N56
\inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8~combout\,
	d => \inst20|inst14~combout\,
	clrn => \ALT_INV_inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst7~q\);

-- Location: MLABCELL_X13_Y2_N6
\inst2|inst17|inst2|inst1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst17|inst2|inst1~0_combout\ = ( \inst3|inst7~q\ & ( !\inst1|altsyncram_component|auto_generated|q_a\(3) $ (((\inst1|altsyncram_component|auto_generated|q_a\(12) & !\inst4|inst7~q\))) ) ) # ( !\inst3|inst7~q\ & ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(3) $ (((!\inst1|altsyncram_component|auto_generated|q_a\(12)) # (!\inst4|inst7~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101010101111010100001010111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \inst4|ALT_INV_inst7~q\,
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => \inst3|ALT_INV_inst7~q\,
	combout => \inst2|inst17|inst2|inst1~0_combout\);

-- Location: MLABCELL_X13_Y2_N12
\inst2|inst9|inst5|inst1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst9|inst5|inst1~combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(1) & ( \inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst2|inst17|inst2|inst1~0_combout\ $ 
-- (((!\inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & !\inst1|altsyncram_component|auto_generated|q_a\(2)))) ) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(1) & ( 
-- \inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst2|inst17|inst2|inst1~0_combout\ $ (((!\inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((!\inst2|inst9|inst3|inst4~0_combout\) # 
-- (!\inst1|altsyncram_component|auto_generated|q_a\(2)))) # (\inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & (!\inst2|inst9|inst3|inst4~0_combout\ & !\inst1|altsyncram_component|auto_generated|q_a\(2))))) ) ) ) # ( 
-- \inst1|altsyncram_component|auto_generated|q_a\(1) & ( !\inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst2|inst17|inst2|inst1~0_combout\ $ (((!\inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- ((!\inst2|inst9|inst3|inst4~0_combout\) # (!\inst1|altsyncram_component|auto_generated|q_a\(2)))) # (\inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & (!\inst2|inst9|inst3|inst4~0_combout\ & 
-- !\inst1|altsyncram_component|auto_generated|q_a\(2))))) ) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(1) & ( !\inst20|inst27|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst2|inst17|inst2|inst1~0_combout\ $ 
-- (((!\inst20|inst28|$00001|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (!\inst1|altsyncram_component|auto_generated|q_a\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101100110101001010110011010100110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst17|inst2|ALT_INV_inst1~0_combout\,
	datab => \inst20|inst28|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst2|inst9|inst3|ALT_INV_inst4~0_combout\,
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \inst20|inst27|$00001|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	combout => \inst2|inst9|inst5|inst1~combout\);

-- Location: MLABCELL_X13_Y2_N42
\inst20|inst19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|inst19~combout\ = ( !\inst1|altsyncram_component|auto_generated|q_a\(14) & ( \inst2|inst17|inst2|inst1~combout\ & ( (!\inst1|altsyncram_component|auto_generated|q_a\(8) & (((\inst1|altsyncram_component|auto_generated|q_a\(9)) # 
-- (\inst2|inst9|inst5|inst1~combout\)))) # (\inst1|altsyncram_component|auto_generated|q_a\(8) & (\inst1|altsyncram_component|auto_generated|q_a\(2) & ((!\inst1|altsyncram_component|auto_generated|q_a\(9))))) ) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(14) & ( !\inst2|inst17|inst2|inst1~combout\ & ( (!\inst1|altsyncram_component|auto_generated|q_a\(9) & ((!\inst1|altsyncram_component|auto_generated|q_a\(8) & ((\inst2|inst9|inst5|inst1~combout\))) # 
-- (\inst1|altsyncram_component|auto_generated|q_a\(8) & (\inst1|altsyncram_component|auto_generated|q_a\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000000000000000000000110101111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datab => \inst2|inst9|inst5|ALT_INV_inst1~combout\,
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst2|inst17|inst2|ALT_INV_inst1~combout\,
	combout => \inst20|inst19~combout\);

-- Location: FF_X13_Y2_N44
\inst3|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9~combout\,
	d => \inst20|inst19~combout\,
	clrn => \ALT_INV_inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst7~q\);

-- Location: LABCELL_X14_Y1_N30
\inst31|inst63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|inst63~0_combout\ = ( \inst3|inst20~q\ & ( (\inst3|inst6~q\ & (\inst3|inst5~q\ & !\inst3|inst7~q\)) ) ) # ( !\inst3|inst20~q\ & ( (!\inst3|inst6~q\ & ((!\inst3|inst7~q\))) # (\inst3|inst6~q\ & (!\inst3|inst5~q\ & \inst3|inst7~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010010100100101001001010010000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_inst6~q\,
	datab => \inst3|ALT_INV_inst5~q\,
	datac => \inst3|ALT_INV_inst7~q\,
	dataf => \inst3|ALT_INV_inst20~q\,
	combout => \inst31|inst63~0_combout\);

-- Location: LABCELL_X14_Y1_N12
\inst31|inst13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|inst13~0_combout\ = ( \inst3|inst20~q\ & ( (!\inst3|inst7~q\ & ((!\inst3|inst6~q\) # (\inst3|inst5~q\))) ) ) # ( !\inst3|inst20~q\ & ( (\inst3|inst5~q\ & (!\inst3|inst7~q\ $ (\inst3|inst6~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001111110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_inst5~q\,
	datac => \inst3|ALT_INV_inst7~q\,
	datad => \inst3|ALT_INV_inst6~q\,
	dataf => \inst3|ALT_INV_inst20~q\,
	combout => \inst31|inst13~0_combout\);

-- Location: LABCELL_X14_Y1_N48
\inst31|inst85~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|inst85~0_combout\ = ( \inst3|inst5~q\ & ( \inst3|inst6~q\ & ( !\inst3|inst7~q\ ) ) ) # ( !\inst3|inst5~q\ & ( \inst3|inst6~q\ & ( (!\inst3|inst20~q\ & !\inst3|inst7~q\) ) ) ) # ( \inst3|inst5~q\ & ( !\inst3|inst6~q\ & ( (!\inst3|inst20~q\) # 
-- (!\inst3|inst7~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110011000000110000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_inst20~q\,
	datac => \inst3|ALT_INV_inst7~q\,
	datae => \inst3|ALT_INV_inst5~q\,
	dataf => \inst3|ALT_INV_inst6~q\,
	combout => \inst31|inst85~0_combout\);

-- Location: LABCELL_X14_Y1_N36
\inst31|inst33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|inst33~0_combout\ = ( \inst3|inst5~q\ & ( \inst3|inst6~q\ & ( \inst3|inst20~q\ ) ) ) # ( !\inst3|inst5~q\ & ( \inst3|inst6~q\ & ( (!\inst3|inst20~q\ & !\inst3|inst7~q\) ) ) ) # ( \inst3|inst5~q\ & ( !\inst3|inst6~q\ & ( !\inst3|inst20~q\ ) ) ) # ( 
-- !\inst3|inst5~q\ & ( !\inst3|inst6~q\ & ( (\inst3|inst20~q\ & \inst3|inst7~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011001100110011000000110000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_inst20~q\,
	datac => \inst3|ALT_INV_inst7~q\,
	datae => \inst3|ALT_INV_inst5~q\,
	dataf => \inst3|ALT_INV_inst6~q\,
	combout => \inst31|inst33~0_combout\);

-- Location: LABCELL_X14_Y1_N21
\inst31|inst25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|inst25~0_combout\ = ( \inst3|inst6~q\ & ( (\inst3|inst7~q\ & ((!\inst3|inst5~q\) # (\inst3|inst20~q\))) ) ) # ( !\inst3|inst6~q\ & ( (!\inst3|inst5~q\ & (\inst3|inst20~q\ & !\inst3|inst7~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000110011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_inst5~q\,
	datac => \inst3|ALT_INV_inst20~q\,
	datad => \inst3|ALT_INV_inst7~q\,
	dataf => \inst3|ALT_INV_inst6~q\,
	combout => \inst31|inst25~0_combout\);

-- Location: LABCELL_X14_Y1_N6
\inst31|inst82~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|inst82~0_combout\ = ( \inst3|inst20~q\ & ( (!\inst3|inst5~q\ & ((\inst3|inst6~q\))) # (\inst3|inst5~q\ & (\inst3|inst7~q\)) ) ) # ( !\inst3|inst20~q\ & ( (\inst3|inst6~q\ & (!\inst3|inst5~q\ $ (!\inst3|inst7~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_inst5~q\,
	datac => \inst3|ALT_INV_inst7~q\,
	datad => \inst3|ALT_INV_inst6~q\,
	dataf => \inst3|ALT_INV_inst20~q\,
	combout => \inst31|inst82~0_combout\);

-- Location: LABCELL_X14_Y1_N45
\inst31|inst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst31|inst~0_combout\ = ( \inst3|inst6~q\ & ( (!\inst3|inst20~q\ & (!\inst3|inst7~q\ $ (\inst3|inst5~q\))) ) ) # ( !\inst3|inst6~q\ & ( (\inst3|inst5~q\ & (!\inst3|inst7~q\ $ (\inst3|inst20~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101000000001010010110100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_inst7~q\,
	datac => \inst3|ALT_INV_inst20~q\,
	datad => \inst3|ALT_INV_inst5~q\,
	dataf => \inst3|ALT_INV_inst6~q\,
	combout => \inst31|inst~0_combout\);

-- Location: LABCELL_X12_Y3_N48
\inst30|inst63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst30|inst63~0_combout\ = ( !\inst4|inst20~q\ & ( \inst4|inst7~q\ & ( (\inst4|inst6~q\ & !\inst4|inst5~q\) ) ) ) # ( \inst4|inst20~q\ & ( !\inst4|inst7~q\ & ( (\inst4|inst6~q\ & \inst4|inst5~q\) ) ) ) # ( !\inst4|inst20~q\ & ( !\inst4|inst7~q\ & ( 
-- !\inst4|inst6~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000100010001000101000100010001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst6~q\,
	datab => \inst4|ALT_INV_inst5~q\,
	datae => \inst4|ALT_INV_inst20~q\,
	dataf => \inst4|ALT_INV_inst7~q\,
	combout => \inst30|inst63~0_combout\);

-- Location: MLABCELL_X13_Y1_N36
\inst30|inst13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst30|inst13~0_combout\ = ( \inst4|inst6~q\ & ( (\inst4|inst5~q\ & (!\inst4|inst7~q\ $ (!\inst4|inst20~q\))) ) ) # ( !\inst4|inst6~q\ & ( (!\inst4|inst7~q\ & ((\inst4|inst20~q\) # (\inst4|inst5~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst5~q\,
	datab => \inst4|ALT_INV_inst7~q\,
	datac => \inst4|ALT_INV_inst20~q\,
	dataf => \inst4|ALT_INV_inst6~q\,
	combout => \inst30|inst13~0_combout\);

-- Location: LABCELL_X14_Y1_N42
\inst30|inst85~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst30|inst85~0_combout\ = ( \inst4|inst5~q\ & ( (!\inst4|inst7~q\) # ((!\inst4|inst6~q\ & !\inst4|inst20~q\)) ) ) # ( !\inst4|inst5~q\ & ( (\inst4|inst6~q\ & (!\inst4|inst20~q\ & !\inst4|inst7~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011111111110000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_inst6~q\,
	datac => \inst4|ALT_INV_inst20~q\,
	datad => \inst4|ALT_INV_inst7~q\,
	dataf => \inst4|ALT_INV_inst5~q\,
	combout => \inst30|inst85~0_combout\);

-- Location: LABCELL_X14_Y1_N9
\inst30|inst33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst30|inst33~0_combout\ = ( \inst4|inst5~q\ & ( !\inst4|inst6~q\ $ (\inst4|inst20~q\) ) ) # ( !\inst4|inst5~q\ & ( (!\inst4|inst7~q\ & (\inst4|inst6~q\ & !\inst4|inst20~q\)) # (\inst4|inst7~q\ & (!\inst4|inst6~q\ & \inst4|inst20~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst7~q\,
	datac => \inst4|ALT_INV_inst6~q\,
	datad => \inst4|ALT_INV_inst20~q\,
	dataf => \inst4|ALT_INV_inst5~q\,
	combout => \inst30|inst33~0_combout\);

-- Location: LABCELL_X14_Y1_N57
\inst30|inst25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst30|inst25~0_combout\ = ( \inst4|inst7~q\ & ( \inst4|inst6~q\ & ( (!\inst4|inst5~q\) # (\inst4|inst20~q\) ) ) ) # ( !\inst4|inst7~q\ & ( !\inst4|inst6~q\ & ( (\inst4|inst20~q\ & !\inst4|inst5~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000000000000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst20~q\,
	datad => \inst4|ALT_INV_inst5~q\,
	datae => \inst4|ALT_INV_inst7~q\,
	dataf => \inst4|ALT_INV_inst6~q\,
	combout => \inst30|inst25~0_combout\);

-- Location: LABCELL_X12_Y2_N12
\inst30|inst82~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst30|inst82~0_combout\ = ( \inst4|inst6~q\ & ( (!\inst4|inst20~q\ & (!\inst4|inst5~q\ $ (!\inst4|inst7~q\))) # (\inst4|inst20~q\ & ((!\inst4|inst5~q\) # (\inst4|inst7~q\))) ) ) # ( !\inst4|inst6~q\ & ( (\inst4|inst20~q\ & (\inst4|inst5~q\ & 
-- \inst4|inst7~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011010111101010101101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst20~q\,
	datac => \inst4|ALT_INV_inst5~q\,
	datad => \inst4|ALT_INV_inst7~q\,
	dataf => \inst4|ALT_INV_inst6~q\,
	combout => \inst30|inst82~0_combout\);

-- Location: LABCELL_X14_Y1_N3
\inst30|inst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst30|inst~0_combout\ = ( \inst4|inst7~q\ & ( \inst4|inst6~q\ & ( (!\inst4|inst20~q\ & \inst4|inst5~q\) ) ) ) # ( !\inst4|inst7~q\ & ( \inst4|inst6~q\ & ( (!\inst4|inst20~q\ & !\inst4|inst5~q\) ) ) ) # ( \inst4|inst7~q\ & ( !\inst4|inst6~q\ & ( 
-- (\inst4|inst20~q\ & \inst4|inst5~q\) ) ) ) # ( !\inst4|inst7~q\ & ( !\inst4|inst6~q\ & ( (!\inst4|inst20~q\ & \inst4|inst5~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000101010110101010000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst20~q\,
	datad => \inst4|ALT_INV_inst5~q\,
	datae => \inst4|ALT_INV_inst7~q\,
	dataf => \inst4|ALT_INV_inst6~q\,
	combout => \inst30|inst~0_combout\);

-- Location: LABCELL_X12_Y3_N42
\inst10|inst63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|inst63~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(0) & ( \inst1|altsyncram_component|auto_generated|q_a\(2) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(3) & \inst1|altsyncram_component|auto_generated|q_a\(1)) ) ) ) # 
-- ( !\inst1|altsyncram_component|auto_generated|q_a\(0) & ( \inst1|altsyncram_component|auto_generated|q_a\(2) & ( (\inst1|altsyncram_component|auto_generated|q_a\(3) & !\inst1|altsyncram_component|auto_generated|q_a\(1)) ) ) ) # ( 
-- \inst1|altsyncram_component|auto_generated|q_a\(0) & ( !\inst1|altsyncram_component|auto_generated|q_a\(2) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(3) & !\inst1|altsyncram_component|auto_generated|q_a\(1)) ) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(0) & ( !\inst1|altsyncram_component|auto_generated|q_a\(2) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(3) & !\inst1|altsyncram_component|auto_generated|q_a\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000110000001100000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst10|inst63~0_combout\);

-- Location: MLABCELL_X13_Y1_N45
\inst10|inst13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|inst13~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(3) & ((!\inst1|altsyncram_component|auto_generated|q_a\(2)) # (\inst1|altsyncram_component|auto_generated|q_a\(0)))) ) ) 
-- # ( !\inst1|altsyncram_component|auto_generated|q_a\(1) & ( (\inst1|altsyncram_component|auto_generated|q_a\(0) & (!\inst1|altsyncram_component|auto_generated|q_a\(2) $ (\inst1|altsyncram_component|auto_generated|q_a\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101010100000000010111110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst10|inst13~0_combout\);

-- Location: MLABCELL_X13_Y1_N51
\inst10|inst85~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|inst85~0_combout\ = ( !\inst1|altsyncram_component|auto_generated|q_a\(3) & ( \inst1|altsyncram_component|auto_generated|q_a\(1) & ( \inst1|altsyncram_component|auto_generated|q_a\(0) ) ) ) # ( \inst1|altsyncram_component|auto_generated|q_a\(3) & 
-- ( !\inst1|altsyncram_component|auto_generated|q_a\(1) & ( (\inst1|altsyncram_component|auto_generated|q_a\(0) & !\inst1|altsyncram_component|auto_generated|q_a\(2)) ) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(3) & ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(1) & ( (\inst1|altsyncram_component|auto_generated|q_a\(2)) # (\inst1|altsyncram_component|auto_generated|q_a\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111010001000100010001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst10|inst85~0_combout\);

-- Location: MLABCELL_X13_Y1_N42
\inst10|inst33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|inst33~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(2) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(0) & (!\inst1|altsyncram_component|auto_generated|q_a\(1) & !\inst1|altsyncram_component|auto_generated|q_a\(3))) # 
-- (\inst1|altsyncram_component|auto_generated|q_a\(0) & (\inst1|altsyncram_component|auto_generated|q_a\(1))) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(2) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(0) & 
-- (\inst1|altsyncram_component|auto_generated|q_a\(1) & \inst1|altsyncram_component|auto_generated|q_a\(3))) # (\inst1|altsyncram_component|auto_generated|q_a\(0) & (!\inst1|altsyncram_component|auto_generated|q_a\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011010010100000101101010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst10|inst33~0_combout\);

-- Location: MLABCELL_X13_Y1_N57
\inst10|inst25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|inst25~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(3) & ( \inst1|altsyncram_component|auto_generated|q_a\(1) & ( \inst1|altsyncram_component|auto_generated|q_a\(2) ) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(3) & 
-- ( \inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(0) & !\inst1|altsyncram_component|auto_generated|q_a\(2)) ) ) ) # ( \inst1|altsyncram_component|auto_generated|q_a\(3) & ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(0) & \inst1|altsyncram_component|auto_generated|q_a\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001010001000100010000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst10|inst25~0_combout\);

-- Location: LABCELL_X12_Y3_N15
\inst10|inst82~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|inst82~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(0) & (\inst1|altsyncram_component|auto_generated|q_a\(2))) # (\inst1|altsyncram_component|auto_generated|q_a\(0) & 
-- ((\inst1|altsyncram_component|auto_generated|q_a\(3)))) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(1) & ( (\inst1|altsyncram_component|auto_generated|q_a\(2) & (!\inst1|altsyncram_component|auto_generated|q_a\(0) $ 
-- (!\inst1|altsyncram_component|auto_generated|q_a\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst10|inst82~0_combout\);

-- Location: LABCELL_X12_Y3_N36
\inst10|inst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|inst~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(0) & ( \inst1|altsyncram_component|auto_generated|q_a\(2) & ( (\inst1|altsyncram_component|auto_generated|q_a\(3) & !\inst1|altsyncram_component|auto_generated|q_a\(1)) ) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(0) & ( \inst1|altsyncram_component|auto_generated|q_a\(2) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(3) & !\inst1|altsyncram_component|auto_generated|q_a\(1)) ) ) ) # ( 
-- \inst1|altsyncram_component|auto_generated|q_a\(0) & ( !\inst1|altsyncram_component|auto_generated|q_a\(2) & ( !\inst1|altsyncram_component|auto_generated|q_a\(3) $ (\inst1|altsyncram_component|auto_generated|q_a\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001111000000110000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst10|inst~0_combout\);

-- Location: LABCELL_X47_Y2_N3
\inst11|inst63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|inst63~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(5) & ( \inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(7) & \inst1|altsyncram_component|auto_generated|q_a\(4)) ) ) ) # 
-- ( !\inst1|altsyncram_component|auto_generated|q_a\(5) & ( \inst1|altsyncram_component|auto_generated|q_a\(6) & ( (\inst1|altsyncram_component|auto_generated|q_a\(7) & !\inst1|altsyncram_component|auto_generated|q_a\(4)) ) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(5) & ( !\inst1|altsyncram_component|auto_generated|q_a\(6) & ( !\inst1|altsyncram_component|auto_generated|q_a\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000110000001100000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \inst11|inst63~0_combout\);

-- Location: LABCELL_X47_Y2_N6
\inst11|inst13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|inst13~0_combout\ = ( !\inst1|altsyncram_component|auto_generated|q_a\(5) & ( \inst1|altsyncram_component|auto_generated|q_a\(7) & ( (\inst1|altsyncram_component|auto_generated|q_a\(4) & \inst1|altsyncram_component|auto_generated|q_a\(6)) ) ) ) # 
-- ( \inst1|altsyncram_component|auto_generated|q_a\(5) & ( !\inst1|altsyncram_component|auto_generated|q_a\(7) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(6)) # (\inst1|altsyncram_component|auto_generated|q_a\(4)) ) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(5) & ( !\inst1|altsyncram_component|auto_generated|q_a\(7) & ( (\inst1|altsyncram_component|auto_generated|q_a\(4) & !\inst1|altsyncram_component|auto_generated|q_a\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111100111111001100000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \inst11|inst13~0_combout\);

-- Location: LABCELL_X47_Y2_N39
\inst11|inst85~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|inst85~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(5) & ( \inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(7) & \inst1|altsyncram_component|auto_generated|q_a\(4)) ) ) ) # 
-- ( !\inst1|altsyncram_component|auto_generated|q_a\(5) & ( \inst1|altsyncram_component|auto_generated|q_a\(6) & ( !\inst1|altsyncram_component|auto_generated|q_a\(7) ) ) ) # ( \inst1|altsyncram_component|auto_generated|q_a\(5) & ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(7) & \inst1|altsyncram_component|auto_generated|q_a\(4)) ) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(5) & ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(6) & ( \inst1|altsyncram_component|auto_generated|q_a\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011000000110011001100110011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \inst11|inst85~0_combout\);

-- Location: LABCELL_X47_Y2_N42
\inst11|inst33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|inst33~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(5) & ( \inst1|altsyncram_component|auto_generated|q_a\(7) & ( !\inst1|altsyncram_component|auto_generated|q_a\(4) $ (\inst1|altsyncram_component|auto_generated|q_a\(6)) ) ) ) # 
-- ( !\inst1|altsyncram_component|auto_generated|q_a\(5) & ( \inst1|altsyncram_component|auto_generated|q_a\(7) & ( (\inst1|altsyncram_component|auto_generated|q_a\(4) & !\inst1|altsyncram_component|auto_generated|q_a\(6)) ) ) ) # ( 
-- \inst1|altsyncram_component|auto_generated|q_a\(5) & ( !\inst1|altsyncram_component|auto_generated|q_a\(7) & ( (\inst1|altsyncram_component|auto_generated|q_a\(4) & \inst1|altsyncram_component|auto_generated|q_a\(6)) ) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(5) & ( !\inst1|altsyncram_component|auto_generated|q_a\(7) & ( !\inst1|altsyncram_component|auto_generated|q_a\(4) $ (!\inst1|altsyncram_component|auto_generated|q_a\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000110000001100110000001100001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \inst11|inst33~0_combout\);

-- Location: LABCELL_X40_Y2_N39
\inst11|inst25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|inst25~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(7) & ( \inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(4)) # (\inst1|altsyncram_component|auto_generated|q_a\(5)) ) ) ) 
-- # ( !\inst1|altsyncram_component|auto_generated|q_a\(7) & ( !\inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(4) & \inst1|altsyncram_component|auto_generated|q_a\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000000000000000000001111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \inst11|inst25~0_combout\);

-- Location: LABCELL_X47_Y2_N24
\inst11|inst82~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|inst82~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(5) & ( \inst1|altsyncram_component|auto_generated|q_a\(7) & ( (\inst1|altsyncram_component|auto_generated|q_a\(6)) # (\inst1|altsyncram_component|auto_generated|q_a\(4)) ) ) ) # 
-- ( !\inst1|altsyncram_component|auto_generated|q_a\(5) & ( \inst1|altsyncram_component|auto_generated|q_a\(7) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(4) & \inst1|altsyncram_component|auto_generated|q_a\(6)) ) ) ) # ( 
-- \inst1|altsyncram_component|auto_generated|q_a\(5) & ( !\inst1|altsyncram_component|auto_generated|q_a\(7) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(4) & \inst1|altsyncram_component|auto_generated|q_a\(6)) ) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(5) & ( !\inst1|altsyncram_component|auto_generated|q_a\(7) & ( (\inst1|altsyncram_component|auto_generated|q_a\(4) & \inst1|altsyncram_component|auto_generated|q_a\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110000001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \inst11|inst82~0_combout\);

-- Location: LABCELL_X40_Y2_N30
\inst11|inst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|inst~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(7) & ( \inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(5) & \inst1|altsyncram_component|auto_generated|q_a\(4)) ) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(7) & ( \inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(5) & !\inst1|altsyncram_component|auto_generated|q_a\(4)) ) ) ) # ( 
-- \inst1|altsyncram_component|auto_generated|q_a\(7) & ( !\inst1|altsyncram_component|auto_generated|q_a\(6) & ( (\inst1|altsyncram_component|auto_generated|q_a\(5) & \inst1|altsyncram_component|auto_generated|q_a\(4)) ) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(7) & ( !\inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(5) & \inst1|altsyncram_component|auto_generated|q_a\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000100010001000110001000100010000010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \inst11|inst~0_combout\);

-- Location: LABCELL_X16_Y2_N27
\inst12|inst63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|inst63~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(11) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(9) & (!\inst1|altsyncram_component|auto_generated|q_a\(8) & \inst1|altsyncram_component|auto_generated|q_a\(10))) ) ) # 
-- ( !\inst1|altsyncram_component|auto_generated|q_a\(11) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(9) & ((!\inst1|altsyncram_component|auto_generated|q_a\(10)))) # (\inst1|altsyncram_component|auto_generated|q_a\(9) & 
-- (\inst1|altsyncram_component|auto_generated|q_a\(8) & \inst1|altsyncram_component|auto_generated|q_a\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000010001101010100001000100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \inst12|inst63~0_combout\);

-- Location: LABCELL_X16_Y2_N51
\inst12|inst13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|inst13~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(10) & ( (\inst1|altsyncram_component|auto_generated|q_a\(8) & (!\inst1|altsyncram_component|auto_generated|q_a\(9) $ (!\inst1|altsyncram_component|auto_generated|q_a\(11)))) ) ) 
-- # ( !\inst1|altsyncram_component|auto_generated|q_a\(10) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(11) & ((\inst1|altsyncram_component|auto_generated|q_a\(8)) # (\inst1|altsyncram_component|auto_generated|q_a\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000000001010000101001011111000000000000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst12|inst13~0_combout\);

-- Location: LABCELL_X16_Y2_N24
\inst12|inst85~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|inst85~0_combout\ = (!\inst1|altsyncram_component|auto_generated|q_a\(9) & ((!\inst1|altsyncram_component|auto_generated|q_a\(10) & (\inst1|altsyncram_component|auto_generated|q_a\(8))) # (\inst1|altsyncram_component|auto_generated|q_a\(10) & 
-- ((!\inst1|altsyncram_component|auto_generated|q_a\(11)))))) # (\inst1|altsyncram_component|auto_generated|q_a\(9) & (\inst1|altsyncram_component|auto_generated|q_a\(8) & (!\inst1|altsyncram_component|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001010110000001100101011000000110010101100000011001010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst12|inst85~0_combout\);

-- Location: LABCELL_X10_Y2_N45
\inst12|inst33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|inst33~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(10) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(9) & (!\inst1|altsyncram_component|auto_generated|q_a\(11) & !\inst1|altsyncram_component|auto_generated|q_a\(8))) # 
-- (\inst1|altsyncram_component|auto_generated|q_a\(9) & ((\inst1|altsyncram_component|auto_generated|q_a\(8)))) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(10) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(9) & 
-- ((\inst1|altsyncram_component|auto_generated|q_a\(8)))) # (\inst1|altsyncram_component|auto_generated|q_a\(9) & (\inst1|altsyncram_component|auto_generated|q_a\(11) & !\inst1|altsyncram_component|auto_generated|q_a\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110000000001011111000010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst12|inst33~0_combout\);

-- Location: LABCELL_X16_Y2_N18
\inst12|inst25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|inst25~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(10) & ( \inst1|altsyncram_component|auto_generated|q_a\(9) & ( \inst1|altsyncram_component|auto_generated|q_a\(11) ) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(10) 
-- & ( \inst1|altsyncram_component|auto_generated|q_a\(9) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(8) & !\inst1|altsyncram_component|auto_generated|q_a\(11)) ) ) ) # ( \inst1|altsyncram_component|auto_generated|q_a\(10) & ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(9) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(8) & \inst1|altsyncram_component|auto_generated|q_a\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110011000000110000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \inst12|inst25~0_combout\);

-- Location: LABCELL_X16_Y2_N15
\inst12|inst82~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|inst82~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(10) & ( \inst1|altsyncram_component|auto_generated|q_a\(9) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(8)) # (\inst1|altsyncram_component|auto_generated|q_a\(11)) ) ) 
-- ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(10) & ( \inst1|altsyncram_component|auto_generated|q_a\(9) & ( (\inst1|altsyncram_component|auto_generated|q_a\(8) & \inst1|altsyncram_component|auto_generated|q_a\(11)) ) ) ) # ( 
-- \inst1|altsyncram_component|auto_generated|q_a\(10) & ( !\inst1|altsyncram_component|auto_generated|q_a\(9) & ( !\inst1|altsyncram_component|auto_generated|q_a\(8) $ (!\inst1|altsyncram_component|auto_generated|q_a\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \inst12|inst82~0_combout\);

-- Location: LABCELL_X16_Y2_N0
\inst12|inst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|inst~0_combout\ = ( !\inst1|altsyncram_component|auto_generated|q_a\(10) & ( \inst1|altsyncram_component|auto_generated|q_a\(9) & ( (\inst1|altsyncram_component|auto_generated|q_a\(8) & \inst1|altsyncram_component|auto_generated|q_a\(11)) ) ) ) # 
-- ( \inst1|altsyncram_component|auto_generated|q_a\(10) & ( !\inst1|altsyncram_component|auto_generated|q_a\(9) & ( !\inst1|altsyncram_component|auto_generated|q_a\(8) $ (\inst1|altsyncram_component|auto_generated|q_a\(11)) ) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(10) & ( !\inst1|altsyncram_component|auto_generated|q_a\(9) & ( (\inst1|altsyncram_component|auto_generated|q_a\(8) & !\inst1|altsyncram_component|auto_generated|q_a\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000111100001100000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \inst12|inst~0_combout\);

-- Location: LABCELL_X12_Y1_N0
\inst13|inst63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst63~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(14) & ( \inst1|altsyncram_component|auto_generated|q_a\(12) & ( (\inst1|altsyncram_component|auto_generated|q_a\(13) & !\inst1|altsyncram_component|auto_generated|q_a\(15)) ) ) 
-- ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(14) & ( \inst1|altsyncram_component|auto_generated|q_a\(12) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(13) & !\inst1|altsyncram_component|auto_generated|q_a\(15)) ) ) ) # ( 
-- \inst1|altsyncram_component|auto_generated|q_a\(14) & ( !\inst1|altsyncram_component|auto_generated|q_a\(12) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(13) & \inst1|altsyncram_component|auto_generated|q_a\(15)) ) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(14) & ( !\inst1|altsyncram_component|auto_generated|q_a\(12) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(13) & !\inst1|altsyncram_component|auto_generated|q_a\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000001100110011001100000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \inst13|inst63~0_combout\);

-- Location: LABCELL_X12_Y1_N30
\inst13|inst13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst13~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(14) & ( \inst1|altsyncram_component|auto_generated|q_a\(12) & ( !\inst1|altsyncram_component|auto_generated|q_a\(13) $ (!\inst1|altsyncram_component|auto_generated|q_a\(15)) ) ) 
-- ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(14) & ( \inst1|altsyncram_component|auto_generated|q_a\(12) & ( !\inst1|altsyncram_component|auto_generated|q_a\(15) ) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(14) & ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(12) & ( (\inst1|altsyncram_component|auto_generated|q_a\(13) & !\inst1|altsyncram_component|auto_generated|q_a\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000000000011111111000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \inst13|inst13~0_combout\);

-- Location: LABCELL_X12_Y1_N39
\inst13|inst85~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst85~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(14) & ( \inst1|altsyncram_component|auto_generated|q_a\(12) & ( !\inst1|altsyncram_component|auto_generated|q_a\(15) ) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(14) & ( \inst1|altsyncram_component|auto_generated|q_a\(12) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(15)) # (!\inst1|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( 
-- \inst1|altsyncram_component|auto_generated|q_a\(14) & ( !\inst1|altsyncram_component|auto_generated|q_a\(12) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(15) & !\inst1|altsyncram_component|auto_generated|q_a\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011111100111111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \inst13|inst85~0_combout\);

-- Location: LABCELL_X12_Y1_N18
\inst13|inst33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst33~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(14) & ( \inst1|altsyncram_component|auto_generated|q_a\(12) & ( \inst1|altsyncram_component|auto_generated|q_a\(13) ) ) ) # ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(14) & ( \inst1|altsyncram_component|auto_generated|q_a\(12) & ( !\inst1|altsyncram_component|auto_generated|q_a\(13) ) ) ) # ( \inst1|altsyncram_component|auto_generated|q_a\(14) & ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(12) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(13) & !\inst1|altsyncram_component|auto_generated|q_a\(15)) ) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(14) & ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(12) & ( (\inst1|altsyncram_component|auto_generated|q_a\(13) & \inst1|altsyncram_component|auto_generated|q_a\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011000000000011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \inst13|inst33~0_combout\);

-- Location: LABCELL_X12_Y1_N15
\inst13|inst25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst25~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(14) & ( \inst1|altsyncram_component|auto_generated|q_a\(12) & ( (\inst1|altsyncram_component|auto_generated|q_a\(15) & \inst1|altsyncram_component|auto_generated|q_a\(13)) ) ) ) 
-- # ( \inst1|altsyncram_component|auto_generated|q_a\(14) & ( !\inst1|altsyncram_component|auto_generated|q_a\(12) & ( \inst1|altsyncram_component|auto_generated|q_a\(15) ) ) ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(14) & ( 
-- !\inst1|altsyncram_component|auto_generated|q_a\(12) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(15) & \inst1|altsyncram_component|auto_generated|q_a\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001100110011001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \inst13|inst25~0_combout\);

-- Location: LABCELL_X12_Y1_N57
\inst13|inst82~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst82~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(14) & ( \inst1|altsyncram_component|auto_generated|q_a\(12) & ( !\inst1|altsyncram_component|auto_generated|q_a\(15) $ (\inst1|altsyncram_component|auto_generated|q_a\(13)) ) ) 
-- ) # ( !\inst1|altsyncram_component|auto_generated|q_a\(14) & ( \inst1|altsyncram_component|auto_generated|q_a\(12) & ( (\inst1|altsyncram_component|auto_generated|q_a\(15) & \inst1|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( 
-- \inst1|altsyncram_component|auto_generated|q_a\(14) & ( !\inst1|altsyncram_component|auto_generated|q_a\(12) & ( (\inst1|altsyncram_component|auto_generated|q_a\(13)) # (\inst1|altsyncram_component|auto_generated|q_a\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000011000000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datac => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \inst13|inst82~0_combout\);

-- Location: LABCELL_X12_Y1_N24
\inst13|inst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|inst~0_combout\ = ( \inst1|altsyncram_component|auto_generated|q_a\(14) & ( \inst1|altsyncram_component|auto_generated|q_a\(12) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(13) & \inst1|altsyncram_component|auto_generated|q_a\(15)) ) ) ) 
-- # ( !\inst1|altsyncram_component|auto_generated|q_a\(14) & ( \inst1|altsyncram_component|auto_generated|q_a\(12) & ( !\inst1|altsyncram_component|auto_generated|q_a\(13) $ (\inst1|altsyncram_component|auto_generated|q_a\(15)) ) ) ) # ( 
-- \inst1|altsyncram_component|auto_generated|q_a\(14) & ( !\inst1|altsyncram_component|auto_generated|q_a\(12) & ( (!\inst1|altsyncram_component|auto_generated|q_a\(13) & !\inst1|altsyncram_component|auto_generated|q_a\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000011001100001100110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datae => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \inst13|inst~0_combout\);

-- Location: LABCELL_X5_Y23_N3
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


