ENTITY decodificador IS
	PORT(s : IN BIT_VECTOR(3 DOWNTO 0);
		  a, b, c, d, e, f, g : OUT BIT);
-------------------------------------------------------------------------------------------------------------------------------------------------
ARCHITECTURE structural OF decodificador IS
	a <= s(1) OR s(3) OR (NOT s(2) AND NOT s(0)) OR (s(2) AND s(0)); 
	b <= NOT s(2) OR (NOT s(1) AND NOT s(0)) OR (s(1) AND s(0));
	c <= NOT s(1) OR s(0) OR s(2);
	d <= (NOT s(2) AND NOT s(0)) OR (NOT s(2) AND s(1)) OR (s(1) AND NOT s(0)) OR (s(2) AND NOT s(1) AND s(0));
	e <= (NOT s(2) AND NOT s(0)) OR (s(1) AND NOT s(0));
	f <= s(3) OR (NOT s(1) AND NOT s(0)) OR (s(2) AND NOT s(1)) OR (s(2) AND NOT s(0));
	g <=