-- LEONARDO COELHO | RODRIGO BARBOSA 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY ULA_LEONARDO_RODRIGO IS
	PORT( A_ula: in std_logic_vector(3 downto 0);
			B_ula: in std_logic_vector(3 downto 0);
			S_ula: out std_logic_vector(13 downto 0);
			S_logic_ula: out std_logic_vector(3 downto 0);
			F_ula: in std_logic_vector(3 downto 0);
			V_ula: out std_logic;
			Z_ula: out std_logic;
			N_ula: out std_logic
	);

END ULA_LEONARDO_RODRIGO;

architecture arq_ULA_LEONARDO_RODRIGO of ULA_LEONARDO_RODRIGO is

---------------------------------------------------------------------------------------------------------------------------------------------

	signal fio_funcao7: std_logic_vector(3 downto 0);
	signal logico1: std_logic_vector(3 downto 0);
	signal logico2: std_logic_vector(3 downto 0);
	signal logico3: std_logic_vector(3 downto 0);
	signal logico4: std_logic_vector(3 downto 0);
	
	signal bNot: std_logic_vector(3 downto 0);
	signal fio_or_2x5: std_logic;
	signal fio_or_1x3x4: std_logic;
	signal fio_or_2x5_aux: std_logic_vector(3 downto 0);
	signal fio_or_1x3x4_aux: std_logic_vector(3 downto 0);
	signal fio_funcao6_Ver: std_logic_vector(3 downto 0);
	signal fio_juncao1: std_logic_vector(3 downto 0);
	
	signal fio_saida_mux1: std_logic_vector(3 downto 0);
	signal fio_saida_mux2: std_logic_vector(3 downto 0);
	signal fio_saida_mux3: std_logic_vector(3 downto 0);
	signal fio_saida_mux4: std_logic_vector(3 downto 0);
	signal fio_saida_mux5: std_logic_vector(3 downto 0);
	signal fio_saida_mux6: std_logic_vector(3 downto 0);
	
	signal fio_saida_2b: std_logic_vector(3 downto 0);
	signal fio_saida_somasub: std_logic_vector(3 downto 0);
	signal fio_saida_soma2: std_logic_vector(3 downto 0);
	signal fio_saida_shifter_E: std_logic_vector(3 downto 0);
	signal fio_saida_shifter_D: std_logic_vector(3 downto 0);
	signal fio_shift: std_logic_vector(3 downto 0);
	signal fio_shift_aux: std_logic;
	signal fio_shift_aux2: std_logic_vector(3 downto 0);
	signal fio_saida_logic: std_logic_vector(3 downto 0);
	signal fio_logic_ver: std_logic_vector(3 downto 0);
	signal fio_saida_logic_ver: std_logic_vector(3 downto 0);
	
	signal fio_over1: std_logic;
	signal fio_over2: std_logic;
	
	signal fio_not: std_logic;
	
	signal fio_funcao: std_logic_vector(15 downto 0);
	signal fio_logic: std_logic_vector(3 downto 0);
	
	signal fio_saida_final1: std_logic_vector(3 downto 0);
	signal fio_saida_final2: std_logic_vector(3 downto 0);
	signal fio_FINAL: std_logic_vector(3 downto 0);
	signal fio_desloc_FINAL: std_logic_vector(3 downto 0);
	signal fio_logic_FINAL: std_logic_vector(3 downto 0);
	signal bNot_FINAL: std_logic_vector(3 downto 0);
	
	signal fio_overFinal: std_logic;
	signal fio_zero: std_logic;
	signal fio_negativo: std_logic;
	
	signal fio_aNot: std_logic_vector(3 downto 0);
	
	signal display: std_logic_vector(3 downto 0);
	
