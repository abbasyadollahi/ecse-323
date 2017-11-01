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

-- DATE "10/31/2017 22:08:48"

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

ENTITY 	gA6_lab3 IS
    PORT (
	empty : OUT std_logic;
	enable : IN std_logic;
	rst : IN std_logic;
	clk : IN std_logic;
	addr : IN std_logic_vector(5 DOWNTO 0);
	data : IN std_logic_vector(5 DOWNTO 0);
	mode : IN std_logic_vector(1 DOWNTO 0);
	full : OUT std_logic;
	num : OUT std_logic_vector(5 DOWNTO 0);
	value : OUT std_logic_vector(5 DOWNTO 0)
	);
END gA6_lab3;

-- Design Ports Information
-- empty	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- full	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[5]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[4]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[3]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[2]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[1]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[0]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[5]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[4]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[3]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[2]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[1]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[0]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addr[5]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode[0]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode[1]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[5]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[4]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[3]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[2]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[0]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF gA6_lab3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_empty : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_addr : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_data : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_full : std_logic;
SIGNAL ww_num : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_value : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~4_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~6_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~21_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~22_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~13_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~23_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~24_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~25_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~29_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~30_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~31_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~37_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~38_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~39_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~40_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~18_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~19_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~20_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~21_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~43_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~44_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~31_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~47_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~48_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~49_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~50_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~51_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~54_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~56_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~60_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~61_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~62_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~63_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~35_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~40_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~68_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~69_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~44_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~45_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~46_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~47_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~48_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~49_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~70_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~76_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~77_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~78_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~79_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~80_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~81_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~83_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~84_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~54_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~57_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~87_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~88_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~89_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~90_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~91_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~92_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~60_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~61_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~62_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~63_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~93_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~94_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~95_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~96_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~99_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~103_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~106_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~70_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~71_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~72_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~73_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~74_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~75_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~78_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~79_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~80_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~119_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~120_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~121_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~122_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~123_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~124_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~91_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~133_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~135_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~137_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~139_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~140_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~141_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~142_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~145_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~148_combout\ : std_logic;
SIGNAL \inst|inst12|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst26|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst22|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst29|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst24|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst97|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst76|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst78|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst69|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst90|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst88|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst94|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst92|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst12|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst10|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst8|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst15|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst4|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst3|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst1|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst18|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst16|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst20|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst102|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst40|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst86|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst4|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst3|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst1|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst20|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst97|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst72|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst70|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst90|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst88|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst94|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst92|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst86|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst84|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst12|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst10|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst8|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst30|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst29|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst100|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst98|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst97|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst102|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst44|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst43|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst40|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst36|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst34|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst32|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst38|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst76|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst74|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst72|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst78|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst88|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst80|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst86|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst10|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst26|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst29|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst24|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst22|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst18|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst20|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst100|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst102|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst90|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst88|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst94|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst92|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst1|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst18|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst16|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst98|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst48|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst55|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst76|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst74|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst72|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst78|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst88|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst83|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst80|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst103|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst|inst103|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst|inst79|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \inst|inst108~combout\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_reg_bit1a[1]~5_combout\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_reg_bit1a[3]~0_combout\ : std_logic;
SIGNAL \inst|inst115|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_reg_bit1a[0]~6_combout\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_reg_bit1a[3]~1_combout\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \inst|inst109~combout\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_reg_bit1a[4]~4_combout\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_reg_bit1a[5]~3_combout\ : std_logic;
SIGNAL \inst|inst120|auto_generated|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst|inst119|auto_generated|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst|inst115|auto_generated|counter_reg_bit1a[2]~2_combout\ : std_logic;
SIGNAL \inst|inst107~combout\ : std_logic;
SIGNAL \inst|inst102|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst103|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst124|inst51~combout\ : std_logic;
SIGNAL \inst|inst100|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst50~combout\ : std_logic;
SIGNAL \inst|inst98|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst49~combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~17_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~18_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~152_combout\ : std_logic;
SIGNAL \inst|inst74|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst37~combout\ : std_logic;
SIGNAL \inst|inst72|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst36~combout\ : std_logic;
SIGNAL \inst|inst70|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst35~combout\ : std_logic;
SIGNAL \inst|inst55|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst|inst124|inst27~combout\ : std_logic;
SIGNAL \inst|inst56|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst28~combout\ : std_logic;
SIGNAL \inst|inst58|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst29~combout\ : std_logic;
SIGNAL \inst|inst60|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst30~combout\ : std_logic;
SIGNAL \inst|inst62|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst31~combout\ : std_logic;
SIGNAL \inst|inst64|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst32~combout\ : std_logic;
SIGNAL \inst|inst66|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst33~combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~26_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~27_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~28_combout\ : std_logic;
SIGNAL \inst|inst86|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst43~combout\ : std_logic;
SIGNAL \inst|inst84|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst42~combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~33_combout\ : std_logic;
SIGNAL \inst|inst80|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst40~combout\ : std_logic;
SIGNAL \inst|inst83|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst41~combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~32_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~34_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~35_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~36_combout\ : std_logic;
SIGNAL \inst|inst48|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst24~combout\ : std_logic;
SIGNAL \inst|inst46|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst23~combout\ : std_logic;
SIGNAL \inst|inst44|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst22~combout\ : std_logic;
SIGNAL \inst|inst30|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst15~combout\ : std_logic;
SIGNAL \inst|inst32|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst16~combout\ : std_logic;
SIGNAL \inst|inst34|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst17~combout\ : std_logic;
SIGNAL \inst|inst36|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst18~combout\ : std_logic;
SIGNAL \inst|inst38|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst19~combout\ : std_logic;
SIGNAL \inst|inst40|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst20~combout\ : std_logic;
SIGNAL \inst|inst43|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst21~combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~19_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~20_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~9_combout\ : std_logic;
SIGNAL \inst|inst50|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst25~combout\ : std_logic;
SIGNAL \inst|inst52|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst26~combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~14_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~11_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~12_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~15_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~16_combout\ : std_logic;
SIGNAL \inst|inst1|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst~combout\ : std_logic;
SIGNAL \inst|inst3|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst1~combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~14_combout\ : std_logic;
SIGNAL \inst|inst4|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst2~combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst3~combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~15_combout\ : std_logic;
SIGNAL \inst|inst20|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst10~combout\ : std_logic;
SIGNAL \inst|inst18|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst9~combout\ : std_logic;
SIGNAL \inst|inst16|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst8~combout\ : std_logic;
SIGNAL \inst|inst15|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst7~combout\ : std_logic;
SIGNAL \inst|inst8|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst4~combout\ : std_logic;
SIGNAL \inst|inst10|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst124|inst5~combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~12_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~13_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~1_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~8_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~17_combout\ : std_logic;
SIGNAL \inst|inst100|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst88|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst124|inst44~combout\ : std_logic;
SIGNAL \inst|inst90|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst124|inst45~combout\ : std_logic;
SIGNAL \inst|inst92|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst124|inst46~combout\ : std_logic;
SIGNAL \inst|inst94|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst124|inst47~combout\ : std_logic;
SIGNAL \inst|inst97|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst124|inst48~combout\ : std_logic;
SIGNAL \inst|inst98|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~41_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~42_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~153_combout\ : std_logic;
SIGNAL \inst|inst26|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst124|inst13~combout\ : std_logic;
SIGNAL \inst|inst24|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst124|inst12~combout\ : std_logic;
SIGNAL \inst|inst22|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst124|inst11~combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~23_combout\ : std_logic;
SIGNAL \inst|inst29|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst124|inst14~combout\ : std_logic;
SIGNAL \inst|inst30|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~22_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~24_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~25_combout\ : std_logic;
SIGNAL \inst|inst38|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst36|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst34|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst32|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~45_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~46_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~26_combout\ : std_logic;
SIGNAL \inst|inst66|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst64|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst62|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst60|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst56|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst58|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~27_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~28_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~29_combout\ : std_logic;
SIGNAL \inst|inst43|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst44|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst46|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst48|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst55|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst52|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst50|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~30_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~32_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~33_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~16_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~52_combout\ : std_logic;
SIGNAL \inst|inst69|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst124|inst34~combout\ : std_logic;
SIGNAL \inst|inst70|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst72|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst74|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst76|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst124|inst38~combout\ : std_logic;
SIGNAL \inst|inst78|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst124|inst39~combout\ : std_logic;
SIGNAL \inst|inst80|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst83|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst84|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~57_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~53_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~55_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~58_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~59_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~34_combout\ : std_logic;
SIGNAL \inst|inst38|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst40|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst69|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst66|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst64|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst62|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst60|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst58|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst56|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst55|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst52|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst50|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst48|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst46|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst44|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst43|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~66_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~67_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~43_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~50_combout\ : std_logic;
SIGNAL \inst|inst102|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst103|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst|inst100|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst98|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~64_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~65_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~154_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~73_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~74_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~75_combout\ : std_logic;
SIGNAL \inst|inst74|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst83|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst80|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst78|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst76|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~71_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~72_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~82_combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst8|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst10|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst12|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst124|inst6~combout\ : std_logic;
SIGNAL \inst|inst15|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst18|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst16|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~37_combout\ : std_logic;
SIGNAL \inst|inst36|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst34|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst32|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst30|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst29|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst26|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~36_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~38_combout\ : std_logic;
SIGNAL \inst|inst24|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst22|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~39_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~41_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~42_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~51_combout\ : std_logic;
SIGNAL \inst|inst70|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst69|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst66|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst64|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst62|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst60|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst58|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst56|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst46|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst48|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst50|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst52|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst55|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~65_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~64_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~66_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~67_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~97_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~98_combout\ : std_logic;
SIGNAL \inst|inst90|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst92|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst94|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~100_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~101_combout\ : std_logic;
SIGNAL \inst|inst84|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst83|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~102_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~104_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~105_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~155_combout\ : std_logic;
SIGNAL \inst|inst15|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst16|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst18|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst20|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst22|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~56_combout\ : std_logic;
SIGNAL \inst|inst24|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst26|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~53_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~55_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~58_combout\ : std_logic;
SIGNAL \inst|inst4|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst1|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst3|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~85_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~86_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~52_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~59_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~68_combout\ : std_logic;
SIGNAL \inst|inst98|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst97|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~110_combout\ : std_logic;
SIGNAL \inst|inst103|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~111_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~156_combout\ : std_logic;
SIGNAL \inst|inst78|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst70|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst72|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst74|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst76|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~116_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~117_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~118_combout\ : std_logic;
SIGNAL \inst|inst80|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst83|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~125_combout\ : std_logic;
SIGNAL \inst|inst84|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst86|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~126_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~127_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~128_combout\ : std_logic;
SIGNAL \inst|inst16|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst15|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst12|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~107_combout\ : std_logic;
SIGNAL \inst|inst1|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst3|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~108_combout\ : std_logic;
SIGNAL \inst|inst4|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst8|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~109_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~69_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~76_combout\ : std_logic;
SIGNAL \inst|inst30|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst32|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst38|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst36|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst34|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~114_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~115_combout\ : std_logic;
SIGNAL \inst|inst40|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst43|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst69|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst66|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst64|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst62|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst60|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst58|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst56|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst55|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst52|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst50|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst48|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst46|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst44|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~112_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~113_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~77_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~82_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~81_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~83_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~84_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~85_combout\ : std_logic;
SIGNAL \inst|inst20|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst38|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst36|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst34|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst32|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst30|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst29|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst26|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst24|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst22|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~90_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~87_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~88_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~89_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~92_combout\ : std_logic;
SIGNAL \inst|inst10|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst12|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst4|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst6|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst8|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~129_combout\ : std_logic;
SIGNAL \inst|inst15|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~130_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~131_combout\ : std_logic;
SIGNAL \inst|inst3|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~132_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~86_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~93_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~138_combout\ : std_logic;
SIGNAL \inst|inst40|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst43|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst44|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst46|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~136_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~94_combout\ : std_logic;
SIGNAL \inst|inst66|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst64|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst60|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst62|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~96_combout\ : std_logic;
SIGNAL \inst|inst58|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst56|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~95_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~97_combout\ : std_logic;
SIGNAL \inst|inst50|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst52|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst53|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~99_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~98_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~100_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~101_combout\ : std_logic;
SIGNAL \inst|inst102|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst103|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst|inst100|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~134_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~157_combout\ : std_logic;
SIGNAL \inst|inst84|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst86|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~149_combout\ : std_logic;
SIGNAL \inst|inst97|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst94|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst90|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst92|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~146_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~147_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~150_combout\ : std_logic;
SIGNAL \inst|inst69|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst70|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~143_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~144_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|_~151_combout\ : std_logic;
SIGNAL \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~102_combout\ : std_logic;
SIGNAL \inst|inst120|auto_generated|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst115|auto_generated|safe_q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst119|auto_generated|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|inst2|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst5|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst7|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst9|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst11|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst13|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst14|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst17|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst19|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst21|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst23|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst25|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst27|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst28|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst31|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst33|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst35|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst37|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst39|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst41|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst42|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst45|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst47|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst49|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst51|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst53|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst54|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst57|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst59|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst61|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst63|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst65|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst67|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst68|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst71|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst73|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst75|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst77|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst79|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst81|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst82|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst85|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst87|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst89|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst91|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst93|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst95|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst96|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst99|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst101|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst103|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \mode~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \data~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \addr~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst119|auto_generated|ALT_INV_aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst120|auto_generated|ALT_INV_aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);

BEGIN

empty <= ww_empty;
ww_enable <= enable;
ww_rst <= rst;
ww_clk <= clk;
ww_addr <= addr;
ww_data <= data;
ww_mode <= mode;
full <= ww_full;
num <= ww_num;
value <= ww_value;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr~combout\(5) & \addr~combout\(4) & \addr~combout\(3) & \addr~combout\(2) & \addr~combout\(1) & \addr~combout\(0));

\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(0) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(1) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(2) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(3) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(20) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(21) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(22) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(23) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(24) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(25) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(26) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(27) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(28) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(29) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(30) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(31) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(32) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(33) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(34) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(35) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(36) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(37) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(38) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(39) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(40) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(41) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(42) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(43) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(44) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(45) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(46) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(47) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(48) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(32);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(49) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(33);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(50) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(34);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(51) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(35);

\inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\addr~combout\(5) & \addr~combout\(4) & \addr~combout\(3) & \addr~combout\(2) & \addr~combout\(1) & \addr~combout\(0));

\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(4) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(5) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(6) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(7) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(8) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(4);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(9) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(5);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(10) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(6);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(11) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(7);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(12) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(8);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(13) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(9);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(14) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(10);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(15) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(11);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(16) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(12);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(17) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(13);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(18) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(14);
\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(19) <= \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(15);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\inst|inst119|auto_generated|ALT_INV_aneb_result_wire\(0) <= NOT \inst|inst119|auto_generated|aneb_result_wire\(0);
\inst|inst120|auto_generated|ALT_INV_aneb_result_wire\(0) <= NOT \inst|inst120|auto_generated|aneb_result_wire\(0);

-- Location: LCFF_X42_Y20_N17
\inst|inst13|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst12|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst13|dffs\(5));

-- Location: LCFF_X45_Y17_N29
\inst|inst27|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst26|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst27|dffs\(5));

-- Location: LCFF_X44_Y16_N17
\inst|inst23|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst22|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst23|dffs\(5));

-- Location: LCFF_X45_Y16_N1
\inst|inst28|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst29|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst28|dffs\(5));

-- Location: LCFF_X45_Y16_N11
\inst|inst25|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst24|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst25|dffs\(5));

-- Location: LCFF_X42_Y15_N15
\inst|inst96|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst97|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst48~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst96|dffs\(5));

-- Location: LCFF_X39_Y18_N21
\inst|inst77|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst76|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst38~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst77|dffs\(5));

-- Location: LCFF_X40_Y18_N3
\inst|inst79|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst78|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst39~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst79|dffs\(5));

-- Location: LCFF_X37_Y18_N21
\inst|inst68|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst69|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst68|dffs\(5));

-- Location: LCFF_X44_Y18_N25
\inst|inst91|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst90|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst45~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst91|dffs\(5));

-- Location: LCFF_X43_Y18_N13
\inst|inst89|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst88|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst44~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst89|dffs\(5));

-- Location: LCFF_X42_Y18_N9
\inst|inst95|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst94|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst47~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst95|dffs\(5));

-- Location: LCFF_X43_Y18_N31
\inst|inst93|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst92|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst46~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst93|dffs\(5));

-- Location: LCFF_X42_Y20_N29
\inst|inst13|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst12|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst13|dffs\(4));

-- Location: LCFF_X42_Y20_N11
\inst|inst11|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst10|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst11|dffs\(4));

-- Location: LCFF_X43_Y16_N5
\inst|inst9|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst8|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst9|dffs\(4));

-- Location: LCFF_X42_Y19_N5
\inst|inst14|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst15|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst14|dffs\(4));

-- Location: LCFF_X40_Y19_N27
\inst|inst5|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst4|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst5|dffs\(4));

-- Location: LCFF_X40_Y20_N1
\inst|inst2|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst3|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst2|dffs\(4));

-- Location: LCFF_X40_Y20_N31
\inst|inst|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst1|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|dffs\(4));

-- Location: LCFF_X43_Y16_N11
\inst|inst7|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst6|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst7|dffs\(4));

-- Location: LCFF_X42_Y17_N13
\inst|inst19|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst18|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst19|dffs\(4));

-- Location: LCFF_X42_Y19_N11
\inst|inst17|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst16|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst17|dffs\(4));

-- Location: LCFF_X44_Y16_N11
\inst|inst21|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst20|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst21|dffs\(4));

-- Location: LCFF_X40_Y15_N31
\inst|inst103|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst103|dffs[4]~feeder_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst51~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst103|dffs\(4));

-- Location: LCFF_X42_Y16_N17
\inst|inst41|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst40|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst41|dffs\(4));

-- Location: LCFF_X40_Y19_N5
\inst|inst87|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst86|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst43~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst87|dffs\(4));

-- Location: LCFF_X40_Y19_N7
\inst|inst5|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst4|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst5|dffs\(3));

-- Location: LCFF_X40_Y20_N25
\inst|inst2|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst3|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst2|dffs\(3));

-- Location: LCFF_X40_Y20_N15
\inst|inst|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst1|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|dffs\(3));

-- Location: LCFF_X44_Y16_N19
\inst|inst21|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst20|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst21|dffs\(3));

-- Location: LCFF_X42_Y15_N27
\inst|inst96|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst97|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst48~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst96|dffs\(3));

-- Location: LCFF_X39_Y18_N27
\inst|inst73|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst72|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst36~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst73|dffs\(3));

-- Location: LCFF_X38_Y18_N27
\inst|inst71|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst70|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst71|dffs\(3));

-- Location: LCFF_X44_Y18_N21
\inst|inst91|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst90|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst45~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst91|dffs\(3));

-- Location: LCFF_X43_Y18_N29
\inst|inst89|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst88|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst44~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst89|dffs\(3));

-- Location: LCFF_X42_Y18_N3
\inst|inst95|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst94|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst47~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst95|dffs\(3));

-- Location: LCFF_X43_Y18_N19
\inst|inst93|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst92|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst46~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst93|dffs\(3));

-- Location: LCFF_X40_Y19_N21
\inst|inst87|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst86|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst43~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst87|dffs\(3));

-- Location: LCFF_X45_Y18_N15
\inst|inst85|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst84|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst85|dffs\(3));

-- Location: LCFF_X42_Y20_N25
\inst|inst13|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst12|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst13|dffs\(2));

-- Location: LCFF_X42_Y20_N7
\inst|inst11|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst10|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst11|dffs\(2));

-- Location: LCFF_X43_Y19_N21
\inst|inst9|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst8|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst9|dffs\(2));

-- Location: LCFF_X42_Y17_N29
\inst|inst31|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst30|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst31|dffs\(2));

-- Location: LCFF_X45_Y16_N21
\inst|inst28|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst29|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst28|dffs\(2));

-- Location: LCFF_X42_Y15_N9
\inst|inst101|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst100|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst50~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst101|dffs\(2));

-- Location: LCFF_X40_Y15_N25
\inst|inst99|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst98|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst49~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst99|dffs\(2));

-- Location: LCFF_X42_Y15_N3
\inst|inst96|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst97|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst48~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst96|dffs\(2));

-- Location: LCFF_X40_Y15_N11
\inst|inst103|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst103|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst51~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst103|dffs\(2));

-- Location: LCFF_X39_Y16_N21
\inst|inst45|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst44|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst45|dffs\(2));

-- Location: LCFF_X39_Y16_N15
\inst|inst42|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst43|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst42|dffs\(2));

-- Location: LCFF_X42_Y16_N25
\inst|inst41|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst40|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst41|dffs\(2));

-- Location: LCFF_X46_Y16_N5
\inst|inst37|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst36|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst37|dffs\(2));

-- Location: LCFF_X46_Y16_N23
\inst|inst35|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst34|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst35|dffs\(2));

-- Location: LCFF_X47_Y16_N23
\inst|inst33|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst32|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst33|dffs\(2));

-- Location: LCFF_X42_Y16_N3
\inst|inst39|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst38|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst39|dffs\(2));

-- Location: LCFF_X39_Y18_N25
\inst|inst77|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst76|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst38~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst77|dffs\(2));

-- Location: LCFF_X38_Y18_N5
\inst|inst75|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst74|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst75|dffs\(2));

-- Location: LCFF_X40_Y18_N11
\inst|inst73|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst72|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst36~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst73|dffs\(2));

-- Location: LCFF_X40_Y18_N5
\inst|inst79|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst78|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst39~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst79|dffs\(2));

-- Location: LCFF_X43_Y18_N9
\inst|inst89|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst88|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst44~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst89|dffs\(2));

-- Location: LCFF_X46_Y18_N7
\inst|inst81|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst80|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst40~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst81|dffs\(2));

-- Location: LCFF_X40_Y19_N25
\inst|inst87|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst86|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst43~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst87|dffs\(2));

-- Location: LCFF_X42_Y20_N23
\inst|inst11|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst10|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst11|dffs\(1));

-- Location: LCFF_X45_Y17_N17
\inst|inst27|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst26|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst27|dffs\(1));

-- Location: LCFF_X45_Y16_N5
\inst|inst28|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst29|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst28|dffs\(1));

-- Location: LCFF_X45_Y16_N3
\inst|inst25|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst24|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst25|dffs\(1));

-- Location: LCFF_X44_Y16_N13
\inst|inst23|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst22|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst23|dffs\(1));

-- Location: LCFF_X43_Y17_N11
\inst|inst19|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst18|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst19|dffs\(1));

-- Location: LCFF_X44_Y16_N7
\inst|inst21|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst20|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst21|dffs\(1));

-- Location: LCFF_X42_Y15_N29
\inst|inst101|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst100|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst50~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst101|dffs\(1));

-- Location: LCFF_X44_Y18_N27
\inst|inst91|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst90|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst45~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst91|dffs\(1));

-- Location: LCFF_X43_Y18_N25
\inst|inst89|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst88|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst44~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst89|dffs\(1));

-- Location: LCFF_X42_Y18_N17
\inst|inst95|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst94|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst47~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst95|dffs\(1));

-- Location: LCFF_X43_Y18_N23
\inst|inst93|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst92|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst46~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst93|dffs\(1));

-- Location: LCFF_X40_Y20_N7
\inst|inst|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst1|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|dffs\(0));

-- Location: LCFF_X42_Y17_N23
\inst|inst19|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst18|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst19|dffs\(0));

-- Location: LCFF_X42_Y19_N7
\inst|inst17|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst16|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst17|dffs\(0));

-- Location: LCFF_X40_Y15_N29
\inst|inst99|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst98|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst49~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst99|dffs\(0));

-- Location: LCFF_X40_Y16_N25
\inst|inst49|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst48|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst24~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst49|dffs\(0));

-- Location: LCFF_X38_Y16_N11
\inst|inst54|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst55|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst27~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst54|dffs\(0));

-- Location: LCFF_X39_Y18_N31
\inst|inst77|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst76|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst38~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst77|dffs\(0));

-- Location: LCFF_X38_Y18_N1
\inst|inst75|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst74|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst75|dffs\(0));

-- Location: LCFF_X40_Y18_N17
\inst|inst73|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst72|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst36~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst73|dffs\(0));

-- Location: LCFF_X40_Y18_N23
\inst|inst79|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst79|dffs[0]~feeder_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst39~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst79|dffs\(0));

-- Location: LCFF_X43_Y18_N1
\inst|inst89|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst88|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst44~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst89|dffs\(0));

-- Location: LCFF_X45_Y18_N25
\inst|inst82|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst83|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst41~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst82|dffs\(0));

-- Location: LCFF_X46_Y18_N15
\inst|inst81|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst80|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst40~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst81|dffs\(0));

-- Location: LCCOMB_X45_Y17_N24
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ = (\addr~combout\(2) & ((\addr~combout\(1) & ((\inst|inst31|dffs\(5)))) # (!\addr~combout\(1) & (\inst|inst27|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \inst|inst27|dffs\(5),
	datac => \addr~combout\(2),
	datad => \inst|inst31|dffs\(5),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X44_Y17_N4
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~3_combout\ = (!\addr~combout\(2) & ((\addr~combout\(1) & (\inst|inst23|dffs\(5))) # (!\addr~combout\(1) & ((\inst|inst19|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|dffs\(5),
	datab => \addr~combout\(1),
	datac => \inst|inst19|dffs\(5),
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X44_Y17_N6
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~4_combout\ = (\addr~combout\(0) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~3_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~3_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~2_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~4_combout\);

-- Location: LCCOMB_X45_Y17_N2
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~5_combout\ = (\addr~combout\(2) & ((\addr~combout\(1) & ((\inst|inst28|dffs\(5)))) # (!\addr~combout\(1) & (\inst|inst25|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|dffs\(5),
	datab => \inst|inst28|dffs\(5),
	datac => \addr~combout\(2),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X42_Y19_N24
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~6_combout\ = (!\addr~combout\(2) & ((\addr~combout\(1) & (\inst|inst21|dffs\(5))) # (!\addr~combout\(1) & ((\inst|inst17|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(1),
	datac => \inst|inst21|dffs\(5),
	datad => \inst|inst17|dffs\(5),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~6_combout\);

-- Location: LCCOMB_X39_Y19_N10
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~4_combout\) # ((!\addr~combout\(0) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~5_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~5_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~4_combout\,
	datac => \addr~combout\(0),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~6_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~7_combout\);

-- Location: LCCOMB_X47_Y16_N8
\inst|inst125|LPM_MUX_component|auto_generated|_~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~21_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst35|dffs\(5)))) # (!\addr~combout\(0) & (\inst|inst33|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \inst|inst33|dffs\(5),
	datac => \addr~combout\(0),
	datad => \inst|inst35|dffs\(5),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~21_combout\);

-- Location: LCCOMB_X47_Y16_N2
\inst|inst125|LPM_MUX_component|auto_generated|_~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~22_combout\ = (\addr~combout\(1) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~21_combout\ & ((\inst|inst39|dffs\(5)))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~21_combout\ & 
-- (\inst|inst37|dffs\(5))))) # (!\addr~combout\(1) & (((\inst|inst125|LPM_MUX_component|auto_generated|_~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \inst|inst37|dffs\(5),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~21_combout\,
	datad => \inst|inst39|dffs\(5),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~22_combout\);

