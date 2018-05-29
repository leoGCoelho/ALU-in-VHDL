-- LEONARDO COELHO | RODRIGO BARBOSA 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY halfAdder IS
	PORT( a: in std_logic;
			b: in std_logic;
			c: out std_logic;
			y: out std_logic
	);

END halfAdder;

architecture arq_halfAdder of halfAdder is
	begin
		y <= a xor b;
		c <= a and b;

end arq_halfAdder;