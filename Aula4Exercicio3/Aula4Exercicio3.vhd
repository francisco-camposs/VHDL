LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Aula4Exercicio3 IS
PORT (
	A,B : IN STD_LOGIC;
	C : OUT STD_LOGIC
);
END Aula4Exercicio3;

ARCHITECTURE NNAND OF Aula4Exercicio3 IS
BEGIN
	C <= NOT(A AND B);
END NNAND;