-- Location: LCCOMB_X38_Y16_N16
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~10_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\inst|inst63|dffs\(5))) # (!\addr~combout\(1) & ((\inst|inst59|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst63|dffs\(5),
	datac => \inst|inst59|dffs\(5),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~10_combout\);

-- Location: LCCOMB_X40_Y17_N26
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~13_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & ((\inst|inst54|dffs\(5)))) # (!\addr~combout\(1) & (\inst|inst51|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst51|dffs\(5),
	datac => \addr~combout\(1),
	datad => \inst|inst54|dffs\(5),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~13_combout\);

-- Location: LCCOMB_X40_Y18_N28
\inst|inst125|LPM_MUX_component|auto_generated|_~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~23_combout\ = (\addr~combout\(0) & (((\inst|inst75|dffs\(5)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\inst|inst73|dffs\(5) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(5),
	datab => \inst|inst75|dffs\(5),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~23_combout\);

-- Location: LCCOMB_X39_Y18_N4
\inst|inst125|LPM_MUX_component|auto_generated|_~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~24_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~23_combout\ & (((\inst|inst79|dffs\(5)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~23_combout\ & 
-- (\inst|inst77|dffs\(5) & (\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|dffs\(5),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~23_combout\,
	datac => \addr~combout\(1),
	datad => \inst|inst79|dffs\(5),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~24_combout\);

-- Location: LCCOMB_X38_Y19_N6
\inst|inst125|LPM_MUX_component|auto_generated|_~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~25_combout\ = (!\addr~combout\(3) & (\inst|inst125|LPM_MUX_component|auto_generated|_~24_combout\ & (\addr~combout\(5) & \addr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~24_combout\,
	datac => \addr~combout\(5),
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~25_combout\);

-- Location: LCCOMB_X44_Y18_N2
\inst|inst125|LPM_MUX_component|auto_generated|_~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~29_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst91|dffs\(5))) # (!\addr~combout\(0) & ((\inst|inst89|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \addr~combout\(1),
	datac => \inst|inst91|dffs\(5),
	datad => \inst|inst89|dffs\(5),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~29_combout\);

-- Location: LCCOMB_X42_Y18_N18
\inst|inst125|LPM_MUX_component|auto_generated|_~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~30_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst95|dffs\(5)))) # (!\addr~combout\(0) & (\inst|inst93|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst93|dffs\(5),
	datac => \inst|inst95|dffs\(5),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~30_combout\);

-- Location: LCCOMB_X43_Y19_N4
\inst|inst125|LPM_MUX_component|auto_generated|_~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~31_combout\ = (\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~29_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|_~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~29_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~30_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~31_combout\);

-- Location: LCCOMB_X42_Y19_N18
\inst|inst125|LPM_MUX_component|auto_generated|_~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~37_combout\ = (\addr~combout\(0) & (((\inst|inst11|dffs\(4)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\inst|inst9|dffs\(4) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|dffs\(4),
	datab => \inst|inst11|dffs\(4),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~37_combout\);

-- Location: LCCOMB_X42_Y19_N20
\inst|inst125|LPM_MUX_component|auto_generated|_~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~38_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~37_combout\ & (((\inst|inst14|dffs\(4)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~37_combout\ & 
-- (\inst|inst13|dffs\(4) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(4),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~37_combout\,
	datac => \inst|inst14|dffs\(4),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~38_combout\);

-- Location: LCCOMB_X39_Y20_N18
\inst|inst125|LPM_MUX_component|auto_generated|_~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~39_combout\ = (\addr~combout\(0) & (((\inst|inst2|dffs\(4)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\inst|inst|dffs\(4) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst|dffs\(4),
	datac => \inst|inst2|dffs\(4),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~39_combout\);

-- Location: LCCOMB_X43_Y17_N24
\inst|inst125|LPM_MUX_component|auto_generated|_~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~40_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~39_combout\ & (((\inst|inst7|dffs\(4)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~39_combout\ & 
-- (\inst|inst5|dffs\(4) & (\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(4),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~39_combout\,
	datac => \addr~combout\(1),
	datad => \inst|inst7|dffs\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~40_combout\);

-- Location: LCCOMB_X43_Y17_N14
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~18_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~38_combout\))) # (!\addr~combout\(2) & 
-- (\inst|inst125|LPM_MUX_component|auto_generated|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~40_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~38_combout\,
	datac => \addr~combout\(2),
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~18_combout\);

-- Location: LCCOMB_X45_Y17_N12
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~19_combout\ = (\addr~combout\(2) & ((\addr~combout\(0) & ((\inst|inst27|dffs\(4)))) # (!\addr~combout\(0) & (\inst|inst25|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(0),
	datac => \inst|inst25|dffs\(4),
	datad => \inst|inst27|dffs\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~19_combout\);

-- Location: LCCOMB_X42_Y17_N0
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~20_combout\ = (!\addr~combout\(2) & ((\addr~combout\(0) & (\inst|inst19|dffs\(4))) # (!\addr~combout\(0) & ((\inst|inst17|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19|dffs\(4),
	datab => \inst|inst17|dffs\(4),
	datac => \addr~combout\(2),
	datad => \addr~combout\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~20_combout\);

-- Location: LCCOMB_X43_Y17_N20
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~21_combout\ = (!\addr~combout\(1) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~20_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~20_combout\,
	datac => \addr~combout\(1),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~19_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~21_combout\);

-- Location: LCCOMB_X43_Y15_N26
\inst|inst125|LPM_MUX_component|auto_generated|_~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~43_combout\ = (\addr~combout\(0) & (((\addr~combout\(1)) # (\inst|inst42|dffs\(4))))) # (!\addr~combout\(0) & (\inst|inst41|dffs\(4) & (!\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(4),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \inst|inst42|dffs\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~43_combout\);

-- Location: LCCOMB_X43_Y15_N8
\inst|inst125|LPM_MUX_component|auto_generated|_~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~44_combout\ = (\addr~combout\(1) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~43_combout\ & (\inst|inst47|dffs\(4))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~43_combout\ & 
-- ((\inst|inst45|dffs\(4)))))) # (!\addr~combout\(1) & (((\inst|inst125|LPM_MUX_component|auto_generated|_~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \inst|inst47|dffs\(4),
	datac => \inst|inst45|dffs\(4),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~43_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~44_combout\);

-- Location: LCCOMB_X39_Y17_N4
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~31_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst54|dffs\(4)))) # (!\addr~combout\(0) & (\inst|inst53|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst53|dffs\(4),
	datac => \addr~combout\(1),
	datad => \inst|inst54|dffs\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~31_combout\);

-- Location: LCCOMB_X39_Y18_N10
\inst|inst125|LPM_MUX_component|auto_generated|_~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~47_combout\ = (\addr~combout\(0) & ((\inst|inst75|dffs\(4)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((!\addr~combout\(1) & \inst|inst73|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst75|dffs\(4),
	datac => \addr~combout\(1),
	datad => \inst|inst73|dffs\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~47_combout\);

-- Location: LCCOMB_X39_Y18_N28
\inst|inst125|LPM_MUX_component|auto_generated|_~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~48_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~47_combout\ & ((\inst|inst79|dffs\(4)) # ((!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~47_combout\ & 
-- (((\addr~combout\(1) & \inst|inst77|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~47_combout\,
	datab => \inst|inst79|dffs\(4),
	datac => \addr~combout\(1),
	datad => \inst|inst77|dffs\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~48_combout\);

-- Location: LCCOMB_X38_Y17_N10
\inst|inst125|LPM_MUX_component|auto_generated|_~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~49_combout\ = (!\addr~combout\(3) & (\addr~combout\(5) & (\inst|inst125|LPM_MUX_component|auto_generated|_~48_combout\ & \addr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(5),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~48_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~49_combout\);

-- Location: LCCOMB_X36_Y18_N18
\inst|inst125|LPM_MUX_component|auto_generated|_~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~50_combout\ = (\addr~combout\(0) & (((\inst|inst67|dffs\(4)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\inst|inst65|dffs\(4) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst65|dffs\(4),
	datac => \inst|inst67|dffs\(4),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~50_combout\);

-- Location: LCCOMB_X38_Y18_N16
\inst|inst125|LPM_MUX_component|auto_generated|_~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~51_combout\ = (\addr~combout\(1) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~50_combout\ & (\inst|inst71|dffs\(4))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~50_combout\ & 
-- ((\inst|inst68|dffs\(4)))))) # (!\addr~combout\(1) & (((\inst|inst125|LPM_MUX_component|auto_generated|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71|dffs\(4),
	datab => \inst|inst68|dffs\(4),
	datac => \addr~combout\(1),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~50_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~51_combout\);

-- Location: LCCOMB_X44_Y18_N12
\inst|inst125|LPM_MUX_component|auto_generated|_~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~54_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\inst|inst93|dffs\(4)))) # (!\addr~combout\(1) & (\inst|inst89|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst89|dffs\(4),
	datac => \inst|inst93|dffs\(4),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~54_combout\);

-- Location: LCCOMB_X45_Y18_N8
\inst|inst125|LPM_MUX_component|auto_generated|_~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~56_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\inst|inst87|dffs\(4))) # (!\addr~combout\(1) & ((\inst|inst82|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst87|dffs\(4),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \inst|inst82|dffs\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~56_combout\);

-- Location: LCCOMB_X43_Y16_N16
\inst|inst125|LPM_MUX_component|auto_generated|_~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~60_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst11|dffs\(3)))) # (!\addr~combout\(0) & (\inst|inst9|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \inst|inst9|dffs\(3),
	datad => \inst|inst11|dffs\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~60_combout\);

-- Location: LCCOMB_X43_Y20_N0
\inst|inst125|LPM_MUX_component|auto_generated|_~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~61_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~60_combout\ & (((\inst|inst14|dffs\(3)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~60_combout\ & 
-- (\inst|inst13|dffs\(3) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(3),
	datab => \inst|inst14|dffs\(3),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~60_combout\,
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~61_combout\);

-- Location: LCCOMB_X39_Y20_N12
\inst|inst125|LPM_MUX_component|auto_generated|_~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~62_combout\ = (\addr~combout\(0) & ((\inst|inst2|dffs\(3)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\inst|inst|dffs\(3) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst2|dffs\(3),
	datac => \inst|inst|dffs\(3),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~62_combout\);

-- Location: LCCOMB_X40_Y20_N28
\inst|inst125|LPM_MUX_component|auto_generated|_~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~63_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~62_combout\ & ((\inst|inst7|dffs\(3)) # ((!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~62_combout\ & 
-- (((\addr~combout\(1) & \inst|inst5|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~62_combout\,
	datab => \inst|inst7|dffs\(3),
	datac => \addr~combout\(1),
	datad => \inst|inst5|dffs\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~63_combout\);

-- Location: LCCOMB_X43_Y20_N26
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~35_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & (\inst|inst125|LPM_MUX_component|auto_generated|_~61_combout\)) # (!\addr~combout\(2) & 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|_~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~61_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~63_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~35_combout\);

-- Location: LCCOMB_X42_Y17_N14
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~40_combout\ = (!\addr~combout\(0) & ((\addr~combout\(2) & ((\inst|inst28|dffs\(3)))) # (!\addr~combout\(2) & (\inst|inst21|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(3),
	datab => \inst|inst28|dffs\(3),
	datac => \addr~combout\(2),
	datad => \addr~combout\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~40_combout\);

-- Location: LCCOMB_X47_Y16_N6
\inst|inst125|LPM_MUX_component|auto_generated|_~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~68_combout\ = (\addr~combout\(0) & ((\inst|inst35|dffs\(3)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\inst|inst33|dffs\(3) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst35|dffs\(3),
	datab => \inst|inst33|dffs\(3),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~68_combout\);

-- Location: LCCOMB_X47_Y16_N24
\inst|inst125|LPM_MUX_component|auto_generated|_~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~69_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~68_combout\ & (((\inst|inst39|dffs\(3)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~68_combout\ & 
-- (\inst|inst37|dffs\(3) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~68_combout\,
	datab => \inst|inst37|dffs\(3),
	datac => \inst|inst39|dffs\(3),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~69_combout\);

-- Location: LCCOMB_X38_Y16_N4
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~44_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst59|dffs\(3)))) # (!\addr~combout\(0) & (\inst|inst57|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \addr~combout\(1),
	datac => \inst|inst57|dffs\(3),
	datad => \inst|inst59|dffs\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~44_combout\);

-- Location: LCCOMB_X37_Y16_N24
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~45_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst63|dffs\(3)))) # (!\addr~combout\(0) & (\inst|inst61|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst61|dffs\(3),
	datac => \addr~combout\(1),
	datad => \inst|inst63|dffs\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~45_combout\);

-- Location: LCCOMB_X38_Y16_N18
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~46_combout\ = (\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~45_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~45_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~44_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~46_combout\);

-- Location: LCCOMB_X40_Y17_N20
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~47_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst51|dffs\(3))) # (!\addr~combout\(0) & ((\inst|inst49|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \inst|inst51|dffs\(3),
	datac => \inst|inst49|dffs\(3),
	datad => \addr~combout\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~47_combout\);

-- Location: LCCOMB_X38_Y15_N0
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~48_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst54|dffs\(3)))) # (!\addr~combout\(0) & (\inst|inst53|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst53|dffs\(3),
	datab => \addr~combout\(0),
	datac => \inst|inst54|dffs\(3),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~48_combout\);

-- Location: LCCOMB_X38_Y15_N14
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~49_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~46_combout\) # ((!\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~47_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~47_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~48_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~46_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~49_combout\);

-- Location: LCCOMB_X39_Y18_N6
\inst|inst125|LPM_MUX_component|auto_generated|_~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~70_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst75|dffs\(3)))) # (!\addr~combout\(0) & (\inst|inst73|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(3),
	datab => \inst|inst75|dffs\(3),
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~70_combout\);

-- Location: LCCOMB_X44_Y18_N0
\inst|inst125|LPM_MUX_component|auto_generated|_~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~76_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst91|dffs\(3)))) # (!\addr~combout\(0) & (\inst|inst89|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst89|dffs\(3),
	datac => \inst|inst91|dffs\(3),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~76_combout\);

-- Location: LCCOMB_X42_Y18_N12
\inst|inst125|LPM_MUX_component|auto_generated|_~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~77_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst95|dffs\(3))) # (!\addr~combout\(0) & ((\inst|inst93|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \inst|inst95|dffs\(3),
	datac => \addr~combout\(0),
	datad => \inst|inst93|dffs\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~77_combout\);

-- Location: LCCOMB_X46_Y18_N2
\inst|inst125|LPM_MUX_component|auto_generated|_~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~78_combout\ = (\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~76_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|_~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~76_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~77_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~78_combout\);

-- Location: LCCOMB_X46_Y18_N8
\inst|inst125|LPM_MUX_component|auto_generated|_~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~79_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst82|dffs\(3)))) # (!\addr~combout\(0) & (\inst|inst81|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst81|dffs\(3),
	datab => \inst|inst82|dffs\(3),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~79_combout\);

-- Location: LCCOMB_X45_Y18_N30
\inst|inst125|LPM_MUX_component|auto_generated|_~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~80_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst87|dffs\(3))) # (!\addr~combout\(0) & ((\inst|inst85|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \inst|inst87|dffs\(3),
	datad => \inst|inst85|dffs\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~80_combout\);

-- Location: LCCOMB_X46_Y18_N10
\inst|inst125|LPM_MUX_component|auto_generated|_~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~81_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~78_combout\) # ((!\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~80_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|_~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~80_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~78_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~79_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~81_combout\);

-- Location: LCCOMB_X43_Y19_N22
\inst|inst125|LPM_MUX_component|auto_generated|_~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~83_combout\ = (\addr~combout\(0) & ((\inst|inst11|dffs\(2)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\inst|inst9|dffs\(2) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst11|dffs\(2),
	datac => \inst|inst9|dffs\(2),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~83_combout\);

-- Location: LCCOMB_X43_Y19_N12
\inst|inst125|LPM_MUX_component|auto_generated|_~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~84_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~83_combout\ & ((\inst|inst14|dffs\(2)) # ((!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~83_combout\ & 
-- (((\inst|inst13|dffs\(2) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|dffs\(2),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~83_combout\,
	datac => \inst|inst13|dffs\(2),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~84_combout\);

-- Location: LCCOMB_X45_Y17_N4
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~54_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\inst|inst28|dffs\(2))) # (!\addr~combout\(1) & ((\inst|inst25|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst28|dffs\(2),
	datab => \addr~combout\(0),
	datac => \inst|inst25|dffs\(2),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~54_combout\);

-- Location: LCCOMB_X43_Y17_N16
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~57_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\inst|inst21|dffs\(2))) # (!\addr~combout\(1) & ((\inst|inst17|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(2),
	datab => \inst|inst17|dffs\(2),
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~57_combout\);

-- Location: LCCOMB_X42_Y15_N16
\inst|inst125|LPM_MUX_component|auto_generated|_~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~87_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst99|dffs\(2))) # (!\addr~combout\(0) & ((\inst|inst96|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(2),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \inst|inst96|dffs\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~87_combout\);

-- Location: LCCOMB_X43_Y15_N6
\inst|inst125|LPM_MUX_component|auto_generated|_~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~88_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~87_combout\ & (((\inst|inst103|dffs\(2)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~87_combout\ & 
-- (\inst|inst101|dffs\(2) & (\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst101|dffs\(2),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~87_combout\,
	datac => \addr~combout\(1),
	datad => \inst|inst103|dffs\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~88_combout\);

-- Location: LCCOMB_X39_Y16_N24
\inst|inst125|LPM_MUX_component|auto_generated|_~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~89_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst42|dffs\(2))) # (!\addr~combout\(0) & ((\inst|inst41|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \inst|inst42|dffs\(2),
	datac => \addr~combout\(0),
	datad => \inst|inst41|dffs\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~89_combout\);

-- Location: LCCOMB_X40_Y16_N22
\inst|inst125|LPM_MUX_component|auto_generated|_~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~90_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~89_combout\ & (((\inst|inst47|dffs\(2)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~89_combout\ & 
-- (\inst|inst45|dffs\(2) & (\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst45|dffs\(2),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~89_combout\,
	datac => \addr~combout\(1),
	datad => \inst|inst47|dffs\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~90_combout\);

-- Location: LCCOMB_X47_Y16_N26
\inst|inst125|LPM_MUX_component|auto_generated|_~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~91_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst35|dffs\(2)))) # (!\addr~combout\(0) & (\inst|inst33|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \inst|inst33|dffs\(2),
	datac => \addr~combout\(0),
	datad => \inst|inst35|dffs\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~91_combout\);

-- Location: LCCOMB_X47_Y16_N16
\inst|inst125|LPM_MUX_component|auto_generated|_~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~92_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~91_combout\ & ((\inst|inst39|dffs\(2)) # ((!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~91_combout\ & 
-- (((\inst|inst37|dffs\(2) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39|dffs\(2),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~91_combout\,
	datac => \inst|inst37|dffs\(2),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~92_combout\);

-- Location: LCCOMB_X43_Y15_N24
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~60_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~90_combout\))) # (!\addr~combout\(2) & 
-- (\inst|inst125|LPM_MUX_component|auto_generated|_~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~92_combout\,
	datab => \addr~combout\(3),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~90_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~60_combout\);

-- Location: LCCOMB_X39_Y16_N22
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~61_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst59|dffs\(2)))) # (!\addr~combout\(0) & (\inst|inst57|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst57|dffs\(2),
	datab => \inst|inst59|dffs\(2),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~61_combout\);

-- Location: LCCOMB_X37_Y16_N6
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~62_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst63|dffs\(2)))) # (!\addr~combout\(0) & (\inst|inst61|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst61|dffs\(2),
	datac => \addr~combout\(1),
	datad => \inst|inst63|dffs\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~62_combout\);

-- Location: LCCOMB_X38_Y15_N12
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~63_combout\ = (\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~61_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~61_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~62_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~63_combout\);

-- Location: LCCOMB_X40_Y18_N30
\inst|inst125|LPM_MUX_component|auto_generated|_~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~93_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst75|dffs\(2)))) # (!\addr~combout\(0) & (\inst|inst73|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(2),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \inst|inst75|dffs\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~93_combout\);

-- Location: LCCOMB_X40_Y18_N0
\inst|inst125|LPM_MUX_component|auto_generated|_~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~94_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~93_combout\ & (((\inst|inst79|dffs\(2)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~93_combout\ & 
-- (\inst|inst77|dffs\(2) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|dffs\(2),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~93_combout\,
	datac => \inst|inst79|dffs\(2),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~94_combout\);

-- Location: LCCOMB_X43_Y15_N12
\inst|inst125|LPM_MUX_component|auto_generated|_~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~95_combout\ = (\addr~combout\(2) & (\addr~combout\(5) & (\inst|inst125|LPM_MUX_component|auto_generated|_~94_combout\ & !\addr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(5),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~94_combout\,
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~95_combout\);

-- Location: LCCOMB_X36_Y18_N20
\inst|inst125|LPM_MUX_component|auto_generated|_~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~96_combout\ = (\addr~combout\(0) & ((\inst|inst67|dffs\(2)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((!\addr~combout\(1) & \inst|inst65|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst67|dffs\(2),
	datac => \addr~combout\(1),
	datad => \inst|inst65|dffs\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~96_combout\);

-- Location: LCCOMB_X44_Y18_N18
\inst|inst125|LPM_MUX_component|auto_generated|_~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~99_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst91|dffs\(2))) # (!\addr~combout\(0) & ((\inst|inst89|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst91|dffs\(2),
	datac => \addr~combout\(1),
	datad => \inst|inst89|dffs\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~99_combout\);

-- Location: LCCOMB_X43_Y18_N6
\inst|inst125|LPM_MUX_component|auto_generated|_~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~103_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst87|dffs\(2)))) # (!\addr~combout\(0) & (\inst|inst85|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst85|dffs\(2),
	datab => \addr~combout\(0),
	datac => \inst|inst87|dffs\(2),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~103_combout\);

-- Location: LCCOMB_X43_Y19_N6
\inst|inst125|LPM_MUX_component|auto_generated|_~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~106_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst11|dffs\(1)))) # (!\addr~combout\(0) & (\inst|inst9|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|dffs\(1),
	datab => \addr~combout\(1),
	datac => \inst|inst11|dffs\(1),
	datad => \addr~combout\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~106_combout\);

-- Location: LCCOMB_X45_Y17_N26
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~70_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & ((\inst|inst31|dffs\(1)))) # (!\addr~combout\(1) & (\inst|inst27|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst27|dffs\(1),
	datab => \addr~combout\(0),
	datac => \inst|inst31|dffs\(1),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~70_combout\);

-- Location: LCCOMB_X45_Y17_N8
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~71_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\inst|inst28|dffs\(1))) # (!\addr~combout\(1) & ((\inst|inst25|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst28|dffs\(1),
	datab => \addr~combout\(0),
	datac => \inst|inst25|dffs\(1),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~71_combout\);

-- Location: LCCOMB_X45_Y17_N10
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~72_combout\ = (\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~70_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~70_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~71_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~72_combout\);

-- Location: LCCOMB_X44_Y16_N30
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~73_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & ((\inst|inst23|dffs\(1)))) # (!\addr~combout\(1) & (\inst|inst19|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst19|dffs\(1),
	datac => \addr~combout\(1),
	datad => \inst|inst23|dffs\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~73_combout\);

-- Location: LCCOMB_X43_Y17_N12
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~74_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\inst|inst21|dffs\(1))) # (!\addr~combout\(1) & ((\inst|inst17|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(1),
	datab => \inst|inst17|dffs\(1),
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~74_combout\);

-- Location: LCCOMB_X44_Y17_N10
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~75_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~72_combout\) # ((!\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~74_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~74_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~73_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~72_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~75_combout\);

-- Location: LCCOMB_X38_Y16_N12
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~78_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst59|dffs\(1))) # (!\addr~combout\(0) & ((\inst|inst57|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \addr~combout\(1),
	datac => \inst|inst59|dffs\(1),
	datad => \inst|inst57|dffs\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~78_combout\);

-- Location: LCCOMB_X37_Y16_N28
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~79_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst63|dffs\(1))) # (!\addr~combout\(0) & ((\inst|inst61|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst63|dffs\(1),
	datac => \addr~combout\(1),
	datad => \inst|inst61|dffs\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~79_combout\);

-- Location: LCCOMB_X38_Y17_N14
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~80_combout\ = (\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~78_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~78_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~79_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~80_combout\);

-- Location: LCCOMB_X36_Y18_N26
\inst|inst125|LPM_MUX_component|auto_generated|_~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~119_combout\ = (\addr~combout\(0) & ((\inst|inst67|dffs\(1)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((!\addr~combout\(1) & \inst|inst65|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst67|dffs\(1),
	datac => \addr~combout\(1),
	datad => \inst|inst65|dffs\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~119_combout\);

-- Location: LCCOMB_X37_Y18_N26
\inst|inst125|LPM_MUX_component|auto_generated|_~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~120_combout\ = (\addr~combout\(1) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~119_combout\ & ((\inst|inst71|dffs\(1)))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~119_combout\ & 
-- (\inst|inst68|dffs\(1))))) # (!\addr~combout\(1) & (((\inst|inst125|LPM_MUX_component|auto_generated|_~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \inst|inst68|dffs\(1),
	datac => \inst|inst71|dffs\(1),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~119_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~120_combout\);

-- Location: LCCOMB_X38_Y17_N20
\inst|inst125|LPM_MUX_component|auto_generated|_~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~121_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~120_combout\ & \inst|inst125|LPM_MUX_component|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~120_combout\,
	datab => \addr~combout\(5),
	datac => \addr~combout\(4),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~16_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~121_combout\);

-- Location: LCCOMB_X44_Y18_N14
\inst|inst125|LPM_MUX_component|auto_generated|_~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~122_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst91|dffs\(1))) # (!\addr~combout\(0) & ((\inst|inst89|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst91|dffs\(1),
	datac => \addr~combout\(1),
	datad => \inst|inst89|dffs\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~122_combout\);

-- Location: LCCOMB_X43_Y18_N20
\inst|inst125|LPM_MUX_component|auto_generated|_~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~123_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst95|dffs\(1))) # (!\addr~combout\(0) & ((\inst|inst93|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \inst|inst95|dffs\(1),
	datac => \addr~combout\(0),
	datad => \inst|inst93|dffs\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~123_combout\);

-- Location: LCCOMB_X44_Y18_N4
\inst|inst125|LPM_MUX_component|auto_generated|_~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~124_combout\ = (\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~123_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|_~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~123_combout\,
	datab => \addr~combout\(2),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~122_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~124_combout\);

-- Location: LCCOMB_X42_Y19_N12
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~91_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\inst|inst21|dffs\(0))) # (!\addr~combout\(1) & ((\inst|inst17|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(0),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \inst|inst17|dffs\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~91_combout\);

