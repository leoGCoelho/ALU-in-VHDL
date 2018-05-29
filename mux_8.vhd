-- LEONARDO COELHO | RODRIGO BARBOSA 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY mux_8 IS
	PORT( a_mux8: in std_logic_vector(3 downto 0);
		   b_mux8: in std_logic_vector(3 downto 0);
		   c_mux8: in std_logic;--controle
		   s_mux8: out std_logic_vector(3 downto 0)
	);
	
END mux_8;

architecture arq_mux_8 of mux_8 is
	begin
		s_mux8 <=
			a_mux8 WHEN c_mux8 = '0' ELSE
			b_mux8 WHEN c_mux8 = '1';
		
end arq_mux_8;