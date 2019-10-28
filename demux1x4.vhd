LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY demux1x4 IS
	PORT(a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		  s1, s2, s3, s4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END demux1x4;		  
-------------------------------------------------------------------------------------------------------------------------------------------------
ARCHITECTURE structural OF demux1x4 IS
BEGIN
	s1(0) <= (a(0) AND (NOT sel(0) AND NOT sel(1)));
	s1(1) <= (a(1) AND (NOT sel(0) AND NOT sel(1)));
	s1(2) <= (a(2) AND (NOT sel(0) AND NOT sel(1)));
	s1(3) <= (a(3) AND (NOT sel(0) AND NOT sel(1)));
	
	s2(0) <= (a(0) AND (sel(0) AND NOT sel(1)));
	s2(1) <= (a(1) AND (sel(0) AND NOT sel(1)));
	s2(2) <= (a(2) AND (sel(0) AND NOT sel(1)));
	s2(3) <= (a(3) AND (sel(0) AND NOT sel(1)));
	
	s3(0) <= (a(0) AND (NOT sel(0) AND sel(1)));
	s3(1) <= (a(1) AND (NOT sel(0) AND sel(1)));
	s3(2) <= (a(2) AND (NOT sel(0) AND sel(1)));
	s3(3) <= (a(3) AND (NOT sel(0) AND sel(1)));
	
	s4(0) <= (a(0) AND (sel(0) AND sel(1)));
	s4(1) <= (a(0) AND (sel(0) AND sel(1)));
	s4(2) <= (a(0) AND (sel(0) AND sel(1)));
	s4(3) <= (a(0) AND (sel(0) AND sel(1)));
END structural;