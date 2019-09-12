LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY MUX8bits is
PORT (
	A, B : in std_logic_vector(0 to 7);
	OP : in std_logic;
	S : out std_logic_vector(0 to 7)
);
END MUX8bits;

architecture logica of MUX8bits is
begin

	process (A, B, OP)
	BEGIN
		IF (OP = '0') then
			S(0 TO 7) <= A(0 TO 7);
		ELSIF (OP = '1') then
			S(0 TO 7) <= B(0 TO 7);
		END IF;
	END PROCESS;

end logica;