-- entity name: gA6_7_segment_decoder
--
-- Copyright (C) 2017 Abbas Yadollahi - He Qian Wang
-- Version 1.0
-- Author: Abbas Yadollahi (abbas.yadollahi@mail.mcgill.ca)
--         He Qian Wang (he.q.wang@mail.mcgill.ca)
-- Date: Oct/18/2017

library ieee; -- Allows use of the std_logic_vector type
use ieee.std_logic_1164.all;

entity gA6_7_segment_decoder is
	port(
		code				: in std_logic_vector(3 downto 0);
		mode				: in std_logic;
		segments_out	: out std_logic_vector(6 downto 0)
	);
end gA6_7_segment_decoder;

architecture behavior of gA6_7_segment_decoder is
	signal xcode	: std_logic_vector(4 downto 0);

	begin

	xcode(4 downto 1) <= code;
	xcode(0) <= mode;
	
	with xcode select
	
	segments_out <=
		"1000000" when "00000", --code=0, mode=0 x
		"0001000" when "00001", --code=0, mode=1 x
		"1111001" when "00010", --code=1, mode=0 x
		"0100100" when "00011", --code=1, mode=1 x
		"0100100" when "00100", --code=2, mode=0 x
		"0110000" when "00101", --code=2, mode=1 x
		"0110000" when "00110", --code=3, mode=0 x
		"0011001" when "00111", --code=3, mode=1 x
		"0011001" when "01000", --code=4, mode=0 x
		"0010010" when "01001", --code=4, mode=1 x
		"0010010" when "01010", --code=5, mode=0 x
		"0000010" when "01011", --code=5, mode=1 x
		"0000010" when "01100", --code=6, mode=0 x
		"1111000" when "01101", --code=6, mode=1 x
		"1111000" when "01110", --code=7, mode=0 x
		"0000000" when "01111", --code=7, mode=1 x
		"0000000" when "10000", --code=8, mode=0 x
		"0010000" when "10001", --code=8, mode=1 x
		"0010000" when "10010", --code=9, mode=0 x
		"1000000" when "10011", --code=9, mode=1 x
		"0001000" when "10100", --code=10, mode=0 x
		"1100001" when "10101", --code=10, mode=1 x
		"0000011" when "10110", --code=11, mode=0 x
		"0100011" when "10111", --code=11, mode=1 x
		"1000110" when "11000", --code=12, mode=0 x
		"0001001" when "11001", --code=12, mode=1 x
		"0100001" when "11010", --code=13, mode=0 x
		"0111111" when "11011", --code=13, mode=1 x
		"0000110" when "11100", --code=14, mode=0 x
		"0111111" when "11101", --code=14, mode=1 x
		"0001110" when "11110", --code=15, mode=0 x
		"0111111" when "11111"; --code=15, mode=1 x

end behavior;