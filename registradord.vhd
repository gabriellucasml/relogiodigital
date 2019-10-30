LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY registradord IS
	GENERIC(W : NATURAL := 4);
	PORT(d : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0);
		  clk : IN STD_LOGIC;
		  enable : IN STD_LOGIC;
		  q : OUT STD_LOGIC_VECTOR(W-1 DOWNTO 0));
END registradord;

ARCHITECTURE behavior OF registradord IS
BEGIN
	PROCESS(clk, enable)
	BEGIN
		IF (clk'EVENT AND enable = '1') THEN
			q <= d;
		END IF;
	END PROCESS;
END behavior;	