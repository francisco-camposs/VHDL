LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Codificador is
port (

	j0,j1,j2,j3 : in std_logic;
	s1, s2 : out std_logic

); end Codificador;


architecture LOGICA of Codificador is
begin
	s1 <= (j1 and j2 and j3)or(j0 and j1 and j2)or(j0 and j0 and j3)or(j0 and j1 and j3);
--	s2 <= (j0 and j2)or(j1 and j2)or(j3 and j1)or(j0 and j3)or(not(j0) and j2 and j3)or(not(j2) and j0 and j1)or(not(j3) and j0 and j1)or(not(j1 and j2 and j3));
	S2 <= NOT((NOT(J0) AND NOT(J1) AND NOT(J2)) OR (NOT(J0) AND NOT(J2) AND NOT(J3))OR(NOT(J0) AND NOT(J1) AND NOT(J3))OR(NOT(J1) AND NOT(J2) AND NOT(J3)));
end LOGICA;