-- Location: LCCOMB_X42_Y15_N6
\inst|inst125|LPM_MUX_component|auto_generated|_~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~133_combout\ = (\addr~combout\(0) & ((\inst|inst99|dffs\(0)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\inst|inst96|dffs\(0) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(0),
	datab => \inst|inst96|dffs\(0),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~133_combout\);

-- Location: LCCOMB_X43_Y16_N18
\inst|inst125|LPM_MUX_component|auto_generated|_~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~135_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst42|dffs\(0)))) # (!\addr~combout\(0) & (\inst|inst41|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \inst|inst41|dffs\(0),
	datad => \inst|inst42|dffs\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~135_combout\);

-- Location: LCCOMB_X47_Y16_N20
\inst|inst125|LPM_MUX_component|auto_generated|_~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~137_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & ((\inst|inst37|dffs\(0)))) # (!\addr~combout\(1) & (\inst|inst33|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33|dffs\(0),
	datab => \inst|inst37|dffs\(0),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~137_combout\);

-- Location: LCCOMB_X39_Y19_N26
\inst|inst125|LPM_MUX_component|auto_generated|_~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~139_combout\ = (\addr~combout\(0) & ((\inst|inst75|dffs\(0)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\inst|inst73|dffs\(0) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst75|dffs\(0),
	datac => \inst|inst73|dffs\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~139_combout\);

-- Location: LCCOMB_X39_Y19_N20
\inst|inst125|LPM_MUX_component|auto_generated|_~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~140_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~139_combout\ & (((\inst|inst79|dffs\(0)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~139_combout\ & 
-- (\inst|inst77|dffs\(0) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|dffs\(0),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~139_combout\,
	datac => \inst|inst79|dffs\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~140_combout\);

-- Location: LCCOMB_X38_Y19_N16
\inst|inst125|LPM_MUX_component|auto_generated|_~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~141_combout\ = (!\addr~combout\(3) & (\inst|inst125|LPM_MUX_component|auto_generated|_~140_combout\ & (\addr~combout\(5) & \addr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~140_combout\,
	datac => \addr~combout\(5),
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~141_combout\);

-- Location: LCCOMB_X36_Y18_N12
\inst|inst125|LPM_MUX_component|auto_generated|_~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~142_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & ((\inst|inst68|dffs\(0)))) # (!\addr~combout\(1) & (\inst|inst65|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst65|dffs\(0),
	datac => \inst|inst68|dffs\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~142_combout\);

-- Location: LCCOMB_X43_Y18_N10
\inst|inst125|LPM_MUX_component|auto_generated|_~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~145_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst91|dffs\(0))) # (!\addr~combout\(0) & ((\inst|inst89|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \inst|inst91|dffs\(0),
	datac => \addr~combout\(0),
	datad => \inst|inst89|dffs\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~145_combout\);

-- Location: LCCOMB_X46_Y18_N4
\inst|inst125|LPM_MUX_component|auto_generated|_~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~148_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst82|dffs\(0))) # (!\addr~combout\(0) & ((\inst|inst81|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst82|dffs\(0),
	datab => \inst|inst81|dffs\(0),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~148_combout\);

-- Location: LCCOMB_X42_Y20_N16
\inst|inst12|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst12|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst14|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst11|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst14|dffs\(5),
	datad => \inst|inst11|dffs\(5),
	combout => \inst|inst12|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X45_Y17_N28
\inst|inst26|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst26|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst28|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst25|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|dffs\(5),
	datab => \inst|inst28|dffs\(5),
	datad => \inst|inst107~combout\,
	combout => \inst|inst26|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X44_Y16_N16
\inst|inst22|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst22|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst25|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst21|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(5),
	datab => \inst|inst25|dffs\(5),
	datad => \inst|inst107~combout\,
	combout => \inst|inst22|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X45_Y16_N0
\inst|inst29|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst29|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst31|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst27|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst31|dffs\(5),
	datad => \inst|inst27|dffs\(5),
	combout => \inst|inst29|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X45_Y16_N10
\inst|inst24|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst24|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst27|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst23|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst23|dffs\(5),
	datad => \inst|inst27|dffs\(5),
	combout => \inst|inst24|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X42_Y15_N14
\inst|inst97|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst97|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst99|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst95|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst95|dffs\(5),
	combout => \inst|inst97|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X39_Y18_N20
\inst|inst76|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst76|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst79|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst75|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst75|dffs\(5),
	datad => \inst|inst79|dffs\(5),
	combout => \inst|inst76|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X40_Y18_N2
\inst|inst78|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst78|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst81|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst77|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst81|dffs\(5),
	combout => \inst|inst78|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X37_Y18_N20
\inst|inst69|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst69|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst71|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst67|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst67|dffs\(5),
	datad => \inst|inst71|dffs\(5),
	combout => \inst|inst69|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X44_Y18_N24
\inst|inst90|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst90|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst93|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst89|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst93|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst89|dffs\(5),
	combout => \inst|inst90|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X43_Y18_N12
\inst|inst88|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst88|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst91|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst87|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst87|dffs\(5),
	datab => \inst|inst91|dffs\(5),
	datad => \inst|inst107~combout\,
	combout => \inst|inst88|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X42_Y18_N8
\inst|inst94|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst94|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst96|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst93|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst96|dffs\(5),
	datad => \inst|inst93|dffs\(5),
	combout => \inst|inst94|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X43_Y18_N30
\inst|inst92|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst92|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst95|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst91|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst95|dffs\(5),
	datab => \inst|inst91|dffs\(5),
	datad => \inst|inst107~combout\,
	combout => \inst|inst92|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X42_Y20_N28
\inst|inst12|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst12|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst14|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst11|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst11|dffs\(4),
	combout => \inst|inst12|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X42_Y20_N10
\inst|inst10|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst10|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst13|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst9|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst9|dffs\(4),
	combout => \inst|inst10|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X43_Y16_N4
\inst|inst8|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst8|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst11|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst7|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst7|dffs\(4),
	combout => \inst|inst8|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X42_Y19_N4
\inst|inst15|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst15|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst17|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst13|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst13|dffs\(4),
	combout => \inst|inst15|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X40_Y19_N26
\inst|inst4|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst4|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & ((\inst|inst7|dffs\(4)))) # (!\inst|inst107~combout\ & (\inst|inst2|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|dffs\(4),
	datab => \inst|inst7|dffs\(4),
	datad => \inst|inst107~combout\,
	combout => \inst|inst4|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X40_Y20_N0
\inst|inst3|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst5|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst|dffs\(4),
	combout => \inst|inst3|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X40_Y20_N30
\inst|inst1|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & ((\inst|inst2|dffs\(4)))) # (!\inst|inst107~combout\ & (\data~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst2|dffs\(4),
	combout => \inst|inst1|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X43_Y16_N10
\inst|inst6|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst9|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst5|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst9|dffs\(4),
	datad => \inst|inst5|dffs\(4),
	combout => \inst|inst6|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X42_Y17_N12
\inst|inst18|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst18|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & ((\inst|inst21|dffs\(4)))) # (!\inst|inst107~combout\ & (\inst|inst17|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst17|dffs\(4),
	datad => \inst|inst21|dffs\(4),
	combout => \inst|inst18|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X42_Y19_N10
\inst|inst16|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst16|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & ((\inst|inst19|dffs\(4)))) # (!\inst|inst107~combout\ & (\inst|inst14|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst14|dffs\(4),
	datad => \inst|inst19|dffs\(4),
	combout => \inst|inst16|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X44_Y16_N10
\inst|inst20|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst20|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & ((\inst|inst23|dffs\(4)))) # (!\inst|inst107~combout\ & (\inst|inst19|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19|dffs\(4),
	datab => \inst|inst23|dffs\(4),
	datad => \inst|inst107~combout\,
	combout => \inst|inst20|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X39_Y15_N16
\inst|inst102|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst102|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst101|dffs\(4) & (((\mode~combout\(0)) # (!\enable~combout\)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \inst|inst101|dffs\(4),
	datac => \mode~combout\(0),
	datad => \enable~combout\,
	combout => \inst|inst102|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X42_Y16_N16
\inst|inst40|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst40|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst42|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst39|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst42|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst39|dffs\(4),
	combout => \inst|inst40|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X40_Y19_N4
\inst|inst86|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst86|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst89|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst85|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst89|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst85|dffs\(4),
	combout => \inst|inst86|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X40_Y19_N6
\inst|inst4|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst4|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst7|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst2|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|dffs\(3),
	datab => \inst|inst107~combout\,
	datad => \inst|inst7|dffs\(3),
	combout => \inst|inst4|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X40_Y20_N24
\inst|inst3|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst5|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst|dffs\(3),
	datad => \inst|inst5|dffs\(3),
	combout => \inst|inst3|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X40_Y20_N14
\inst|inst1|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst2|dffs\(3))) # (!\inst|inst107~combout\ & ((\data~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|dffs\(3),
	datab => \inst|inst107~combout\,
	datad => \data~combout\(3),
	combout => \inst|inst1|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X44_Y16_N18
\inst|inst20|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst20|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst23|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst19|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19|dffs\(3),
	datab => \inst|inst23|dffs\(3),
	datad => \inst|inst107~combout\,
	combout => \inst|inst20|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X42_Y15_N26
\inst|inst97|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst97|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst99|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst95|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(3),
	datab => \inst|inst95|dffs\(3),
	datad => \inst|inst107~combout\,
	combout => \inst|inst97|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X39_Y18_N26
\inst|inst72|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst72|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst75|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst71|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst75|dffs\(3),
	datad => \inst|inst71|dffs\(3),
	combout => \inst|inst72|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X38_Y18_N26
\inst|inst70|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst70|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst73|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst68|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(3),
	datab => \inst|inst107~combout\,
	datad => \inst|inst68|dffs\(3),
	combout => \inst|inst70|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X44_Y18_N20
\inst|inst90|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst90|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst93|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst89|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst93|dffs\(3),
	datab => \inst|inst89|dffs\(3),
	datad => \inst|inst107~combout\,
	combout => \inst|inst90|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X43_Y18_N28
\inst|inst88|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst88|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst91|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst87|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst87|dffs\(3),
	datab => \inst|inst91|dffs\(3),
	datad => \inst|inst107~combout\,
	combout => \inst|inst88|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X42_Y18_N2
\inst|inst94|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst94|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst96|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst93|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst96|dffs\(3),
	datab => \inst|inst93|dffs\(3),
	datad => \inst|inst107~combout\,
	combout => \inst|inst94|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X43_Y18_N18
\inst|inst92|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst92|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst95|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst91|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst95|dffs\(3),
	datab => \inst|inst91|dffs\(3),
	datad => \inst|inst107~combout\,
	combout => \inst|inst92|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X40_Y19_N20
\inst|inst86|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst86|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst89|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst85|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst89|dffs\(3),
	datab => \inst|inst85|dffs\(3),
	datad => \inst|inst107~combout\,
	combout => \inst|inst86|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X45_Y18_N14
\inst|inst84|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst84|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst87|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst82|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst87|dffs\(3),
	datad => \inst|inst82|dffs\(3),
	combout => \inst|inst84|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X42_Y20_N24
\inst|inst12|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst12|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst14|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst11|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst11|dffs\(2),
	combout => \inst|inst12|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X42_Y20_N6
\inst|inst10|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst10|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst13|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst9|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst9|dffs\(2),
	combout => \inst|inst10|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X43_Y19_N20
\inst|inst8|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst8|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst11|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst7|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst11|dffs\(2),
	datad => \inst|inst7|dffs\(2),
	combout => \inst|inst8|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X42_Y17_N28
\inst|inst30|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst30|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst33|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst28|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst33|dffs\(2),
	datad => \inst|inst28|dffs\(2),
	combout => \inst|inst30|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X45_Y16_N20
\inst|inst29|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst29|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst31|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst27|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst27|dffs\(2),
	datad => \inst|inst31|dffs\(2),
	combout => \inst|inst29|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X42_Y15_N8
\inst|inst100|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst100|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst103|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst99|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst103|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst99|dffs\(2),
	combout => \inst|inst100|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X40_Y15_N24
\inst|inst98|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst98|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst101|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst96|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst96|dffs\(2),
	datab => \inst|inst101|dffs\(2),
	datad => \inst|inst107~combout\,
	combout => \inst|inst98|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X42_Y15_N2
\inst|inst97|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst97|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst99|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst95|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst95|dffs\(2),
	combout => \inst|inst97|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X40_Y15_N0
\inst|inst102|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst102|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst101|dffs\(2) & (((\mode~combout\(0)) # (!\enable~combout\)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \inst|inst101|dffs\(2),
	combout => \inst|inst102|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X39_Y16_N20
\inst|inst44|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst44|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst47|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst42|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst42|dffs\(2),
	datad => \inst|inst47|dffs\(2),
	combout => \inst|inst44|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X39_Y16_N14
\inst|inst43|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst43|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst45|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst41|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst45|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst41|dffs\(2),
	combout => \inst|inst43|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X42_Y16_N24
\inst|inst40|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst40|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst42|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst39|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst42|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst39|dffs\(2),
	combout => \inst|inst40|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X46_Y16_N4
\inst|inst36|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst36|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst39|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst35|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst39|dffs\(2),
	datad => \inst|inst35|dffs\(2),
	combout => \inst|inst36|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X46_Y16_N22
\inst|inst34|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst34|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst37|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst33|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst37|dffs\(2),
	datad => \inst|inst33|dffs\(2),
	combout => \inst|inst34|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X47_Y16_N22
\inst|inst32|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst32|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst35|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst31|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst31|dffs\(2),
	datad => \inst|inst35|dffs\(2),
	combout => \inst|inst32|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X42_Y16_N2
\inst|inst38|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst38|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst41|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst37|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(2),
	datab => \inst|inst37|dffs\(2),
	datad => \inst|inst107~combout\,
	combout => \inst|inst38|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X39_Y18_N24
\inst|inst76|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst76|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst79|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst75|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst75|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst79|dffs\(2),
	combout => \inst|inst76|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X38_Y18_N4
\inst|inst74|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst74|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst77|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst73|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst77|dffs\(2),
	combout => \inst|inst74|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X40_Y18_N10
\inst|inst72|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst72|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst75|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst71|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst75|dffs\(2),
	datab => \inst|inst71|dffs\(2),
	datad => \inst|inst107~combout\,
	combout => \inst|inst72|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X40_Y18_N4
\inst|inst78|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst78|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst81|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst77|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst81|dffs\(2),
	combout => \inst|inst78|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X43_Y18_N8
\inst|inst88|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst88|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst91|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst87|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst87|dffs\(2),
	datad => \inst|inst91|dffs\(2),
	combout => \inst|inst88|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X46_Y18_N6
\inst|inst80|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst80|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst82|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst79|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst82|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst79|dffs\(2),
	combout => \inst|inst80|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X40_Y19_N24
\inst|inst86|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst86|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst89|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst85|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst89|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst85|dffs\(2),
	combout => \inst|inst86|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X42_Y20_N22
\inst|inst10|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst10|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst13|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst9|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(1),
	datab => \inst|inst107~combout\,
	datad => \inst|inst9|dffs\(1),
	combout => \inst|inst10|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X45_Y17_N16
\inst|inst26|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst26|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst28|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst25|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst28|dffs\(1),
	datab => \inst|inst25|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst26|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X45_Y16_N4
\inst|inst29|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst29|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst31|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst27|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst27|dffs\(1),
	datab => \inst|inst107~combout\,
	datad => \inst|inst31|dffs\(1),
	combout => \inst|inst29|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X45_Y16_N2
\inst|inst24|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst24|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst27|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst23|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst27|dffs\(1),
	datab => \inst|inst107~combout\,
	datad => \inst|inst23|dffs\(1),
	combout => \inst|inst24|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X44_Y16_N12
\inst|inst22|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst22|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst25|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst21|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst25|dffs\(1),
	datad => \inst|inst21|dffs\(1),
	combout => \inst|inst22|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X43_Y17_N10
\inst|inst18|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst18|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst21|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst17|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(1),
	datab => \inst|inst17|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst18|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X44_Y16_N6
\inst|inst20|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst20|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst23|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst19|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|dffs\(1),
	datab => \inst|inst19|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst20|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X42_Y15_N28
\inst|inst100|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst100|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst103|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst99|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst103|dffs\(1),
	datab => \inst|inst99|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst100|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X39_Y15_N0
\inst|inst102|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst102|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst101|dffs\(1) & (((\mode~combout\(0)) # (!\enable~combout\)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \inst|inst101|dffs\(1),
	datad => \enable~combout\,
	combout => \inst|inst102|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X44_Y18_N26
\inst|inst90|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst90|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst93|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst89|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst89|dffs\(1),
	datad => \inst|inst93|dffs\(1),
	combout => \inst|inst90|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X43_Y18_N24
\inst|inst88|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst88|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst91|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst87|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst91|dffs\(1),
	datab => \inst|inst87|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst88|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X42_Y18_N16
\inst|inst94|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst94|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst96|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst93|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst96|dffs\(1),
	datab => \inst|inst93|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst94|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X43_Y18_N22
\inst|inst92|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst92|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst95|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst91|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst91|dffs\(1),
	datab => \inst|inst95|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst92|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X40_Y20_N6
\inst|inst1|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst2|dffs\(0)))) # (!\inst|inst107~combout\ & (\data~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst2|dffs\(0),
	combout => \inst|inst1|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X42_Y17_N22
\inst|inst18|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst18|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst21|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst17|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst17|dffs\(0),
	datad => \inst|inst21|dffs\(0),
	combout => \inst|inst18|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X42_Y19_N6
\inst|inst16|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst16|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst19|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst14|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst14|dffs\(0),
	combout => \inst|inst16|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X40_Y15_N28
\inst|inst98|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst98|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst101|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst96|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst96|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst101|dffs\(0),
	combout => \inst|inst98|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X40_Y16_N24
\inst|inst48|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst48|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst51|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst47|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst47|dffs\(0),
	datab => \inst|inst51|dffs\(0),
	datad => \inst|inst107~combout\,
	combout => \inst|inst48|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X38_Y16_N10
\inst|inst55|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst55|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst57|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst53|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst57|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst53|dffs\(0),
	combout => \inst|inst55|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X39_Y18_N30
\inst|inst76|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst76|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst79|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst75|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst75|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst79|dffs\(0),
	combout => \inst|inst76|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X38_Y18_N0
\inst|inst74|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst74|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst77|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst73|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(0),
	datab => \inst|inst77|dffs\(0),
	datad => \inst|inst107~combout\,
	combout => \inst|inst74|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X40_Y18_N16
\inst|inst72|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst72|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst75|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst71|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71|dffs\(0),
	datab => \inst|inst75|dffs\(0),
	datad => \inst|inst107~combout\,
	combout => \inst|inst72|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X39_Y18_N22
\inst|inst78|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst78|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst81|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst77|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst77|dffs\(0),
	datac => \inst|inst107~combout\,
	datad => \inst|inst81|dffs\(0),
	combout => \inst|inst78|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X43_Y18_N0
\inst|inst88|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst88|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst91|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst87|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst91|dffs\(0),
	datad => \inst|inst87|dffs\(0),
	combout => \inst|inst88|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X45_Y18_N24
\inst|inst83|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst83|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst85|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst81|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst85|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst81|dffs\(0),
	combout => \inst|inst83|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X46_Y18_N14
\inst|inst80|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst80|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst82|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst79|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst82|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst79|dffs\(0),
	combout => \inst|inst80|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[4]~I\ : cycloneii_io
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
	padio => ww_data(4),
	combout => \data~combout\(4));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[3]~I\ : cycloneii_io
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
	padio => ww_data(3),
	combout => \data~combout\(3));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[0]~I\ : cycloneii_io
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
	padio => ww_data(0),
	combout => \data~combout\(0));

-- Location: LCCOMB_X40_Y15_N30
\inst|inst103|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst103|dffs[4]~feeder_combout\ = \inst|inst102|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst102|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \inst|inst103|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X40_Y15_N10
\inst|inst103|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst103|dffs[2]~feeder_combout\ = \inst|inst102|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst102|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \inst|inst103|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X40_Y18_N22
\inst|inst79|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst79|dffs[0]~feeder_combout\ = \inst|inst78|$00000|auto_generated|result_node[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst78|$00000|auto_generated|result_node[0]~5_combout\,
	combout => \inst|inst79|dffs[0]~feeder_combout\);

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable~I\ : cycloneii_io
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
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mode[1]~I\ : cycloneii_io
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
	padio => ww_mode(1),
	combout => \mode~combout\(1));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mode[0]~I\ : cycloneii_io
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
	padio => ww_mode(0),
	combout => \mode~combout\(0));

