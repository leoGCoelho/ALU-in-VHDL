LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY mux_4_1 IS
	PORT( a_mux4: in std_logic;
			b_mux4: in std_logic;
			c_mux4: in std_logic;
			d_mux4: in std_logic;
			s_mux4: in std_logic_vector(3 downto 0);
			y_mux4: out std_logic
	);
	
END mux_4_1;

architecture arq_mux_4_1 of mux_4_1 is
	begin
		WITH s_mux4 SELECT
			y_mux4<=
				a_mux4 when "1000",
				b_mux4 when "0100",
				c_mux4 when "0010",
				d_mux4 when "0001",
				'-' when others;
				

end arq_mux_4_1;