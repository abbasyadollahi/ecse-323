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

-- DATE "10/02/2017 15:54:13"

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

ENTITY 	gA6_lab1 IS
    PORT (
	Amod13 : OUT std_logic_vector(3 DOWNTO 0);
	A : IN std_logic_vector(5 DOWNTO 0)
	);
END gA6_lab1;

-- Design Ports Information
-- Amod13[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Amod13[2]	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Amod13[1]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Amod13[0]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[3]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF gA6_lab1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Amod13 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst|inst6|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst|inst6|inst3~1_combout\ : std_logic;
SIGNAL \inst|inst|inst6|inst3~2_combout\ : std_logic;
SIGNAL \inst|inst|inst6|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst|inst6|inst1~combout\ : std_logic;
SIGNAL \inst|inst|inst7|inst3~combout\ : std_logic;
SIGNAL \inst|inst5|inst1|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst2|inst~combout\ : std_logic;
SIGNAL \inst|inst5|inst3|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst3|inst3~combout\ : std_logic;
SIGNAL \inst|inst5|inst2|inst3~combout\ : std_logic;
SIGNAL \inst|inst5|inst1|inst3~combout\ : std_logic;
SIGNAL \inst|inst5|inst|inst~combout\ : std_logic;
SIGNAL \A~combout\ : std_logic_vector(5 DOWNTO 0);

BEGIN

Amod13 <= ww_Amod13;
ww_A <= A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
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
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
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
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
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
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
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
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCCOMB_X44_Y1_N8
\inst|inst|inst6|inst3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|inst6|inst3~0_combout\ = (\A~combout\(1) & (\A~combout\(3))) # (!\A~combout\(1) & (\A~combout\(5) & ((\A~combout\(3)) # (\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(3),
	datac => \A~combout\(5),
	datad => \A~combout\(2),
	combout => \inst|inst|inst6|inst3~0_combout\);

