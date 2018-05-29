LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY and_4 IS
	PORT( a: in std_logic_vector(3 downto 0);
		  b: in std_logic_vector(3 downto 0);
		  y: out std_logic_vector(3 downto 0)
	);

END and_4;

architecture arq_and_4 of and_4 is
	begin
		y <= a and b;

end arq_and_4;
