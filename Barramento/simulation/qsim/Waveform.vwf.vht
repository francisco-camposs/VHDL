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
-- Generated on "08/22/2019 14:39:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula4Exercicio1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula4Exercicio1_vhd_vec_tst IS
END Aula4Exercicio1_vhd_vec_tst;
ARCHITECTURE Aula4Exercicio1_arch OF Aula4Exercicio1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Aula4Exercicio1
	PORT (
	A1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B1 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula4Exercicio1
	PORT MAP (
-- list connections between master ports and signals
	A1 => A1,
	B1 => B1
	);
-- A1[3]
t_prcs_A1_3: PROCESS
BEGIN
LOOP
	A1(3) <= '0';
	WAIT FOR 5000 ps;
	A1(3) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A1_3;
-- A1[2]
t_prcs_A1_2: PROCESS
BEGIN
LOOP
	A1(2) <= '0';
	WAIT FOR 10000 ps;
	A1(2) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A1_2;
-- A1[1]
t_prcs_A1_1: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		A1(1) <= '0';
		WAIT FOR 15000 ps;
		A1(1) <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	A1(1) <= '0';
WAIT;
END PROCESS t_prcs_A1_1;
-- A1[0]
t_prcs_A1_0: PROCESS
BEGIN
LOOP
	A1(0) <= '0';
	WAIT FOR 20000 ps;
	A1(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A1_0;
END Aula4Exercicio1_arch;
