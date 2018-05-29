-- LEONARDO COELHO | RODRIGO BARBOSA 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY mux_2_2 IS
	PORT( a_mux2x2: in std_logic_vector(3 downto 0);
			b_mux2x2: in std_logic_vector(3 downto 0);
			s_mux2x2: in std_logic_vector(1 downto 0);
			y_mux2x2: out std_logic_vector(3 downto 0)
	);
	
END mux_2_2;

architecture arq_mux_2_2 of mux_2_2 is
	begin
	WITH s_mux2x2 SELECT
		y_mux2x2 <= 
			a_mux2x2 when "01",
			b_mux2x2 when "10",
			"----" when others;
			
			
end arq_mux_2_2;