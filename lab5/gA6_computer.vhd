-- entity name: gA6_computer
--
-- Copyright (C) 2017 Abbas Yadollahi - He Qian Wang
-- Version 1.0
-- Author: Abbas Yadollahi (abbas.yadollahi@mail.mcgill.ca)
--         He Qian Wang (he.q.wang@mail.mcgill.ca)
-- Date: Nov/29/2017

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity gA6_computer is
	port(
		clk		: in std_logic;
		rst		: in std_logic;
		turn		: in std_logic;
		setup		: in std_logic;
		sum		: in std_logic_vector(5 downto 0);

		hit		: out std_logic;
		done		: out std_logic;
		sum_out	: out std_logic_vector(5 downto 0)
	);
end gA6_computer;

architecture behavior of gA6_computer is
	begin
		computer: process(clk, rst, turn, setup, sum)

		variable state			: std_logic_vector(1 downto 0);
		variable dealer_sum	: std_logic_vector(5 downto 0);

		begin
			-- Reset is on
			if rst = '1' then
				hit <= '0';
				done <= '0';
				sum_out <= "000000";

				state := "00";
			elsif rising_edge(clk) then
				case state is
					-- State A/000
					-- Wait for setup
					when "000" =>
						hit <= '0';
						done <= '0';
						sum_out <= "000000";

						if setup = '1' then
							state := "001";
						end if;

					-- State B/001
					-- Hit first card
					when "001" =>
						hit <= '1';
						done <= '0';
						sum_out <= sum;

						state := "010";

					-- State C/010
					-- Wait for turn
					when "010" =>
						hit <= '0';
						done <= '0';
						sum_out <= sum;

						if turn = '1' then
							state := "011";
						end if;

					-- State D/011
					-- Hit until 17/bust
					when "011" =>
						hit <= '1';
						done <= '0';
						sum_out <= sum;

						if unsigned(sum) > 16 then
							state := "100";
							hit <= '0';
						end if;

					-- State E/100
					-- Set done
					when "100" =>
						hit <= '0';
						done <= '1';
						sum_out <= sum;

						state := "000";

					-- Random State
					when others =>
						hit <= '0';
						done <= '0';
						sum_out <= sum;

						state := "00";
				end case;
			end if;
		end process;
end behavior;