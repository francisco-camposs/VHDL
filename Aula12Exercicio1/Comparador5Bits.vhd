LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY COMPARADOR5BITS IS
PORT(
	A, B : STD_LOGIC_VECTOR(0 TO 4);
	X, Y, Z : OUT STD_LOGIC
);
END COMPARADOR5BITS;

ARCHITECTURE LOGICA OF COMPARADOR5BITS IS

	COMPONENT COMPARADOR1BIT IS
	PORT (
		A,B : IN STD_LOGIC;
--		X EH PARA IGUALDADE, Y PARA MAIOR E Z PARA MENOR 
		X,Y,Z : OUT STD_LOGIC
		
	); END COMPONENT COMPARADOR1BIT;

	SIGNAL MAIOR: STD_LOGIC_VECTOR(0 TO 4);
	SIGNAL IGUAL: STD_LOGIC_VECTOR(0 TO 4);
	SIGNAL MENOR: STD_LOGIC_VECTOR(0 TO 4);
	
BEGIN

	G1 : COMPARADOR1BIT PORT MAP (A(0), B(0), IGUAL(0), MAIOR(0) , MENOR(0));
	G2 : COMPARADOR1BIT PORT MAP (A(1), B(1), IGUAL(1), MAIOR(1), MENOR(1));
	G3 : COMPARADOR1BIT PORT MAP (A(2), B(2), IGUAL(2), MAIOR(2), MENOR(2));
	G4 : COMPARADOR1BIT PORT MAP (A(3), B(3), IGUAL(3), MAIOR(3), MENOR(3));
	G5 : COMPARADOR1BIT PORT MAP (A(4), B(4), IGUAL(4), MAIOR(4), MENOR(4));
	
	X <= IGUAL(0) AND IGUAL(1) AND IGUAL(2) AND IGUAL(3) AND IGUAL(4);
	Y <= (((MAIOR(0) OR (IGUAL(0)AND MAIOR(1))) OR (IGUAL (0) AND IGUAL(1) AND MAIOR(2))) OR (IGUAL(0) AND IGUAL(1) AND IGUAL(2) AND MAIOR(3))) OR (IGUAL(0) AND IGUAL(1) AND IGUAL(2) AND IGUAL(3) AND MAIOR(4));
	Z <= (((MENOR(0) OR (IGUAL(0)AND MENOR(1))) OR (IGUAL (0) AND MENOR(1) AND MENOR(2))) OR (IGUAL(0) AND IGUAL(1) AND IGUAL(2) AND MENOR(3))) OR (IGUAL(0) AND IGUAL(1) AND IGUAL(2) AND IGUAL(3) AND MENOR(4));

END LOGICA;

