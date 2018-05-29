-- LEONARDO COELHO | RODRIGO BARBOSA 
--para esquerda

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY shifter1 IS
	PORT(	a_sh1: in std_logic_vector(3 downto 0);
			s_sh1: out std_logic_vector(3 downto 0)
	);

END shifter1;

architecture arq_shifter1 of shifter1 is
	begin
		s_sh1(0) <= '0';
		s_sh1(1) <= '0';
		s_sh1(2) <= a_sh1(0);
		s_sh1(3) <= a_sh1(1);

end arq_shifter1;