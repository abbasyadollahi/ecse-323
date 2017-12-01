-- entity name: gA6_rules
--
-- Copyright (C) 2017 Abbas Yadollahi - He Qian Wang
-- Version 1.0
-- Author: Abbas Yadollahi (abbas.yadollahi@mail.mcgill.ca)
--         He Qian Wang (he.q.wang@mail.mcgill.ca)
-- Date: Nov/17/2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gA6_rules is
	port(
		--ace			: in std_logic;
		clk			: in std_logic;
		rst			: in std_logic;
		enable		: in std_logic;
		new_card		: in std_logic_vector(5 downto 0);
		hand_sum		: in std_logic_vector(5 downto 0);

		--ace_out		: out std_logic;
		legal_play	: out std_logic;
		new_total	: out std_logic_vector(5 downto 0)
	);
end gA6_rules;

architecture behavior of gA6_rules is
	begin
		sum_cards: process(clk, rst, enable, new_card, hand_sum)

		variable legal			: std_logic;
		variable new_ace		: std_logic;
		variable hand_ace		: std_logic;
		variable new_sum		: unsigned(5 downto 0);
		variable card_value	: unsigned(5 downto 0);

		begin
			if rst = '1' then
				hand_ace := '0';
				legal_play <= '0';
				new_total <= "000000";
			elsif enable = '1' and rising_edge(clk) then
				new_ace := '0';
				if rst = '1' then
					hand_ace := '0';
				--else
					--hand_ace := ace;
				end if;

				card_value := unsigned(new_card) mod 13 + 1;

				if card_value > 10 then
					card_value := to_unsigned(10, 6);
				elsif card_value = 1 then
					new_ace := '1';
					card_value := to_unsigned(11, 6);
				end if;

				new_sum := card_value + unsigned(hand_sum);

				if (new_sum > 21 and hand_ace = '1') then
					hand_ace := '0';
					new_sum := new_sum - 10;
				elsif (new_sum > 21 and new_ace = '1') then
					new_ace := '0';
					new_sum := new_sum - 10;
				end if;

				if new_ace = '1' then
					hand_ace := '1';
				end if;

				if new_sum < 22 then
					legal := '1';
				else
					legal := '0';
					hand_ace := '0';
				end if;

				--ace_out <= hand_ace;
				legal_play <= legal;
				new_total <= std_logic_vector(new_sum);
			end if;
		end process;
end behavior;

