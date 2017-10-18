-- megafunction wizard: %LPM_ADD_SUB%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_ADD_SUB 

-- ============================================================
-- File Name: g06_adder32.vhd
-- Megafunction Name(s):
-- 			LPM_ADD_SUB
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY g06_adder32 IS
	PORT
	(
		cin		: IN STD_LOGIC;
		dataa		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		cout		: OUT STD_LOGIC;
		result	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END g06_adder32;


ARCHITECTURE SYN OF g06_adder32 IS

	SIGNAL sub_wire0	: STD_LOGIC;
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (31 DOWNTO 0);



	COMPONENT lpm_add_sub
	GENERIC (
		lpm_hint		: STRING;
		lpm_type		: STRING;
		lpm_width	: NATURAL;
		lpm_direction			: STRING;
		lpm_representation	: STRING
	);
	PORT (
			cin		: IN STD_LOGIC;
			dataa		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			datab		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			cout		: OUT STD_LOGIC;
			result	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	cout <= sub_wire0;
	result <= sub_wire1(31 DOWNTO 0);

	LPM_ADD_SUB_component : LPM_ADD_SUB
	GENERIC MAP (
		lpm_direction => "ADD",
		lpm_hint => "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=YES",
		lpm_representation => "UNSIGNED",
		lpm_type => "LPM_ADD_SUB",
		lpm_width => 32
	)
	PORT MAP (
		cin => cin,
		dataa => dataa,
		datab => datab,
		cout => sub_wire0,
		result => sub_wire1
	);

END SYN;
