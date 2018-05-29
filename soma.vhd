-- LEONARDO COELHO | RODRIGO BARBOSA 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY soma IS
	PORT( A_soma: in std_logic_vector(3 downto 0);
			B_soma: in std_logic_vector(3 downto 0);
			S_soma: out std_logic_vector(3 downto 0);
			overflow_soma: out std_logic
	);
	
END soma;

architecture arq_soma of soma is
	signal cLine: std_logic_vector(3 downto 0);
	
	COMPONENT halfAdder
		PORT( a: in std_logic;
			b: in std_logic;
			c: out std_logic;
			y: out std_logic
		);
	END COMPONENT;
	COMPONENT fullAdder
		PORT( a: in std_logic;
			b: in std_logic;
			cIn: in std_logic;
			cOut: out std_logic;
			y: out std_logic
		);
	END COMPONENT;
	
	begin
		MS: halfAdder
			port map(a => A_soma(0), b => B_soma(0), y => S_soma(0), c => cLine(0));
		SC_1: fullAdder
			port map(a => A_soma(1), b => B_soma(1), cIn => cLine(0), y => S_soma(1), cOut => cLine(1));
		SC_2: fullAdder
			port map(a => A_soma(2), b => B_soma(2), cIn => cLine(1), y => S_soma(2), cOut => cLine(2));
		SC_3: fullAdder
			port map(a => A_soma(3), b => B_soma(3), cIn => cLine(2), y => S_soma(3), cOut => cLine(3));
		overflow_soma <= cLine(3) xor cLine(2);

end arq_soma;