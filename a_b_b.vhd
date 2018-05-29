LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY a_b_b IS
	PORT( a: in std_logic_vector(3 downto 0);
		   b: in std_logic_vector(3 downto 0);
		   s: out std_logic_vector(3 downto 0)
	);

END a_b_b;

architecture arq_a_b_b of a_b_b is
	signal c_line: std_logic_vector(3 downto 0);
	
	COMPONENT soma
		PORT( A: in std_logic_vector(3 downto 0);
				B: in std_logic_vector(3 downto 0);
				S: out std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	begin
		soma1: soma
			port map(a => A, b => B, c_line => s);
----------------------------------------------------------------------------	
		soma2: soma
			port map(c_line => A, b => B, S => s);
			
end arq_a_b_b;