-- Location: LCCOMB_X48_Y18_N16
\inst|inst108\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst108~combout\ = (\enable~combout\ & (!\mode~combout\(1) & \mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \inst|inst108~combout\);

-- Location: LCCOMB_X49_Y18_N16
\inst|inst115|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst115|auto_generated|counter_comb_bita0~combout\ = \inst|inst115|auto_generated|safe_q\(0) $ (((VCC) # (!\inst|inst108~combout\)))
-- \inst|inst115|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst|inst115|auto_generated|safe_q\(0) $ (!\inst|inst108~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst115|auto_generated|safe_q\(0),
	datab => \inst|inst108~combout\,
	datad => VCC,
	combout => \inst|inst115|auto_generated|counter_comb_bita0~combout\,
	cout => \inst|inst115|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X49_Y18_N18
\inst|inst115|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst115|auto_generated|counter_comb_bita1~combout\ = (\inst|inst115|auto_generated|counter_comb_bita0~COUT\ & (\inst|inst115|auto_generated|safe_q\(1) $ (((\inst|inst108~combout\) # (VCC))))) # (!\inst|inst115|auto_generated|counter_comb_bita0~COUT\ 
-- & (((\inst|inst115|auto_generated|safe_q\(1)) # (GND))))
-- \inst|inst115|auto_generated|counter_comb_bita1~COUT\ = CARRY((\inst|inst108~combout\ $ (\inst|inst115|auto_generated|safe_q\(1))) # (!\inst|inst115|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst108~combout\,
	datab => \inst|inst115|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst|inst115|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst|inst115|auto_generated|counter_comb_bita1~combout\,
	cout => \inst|inst115|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X49_Y18_N4
\inst|inst115|auto_generated|counter_reg_bit1a[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst115|auto_generated|counter_reg_bit1a[1]~5_combout\ = (!\inst|inst115|auto_generated|counter_reg_bit1a[3]~0_combout\ & \inst|inst115|auto_generated|safe_q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst115|auto_generated|counter_reg_bit1a[3]~0_combout\,
	datad => \inst|inst115|auto_generated|safe_q\(1),
	combout => \inst|inst115|auto_generated|counter_reg_bit1a[1]~5_combout\);

-- Location: LCCOMB_X48_Y18_N14
\inst|inst115|auto_generated|counter_reg_bit1a[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst115|auto_generated|counter_reg_bit1a[3]~0_combout\ = (\rst~combout\) # ((\enable~combout\ & (\mode~combout\(1) & \mode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \inst|inst115|auto_generated|counter_reg_bit1a[3]~0_combout\);

-- Location: LCCOMB_X48_Y18_N0
\inst|inst115|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst115|auto_generated|_~0_combout\ = (\rst~combout\) # ((\enable~combout\ & ((\mode~combout\(1)) # (\mode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \inst|inst115|auto_generated|_~0_combout\);

-- Location: LCFF_X49_Y18_N19
\inst|inst115|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst115|auto_generated|counter_comb_bita1~combout\,
	sdata => \inst|inst115|auto_generated|counter_reg_bit1a[1]~5_combout\,
	sload => \inst|inst115|auto_generated|counter_reg_bit1a[3]~0_combout\,
	ena => \inst|inst115|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst115|auto_generated|safe_q\(1));

-- Location: LCCOMB_X49_Y18_N30
\inst|inst115|auto_generated|counter_reg_bit1a[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst115|auto_generated|counter_reg_bit1a[0]~6_combout\ = (\inst|inst115|auto_generated|safe_q\(0) & !\inst|inst115|auto_generated|counter_reg_bit1a[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst115|auto_generated|safe_q\(0),
	datad => \inst|inst115|auto_generated|counter_reg_bit1a[3]~0_combout\,
	combout => \inst|inst115|auto_generated|counter_reg_bit1a[0]~6_combout\);

-- Location: LCFF_X49_Y18_N17
\inst|inst115|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst115|auto_generated|counter_comb_bita0~combout\,
	sdata => \inst|inst115|auto_generated|counter_reg_bit1a[0]~6_combout\,
	sload => \inst|inst115|auto_generated|counter_reg_bit1a[3]~0_combout\,
	ena => \inst|inst115|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst115|auto_generated|safe_q\(0));

-- Location: LCCOMB_X49_Y18_N20
\inst|inst115|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst115|auto_generated|counter_comb_bita2~combout\ = (\inst|inst115|auto_generated|counter_comb_bita1~COUT\ & (\inst|inst115|auto_generated|safe_q\(2) & ((VCC)))) # (!\inst|inst115|auto_generated|counter_comb_bita1~COUT\ & 
-- (\inst|inst115|auto_generated|safe_q\(2) $ (((VCC) # (!\inst|inst108~combout\)))))
-- \inst|inst115|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\inst|inst115|auto_generated|counter_comb_bita1~COUT\ & (\inst|inst115|auto_generated|safe_q\(2) $ (!\inst|inst108~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst115|auto_generated|safe_q\(2),
	datab => \inst|inst108~combout\,
	datad => VCC,
	cin => \inst|inst115|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst|inst115|auto_generated|counter_comb_bita2~combout\,
	cout => \inst|inst115|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X49_Y18_N22
\inst|inst115|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst115|auto_generated|counter_comb_bita3~combout\ = (\inst|inst115|auto_generated|counter_comb_bita2~COUT\ & (\inst|inst115|auto_generated|safe_q\(3) $ (((\inst|inst108~combout\) # (VCC))))) # (!\inst|inst115|auto_generated|counter_comb_bita2~COUT\ 
-- & (((\inst|inst115|auto_generated|safe_q\(3)) # (GND))))
-- \inst|inst115|auto_generated|counter_comb_bita3~COUT\ = CARRY((\inst|inst108~combout\ $ (\inst|inst115|auto_generated|safe_q\(3))) # (!\inst|inst115|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst108~combout\,
	datab => \inst|inst115|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst|inst115|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst|inst115|auto_generated|counter_comb_bita3~combout\,
	cout => \inst|inst115|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X49_Y18_N8
\inst|inst115|auto_generated|counter_reg_bit1a[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst115|auto_generated|counter_reg_bit1a[3]~1_combout\ = (!\inst|inst115|auto_generated|counter_reg_bit1a[3]~0_combout\ & \inst|inst115|auto_generated|safe_q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst115|auto_generated|counter_reg_bit1a[3]~0_combout\,
	datad => \inst|inst115|auto_generated|safe_q\(3),
	combout => \inst|inst115|auto_generated|counter_reg_bit1a[3]~1_combout\);

-- Location: LCFF_X49_Y18_N23
\inst|inst115|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst115|auto_generated|counter_comb_bita3~combout\,
	sdata => \inst|inst115|auto_generated|counter_reg_bit1a[3]~1_combout\,
	sload => \inst|inst115|auto_generated|counter_reg_bit1a[3]~0_combout\,
	ena => \inst|inst115|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst115|auto_generated|safe_q\(3));

-- Location: LCCOMB_X49_Y18_N24
\inst|inst115|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst115|auto_generated|counter_comb_bita4~combout\ = (\inst|inst115|auto_generated|counter_comb_bita3~COUT\ & (\inst|inst115|auto_generated|safe_q\(4) & ((VCC)))) # (!\inst|inst115|auto_generated|counter_comb_bita3~COUT\ & 
-- (\inst|inst115|auto_generated|safe_q\(4) $ (((VCC) # (!\inst|inst108~combout\)))))
-- \inst|inst115|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\inst|inst115|auto_generated|counter_comb_bita3~COUT\ & (\inst|inst115|auto_generated|safe_q\(4) $ (!\inst|inst108~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst115|auto_generated|safe_q\(4),
	datab => \inst|inst108~combout\,
	datad => VCC,
	cin => \inst|inst115|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst|inst115|auto_generated|counter_comb_bita4~combout\,
	cout => \inst|inst115|auto_generated|counter_comb_bita4~COUT\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
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
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LCCOMB_X48_Y17_N16
\inst|inst109\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst109~combout\ = (\enable~combout\ & (\mode~combout\(1) & \mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \inst|inst109~combout\);

-- Location: LCCOMB_X49_Y18_N14
\inst|inst115|auto_generated|counter_reg_bit1a[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst115|auto_generated|counter_reg_bit1a[4]~4_combout\ = (!\rst~combout\ & ((\inst|inst115|auto_generated|safe_q\(4)) # (\inst|inst109~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \inst|inst115|auto_generated|safe_q\(4),
	datad => \inst|inst109~combout\,
	combout => \inst|inst115|auto_generated|counter_reg_bit1a[4]~4_combout\);

-- Location: LCFF_X49_Y18_N25
\inst|inst115|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst115|auto_generated|counter_comb_bita4~combout\,
	sdata => \inst|inst115|auto_generated|counter_reg_bit1a[4]~4_combout\,
	sload => \inst|inst115|auto_generated|counter_reg_bit1a[3]~0_combout\,
	ena => \inst|inst115|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst115|auto_generated|safe_q\(4));

-- Location: LCCOMB_X49_Y18_N26
\inst|inst115|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst115|auto_generated|counter_comb_bita5~combout\ = \inst|inst115|auto_generated|counter_comb_bita4~COUT\ $ (\inst|inst115|auto_generated|safe_q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst115|auto_generated|safe_q\(5),
	cin => \inst|inst115|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst|inst115|auto_generated|counter_comb_bita5~combout\);

-- Location: LCCOMB_X49_Y18_N12
\inst|inst115|auto_generated|counter_reg_bit1a[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst115|auto_generated|counter_reg_bit1a[5]~3_combout\ = (!\rst~combout\ & ((\inst|inst109~combout\) # (\inst|inst115|auto_generated|safe_q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst109~combout\,
	datac => \rst~combout\,
	datad => \inst|inst115|auto_generated|safe_q\(5),
	combout => \inst|inst115|auto_generated|counter_reg_bit1a[5]~3_combout\);

-- Location: LCFF_X49_Y18_N27
\inst|inst115|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst115|auto_generated|counter_comb_bita5~combout\,
	sdata => \inst|inst115|auto_generated|counter_reg_bit1a[5]~3_combout\,
	sload => \inst|inst115|auto_generated|counter_reg_bit1a[3]~0_combout\,
	ena => \inst|inst115|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst115|auto_generated|safe_q\(5));

-- Location: LCCOMB_X49_Y18_N0
\inst|inst120|auto_generated|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst120|auto_generated|aneb_result_wire[0]~0_combout\ = (\inst|inst115|auto_generated|safe_q\(2)) # ((\inst|inst115|auto_generated|safe_q\(3)) # ((\inst|inst115|auto_generated|safe_q\(4)) # (\inst|inst115|auto_generated|safe_q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst115|auto_generated|safe_q\(2),
	datab => \inst|inst115|auto_generated|safe_q\(3),
	datac => \inst|inst115|auto_generated|safe_q\(4),
	datad => \inst|inst115|auto_generated|safe_q\(5),
	combout => \inst|inst120|auto_generated|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X49_Y18_N6
\inst|inst120|auto_generated|aneb_result_wire[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst120|auto_generated|aneb_result_wire\(0) = (\inst|inst115|auto_generated|safe_q\(1)) # ((\inst|inst115|auto_generated|safe_q\(0)) # (\inst|inst120|auto_generated|aneb_result_wire[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst115|auto_generated|safe_q\(1),
	datac => \inst|inst115|auto_generated|safe_q\(0),
	datad => \inst|inst120|auto_generated|aneb_result_wire[0]~0_combout\,
	combout => \inst|inst120|auto_generated|aneb_result_wire\(0));

-- Location: LCCOMB_X49_Y18_N28
\inst|inst119|auto_generated|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst119|auto_generated|aneb_result_wire[0]~0_combout\ = (\inst|inst115|auto_generated|safe_q\(2)) # ((\inst|inst115|auto_generated|safe_q\(3)) # ((!\inst|inst115|auto_generated|safe_q\(5)) # (!\inst|inst115|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst115|auto_generated|safe_q\(2),
	datab => \inst|inst115|auto_generated|safe_q\(3),
	datac => \inst|inst115|auto_generated|safe_q\(4),
	datad => \inst|inst115|auto_generated|safe_q\(5),
	combout => \inst|inst119|auto_generated|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X49_Y18_N2
\inst|inst119|auto_generated|aneb_result_wire[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst119|auto_generated|aneb_result_wire\(0) = ((\inst|inst119|auto_generated|aneb_result_wire[0]~0_combout\) # (!\inst|inst115|auto_generated|safe_q\(0))) # (!\inst|inst115|auto_generated|safe_q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst115|auto_generated|safe_q\(1),
	datac => \inst|inst115|auto_generated|safe_q\(0),
	datad => \inst|inst119|auto_generated|aneb_result_wire[0]~0_combout\,
	combout => \inst|inst119|auto_generated|aneb_result_wire\(0));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X49_Y18_N10
\inst|inst115|auto_generated|counter_reg_bit1a[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst115|auto_generated|counter_reg_bit1a[2]~2_combout\ = (!\rst~combout\ & ((\inst|inst115|auto_generated|safe_q\(2)) # (\inst|inst109~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \inst|inst115|auto_generated|safe_q\(2),
	datad => \inst|inst109~combout\,
	combout => \inst|inst115|auto_generated|counter_reg_bit1a[2]~2_combout\);

-- Location: LCFF_X49_Y18_N21
\inst|inst115|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst115|auto_generated|counter_comb_bita2~combout\,
	sdata => \inst|inst115|auto_generated|counter_reg_bit1a[2]~2_combout\,
	sload => \inst|inst115|auto_generated|counter_reg_bit1a[3]~0_combout\,
	ena => \inst|inst115|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst115|auto_generated|safe_q\(2));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[2]~I\ : cycloneii_io
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
	padio => ww_addr(2),
	combout => \addr~combout\(2));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[0]~I\ : cycloneii_io
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
	padio => ww_addr(0),
	combout => \addr~combout\(0));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[1]~I\ : cycloneii_io
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
	padio => ww_addr(1),
	combout => \addr~combout\(1));

-- Location: LCCOMB_X36_Y18_N0
\inst|inst107\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst107~combout\ = (\enable~combout\ & (\mode~combout\(1) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \inst|inst107~combout\);

-- Location: LCCOMB_X39_Y15_N10
\inst|inst102|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst102|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst101|dffs\(5) & (((\mode~combout\(0)) # (!\enable~combout\)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \inst|inst101|dffs\(5),
	datac => \mode~combout\(0),
	datad => \enable~combout\,
	combout => \inst|inst102|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X40_Y15_N22
\inst|inst103|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst103|dffs[5]~feeder_combout\ = \inst|inst102|$00000|auto_generated|result_node[5]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst102|$00000|auto_generated|result_node[5]~0_combout\,
	combout => \inst|inst103|dffs[5]~feeder_combout\);

-- Location: CLKCTRL_G1
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[3]~I\ : cycloneii_io
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
	padio => ww_addr(3),
	combout => \addr~combout\(3));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[4]~I\ : cycloneii_io
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
	padio => ww_addr(4),
	combout => \addr~combout\(4));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[5]~I\ : cycloneii_io
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
	padio => ww_addr(5),
	combout => \addr~combout\(5));

-- Location: M4K_X41_Y16
\inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000800000000C00000000E00000000F00000000F80000000FC0000000FE0000000FF0000000FF8000000FFC000000FFE000000FFF000000FFF800000FFFC00000FFFE00000FFFF00000FFFF80000FFFFC0000FFFFE0000FFFFF0000FFFFF8000FFFFFC000FFFFFE000FFFFFF000FFFFFF800FFFFFFC00FFFFFFE00FFFFFFF00FFFFFFF80FFFFFFFC0FFFFFFFE0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF8FFFFFFFFCFFFFFFFFEFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gA6_popup_rom_data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "gA6_stack52:inst|gA6_pop_enable:inst104|lpm_rom:lookup_table|altrom:srom|altsyncram:rom_block|altsyncram_f911:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 52,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 36,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y15_N6
\inst|inst124|inst51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst51~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(0) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(0),
	combout => \inst|inst124|inst51~combout\);

-- Location: LCFF_X40_Y15_N23
\inst|inst103|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst103|dffs[5]~feeder_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst51~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst103|dffs\(5));

-- Location: LCCOMB_X42_Y15_N20
\inst|inst100|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst100|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst103|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst99|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst103|dffs\(5),
	combout => \inst|inst100|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X42_Y15_N0
\inst|inst124|inst50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst50~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(1) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(1),
	combout => \inst|inst124|inst50~combout\);

-- Location: LCFF_X42_Y15_N21
\inst|inst101|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst100|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst50~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst101|dffs\(5));

-- Location: LCCOMB_X40_Y15_N20
\inst|inst98|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst98|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst101|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst96|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst96|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst101|dffs\(5),
	combout => \inst|inst98|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X40_Y15_N8
\inst|inst124|inst49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst49~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(2) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(2),
	combout => \inst|inst124|inst49~combout\);

-- Location: LCFF_X40_Y15_N21
\inst|inst99|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst98|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst49~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst99|dffs\(5));

-- Location: LCCOMB_X43_Y15_N0
\inst|inst125|LPM_MUX_component|auto_generated|_~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~17_combout\ = (\addr~combout\(0) & (((\addr~combout\(1)) # (\inst|inst99|dffs\(5))))) # (!\addr~combout\(0) & (\inst|inst96|dffs\(5) & (!\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst96|dffs\(5),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \inst|inst99|dffs\(5),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~17_combout\);

-- Location: LCCOMB_X43_Y15_N22
\inst|inst125|LPM_MUX_component|auto_generated|_~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~18_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~17_combout\ & ((\inst|inst103|dffs\(5)) # ((!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~17_combout\ & 
-- (((\addr~combout\(1) & \inst|inst101|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst103|dffs\(5),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~17_combout\,
	datac => \addr~combout\(1),
	datad => \inst|inst101|dffs\(5),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~18_combout\);

-- Location: LCCOMB_X39_Y20_N10
\inst|inst125|LPM_MUX_component|auto_generated|_~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~152_combout\ = ((!\addr~combout\(2) & (\inst|inst125|LPM_MUX_component|auto_generated|_~18_combout\ & !\addr~combout\(3)))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(4),
	datab => \addr~combout\(2),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~18_combout\,
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~152_combout\);

-- Location: LCCOMB_X38_Y18_N8
\inst|inst74|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst74|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst77|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst73|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst73|dffs\(5),
	combout => \inst|inst74|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: M4K_X41_Y18
\inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000C000E000F000F800FC00FE00FF00FF80FFC0FFE0FFF0FFF8FFFCFFFEFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gA6_popup_rom_data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "gA6_stack52:inst|gA6_pop_enable:inst104|lpm_rom:lookup_table|altrom:srom|altsyncram:rom_block|altsyncram_f911:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 52,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|inst104|lookup_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X38_Y18_N20
\inst|inst124|inst37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst37~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(14) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(14),
	datad => \mode~combout\(0),
	combout => \inst|inst124|inst37~combout\);

-- Location: LCFF_X38_Y18_N9
\inst|inst75|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst74|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst75|dffs\(5));

-- Location: LCCOMB_X40_Y18_N12
\inst|inst72|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst72|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst75|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst71|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71|dffs\(5),
	datab => \inst|inst75|dffs\(5),
	datad => \inst|inst107~combout\,
	combout => \inst|inst72|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X40_Y18_N8
\inst|inst124|inst36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst36~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(15) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(15),
	combout => \inst|inst124|inst36~combout\);

-- Location: LCFF_X40_Y18_N13
\inst|inst73|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst72|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst36~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst73|dffs\(5));

-- Location: LCCOMB_X38_Y18_N18
\inst|inst70|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst70|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst73|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst68|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst68|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst73|dffs\(5),
	combout => \inst|inst70|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X38_Y18_N22
\inst|inst124|inst35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst35~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(16) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \enable~combout\,
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(16),
	combout => \inst|inst124|inst35~combout\);

-- Location: LCFF_X38_Y18_N19
\inst|inst71|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst70|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst71|dffs\(5));

-- Location: LCCOMB_X38_Y16_N22
\inst|inst55|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst55|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst57|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst53|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst53|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst57|dffs\(5),
	combout => \inst|inst55|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X40_Y19_N22
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X37_Y16_N26
\inst|inst124|inst27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst27~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(24) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(24),
	combout => \inst|inst124|inst27~combout\);

-- Location: LCFF_X38_Y16_N23
\inst|inst54|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst55|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst27~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst54|dffs\(5));

-- Location: LCCOMB_X38_Y16_N28
\inst|inst56|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst56|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst59|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst54|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst54|dffs\(5),
	combout => \inst|inst56|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X38_Y16_N30
\inst|inst124|inst28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst28~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(23) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(23),
	combout => \inst|inst124|inst28~combout\);

-- Location: LCFF_X38_Y16_N29
\inst|inst57|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst56|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst28~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst57|dffs\(5));

-- Location: LCCOMB_X36_Y16_N28
\inst|inst58|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst58|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst61|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst57|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst61|dffs\(5),
	datad => \inst|inst57|dffs\(5),
	combout => \inst|inst58|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X36_Y16_N20
\inst|inst124|inst29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst29~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(22) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(22),
	combout => \inst|inst124|inst29~combout\);

-- Location: LCFF_X36_Y16_N29
\inst|inst59|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst58|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst59|dffs\(5));

-- Location: LCCOMB_X36_Y16_N22
\inst|inst60|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst60|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst63|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst59|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst59|dffs\(5),
	datad => \inst|inst63|dffs\(5),
	combout => \inst|inst60|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X36_Y16_N18
\inst|inst124|inst30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst30~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(21) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(21),
	combout => \inst|inst124|inst30~combout\);

-- Location: LCFF_X36_Y16_N23
\inst|inst61|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst60|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst61|dffs\(5));

-- Location: LCCOMB_X37_Y16_N4
\inst|inst62|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst62|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst65|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst61|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst61|dffs\(5),
	datad => \inst|inst65|dffs\(5),
	combout => \inst|inst62|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X37_Y16_N16
\inst|inst124|inst31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst31~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(20) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(20),
	combout => \inst|inst124|inst31~combout\);

-- Location: LCFF_X37_Y16_N5
\inst|inst63|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst62|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst63|dffs\(5));

-- Location: LCCOMB_X37_Y18_N6
\inst|inst64|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst64|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst67|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst63|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst67|dffs\(5),
	datad => \inst|inst63|dffs\(5),
	combout => \inst|inst64|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X37_Y18_N30
\inst|inst124|inst32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst32~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(19) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \enable~combout\,
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(19),
	combout => \inst|inst124|inst32~combout\);

-- Location: LCFF_X37_Y18_N7
\inst|inst65|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst64|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst65|dffs\(5));

-- Location: LCCOMB_X36_Y18_N16
\inst|inst66|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst66|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst68|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst65|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst68|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst65|dffs\(5),
	combout => \inst|inst66|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X36_Y18_N10
\inst|inst124|inst33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst33~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(18) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \enable~combout\,
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(18),
	combout => \inst|inst124|inst33~combout\);

-- Location: LCFF_X36_Y18_N17
\inst|inst67|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst66|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst33~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst67|dffs\(5));

-- Location: LCCOMB_X36_Y18_N4
\inst|inst125|LPM_MUX_component|auto_generated|_~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~26_combout\ = (\addr~combout\(0) & ((\addr~combout\(1)) # ((\inst|inst67|dffs\(5))))) # (!\addr~combout\(0) & (!\addr~combout\(1) & ((\inst|inst65|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \addr~combout\(1),
	datac => \inst|inst67|dffs\(5),
	datad => \inst|inst65|dffs\(5),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~26_combout\);

-- Location: LCCOMB_X37_Y18_N12
\inst|inst125|LPM_MUX_component|auto_generated|_~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~27_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~26_combout\ & (((\inst|inst71|dffs\(5)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~26_combout\ & 
-- (\inst|inst68|dffs\(5) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst68|dffs\(5),
	datab => \inst|inst71|dffs\(5),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~26_combout\,
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~27_combout\);

-- Location: LCCOMB_X38_Y19_N4
\inst|inst125|LPM_MUX_component|auto_generated|_~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~28_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~16_combout\ & \inst|inst125|LPM_MUX_component|auto_generated|_~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~16_combout\,
	datab => \addr~combout\(5),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~27_combout\,
	datad => \addr~combout\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~28_combout\);

-- Location: LCCOMB_X40_Y19_N16
\inst|inst86|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst86|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst89|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst85|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst89|dffs\(5),
	datab => \inst|inst85|dffs\(5),
	datad => \inst|inst107~combout\,
	combout => \inst|inst86|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X40_Y19_N8
\inst|inst124|inst43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst43~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(8) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(8),
	combout => \inst|inst124|inst43~combout\);

-- Location: LCFF_X40_Y19_N17
\inst|inst87|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst86|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst43~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst87|dffs\(5));

-- Location: LCCOMB_X45_Y18_N26
\inst|inst84|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst84|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst87|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst82|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst82|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst87|dffs\(5),
	combout => \inst|inst84|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X45_Y18_N18
\inst|inst124|inst42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst42~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(9) & (((\mode~combout\(0)) # (\mode~combout\(1))) # (!\enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(9),
	combout => \inst|inst124|inst42~combout\);

-- Location: LCFF_X45_Y18_N27
\inst|inst85|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst84|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst85|dffs\(5));

-- Location: LCCOMB_X40_Y19_N12
\inst|inst125|LPM_MUX_component|auto_generated|_~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~33_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst87|dffs\(5)))) # (!\addr~combout\(0) & (\inst|inst85|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst85|dffs\(5),
	datac => \inst|inst87|dffs\(5),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~33_combout\);

-- Location: LCCOMB_X46_Y18_N20
\inst|inst80|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst80|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst82|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst79|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst79|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst82|dffs\(5),
	combout => \inst|inst80|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X46_Y18_N22
\inst|inst124|inst40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst40~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(11) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(11),
	combout => \inst|inst124|inst40~combout\);

-- Location: LCFF_X46_Y18_N21
\inst|inst81|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst80|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst40~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst81|dffs\(5));

-- Location: LCCOMB_X45_Y18_N16
\inst|inst83|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst83|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst85|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst81|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst85|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst81|dffs\(5),
	combout => \inst|inst83|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X45_Y18_N20
\inst|inst124|inst41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst41~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(10) & (((\mode~combout\(0)) # (\mode~combout\(1))) # (!\enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(10),
	combout => \inst|inst124|inst41~combout\);

-- Location: LCFF_X45_Y18_N17
\inst|inst82|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst83|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst41~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst82|dffs\(5));

-- Location: LCCOMB_X46_Y18_N0
\inst|inst125|LPM_MUX_component|auto_generated|_~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~32_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst82|dffs\(5)))) # (!\addr~combout\(0) & (\inst|inst81|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst81|dffs\(5),
	datab => \inst|inst82|dffs\(5),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~32_combout\);

-- Location: LCCOMB_X39_Y19_N16
\inst|inst125|LPM_MUX_component|auto_generated|_~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~34_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~31_combout\) # ((!\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~33_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|_~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~31_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~33_combout\,
	datac => \addr~combout\(2),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~32_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~34_combout\);

-- Location: LCCOMB_X43_Y15_N28
\inst|inst125|LPM_MUX_component|auto_generated|_~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~35_combout\ = (\addr~combout\(5) & \addr~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr~combout\(5),
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~35_combout\);

-- Location: LCCOMB_X38_Y19_N2
\inst|inst125|LPM_MUX_component|auto_generated|_~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~36_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~25_combout\) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~28_combout\) # 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|_~34_combout\ & \inst|inst125|LPM_MUX_component|auto_generated|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~25_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~28_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~34_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~35_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~36_combout\);

-- Location: LCCOMB_X39_Y17_N6
\inst|inst48|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst48|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst51|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst47|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst51|dffs\(5),
	datab => \inst|inst47|dffs\(5),
	datad => \inst|inst107~combout\,
	combout => \inst|inst48|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X40_Y16_N10
\inst|inst124|inst24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst24~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(27) & (((\mode~combout\(1)) # (\mode~combout\(0))) # (!\enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(27),
	combout => \inst|inst124|inst24~combout\);

-- Location: LCFF_X39_Y17_N7
\inst|inst49|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst48|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst24~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst49|dffs\(5));

-- Location: LCCOMB_X40_Y16_N20
\inst|inst46|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst46|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst49|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst45|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst45|dffs\(5),
	datab => \inst|inst49|dffs\(5),
	datad => \inst|inst107~combout\,
	combout => \inst|inst46|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X40_Y16_N4
\inst|inst124|inst23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst23~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(28) & (((\mode~combout\(1)) # (\mode~combout\(0))) # (!\enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(28),
	combout => \inst|inst124|inst23~combout\);

-- Location: LCFF_X40_Y16_N21
\inst|inst47|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst46|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst47|dffs\(5));

-- Location: LCCOMB_X39_Y16_N8
\inst|inst44|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst44|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst47|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst42|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst42|dffs\(5),
	datad => \inst|inst47|dffs\(5),
	combout => \inst|inst44|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X40_Y16_N8
\inst|inst124|inst22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst22~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(29) & (((\mode~combout\(1)) # (\mode~combout\(0))) # (!\enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(29),
	combout => \inst|inst124|inst22~combout\);

-- Location: LCFF_X39_Y16_N9
\inst|inst45|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst44|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst45|dffs\(5));

-- Location: LCCOMB_X42_Y17_N16
\inst|inst30|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst30|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst33|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst28|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst28|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst33|dffs\(5),
	combout => \inst|inst30|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X42_Y17_N8
\inst|inst124|inst15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst15~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(36) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(36),
	combout => \inst|inst124|inst15~combout\);

-- Location: LCFF_X42_Y17_N17
\inst|inst31|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst30|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst31|dffs\(5));

-- Location: LCCOMB_X47_Y16_N4
\inst|inst32|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst32|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst35|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst31|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst35|dffs\(5),
	datad => \inst|inst31|dffs\(5),
	combout => \inst|inst32|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X46_Y16_N30
\inst|inst124|inst16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst16~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(35) & (((\mode~combout\(0)) # (\mode~combout\(1))) # (!\enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(35),
	combout => \inst|inst124|inst16~combout\);

-- Location: LCFF_X47_Y16_N5
\inst|inst33|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst32|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst33|dffs\(5));

-- Location: LCCOMB_X46_Y16_N26
\inst|inst34|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst34|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst37|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst33|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst33|dffs\(5),
	datad => \inst|inst37|dffs\(5),
	combout => \inst|inst34|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X46_Y16_N8
\inst|inst124|inst17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst17~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(34) & (((\mode~combout\(0)) # (\mode~combout\(1))) # (!\enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(34),
	combout => \inst|inst124|inst17~combout\);

-- Location: LCFF_X46_Y16_N27
\inst|inst35|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst34|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst35|dffs\(5));

-- Location: LCCOMB_X46_Y16_N28
\inst|inst36|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst36|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst39|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst35|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst35|dffs\(5),
	combout => \inst|inst36|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X46_Y16_N14
\inst|inst124|inst18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst18~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(33) & (((\mode~combout\(0)) # (\mode~combout\(1))) # (!\enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(33),
	combout => \inst|inst124|inst18~combout\);

-- Location: LCFF_X46_Y16_N29
\inst|inst37|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst36|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst37|dffs\(5));

-- Location: LCCOMB_X42_Y16_N18
\inst|inst38|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst38|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst41|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst37|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst37|dffs\(5),
	combout => \inst|inst38|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X42_Y16_N22
\inst|inst124|inst19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst19~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(32) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(32),
	datad => \mode~combout\(0),
	combout => \inst|inst124|inst19~combout\);

-- Location: LCFF_X42_Y16_N19
\inst|inst39|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst38|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst39|dffs\(5));

-- Location: LCCOMB_X42_Y16_N20
\inst|inst40|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst40|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst42|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst39|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst42|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst39|dffs\(5),
	combout => \inst|inst40|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X42_Y16_N0
\inst|inst124|inst20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst20~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(31) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(31),
	combout => \inst|inst124|inst20~combout\);

-- Location: LCFF_X42_Y16_N21
\inst|inst41|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst40|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst41|dffs\(5));

-- Location: LCCOMB_X39_Y16_N2
\inst|inst43|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst43|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst45|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst41|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst45|dffs\(5),
	datad => \inst|inst41|dffs\(5),
	combout => \inst|inst43|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X40_Y16_N14
\inst|inst124|inst21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst21~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(30) & (((\mode~combout\(1)) # (\mode~combout\(0))) # (!\enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(30),
	combout => \inst|inst124|inst21~combout\);

-- Location: LCFF_X39_Y16_N3
\inst|inst42|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst43|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst42|dffs\(5));

-- Location: LCCOMB_X40_Y17_N14
\inst|inst125|LPM_MUX_component|auto_generated|_~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~19_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst42|dffs\(5)))) # (!\addr~combout\(0) & (\inst|inst41|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(5),
	datab => \inst|inst42|dffs\(5),
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~19_combout\);

-- Location: LCCOMB_X40_Y17_N8
\inst|inst125|LPM_MUX_component|auto_generated|_~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~20_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~19_combout\ & ((\inst|inst47|dffs\(5)) # ((!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~19_combout\ & 
-- (((\addr~combout\(1) & \inst|inst45|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst47|dffs\(5),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~19_combout\,
	datac => \addr~combout\(1),
	datad => \inst|inst45|dffs\(5),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~20_combout\);

-- Location: LCCOMB_X39_Y17_N0
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~9_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~20_combout\))) # (!\addr~combout\(2) & 
-- (\inst|inst125|LPM_MUX_component|auto_generated|_~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~22_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~20_combout\,
	datac => \addr~combout\(2),
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~9_combout\);

-- Location: LCCOMB_X39_Y17_N24
\inst|inst50|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst50|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst53|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst49|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst49|dffs\(5),
	datab => \inst|inst53|dffs\(5),
	datad => \inst|inst107~combout\,
	combout => \inst|inst50|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X40_Y17_N16
\inst|inst124|inst25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst25~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(26) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(26),
	combout => \inst|inst124|inst25~combout\);

-- Location: LCFF_X39_Y17_N25
\inst|inst51|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst50|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst51|dffs\(5));

