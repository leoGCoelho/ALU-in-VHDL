LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY xor_4 IS
	PORT( a: in std_logic_vector(3 downto 0);
		  b: in std_logic_vector(3 downto 0);
		  y: out std_logic_vector(3 downto 0) 
	);

END xor_4;

architecture arq_xor_4 of xor_4 is
	begin	
		y <= a xor b;

end arq_xor_4;