# Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, the Altera Quartus II License Agreement,
# the Altera MegaCore Function License Agreement, or other 
# applicable license agreement, including, without limitation, 
# that your use is for the sole purpose of programming logic 
# devices manufactured by Altera and sold by Altera or its 
# authorized distributors.  Please refer to the applicable 
# agreement for further details.

# Quartus II: Generate Tcl File for Project
# File: teste_ula.tcl
# Generated on: Tue Oct 02 09:09:01 2018

# Load Quartus II Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "PROJETO_1"]} {
		puts "Project PROJETO_1 is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists PROJETO_1]} {
		project_open -revision PROJETO_1 PROJETO_1
	} else {
		project_new -revision PROJETO_1 PROJETO_1
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone V"
	set_global_assignment -name DEVICE 5CEBA4F23C7
	set_global_assignment -name TOP_LEVEL_ENTITY teste_memoria
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 14.1.0
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "16:20:10  SEPTEMBER 18, 2018"
	set_global_assignment -name LAST_QUARTUS_VERSION 14.1.0
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 256
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (VHDL)"
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT VHDL -section_id eda_simulation
	set_global_assignment -name ENABLE_OCT_DONE OFF
	set_global_assignment -name ENABLE_CONFIGURATION_PINS OFF
	set_global_assignment -name ENABLE_BOOT_SEL_PIN OFF
	set_global_assignment -name USE_CONFIGURATION_DEVICE ON
	set_global_assignment -name CRC_ERROR_OPEN_DRAIN ON
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS_WEAK_PULLUP "AS INPUT TRI-STATED"
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -fall
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -fall
	set_global_assignment -name ACTIVE_SERIAL_CLOCK FREQ_100MHZ
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name EDA_RUN_TOOL_AUTOMATICALLY OFF -section_id eda_simulation
	set_global_assignment -name BDF_FILE teste_ula.bdf
	set_global_assignment -name BDF_FILE register.bdf
	set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "2.5 V"
	set_global_assignment -name MIF_FILE data.mif
	set_global_assignment -name QIP_FILE rom.qip
	set_global_assignment -name BDF_FILE teste_memoria.bdf
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_location_assignment PIN_U13 -to operando[0]
	set_location_assignment PIN_V13 -to operando[1]
	set_location_assignment PIN_T13 -to operando[2]
	set_location_assignment PIN_T12 -to operando[3]
	set_location_assignment PIN_AA15 -to rg_in[0]
	set_location_assignment PIN_AB15 -to rg_in[1]
	set_location_assignment PIN_AA14 -to rg_in[2]
	set_location_assignment PIN_AA13 -to rg_in[3]
	set_location_assignment PIN_M9 -to clk_1mhz
	set_location_assignment PIN_U7 -to In_clock
	set_location_assignment PIN_W9 -to reset
	set_location_assignment PIN_U21 -to HEX0[0]
	set_location_assignment PIN_V21 -to HEX0[1]
	set_location_assignment PIN_W22 -to HEX0[2]
	set_location_assignment PIN_W21 -to HEX0[3]
	set_location_assignment PIN_Y22 -to HEX0[4]
	set_location_assignment PIN_Y21 -to HEX0[5]
	set_location_assignment PIN_AA22 -to HEX0[6]
	set_location_assignment PIN_AA20 -to HEX1[0]
	set_location_assignment PIN_AB20 -to HEX1[1]
	set_location_assignment PIN_AA19 -to HEX1[2]
	set_location_assignment PIN_AA18 -to HEX1[3]
	set_location_assignment PIN_AB18 -to HEX1[4]
	set_location_assignment PIN_AA17 -to HEX1[5]
	set_location_assignment PIN_U22 -to HEX1[6]
	set_location_assignment PIN_M7 -to clear
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
