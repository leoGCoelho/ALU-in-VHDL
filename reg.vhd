-- LEONARDO COELHO | RODRIGO BARBOSA 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY reg IS
	PORT( D_reg: in std_logic_vector(3 downto 0);
			CLK_reg: in std_logic;
			CARGA_reg: in std_logic;
			Q_reg: out std_logic_vector(3 downto 0)
	);
	
END reg;

architecture arq_reg of reg is
	signal clkLine: std_logic_vector(3 downto 0);
	signal carLine: std_logic_vector(3 downto 0);
	signal dLine: std_logic_vector(3 downto 0);
	signal qLIne: std_logic_vector(3 downto 0);

	COMPONENT flip_flop_d
		PORT( d: in std_logic;
				clk: in std_logic;
				q: out std_logic;
				q_not: out std_logic
		);
	END COMPONENT;
	
	begin
			clkLine(0) <= CLK_reg;
			clkLine(1) <= CLK_reg;
			clkLine(2) <= CLK_reg;
			clkLine(3) <= CLK_reg;
			carLine(0) <= CARGA_reg;
			carLine(1) <= CARGA_reg;
			carLine(2) <= CARGA_reg;
			carLine(3) <= CARGA_reg;
			
			dLine(0) <= 
				qLine(0) WHEN carLine(0)='0' ELSE
				D_reg(0) WHEN carLine(0)='1';
			dLine(1) <= 
				qLine(1) WHEN carLine(1)='0' ELSE
				D_reg(1) WHEN carLine(1)='1';
			dLine(2) <= 
				qLine(2) WHEN carLine(2)='0' ELSE
				D_reg(2) WHEN carLine(2)='1';
			dLine(3) <= 
				qLine(3) WHEN carLine(3)='0' ELSE
				D_reg(3) WHEN carLine(3)='1';
	
		ff1: flip_flop_d
			port map(d => dLine(0), clk => clkLine(0), q => Q_reg(0));
		ff2: flip_flop_d
			port map(d => dLine(1), clk => clkLine(1), q => Q_reg(1));
		ff3: flip_flop_d
			port map(d => dLine(2), clk => clkLine(2), q => Q_reg(2));
		ff4: flip_flop_d
			port map(d => dLine(3), clk => clkLine(3), q => Q_reg(3));

end arq_reg;