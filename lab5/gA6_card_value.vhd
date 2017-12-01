-- entity name: gA6_card_value
--
-- Copyright (C) 2017 Abbas Yadollahi - He Qian Wang
-- Version 1.0
-- Author: Abbas Yadollahi (abbas.yadollahi@mail.mcgill.ca)
--         He Qian Wang (he.q.wang@mail.mcgill.ca)
-- Date: Nov/30/2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gA6_card_value is
	port(
		card	: in std_logic_vector(3 downto 0);

		card_value	: out std_logic_vector(3 downto 0)
	);
end gA6_card_value;


architecture behavior of gA6_card_value is
	begin
		find_value: process(card)

		variable value		: unsigned(3 downto 0);

		begin
			value := unsigned(card) + 1;

			if value > 10 then
				value := to_unsigned(10, 4);
			elsif value = 1 then
				value := to_unsigned(11, 4);
			end if;

			card_value <= std_logic_vector(value);
		end process;
end behavior;