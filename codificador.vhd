LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY codificador IS
	PORT(t: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		  s: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END codificador;
-------------------------------------------------------------------------------------------------------------------------------------------------
ARCHITECTURE structural OF codificador IS
BEGIN
	s(0)<= t(1) OR t(3) OR t(5) OR t(7) OR t(9);
	s(1)<= t(2) OR t(3) OR t(6) OR t(7);
	s(2)<= t(4) OR t(5) OR t(6) OR t(7);
	s(3)<= t(8) OR t(9);
END structural;
	