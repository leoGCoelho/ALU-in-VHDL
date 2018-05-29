LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY not_a IS
	PORT( a: in std_logic_vector(3 downto 0);
		  y: out std_logic_vector(3 downto 0) 
	);

END not_a;

architecture arq_not_a of not_a is
	begin
		y <= not a;

end arq_not_a;