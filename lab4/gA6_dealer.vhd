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
		clk					: in std_logic;
		rst					: in std_logic;
		legal_num			: in std_logic;
		request_deal		: in std_logic;

		rand_enable			: out std_logic;
		stack_enable		: out std_logic;
		fsm_state			: out std_logic_vector(1 downto 0)
	);
end gA6_dealer;

architecture behavior of gA6_dealer is
	begin
		dealer: process(clk, rst, legal_num, request_deal)

		variable state		: std_logic_vector(1 downto 0);
		variable req_in	: std_logic_vector(1 downto 0);

		begin
			req_in := legal_num & request_deal;

			-- Reset is on
			if rst = '1' then
				rand_enable <= '0';
				stack_enable <= '0';
				state := "00";
			elsif rising_edge(clk) then
				case state is
					-- State A/00
					when "00" =>
						rand_enable <= '0';
						stack_enable <= '0';

						if req_in(0) = '0' then
							state := "01";
						end if;

					-- State B/01
					when "01" =>
						rand_enable <= '0';
						stack_enable <= '0';

						if req_in(0) = '1' then
							state := "10";
						end if;

					-- State C/10
					when "10" =>
						rand_enable <= '1';
						stack_enable <= '0';

						if req_in(1) = '1' then
							state := "11";
						end if;

					-- State D/11
					when "11" =>
						rand_enable <= '0';
						stack_enable <= '1';

						state := "00";
				end case;
			end if;

			fsm_state <= state;
		end process;
end behavior;