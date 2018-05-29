-- LEONARDO COELHO | RODRIGO BARBOSA 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY fullAdder IS
	PORT( a: in std_logic;
			b: in std_logic;
			cIn: in std_logic;
			cOut: out std_logic;
			y: out std_logic
	);
	
END fullAdder;

architecture arq_fullAdder of fullAdder is
	begin
		y <= (cIn xor (a xor b));
		cOut <= ((b and cIn) or (a and cIn) or (a and b));

end arq_fullAdder;