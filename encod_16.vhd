-- LEONARDO COELHO | RODRIGO BARBOSA 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY encod_16 IS
	PORT( a_encod: std_logic_vector(3 downto 0);
		  y_encod: out std_logic_vector(15 downto 0)
	);

END encod_16;

architecture arq_encod_16 of encod_16 is
	begin
		WITH a_encod SELECT
			y_encod <=
				"0000000000000001" WHEN "0001", -- A + B
				"0000000000000010" WHEN "0010", -- 2 A + B
				"0000000000000100" WHEN "0011", -- B * 2
				"0000000000001000" WHEN "0100", -- A - 2 B
				"0000000000010000" WHEN "0101", -- A + B + B
				"0000000000100000" WHEN "0110", -- A OR B
				"0000000001000000" WHEN "0111", -- NOT B + 1
				"0000000010000000" WHEN "1000", -- DESLOC. A P/ESQ(2 BITS)'
				"0000000100000000" WHEN "1001", -- DESLOC. B P/DIR(1 BIT)'
				"0000001000000000" WHEN "1010", -- A XNOR B
				"0000010000000000" WHEN "1011", -- A XOR B
				"0000100000000000" WHEN "1100", -- A AND B
				"0001000000000000" WHEN others; -- 'HI'

end arq_encod_16;