---------------------------------------------------------------------------------------------------------------------------------------------
	
	COMPONENT encod_16
		PORT( a_encod: std_logic_vector(3 downto 0);
			  y_encod: out std_logic_vector(15 downto 0)
		);
	END COMPONENT;
	
	COMPONENT mux_16_1
		PORT( a_mux16: in std_logic_vector(3 downto 0);
				b_mux16: in std_logic_vector(3 downto 0);
				c_mux16: in std_logic_vector(3 downto 0);
				d_mux16: in std_logic_vector(3 downto 0);
				s_mux16: in std_logic_vector(3 downto 0);
				y_mux16:	out std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	COMPONENT mux_8
		PORT( a_mux8: in std_logic_vector(3 downto 0);
		   b_mux8: in std_logic_vector(3 downto 0);
		   c_mux8: in std_logic;--controle
		   s_mux8: out std_logic_vector(3 downto 0)
		);
	END COMPONENT;
		
	COMPONENT mux_4_1
	PORT( a_mux4: in std_logic;
			b_mux4: in std_logic;
			c_mux4: in std_logic;
			d_mux4: in std_logic;
			s_mux4: in std_logic_vector(3 downto 0);
			y_mux4: out std_logic
	);
	END COMPONENT;
	
	COMPONENT mux_2_1
		PORT( a_mux2: in std_logic;
				b_mux2: in std_logic;
				s_mux2: in std_logic;
				y_mux2: out std_logic
		);
	END COMPONENT;
	
	COMPONENT mux_2_2
		PORT( a_mux2x2: in std_logic_vector(3 downto 0);
				b_mux2x2: in std_logic_vector(3 downto 0);
				s_mux2x2: in std_logic_vector(1 downto 0);
				y_mux2x2: out std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT soma
		PORT( A_soma: in std_logic_vector(3 downto 0);
				B_soma: in std_logic_vector(3 downto 0);
				S_soma: out std_logic_vector(3 downto 0);
				overflow_soma: out std_logic
		);

	END COMPONENT;
	
	COMPONENT seg7_2
		PORT(	I: in std_logic_vector(3 downto 0);
				O: out std_logic_vector(13 downto 0)
		);
	END COMPONENT;
	
	COMPONENT totalAdder
		PORT( A_ta: in std_logic_vector(3 downto 0);
				B_ta: in std_logic_vector(3 downto 0);
				ctrl_ta: in std_logic;
				S_ta: out std_logic_vector(3 downto 0);
				overflow_ta: out std_logic
		);
	END COMPONENT;
	
	COMPONENT shifter1--esq
		PORT(	a_sh1: in std_logic_vector(3 downto 0);
				s_sh1: out std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT shifter2--dir
		PORT(	a_sh2: in std_logic_vector(3 downto 0);
				s_sh2: out std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
---------------------------------------------------------------------------------------------------------------------------------------------
	
	begin
		fio_funcao7(0) <= fio_funcao(6);
		fio_funcao7(3 downto 1) <= "000";
		fio_logic(0) <= fio_funcao(10); fio_logic(1) <= fio_funcao(9); fio_logic(2) <= fio_funcao(5); fio_logic(3) <= fio_funcao(11);
	
		SELECAO: encod_16
			port map(a_encod => F_ula, y_encod => fio_funcao);
		LOGICAS: mux_16_1
			port map(a_mux16 => logico1, b_mux16 => logico2, c_mux16 => logico3, d_mux16 => logico4, s_mux16 => fio_logic ,y_mux16 => fio_saida_logic);
		MUX_entre_A_BNOT: mux_8 --MUX1
			port map(c_mux8 => fio_funcao(6), a_mux8 => A_ula, b_mux8 => bNot, s_mux8 => fio_saida_mux1);
		MUX_entre_MUX1_B: mux_8 --MUX2
			port map(c_mux8 => fio_funcao(2), a_mux8 => fio_saida_mux1, b_mux8 => B_ula, s_mux8 => fio_saida_mux2);--primeiro valor so somador
		MUX_funcao7: mux_8 --MUX3
			port map(c_mux8 => fio_funcao(6), a_mux8 => B_ula, b_mux8 => fio_funcao7, s_mux8 => fio_saida_mux3);
		SOMADOR_2B: soma
			port map(A_soma => B_ula, B_soma => B_ula, S_soma => fio_saida_2b, overflow_soma => fio_not);
		MUX_4: mux_8 --MUX4
			port map(a_mux8 => fio_saida_mux3, b_mux8 => fio_saida_2b, c_mux8 => fio_funcao(3), s_mux8 => fio_saida_mux4);--segundo valor
		SOMA_SUB: totalAdder
			port map(A_ta => fio_saida_mux2, B_ta => fio_saida_mux4, ctrl_ta => fio_funcao(3), S_ta => fio_saida_somasub, overflow_ta => fio_over1);
		MUX_5: mux_8
			port map(a_mux8 => A_ula, b_mux8 => B_ula, c_mux8 => fio_funcao(4), s_mux8 => fio_saida_mux5);
		SOMA_NORMAL: soma
			port map(A_soma => fio_saida_somasub, B_soma => fio_saida_mux5, S_soma => fio_saida_soma2, overflow_soma => fio_over2);
		MUX_funcao8e9: mux_2_2--MUX6
			port map(a_mux2x2 => fio_saida_shifter_E, b_mux2x2 => fio_saida_shifter_D, s_mux2x2(0) => fio_funcao(7), s_mux2x2(1) => fio_funcao(8), y_mux2x2 => fio_saida_mux6);
		DESLOC_ESQ: shifter1--A
			port map(a_sh1 => A_ula, s_sh1 => fio_saida_shifter_E);
		DESLOC_DIR: shifter2--B
			port map(a_sh2 => B_ula, s_sh2 => fio_saida_shifter_D);
			
		logico1 <= A_ula or B_ula;
		logico2 <= A_ula and B_ula;
		logico3 <= (not A_ula and B_ula) or (not B_ula and A_ula);
		logico4 <= (not A_ula and not B_ula) or (B_ula and A_ula);
		fio_logic_ver(0) <= fio_funcao(5) or fio_funcao(9) or fio_funcao(10) or fio_funcao(11);
		fio_logic_ver(1) <= fio_funcao(5) or fio_funcao(9) or fio_funcao(10) or fio_funcao(11); 
		fio_logic_ver(2) <= fio_funcao(5) or fio_funcao(9) or fio_funcao(10) or fio_funcao(11); 
		fio_logic_ver(3) <= fio_funcao(5) or fio_funcao(9) or fio_funcao(10) or fio_funcao(11); 
		
		bNot <= not B_ula;
		
		fio_or_1x3x4 <= fio_funcao(0) or fio_funcao(2) or fio_funcao(3);
		fio_or_2x5 <= fio_funcao(1) or fio_funcao(4);
		fio_or_1x3x4_aux(0) <= fio_or_1x3x4; fio_or_1x3x4_aux(1) <= fio_or_1x3x4; fio_or_1x3x4_aux(2) <= fio_or_1x3x4; fio_or_1x3x4_aux(3) <= fio_or_1x3x4;
		fio_or_2x5_aux(0) <= fio_or_2x5; fio_or_2x5_aux(1) <= fio_or_2x5; fio_or_2x5_aux(2) <= fio_or_2x5; fio_or_2x5_aux(3) <= fio_or_2x5;
		
		fio_shift_aux <= fio_funcao(7) or fio_funcao(8);
		fio_shift_aux2(0) <= fio_shift_aux; fio_shift_aux2(1) <= fio_shift_aux; fio_shift_aux2(2) <= fio_shift_aux; fio_shift_aux2(3) <= fio_shift_aux;
		fio_desloc_FINAL <= fio_shift_aux2 and fio_saida_mux6;
		
		fio_saida_final1 <= fio_saida_somasub and fio_or_1x3x4_aux;
		fio_saida_final2 <= fio_saida_soma2 and fio_or_2x5_aux;	
		fio_FINAL <= fio_saida_final1 or fio_saida_final2;
		fio_saida_logic_ver <= fio_saida_logic and fio_logic_ver;
		fio_logic_FINAL <= fio_desloc_FINAL or fio_saida_logic_ver or fio_juncao1;
		S_logic_ula <= fio_logic_FINAL;
		
		--bNot_FINAL <= ;
		
		fio_funcao6_Ver(0) <= fio_funcao(6);
		fio_funcao6_Ver(1) <= fio_funcao(6);
		fio_funcao6_Ver(2) <= fio_funcao(6);
		fio_funcao6_Ver(3) <= fio_funcao(6);
		
		fio_juncao1 <= fio_funcao6_Ver and fio_saida_somasub;
		
		fio_overFinal <= (fio_over1 or fio_over2) and (fio_funcao(0) or fio_funcao(1) or fio_funcao(2) or fio_funcao(4));	
		V_ula <= fio_overFinal;
		
		fio_zero <= not(fio_FINAL(0)) and not(fio_FINAL(1)) and not(fio_FINAL(2)) and not(fio_FINAL(3));
		Z_ula <= fio_zero;
		
		fio_negativo <= fio_FINAL(3) or fio_not;
		N_ula <= fio_negativo and fio_funcao(3);
		
---------------------------------------------------------------------------------------------------------------------------------------------	

		tela_display: seg7_2
			port map(I => fio_FINAL, O => S_ula);

end arq_ULA_LEONARDO_RODRIGO;
