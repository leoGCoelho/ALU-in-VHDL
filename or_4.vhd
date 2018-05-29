--author: leonardo coelho

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY or_4 IS
	PORT( a: in std_logic_vector(3 downto 0);
			b: in std_logic_vector(3 downto 0);
			s: out std_logic_vector(3 downto 0)
	);

END or_4;

architecture arq_or_4 of or_4 is
	begin
		s <= a or b;

end arq_or_4;