LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DEMUX IS
PORT (
		A1 : IN STD_LOGIC;
		S1 : IN STD_LOGIC_VECTOR(0 TO 1);
		O1, O2, O3, O4 : OUT STD_LOGIC
); 
END DEMUX;

ARCHITECTURE LOGICA OF DEMUX IS
BEGIN

	PROCESS (S1) IS
	BEGIN
		CASE S1 IS
			WHEN "00"=> O1 <= A1;
							O2 <= '0';
							O3 <= '0';
							O4 <= '0';
			WHEN "01"=> O1 <= '0';
							O2 <= A1;
							O3 <= '0';
							O4 <= '0';
			WHEN "10"=> O1 <= '0';
							O2 <= '0';
							O3 <= A1;
							O4 <= '0';
			WHEN "11"=> O1 <= '0';
							O2 <= '0';
							O3 <= '0';
							O4 <= A1;
			WHEN OTHERS => O1 <= '0';
								O2 <= '0';
								O3 <= '0';
								O4 <= '0';
		END CASE;
	END PROCESS;

END LOGICA;