-- Location: LCCOMB_X40_Y17_N12
\inst|inst52|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst52|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst54|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst51|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst54|dffs\(5),
	datad => \inst|inst51|dffs\(5),
	combout => \inst|inst52|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X40_Y17_N6
\inst|inst124|inst26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst26~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(25) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(25),
	combout => \inst|inst124|inst26~combout\);

-- Location: LCFF_X40_Y17_N13
\inst|inst53|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst52|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst53|dffs\(5));

-- Location: LCCOMB_X39_Y17_N18
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~14_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\inst|inst53|dffs\(5))) # (!\addr~combout\(1) & ((\inst|inst49|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst53|dffs\(5),
	datac => \addr~combout\(1),
	datad => \inst|inst49|dffs\(5),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~14_combout\);

-- Location: LCCOMB_X38_Y16_N14
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~11_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\inst|inst61|dffs\(5)))) # (!\addr~combout\(1) & (\inst|inst57|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst57|dffs\(5),
	datac => \inst|inst61|dffs\(5),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~11_combout\);

-- Location: LCCOMB_X38_Y16_N20
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~12_combout\ = (\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~10_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~10_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~11_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~12_combout\);

-- Location: LCCOMB_X38_Y17_N4
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~15_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~12_combout\) # ((!\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~13_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~13_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~14_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~12_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~15_combout\);

-- Location: LCCOMB_X39_Y17_N20
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~16_combout\ = (\addr~combout\(4) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~9_combout\) # ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~15_combout\ & 
-- \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(4),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~9_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~15_combout\,
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~16_combout\);

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[5]~I\ : cycloneii_io
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
	padio => ww_data(5),
	combout => \data~combout\(5));

-- Location: LCCOMB_X40_Y20_N26
\inst|inst1|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst2|dffs\(5))) # (!\inst|inst107~combout\ & ((\data~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \data~combout\(5),
	combout => \inst|inst1|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X40_Y20_N10
\inst|inst124|inst\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(51) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(51),
	combout => \inst|inst124|inst~combout\);

-- Location: LCFF_X40_Y20_N27
\inst|inst|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst1|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|dffs\(5));

-- Location: LCCOMB_X40_Y20_N12
\inst|inst3|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst5|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(5),
	datab => \inst|inst|dffs\(5),
	datad => \inst|inst107~combout\,
	combout => \inst|inst3|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X40_Y20_N4
\inst|inst124|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst1~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(50) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(50),
	combout => \inst|inst124|inst1~combout\);

-- Location: LCFF_X40_Y20_N13
\inst|inst2|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst3|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst2|dffs\(5));

-- Location: LCCOMB_X39_Y19_N2
\inst|inst125|LPM_MUX_component|auto_generated|_~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~14_combout\ = (\addr~combout\(0) & (((\inst|inst2|dffs\(5)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\inst|inst|dffs\(5) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|dffs\(5),
	datab => \inst|inst2|dffs\(5),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~14_combout\);

-- Location: LCCOMB_X39_Y19_N12
\inst|inst4|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst4|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst7|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst2|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|dffs\(5),
	datab => \inst|inst2|dffs\(5),
	datad => \inst|inst107~combout\,
	combout => \inst|inst4|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X40_Y19_N14
\inst|inst124|inst2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst2~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(49) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(49),
	combout => \inst|inst124|inst2~combout\);

-- Location: LCFF_X39_Y19_N13
\inst|inst5|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst4|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst5|dffs\(5));

-- Location: LCCOMB_X43_Y16_N26
\inst|inst6|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst9|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst5|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst5|dffs\(5),
	combout => \inst|inst6|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X42_Y16_N30
\inst|inst124|inst3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst3~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(48) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(48),
	combout => \inst|inst124|inst3~combout\);

-- Location: LCFF_X43_Y16_N27
\inst|inst7|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst6|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst7|dffs\(5));

-- Location: LCCOMB_X39_Y19_N0
\inst|inst125|LPM_MUX_component|auto_generated|_~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~15_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~14_combout\ & (((\inst|inst7|dffs\(5)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~14_combout\ & 
-- (\inst|inst5|dffs\(5) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(5),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~14_combout\,
	datac => \inst|inst7|dffs\(5),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~15_combout\);

-- Location: LCCOMB_X44_Y16_N2
\inst|inst20|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst20|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst23|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst19|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|dffs\(5),
	datab => \inst|inst19|dffs\(5),
	datad => \inst|inst107~combout\,
	combout => \inst|inst20|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X44_Y16_N14
\inst|inst124|inst10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst10~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(41) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(41),
	combout => \inst|inst124|inst10~combout\);

-- Location: LCFF_X44_Y16_N3
\inst|inst21|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst20|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst21|dffs\(5));

-- Location: LCCOMB_X42_Y17_N2
\inst|inst18|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst18|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst21|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst17|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst17|dffs\(5),
	datad => \inst|inst21|dffs\(5),
	combout => \inst|inst18|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X42_Y17_N30
\inst|inst124|inst9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst9~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(42) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(42),
	combout => \inst|inst124|inst9~combout\);

-- Location: LCFF_X42_Y17_N3
\inst|inst19|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst18|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst19|dffs\(5));

-- Location: LCCOMB_X42_Y19_N26
\inst|inst16|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst16|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst19|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst14|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst19|dffs\(5),
	datad => \inst|inst14|dffs\(5),
	combout => \inst|inst16|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X42_Y19_N30
\inst|inst124|inst8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst8~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(43) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(43),
	combout => \inst|inst124|inst8~combout\);

-- Location: LCFF_X42_Y19_N27
\inst|inst17|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst16|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst17|dffs\(5));

-- Location: LCCOMB_X42_Y19_N0
\inst|inst15|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst15|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & ((\inst|inst17|dffs\(5)))) # (!\inst|inst107~combout\ & (\inst|inst13|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(5),
	datab => \inst|inst17|dffs\(5),
	datad => \inst|inst107~combout\,
	combout => \inst|inst15|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X42_Y18_N0
\inst|inst124|inst7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst7~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(44) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(44),
	combout => \inst|inst124|inst7~combout\);

-- Location: LCFF_X42_Y19_N1
\inst|inst14|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst15|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst14|dffs\(5));

-- Location: LCCOMB_X43_Y16_N20
\inst|inst8|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst8|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst11|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst7|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst11|dffs\(5),
	datad => \inst|inst7|dffs\(5),
	combout => \inst|inst8|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X42_Y16_N4
\inst|inst124|inst4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst4~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(47) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(47),
	combout => \inst|inst124|inst4~combout\);

-- Location: LCFF_X43_Y16_N21
\inst|inst9|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst8|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst9|dffs\(5));

-- Location: LCCOMB_X42_Y20_N18
\inst|inst10|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst10|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst107~combout\ & (\inst|inst13|dffs\(5))) # (!\inst|inst107~combout\ & ((\inst|inst9|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(5),
	datab => \inst|inst107~combout\,
	datad => \inst|inst9|dffs\(5),
	combout => \inst|inst10|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X42_Y20_N26
\inst|inst124|inst5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst5~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(46) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(46),
	combout => \inst|inst124|inst5~combout\);

-- Location: LCFF_X42_Y20_N19
\inst|inst11|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst10|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst11|dffs\(5));

-- Location: LCCOMB_X42_Y20_N4
\inst|inst125|LPM_MUX_component|auto_generated|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~12_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst11|dffs\(5))) # (!\addr~combout\(0) & ((\inst|inst9|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \inst|inst11|dffs\(5),
	datac => \addr~combout\(0),
	datad => \inst|inst9|dffs\(5),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~12_combout\);

-- Location: LCCOMB_X42_Y20_N30
\inst|inst125|LPM_MUX_component|auto_generated|_~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~13_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~12_combout\ & (((\inst|inst14|dffs\(5)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~12_combout\ & 
-- (\inst|inst13|dffs\(5) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(5),
	datab => \inst|inst14|dffs\(5),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~12_combout\,
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~13_combout\);

-- Location: LCCOMB_X39_Y20_N28
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~1_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~13_combout\))) # (!\addr~combout\(2) & 
-- (\inst|inst125|LPM_MUX_component|auto_generated|_~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~15_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~13_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~1_combout\);

-- Location: LCCOMB_X39_Y15_N12
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ = (!\addr~combout\(5) & !\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(5),
	datad => \addr~combout\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X39_Y20_N2
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~8_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~1_combout\) # 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~7_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~1_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~0_combout\,
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~8_combout\);

-- Location: LCCOMB_X39_Y20_N0
\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~17_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~8_combout\) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~36_combout\ & 
-- (\inst|inst125|LPM_MUX_component|auto_generated|_~152_combout\)) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~36_combout\ & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~152_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~36_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~16_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~8_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~17_combout\);

-- Location: LCCOMB_X42_Y15_N4
\inst|inst100|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst100|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst103|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst99|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst103|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst99|dffs\(4),
	combout => \inst|inst100|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X42_Y15_N5
\inst|inst101|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst100|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst50~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst101|dffs\(4));

-- Location: LCCOMB_X43_Y18_N2
\inst|inst88|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst88|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & ((\inst|inst91|dffs\(4)))) # (!\inst|inst107~combout\ & (\inst|inst87|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst87|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst91|dffs\(4),
	combout => \inst|inst88|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X42_Y18_N30
\inst|inst124|inst44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst44~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(7) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(7),
	combout => \inst|inst124|inst44~combout\);

-- Location: LCFF_X43_Y18_N3
\inst|inst89|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst88|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst44~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst89|dffs\(4));

-- Location: LCCOMB_X44_Y18_N6
\inst|inst90|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst90|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst93|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst89|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst93|dffs\(4),
	datad => \inst|inst89|dffs\(4),
	combout => \inst|inst90|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X44_Y18_N22
\inst|inst124|inst45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst45~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(6) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(6),
	combout => \inst|inst124|inst45~combout\);

-- Location: LCFF_X44_Y18_N7
\inst|inst91|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst90|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst45~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst91|dffs\(4));

-- Location: LCCOMB_X43_Y18_N4
\inst|inst92|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst92|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst95|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst91|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst95|dffs\(4),
	datad => \inst|inst91|dffs\(4),
	combout => \inst|inst92|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X42_Y18_N14
\inst|inst124|inst46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst46~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(5) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(5),
	combout => \inst|inst124|inst46~combout\);

-- Location: LCFF_X43_Y18_N5
\inst|inst93|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst92|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst46~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst93|dffs\(4));

-- Location: LCCOMB_X42_Y18_N6
\inst|inst94|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst94|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst96|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst93|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst96|dffs\(4),
	datab => \inst|inst93|dffs\(4),
	datad => \inst|inst107~combout\,
	combout => \inst|inst94|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X42_Y18_N20
\inst|inst124|inst47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst47~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(4) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(4),
	datad => \mode~combout\(1),
	combout => \inst|inst124|inst47~combout\);

-- Location: LCFF_X42_Y18_N7
\inst|inst95|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst94|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst47~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst95|dffs\(4));

-- Location: LCCOMB_X42_Y15_N30
\inst|inst97|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst97|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst99|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst95|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst95|dffs\(4),
	combout => \inst|inst97|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X42_Y15_N10
\inst|inst124|inst48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst48~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(3) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(3),
	datad => \mode~combout\(0),
	combout => \inst|inst124|inst48~combout\);

-- Location: LCFF_X42_Y15_N31
\inst|inst96|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst97|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst48~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst96|dffs\(4));

-- Location: LCCOMB_X40_Y15_N12
\inst|inst98|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst98|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst101|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst96|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst101|dffs\(4),
	datad => \inst|inst96|dffs\(4),
	combout => \inst|inst98|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X40_Y15_N13
\inst|inst99|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst98|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst49~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst99|dffs\(4));

-- Location: LCCOMB_X39_Y15_N22
\inst|inst125|LPM_MUX_component|auto_generated|_~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~41_combout\ = (\addr~combout\(0) & (((\inst|inst99|dffs\(4)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\inst|inst96|dffs\(4) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst96|dffs\(4),
	datab => \inst|inst99|dffs\(4),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~41_combout\);

-- Location: LCCOMB_X39_Y15_N28
\inst|inst125|LPM_MUX_component|auto_generated|_~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~42_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~41_combout\ & ((\inst|inst103|dffs\(4)) # ((!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~41_combout\ & 
-- (((\inst|inst101|dffs\(4) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst103|dffs\(4),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~41_combout\,
	datac => \inst|inst101|dffs\(4),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~42_combout\);

-- Location: LCCOMB_X43_Y15_N2
\inst|inst125|LPM_MUX_component|auto_generated|_~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~153_combout\ = ((!\addr~combout\(2) & (\inst|inst125|LPM_MUX_component|auto_generated|_~42_combout\ & !\addr~combout\(3)))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(4),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~42_combout\,
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~153_combout\);

-- Location: LCCOMB_X45_Y17_N22
\inst|inst26|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst26|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst28|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst25|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst28|dffs\(4),
	datab => \inst|inst25|dffs\(4),
	datad => \inst|inst107~combout\,
	combout => \inst|inst26|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X45_Y17_N6
\inst|inst124|inst13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst13~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(38) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(38),
	combout => \inst|inst124|inst13~combout\);

-- Location: LCFF_X45_Y17_N23
\inst|inst27|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst26|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst27|dffs\(4));

-- Location: LCCOMB_X45_Y16_N12
\inst|inst24|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst24|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & ((\inst|inst27|dffs\(4)))) # (!\inst|inst107~combout\ & (\inst|inst23|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst23|dffs\(4),
	datad => \inst|inst27|dffs\(4),
	combout => \inst|inst24|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X45_Y16_N22
\inst|inst124|inst12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst12~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(39) & (((\mode~combout\(1)) # (\mode~combout\(0))) # (!\enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(39),
	combout => \inst|inst124|inst12~combout\);

-- Location: LCFF_X45_Y16_N13
\inst|inst25|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst24|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst25|dffs\(4));

-- Location: LCCOMB_X44_Y16_N4
\inst|inst22|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst22|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & ((\inst|inst25|dffs\(4)))) # (!\inst|inst107~combout\ & (\inst|inst21|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(4),
	datab => \inst|inst25|dffs\(4),
	datad => \inst|inst107~combout\,
	combout => \inst|inst22|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X44_Y16_N20
\inst|inst124|inst11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst11~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(40) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(40),
	combout => \inst|inst124|inst11~combout\);

-- Location: LCFF_X44_Y16_N5
\inst|inst23|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst22|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst23|dffs\(4));

-- Location: LCCOMB_X44_Y16_N0
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~23_combout\ = (!\addr~combout\(2) & ((\addr~combout\(0) & ((\inst|inst23|dffs\(4)))) # (!\addr~combout\(0) & (\inst|inst21|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(4),
	datab => \inst|inst23|dffs\(4),
	datac => \addr~combout\(0),
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~23_combout\);

-- Location: LCCOMB_X45_Y16_N30
\inst|inst29|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst29|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst31|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst27|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst31|dffs\(4),
	datad => \inst|inst27|dffs\(4),
	combout => \inst|inst29|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X45_Y16_N24
\inst|inst124|inst14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst14~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(37) & (((\mode~combout\(1)) # (\mode~combout\(0))) # (!\enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(37),
	combout => \inst|inst124|inst14~combout\);

-- Location: LCFF_X45_Y16_N31
\inst|inst28|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst29|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst28|dffs\(4));

-- Location: LCCOMB_X42_Y17_N18
\inst|inst30|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst30|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst33|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst28|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33|dffs\(4),
	datab => \inst|inst28|dffs\(4),
	datad => \inst|inst107~combout\,
	combout => \inst|inst30|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X42_Y17_N19
\inst|inst31|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst30|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst31|dffs\(4));

-- Location: LCCOMB_X45_Y17_N30
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~22_combout\ = (\addr~combout\(2) & ((\addr~combout\(0) & ((\inst|inst31|dffs\(4)))) # (!\addr~combout\(0) & (\inst|inst28|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst28|dffs\(4),
	datab => \addr~combout\(0),
	datac => \addr~combout\(2),
	datad => \inst|inst31|dffs\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~22_combout\);

-- Location: LCCOMB_X44_Y17_N8
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~24_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~21_combout\) # ((\addr~combout\(1) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~23_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~21_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~23_combout\,
	datac => \addr~combout\(1),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~22_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~24_combout\);

-- Location: LCCOMB_X44_Y17_N26
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~25_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~18_combout\) # ((\addr~combout\(3) & 
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~18_combout\,
	datab => \addr~combout\(3),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~24_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~0_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~25_combout\);

-- Location: LCCOMB_X42_Y16_N26
\inst|inst38|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst38|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst41|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst37|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst37|dffs\(4),
	combout => \inst|inst38|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X42_Y16_N27
\inst|inst39|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst38|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst39|dffs\(4));

-- Location: LCCOMB_X46_Y16_N20
\inst|inst36|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst36|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst39|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst35|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst39|dffs\(4),
	datad => \inst|inst35|dffs\(4),
	combout => \inst|inst36|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X46_Y16_N21
\inst|inst37|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst36|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst37|dffs\(4));

-- Location: LCCOMB_X46_Y16_N2
\inst|inst34|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst34|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst37|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst33|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst37|dffs\(4),
	datad => \inst|inst33|dffs\(4),
	combout => \inst|inst34|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X46_Y16_N3
\inst|inst35|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst34|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst35|dffs\(4));

-- Location: LCCOMB_X47_Y16_N30
\inst|inst32|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst32|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & ((\inst|inst35|dffs\(4)))) # (!\inst|inst107~combout\ & (\inst|inst31|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst31|dffs\(4),
	datad => \inst|inst35|dffs\(4),
	combout => \inst|inst32|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X47_Y16_N31
\inst|inst33|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst32|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst33|dffs\(4));

-- Location: LCCOMB_X47_Y16_N0
\inst|inst125|LPM_MUX_component|auto_generated|_~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~45_combout\ = (\addr~combout\(0) & ((\inst|inst35|dffs\(4)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\inst|inst33|dffs\(4) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst35|dffs\(4),
	datab => \inst|inst33|dffs\(4),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~45_combout\);

-- Location: LCCOMB_X43_Y16_N30
\inst|inst125|LPM_MUX_component|auto_generated|_~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~46_combout\ = (\addr~combout\(1) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~45_combout\ & ((\inst|inst39|dffs\(4)))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~45_combout\ & 
-- (\inst|inst37|dffs\(4))))) # (!\addr~combout\(1) & (\inst|inst125|LPM_MUX_component|auto_generated|_~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~45_combout\,
	datac => \inst|inst37|dffs\(4),
	datad => \inst|inst39|dffs\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~46_combout\);

-- Location: LCCOMB_X43_Y17_N22
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~26_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & (\inst|inst125|LPM_MUX_component|auto_generated|_~44_combout\)) # (!\addr~combout\(2) & 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|_~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~44_combout\,
	datab => \addr~combout\(2),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~46_combout\,
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~26_combout\);

-- Location: LCCOMB_X36_Y18_N14
\inst|inst66|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst66|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst68|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst65|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst68|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst65|dffs\(4),
	combout => \inst|inst66|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X36_Y18_N15
\inst|inst67|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst66|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst33~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst67|dffs\(4));

-- Location: LCCOMB_X37_Y18_N14
\inst|inst64|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst64|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & ((\inst|inst67|dffs\(4)))) # (!\inst|inst107~combout\ & (\inst|inst63|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst63|dffs\(4),
	datad => \inst|inst67|dffs\(4),
	combout => \inst|inst64|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X37_Y18_N15
\inst|inst65|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst64|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst65|dffs\(4));

-- Location: LCCOMB_X37_Y16_N10
\inst|inst62|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst62|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst65|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst61|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst65|dffs\(4),
	datad => \inst|inst61|dffs\(4),
	combout => \inst|inst62|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X37_Y16_N11
\inst|inst63|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst62|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst63|dffs\(4));

-- Location: LCCOMB_X36_Y16_N30
\inst|inst60|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst60|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst63|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst59|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst63|dffs\(4),
	datad => \inst|inst59|dffs\(4),
	combout => \inst|inst60|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X36_Y16_N31
\inst|inst61|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst60|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst61|dffs\(4));

-- Location: LCCOMB_X38_Y16_N8
\inst|inst56|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst56|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & ((\inst|inst59|dffs\(4)))) # (!\inst|inst107~combout\ & (\inst|inst54|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst54|dffs\(4),
	datab => \inst|inst59|dffs\(4),
	datad => \inst|inst107~combout\,
	combout => \inst|inst56|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X38_Y16_N9
\inst|inst57|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst56|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst28~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst57|dffs\(4));

-- Location: LCCOMB_X36_Y16_N16
\inst|inst58|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst58|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst61|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst57|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst61|dffs\(4),
	datad => \inst|inst57|dffs\(4),
	combout => \inst|inst58|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X36_Y16_N17
\inst|inst59|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst58|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst59|dffs\(4));

-- Location: LCCOMB_X38_Y16_N2
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~27_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst59|dffs\(4))) # (!\addr~combout\(0) & ((\inst|inst57|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst59|dffs\(4),
	datac => \inst|inst57|dffs\(4),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~27_combout\);

-- Location: LCCOMB_X36_Y16_N0
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~28_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst63|dffs\(4)))) # (!\addr~combout\(0) & (\inst|inst61|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst61|dffs\(4),
	datab => \inst|inst63|dffs\(4),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~28_combout\);

-- Location: LCCOMB_X38_Y17_N26
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~29_combout\ = (\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~27_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~27_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~28_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~29_combout\);

-- Location: LCCOMB_X39_Y16_N6
\inst|inst43|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst43|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & ((\inst|inst45|dffs\(4)))) # (!\inst|inst107~combout\ & (\inst|inst41|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst45|dffs\(4),
	combout => \inst|inst43|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X39_Y16_N7
\inst|inst42|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst43|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst42|dffs\(4));

-- Location: LCCOMB_X39_Y16_N28
\inst|inst44|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst44|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst47|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst42|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst47|dffs\(4),
	datad => \inst|inst42|dffs\(4),
	combout => \inst|inst44|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X39_Y16_N29
\inst|inst45|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst44|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst45|dffs\(4));

-- Location: LCCOMB_X40_Y16_N18
\inst|inst46|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst46|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst49|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst45|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst49|dffs\(4),
	datab => \inst|inst45|dffs\(4),
	datad => \inst|inst107~combout\,
	combout => \inst|inst46|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X40_Y16_N19
\inst|inst47|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst46|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst47|dffs\(4));

-- Location: LCCOMB_X40_Y16_N0
\inst|inst48|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst48|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst51|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst47|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst51|dffs\(4),
	datab => \inst|inst47|dffs\(4),
	datad => \inst|inst107~combout\,
	combout => \inst|inst48|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X40_Y16_N1
\inst|inst49|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst48|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst24~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst49|dffs\(4));

-- Location: LCCOMB_X37_Y16_N12
\inst|inst55|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst55|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst57|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst53|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst57|dffs\(4),
	datad => \inst|inst53|dffs\(4),
	combout => \inst|inst55|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X37_Y16_N13
\inst|inst54|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst55|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst27~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst54|dffs\(4));

-- Location: LCCOMB_X40_Y17_N22
\inst|inst52|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst52|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst54|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst51|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst54|dffs\(4),
	datad => \inst|inst51|dffs\(4),
	combout => \inst|inst52|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X40_Y17_N23
\inst|inst53|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst52|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst53|dffs\(4));

-- Location: LCCOMB_X39_Y17_N8
\inst|inst50|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst50|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & ((\inst|inst53|dffs\(4)))) # (!\inst|inst107~combout\ & (\inst|inst49|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst49|dffs\(4),
	datad => \inst|inst53|dffs\(4),
	combout => \inst|inst50|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X39_Y17_N9
\inst|inst51|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst50|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst51|dffs\(4));

-- Location: LCCOMB_X39_Y17_N26
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~30_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst51|dffs\(4))) # (!\addr~combout\(0) & ((\inst|inst49|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst51|dffs\(4),
	datac => \addr~combout\(1),
	datad => \inst|inst49|dffs\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~30_combout\);

-- Location: LCCOMB_X38_Y17_N12
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~32_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~29_combout\) # ((!\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~31_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~31_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~29_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~30_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~32_combout\);

-- Location: LCCOMB_X44_Y17_N24
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~33_combout\ = (\addr~combout\(4) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~26_combout\) # ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~32_combout\ & 
-- \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(4),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~26_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~32_combout\,
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~33_combout\);

-- Location: LCCOMB_X38_Y19_N12
\inst|inst125|LPM_MUX_component|auto_generated|_~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~16_combout\ = (!\addr~combout\(3) & !\addr~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~16_combout\);

-- Location: LCCOMB_X38_Y17_N24
\inst|inst125|LPM_MUX_component|auto_generated|_~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~52_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~51_combout\ & \inst|inst125|LPM_MUX_component|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~51_combout\,
	datab => \addr~combout\(4),
	datac => \addr~combout\(5),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~16_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~52_combout\);

-- Location: LCCOMB_X37_Y18_N16
\inst|inst69|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst69|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst71|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst67|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst71|dffs\(4),
	datad => \inst|inst67|dffs\(4),
	combout => \inst|inst69|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X37_Y18_N4
\inst|inst124|inst34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst34~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(17) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \enable~combout\,
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(17),
	combout => \inst|inst124|inst34~combout\);

-- Location: LCFF_X37_Y18_N17
\inst|inst68|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst69|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst68|dffs\(4));

-- Location: LCCOMB_X38_Y18_N6
\inst|inst70|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst70|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & ((\inst|inst73|dffs\(4)))) # (!\inst|inst107~combout\ & (\inst|inst68|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst68|dffs\(4),
	datad => \inst|inst73|dffs\(4),
	combout => \inst|inst70|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X38_Y18_N7
\inst|inst71|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst70|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst71|dffs\(4));

-- Location: LCCOMB_X40_Y18_N24
\inst|inst72|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst72|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst75|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst71|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst75|dffs\(4),
	datab => \inst|inst71|dffs\(4),
	datad => \inst|inst107~combout\,
	combout => \inst|inst72|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X40_Y18_N25
\inst|inst73|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst72|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst36~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst73|dffs\(4));

-- Location: LCCOMB_X38_Y18_N24
\inst|inst74|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst74|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst77|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst73|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst73|dffs\(4),
	combout => \inst|inst74|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X38_Y18_N25
\inst|inst75|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst74|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst75|dffs\(4));

-- Location: LCCOMB_X39_Y18_N14
\inst|inst76|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst76|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & ((\inst|inst79|dffs\(4)))) # (!\inst|inst107~combout\ & (\inst|inst75|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst75|dffs\(4),
	datad => \inst|inst79|dffs\(4),
	combout => \inst|inst76|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X40_Y18_N14
\inst|inst124|inst38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst38~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(13) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \enable~combout\,
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(13),
	combout => \inst|inst124|inst38~combout\);

-- Location: LCFF_X39_Y18_N15
\inst|inst77|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst76|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst38~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst77|dffs\(4));

-- Location: LCCOMB_X40_Y18_N18
\inst|inst78|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst78|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst81|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst77|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst81|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst77|dffs\(4),
	combout => \inst|inst78|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X40_Y18_N26
