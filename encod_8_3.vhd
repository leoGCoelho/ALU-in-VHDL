LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY encod_8_3 IS
	PORT( a: in std_logic_vector(7 downto 0);
			s: out std_logic_vector(2 downto 0)
	);

END encod_8_3;

architecture arq_encod_8_3 of encod_8_3 is
	begin
		WITH a SELECT
			s <=
				"000" WHEN "00000001",
				"001" WHEN "00000010",
				"010" WHEN "00000100",
				"011" WHEN "00001000",
				"100" WHEN "00010000",
				"101" WHEN "00100000",
				"110" WHEN "01000000",
				"111" WHEN "10000000",
				"---" WHEN others;

end arq_encod_8_3;