-- This circuit implements the IBM RANDU version of a linear congruential generator
--
-- entity name: gA6_RANDU
--
-- Copyright (C) 2017 Abbas Yadollahi - He Qian Wang
-- Version 1.0
-- Author: Abbas Yadollahi (abbas.yadollahi@mail.mcgill.ca)
--         He Qian Wang (he.q.wang@mail.mcgill.ca)
-- Date: Oct/18/2017

library lpm; -- Allows use of 32-bit adder
library ieee; -- Allows use of the std_logic_vector type
use lpm.lpm_components.all;
use ieee.std_logic_1164.all;

entity gA6_RANDU is
	port(
		seed	: in std_logic_vector(31 downto 0);
		rand	: out std_logic_vector(31 downto 0)
	);
end gA6_RANDU;


architecture behavior of gA6_RANDU is
	component gA6_adder32 
	port(
		cin		: in std_logic; 
		dataa		: in std_logic_vector(31 downto 0);
		datab		: in std_logic_vector(31 downto 0);
		cout		: out std_logic;
		result	: out std_logic_vector(31 downto 0)
	);
	end component;
	
	signal cin_1, cin_2			: std_logic;
	signal cout_1, cout_2		: std_logic;
	signal dataa_1, dataa_2		: std_logic_vector(31 downto 0)	:= (others => '0');
	signal datab_1, datab_2		: std_logic_vector(31 downto 0)	:= (others => '0');
	signal result_1, result_2	: std_logic_vector(31 downto 0)	:= (others => '0');

	begin

	-- Port mapping 1
	first_adder : gA6_adder32
	port map(
		cin => cin_1,
		dataa => dataa_1,
		datab => datab_1,
		cout => cout_1,
		result => result_1
	);
	
	cin_1 <= '0';
	dataa_1(31 downto 16) <= seed(15 downto 0);
	datab_1(16 downto 1) <= seed(15 downto 0);
	
	-- Port mapping 2
	second_adder : gA6_adder32
	port map(
		cin => cin_2,
		dataa => dataa_2,
		datab => datab_2,
		cout => cout_2,
		result => result_2
	);
	
	cin_2 <= '0';
	dataa_2(31 downto 0) <= result_1;
	datab_2(15 downto 0) <= seed(15  downto 0);
	rand(29 downto 0) <= result_2(29 downto 0);
	
end behavior;