\inst|inst124|inst39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst39~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(12) & ((\mode~combout\(1)) # ((\mode~combout\(0)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \enable~combout\,
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst|inst124|inst39~combout\);

-- Location: LCFF_X40_Y18_N19
\inst|inst79|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst78|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst39~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst79|dffs\(4));

-- Location: LCCOMB_X46_Y18_N18
\inst|inst80|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst80|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst82|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst79|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst82|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst79|dffs\(4),
	combout => \inst|inst80|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X46_Y18_N19
\inst|inst81|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst80|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst40~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst81|dffs\(4));

-- Location: LCCOMB_X45_Y18_N12
\inst|inst83|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst83|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & ((\inst|inst85|dffs\(4)))) # (!\inst|inst107~combout\ & (\inst|inst81|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst81|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst85|dffs\(4),
	combout => \inst|inst83|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X45_Y18_N13
\inst|inst82|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst83|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst41~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst82|dffs\(4));

-- Location: LCCOMB_X45_Y18_N22
\inst|inst84|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst84|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst107~combout\ & (\inst|inst87|dffs\(4))) # (!\inst|inst107~combout\ & ((\inst|inst82|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst87|dffs\(4),
	datab => \inst|inst107~combout\,
	datad => \inst|inst82|dffs\(4),
	combout => \inst|inst84|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X45_Y18_N23
\inst|inst85|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst84|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst85|dffs\(4));

-- Location: LCCOMB_X46_Y17_N0
\inst|inst125|LPM_MUX_component|auto_generated|_~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~57_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\inst|inst85|dffs\(4)))) # (!\addr~combout\(1) & (\inst|inst81|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst81|dffs\(4),
	datac => \inst|inst85|dffs\(4),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~57_combout\);

-- Location: LCCOMB_X43_Y18_N16
\inst|inst125|LPM_MUX_component|auto_generated|_~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~53_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\inst|inst95|dffs\(4))) # (!\addr~combout\(1) & ((\inst|inst91|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \inst|inst95|dffs\(4),
	datad => \inst|inst91|dffs\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~53_combout\);

-- Location: LCCOMB_X44_Y18_N10
\inst|inst125|LPM_MUX_component|auto_generated|_~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~55_combout\ = (\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~54_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|_~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~54_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~53_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~55_combout\);

-- Location: LCCOMB_X46_Y17_N10
\inst|inst125|LPM_MUX_component|auto_generated|_~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~58_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~55_combout\) # ((!\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~56_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|_~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~56_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~57_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~55_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~58_combout\);

-- Location: LCCOMB_X38_Y17_N2
\inst|inst125|LPM_MUX_component|auto_generated|_~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~59_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~49_combout\) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~52_combout\) # 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|_~35_combout\ & \inst|inst125|LPM_MUX_component|auto_generated|_~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~49_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~35_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~52_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~58_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~59_combout\);

-- Location: LCCOMB_X44_Y17_N18
\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~34_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~25_combout\) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~59_combout\ & 
-- (\inst|inst125|LPM_MUX_component|auto_generated|_~153_combout\)) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~59_combout\ & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~153_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~25_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~33_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~59_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~34_combout\);

-- Location: LCCOMB_X42_Y16_N14
\inst|inst38|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst38|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst41|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst37|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst37|dffs\(3),
	datab => \inst|inst107~combout\,
	datad => \inst|inst41|dffs\(3),
	combout => \inst|inst38|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X42_Y16_N15
\inst|inst39|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst38|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst39|dffs\(3));

-- Location: LCCOMB_X42_Y16_N28
\inst|inst40|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst40|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst42|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst39|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst42|dffs\(3),
	datab => \inst|inst107~combout\,
	datad => \inst|inst39|dffs\(3),
	combout => \inst|inst40|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X42_Y16_N29
\inst|inst41|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst40|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst41|dffs\(3));

-- Location: LCCOMB_X37_Y18_N0
\inst|inst69|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst69|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst71|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst67|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71|dffs\(3),
	datab => \inst|inst67|dffs\(3),
	datad => \inst|inst107~combout\,
	combout => \inst|inst69|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X37_Y18_N1
\inst|inst68|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst69|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst68|dffs\(3));

-- Location: LCCOMB_X36_Y18_N24
\inst|inst66|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst66|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst68|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst65|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst68|dffs\(3),
	datad => \inst|inst65|dffs\(3),
	combout => \inst|inst66|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X36_Y18_N25
\inst|inst67|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst66|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst33~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst67|dffs\(3));

-- Location: LCCOMB_X37_Y18_N18
\inst|inst64|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst64|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst67|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst63|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst67|dffs\(3),
	datad => \inst|inst63|dffs\(3),
	combout => \inst|inst64|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X37_Y18_N19
\inst|inst65|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst64|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst65|dffs\(3));

-- Location: LCCOMB_X37_Y16_N30
\inst|inst62|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst62|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst65|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst61|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst61|dffs\(3),
	datad => \inst|inst65|dffs\(3),
	combout => \inst|inst62|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X37_Y16_N31
\inst|inst63|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst62|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst63|dffs\(3));

-- Location: LCCOMB_X36_Y16_N6
\inst|inst60|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst60|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst63|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst59|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst63|dffs\(3),
	datad => \inst|inst59|dffs\(3),
	combout => \inst|inst60|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X36_Y16_N7
\inst|inst61|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst60|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst61|dffs\(3));

-- Location: LCCOMB_X36_Y16_N12
\inst|inst58|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst58|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst61|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst57|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst57|dffs\(3),
	datad => \inst|inst61|dffs\(3),
	combout => \inst|inst58|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X36_Y16_N13
\inst|inst59|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst58|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst59|dffs\(3));

-- Location: LCCOMB_X38_Y16_N26
\inst|inst56|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst56|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst59|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst54|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst54|dffs\(3),
	datab => \inst|inst107~combout\,
	datad => \inst|inst59|dffs\(3),
	combout => \inst|inst56|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X38_Y16_N27
\inst|inst57|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst56|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst28~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst57|dffs\(3));

-- Location: LCCOMB_X37_Y16_N20
\inst|inst55|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst55|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst57|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst53|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst57|dffs\(3),
	datad => \inst|inst53|dffs\(3),
	combout => \inst|inst55|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X37_Y16_N21
\inst|inst54|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst55|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst27~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst54|dffs\(3));

-- Location: LCCOMB_X40_Y17_N18
\inst|inst52|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst52|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst54|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst51|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst54|dffs\(3),
	datad => \inst|inst51|dffs\(3),
	combout => \inst|inst52|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X40_Y17_N19
\inst|inst53|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst52|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst53|dffs\(3));

-- Location: LCCOMB_X40_Y17_N28
\inst|inst50|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst50|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst53|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst49|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst49|dffs\(3),
	datad => \inst|inst53|dffs\(3),
	combout => \inst|inst50|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X40_Y17_N29
\inst|inst51|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst50|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst51|dffs\(3));

-- Location: LCCOMB_X40_Y16_N28
\inst|inst48|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst48|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst51|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst47|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst51|dffs\(3),
	datad => \inst|inst47|dffs\(3),
	combout => \inst|inst48|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X40_Y16_N29
\inst|inst49|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst48|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst24~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst49|dffs\(3));

-- Location: LCCOMB_X40_Y16_N26
\inst|inst46|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst46|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst49|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst45|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst45|dffs\(3),
	datad => \inst|inst49|dffs\(3),
	combout => \inst|inst46|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X40_Y16_N27
\inst|inst47|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst46|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst47|dffs\(3));

-- Location: LCCOMB_X39_Y16_N16
\inst|inst44|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst44|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst47|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst42|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst47|dffs\(3),
	datad => \inst|inst42|dffs\(3),
	combout => \inst|inst44|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X39_Y16_N17
\inst|inst45|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst44|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst45|dffs\(3));

-- Location: LCCOMB_X39_Y16_N10
\inst|inst43|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst43|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst45|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst41|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst45|dffs\(3),
	datad => \inst|inst41|dffs\(3),
	combout => \inst|inst43|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X39_Y16_N11
\inst|inst42|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst43|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst42|dffs\(3));

-- Location: LCCOMB_X43_Y16_N6
\inst|inst125|LPM_MUX_component|auto_generated|_~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~66_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst42|dffs\(3)))) # (!\addr~combout\(0) & (\inst|inst41|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \inst|inst41|dffs\(3),
	datad => \inst|inst42|dffs\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~66_combout\);

-- Location: LCCOMB_X39_Y15_N30
\inst|inst125|LPM_MUX_component|auto_generated|_~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~67_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~66_combout\ & ((\inst|inst47|dffs\(3)) # ((!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~66_combout\ & 
-- (((\inst|inst45|dffs\(3) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst47|dffs\(3),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~66_combout\,
	datac => \inst|inst45|dffs\(3),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~67_combout\);

-- Location: LCCOMB_X39_Y15_N20
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~43_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~67_combout\))) # (!\addr~combout\(2) & 
-- (\inst|inst125|LPM_MUX_component|auto_generated|_~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~69_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~67_combout\,
	datac => \addr~combout\(2),
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~43_combout\);

-- Location: LCCOMB_X39_Y15_N6
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~50_combout\ = (\addr~combout\(4) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~43_combout\) # ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~49_combout\ & 
-- \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~49_combout\,
	datab => \addr~combout\(4),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~43_combout\,
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~50_combout\);

-- Location: LCCOMB_X39_Y15_N14
\inst|inst102|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst102|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst101|dffs\(3) & (((\mode~combout\(0)) # (!\enable~combout\)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \inst|inst101|dffs\(3),
	datac => \mode~combout\(0),
	datad => \enable~combout\,
	combout => \inst|inst102|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X40_Y15_N26
\inst|inst103|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst103|dffs[3]~feeder_combout\ = \inst|inst102|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst102|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \inst|inst103|dffs[3]~feeder_combout\);

-- Location: LCFF_X40_Y15_N27
\inst|inst103|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst103|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst51~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst103|dffs\(3));

-- Location: LCCOMB_X42_Y15_N12
\inst|inst100|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst100|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst103|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst99|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(3),
	datab => \inst|inst107~combout\,
	datad => \inst|inst103|dffs\(3),
	combout => \inst|inst100|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X42_Y15_N13
\inst|inst101|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst100|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst50~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst101|dffs\(3));

-- Location: LCCOMB_X40_Y15_N16
\inst|inst98|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst98|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst101|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst96|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst96|dffs\(3),
	datab => \inst|inst107~combout\,
	datad => \inst|inst101|dffs\(3),
	combout => \inst|inst98|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X40_Y15_N17
\inst|inst99|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst98|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst49~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst99|dffs\(3));

-- Location: LCCOMB_X39_Y15_N26
\inst|inst125|LPM_MUX_component|auto_generated|_~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~64_combout\ = (\addr~combout\(0) & (((\inst|inst99|dffs\(3)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\inst|inst96|dffs\(3) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst96|dffs\(3),
	datab => \addr~combout\(0),
	datac => \inst|inst99|dffs\(3),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~64_combout\);

-- Location: LCCOMB_X39_Y15_N24
\inst|inst125|LPM_MUX_component|auto_generated|_~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~65_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~64_combout\ & ((\inst|inst103|dffs\(3)) # ((!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~64_combout\ & 
-- (((\inst|inst101|dffs\(3) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst103|dffs\(3),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~64_combout\,
	datac => \inst|inst101|dffs\(3),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~65_combout\);

-- Location: LCCOMB_X39_Y15_N18
\inst|inst125|LPM_MUX_component|auto_generated|_~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~154_combout\ = ((!\addr~combout\(2) & (\inst|inst125|LPM_MUX_component|auto_generated|_~65_combout\ & !\addr~combout\(3)))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(4),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~65_combout\,
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~154_combout\);

-- Location: LCCOMB_X36_Y18_N8
\inst|inst125|LPM_MUX_component|auto_generated|_~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~73_combout\ = (\addr~combout\(0) & (((\inst|inst67|dffs\(3)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\inst|inst65|dffs\(3) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst65|dffs\(3),
	datac => \inst|inst67|dffs\(3),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~73_combout\);

-- Location: LCCOMB_X36_Y18_N2
\inst|inst125|LPM_MUX_component|auto_generated|_~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~74_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~73_combout\ & ((\inst|inst71|dffs\(3)) # ((!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~73_combout\ & 
-- (((\inst|inst68|dffs\(3) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71|dffs\(3),
	datab => \inst|inst68|dffs\(3),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~73_combout\,
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~74_combout\);

-- Location: LCCOMB_X38_Y19_N18
\inst|inst125|LPM_MUX_component|auto_generated|_~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~75_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~16_combout\ & \inst|inst125|LPM_MUX_component|auto_generated|_~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~16_combout\,
	datab => \addr~combout\(5),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~74_combout\,
	datad => \addr~combout\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~75_combout\);

-- Location: LCCOMB_X38_Y18_N28
\inst|inst74|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst74|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst77|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst73|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(3),
	datab => \inst|inst77|dffs\(3),
	datad => \inst|inst107~combout\,
	combout => \inst|inst74|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X38_Y18_N29
\inst|inst75|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst74|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst75|dffs\(3));

-- Location: LCCOMB_X45_Y18_N28
\inst|inst83|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst83|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst85|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst81|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst85|dffs\(3),
	datab => \inst|inst107~combout\,
	datad => \inst|inst81|dffs\(3),
	combout => \inst|inst83|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X45_Y18_N29
\inst|inst82|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst83|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst41~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst82|dffs\(3));

-- Location: LCCOMB_X46_Y18_N24
\inst|inst80|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst80|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst82|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst79|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst79|dffs\(3),
	datab => \inst|inst107~combout\,
	datad => \inst|inst82|dffs\(3),
	combout => \inst|inst80|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X46_Y18_N25
\inst|inst81|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst80|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst40~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst81|dffs\(3));

-- Location: LCCOMB_X40_Y18_N20
\inst|inst78|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst78|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst81|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst77|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|dffs\(3),
	datab => \inst|inst107~combout\,
	datad => \inst|inst81|dffs\(3),
	combout => \inst|inst78|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X40_Y18_N21
\inst|inst79|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst78|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst39~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst79|dffs\(3));

-- Location: LCCOMB_X39_Y18_N0
\inst|inst76|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst76|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst79|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst75|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst75|dffs\(3),
	datad => \inst|inst79|dffs\(3),
	combout => \inst|inst76|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X39_Y18_N1
\inst|inst77|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst76|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst38~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst77|dffs\(3));

-- Location: LCCOMB_X39_Y18_N8
\inst|inst125|LPM_MUX_component|auto_generated|_~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~71_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~70_combout\ & (((\inst|inst79|dffs\(3)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~70_combout\ & 
-- (\inst|inst77|dffs\(3) & (\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~70_combout\,
	datab => \inst|inst77|dffs\(3),
	datac => \addr~combout\(1),
	datad => \inst|inst79|dffs\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~71_combout\);

-- Location: LCCOMB_X38_Y19_N24
\inst|inst125|LPM_MUX_component|auto_generated|_~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~72_combout\ = (!\addr~combout\(3) & (\addr~combout\(5) & (\inst|inst125|LPM_MUX_component|auto_generated|_~71_combout\ & \addr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(5),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~71_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~72_combout\);

-- Location: LCCOMB_X38_Y19_N0
\inst|inst125|LPM_MUX_component|auto_generated|_~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~82_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~75_combout\) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~72_combout\) # 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|_~81_combout\ & \inst|inst125|LPM_MUX_component|auto_generated|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~81_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~75_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~72_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~35_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~82_combout\);

-- Location: LCCOMB_X43_Y16_N14
\inst|inst6|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst9|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst5|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(3),
	datab => \inst|inst107~combout\,
	datad => \inst|inst9|dffs\(3),
	combout => \inst|inst6|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X43_Y16_N15
\inst|inst7|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst6|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst7|dffs\(3));

-- Location: LCCOMB_X43_Y16_N0
\inst|inst8|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst8|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst11|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst7|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst7|dffs\(3),
	datad => \inst|inst11|dffs\(3),
	combout => \inst|inst8|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X43_Y16_N1
\inst|inst9|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst8|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst9|dffs\(3));

-- Location: LCCOMB_X42_Y20_N14
\inst|inst10|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst10|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst13|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst9|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(3),
	datab => \inst|inst107~combout\,
	datad => \inst|inst9|dffs\(3),
	combout => \inst|inst10|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X42_Y20_N15
\inst|inst11|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst10|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst11|dffs\(3));

-- Location: LCCOMB_X42_Y20_N12
\inst|inst12|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst12|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst14|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst11|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|dffs\(3),
	datab => \inst|inst107~combout\,
	datad => \inst|inst11|dffs\(3),
	combout => \inst|inst12|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X42_Y20_N0
\inst|inst124|inst6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst124|inst6~combout\ = (\inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(45) & ((\mode~combout\(0)) # ((\mode~combout\(1)) # (!\enable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \inst|inst104|lookup_table|srom|rom_block|auto_generated|q_a\(45),
	combout => \inst|inst124|inst6~combout\);

-- Location: LCFF_X42_Y20_N13
\inst|inst13|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst12|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst13|dffs\(3));

-- Location: LCCOMB_X42_Y18_N24
\inst|inst15|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst15|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst17|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst13|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17|dffs\(3),
	datab => \inst|inst13|dffs\(3),
	datad => \inst|inst107~combout\,
	combout => \inst|inst15|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X42_Y18_N25
\inst|inst14|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst15|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst14|dffs\(3));

-- Location: LCCOMB_X42_Y17_N20
\inst|inst18|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst18|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst21|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst17|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(3),
	datab => \inst|inst17|dffs\(3),
	datad => \inst|inst107~combout\,
	combout => \inst|inst18|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X42_Y17_N21
\inst|inst19|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst18|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst19|dffs\(3));

-- Location: LCCOMB_X42_Y19_N28
\inst|inst16|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst16|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst19|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst14|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst14|dffs\(3),
	datad => \inst|inst19|dffs\(3),
	combout => \inst|inst16|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X42_Y19_N29
\inst|inst17|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst16|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst17|dffs\(3));

-- Location: LCCOMB_X43_Y17_N2
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~37_combout\ = (!\addr~combout\(0) & ((\addr~combout\(2) & (\inst|inst25|dffs\(3))) # (!\addr~combout\(2) & ((\inst|inst17|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|dffs\(3),
	datab => \inst|inst17|dffs\(3),
	datac => \addr~combout\(2),
	datad => \addr~combout\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~37_combout\);

-- Location: LCCOMB_X46_Y16_N16
\inst|inst36|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst36|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst39|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst35|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst39|dffs\(3),
	datad => \inst|inst35|dffs\(3),
	combout => \inst|inst36|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X46_Y16_N17
\inst|inst37|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst36|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst37|dffs\(3));

-- Location: LCCOMB_X46_Y16_N10
\inst|inst34|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst34|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst37|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst33|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst37|dffs\(3),
	datad => \inst|inst33|dffs\(3),
	combout => \inst|inst34|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X46_Y16_N11
\inst|inst35|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst34|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst35|dffs\(3));

-- Location: LCCOMB_X47_Y16_N28
\inst|inst32|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst32|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst35|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst31|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst31|dffs\(3),
	datad => \inst|inst35|dffs\(3),
	combout => \inst|inst32|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X47_Y16_N29
\inst|inst33|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst32|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst33|dffs\(3));

-- Location: LCCOMB_X42_Y17_N10
\inst|inst30|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst30|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst33|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst28|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst33|dffs\(3),
	datad => \inst|inst28|dffs\(3),
	combout => \inst|inst30|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X42_Y17_N11
\inst|inst31|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst30|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst31|dffs\(3));

-- Location: LCCOMB_X45_Y16_N6
\inst|inst29|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst29|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst31|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst27|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst27|dffs\(3),
	datad => \inst|inst31|dffs\(3),
	combout => \inst|inst29|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X45_Y16_N7
\inst|inst28|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst29|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst28|dffs\(3));

-- Location: LCCOMB_X45_Y17_N20
\inst|inst26|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst26|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst28|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst25|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|dffs\(3),
	datab => \inst|inst28|dffs\(3),
	datad => \inst|inst107~combout\,
	combout => \inst|inst26|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X45_Y17_N21
\inst|inst27|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst26|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst27|dffs\(3));

-- Location: LCCOMB_X43_Y17_N0
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~36_combout\ = (\addr~combout\(0) & ((\addr~combout\(2) & ((\inst|inst27|dffs\(3)))) # (!\addr~combout\(2) & (\inst|inst19|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19|dffs\(3),
	datab => \inst|inst27|dffs\(3),
	datac => \addr~combout\(2),
	datad => \addr~combout\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~36_combout\);

-- Location: LCCOMB_X43_Y17_N28
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~38_combout\ = (!\addr~combout\(1) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~37_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~37_combout\,
	datac => \addr~combout\(1),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~36_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~38_combout\);

-- Location: LCCOMB_X45_Y16_N8
\inst|inst24|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst24|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & (\inst|inst27|dffs\(3))) # (!\inst|inst107~combout\ & ((\inst|inst23|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst27|dffs\(3),
	datab => \inst|inst107~combout\,
	datad => \inst|inst23|dffs\(3),
	combout => \inst|inst24|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X45_Y16_N9
\inst|inst25|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst24|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst25|dffs\(3));

-- Location: LCCOMB_X44_Y16_N8
\inst|inst22|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst22|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst107~combout\ & ((\inst|inst25|dffs\(3)))) # (!\inst|inst107~combout\ & (\inst|inst21|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(3),
	datab => \inst|inst25|dffs\(3),
	datad => \inst|inst107~combout\,
	combout => \inst|inst22|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X44_Y16_N9
\inst|inst23|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst22|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst23|dffs\(3));

-- Location: LCCOMB_X45_Y16_N28
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~39_combout\ = (\addr~combout\(0) & ((\addr~combout\(2) & (\inst|inst31|dffs\(3))) # (!\addr~combout\(2) & ((\inst|inst23|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst31|dffs\(3),
	datac => \addr~combout\(2),
	datad => \inst|inst23|dffs\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~39_combout\);

-- Location: LCCOMB_X43_Y17_N30
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~41_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~38_combout\) # ((\addr~combout\(1) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~40_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~40_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~38_combout\,
	datac => \addr~combout\(1),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~39_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~41_combout\);

-- Location: LCCOMB_X43_Y17_N4
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~42_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~35_combout\) # 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~41_combout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~35_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~41_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~0_combout\,
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~42_combout\);

-- Location: LCCOMB_X39_Y15_N4
\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~51_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~42_combout\) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~82_combout\ & 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|_~154_combout\))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~82_combout\ & (\inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~50_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~154_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~82_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~42_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~51_combout\);

-- Location: LCCOMB_X38_Y18_N30
\inst|inst70|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst70|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst73|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst68|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst68|dffs\(2),
	combout => \inst|inst70|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X38_Y18_N31
\inst|inst71|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst70|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst71|dffs\(2));

-- Location: LCCOMB_X37_Y18_N24
\inst|inst69|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst69|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst71|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst67|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst71|dffs\(2),
	datad => \inst|inst67|dffs\(2),
	combout => \inst|inst69|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X37_Y18_N25
\inst|inst68|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst69|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst68|dffs\(2));

-- Location: LCCOMB_X36_Y18_N30
\inst|inst66|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst66|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst68|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst65|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst65|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst68|dffs\(2),
	combout => \inst|inst66|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X36_Y18_N31
\inst|inst67|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst66|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst33~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst67|dffs\(2));

-- Location: LCCOMB_X37_Y18_N10
\inst|inst64|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst64|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst67|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst63|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst63|dffs\(2),
	datad => \inst|inst67|dffs\(2),
	combout => \inst|inst64|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X37_Y18_N11
\inst|inst65|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst64|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst65|dffs\(2));

-- Location: LCCOMB_X37_Y16_N18
\inst|inst62|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst62|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst65|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst61|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst61|dffs\(2),
	datad => \inst|inst65|dffs\(2),
	combout => \inst|inst62|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X37_Y16_N19
\inst|inst63|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst62|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst63|dffs\(2));

-- Location: LCCOMB_X36_Y16_N26
\inst|inst60|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst60|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst63|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst59|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst59|dffs\(2),
	datad => \inst|inst63|dffs\(2),
	combout => \inst|inst60|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X36_Y16_N27
\inst|inst61|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst60|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst61|dffs\(2));

-- Location: LCCOMB_X36_Y16_N4
\inst|inst58|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst58|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst61|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst57|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst57|dffs\(2),
	datad => \inst|inst61|dffs\(2),
	combout => \inst|inst58|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X36_Y16_N5
\inst|inst59|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst58|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst59|dffs\(2));

-- Location: LCCOMB_X38_Y16_N0
\inst|inst56|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst56|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst59|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst54|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst54|dffs\(2),
	datab => \inst|inst59|dffs\(2),
	datad => \inst|inst107~combout\,
	combout => \inst|inst56|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X38_Y16_N1
\inst|inst57|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst56|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst28~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst57|dffs\(2));

-- Location: LCCOMB_X40_Y16_N2
\inst|inst46|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst46|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst49|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst45|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst45|dffs\(2),
	datab => \inst|inst49|dffs\(2),
	datad => \inst|inst107~combout\,
	combout => \inst|inst46|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X40_Y16_N3
\inst|inst47|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst46|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst47|dffs\(2));

-- Location: LCCOMB_X40_Y16_N16
\inst|inst48|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst48|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst51|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst47|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst51|dffs\(2),
	datab => \inst|inst47|dffs\(2),
	datad => \inst|inst107~combout\,
	combout => \inst|inst48|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X40_Y16_N17
\inst|inst49|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst48|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst24~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst49|dffs\(2));

-- Location: LCCOMB_X40_Y17_N24
\inst|inst50|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst50|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst53|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst49|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst49|dffs\(2),
	datad => \inst|inst53|dffs\(2),
	combout => \inst|inst50|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X40_Y17_N25
\inst|inst51|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst50|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst51|dffs\(2));

-- Location: LCCOMB_X40_Y17_N2
\inst|inst52|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst52|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst54|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst51|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst51|dffs\(2),
	datad => \inst|inst54|dffs\(2),
	combout => \inst|inst52|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X40_Y17_N3
\inst|inst53|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst52|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst53|dffs\(2));

-- Location: LCCOMB_X37_Y16_N0
\inst|inst55|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst55|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst57|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst53|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst57|dffs\(2),
	datad => \inst|inst53|dffs\(2),
	combout => \inst|inst55|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X37_Y16_N1
\inst|inst54|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst55|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst27~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst54|dffs\(2));

-- Location: LCCOMB_X38_Y15_N2
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~65_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst54|dffs\(2)))) # (!\addr~combout\(0) & (\inst|inst53|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst53|dffs\(2),
	datab => \inst|inst54|dffs\(2),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~65_combout\);

-- Location: LCCOMB_X39_Y17_N22
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~64_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst51|dffs\(2))) # (!\addr~combout\(0) & ((\inst|inst49|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst51|dffs\(2),
	datac => \addr~combout\(1),
	datad => \inst|inst49|dffs\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~64_combout\);

-- Location: LCCOMB_X38_Y15_N24
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~66_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~63_combout\) # ((!\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~65_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~63_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~65_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~64_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~66_combout\);

