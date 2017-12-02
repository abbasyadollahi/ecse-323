-- entity name: gA6_score
--
-- Copyright (C) 2017 Abbas Yadollahi - He Qian Wang
-- Version 1.0
-- Author: Abbas Yadollahi (abbas.yadollahi@mail.mcgill.ca)
--         He Qian Wang (he.q.wang@mail.mcgill.ca)
-- Date: Nov/30/2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gA6_score is
	port(
		score	: in std_logic_vector(1 downto 0);

		led_score	: out std_logic_vector(2 downto 0)
	);
end gA6_score;


architecture behavior of gA6_score is
	begin
		find_score: process(score)

		begin
			if score = "00" then
				led_score <= "000";
			elsif score = "01" then
				led_score <= "001";
			elsif score = "10" then
				led_score <= "011";
			elsif score = "11" then
				led_score <= "111";
			end if;
		end process;
end behavior;