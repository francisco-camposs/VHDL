LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY moore IS
PORT (
	BT, CLK : IN STD_LOGIC;
	LUZ1 : OUT STD_LOGIC;
	LUZ2 : OUT STD_LOGIC;
	LUZ3 : OUT STD_LOGIC;
	X : INOUT STD_LOGIC
); 
END moore;

ARCHITECTURE LOGICA OF moore IS
	CONSTANT FECHA1 : STD_LOGIC_VECTOR(0 TO 1) := "00";
	CONSTANT FECHA2 : STD_LOGIC_VECTOR(0 TO 1) := "01";
	CONSTANT FECHA3 : STD_LOGIC_VECTOR(0 TO 1) := "10";
	CONSTANT ABRE	: STD_LOGIC_VECTOR(0 TO 1) := "11";
	SIGNAL ESTADO : STD_LOGIC_VECTOR(0 TO 1) := FECHA1;
	
BEGIN 
	PROCESS (BT, CLK, X)
	BEGIN
		IF(CLK'EVENT AND CLK = '1') THEN
			CASE ESTADO IS
				WHEN (FECHA1) =>
					if (BT = '1') then
						ESTADO <= FECHA2;
					END IF;
				WHEN (FECHA2) =>
					if (BT = '1') then
						ESTADO <= FECHA3;
					END IF;
				WHEN (FECHA3) =>
					if (BT = '1') then
						ESTADO <= ABRE;
					END IF;
				WHEN OTHERS =>
					if (BT = '1') then
						ESTADO <= FECHA1;
					END IF;
			END CASE;
			IF (ESTADO = FECHA1) THEN
				LUZ1 <= '0';
				LUZ2 <= '0';
				LUZ3 <= '0';
				X <= '0';
			ELSIF (ESTADO = FECHA2) THEN
				LUZ1 <= '1';
				LUZ2 <= '0';
				LUZ3 <= '0';
				X <= '0';
			ELSIF (ESTADO = FECHA3) THEN
				LUZ1 <= '0';
				LUZ2 <= '1';
				LUZ3 <= '0';
				X <= '0';
			ELSE
				LUZ1 <= '0';
				LUZ2 <= '0';
				LUZ3 <= '1';
				X <= '1';
			END IF;
		END IF;

	END PROCESS;

END LOGICA;