-- Location: LCCOMB_X43_Y15_N10
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~67_combout\ = (\addr~combout\(4) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~60_combout\) # ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~66_combout\ & 
-- \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~60_combout\,
	datab => \addr~combout\(4),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~66_combout\,
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~67_combout\);

-- Location: LCCOMB_X38_Y18_N2
\inst|inst125|LPM_MUX_component|auto_generated|_~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~97_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~96_combout\ & (((\inst|inst71|dffs\(2)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~96_combout\ & 
-- (\inst|inst68|dffs\(2) & (\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~96_combout\,
	datab => \inst|inst68|dffs\(2),
	datac => \addr~combout\(1),
	datad => \inst|inst71|dffs\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~97_combout\);

-- Location: LCCOMB_X38_Y19_N22
\inst|inst125|LPM_MUX_component|auto_generated|_~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~98_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~16_combout\ & \inst|inst125|LPM_MUX_component|auto_generated|_~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~16_combout\,
	datab => \addr~combout\(5),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~97_combout\,
	datad => \addr~combout\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~98_combout\);

-- Location: LCCOMB_X44_Y18_N30
\inst|inst90|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst90|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst93|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst89|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst89|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst93|dffs\(2),
	combout => \inst|inst90|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X44_Y18_N31
\inst|inst91|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst90|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst45~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst91|dffs\(2));

-- Location: LCCOMB_X43_Y18_N14
\inst|inst92|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst92|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst95|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst91|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst91|dffs\(2),
	datad => \inst|inst95|dffs\(2),
	combout => \inst|inst92|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X43_Y18_N15
\inst|inst93|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst92|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst46~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst93|dffs\(2));

-- Location: LCCOMB_X44_Y18_N28
\inst|inst94|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst94|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst96|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst93|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst96|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst93|dffs\(2),
	combout => \inst|inst94|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X44_Y18_N29
\inst|inst95|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst94|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst47~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst95|dffs\(2));

-- Location: LCCOMB_X44_Y18_N16
\inst|inst125|LPM_MUX_component|auto_generated|_~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~100_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst95|dffs\(2))) # (!\addr~combout\(0) & ((\inst|inst93|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst95|dffs\(2),
	datac => \addr~combout\(1),
	datad => \inst|inst93|dffs\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~100_combout\);

-- Location: LCCOMB_X44_Y17_N22
\inst|inst125|LPM_MUX_component|auto_generated|_~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~101_combout\ = (\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~99_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|_~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~99_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~100_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~101_combout\);

-- Location: LCCOMB_X45_Y18_N2
\inst|inst84|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst84|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst87|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst82|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst87|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst82|dffs\(2),
	combout => \inst|inst84|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X45_Y18_N3
\inst|inst85|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst84|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst85|dffs\(2));

-- Location: LCCOMB_X45_Y18_N0
\inst|inst83|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst83|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst85|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst81|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst81|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst85|dffs\(2),
	combout => \inst|inst83|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X45_Y18_N1
\inst|inst82|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst83|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst41~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst82|dffs\(2));

-- Location: LCCOMB_X46_Y18_N28
\inst|inst125|LPM_MUX_component|auto_generated|_~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~102_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst82|dffs\(2)))) # (!\addr~combout\(0) & (\inst|inst81|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst81|dffs\(2),
	datab => \addr~combout\(0),
	datac => \inst|inst82|dffs\(2),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~102_combout\);

-- Location: LCCOMB_X44_Y17_N20
\inst|inst125|LPM_MUX_component|auto_generated|_~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~104_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~101_combout\) # ((!\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~103_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|_~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~103_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~101_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~102_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~104_combout\);

-- Location: LCCOMB_X43_Y15_N18
\inst|inst125|LPM_MUX_component|auto_generated|_~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~105_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~95_combout\) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~98_combout\) # 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|_~35_combout\ & \inst|inst125|LPM_MUX_component|auto_generated|_~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~95_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~35_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~98_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~104_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~105_combout\);

-- Location: LCCOMB_X43_Y15_N20
\inst|inst125|LPM_MUX_component|auto_generated|_~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~155_combout\ = ((\inst|inst125|LPM_MUX_component|auto_generated|_~88_combout\ & (!\addr~combout\(3) & !\addr~combout\(2)))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~88_combout\,
	datab => \addr~combout\(3),
	datac => \addr~combout\(4),
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~155_combout\);

-- Location: LCCOMB_X42_Y18_N4
\inst|inst15|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst15|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst17|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst13|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst17|dffs\(2),
	combout => \inst|inst15|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X42_Y18_N5
\inst|inst14|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst15|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst14|dffs\(2));

-- Location: LCCOMB_X43_Y19_N10
\inst|inst16|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst16|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst19|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst14|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst19|dffs\(2),
	datad => \inst|inst14|dffs\(2),
	combout => \inst|inst16|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X43_Y19_N11
\inst|inst17|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst16|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst17|dffs\(2));

-- Location: LCCOMB_X43_Y17_N8
\inst|inst18|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst18|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst21|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst17|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst17|dffs\(2),
	combout => \inst|inst18|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X43_Y17_N9
\inst|inst19|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst18|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst19|dffs\(2));

-- Location: LCCOMB_X44_Y16_N22
\inst|inst20|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst20|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst23|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst19|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|dffs\(2),
	datab => \inst|inst19|dffs\(2),
	datad => \inst|inst107~combout\,
	combout => \inst|inst20|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X44_Y16_N23
\inst|inst21|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst20|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst21|dffs\(2));

-- Location: LCCOMB_X44_Y16_N24
\inst|inst22|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst22|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst25|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst21|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|dffs\(2),
	datab => \inst|inst21|dffs\(2),
	datad => \inst|inst107~combout\,
	combout => \inst|inst22|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X44_Y16_N25
\inst|inst23|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst22|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst23|dffs\(2));

-- Location: LCCOMB_X43_Y17_N18
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~56_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\inst|inst23|dffs\(2))) # (!\addr~combout\(1) & ((\inst|inst19|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst23|dffs\(2),
	datac => \addr~combout\(1),
	datad => \inst|inst19|dffs\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~56_combout\);

-- Location: LCCOMB_X45_Y16_N14
\inst|inst24|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst24|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst27|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst23|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst23|dffs\(2),
	datad => \inst|inst27|dffs\(2),
	combout => \inst|inst24|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X45_Y16_N15
\inst|inst25|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst24|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst25|dffs\(2));

-- Location: LCCOMB_X45_Y17_N14
\inst|inst26|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst26|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst28|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst25|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst28|dffs\(2),
	datab => \inst|inst25|dffs\(2),
	datad => \inst|inst107~combout\,
	combout => \inst|inst26|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X45_Y17_N15
\inst|inst27|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst26|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst27|dffs\(2));

-- Location: LCCOMB_X45_Y16_N26
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~53_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\inst|inst31|dffs\(2))) # (!\addr~combout\(1) & ((\inst|inst27|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|dffs\(2),
	datab => \inst|inst27|dffs\(2),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~53_combout\);

-- Location: LCCOMB_X44_Y17_N28
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~55_combout\ = (\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~54_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~54_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~53_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~55_combout\);

-- Location: LCCOMB_X43_Y17_N26
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~58_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~55_combout\) # ((!\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~57_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~57_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~56_combout\,
	datac => \addr~combout\(2),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~55_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~58_combout\);

-- Location: LCCOMB_X40_Y19_N10
\inst|inst4|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst4|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & ((\inst|inst7|dffs\(2)))) # (!\inst|inst107~combout\ & (\inst|inst2|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst7|dffs\(2),
	combout => \inst|inst4|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X40_Y19_N11
\inst|inst5|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst4|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst5|dffs\(2));

-- Location: LCCOMB_X43_Y16_N8
\inst|inst6|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst9|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst5|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst5|dffs\(2),
	combout => \inst|inst6|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X43_Y16_N9
\inst|inst7|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst6|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst7|dffs\(2));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[2]~I\ : cycloneii_io
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
	padio => ww_data(2),
	combout => \data~combout\(2));

-- Location: LCCOMB_X40_Y20_N18
\inst|inst1|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst2|dffs\(2))) # (!\inst|inst107~combout\ & ((\data~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \data~combout\(2),
	combout => \inst|inst1|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X40_Y20_N19
\inst|inst|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst1|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|dffs\(2));

-- Location: LCCOMB_X40_Y20_N16
\inst|inst3|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst107~combout\ & (\inst|inst5|dffs\(2))) # (!\inst|inst107~combout\ & ((\inst|inst|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(2),
	datab => \inst|inst107~combout\,
	datad => \inst|inst|dffs\(2),
	combout => \inst|inst3|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X40_Y20_N17
\inst|inst2|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst3|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst2|dffs\(2));

-- Location: LCCOMB_X43_Y19_N14
\inst|inst125|LPM_MUX_component|auto_generated|_~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~85_combout\ = (\addr~combout\(0) & ((\inst|inst2|dffs\(2)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\inst|inst|dffs\(2) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst2|dffs\(2),
	datac => \inst|inst|dffs\(2),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~85_combout\);

-- Location: LCCOMB_X43_Y19_N16
\inst|inst125|LPM_MUX_component|auto_generated|_~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~86_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~85_combout\ & (((\inst|inst7|dffs\(2)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~85_combout\ & 
-- (\inst|inst5|dffs\(2) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(2),
	datab => \inst|inst7|dffs\(2),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~85_combout\,
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~86_combout\);

-- Location: LCCOMB_X43_Y19_N26
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~52_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & (\inst|inst125|LPM_MUX_component|auto_generated|_~84_combout\)) # (!\addr~combout\(2) & 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|_~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~84_combout\,
	datab => \addr~combout\(2),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~86_combout\,
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~52_combout\);

-- Location: LCCOMB_X43_Y19_N8
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~59_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~52_combout\) # ((\addr~combout\(3) & 
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~58_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~0_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~52_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~59_combout\);

-- Location: LCCOMB_X43_Y15_N16
\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~68_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~59_combout\) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~105_combout\ & 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|_~155_combout\))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~105_combout\ & (\inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~67_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~105_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~155_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~59_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~68_combout\);

-- Location: LCCOMB_X40_Y15_N4
\inst|inst98|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst98|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst101|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst96|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst101|dffs\(1),
	datab => \inst|inst107~combout\,
	datad => \inst|inst96|dffs\(1),
	combout => \inst|inst98|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X40_Y15_N5
\inst|inst99|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst98|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst49~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst99|dffs\(1));

-- Location: LCCOMB_X42_Y15_N18
\inst|inst97|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst97|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst99|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst95|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst95|dffs\(1),
	datab => \inst|inst99|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst97|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X42_Y15_N19
\inst|inst96|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst97|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst48~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst96|dffs\(1));

-- Location: LCCOMB_X39_Y15_N2
\inst|inst125|LPM_MUX_component|auto_generated|_~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~110_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst99|dffs\(1))) # (!\addr~combout\(0) & ((\inst|inst96|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(1),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \inst|inst96|dffs\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~110_combout\);

-- Location: LCCOMB_X40_Y15_N14
\inst|inst103|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst103|dffs[1]~feeder_combout\ = \inst|inst102|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst102|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \inst|inst103|dffs[1]~feeder_combout\);

-- Location: LCFF_X40_Y15_N15
\inst|inst103|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst103|dffs[1]~feeder_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst51~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst103|dffs\(1));

-- Location: LCCOMB_X39_Y15_N8
\inst|inst125|LPM_MUX_component|auto_generated|_~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~111_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~110_combout\ & (((\inst|inst103|dffs\(1)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~110_combout\ & 
-- (\inst|inst101|dffs\(1) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst101|dffs\(1),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~110_combout\,
	datac => \inst|inst103|dffs\(1),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~111_combout\);

-- Location: LCCOMB_X38_Y17_N6
\inst|inst125|LPM_MUX_component|auto_generated|_~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~156_combout\ = ((!\addr~combout\(3) & (\inst|inst125|LPM_MUX_component|auto_generated|_~111_combout\ & !\addr~combout\(2)))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(4),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~111_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~156_combout\);

-- Location: LCCOMB_X40_Y18_N6
\inst|inst78|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst78|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst81|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst77|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst81|dffs\(1),
	datab => \inst|inst77|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst78|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X40_Y18_N7
\inst|inst79|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst78|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst39~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst79|dffs\(1));

-- Location: LCCOMB_X38_Y18_N14
\inst|inst70|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst70|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst73|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst68|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst68|dffs\(1),
	datab => \inst|inst73|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst70|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X38_Y18_N15
\inst|inst71|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst70|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst71|dffs\(1));

-- Location: LCCOMB_X39_Y18_N12
\inst|inst72|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst72|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst75|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst71|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst71|dffs\(1),
	datad => \inst|inst75|dffs\(1),
	combout => \inst|inst72|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X39_Y18_N13
\inst|inst73|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst72|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst36~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst73|dffs\(1));

-- Location: LCCOMB_X38_Y18_N12
\inst|inst74|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst74|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst77|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst73|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst77|dffs\(1),
	datab => \inst|inst73|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst74|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X38_Y18_N13
\inst|inst75|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst74|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst75|dffs\(1));

-- Location: LCCOMB_X39_Y18_N2
\inst|inst76|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst76|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst79|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst75|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst79|dffs\(1),
	datad => \inst|inst75|dffs\(1),
	combout => \inst|inst76|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X39_Y18_N3
\inst|inst77|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst76|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst38~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst77|dffs\(1));

-- Location: LCCOMB_X39_Y18_N18
\inst|inst125|LPM_MUX_component|auto_generated|_~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~116_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst75|dffs\(1))) # (!\addr~combout\(0) & ((\inst|inst73|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst75|dffs\(1),
	datab => \addr~combout\(1),
	datac => \inst|inst73|dffs\(1),
	datad => \addr~combout\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~116_combout\);

-- Location: LCCOMB_X39_Y18_N16
\inst|inst125|LPM_MUX_component|auto_generated|_~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~117_combout\ = (\addr~combout\(1) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~116_combout\ & ((\inst|inst79|dffs\(1)))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~116_combout\ & 
-- (\inst|inst77|dffs\(1))))) # (!\addr~combout\(1) & (((\inst|inst125|LPM_MUX_component|auto_generated|_~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \inst|inst77|dffs\(1),
	datac => \inst|inst79|dffs\(1),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~116_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~117_combout\);

-- Location: LCCOMB_X38_Y17_N22
\inst|inst125|LPM_MUX_component|auto_generated|_~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~118_combout\ = (!\addr~combout\(3) & (\inst|inst125|LPM_MUX_component|auto_generated|_~117_combout\ & (\addr~combout\(5) & \addr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~117_combout\,
	datac => \addr~combout\(5),
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~118_combout\);

-- Location: LCCOMB_X46_Y18_N12
\inst|inst80|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst80|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst82|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst79|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst79|dffs\(1),
	datab => \inst|inst82|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst80|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X46_Y18_N13
\inst|inst81|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst80|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst40~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst81|dffs\(1));

-- Location: LCCOMB_X45_Y18_N4
\inst|inst83|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst83|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst85|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst81|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst85|dffs\(1),
	datab => \inst|inst107~combout\,
	datad => \inst|inst81|dffs\(1),
	combout => \inst|inst83|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X45_Y18_N5
\inst|inst82|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst83|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst41~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst82|dffs\(1));

-- Location: LCCOMB_X46_Y18_N26
\inst|inst125|LPM_MUX_component|auto_generated|_~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~125_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst82|dffs\(1)))) # (!\addr~combout\(0) & (\inst|inst81|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst81|dffs\(1),
	datab => \addr~combout\(0),
	datac => \inst|inst82|dffs\(1),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~125_combout\);

-- Location: LCCOMB_X45_Y18_N6
\inst|inst84|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst84|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst87|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst82|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst82|dffs\(1),
	datab => \inst|inst107~combout\,
	datad => \inst|inst87|dffs\(1),
	combout => \inst|inst84|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X45_Y18_N7
\inst|inst85|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst84|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst85|dffs\(1));

-- Location: LCCOMB_X40_Y19_N2
\inst|inst86|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst86|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst89|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst85|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst89|dffs\(1),
	datab => \inst|inst85|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst86|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X40_Y19_N3
\inst|inst87|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst86|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst43~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst87|dffs\(1));

-- Location: LCCOMB_X46_Y18_N16
\inst|inst125|LPM_MUX_component|auto_generated|_~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~126_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst87|dffs\(1)))) # (!\addr~combout\(0) & (\inst|inst85|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst85|dffs\(1),
	datab => \addr~combout\(0),
	datac => \inst|inst87|dffs\(1),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~126_combout\);

-- Location: LCCOMB_X46_Y18_N30
\inst|inst125|LPM_MUX_component|auto_generated|_~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~127_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~124_combout\) # ((!\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~125_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|_~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~124_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~125_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~126_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~127_combout\);

-- Location: LCCOMB_X38_Y17_N30
\inst|inst125|LPM_MUX_component|auto_generated|_~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~128_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~121_combout\) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~118_combout\) # 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|_~35_combout\ & \inst|inst125|LPM_MUX_component|auto_generated|_~127_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~121_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~118_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~35_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~127_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~128_combout\);

-- Location: LCCOMB_X39_Y19_N4
\inst|inst16|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst16|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst19|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst14|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19|dffs\(1),
	datab => \inst|inst107~combout\,
	datad => \inst|inst14|dffs\(1),
	combout => \inst|inst16|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X39_Y19_N5
\inst|inst17|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst16|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst17|dffs\(1));

-- Location: LCCOMB_X42_Y18_N26
\inst|inst15|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst15|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst17|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst13|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(1),
	datab => \inst|inst17|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst15|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X42_Y18_N27
\inst|inst14|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst15|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst14|dffs\(1));

-- Location: LCCOMB_X42_Y20_N20
\inst|inst12|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst12|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst14|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst11|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|dffs\(1),
	datab => \inst|inst107~combout\,
	datad => \inst|inst14|dffs\(1),
	combout => \inst|inst12|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X42_Y20_N21
\inst|inst13|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst12|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst13|dffs\(1));

-- Location: LCCOMB_X43_Y19_N28
\inst|inst125|LPM_MUX_component|auto_generated|_~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~107_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~106_combout\ & (((\inst|inst14|dffs\(1)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~106_combout\ & 
-- (\inst|inst13|dffs\(1) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~106_combout\,
	datab => \inst|inst13|dffs\(1),
	datac => \inst|inst14|dffs\(1),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~107_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[1]~I\ : cycloneii_io
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
	padio => ww_data(1),
	combout => \data~combout\(1));

-- Location: LCCOMB_X40_Y20_N22
\inst|inst1|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst2|dffs\(1))) # (!\inst|inst107~combout\ & ((\data~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|dffs\(1),
	datab => \inst|inst107~combout\,
	datad => \data~combout\(1),
	combout => \inst|inst1|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X40_Y20_N23
\inst|inst|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst1|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|dffs\(1));

-- Location: LCCOMB_X40_Y20_N20
\inst|inst3|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst5|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(1),
	datab => \inst|inst107~combout\,
	datad => \inst|inst|dffs\(1),
	combout => \inst|inst3|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X40_Y20_N21
\inst|inst2|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst3|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst2|dffs\(1));

-- Location: LCCOMB_X43_Y19_N18
\inst|inst125|LPM_MUX_component|auto_generated|_~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~108_combout\ = (\addr~combout\(0) & ((\inst|inst2|dffs\(1)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\inst|inst|dffs\(1) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst2|dffs\(1),
	datac => \inst|inst|dffs\(1),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~108_combout\);

-- Location: LCCOMB_X39_Y19_N6
\inst|inst4|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst4|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst7|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst2|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|dffs\(1),
	datab => \inst|inst2|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst4|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X39_Y19_N7
\inst|inst5|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst4|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst5|dffs\(1));

-- Location: LCCOMB_X43_Y16_N2
\inst|inst8|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst8|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst11|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst7|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|dffs\(1),
	datab => \inst|inst107~combout\,
	datad => \inst|inst7|dffs\(1),
	combout => \inst|inst8|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X43_Y16_N3
\inst|inst9|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst8|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst9|dffs\(1));

-- Location: LCCOMB_X43_Y16_N24
\inst|inst6|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst9|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst5|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst5|dffs\(1),
	datad => \inst|inst9|dffs\(1),
	combout => \inst|inst6|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X43_Y16_N25
\inst|inst7|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst6|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst7|dffs\(1));

-- Location: LCCOMB_X43_Y19_N24
\inst|inst125|LPM_MUX_component|auto_generated|_~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~109_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~108_combout\ & (((\inst|inst7|dffs\(1)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~108_combout\ & 
-- (\inst|inst5|dffs\(1) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(1),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~108_combout\,
	datac => \inst|inst7|dffs\(1),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~109_combout\);

-- Location: LCCOMB_X43_Y19_N2
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~69_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & (\inst|inst125|LPM_MUX_component|auto_generated|_~107_combout\)) # (!\addr~combout\(2) & 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|_~109_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~107_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~109_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~69_combout\);

-- Location: LCCOMB_X44_Y17_N16
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~76_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~69_combout\) # 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~75_combout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~75_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~0_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~69_combout\,
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~76_combout\);

-- Location: LCCOMB_X42_Y17_N26
\inst|inst30|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst30|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst33|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst28|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst28|dffs\(1),
	datab => \inst|inst107~combout\,
	datad => \inst|inst33|dffs\(1),
	combout => \inst|inst30|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X42_Y17_N27
\inst|inst31|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst30|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst31|dffs\(1));

-- Location: LCCOMB_X47_Y16_N12
\inst|inst32|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst32|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst35|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst31|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst31|dffs\(1),
	datad => \inst|inst35|dffs\(1),
	combout => \inst|inst32|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X47_Y16_N13
\inst|inst33|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst32|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst33|dffs\(1));

-- Location: LCCOMB_X42_Y16_N10
\inst|inst38|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst38|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst41|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst37|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(1),
	datab => \inst|inst107~combout\,
	datad => \inst|inst37|dffs\(1),
	combout => \inst|inst38|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X42_Y16_N11
\inst|inst39|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst38|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst39|dffs\(1));

-- Location: LCCOMB_X46_Y16_N12
\inst|inst36|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst36|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst39|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst35|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst35|dffs\(1),
	datad => \inst|inst39|dffs\(1),
	combout => \inst|inst36|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X46_Y16_N13
\inst|inst37|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst36|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst37|dffs\(1));

-- Location: LCCOMB_X46_Y16_N18
\inst|inst34|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst34|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst37|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst33|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst33|dffs\(1),
	datad => \inst|inst37|dffs\(1),
	combout => \inst|inst34|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X46_Y16_N19
\inst|inst35|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst34|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst35|dffs\(1));

-- Location: LCCOMB_X47_Y16_N14
\inst|inst125|LPM_MUX_component|auto_generated|_~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~114_combout\ = (\addr~combout\(0) & (((\inst|inst35|dffs\(1)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\inst|inst33|dffs\(1) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33|dffs\(1),
	datab => \inst|inst35|dffs\(1),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~114_combout\);

-- Location: LCCOMB_X46_Y16_N0
\inst|inst125|LPM_MUX_component|auto_generated|_~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~115_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~114_combout\ & (((\inst|inst39|dffs\(1)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~114_combout\ & 
-- (\inst|inst37|dffs\(1) & (\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst37|dffs\(1),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~114_combout\,
	datac => \addr~combout\(1),
	datad => \inst|inst39|dffs\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~115_combout\);

-- Location: LCCOMB_X42_Y16_N12
\inst|inst40|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst40|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst42|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst39|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39|dffs\(1),
	datab => \inst|inst107~combout\,
	datad => \inst|inst42|dffs\(1),
	combout => \inst|inst40|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X42_Y16_N13
\inst|inst41|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst40|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst41|dffs\(1));

-- Location: LCCOMB_X39_Y16_N30
\inst|inst43|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst43|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst45|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst41|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst45|dffs\(1),
	datad => \inst|inst41|dffs\(1),
	combout => \inst|inst43|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X39_Y16_N31
\inst|inst42|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst43|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst42|dffs\(1));

-- Location: LCCOMB_X37_Y18_N8
\inst|inst69|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst69|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst71|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst67|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst71|dffs\(1),
	datad => \inst|inst67|dffs\(1),
	combout => \inst|inst69|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X37_Y18_N9
\inst|inst68|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst69|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst68|dffs\(1));

-- Location: LCCOMB_X36_Y18_N28
\inst|inst66|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst66|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst68|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst65|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst65|dffs\(1),
	datab => \inst|inst68|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst66|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X36_Y18_N29
\inst|inst67|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst66|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst33~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst67|dffs\(1));

-- Location: LCCOMB_X37_Y18_N2
\inst|inst64|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst64|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst67|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst63|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst67|dffs\(1),
	datad => \inst|inst63|dffs\(1),
	combout => \inst|inst64|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X37_Y18_N3
\inst|inst65|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst64|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst65|dffs\(1));

-- Location: LCCOMB_X37_Y16_N14
\inst|inst62|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst62|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst65|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst61|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst65|dffs\(1),
	datad => \inst|inst61|dffs\(1),
	combout => \inst|inst62|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X37_Y16_N15
\inst|inst63|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst62|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst63|dffs\(1));

-- Location: LCCOMB_X36_Y16_N14
\inst|inst60|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst60|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst63|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst59|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst59|dffs\(1),
	datad => \inst|inst63|dffs\(1),
	combout => \inst|inst60|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X36_Y16_N15
\inst|inst61|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst60|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst61|dffs\(1));

-- Location: LCCOMB_X36_Y16_N8
\inst|inst58|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst58|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst61|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst57|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst61|dffs\(1),
	datad => \inst|inst57|dffs\(1),
	combout => \inst|inst58|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X36_Y16_N9
\inst|inst59|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst58|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst59|dffs\(1));

-- Location: LCCOMB_X38_Y16_N6
\inst|inst56|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst56|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst59|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst54|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst54|dffs\(1),
	datab => \inst|inst59|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst56|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X38_Y16_N7
\inst|inst57|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst56|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst28~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst57|dffs\(1));

-- Location: LCCOMB_X37_Y16_N8
\inst|inst55|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst55|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst57|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst53|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst53|dffs\(1),
	datad => \inst|inst57|dffs\(1),
	combout => \inst|inst55|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X37_Y16_N9
\inst|inst54|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst55|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst27~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst54|dffs\(1));

-- Location: LCCOMB_X40_Y17_N10
\inst|inst52|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst52|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst54|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst51|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst51|dffs\(1),
	datad => \inst|inst54|dffs\(1),
	combout => \inst|inst52|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X40_Y17_N11
\inst|inst53|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst52|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst53|dffs\(1));

-- Location: LCCOMB_X40_Y17_N4
\inst|inst50|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst50|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst53|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst49|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst49|dffs\(1),
	datad => \inst|inst53|dffs\(1),
	combout => \inst|inst50|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X40_Y17_N5
\inst|inst51|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst50|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst51|dffs\(1));

-- Location: LCCOMB_X40_Y16_N12
\inst|inst48|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst48|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & (\inst|inst51|dffs\(1))) # (!\inst|inst107~combout\ & ((\inst|inst47|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst51|dffs\(1),
	datad => \inst|inst47|dffs\(1),
	combout => \inst|inst48|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X40_Y16_N13
\inst|inst49|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst48|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst24~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst49|dffs\(1));

