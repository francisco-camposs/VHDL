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
-- Generated on "08/22/2019 13:42:07"
                                                             
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
SIGNAL E1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL S1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Aula4Exercicio1
	PORT (
	E1 : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	S1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula4Exercicio1
	PORT MAP (
-- list connections between master ports and signals
	E1 => E1,
	S1 => S1
	);
-- E1[7]
t_prcs_E1_7: PROCESS
BEGIN
LOOP
	E1(7) <= '0';
	WAIT FOR 5000 ps;
	E1(7) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_E1_7;
-- E1[6]
t_prcs_E1_6: PROCESS
BEGIN
LOOP
	E1(6) <= '0';
	WAIT FOR 5000 ps;
	E1(6) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_E1_6;
-- E1[5]
t_prcs_E1_5: PROCESS
BEGIN
LOOP
	E1(5) <= '0';
	WAIT FOR 5000 ps;
	E1(5) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_E1_5;
-- E1[4]
t_prcs_E1_4: PROCESS
BEGIN
LOOP
	E1(4) <= '0';
	WAIT FOR 5000 ps;
	E1(4) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_E1_4;
-- E1[3]
t_prcs_E1_3: PROCESS
BEGIN
LOOP
	E1(3) <= '0';
	WAIT FOR 5000 ps;
	E1(3) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_E1_3;
-- E1[2]
t_prcs_E1_2: PROCESS
BEGIN
LOOP
	E1(2) <= '0';
	WAIT FOR 5000 ps;
	E1(2) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_E1_2;
-- E1[1]
t_prcs_E1_1: PROCESS
BEGIN
LOOP
	E1(1) <= '0';
	WAIT FOR 5000 ps;
	E1(1) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_E1_1;
-- E1[0]
t_prcs_E1_0: PROCESS
BEGIN
LOOP
	E1(0) <= '0';
	WAIT FOR 5000 ps;
	E1(0) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_E1_0;
END Aula4Exercicio1_arch;
