-- LEONARDO COELHO | RODRIGO BARBOSA 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY totalAdder IS
	PORT( A_ta: in std_logic_vector(3 downto 0);
			B_ta: in std_logic_vector(3 downto 0);
			ctrl_ta: in std_logic;
			S_ta: out std_logic_vector(3 downto 0);
			overflow_ta: out std_logic
	);
	
END totalAdder;

architecture arq_totalAdder of totalAdder is
	signal cLine: std_logic_vector(3 downto 0);
	signal ctrlL: std_logic_vector(3 downto 0);
	
	COMPONENT fullAdder
		PORT( a: in std_logic;
			b: in std_logic;
			cIn: in std_logic;
			cOut: out std_logic;
			y: out std_logic
		);
	END COMPONENT;
	
	begin
		ctrlL(0) <= ctrl_ta;
		ctrlL(1) <= ctrl_ta;
		ctrlL(2) <= ctrl_ta;
		ctrlL(3) <= ctrl_ta;
	
		SC_1: fullAdder
			port map(a => A_ta(0), b => B_ta(0) xor ctrlL(0), cIn => ctrl_ta, y => S_ta(0), cOut => cLine(0));
		SC_2: fullAdder 
			port map(a => A_ta(1), b => B_ta(1) xor ctrlL(1), cIn => cLine(0), y => S_ta(1), cOut => cLine(1));
		SC_3: fullAdder
			port map(a => A_ta(2), b => B_ta(2) xor ctrlL(2), cIn => cLine(1), y => S_ta(2), cOut => cLine(2));
		SC_4: fullAdder 
			port map(a => A_ta(3), b => B_ta(3) xor ctrlL(3), cIn => cLine(2), y => S_ta(3), cOut => cLine(3));
		overflow_ta <= cLine(3) xor cLine(2);
		
		

end arq_totalAdder;