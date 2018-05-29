LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY encod_4_2 IS
	PORT( a: in std_logic_vector(3 downto 0);
			s: out std_logic_vector(1 downto 0)
	);

END encod_4_2;

architecture arq_encod_4_2 of encod_4_2 is
	begin
		WITH a SELECT
			s <=
				"00" WHEN "0001",
				"01" WHEN "0010",
				"10" WHEN "0100",
				"11" WHEN "1000",
				"--" WHEN others;

end arq_encod_4_2;