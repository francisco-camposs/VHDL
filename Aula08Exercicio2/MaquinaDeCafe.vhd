LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY MaquinaDeCafe is
PORT (
	INPUT : IN STD_LOGIC_VECTOR(0 TO 2);
	CAFE : OUT CHARACTER
); 
END MaquinaDeCafe;

ARCHITECTURE LOGICA OF MaquinaDeCafe IS
BEGIN 
	PROCESS (INPUT) IS
	BEGIN
	
		IF (INPUT = "001") THEN
			CAFE <= 'A';
		ELSIF (INPUT = "010") THEN
			CAFE <= 'B';
		ELSIF (INPUT = "010") THEN
			CAFE <= 'B';
		ELSIF(INPUT = "011") THEN
			CAFE <= 'C';
		ELSIF (INPUT = "100") THEN
			CAFE <= 'D';
		ELSIF (INPUT = "101") THEN
			CAFE <= 'E';
		ELSIF (INPUT = "110") THEN
			CAFE <= 'F';
		ELSIF (INPUT = "111") THEN
			CAFE <= 'G';
		ELSIF (INPUT = "000") THEN
			CAFE <= 'H';
		END IF;
	END PROCESS;
END LOGICA;