LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ULA is
PORT (
	A, B : in std_logic_vector(0 to 7);
	M, S1, S2 : IN STD_LOGIC;
	S : out std_logic_vector(0 to 7);
	LUZ1 : OUT STD_LOGIC;
	LUZ2 : OUT STD_LOGIC
);
END ULA;

architecture logica of ULA is

	COMPONENT MUX8bits IS
	PORT (
		A, B : in std_logic_vector(0 to 7);
		OP : in std_logic;
		S : out std_logic_vector(0 to 7)
	);
	END COMPONENT MUX8bits;
--	
	COMPONENT SomadorSubtrator is
	port (
			A,B : IN STD_LOGIC_VECTOR(0 TO 7);
			OP : IN STD_LOGIC;
			S: OUT STD_LOGIC_VECTOR(0 TO 7);
			LUZ1 : OUT STD_LOGIC;
			LUZ2 : OUT STD_LOGIC
	);
	END COMPONENT SomadorSubtrator;
	
	SIGNAL LOGIC : STD_LOGIC;
	
	SIGNAL IB1: STD_LOGIC_VECTOR(0 TO 7);
	SIGNAL IB2: STD_LOGIC_VECTOR(0 TO 7);
	
	SIGNAL IA1: STD_LOGIC_VECTOR(0 TO 7);
	SIGNAL IA2: STD_LOGIC_VECTOR(0 TO 7);
	SIGNAL IA3: STD_LOGIC_VECTOR(0 TO 7);
	SIGNAL IA4: STD_LOGIC_VECTOR(0 TO 7);

begin

--iMPLEMENTAÇAO BURRA

-- Estabelecido o sinal do primeiro carry do somador subtrator.
	lOGIC <= (NOT(M) AND NOT(S1) AND S1) OR (NOT(M) AND S1 AND NOT(S2));
	
	G1 : MUX8bits PORT MAP (B,NOT(B),S2, IB1);
	G2 : MUX8bits PORT MAP (IB1, "00000000", ((NOT(M)AND(S1)) OR ((S1)AND(NOT(S2))) OR ((M) AND (NOT(S1))) OR (NOT(S2) AND M)), IB2);
	
	
	
	G3 : MUX8bits PORT MAP (A, A AND B, M, IA1);
	G4 : MUX8bits PORT MAP (A OR B, A XOR B, S1, IA2);
	G5 : MUX8bits PORT MAP (IA1, IA2, S1 XOR S2, IA3);
	G6 : MUX8bits PORT MAP (IA3, "00000000", M AND S1 AND S2, IA4);
	
	G8 : SomadorSubtrator PORT MAP (IA4, IB2, LOGIC, S, LUZ1, LUZ2);

end logica;