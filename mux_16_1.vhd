-- LEONARDO COELHO | RODRIGO BARBOSA 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY mux_16_1 IS
	PORT( a_mux16: in std_logic_vector(3 downto 0);
			b_mux16: in std_logic_vector(3 downto 0);
			c_mux16: in std_logic_vector(3 downto 0);
			d_mux16: in std_logic_vector(3 downto 0);
			s_mux16: in std_logic_vector(3 downto 0);
			y_mux16:	out std_logic_vector(3 downto 0)
	);

END mux_16_1;

architecture arq_mux_16_1 of mux_16_1 is
	begin
		WITH s_mux16 SELECT
			y_mux16 <=
				a_mux16 WHEN "1000",
				b_mux16 WHEN "0100",			
				c_mux16 WHEN "0010",	
				d_mux16 WHEN "0001",		
				"----" when others;

end arq_mux_16_1;