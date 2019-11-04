-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/04/2019 20:49:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          AULA26EXERCICIO2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY AULA26EXERCICIO2_vhd_vec_tst IS
END AULA26EXERCICIO2_vhd_vec_tst;
ARCHITECTURE AULA26EXERCICIO2_arch OF AULA26EXERCICIO2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BT : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL SAIDA : STD_LOGIC_VECTOR(0 TO 1);
COMPONENT AULA26EXERCICIO2
	PORT (
	BT : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	SAIDA : OUT STD_LOGIC_VECTOR(0 TO 1)
	);
END COMPONENT;
BEGIN
	i1 : AULA26EXERCICIO2
	PORT MAP (
-- list connections between master ports and signals
	BT => BT,
	CLK => CLK,
	SAIDA => SAIDA
	);

-- BT
t_prcs_BT: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		BT <= '0';
		WAIT FOR 60000 ps;
		BT <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	BT <= '0';
WAIT;
END PROCESS t_prcs_BT;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 20000 ps;
	CLK <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
END AULA26EXERCICIO2_arch;
