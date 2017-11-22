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
		ace			: in std_logic := '0';
		new_card		: in std_logic_vector(5 downto 0);
		hand_sum		: in std_logic_vector(5 downto 0);

		ace_out		: out std_logic;
		legal_play	: out std_logic;

		out_1			: out unsigned(5 downto 0);
		out_2			: out unsigned(5 downto 0);
		out_3			: out unsigned(5 downto 0);
		out_4			: out std_logic;
		out_5			: out std_logic
	);
end gA6_rules;

architecture behavior of gA6_rules is
	begin
		sum_cards: process(new_card, hand_sum)

		variable legal			: std_logic;
		variable new_ace		: std_logic;
		variable hand_ace		: std_logic := '0';
		variable new_sum		: unsigned(5 downto 0);
		variable temp_sum		: unsigned(5 downto 0);
		variable card_value	: unsigned(5 downto 0);

		variable tmp1	: unsigned(5 downto 0);
		variable tmp2	: unsigned(5 downto 0);
		variable tmp3	: unsigned(5 downto 0);
		variable tmp4	: std_logic;
		variable tmp5	: std_logic;

		begin
			new_ace := '0';
			--if ace = 'U' or ace = 'X' then
				--hand_ace := '0';
			--else
			hand_ace := ace;
			--end if;

			card_value := unsigned(new_card) mod 13 + 1;

			if card_value > 10 then
				card_value := to_unsigned(10, 6);
			elsif card_value = 1 then
				new_ace := '1';
				card_value := to_unsigned(11, 6);
			end if;

			tmp5 := hand_ace;
			tmp1 := card_value;
			tmp4 := new_ace;

			new_sum := card_value + unsigned(hand_sum);
			temp_sum := new_sum;

			tmp2 := new_sum;

			if (new_sum > 21 and hand_ace = '1') then
				hand_ace := '0';
				new_sum := temp_sum - 10;
			elsif (new_sum > 21 and new_ace = '1') then
				new_ace := '0';
				new_sum := temp_sum - 10;
			end if;

			tmp3 := new_sum;

			if new_ace = '1' then
				hand_ace := '1';
			end if;

			if new_sum < 22 then
				legal := '1';
			else
				legal := '0';
				hand_ace := '0';
			end if;

			ace_out <= hand_ace;
			legal_play <= legal;

			out_1 <= tmp1;
			out_2 <= tmp2;
			out_3 <= tmp3;
			out_4 <= tmp4;
			out_5 <= tmp5;

		end process;
end behavior;

