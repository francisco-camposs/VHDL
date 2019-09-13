LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Decodificador is
port (
	e1,e2 : in std_logic;
	luz1, luz2 : out std_logic
); end Decodificador;


architecture LOGICA of Decodificador is
begin
	luz1 <= e2;
	luz2 <= not(e1);
end LOGICA;