-- LEONARDO COELHO | RODRIGO BARBOSA 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY seg7_2 IS
	PORT(	I: in std_logic_vector(3 downto 0);
			O: out std_logic_vector(13 downto 0)
	);

END seg7_2;

architecture arq_seg7_2 of seg7_2 is
	begin
		WITH I SELECT
			O <= 
				"11111111000000" WHEN "0000", -- 0
				"11111111111001" WHEN "0001", -- 1
				"11111110100100" WHEN "0010", -- 2
				"11111110110000" WHEN "0011", -- 3
				"11111110011001" WHEN "0100", -- 4
				"11111110010010" WHEN "0101", -- 5
				"11111110000010" WHEN "0110", -- 6
				"11111111111000" WHEN "0111", -- 7
				"11111110000000" WHEN "1000", -- 8
				"11111110010000" WHEN "1001", -- 9
				"11110011000000" WHEN "1010", -- 10
				"11110011111001" WHEN "1011", -- 11
				"11110010100100" WHEN "1100", -- 12
				"11110010110000" WHEN "1101", -- 13
				"11110010011001" WHEN "1110", -- 14
				"11110010010010" WHEN "1111"; -- 15

end arq_seg7_2;