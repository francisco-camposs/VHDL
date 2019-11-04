library ieee;
use ieee.std_logic_1164.all;

entity Mealy is
port (
	A : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	X, Y : OUT STD_LOGIC
);
end Mealy;

architecture logica of Mealy is
	CONSTANT E1 : STD_LOGIC_VECTOR(0 TO 1) := "00";
	CONSTANT E2 : STD_LOGIC_VECTOR(0 TO 1) := "01";
	CONSTANT E3 : STD_LOGIC_VECTOR(0 TO 1) := "10";
	CONSTANT E4 : STD_LOGIC_VECTOR(0 TO 1) := "11";
	SIGNAL ESTADO : STD_LOGIC_VECTOR(0 TO 1) := E1;

begin

	process(A, clk)
	begin
		if (clk'event and clk = '1') then
			case estado is
				when e1 =>
					x <= '0';
					y <= '0';
					estado <= e2;
				when e2 =>
					x <= '0';
					y <= '1';
					estado <= e3;
				when e3 =>
					if (a = '1') then
						x <= '1';
						y <= '0';
						estado <= e2;
					else
						x <= '1';
						y <= '1';
						estado <= e4;
					end if;
				when e4 =>
					if (a = '1') then
						x <= '1';
						y <= '1';
					else
						x <= '0';
						y <= '0';
						estado <= e1;
					end if;
			end case;
		end if;
	
	end process;
	
	
end;