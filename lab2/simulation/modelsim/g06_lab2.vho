-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "10/18/2017 19:18:11"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g06_lab2 IS
    PORT (
	rand : OUT std_logic_vector(29 DOWNTO 0);
	seed : IN std_logic_vector(15 DOWNTO 0)
	);
END g06_lab2;

-- Design Ports Information
-- rand[29]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[28]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[27]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[26]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[25]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[24]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[23]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[22]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[21]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[20]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[19]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[18]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[17]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[16]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[15]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[14]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[13]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[12]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[11]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[10]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[9]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[8]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[7]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[6]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[5]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[4]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[3]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[2]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rand[0]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seed[13]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed[12]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed[11]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed[10]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed[9]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed[8]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed[7]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed[6]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed[5]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed[4]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed[3]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed[1]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed[0]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed[15]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seed[14]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g06_lab2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rand : std_logic_vector(29 DOWNTO 0);
SIGNAL ww_seed : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~31\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~33\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~35\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~37\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~39\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~41\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~43\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~45\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~47\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~49\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~51\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~53\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~55\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~56_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~54_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~52_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~50_combout\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~48_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~46_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \seed~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

rand <= ww_rand;
ww_seed <= seed;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_seed(13),
	combout => \seed~combout\(13));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_seed(12),
	combout => \seed~combout\(12));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_seed(10),
	combout => \seed~combout\(10));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_seed(8),
	combout => \seed~combout\(8));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_seed(5),
	combout => \seed~combout\(5));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_seed(4),
	combout => \seed~combout\(4));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_seed(3),
	combout => \seed~combout\(3));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_seed(15),
	combout => \seed~combout\(15));

