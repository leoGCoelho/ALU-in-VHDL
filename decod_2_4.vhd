LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY decod_2_4 IS
	PORT( a: in std_logic_vector(1 downto 0);
			s: out std_logic_vector(3 downto 0)
	);
	
END decod_2_4;

architecture arq_decod_2_4 of decod_2_4 is
	begin
	WITH a SELECT
		s <=
			"0001" WHEN "00",
			"0010" WHEN "01",
			"0100" WHEN "10",
			"1000" WHEN "11",
			"----" WHEN others;
			
end arq_decod_2_4;