--LEONARDO COELHO | RODRIGO BARBOSA

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY cont IS
	PORT( clear: in std_logic;
		  CLK: in std_logic;
		  Q: out std_logic_vector(3 downto 0)
	);

END cont;

architecture arq_cont of cont is
	signal D: std_logic_vector(3 downto 0);
	signal CLR: std_logic_vector(3 downto 0);
	signal q_notLine: std_logic_vector(3 downto 0);
	
	COMPONENT flip_flop_d
		PORT( d: in std_logic;
		  clk: in std_logic;
		  clr: in std_logic;
		  q: out std_logic;
		  q_not: out std_logic
		);
	END COMPONENT;
	
	begin 
	
		q_notLine <= D;
	
		CLR(0) <= clear;
		CLR(1) <= clear;
		CLR(2) <= clear;
		CLR(3) <= clear;
		
		caixa1: flip_flop_d
			PORT MAP(clk =>CLK, clr=>CLR(0), d=>D(0), q_not => q_notLine(0), q=>Q(0));
		caixa2: flip_flop_d
			PORT MAP(clk =>D(0), clr=>CLR(1), d => D(1), q_not => q_notLine(1), q=>Q(1));
		caixa3: flip_flop_d
			PORT MAP(clk =>D(1), clr=>CLR(2), d => D(2), q_not => q_notLine(2), q=>Q(2));
		caixa4: flip_flop_d
			PORT MAP(clk =>D(2), clr=>CLR(3), d => D(3), q_not => q_notLine(3), q=>Q(3));

end arq_cont;