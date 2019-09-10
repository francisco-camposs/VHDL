LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DEMUX IS
PORT (
		A1 : IN STD_LOGIC;
		S0, S1 : IN STD_LOGIC;
		O1, O2, O3, O4 : OUT STD_LOGIC
); 
END DEMUX;

ARCHITECTURE LOGICA OF DEMUX IS
BEGIN
	PROCESS (S0, S1) IS
		BEGIN
			IF (S0 = '0' AND S1 = '0') THEN 
				O1 <= A1;
				O2 <= '0';
				O3 <= '0';
				O4 <= '0';
			ELSIF (S0 = '0' AND S1 = '1') THEN
				O1 <= '0';
				O2 <= A1;
				O3 <= '0';
				O4 <= '0';
			ELSIF (S0 = '1' AND S1 = '0') THEN
				O1 <= '0';
				O2 <= '0';
				O3 <= A1;
				O4 <= '0';
			ELSIF (S0 = '1' AND S1 = '1') THEN
				O1 <= '0';
				O2 <= '0';
				O3 <= '0';
				O4 <= A1;
		END IF;
	END PROCESS;
END LOGICA;
