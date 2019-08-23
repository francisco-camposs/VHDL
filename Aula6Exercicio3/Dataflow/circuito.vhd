 LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY circuito IS
PORT (
	a, b, c, d: IN STD_LOGIC;
	x: OUT STD_LOGIC
);
END circuito;

ARCHITECTURE DATAFLOW OF circuito is
	signal e : STD_LOGIC;
	signal j : STD_LOGIC;
	signal f : STD_LOGIC;
	signal g : STD_LOGIC;
	signal h : STD_LOGIC;
	signal i : STD_LOGIC;
	signal k : STD_LOGIC;
	SIGNAL T : STD_LOGIC;

BEGIN
	e <= a and b; -- V
	j <= not(b and c); -- V
	f <= e or j; -- V
	g <= not(b) and not(c);  -- 	V
	T <= NOT(C OR G);
	h <= (not(d)) AND T; -- v
	X <= f or H;
END DATAFLOW;