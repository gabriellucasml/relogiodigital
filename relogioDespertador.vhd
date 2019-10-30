LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY relogioDespertador IS
	PORT(teclado : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		  selecao : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		  CLK : IN STD_LOGIC;
		  enable : IN STD_LOGIC;--min0
		  load : IN STD_LOGIC;
		  hora1, hora0 , min1, min0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)); 
END relogioDespertador;		  
-------------------------------------------------------------------------------------------------------------------------------------------------
ARCHITECTURE structural OF relogioDespertador IS
	COMPONENT codificador IS
		PORT(t: IN STD_LOGIC_VECTOR(9 DOWNTO 0); --TECLAS DE 0 A 9
		     s: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)); --TECLAS DE SELEÇAO
	END COMPONENT;
	
	COMPONENT demux1x4 IS
		PORT(a : IN STD_LOGIC_VECTOR(3 DOWNTO 0); --ENTRADA DO DEMUX
			  sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0); --SELEÇAO: 00 - DISPLAY 1; 01 - DISPLAY 2; 10 - DISPLAY 3; 11 - DISPLAY 4
			  s1, s2, s3, s4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT contador IS
		GENERIC(W : NATURAL := 4);
		PORT (d : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0);-- data input
				clk : IN STD_LOGIC; -- clock
				clrn: IN STD_LOGIC; -- clear
				ena : IN STD_LOGIC; -- enable
				load: IN STD_LOGIC; -- load
				q : BUFFER STD_LOGIC_VECTOR(W-1 DOWNTO 0));-- data output
	END COMPONENT;

	COMPONENT controlador IS
		PORT(h0  : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- unidade das horas
			  h1  : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- dezena das horas
			  m0  : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- unidade dos minutos
			  m1  : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- dezena dos minutos
			  clk : IN STD_LOGIC;
			  cln : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)); -- cln(0) -> unidade dos minutos, cln(1) -> dezenas dos minutos
														    -- cln(2) -> unidade das horas, cln(3) -> dezena das horas
	END COMPONENT;
	
	COMPONENT decodificador IS
		PORT(s : IN STD_LOGIC_VECTOR(3 DOWNTO 0); --PALAVRA BINARIA PARA DETERMINAR O COMPORTAMENTO DOS 7 SEGMENTOS
			  a, b, c, d, e, f, g : OUT STD_LOGIC); --CADA UM DOS 7 SEGMENTOS
	END COMPONENT;
	
	SIGNAL codigoTeclado : STD_LOGIC_VECTOR(3 DOWNTO 0); --h1 = dez. horas| h0 = uni. horas| m1 = dez. min| m0 = uni. min
	SIGNAL cln, h1, h0, m1, m0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL qm0, qm1, qh0, qh1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	
BEGIN
		cod : codificador PORT MAP(teclado, codigoTeclado);
		demux : demux1x4 PORT MAP(codigoTeclado, selecao, h1, h0, m1, m0);
		
		contm0 : contador PORT MAP(m0, CLK, cln(0), enable, load, qm0);
		contm1 : contador PORT MAP(m1, CLK, cln(1), cln(0), load, qm1);
		conth0 : contador PORT MAP(h0, CLK, cln(2), cln(1), load, qh0);
		conth1 : contador PORT MAP(h1, CLK, cln(3), cln(2), load, qh1);
		control: controlador PORT MAP(qh0, qh1, qm0, qm1, CLK, cln);
		
		display1 : decodificador PORT MAP(qm0, min0(0), min0(1), min0(2), min0(3), min0(4), min0(5), min0(6));
		display2 : decodificador PORT MAP(qm1, min1(0), min1(1), min1(2), min1(3), min1(4), min1(5), min1(6));
		display3 : decodificador PORT MAP(qh0, hora0(0), hora0(1), hora0(2), hora0(3), hora0(4), hora0(5), hora0(6));
		display4 : decodificador PORT MAP(qh1, hora1(0), hora1(1), hora1(2), hora1(3), hora1(4), hora1(5), hora1(6));
	
END structural;