-- LEONARDO COELHO | RODRIGO BARBOSA 
--para direita

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY shifter2 IS
	PORT(	a_sh2: in std_logic_vector(3 downto 0);
			s_sh2: out std_logic_vector(3 downto 0)
	);

END shifter2;

architecture arq_shifter2 of shifter2 is
	begin
		s_sh2(3) <= '0';
		s_sh2(2) <= a_sh2(3);
		s_sh2(1) <= a_sh2(2);
		s_sh2(0) <= a_sh2(1);

end arq_shifter2;