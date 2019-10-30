LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY contador IS
	GENERIC(W : NATURAL := 4);
	PORT (d : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0);-- data input
			clk : IN STD_LOGIC; -- clock
			clrn: IN STD_LOGIC; -- clear
			ena : IN STD_LOGIC; -- enable
			load: IN STD_LOGIC; -- load
			q : BUFFER STD_LOGIC_VECTOR(W-1 DOWNTO 0));-- data output
END contador;
-------------------------------------------------------------------------------------------------------------------------
ARCHITECTURE arch_1 OF contador IS
BEGIN
	PROCESS(clk, clrn)
	BEGIN
		IF (clrn='0') THEN
			q <= (OTHERS => '0');
		ELSIF (clk'EVENT AND clk='1') THEN
			IF (ena='1') THEN
				IF (load='1') THEN
					q <= d;
				ELSE
					q <= q+1;
				END IF;
			END IF;
		END IF;
	END PROCESS;
END arch_1;