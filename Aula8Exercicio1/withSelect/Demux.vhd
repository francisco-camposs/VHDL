LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DEMUX IS
PORT(

	A1 : IN STD_LOGIC;
	S0, S1 : IN STD_LOGIC;
	O1,O2,O3,O4 : OUT STD_LOGIC
); 
END DEMUX;

ARCHITECTURE LOGICA OF DEMUX IS
BEGIN

	WITH NOT(S0 OR S1) SELECT
		O1 <= A1 WHEN '1', '0' WHEN '0';
		
	WITH ((S1 AND NOT(S0)) OR (NOT(S1) AND S0))AND S0 SELECT
			O2 <= A1 WHEN '1', '0' WHEN '0';
			
	WITH ((S1 AND NOT(S0)) OR (NOT(S1) AND S0)) AND S1 SELECT
			O3 <= A1 WHEN '1', '0' WHEN '0';
			
	WITH (S0 AND S1) SELECT
		O4 <= A1 WHEN '1', '0' WHEN '0';

END LOGICA;