-- entity name: gA6_dealer
--
-- Copyright (C) 2017 Abbas Yadollahi - He Qian Wang
-- Version 1.0
-- Author: Abbas Yadollahi (abbas.yadollahi@mail.mcgill.ca)
--         He Qian Wang (he.q.wang@mail.mcgill.ca)
-- Date: Nov/17/2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gA6_dealer is
	port(
		request_deal		: in std_logic;
		legal_num			: in std_logic;
		rst					: in std_logic;
		clk					: in std_logic;
		stack_enable		: out std_logic;
		rand_enable			: out std_logic
	);
end gA6_dealer;

architecture behavior of gA6_dealer is
	begin
		dealer: process(request_deal, legal_num, rst, clk)

		variable all_inputs	: in std_logic_vector(3 downto 0);

		begin


end behavior;