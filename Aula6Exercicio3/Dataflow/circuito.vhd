LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY circuito IS
PORT (
	a, b, c, d: IN STD_LOGIC;
	x: OUT STD_LOGIC
);
END circuito;

ARCHITECTURE DATAFLOW OF circuito is
	signal f : STD_LOGIC;
	signal g : STD_LOGIC;
	signal h : STD_LOGIC;

BEGIN
	f <= (a and b) or (not(b and c));
	g <= not(b) and not(c);
	x <= (f) or (((not(d) and not(g)) or c) or not(c));

END DATAFLOW;