-- LEONARDO COELHO | RODRIGO BARBOSA 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY mux_2_1 IS
	PORT( a_mux2: in std_logic;
			b_mux2: in std_logic;
			s_mux2: in std_logic;
			y_mux2: out std_logic
	);
	
END mux_2_1;

architecture arq_mux_2_1 of mux_2_1 is
	begin
	WITH s_mux2 SELECT
		y_mux2 <= 
			a_mux2 when '0',
			b_mux2 when '1';
			
end arq_mux_2_1;