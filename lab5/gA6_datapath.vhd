-- entity name: gA6_datapath
--
-- Copyright (C) 2017 Abbas Yadollahi - He Qian Wang
-- Version 1.0
-- Author: Abbas Yadollahi (abbas.yadollahi@mail.mcgill.ca)
--         He Qian Wang (he.q.wang@mail.mcgill.ca)
-- Date: Nov/29/2017

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity gA6_datapath is
	port(
		clk				: in std_logic;
		rst				: in std_logic;
		p_win				: in std_logic;
		d_win				: in std_logic;
		new_game			: in std_logic;
		player_hit		: in std_logic;
		player_stay		: in std_logic;
		player_legal	: in std_logic;

		setup				: out std_logic;
		player_draw		: out std_logic;
		computer_turn	: out std_logic;
		p_win_streak	: out std_logic_vector(1 downto 0);
		d_win_streak	: out std_logic_vector(1 downto 0);
		game_score		: out std_logic_vector(3 downto 0)
	);
end gA6_datapath;

architecture behavior of gA6_datapath is
	begin
		computer: process(clk, rst, p_win, d_win, new_game, player_hit, player_stay, player_legal)

		variable state			: std_logic_vector(2 downto 0);
		variable p_win_count	: unsigned(1 downto 0);
		variable d_win_count	: unsigned(1 downto 0);
		variable game_count	: unsigned(3 downto 0);

		begin
			-- Reset is on
			if rst = '1' then
				setup <= '0';
				player_draw <= '0';
				computer_turn <= '0';

				state := "000";
			elsif rising_edge(clk) then
				case state is
					-- State A/000
					when "000" =>
						player_draw <= '0';
						computer_turn <= '0';

						if new_game = '1' then
							setup <= '1';

							state := "001";
						end if;

					-- State B/001
					when "001" =>
						if player_legal = '1' or player_stay = '1' then
							setup <= '0';
							player_draw <= '0';
							computer_turn <= '1';

							state := "010";
						elsif player_hit = '1' then
							setup <= '0';
							player_draw <= '1';
							computer_turn <= '0';
						end if;

					-- State C/010
					when "010" =>
						setup <= '0';
						player_draw <= '0';
						computer_turn <= '1';

						state := "011";

					-- State D/011
					when "011" =>
						setup <= '0';
						player_draw <= '0';
						computer_turn <= '0';

						if p_win = '1' or d_win = '1' then
							if p_win = '1' and d_win = '0' then
								p_win_count := p_win_count + 1;
							elsif p_win = '0' and d_win = '1' then
								d_win_count := d_win_count + 1;
							end if;

							state := "100";
						end if;

					-- State E/100
					when "100" =>
						setup <= '0';
						player_draw <= '0';
						computer_turn <= '0';

						game_count := game_count + 1;
						if p_win_count > 2 or d_win_count > 2 then
							state := "101";
						else
							state := "110";
						end if;

					-- State F/101
					when "101" =>
						setup <= '0';
						player_draw <= '0';
						computer_turn <= '0';

						if rst = '1' then
							state := "000";
							p_win_count := to_unsigned(0, 2);
							d_win_count := to_unsigned(0, 2);
							game_count := to_unsigned(0, 4);
						end if;

					-- State G/110
					when "110" =>
						setup <= '0';
						player_draw <= '0';
						computer_turn <= '0';

						if new_game = '1' then
							state := "000";
						end if;

					-- Random State
					when others =>
						setup <= '0';
						player_draw <= '0';
						computer_turn <= '0';

						state := "000";
						p_win_count := to_unsigned(0, 2);
						d_win_count := to_unsigned(0, 2);
						game_count := to_unsigned(0, 4);
				end case;
			end if;

			p_win_streak <= std_logic_vector(p_win_count);
			d_win_streak <= std_logic_vector(d_win_count);
			game_score <= std_logic_vector(game_count);
		end process;
end behavior;