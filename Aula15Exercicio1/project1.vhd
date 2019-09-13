LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity project1 is
port (
	-- Cada entrada corresponde a um dos 4 juizes.
	j0,j1,j2,j3 : in std_logic;
	-- A luze eh a luz verde e a luz2 eh a luz vermelha.
	luzVerde, luzVermelha : out std_logic

); end project1;


architecture LOGICA of project1 is
component Codificador is
port (
	j0,j1,j2,j3 : in std_logic;
	s1, s2 : out std_logic
); end component Codificador;

component Decodificador is
port (
	e1,e2 : in std_logic;
	luz1, luz2 : out std_logic
);
end component Decodificador;

signal sig1: std_logic;
signal sig2: std_logic;

begin

	g1 : Codificador port map (j0,j1,j2,j3, sig1, sig2);
	g2 : Decodificador port map (sig1, sig2, luzVerde, luzVermelha);


end LOGICA;