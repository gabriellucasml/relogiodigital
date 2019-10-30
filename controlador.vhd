LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY controlador IS
	PORT(h0    : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- unidade das horas
		  h1    : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- dezena das horas
		  m0    : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- unidade dos minutos
		  m1    : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- dezena dos minutos
		  clk   : IN STD_LOGIC;
		  cln   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); -- cln(0) -> unidade dos minutos, cln(1) -> dezenas dos minutos -- cln(2) -> unidade das horas, cln(3) -> dezena das horas
		  enable: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END controlador;
-------------------------------------------------------------------------------------------------------------------------
ARCHITECTURE behavior OF controlador IS
BEGIN
	PROCESS(h0, h1, m0, m1, clk)
	BEGIN	
		IF(h0 = "0011" AND h1 = "0010" AND m0 = "1001" AND m1 = "0101") THEN --se o relogio marca 23h59
			cln(0) <= '0';--zera todos os registradores
			cln(1) <= '0';
			cln(2) <= '0';
			cln(3) <= '0';
			enable <= "0001";
		ELSIF(h0 = "1001") THEN
			cln <= "1011";
			enable <= "1001";
		ELSIF(m1 = "0101" AND m0 = "1001") THEN
			cln(0) <= '0';--zera os registradores de minutos
			cln(1) <= '0';
			cln(2) <= '1';
			cln(3) <= '1';
			enable <= "0101";
		ELSIF(m0 = "1010") THEN
			cln(0) <= '0';--zera a unidade do minuto sempre que chegar em 9
			cln(1) <= '1';
			cln(2) <= '1';
			cln(3) <= '1';
			enable <= "0011";
		ELSE
			cln(0) <= '1';-- desativa todos os clears
			cln(1) <= '1';
			cln(2) <= '1';
			cln(3) <= '1';
			enable <= "0001";
		END IF;
	END PROCESS;
END behavior;
		
			
	