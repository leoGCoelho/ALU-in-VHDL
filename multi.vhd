--LEONARDO COELHO | RODRIGO BARBOSA

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY multi IS
	--signal :std_logic_vector( downto 0);
	--signal :std_logic;

	PORT( a_multi: in std_logic_vector(3 downto 0);
		  b_multi: in std_logic_vector(3 downto 0);
		  s_multi: out std_logic_vector(3 downto 0) 
	);

END not_a;

architecture arq_multi of multi is
	COMPONENT soma
		PORT( A_soma: in std_logic_vector(3 downto 0);
			  B_soma: in std_logic_vector(3 downto 0);
			  S_soma: out std_logic_vector(3 downto 0);
			  overflow_soma: out std_logic
		);
	END soma;
	
	COMPONENT reg
		PORT( D_reg: in std_logic_vector(3 downto 0);
			  CLK_reg: in std_logic;
			  CARGA_reg: in std_logic;
			  Q_reg: out std_logic_vector(3 downto 0)
		);

	END reg;
	
	COMPONENT cont
		PORT( clear: in std_logic;
			  CLK: in std_logic;
			  Q: out std_logic_vector(3 downto 0)
		);
	END cont;
	
	begin
		

end arq_multi;