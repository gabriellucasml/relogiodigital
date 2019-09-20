ENTITY relogioDespertador IS
	PORT(teclado : IN BIT_VECTOR(9 DOWNTO 0);
		  selecao : IN BIT_VECTOR(1 DOWNTO 0);
		  h1, h2 , m1, m2 : OUT BIT_VECTOR(6 DOWNTO 0)); --h1 = hora 1; h2 = hora 2; m1 = minuto 1; m2 = minuto 2
END relogioDespertador;		  
-------------------------------------------------------------------------------------------------------------------------------------------------
ARCHITECTURE structural OF relogioDespertador IS
	COMPONENT codificador IS
		PORT(t: IN BIT_VECTOR(9 DOWNTO 0); --TECLAS DE 0 A 9
		     s: OUT BIT_VECTOR(3 DOWNTO 0)); --TECLAS DE SELEÇAO
	END COMPONENT;
	
	COMPONENT demux1x4 IS
		PORT(a : IN BIT_VECTOR(3 DOWNTO 0); --ENTRADA DO DEMUX
			  sel : IN BIT_VECTOR(1 DOWNTO 0); --SELEÇAO: 00 - DISPLAY 1; 01 - DISPLAY 2; 10 - DISPLAY 3; 11 - DISPLAY 4
			  s1, s2, s3, s4 : OUT BIT_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT decodificador IS
		PORT(s : IN BIT_VECTOR(3 DOWNTO 0); --PALAVRA BINARIA PARA DETERMINAR O COMPORTAMENTO DOS 7 SEGMENTOS
			  a, b, c, d, e, f, g : OUT BIT); --CADA UM DOS 7 SEGMENTOS
	END COMPONENT;
	
	SIGNAL codTeclado, display1, display2, display3, display4 : BIT_VECTOR(3 DOWNTO 0);
	
BEGIN
	cod: codificador PORT MAP(teclado, codTeclado);
	dmx: demux1x4 PORT MAP(codTeclado, selecao, display1, display2, display3, display4);
	dp1: decodificador PORT MAP(display1, h1(0), h1(1), h1(2), h1(3), h1(4), h1(5), h1(6));
	dp2: decodificador PORT MAP(display2, h2(0), h2(1), h2(2), h2(3), h2(4), h2(5), h2(6));
	dp3: decodificador PORT MAP(display3, m1(0), m1(1), m1(2), m1(3), m1(4), m1(5), m1(6));
	dp4: decodificador PORT MAP(display4, m2(0), m2(1), m2(2), m2(3), m2(4), m2(5), m2(6));
	
END structural;