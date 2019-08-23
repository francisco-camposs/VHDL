LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY  exercicio1b  IS
PORT (
	a : IN std_logic;
	b : IN std_logic;
	s : OUT std_logic
);
END exercicio1b;

ARCHITECTURE arq1b OF exercicio1b IS
BEGIN
	s <=  a nand b;
END arq1b;