-- Location: LCCOMB_X40_Y16_N6
\inst|inst46|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst46|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst49|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst45|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst45|dffs\(1),
	datab => \inst|inst49|dffs\(1),
	datad => \inst|inst107~combout\,
	combout => \inst|inst46|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X40_Y16_N7
\inst|inst47|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst46|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst47|dffs\(1));

-- Location: LCCOMB_X39_Y16_N12
\inst|inst44|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst44|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst107~combout\ & ((\inst|inst47|dffs\(1)))) # (!\inst|inst107~combout\ & (\inst|inst42|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst42|dffs\(1),
	datad => \inst|inst47|dffs\(1),
	combout => \inst|inst44|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X39_Y16_N13
\inst|inst45|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst44|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst45|dffs\(1));

-- Location: LCCOMB_X39_Y16_N0
\inst|inst125|LPM_MUX_component|auto_generated|_~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~112_combout\ = (\addr~combout\(0) & (((\inst|inst42|dffs\(1)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\inst|inst41|dffs\(1) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(1),
	datab => \inst|inst42|dffs\(1),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~112_combout\);

-- Location: LCCOMB_X39_Y17_N12
\inst|inst125|LPM_MUX_component|auto_generated|_~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~113_combout\ = (\addr~combout\(1) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~112_combout\ & (\inst|inst47|dffs\(1))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~112_combout\ & 
-- ((\inst|inst45|dffs\(1)))))) # (!\addr~combout\(1) & (((\inst|inst125|LPM_MUX_component|auto_generated|_~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst47|dffs\(1),
	datab => \inst|inst45|dffs\(1),
	datac => \addr~combout\(1),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~112_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~113_combout\);

-- Location: LCCOMB_X38_Y17_N0
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~77_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~113_combout\))) # (!\addr~combout\(2) & 
-- (\inst|inst125|LPM_MUX_component|auto_generated|_~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~115_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~113_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~77_combout\);

-- Location: LCCOMB_X40_Y17_N30
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~82_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst54|dffs\(1)))) # (!\addr~combout\(0) & (\inst|inst53|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst53|dffs\(1),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \inst|inst54|dffs\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~82_combout\);

-- Location: LCCOMB_X39_Y17_N10
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~81_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst51|dffs\(1))) # (!\addr~combout\(0) & ((\inst|inst49|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst51|dffs\(1),
	datab => \addr~combout\(1),
	datac => \inst|inst49|dffs\(1),
	datad => \addr~combout\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~81_combout\);

-- Location: LCCOMB_X39_Y17_N28
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~83_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~80_combout\) # ((!\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~82_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~80_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~82_combout\,
	datac => \addr~combout\(2),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~81_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~83_combout\);

-- Location: LCCOMB_X38_Y17_N28
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~84_combout\ = (\addr~combout\(4) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~77_combout\) # ((\addr~combout\(3) & 
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~77_combout\,
	datac => \addr~combout\(4),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~83_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~84_combout\);

-- Location: LCCOMB_X38_Y17_N8
\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~85_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~76_combout\) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~128_combout\ & 
-- (\inst|inst125|LPM_MUX_component|auto_generated|_~156_combout\)) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~128_combout\ & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~156_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~128_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~76_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~84_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~85_combout\);

-- Location: LCCOMB_X44_Y16_N26
\inst|inst20|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst20|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst23|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst19|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19|dffs\(0),
	datab => \inst|inst23|dffs\(0),
	datad => \inst|inst107~combout\,
	combout => \inst|inst20|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X44_Y16_N27
\inst|inst21|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst20|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst21|dffs\(0));

-- Location: LCCOMB_X42_Y16_N6
\inst|inst38|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst38|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst41|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst37|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst37|dffs\(0),
	combout => \inst|inst38|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X42_Y16_N7
\inst|inst39|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst38|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst39|dffs\(0));

-- Location: LCCOMB_X46_Y16_N6
\inst|inst36|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst36|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst39|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst35|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst39|dffs\(0),
	datad => \inst|inst35|dffs\(0),
	combout => \inst|inst36|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X46_Y16_N7
\inst|inst37|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst36|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst37|dffs\(0));

-- Location: LCCOMB_X46_Y16_N24
\inst|inst34|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst34|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst37|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst33|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst37|dffs\(0),
	datad => \inst|inst33|dffs\(0),
	combout => \inst|inst34|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X46_Y16_N25
\inst|inst35|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst34|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst35|dffs\(0));

-- Location: LCCOMB_X47_Y16_N10
\inst|inst32|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst32|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst35|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst31|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst31|dffs\(0),
	datad => \inst|inst35|dffs\(0),
	combout => \inst|inst32|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X47_Y16_N11
\inst|inst33|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst32|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst33|dffs\(0));

-- Location: LCCOMB_X42_Y17_N24
\inst|inst30|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst30|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst33|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst28|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst28|dffs\(0),
	datad => \inst|inst33|dffs\(0),
	combout => \inst|inst30|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X42_Y17_N25
\inst|inst31|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst30|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst31|dffs\(0));

-- Location: LCCOMB_X45_Y16_N16
\inst|inst29|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst29|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst31|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst27|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst31|dffs\(0),
	datad => \inst|inst27|dffs\(0),
	combout => \inst|inst29|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X45_Y16_N17
\inst|inst28|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst29|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst28|dffs\(0));

-- Location: LCCOMB_X45_Y17_N18
\inst|inst26|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst26|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst28|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst25|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst28|dffs\(0),
	combout => \inst|inst26|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X45_Y17_N19
\inst|inst27|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst26|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst27|dffs\(0));

-- Location: LCCOMB_X45_Y16_N18
\inst|inst24|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst24|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst27|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst23|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst23|dffs\(0),
	datad => \inst|inst27|dffs\(0),
	combout => \inst|inst24|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X45_Y16_N19
\inst|inst25|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst24|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst25|dffs\(0));

-- Location: LCCOMB_X44_Y16_N28
\inst|inst22|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst22|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst25|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst21|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst21|dffs\(0),
	datad => \inst|inst25|dffs\(0),
	combout => \inst|inst22|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X44_Y16_N29
\inst|inst23|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst22|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst23|dffs\(0));

-- Location: LCCOMB_X42_Y19_N14
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~90_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & ((\inst|inst23|dffs\(0)))) # (!\addr~combout\(1) & (\inst|inst19|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19|dffs\(0),
	datab => \inst|inst23|dffs\(0),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~90_combout\);

-- Location: LCCOMB_X44_Y17_N2
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~87_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & ((\inst|inst31|dffs\(0)))) # (!\addr~combout\(1) & (\inst|inst27|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst27|dffs\(0),
	datac => \addr~combout\(1),
	datad => \inst|inst31|dffs\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~87_combout\);

-- Location: LCCOMB_X45_Y17_N0
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~88_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\inst|inst28|dffs\(0))) # (!\addr~combout\(1) & ((\inst|inst25|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst28|dffs\(0),
	datab => \addr~combout\(0),
	datac => \inst|inst25|dffs\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~88_combout\);

-- Location: LCCOMB_X44_Y17_N12
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~89_combout\ = (\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~87_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~87_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~88_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~89_combout\);

-- Location: LCCOMB_X42_Y19_N22
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~92_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~89_combout\) # ((!\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~91_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~91_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~90_combout\,
	datac => \addr~combout\(2),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~89_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~92_combout\);

-- Location: LCCOMB_X42_Y20_N2
\inst|inst10|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst10|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst13|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst9|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|dffs\(0),
	datab => \inst|inst13|dffs\(0),
	datad => \inst|inst107~combout\,
	combout => \inst|inst10|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X42_Y20_N3
\inst|inst11|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst10|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst11|dffs\(0));

-- Location: LCCOMB_X42_Y20_N8
\inst|inst12|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst12|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst14|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst11|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst11|dffs\(0),
	combout => \inst|inst12|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X42_Y20_N9
\inst|inst13|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst12|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst13|dffs\(0));

-- Location: LCCOMB_X40_Y19_N0
\inst|inst4|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst4|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst7|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst2|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst7|dffs\(0),
	combout => \inst|inst4|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X40_Y19_N1
\inst|inst5|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst4|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst5|dffs\(0));

-- Location: LCCOMB_X43_Y16_N28
\inst|inst6|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst9|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst5|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst5|dffs\(0),
	datad => \inst|inst9|dffs\(0),
	combout => \inst|inst6|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X43_Y16_N29
\inst|inst7|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst6|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst7|dffs\(0));

-- Location: LCCOMB_X43_Y16_N22
\inst|inst8|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst8|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst11|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst7|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst7|dffs\(0),
	datad => \inst|inst11|dffs\(0),
	combout => \inst|inst8|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X43_Y16_N23
\inst|inst9|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst8|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst9|dffs\(0));

-- Location: LCCOMB_X43_Y16_N12
\inst|inst125|LPM_MUX_component|auto_generated|_~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~129_combout\ = (\addr~combout\(0) & ((\inst|inst11|dffs\(0)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((!\addr~combout\(1) & \inst|inst9|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|dffs\(0),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \inst|inst9|dffs\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~129_combout\);

-- Location: LCCOMB_X42_Y18_N10
\inst|inst15|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst15|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst17|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst13|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17|dffs\(0),
	datab => \inst|inst13|dffs\(0),
	datad => \inst|inst107~combout\,
	combout => \inst|inst15|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X42_Y18_N11
\inst|inst14|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst15|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst14|dffs\(0));

-- Location: LCCOMB_X42_Y19_N2
\inst|inst125|LPM_MUX_component|auto_generated|_~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~130_combout\ = (\addr~combout\(1) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~129_combout\ & ((\inst|inst14|dffs\(0)))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~129_combout\ & 
-- (\inst|inst13|dffs\(0))))) # (!\addr~combout\(1) & (((\inst|inst125|LPM_MUX_component|auto_generated|_~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \inst|inst13|dffs\(0),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~129_combout\,
	datad => \inst|inst14|dffs\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~130_combout\);

-- Location: LCCOMB_X40_Y20_N2
\inst|inst125|LPM_MUX_component|auto_generated|_~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~131_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & ((\inst|inst5|dffs\(0)))) # (!\addr~combout\(1) & (\inst|inst|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|dffs\(0),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \inst|inst5|dffs\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~131_combout\);

-- Location: LCCOMB_X40_Y20_N8
\inst|inst3|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst5|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst5|dffs\(0),
	combout => \inst|inst3|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X40_Y20_N9
\inst|inst2|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst3|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst2|dffs\(0));

-- Location: LCCOMB_X40_Y19_N30
\inst|inst125|LPM_MUX_component|auto_generated|_~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~132_combout\ = (\addr~combout\(0) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~131_combout\ & ((\inst|inst7|dffs\(0)))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~131_combout\ & 
-- (\inst|inst2|dffs\(0))))) # (!\addr~combout\(0) & (\inst|inst125|LPM_MUX_component|auto_generated|_~131_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~131_combout\,
	datac => \inst|inst2|dffs\(0),
	datad => \inst|inst7|dffs\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~132_combout\);

-- Location: LCCOMB_X42_Y19_N16
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~86_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & (\inst|inst125|LPM_MUX_component|auto_generated|_~130_combout\)) # (!\addr~combout\(2) & 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|_~132_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~130_combout\,
	datac => \addr~combout\(2),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~132_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~86_combout\);

-- Location: LCCOMB_X42_Y19_N8
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~93_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~86_combout\) # 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~92_combout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~0_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~92_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~86_combout\,
	datad => \addr~combout\(3),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~93_combout\);

-- Location: LCCOMB_X47_Y16_N18
\inst|inst125|LPM_MUX_component|auto_generated|_~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~138_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~137_combout\ & ((\inst|inst39|dffs\(0)) # ((!\addr~combout\(0))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~137_combout\ & 
-- (((\addr~combout\(0) & \inst|inst35|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~137_combout\,
	datab => \inst|inst39|dffs\(0),
	datac => \addr~combout\(0),
	datad => \inst|inst35|dffs\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~138_combout\);

-- Location: LCCOMB_X42_Y16_N8
\inst|inst40|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst40|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst42|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst39|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst42|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst39|dffs\(0),
	combout => \inst|inst40|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X42_Y16_N9
\inst|inst41|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst40|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst41|dffs\(0));

-- Location: LCCOMB_X39_Y16_N18
\inst|inst43|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst43|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst45|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst41|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst45|dffs\(0),
	datad => \inst|inst41|dffs\(0),
	combout => \inst|inst43|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X39_Y16_N19
\inst|inst42|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst43|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst42|dffs\(0));

-- Location: LCCOMB_X39_Y16_N4
\inst|inst44|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst44|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst47|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst42|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst42|dffs\(0),
	datad => \inst|inst47|dffs\(0),
	combout => \inst|inst44|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X39_Y16_N5
\inst|inst45|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst44|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst45|dffs\(0));

-- Location: LCCOMB_X40_Y16_N30
\inst|inst46|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst46|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst49|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst45|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst49|dffs\(0),
	datab => \inst|inst45|dffs\(0),
	datad => \inst|inst107~combout\,
	combout => \inst|inst46|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X40_Y16_N31
\inst|inst47|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst46|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst47|dffs\(0));

-- Location: LCCOMB_X39_Y16_N26
\inst|inst125|LPM_MUX_component|auto_generated|_~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~136_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~135_combout\ & ((\inst|inst47|dffs\(0)) # ((!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~135_combout\ & 
-- (((\inst|inst45|dffs\(0) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~135_combout\,
	datab => \inst|inst47|dffs\(0),
	datac => \inst|inst45|dffs\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~136_combout\);

-- Location: LCCOMB_X38_Y19_N8
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~94_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~136_combout\))) # (!\addr~combout\(2) & 
-- (\inst|inst125|LPM_MUX_component|auto_generated|_~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~138_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~136_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~94_combout\);

-- Location: LCCOMB_X36_Y18_N22
\inst|inst66|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst66|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst68|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst65|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst68|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst65|dffs\(0),
	combout => \inst|inst66|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X36_Y18_N23
\inst|inst67|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst66|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst33~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst67|dffs\(0));

-- Location: LCCOMB_X37_Y18_N22
\inst|inst64|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst64|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst67|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst63|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst67|dffs\(0),
	datad => \inst|inst63|dffs\(0),
	combout => \inst|inst64|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X37_Y18_N23
\inst|inst65|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst64|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst65|dffs\(0));

-- Location: LCCOMB_X36_Y16_N2
\inst|inst60|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst60|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst63|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst59|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|dffs\(0),
	datab => \inst|inst63|dffs\(0),
	datad => \inst|inst107~combout\,
	combout => \inst|inst60|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X36_Y16_N3
\inst|inst61|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst60|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst61|dffs\(0));

-- Location: LCCOMB_X37_Y16_N2
\inst|inst62|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst62|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst65|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst61|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst65|dffs\(0),
	datad => \inst|inst61|dffs\(0),
	combout => \inst|inst62|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X37_Y16_N3
\inst|inst63|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst62|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst63|dffs\(0));

-- Location: LCCOMB_X37_Y16_N22
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~96_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst63|dffs\(0))) # (!\addr~combout\(0) & ((\inst|inst61|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst63|dffs\(0),
	datac => \addr~combout\(1),
	datad => \inst|inst61|dffs\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~96_combout\);

-- Location: LCCOMB_X36_Y16_N24
\inst|inst58|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst58|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst61|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst57|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst61|dffs\(0),
	datad => \inst|inst57|dffs\(0),
	combout => \inst|inst58|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X36_Y16_N25
\inst|inst59|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst58|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst59|dffs\(0));

-- Location: LCCOMB_X38_Y16_N24
\inst|inst56|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst56|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst59|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst54|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst54|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst59|dffs\(0),
	combout => \inst|inst56|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X38_Y16_N25
\inst|inst57|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst56|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst28~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst57|dffs\(0));

-- Location: LCCOMB_X36_Y16_N10
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~95_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst59|dffs\(0))) # (!\addr~combout\(0) & ((\inst|inst57|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|dffs\(0),
	datab => \inst|inst57|dffs\(0),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~95_combout\);

-- Location: LCCOMB_X38_Y17_N18
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~97_combout\ = (\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~96_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~96_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~95_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~97_combout\);

-- Location: LCCOMB_X39_Y17_N30
\inst|inst50|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst50|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst53|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst49|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst49|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst53|dffs\(0),
	combout => \inst|inst50|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X39_Y17_N31
\inst|inst51|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst50|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst51|dffs\(0));

-- Location: LCCOMB_X39_Y17_N14
\inst|inst52|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst52|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst54|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst51|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst54|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst51|dffs\(0),
	combout => \inst|inst52|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X40_Y17_N0
\inst|inst53|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst53|dffs[0]~feeder_combout\ = \inst|inst52|$00000|auto_generated|result_node[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst52|$00000|auto_generated|result_node[0]~5_combout\,
	combout => \inst|inst53|dffs[0]~feeder_combout\);

-- Location: LCFF_X40_Y17_N1
\inst|inst53|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst53|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst53|dffs\(0));

-- Location: LCCOMB_X39_Y17_N16
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~99_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst54|dffs\(0))) # (!\addr~combout\(0) & ((\inst|inst53|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst54|dffs\(0),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \inst|inst53|dffs\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~99_combout\);

-- Location: LCCOMB_X39_Y17_N2
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~98_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst51|dffs\(0)))) # (!\addr~combout\(0) & (\inst|inst49|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst49|dffs\(0),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \inst|inst51|dffs\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~98_combout\);

-- Location: LCCOMB_X38_Y17_N16
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~100_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~97_combout\) # ((!\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~99_combout\) 
-- # (\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~97_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~99_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~98_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~100_combout\);

-- Location: LCCOMB_X38_Y19_N26
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~101_combout\ = (\addr~combout\(4) & ((\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~94_combout\) # ((\addr~combout\(3) & 
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~94_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~100_combout\,
	datad => \addr~combout\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~101_combout\);

-- Location: LCCOMB_X40_Y15_N18
\inst|inst102|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst102|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst101|dffs\(0) & (((\mode~combout\(0)) # (!\enable~combout\)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \inst|inst101|dffs\(0),
	combout => \inst|inst102|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X40_Y15_N2
\inst|inst103|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst103|dffs[0]~feeder_combout\ = \inst|inst102|$00000|auto_generated|result_node[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst102|$00000|auto_generated|result_node[0]~5_combout\,
	combout => \inst|inst103|dffs[0]~feeder_combout\);

-- Location: LCFF_X40_Y15_N3
\inst|inst103|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst103|dffs[0]~feeder_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst51~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst103|dffs\(0));

-- Location: LCCOMB_X42_Y15_N24
\inst|inst100|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst100|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst103|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst99|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst103|dffs\(0),
	combout => \inst|inst100|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X42_Y15_N25
\inst|inst101|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst100|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst50~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst101|dffs\(0));

-- Location: LCCOMB_X38_Y15_N10
\inst|inst125|LPM_MUX_component|auto_generated|_~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~134_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~133_combout\ & (((\inst|inst103|dffs\(0)) # (!\addr~combout\(1))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~133_combout\ & 
-- (\inst|inst101|dffs\(0) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~133_combout\,
	datab => \inst|inst101|dffs\(0),
	datac => \inst|inst103|dffs\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~134_combout\);

-- Location: LCCOMB_X38_Y19_N20
\inst|inst125|LPM_MUX_component|auto_generated|_~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~157_combout\ = ((!\addr~combout\(3) & (\inst|inst125|LPM_MUX_component|auto_generated|_~134_combout\ & !\addr~combout\(2)))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(4),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~134_combout\,
	datad => \addr~combout\(2),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~157_combout\);

-- Location: LCCOMB_X45_Y18_N10
\inst|inst84|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst84|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst87|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst82|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst82|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst87|dffs\(0),
	combout => \inst|inst84|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X45_Y18_N11
\inst|inst85|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst84|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst85|dffs\(0));

-- Location: LCCOMB_X40_Y19_N18
\inst|inst86|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst86|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst89|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst85|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst89|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst85|dffs\(0),
	combout => \inst|inst86|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X40_Y19_N19
\inst|inst87|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst86|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst43~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst87|dffs\(0));

-- Location: LCCOMB_X40_Y19_N28
\inst|inst125|LPM_MUX_component|auto_generated|_~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~149_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\inst|inst87|dffs\(0)))) # (!\addr~combout\(0) & (\inst|inst85|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst85|dffs\(0),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \inst|inst87|dffs\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~149_combout\);

-- Location: LCCOMB_X42_Y15_N22
\inst|inst97|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst97|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst99|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst95|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(0),
	datab => \inst|inst107~combout\,
	datad => \inst|inst95|dffs\(0),
	combout => \inst|inst97|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X42_Y15_N23
\inst|inst96|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst97|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst48~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst96|dffs\(0));

-- Location: LCCOMB_X42_Y18_N28
\inst|inst94|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst94|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst96|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst93|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst93|dffs\(0),
	datab => \inst|inst96|dffs\(0),
	datad => \inst|inst107~combout\,
	combout => \inst|inst94|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X42_Y18_N29
\inst|inst95|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst94|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst47~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst95|dffs\(0));

-- Location: LCCOMB_X44_Y18_N8
\inst|inst90|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst90|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst93|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst89|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst89|dffs\(0),
	datab => \inst|inst93|dffs\(0),
	datad => \inst|inst107~combout\,
	combout => \inst|inst90|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X44_Y18_N9
\inst|inst91|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst90|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst45~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst91|dffs\(0));

-- Location: LCCOMB_X43_Y18_N26
\inst|inst92|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst92|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & ((\inst|inst95|dffs\(0)))) # (!\inst|inst107~combout\ & (\inst|inst91|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst91|dffs\(0),
	datad => \inst|inst95|dffs\(0),
	combout => \inst|inst92|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X43_Y18_N27
\inst|inst93|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst92|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst46~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst93|dffs\(0));

-- Location: LCCOMB_X42_Y18_N22
\inst|inst125|LPM_MUX_component|auto_generated|_~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~146_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\inst|inst95|dffs\(0))) # (!\addr~combout\(0) & ((\inst|inst93|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \inst|inst95|dffs\(0),
	datac => \inst|inst93|dffs\(0),
	datad => \addr~combout\(1),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~146_combout\);

-- Location: LCCOMB_X39_Y19_N22
\inst|inst125|LPM_MUX_component|auto_generated|_~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~147_combout\ = (\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~145_combout\) # (\inst|inst125|LPM_MUX_component|auto_generated|_~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~145_combout\,
	datab => \addr~combout\(2),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~146_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~147_combout\);

-- Location: LCCOMB_X39_Y19_N28
\inst|inst125|LPM_MUX_component|auto_generated|_~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~150_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~147_combout\) # ((!\addr~combout\(2) & ((\inst|inst125|LPM_MUX_component|auto_generated|_~148_combout\) # 
-- (\inst|inst125|LPM_MUX_component|auto_generated|_~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~148_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~149_combout\,
	datac => \addr~combout\(2),
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~147_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~150_combout\);

-- Location: LCCOMB_X37_Y18_N28
\inst|inst69|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst69|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst71|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst67|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107~combout\,
	datab => \inst|inst71|dffs\(0),
	datad => \inst|inst67|dffs\(0),
	combout => \inst|inst69|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X37_Y18_N29
\inst|inst68|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst69|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst68|dffs\(0));

-- Location: LCCOMB_X38_Y18_N10
\inst|inst70|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst70|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst107~combout\ & (\inst|inst73|dffs\(0))) # (!\inst|inst107~combout\ & ((\inst|inst68|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(0),
	datab => \inst|inst68|dffs\(0),
	datad => \inst|inst107~combout\,
	combout => \inst|inst70|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X38_Y18_N11
\inst|inst71|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst70|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst109~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \inst|inst109~combout\,
	ena => \inst|inst124|inst35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst71|dffs\(0));

-- Location: LCCOMB_X36_Y18_N6
\inst|inst125|LPM_MUX_component|auto_generated|_~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~143_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~142_combout\ & (((\inst|inst71|dffs\(0)) # (!\addr~combout\(0))))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~142_combout\ & 
-- (\inst|inst67|dffs\(0) & ((\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~142_combout\,
	datab => \inst|inst67|dffs\(0),
	datac => \inst|inst71|dffs\(0),
	datad => \addr~combout\(0),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~143_combout\);

-- Location: LCCOMB_X38_Y19_N14
\inst|inst125|LPM_MUX_component|auto_generated|_~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~144_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~16_combout\ & \inst|inst125|LPM_MUX_component|auto_generated|_~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~16_combout\,
	datab => \addr~combout\(5),
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~143_combout\,
	datad => \addr~combout\(4),
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~144_combout\);

-- Location: LCCOMB_X38_Y19_N28
\inst|inst125|LPM_MUX_component|auto_generated|_~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|_~151_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|_~141_combout\) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~144_combout\) # 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|_~150_combout\ & \inst|inst125|LPM_MUX_component|auto_generated|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|_~141_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|_~150_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~144_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~35_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|_~151_combout\);

-- Location: LCCOMB_X38_Y19_N10
\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~102_combout\ = (\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~93_combout\) # ((\inst|inst125|LPM_MUX_component|auto_generated|_~151_combout\ & 
-- ((\inst|inst125|LPM_MUX_component|auto_generated|_~157_combout\))) # (!\inst|inst125|LPM_MUX_component|auto_generated|_~151_combout\ & (\inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~93_combout\,
	datab => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~101_combout\,
	datac => \inst|inst125|LPM_MUX_component|auto_generated|_~157_combout\,
	datad => \inst|inst125|LPM_MUX_component|auto_generated|_~151_combout\,
	combout => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~102_combout\);

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\empty~I\ : cycloneii_io
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
	datain => \inst|inst120|auto_generated|ALT_INV_aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_empty);

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\full~I\ : cycloneii_io
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
	datain => \inst|inst119|auto_generated|ALT_INV_aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_full);

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[5]~I\ : cycloneii_io
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
	datain => \inst|inst115|auto_generated|safe_q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(5));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[4]~I\ : cycloneii_io
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
	datain => \inst|inst115|auto_generated|safe_q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(4));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[3]~I\ : cycloneii_io
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
	datain => \inst|inst115|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(3));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[2]~I\ : cycloneii_io
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
	datain => \inst|inst115|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(2));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[1]~I\ : cycloneii_io
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
	datain => \inst|inst115|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(1));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[0]~I\ : cycloneii_io
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
	datain => \inst|inst115|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(0));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[5]~I\ : cycloneii_io
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
	datain => \inst|inst125|LPM_MUX_component|auto_generated|result_node[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(5));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[4]~I\ : cycloneii_io
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
	datain => \inst|inst125|LPM_MUX_component|auto_generated|result_node[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(4));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[3]~I\ : cycloneii_io
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
	datain => \inst|inst125|LPM_MUX_component|auto_generated|result_node[3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(3));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[2]~I\ : cycloneii_io
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
	datain => \inst|inst125|LPM_MUX_component|auto_generated|result_node[2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(2));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[1]~I\ : cycloneii_io
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
	datain => \inst|inst125|LPM_MUX_component|auto_generated|result_node[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(1));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[0]~I\ : cycloneii_io
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
	datain => \inst|inst125|LPM_MUX_component|auto_generated|result_node[0]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(0));
END structure;


