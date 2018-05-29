LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY decod_3_8 IS
	PORT( a: in std_logic_vector(2 downto 0);
			s: out std_logic_vector(7 downto 0)
	);

END decod_3_8;

architecture arq_decod_3_8 of decod_3_8 is
	begin
		WITH a SELECT
			s <= 
				"00000001" WHEN "000",
				"00000010" WHEN "001",
				"00000100" WHEN "010",
				"00001000" WHEN "011",
				"00010000" WHEN "100",
				"00100000" WHEN "101",
				"01000000" WHEN "110",
				"10000000" WHEN "111",
				"--------" WHEN others;

end arq_decod_3_8;