-- Location: LCCOMB_X44_Y1_N18
\inst|inst|inst6|inst3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|inst6|inst3~1_combout\ = (\A~combout\(3) & (((\A~combout\(5)) # (\A~combout\(2))))) # (!\A~combout\(3) & (\A~combout\(1) & (\A~combout\(5) & \A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(3),
	datac => \A~combout\(5),
	datad => \A~combout\(2),
	combout => \inst|inst|inst6|inst3~1_combout\);

-- Location: LCCOMB_X44_Y1_N28
\inst|inst|inst6|inst3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|inst6|inst3~2_combout\ = (\A~combout\(4) & (((!\inst|inst|inst6|inst3~0_combout\ & !\inst|inst|inst6|inst3~1_combout\)))) # (!\A~combout\(4) & (\inst|inst|inst6|inst3~1_combout\ & ((\A~combout\(0)) # (\inst|inst|inst6|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \A~combout\(0),
	datac => \inst|inst|inst6|inst3~0_combout\,
	datad => \inst|inst|inst6|inst3~1_combout\,
	combout => \inst|inst|inst6|inst3~2_combout\);

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
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
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCCOMB_X44_Y1_N30
\inst|inst|inst6|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|inst6|inst1~0_combout\ = (\A~combout\(3) & ((\A~combout\(5)) # (\A~combout\(2)))) # (!\A~combout\(3) & (\A~combout\(5) & \A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datac => \A~combout\(5),
	datad => \A~combout\(2),
	combout => \inst|inst|inst6|inst1~0_combout\);

-- Location: LCCOMB_X44_Y1_N24
\inst|inst|inst6|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|inst6|inst1~combout\ = (\A~combout\(4) & ((\inst|inst|inst6|inst1~0_combout\) # ((\A~combout\(1) & \A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(3),
	datac => \A~combout\(4),
	datad => \inst|inst|inst6|inst1~0_combout\,
	combout => \inst|inst|inst6|inst1~combout\);

-- Location: LCCOMB_X44_Y1_N6
\inst|inst|inst7|inst3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|inst7|inst3~combout\ = \A~combout\(5) $ (\inst|inst|inst6|inst1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datac => \inst|inst|inst6|inst1~combout\,
	combout => \inst|inst|inst7|inst3~combout\);

-- Location: LCCOMB_X44_Y1_N16
\inst|inst5|inst1|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst1|inst2~0_combout\ = (\A~combout\(1) & (\inst|inst|inst6|inst3~2_combout\ & (!\A~combout\(0) & \inst|inst|inst7|inst3~combout\))) # (!\A~combout\(1) & ((\inst|inst|inst7|inst3~combout\) # ((\inst|inst|inst6|inst3~2_combout\ & 
-- !\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \inst|inst|inst6|inst3~2_combout\,
	datac => \A~combout\(0),
	datad => \inst|inst|inst7|inst3~combout\,
	combout => \inst|inst5|inst1|inst2~0_combout\);

-- Location: LCCOMB_X44_Y1_N20
\inst|inst5|inst2|inst\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst2|inst~combout\ = \A~combout\(2) $ (((\inst|inst|inst6|inst3~2_combout\) # ((\A~combout\(5) & \inst|inst|inst6|inst1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \inst|inst|inst6|inst3~2_combout\,
	datac => \inst|inst|inst6|inst1~combout\,
	datad => \A~combout\(2),
	combout => \inst|inst5|inst2|inst~combout\);

-- Location: LCCOMB_X44_Y1_N10
\inst|inst5|inst3|inst3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst3|inst3~0_combout\ = (\A~combout\(5) & ((\inst|inst|inst6|inst3~2_combout\ & (\inst|inst|inst6|inst1~combout\)) # (!\inst|inst|inst6|inst3~2_combout\ & (!\inst|inst|inst6|inst1~combout\ & !\A~combout\(2))))) # (!\A~combout\(5) & 
-- (\inst|inst|inst6|inst1~combout\ $ (((\inst|inst|inst6|inst3~2_combout\) # (\A~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \inst|inst|inst6|inst3~2_combout\,
	datac => \inst|inst|inst6|inst1~combout\,
	datad => \A~combout\(2),
	combout => \inst|inst5|inst3|inst3~0_combout\);

-- Location: LCCOMB_X44_Y1_N2
\inst|inst5|inst3|inst3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst3|inst3~combout\ = \A~combout\(3) $ (\inst|inst5|inst3|inst3~0_combout\ $ (((\inst|inst5|inst1|inst2~0_combout\) # (\inst|inst5|inst2|inst~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst1|inst2~0_combout\,
	datab => \A~combout\(3),
	datac => \inst|inst5|inst2|inst~combout\,
	datad => \inst|inst5|inst3|inst3~0_combout\,
	combout => \inst|inst5|inst3|inst3~combout\);

-- Location: LCCOMB_X44_Y1_N12
\inst|inst5|inst2|inst3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst2|inst3~combout\ = \inst|inst5|inst2|inst~combout\ $ (\inst|inst5|inst1|inst2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst2|inst~combout\,
	datac => \inst|inst5|inst1|inst2~0_combout\,
	combout => \inst|inst5|inst2|inst3~combout\);

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
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
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X44_Y1_N22
\inst|inst5|inst1|inst3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst1|inst3~combout\ = \A~combout\(1) $ (\inst|inst|inst7|inst3~combout\ $ (((\inst|inst|inst6|inst3~2_combout\ & !\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \inst|inst|inst6|inst3~2_combout\,
	datac => \A~combout\(0),
	datad => \inst|inst|inst7|inst3~combout\,
	combout => \inst|inst5|inst1|inst3~combout\);

-- Location: LCCOMB_X44_Y1_N0
\inst|inst5|inst|inst\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst|inst~combout\ = (\A~combout\(4) & (\A~combout\(0) $ (((!\inst|inst|inst6|inst3~0_combout\ & !\inst|inst|inst6|inst3~1_combout\))))) # (!\A~combout\(4) & ((\A~combout\(0) & ((!\inst|inst|inst6|inst3~1_combout\))) # (!\A~combout\(0) & 
-- (\inst|inst|inst6|inst3~0_combout\ & \inst|inst|inst6|inst3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \A~combout\(0),
	datac => \inst|inst|inst6|inst3~0_combout\,
	datad => \inst|inst|inst6|inst3~1_combout\,
	combout => \inst|inst5|inst|inst~combout\);

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Amod13[3]~I\ : cycloneii_io
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
	datain => \inst|inst5|inst3|inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Amod13(3));

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Amod13[2]~I\ : cycloneii_io
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
	datain => \inst|inst5|inst2|inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Amod13(2));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Amod13[1]~I\ : cycloneii_io
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
	datain => \inst|inst5|inst1|inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Amod13(1));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Amod13[0]~I\ : cycloneii_io
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
	datain => \inst|inst5|inst|inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Amod13(0));
END structure;


