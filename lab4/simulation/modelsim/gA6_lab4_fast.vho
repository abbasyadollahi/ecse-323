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

-- DATE "11/17/2017 21:02:40"

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

ENTITY 	gA6_lab4 IS
    PORT (
	legal_play : OUT std_logic;
	new_card : IN std_logic_vector(5 DOWNTO 0);
	cards_in_hand : IN std_logic_vector(5 DOWNTO 0)
	);
END gA6_lab4;

-- Design Ports Information
-- legal_play	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- new_card[5]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- new_card[4]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cards_in_hand[5]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cards_in_hand[4]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cards_in_hand[3]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cards_in_hand[2]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cards_in_hand[1]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cards_in_hand[0]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- new_card[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- new_card[2]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- new_card[1]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- new_card[0]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF gA6_lab4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_legal_play : std_logic;
SIGNAL ww_new_card : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_cards_in_hand : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_4~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[21]~33_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[20]~34_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[19]~37_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[18]~38_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[25]~41_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[24]~42_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[35]~50_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[34]~51_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|sum_cards:card_value[3]~0_combout\ : std_logic;
SIGNAL \inst|sum_cards:card_value[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[28]~54_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[21]~32_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[20]~35_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[19]~36_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[18]~39_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_3~9\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[24]~43_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[26]~40_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[25]~53_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_4~9\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_4~11\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_4~12_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[30]~47_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[33]~46_combout\ : std_logic;
SIGNAL \inst|sum_cards:card_value[5]~0_combout\ : std_logic;
SIGNAL \inst|sum_cards:card_value[0]~0_combout\ : std_logic;
SIGNAL \inst|sum_cards:new_sum[0]~1_cout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Add4~1\ : std_logic;
SIGNAL \inst|Add4~3\ : std_logic;
SIGNAL \inst|Add4~4_combout\ : std_logic;
SIGNAL \inst|Add0~1_combout\ : std_logic;
SIGNAL \inst|sum_cards:card_value[2]~0_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add4~5\ : std_logic;
SIGNAL \inst|Add4~7\ : std_logic;
SIGNAL \inst|Add4~8_combout\ : std_logic;
SIGNAL \inst|Add4~6_combout\ : std_logic;
SIGNAL \inst|Add4~2_combout\ : std_logic;
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|LessThan5~0_combout\ : std_logic;
SIGNAL \inst|LessThan5~1_combout\ : std_logic;
SIGNAL \new_card~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \cards_in_hand~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|ALT_INV_LessThan5~1_combout\ : std_logic;

BEGIN

legal_play <= ww_legal_play;
ww_new_card <= new_card;
ww_cards_in_hand <= cards_in_hand;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_LessThan5~1_combout\ <= NOT \inst|LessThan5~1_combout\;

-- Location: LCCOMB_X43_Y21_N10
\inst|Mod0|auto_generated|divider|divider|op_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_2~2_combout\ = (\cards_in_hand~combout\(3) & (\inst|Mod0|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\cards_in_hand~combout\(3) & (!\inst|Mod0|auto_generated|divider|divider|op_2~1\))
-- \inst|Mod0|auto_generated|divider|divider|op_2~3\ = CARRY((!\cards_in_hand~combout\(3) & !\inst|Mod0|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cards_in_hand~combout\(3),
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|op_2~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X43_Y21_N14
\inst|Mod0|auto_generated|divider|divider|op_2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_2~6_combout\ = (\cards_in_hand~combout\(5) & (!\inst|Mod0|auto_generated|divider|divider|op_2~5\)) # (!\cards_in_hand~combout\(5) & ((\inst|Mod0|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \inst|Mod0|auto_generated|divider|divider|op_2~7\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|op_2~5\) # (!\cards_in_hand~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cards_in_hand~combout\(5),
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|op_2~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|op_2~6_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X43_Y22_N16
\inst|Mod0|auto_generated|divider|divider|op_3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_3~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_3~1\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[18]~38_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[18]~39_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|op_3~1\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[18]~38_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[18]~39_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|op_3~3\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[18]~38_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[18]~39_combout\ & !\inst|Mod0|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~38_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~39_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|op_3~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X43_Y22_N20
\inst|Mod0|auto_generated|divider|divider|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_3~6_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[20]~34_combout\ & (((!\inst|Mod0|auto_generated|divider|divider|op_3~5\)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[20]~34_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[20]~35_combout\ & (!\inst|Mod0|auto_generated|divider|divider|op_3~5\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[20]~35_combout\ & ((\inst|Mod0|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \inst|Mod0|auto_generated|divider|divider|op_3~7\ = CARRY(((!\inst|Mod0|auto_generated|divider|divider|StageOut[20]~34_combout\ & !\inst|Mod0|auto_generated|divider|divider|StageOut[20]~35_combout\)) # (!\inst|Mod0|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[20]~34_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[20]~35_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|op_3~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|op_3~6_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X44_Y22_N18
\inst|Mod0|auto_generated|divider|divider|op_4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_4~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_4~3\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[25]~41_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[25]~53_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|op_4~3\ & ((((\inst|Mod0|auto_generated|divider|divider|StageOut[25]~41_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[25]~53_combout\)))))
-- \inst|Mod0|auto_generated|divider|divider|op_4~5\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|op_4~3\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[25]~41_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[25]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[25]~41_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[25]~53_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|op_4~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|op_4~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X44_Y22_N22
\inst|Mod0|auto_generated|divider|divider|op_4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_4~8_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_4~7\ & ((((\inst|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\))))) # (!\inst|Mod0|auto_generated|divider|divider|op_4~7\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- ((\inst|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\) # (GND))))
-- \inst|Mod0|auto_generated|divider|divider|op_4~9\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\) # ((\inst|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\) # (!\inst|Mod0|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|op_4~7\,
	combout => \inst|Mod0|auto_generated|divider|divider|op_4~8_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_4~9\);

-- Location: LCCOMB_X44_Y22_N24
\inst|Mod0|auto_generated|divider|divider|op_4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_4~10_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_4~9\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[28]~54_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|op_4~9\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[28]~54_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|op_4~11\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[28]~54_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\ & !\inst|Mod0|auto_generated|divider|divider|op_4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[28]~54_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|op_4~9\,
	combout => \inst|Mod0|auto_generated|divider|divider|op_4~10_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_4~11\);

-- Location: LCCOMB_X43_Y24_N10
\inst|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = ((\new_card~combout\(2) $ (\inst|sum_cards:card_value[2]~0_combout\ $ (!\inst|Add2~1\)))) # (GND)
-- \inst|Add2~3\ = CARRY((\new_card~combout\(2) & ((\inst|sum_cards:card_value[2]~0_combout\) # (!\inst|Add2~1\))) # (!\new_card~combout\(2) & (\inst|sum_cards:card_value[2]~0_combout\ & !\inst|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \new_card~combout\(2),
	datab => \inst|sum_cards:card_value[2]~0_combout\,
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X43_Y24_N12
\inst|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|sum_cards:card_value[3]~0_combout\ & ((\new_card~combout\(3) & (\inst|Add2~3\ & VCC)) # (!\new_card~combout\(3) & (!\inst|Add2~3\)))) # (!\inst|sum_cards:card_value[3]~0_combout\ & ((\new_card~combout\(3) & (!\inst|Add2~3\)) 
-- # (!\new_card~combout\(3) & ((\inst|Add2~3\) # (GND)))))
-- \inst|Add2~5\ = CARRY((\inst|sum_cards:card_value[3]~0_combout\ & (!\new_card~combout\(3) & !\inst|Add2~3\)) # (!\inst|sum_cards:card_value[3]~0_combout\ & ((!\inst|Add2~3\) # (!\new_card~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sum_cards:card_value[3]~0_combout\,
	datab => \new_card~combout\(3),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X43_Y24_N14
\inst|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\new_card~combout\(4) & (\inst|Add2~5\ $ (GND))) # (!\new_card~combout\(4) & (!\inst|Add2~5\ & VCC))
-- \inst|Add2~7\ = CARRY((\new_card~combout\(4) & !\inst|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \new_card~combout\(4),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X43_Y24_N16
\inst|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = \inst|Add2~7\ $ (\new_card~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \new_card~combout\(5),
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\);

-- Location: LCCOMB_X43_Y21_N2
\inst|Mod0|auto_generated|divider|divider|StageOut[21]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[21]~33_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_2~6_combout\ & !\inst|Mod0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|op_2~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~33_combout\);

-- Location: LCCOMB_X43_Y21_N20
\inst|Mod0|auto_generated|divider|divider|StageOut[20]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[20]~34_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_2~8_combout\ & \cards_in_hand~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \cards_in_hand~combout\(4),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[20]~34_combout\);

-- Location: LCCOMB_X43_Y21_N18
\inst|Mod0|auto_generated|divider|divider|StageOut[19]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[19]~37_combout\ = (!\inst|Mod0|auto_generated|divider|divider|op_2~8_combout\ & \inst|Mod0|auto_generated|divider|divider|op_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|op_2~2_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[19]~37_combout\);

-- Location: LCCOMB_X43_Y21_N4
\inst|Mod0|auto_generated|divider|divider|StageOut[18]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[18]~38_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_2~8_combout\ & \cards_in_hand~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \cards_in_hand~combout\(2),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~38_combout\);

-- Location: LCCOMB_X44_Y22_N2
\inst|Mod0|auto_generated|divider|divider|StageOut[25]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[25]~41_combout\ = (!\inst|Mod0|auto_generated|divider|divider|op_3~10_combout\ & \inst|Mod0|auto_generated|divider|divider|op_3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|op_3~2_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[25]~41_combout\);

-- Location: LCCOMB_X43_Y22_N2
\inst|Mod0|auto_generated|divider|divider|StageOut[24]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[24]~42_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_3~10_combout\ & \cards_in_hand~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \cards_in_hand~combout\(1),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[24]~42_combout\);

-- Location: LCCOMB_X44_Y22_N4
\inst|Mod0|auto_generated|divider|divider|StageOut[32]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_4~12_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[25]~41_combout\) # 
-- ((\inst|Mod0|auto_generated|divider|divider|StageOut[25]~53_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|op_4~12_combout\ & (((\inst|Mod0|auto_generated|divider|divider|op_4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[25]~41_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[25]~53_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|op_4~4_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\);

-- Location: LCCOMB_X43_Y22_N0
\inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|Mod0|auto_generated|divider|divider|StageOut[33]~46_combout\ $ (((\inst|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\ & 
-- \inst|Mod0|auto_generated|divider|divider|StageOut[30]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[30]~47_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[33]~46_combout\,
	combout => \inst|Add0~0_combout\);

-- Location: LCCOMB_X44_Y22_N12
\inst|Mod0|auto_generated|divider|divider|StageOut[35]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[35]~50_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_4~12_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[28]~54_combout\) # 
-- ((\inst|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|op_4~12_combout\ & (((\inst|Mod0|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[28]~54_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[35]~50_combout\);

-- Location: LCCOMB_X44_Y22_N6
\inst|Mod0|auto_generated|divider|divider|StageOut[34]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[34]~51_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_4~12_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- ((\inst|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|op_4~12_combout\ & (((\inst|Mod0|auto_generated|divider|divider|op_4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|op_4~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[34]~51_combout\);

-- Location: LCCOMB_X43_Y22_N26
\inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\ & \inst|Mod0|auto_generated|divider|divider|StageOut[30]~47_combout\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[34]~51_combout\))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\ & 
-- ((!\inst|Mod0|auto_generated|divider|divider|StageOut[34]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[30]~47_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[34]~51_combout\,
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X43_Y22_N4
\inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[34]~51_combout\ & (((!\inst|Mod0|auto_generated|divider|divider|StageOut[33]~46_combout\) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[35]~50_combout\)) # 
-- (!\inst|LessThan0~0_combout\))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[34]~51_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[35]~50_combout\) # ((\inst|LessThan0~0_combout\ & 
-- \inst|Mod0|auto_generated|divider|divider|StageOut[33]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[34]~51_combout\,
	datab => \inst|LessThan0~0_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[35]~50_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[33]~46_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X43_Y24_N0
\inst|sum_cards:card_value[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sum_cards:card_value[3]~0_combout\ = (\inst|LessThan0~1_combout\) # ((\inst|Add0~0_combout\) # (!\inst|sum_cards:card_value[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~1_combout\,
	datab => \inst|sum_cards:card_value[5]~0_combout\,
	datac => \inst|Add0~0_combout\,
	combout => \inst|sum_cards:card_value[3]~0_combout\);

-- Location: LCCOMB_X43_Y22_N6
\inst|sum_cards:card_value[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sum_cards:card_value[1]~0_combout\ = ((\inst|LessThan0~1_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[30]~47_combout\ $ (\inst|Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\))) # 
-- (!\inst|sum_cards:card_value[5]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sum_cards:card_value[5]~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[30]~47_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\,
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|sum_cards:card_value[1]~0_combout\);

-- Location: LCCOMB_X43_Y21_N24
\inst|Mod0|auto_generated|divider|divider|StageOut[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_3~10_combout\ & ((\inst|Mod0|auto_generated|divider|divider|op_2~8_combout\ & ((\cards_in_hand~combout\(3)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|op_2~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|op_2~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \cards_in_hand~combout\(3),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X43_Y21_N28
\inst|Mod0|auto_generated|divider|divider|StageOut[28]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[28]~54_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_3~10_combout\ & ((\inst|Mod0|auto_generated|divider|divider|op_2~8_combout\ & ((\cards_in_hand~combout\(5)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|op_2~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|op_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|op_2~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \cards_in_hand~combout\(5),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[28]~54_combout\);

-- Location: LCCOMB_X43_Y21_N6
\inst|Mod0|auto_generated|divider|divider|StageOut[27]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_3~10_combout\ & ((\inst|Mod0|auto_generated|divider|divider|op_2~8_combout\ & ((\cards_in_hand~combout\(4)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|op_2~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|op_2~4_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \cards_in_hand~combout\(4),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\new_card[5]~I\ : cycloneii_io
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
	padio => ww_new_card(5),
	combout => \new_card~combout\(5));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cards_in_hand[4]~I\ : cycloneii_io
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
	padio => ww_cards_in_hand(4),
	combout => \cards_in_hand~combout\(4));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cards_in_hand[0]~I\ : cycloneii_io
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
	padio => ww_cards_in_hand(0),
	combout => \cards_in_hand~combout\(0));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\new_card[2]~I\ : cycloneii_io
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
	padio => ww_new_card(2),
	combout => \new_card~combout\(2));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\new_card[0]~I\ : cycloneii_io
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
	padio => ww_new_card(0),
	combout => \new_card~combout\(0));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\new_card[1]~I\ : cycloneii_io
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
	padio => ww_new_card(1),
	combout => \new_card~combout\(1));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cards_in_hand[1]~I\ : cycloneii_io
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
	padio => ww_cards_in_hand(1),
	combout => \cards_in_hand~combout\(1));

-- Location: LCCOMB_X43_Y22_N14
\inst|Mod0|auto_generated|divider|divider|op_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_3~0_combout\ = \cards_in_hand~combout\(1) $ (VCC)
-- \inst|Mod0|auto_generated|divider|divider|op_3~1\ = CARRY(\cards_in_hand~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cards_in_hand~combout\(1),
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_3~1\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cards_in_hand[3]~I\ : cycloneii_io
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
	padio => ww_cards_in_hand(3),
	combout => \cards_in_hand~combout\(3));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cards_in_hand[2]~I\ : cycloneii_io
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
	padio => ww_cards_in_hand(2),
	combout => \cards_in_hand~combout\(2));

-- Location: LCCOMB_X43_Y21_N8
\inst|Mod0|auto_generated|divider|divider|op_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_2~0_combout\ = \cards_in_hand~combout\(2) $ (VCC)
-- \inst|Mod0|auto_generated|divider|divider|op_2~1\ = CARRY(\cards_in_hand~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cards_in_hand~combout\(2),
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|op_2~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X43_Y21_N12
\inst|Mod0|auto_generated|divider|divider|op_2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_2~4_combout\ = (\cards_in_hand~combout\(4) & (\inst|Mod0|auto_generated|divider|divider|op_2~3\ $ (GND))) # (!\cards_in_hand~combout\(4) & (!\inst|Mod0|auto_generated|divider|divider|op_2~3\ & VCC))
-- \inst|Mod0|auto_generated|divider|divider|op_2~5\ = CARRY((\cards_in_hand~combout\(4) & !\inst|Mod0|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cards_in_hand~combout\(4),
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|op_2~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|op_2~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X43_Y21_N16
\inst|Mod0|auto_generated|divider|divider|op_2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_2~8_combout\ = \inst|Mod0|auto_generated|divider|divider|op_2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|op_2~7\,
	combout => \inst|Mod0|auto_generated|divider|divider|op_2~8_combout\);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cards_in_hand[5]~I\ : cycloneii_io
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
	padio => ww_cards_in_hand(5),
	combout => \cards_in_hand~combout\(5));

-- Location: LCCOMB_X43_Y21_N0
\inst|Mod0|auto_generated|divider|divider|StageOut[21]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[21]~32_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_2~8_combout\ & \cards_in_hand~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \cards_in_hand~combout\(5),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~32_combout\);

-- Location: LCCOMB_X43_Y21_N22
\inst|Mod0|auto_generated|divider|divider|StageOut[20]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[20]~35_combout\ = (!\inst|Mod0|auto_generated|divider|divider|op_2~8_combout\ & \inst|Mod0|auto_generated|divider|divider|op_2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|op_2~4_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[20]~35_combout\);

-- Location: LCCOMB_X43_Y22_N8
\inst|Mod0|auto_generated|divider|divider|StageOut[19]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[19]~36_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_2~8_combout\ & \cards_in_hand~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \cards_in_hand~combout\(3),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[19]~36_combout\);

-- Location: LCCOMB_X43_Y21_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[18]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[18]~39_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_2~0_combout\ & !\inst|Mod0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|op_2~0_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~39_combout\);

-- Location: LCCOMB_X43_Y22_N18
\inst|Mod0|auto_generated|divider|divider|op_3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_3~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_3~3\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[19]~37_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[19]~36_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|op_3~3\ & ((((\inst|Mod0|auto_generated|divider|divider|StageOut[19]~37_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[19]~36_combout\)))))
-- \inst|Mod0|auto_generated|divider|divider|op_3~5\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|op_3~3\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[19]~37_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[19]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[19]~37_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[19]~36_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|op_3~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|op_3~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X43_Y22_N22
\inst|Mod0|auto_generated|divider|divider|op_3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_3~8_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_3~7\ & ((((\inst|Mod0|auto_generated|divider|divider|StageOut[21]~33_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[21]~32_combout\))))) # (!\inst|Mod0|auto_generated|divider|divider|op_3~7\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[21]~33_combout\) # 
-- ((\inst|Mod0|auto_generated|divider|divider|StageOut[21]~32_combout\) # (GND))))
-- \inst|Mod0|auto_generated|divider|divider|op_3~9\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[21]~33_combout\) # ((\inst|Mod0|auto_generated|divider|divider|StageOut[21]~32_combout\) # (!\inst|Mod0|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~33_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~32_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|op_3~7\,
	combout => \inst|Mod0|auto_generated|divider|divider|op_3~8_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_3~9\);

-- Location: LCCOMB_X43_Y22_N24
\inst|Mod0|auto_generated|divider|divider|op_3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_3~10_combout\ = !\inst|Mod0|auto_generated|divider|divider|op_3~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|op_3~9\,
	combout => \inst|Mod0|auto_generated|divider|divider|op_3~10_combout\);

-- Location: LCCOMB_X43_Y22_N28
\inst|Mod0|auto_generated|divider|divider|StageOut[24]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[24]~43_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_3~0_combout\ & !\inst|Mod0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|op_3~0_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[24]~43_combout\);

-- Location: LCCOMB_X44_Y22_N14
\inst|Mod0|auto_generated|divider|divider|op_4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_4~0_combout\ = \cards_in_hand~combout\(0) $ (VCC)
-- \inst|Mod0|auto_generated|divider|divider|op_4~1\ = CARRY(\cards_in_hand~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cards_in_hand~combout\(0),
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|op_4~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X44_Y22_N16
\inst|Mod0|auto_generated|divider|divider|op_4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_4~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_4~1\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[24]~42_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[24]~43_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|op_4~1\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[24]~42_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[24]~43_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|op_4~3\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[24]~42_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[24]~43_combout\ & !\inst|Mod0|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[24]~42_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[24]~43_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|op_4~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|op_4~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X44_Y22_N28
\inst|Mod0|auto_generated|divider|divider|StageOut[28]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_3~8_combout\ & !\inst|Mod0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|op_3~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\);

-- Location: LCCOMB_X43_Y22_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[27]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_3~6_combout\ & !\inst|Mod0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|op_3~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\);

-- Location: LCCOMB_X44_Y22_N0
\inst|Mod0|auto_generated|divider|divider|StageOut[26]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[26]~40_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_3~4_combout\ & !\inst|Mod0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|op_3~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~40_combout\);

-- Location: LCCOMB_X43_Y21_N26
\inst|Mod0|auto_generated|divider|divider|StageOut[25]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[25]~53_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_3~10_combout\ & ((\inst|Mod0|auto_generated|divider|divider|op_2~8_combout\ & ((\cards_in_hand~combout\(2)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|op_2~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|op_2~0_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \cards_in_hand~combout\(2),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[25]~53_combout\);

-- Location: LCCOMB_X44_Y22_N20
\inst|Mod0|auto_generated|divider|divider|op_4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_4~6_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ & (((!\inst|Mod0|auto_generated|divider|divider|op_4~5\)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[26]~40_combout\ & (!\inst|Mod0|auto_generated|divider|divider|op_4~5\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[26]~40_combout\ & ((\inst|Mod0|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \inst|Mod0|auto_generated|divider|divider|op_4~7\ = CARRY(((!\inst|Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ & !\inst|Mod0|auto_generated|divider|divider|StageOut[26]~40_combout\)) # (!\inst|Mod0|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~40_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|op_4~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|op_4~6_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X44_Y22_N26
\inst|Mod0|auto_generated|divider|divider|op_4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_4~12_combout\ = \inst|Mod0|auto_generated|divider|divider|op_4~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|op_4~11\,
	combout => \inst|Mod0|auto_generated|divider|divider|op_4~12_combout\);

-- Location: LCCOMB_X44_Y22_N10
\inst|Mod0|auto_generated|divider|divider|StageOut[31]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_4~12_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[24]~42_combout\) # 
-- ((\inst|Mod0|auto_generated|divider|divider|StageOut[24]~43_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|op_4~12_combout\ & (((\inst|Mod0|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[24]~42_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[24]~43_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|op_4~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\);

-- Location: LCCOMB_X44_Y22_N8
\inst|Mod0|auto_generated|divider|divider|StageOut[30]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[30]~47_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_4~12_combout\ & (\cards_in_hand~combout\(0))) # (!\inst|Mod0|auto_generated|divider|divider|op_4~12_combout\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|op_4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cards_in_hand~combout\(0),
	datab => \inst|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|op_4~0_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[30]~47_combout\);

-- Location: LCCOMB_X44_Y22_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[33]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[33]~46_combout\ = (\inst|Mod0|auto_generated|divider|divider|op_4~12_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\) # 
-- ((\inst|Mod0|auto_generated|divider|divider|StageOut[26]~40_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|op_4~12_combout\ & (((\inst|Mod0|auto_generated|divider|divider|op_4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~40_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|op_4~6_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[33]~46_combout\);

-- Location: LCCOMB_X43_Y22_N10
\inst|sum_cards:card_value[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sum_cards:card_value[5]~0_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\) # ((\inst|Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\) # ((\inst|Mod0|auto_generated|divider|divider|StageOut[30]~47_combout\) 
-- # (\inst|Mod0|auto_generated|divider|divider|StageOut[33]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[30]~47_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[33]~46_combout\,
	combout => \inst|sum_cards:card_value[5]~0_combout\);

-- Location: LCCOMB_X43_Y24_N4
\inst|sum_cards:card_value[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sum_cards:card_value[0]~0_combout\ = (\inst|LessThan0~1_combout\) # ((\inst|sum_cards:card_value[5]~0_combout\ & \inst|Mod0|auto_generated|divider|divider|StageOut[30]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~1_combout\,
	datac => \inst|sum_cards:card_value[5]~0_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[30]~47_combout\,
	combout => \inst|sum_cards:card_value[0]~0_combout\);

-- Location: LCCOMB_X43_Y24_N6
\inst|sum_cards:new_sum[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sum_cards:new_sum[0]~1_cout\ = CARRY((\new_card~combout\(0) & !\inst|sum_cards:card_value[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \new_card~combout\(0),
	datab => \inst|sum_cards:card_value[0]~0_combout\,
	datad => VCC,
	cout => \inst|sum_cards:new_sum[0]~1_cout\);

-- Location: LCCOMB_X43_Y24_N8
\inst|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst|sum_cards:card_value[1]~0_combout\ & ((\new_card~combout\(1) & (\inst|sum_cards:new_sum[0]~1_cout\ & VCC)) # (!\new_card~combout\(1) & (!\inst|sum_cards:new_sum[0]~1_cout\)))) # (!\inst|sum_cards:card_value[1]~0_combout\ & 
-- ((\new_card~combout\(1) & (!\inst|sum_cards:new_sum[0]~1_cout\)) # (!\new_card~combout\(1) & ((\inst|sum_cards:new_sum[0]~1_cout\) # (GND)))))
-- \inst|Add2~1\ = CARRY((\inst|sum_cards:card_value[1]~0_combout\ & (!\new_card~combout\(1) & !\inst|sum_cards:new_sum[0]~1_cout\)) # (!\inst|sum_cards:card_value[1]~0_combout\ & ((!\inst|sum_cards:new_sum[0]~1_cout\) # (!\new_card~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sum_cards:card_value[1]~0_combout\,
	datab => \new_card~combout\(1),
	datad => VCC,
	cin => \inst|sum_cards:new_sum[0]~1_cout\,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X43_Y24_N18
\inst|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~0_combout\ = \inst|Add2~0_combout\ $ (VCC)
-- \inst|Add4~1\ = CARRY(\inst|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~0_combout\,
	datad => VCC,
	combout => \inst|Add4~0_combout\,
	cout => \inst|Add4~1\);

-- Location: LCCOMB_X43_Y24_N20
\inst|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~2_combout\ = (\inst|Add2~2_combout\ & (\inst|Add4~1\ & VCC)) # (!\inst|Add2~2_combout\ & (!\inst|Add4~1\))
-- \inst|Add4~3\ = CARRY((!\inst|Add2~2_combout\ & !\inst|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~2_combout\,
	datad => VCC,
	cin => \inst|Add4~1\,
	combout => \inst|Add4~2_combout\,
	cout => \inst|Add4~3\);

-- Location: LCCOMB_X43_Y24_N22
\inst|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~4_combout\ = (\inst|Add2~4_combout\ & (\inst|Add4~3\ $ (GND))) # (!\inst|Add2~4_combout\ & (!\inst|Add4~3\ & VCC))
-- \inst|Add4~5\ = CARRY((\inst|Add2~4_combout\ & !\inst|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~4_combout\,
	datad => VCC,
	cin => \inst|Add4~3\,
	combout => \inst|Add4~4_combout\,
	cout => \inst|Add4~5\);

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\new_card[4]~I\ : cycloneii_io
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
	padio => ww_new_card(4),
	combout => \new_card~combout\(4));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\new_card[3]~I\ : cycloneii_io
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
	padio => ww_new_card(3),
	combout => \new_card~combout\(3));

-- Location: LCCOMB_X43_Y22_N12
\inst|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~1_combout\ = \inst|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\ $ (((\inst|Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\ & \inst|Mod0|auto_generated|divider|divider|StageOut[30]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[31]~48_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[30]~47_combout\,
	combout => \inst|Add0~1_combout\);

-- Location: LCCOMB_X43_Y24_N2
\inst|sum_cards:card_value[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sum_cards:card_value[2]~0_combout\ = (!\inst|LessThan0~1_combout\ & (\inst|sum_cards:card_value[5]~0_combout\ & \inst|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~1_combout\,
	datab => \inst|sum_cards:card_value[5]~0_combout\,
	datac => \inst|Add0~1_combout\,
	combout => \inst|sum_cards:card_value[2]~0_combout\);

-- Location: LCCOMB_X43_Y24_N24
\inst|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~6_combout\ = (\inst|Add2~6_combout\ & (\inst|Add4~5\ & VCC)) # (!\inst|Add2~6_combout\ & (!\inst|Add4~5\))
-- \inst|Add4~7\ = CARRY((!\inst|Add2~6_combout\ & !\inst|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~6_combout\,
	datad => VCC,
	cin => \inst|Add4~5\,
	combout => \inst|Add4~6_combout\,
	cout => \inst|Add4~7\);

-- Location: LCCOMB_X43_Y24_N26
\inst|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~8_combout\ = \inst|Add2~8_combout\ $ (\inst|Add4~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~8_combout\,
	cin => \inst|Add4~7\,
	combout => \inst|Add4~8_combout\);

-- Location: LCCOMB_X43_Y24_N28
\inst|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~0_combout\ = (\inst|Add4~6_combout\ & (\inst|Add4~2_combout\ & \inst|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~6_combout\,
	datac => \inst|Add4~2_combout\,
	datad => \inst|Add4~0_combout\,
	combout => \inst|LessThan5~0_combout\);

-- Location: LCCOMB_X43_Y24_N30
\inst|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~1_combout\ = (\inst|Add4~8_combout\) # ((\inst|LessThan5~0_combout\) # ((\inst|Add4~4_combout\ & \inst|Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~4_combout\,
	datab => \inst|Add4~8_combout\,
	datac => \inst|Add4~6_combout\,
	datad => \inst|LessThan5~0_combout\,
	combout => \inst|LessThan5~1_combout\);

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\legal_play~I\ : cycloneii_io
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
	datain => \inst|ALT_INV_LessThan5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_legal_play);
END structure;


