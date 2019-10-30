LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY comparador IS
	PORT(h0A, h1A, m0A, m1A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  h0, h1, m0, m1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  enable : IN STD_LOGIC;
		  clk : IN STD_LOGIC;
		  alarme : OUT STD_LOGIC);
END comparador;
-------------------------------------------------------------------------------------------------------		  
ARCHITECTURE behavior OF comparador IS
BEGIN
	PROCESS(h0A, h1A, m0A, m1A, h0, h1, m0, m1, clk, enable)
	BEGIN
		IF(clk'EVENT AND enable = '1') THEN
			IF(h0A = h0 AND h1A = h1 AND m0A = m0 AND m1A = m1) THEN
				alarme <= '1';
			ELSE
				alarme <= '0';
			END IF;
		END IF;
	END PROCESS;	
END behavior;