-- Location: LCCOMB_X48_Y17_N2
\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ = (\seed~combout\(0) & (\seed~combout\(15) $ (VCC))) # (!\seed~combout\(0) & (\seed~combout\(15) & VCC))
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\ = CARRY((\seed~combout\(0) & \seed~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(0),
	datab => \seed~combout\(15),
	datad => VCC,
	combout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	cout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\);

-- Location: LCCOMB_X48_Y17_N4
\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ = (\seed~combout\(1) & (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # (!\seed~combout\(1) & ((\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\) # 
-- (GND)))
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~3\ = CARRY((!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (!\seed~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(1),
	datad => VCC,
	cin => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\,
	combout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	cout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~3\);

-- Location: LCCOMB_X48_Y17_N6
\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ = (\seed~combout\(2) & (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~3\ $ (GND))) # (!\seed~combout\(2) & 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~3\ & VCC))
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\ = CARRY((\seed~combout\(2) & !\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(2),
	datad => VCC,
	cin => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~3\,
	combout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	cout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X48_Y17_N8
\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ = (\seed~combout\(3) & (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # (!\seed~combout\(3) & ((\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\) # 
-- (GND)))
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~7\ = CARRY((!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\) # (!\seed~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seed~combout\(3),
	datad => VCC,
	cin => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\,
	combout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	cout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~7\);

-- Location: LCCOMB_X48_Y17_N10
\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ = (\seed~combout\(4) & (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~7\ $ (GND))) # (!\seed~combout\(4) & 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~7\ & VCC))
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\ = CARRY((\seed~combout\(4) & !\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seed~combout\(4),
	datad => VCC,
	cin => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~7\,
	combout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	cout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\);

-- Location: LCCOMB_X48_Y17_N12
\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ = (\seed~combout\(5) & (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\)) # (!\seed~combout\(5) & ((\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\) # 
-- (GND)))
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~11\ = CARRY((!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (!\seed~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seed~combout\(5),
	datad => VCC,
	cin => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\,
	combout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	cout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X48_Y17_N14
\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ = (\seed~combout\(6) & (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~11\ $ (GND))) # (!\seed~combout\(6) & 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~11\ & VCC))
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\ = CARRY((\seed~combout\(6) & !\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(6),
	datad => VCC,
	cin => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~11\,
	combout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	cout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\);

-- Location: LCCOMB_X48_Y17_N16
\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ = (\seed~combout\(7) & (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # (!\seed~combout\(7) & ((\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\) # 
-- (GND)))
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~15\ = CARRY((!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (!\seed~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(7),
	datad => VCC,
	cin => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\,
	combout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	cout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~15\);

-- Location: LCCOMB_X48_Y17_N18
\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ = (\seed~combout\(8) & (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~15\ $ (GND))) # (!\seed~combout\(8) & 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~15\ & VCC))
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\ = CARRY((\seed~combout\(8) & !\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seed~combout\(8),
	datad => VCC,
	cin => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~15\,
	combout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	cout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\);

-- Location: LCCOMB_X48_Y17_N20
\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ = (\seed~combout\(9) & (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # (!\seed~combout\(9) & ((\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\) # 
-- (GND)))
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~19\ = CARRY((!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\) # (!\seed~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(9),
	datad => VCC,
	cin => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\,
	combout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	cout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~19\);

-- Location: LCCOMB_X48_Y17_N22
\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ = (\seed~combout\(10) & (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~19\ $ (GND))) # (!\seed~combout\(10) & 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~19\ & VCC))
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\ = CARRY((\seed~combout\(10) & !\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seed~combout\(10),
	datad => VCC,
	cin => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~19\,
	combout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	cout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\);

-- Location: LCCOMB_X48_Y17_N24
\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ = (\seed~combout\(11) & (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # (!\seed~combout\(11) & ((\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\) 
-- # (GND)))
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~23\ = CARRY((!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\) # (!\seed~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(11),
	datad => VCC,
	cin => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\,
	combout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	cout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X48_Y17_N26
\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ = (\seed~combout\(12) & (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~23\ $ (GND))) # (!\seed~combout\(12) & 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~23\ & VCC))
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~25\ = CARRY((\seed~combout\(12) & !\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seed~combout\(12),
	datad => VCC,
	cin => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~23\,
	combout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	cout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~25\);

-- Location: LCCOMB_X48_Y17_N28
\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ = \seed~combout\(13) $ (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seed~combout\(13),
	cin => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~25\,
	combout => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_seed(11),
	combout => \seed~combout\(11));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_seed(9),
	combout => \seed~combout\(9));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_seed(6),
	combout => \seed~combout\(6));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_seed(2),
	combout => \seed~combout\(2));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_seed(0),
	combout => \seed~combout\(0));

-- Location: LCCOMB_X49_Y18_N4
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ = (\seed~combout\(1) & (\seed~combout\(0) $ (VCC))) # (!\seed~combout\(1) & (\seed~combout\(0) & VCC))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\ = CARRY((\seed~combout\(1) & \seed~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(1),
	datab => \seed~combout\(0),
	datad => VCC,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\);

-- Location: LCCOMB_X49_Y18_N6
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ = (\seed~combout\(1) & ((\seed~combout\(2) & (\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\ & VCC)) # (!\seed~combout\(2) & 
-- (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\)))) # (!\seed~combout\(1) & ((\seed~combout\(2) & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # (!\seed~combout\(2) & 
-- ((\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (GND)))))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~3\ = CARRY((\seed~combout\(1) & (!\seed~combout\(2) & !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # (!\seed~combout\(1) & 
-- ((!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (!\seed~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(1),
	datab => \seed~combout\(2),
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~1\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~3\);

-- Location: LCCOMB_X49_Y18_N8
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ = ((\seed~combout\(3) $ (\seed~combout\(2) $ (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~3\)))) # (GND)
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\ = CARRY((\seed~combout\(3) & ((\seed~combout\(2)) # (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~3\))) # (!\seed~combout\(3) & (\seed~combout\(2) & 
-- !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(3),
	datab => \seed~combout\(2),
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~3\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X49_Y18_N10
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ = (\seed~combout\(4) & ((\seed~combout\(3) & (\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\ & VCC)) # (!\seed~combout\(3) & 
-- (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\)))) # (!\seed~combout\(4) & ((\seed~combout\(3) & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # (!\seed~combout\(3) & 
-- ((\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\) # (GND)))))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~7\ = CARRY((\seed~combout\(4) & (!\seed~combout\(3) & !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # (!\seed~combout\(4) & 
-- ((!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\) # (!\seed~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(4),
	datab => \seed~combout\(3),
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~5\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~7\);

-- Location: LCCOMB_X49_Y18_N12
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ = ((\seed~combout\(5) $ (\seed~combout\(4) $ (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~7\)))) # (GND)
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\ = CARRY((\seed~combout\(5) & ((\seed~combout\(4)) # (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~7\))) # (!\seed~combout\(5) & (\seed~combout\(4) & 
-- !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(5),
	datab => \seed~combout\(4),
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~7\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\);

-- Location: LCCOMB_X49_Y18_N14
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ = (\seed~combout\(5) & ((\seed~combout\(6) & (\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\ & VCC)) # (!\seed~combout\(6) & 
-- (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\)))) # (!\seed~combout\(5) & ((\seed~combout\(6) & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\)) # (!\seed~combout\(6) & 
-- ((\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (GND)))))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~11\ = CARRY((\seed~combout\(5) & (!\seed~combout\(6) & !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\)) # (!\seed~combout\(5) & 
-- ((!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (!\seed~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(5),
	datab => \seed~combout\(6),
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~9\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X49_Y18_N16
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ = ((\seed~combout\(7) $ (\seed~combout\(6) $ (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~11\)))) # (GND)
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\ = CARRY((\seed~combout\(7) & ((\seed~combout\(6)) # (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~11\))) # (!\seed~combout\(7) & (\seed~combout\(6) & 
-- !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(7),
	datab => \seed~combout\(6),
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~11\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\);

-- Location: LCCOMB_X49_Y18_N18
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ = (\seed~combout\(7) & ((\seed~combout\(8) & (\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\ & VCC)) # (!\seed~combout\(8) & 
-- (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\)))) # (!\seed~combout\(7) & ((\seed~combout\(8) & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # (!\seed~combout\(8) & 
-- ((\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (GND)))))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~15\ = CARRY((\seed~combout\(7) & (!\seed~combout\(8) & !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # (!\seed~combout\(7) & 
-- ((!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (!\seed~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(7),
	datab => \seed~combout\(8),
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~13\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~15\);

-- Location: LCCOMB_X49_Y18_N20
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ = ((\seed~combout\(9) $ (\seed~combout\(8) $ (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~15\)))) # (GND)
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\ = CARRY((\seed~combout\(9) & ((\seed~combout\(8)) # (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~15\))) # (!\seed~combout\(9) & (\seed~combout\(8) & 
-- !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(9),
	datab => \seed~combout\(8),
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~15\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\);

-- Location: LCCOMB_X49_Y18_N22
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ = (\seed~combout\(10) & ((\seed~combout\(9) & (\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\ & VCC)) # (!\seed~combout\(9) & 
-- (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\)))) # (!\seed~combout\(10) & ((\seed~combout\(9) & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # (!\seed~combout\(9) & 
-- ((\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\) # (GND)))))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~19\ = CARRY((\seed~combout\(10) & (!\seed~combout\(9) & !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # (!\seed~combout\(10) & 
-- ((!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\) # (!\seed~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(10),
	datab => \seed~combout\(9),
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~17\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~19\);

-- Location: LCCOMB_X49_Y18_N24
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ = ((\seed~combout\(10) $ (\seed~combout\(11) $ (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~19\)))) # (GND)
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\ = CARRY((\seed~combout\(10) & ((\seed~combout\(11)) # (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~19\))) # (!\seed~combout\(10) & (\seed~combout\(11) & 
-- !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(10),
	datab => \seed~combout\(11),
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~19\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\);

-- Location: LCCOMB_X49_Y18_N26
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ = (\seed~combout\(11) & ((\seed~combout\(12) & (\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\ & VCC)) # (!\seed~combout\(12) & 
-- (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\)))) # (!\seed~combout\(11) & ((\seed~combout\(12) & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # (!\seed~combout\(12) & 
-- ((\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\) # (GND)))))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~23\ = CARRY((\seed~combout\(11) & (!\seed~combout\(12) & !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # (!\seed~combout\(11) & 
-- ((!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\) # (!\seed~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(11),
	datab => \seed~combout\(12),
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~21\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X49_Y18_N28
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ = ((\seed~combout\(12) $ (\seed~combout\(13) $ (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~23\)))) # (GND)
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~25\ = CARRY((\seed~combout\(12) & ((\seed~combout\(13)) # (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~23\))) # (!\seed~combout\(12) & (\seed~combout\(13) & 
-- !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(12),
	datab => \seed~combout\(13),
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~23\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~25\);

-- Location: LCCOMB_X49_Y18_N30
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ = (\seed~combout\(14) & ((\seed~combout\(13) & (\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~25\ & VCC)) # (!\seed~combout\(13) & 
-- (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~25\)))) # (!\seed~combout\(14) & ((\seed~combout\(13) & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # (!\seed~combout\(13) & 
-- ((\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~25\) # (GND)))))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~27\ = CARRY((\seed~combout\(14) & (!\seed~combout\(13) & !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # (!\seed~combout\(14) & 
-- ((!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~25\) # (!\seed~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(14),
	datab => \seed~combout\(13),
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~25\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~27\);

-- Location: LCCOMB_X49_Y17_N0
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ = ((\seed~combout\(14) $ (\seed~combout\(15) $ (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~27\)))) # (GND)
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~29\ = CARRY((\seed~combout\(14) & ((\seed~combout\(15)) # (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~27\))) # (!\seed~combout\(14) & (\seed~combout\(15) & 
-- !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seed~combout\(14),
	datab => \seed~combout\(15),
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~27\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~29\);

-- Location: LCCOMB_X49_Y17_N2
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ = (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~29\)) # 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & ((\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~29\) # (GND)))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~31\ = CARRY((!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~29\) # (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~29\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~31\);

-- Location: LCCOMB_X49_Y17_N4
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ = (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ & (\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~31\ $ (GND))) # 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~31\ & VCC))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~33\ = CARRY((\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ & !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~31\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~33\);

-- Location: LCCOMB_X49_Y17_N6
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ = (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~33\)) # 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & ((\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~33\) # (GND)))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~35\ = CARRY((!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~33\) # (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~33\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~35\);

-- Location: LCCOMB_X49_Y17_N8
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~36_combout\ = (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & (\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~35\ $ (GND))) # 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~35\ & VCC))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~37\ = CARRY((\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~35\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~36_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~37\);

-- Location: LCCOMB_X49_Y17_N10
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~38_combout\ = (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~37\)) # 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & ((\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~37\) # (GND)))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~39\ = CARRY((!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~37\) # (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~37\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~38_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~39\);

-- Location: LCCOMB_X49_Y17_N12
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~40_combout\ = (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & (\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~39\ $ (GND))) # 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~39\ & VCC))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~41\ = CARRY((\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~39\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~40_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~41\);

-- Location: LCCOMB_X49_Y17_N14
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~42_combout\ = (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~41\)) # 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & ((\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~41\) # (GND)))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~43\ = CARRY((!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~41\) # (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~41\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~42_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~43\);

-- Location: LCCOMB_X49_Y17_N16
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~44_combout\ = (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & (\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~43\ $ (GND))) # 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~43\ & VCC))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~45\ = CARRY((\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~43\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~44_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~45\);

-- Location: LCCOMB_X49_Y17_N18
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~46_combout\ = (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~45\)) # 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & ((\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~45\) # (GND)))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~47\ = CARRY((!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~45\) # (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~45\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~46_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~47\);

-- Location: LCCOMB_X49_Y17_N20
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~48_combout\ = (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & (\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~47\ $ (GND))) # 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~47\ & VCC))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~49\ = CARRY((\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~47\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~48_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~49\);

-- Location: LCCOMB_X49_Y17_N22
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~50_combout\ = (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~49\)) # 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & ((\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~49\) # (GND)))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~51\ = CARRY((!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~49\) # (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~49\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~50_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~51\);

-- Location: LCCOMB_X49_Y17_N24
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~52_combout\ = (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & (\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~51\ $ (GND))) # 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~51\ & VCC))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~53\ = CARRY((\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & !\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~51\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~52_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~53\);

-- Location: LCCOMB_X49_Y17_N26
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~54_combout\ = (\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & (!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~53\)) # 
-- (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & ((\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~53\) # (GND)))
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~55\ = CARRY((!\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~53\) # (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~53\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~54_combout\,
	cout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~55\);

-- Location: LCCOMB_X49_Y17_N28
\inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~56_combout\ = \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~55\ $ (!\inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|first_adder|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	cin => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~55\,
	combout => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~56_combout\);

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_seed(14),
	combout => \seed~combout\(14));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_seed(7),
	combout => \seed~combout\(7));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seed[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_seed(1),
	combout => \seed~combout\(1));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(29));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(28));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(27));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(26));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(25));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(24));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(23));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(22));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(21));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(20));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(19));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(18));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(17));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(16));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(15));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(14));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(13));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(12));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(11));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(10));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(9));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(8));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(7));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(6));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(5));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(4));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(3));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(2));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|second_adder|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(1));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rand[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \seed~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rand(0));
END structure;


