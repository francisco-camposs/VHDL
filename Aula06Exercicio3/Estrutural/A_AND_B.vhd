LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY A_AND_B IS
PORT (
	a, b : IN STD_LOGIC;
	x : OUT STD_LOGIC
);
END A_AND_B;

ARCHITECTURE LOGICA OF A_AND_B IS
BEGIN
	X <= A AND B;
END LOGICA;