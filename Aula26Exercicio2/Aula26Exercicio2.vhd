LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AULA26EXERCICIO2 IS
PORT (
	BT : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	SAIDA : OUT STD_LOGIC_VECTOR(0 TO 1)
);
END AULA26EXERCICIO2;

ARCHITECTURE LOGICA OF AULA26EXERCICIO2 IS

	CONSTANT ESTADO_000 : STD_LOGIC_VECTOR(0 TO 2) := "000";
	CONSTANT ESTADO_001 : STD_LOGIC_VECTOR(0 TO 2) := "001";
	CONSTANT ESTADO_010 : STD_LOGIC_VECTOR(0 TO 2) := "010";
	CONSTANT ESTADO_011 : STD_LOGIC_VECTOR(0 TO 2) := "011";
	CONSTANT ESTADO_100 : STD_LOGIC_VECTOR(0 TO 2) := "100";
	CONSTANT ESTADO_101 : STD_LOGIC_VECTOR(0 TO 2) := "101";
	CONSTANT ESTADO_110 : STD_LOGIC_VECTOR(0 TO 2) := "110";
	CONSTANT ESTADO_111 : STD_LOGIC_VECTOR(0 TO 2) := "111";
	SIGNAL ESTADO : STD_LOGIC_VECTOR(0 TO 2) := ESTADO_001;
	
	CONSTANT QuilometragemParcial : std_LOGIC_VECTOR(0 TO 1) := "00";
	CONSTANT QuilometragemTotal : std_LOGIC_VECTOR(0 TO 1) := "01";
	CONSTANT ConsumoDeCombustivel : std_LOGIC_VECTOR(0 TO 1) := "10";
	CONSTANT QuantidadeDeCombustivelRestante : std_LOGIC_VECTOR(0 TO 1) := "11";
	
	
BEGIN

	PROCESS (BT)
	begin
	IF (CLK'EVENT AND CLK = '1') THEN
	
		CASE ESTADO IS
			WHEN ESTADO_001 => 
				IF (BT = '1') THEN
					SAIDA <= ConsumoDeCombustivel;
					ESTADO <= ESTADO_101;
				ELSE
					SAIDA <= quilometragemParcial;			
				END IF;
				
			WHEN ESTADO_101 => 
				IF (BT = '0') THEN
					SAIDA <= ConsumoDeCombustivel;
					ESTADO <= ESTADO_010;
				ELSE
					SAIDA <= ConsumoDeCombustivel;			
				END IF;
				
			WHEN ESTADO_010 => 
				IF (BT = '1') THEN
					SAIDA <= QuantidadeDeCombustivelRestante;
					ESTADO <= ESTADO_110;
				ELSE
					SAIDA <= ConsumoDeCombustivel;			
				END IF;

			WHEN ESTADO_110 => 
				IF (BT = '0') THEN
					SAIDA <= QuantidadeDeCombustivelRestante;
					ESTADO <= ESTADO_011;
				ELSE
					SAIDA <= QuantidadeDeCombustivelRestante;			
				END IF;
				

			WHEN ESTADO_011 => 
				IF (BT = '1') THEN
					SAIDA <= QuilometragemParcial;
					ESTADO <= ESTADO_111;
				ELSE
					SAIDA <= QuantidadeDeCombustivelRestante;			
				END IF;
				
			WHEN ESTADO_111 => 
				IF (BT = '0') THEN
					SAIDA <= QuilometragemParcial;
					ESTADO <= ESTADO_000;
				ELSE
					SAIDA <= QuilometragemParcial;			
				END IF;
				
			WHEN ESTADO_000 => 
				IF (BT = '1') THEN
					SAIDA <= QuilometragemTotal;
					ESTADO <= ESTADO_100;
				ELSE
					SAIDA <= QuilometragemParcial;			
				END IF;
				
			WHEN ESTADO_100 => 
				IF (BT = '0') THEN
					SAIDA <= QuilometragemParcial;
					ESTADO <= ESTADO_001;
				ELSE
					SAIDA <= QuilometragemTotal;			
				END IF;
				
			END CASE;

		END IF;
	
	END PROCESS;

END LOGICA;