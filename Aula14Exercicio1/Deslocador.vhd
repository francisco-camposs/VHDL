LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Deslocador is
port (

	entrada : in std_logic_vector(0 to 7);
	esquerda, direita : in std_logic;
	saida : out std_logic_vector(0 to 7)

);
end Deslocador;

architecture logica of Deslocador is
begin 

	process (entrada, esquerda, direita)
	begin
		if (esquerda = '1') and (direita = '0') then
			saida <= entrada(1 to 7) & '0';
		elsif (esquerda = '0' and (direita = '1')) then
			saida <= '0' & entrada(0 to 6);
		else 
			saida <= entrada; 
		end if;
	end process;

end logica;