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
-- Generated on "09/10/2019 13:45:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SUBTRATOR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SUBTRATOR_vhd_vec_tst IS
END SUBTRATOR_vhd_vec_tst;
ARCHITECTURE SUBTRATOR_arch OF SUBTRATOR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A1 : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL A2 : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL OVERFLOW : STD_LOGIC;
SIGNAL S1 : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL TESTE : STD_LOGIC;
COMPONENT SUBTRATOR
	PORT (
	A1 : IN STD_LOGIC_VECTOR(0 TO 3);
	A2 : IN STD_LOGIC_VECTOR(0 TO 3);
	OVERFLOW : OUT STD_LOGIC;
	S1 : OUT STD_LOGIC_VECTOR(0 TO 3);
	TESTE : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SUBTRATOR
	PORT MAP (
-- list connections between master ports and signals
	A1 => A1,
	A2 => A2,
	OVERFLOW => OVERFLOW,
	S1 => S1,
	TESTE => TESTE
	);
-- A1[3]
t_prcs_A1_3: PROCESS
BEGIN
	FOR i IN 1 TO 62
	LOOP
		A1(3) <= '0';
		WAIT FOR 8000 ps;
		A1(3) <= '1';
		WAIT FOR 8000 ps;
	END LOOP;
	A1(3) <= '0';
WAIT;
END PROCESS t_prcs_A1_3;
-- A1[2]
t_prcs_A1_2: PROCESS
BEGIN
LOOP
	A1(2) <= '0';
	WAIT FOR 4000 ps;
	A1(2) <= '1';
	WAIT FOR 4000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A1_2;
-- A1[1]
t_prcs_A1_1: PROCESS
BEGIN
LOOP
	A1(1) <= '0';
	WAIT FOR 2000 ps;
	A1(1) <= '1';
	WAIT FOR 2000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A1_1;
-- A1[0]
t_prcs_A1_0: PROCESS
BEGIN
LOOP
	A1(0) <= '0';
	WAIT FOR 1000 ps;
	A1(0) <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A1_0;
-- A2[3]
t_prcs_A2_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		A2(3) <= '0';
		WAIT FOR 128000 ps;
		A2(3) <= '1';
		WAIT FOR 128000 ps;
	END LOOP;
	A2(3) <= '0';
	WAIT FOR 128000 ps;
	A2(3) <= '1';
WAIT;
END PROCESS t_prcs_A2_3;
-- A2[2]
t_prcs_A2_2: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		A2(2) <= '0';
		WAIT FOR 64000 ps;
		A2(2) <= '1';
		WAIT FOR 64000 ps;
	END LOOP;
	A2(2) <= '0';
	WAIT FOR 64000 ps;
	A2(2) <= '1';
WAIT;
END PROCESS t_prcs_A2_2;
-- A2[1]
t_prcs_A2_1: PROCESS
BEGIN
	FOR i IN 1 TO 15
	LOOP
		A2(1) <= '0';
		WAIT FOR 32000 ps;
		A2(1) <= '1';
		WAIT FOR 32000 ps;
	END LOOP;
	A2(1) <= '0';
	WAIT FOR 32000 ps;
	A2(1) <= '1';
WAIT;
END PROCESS t_prcs_A2_1;
-- A2[0]
t_prcs_A2_0: PROCESS
BEGIN
	FOR i IN 1 TO 31
	LOOP
		A2(0) <= '0';
		WAIT FOR 16000 ps;
		A2(0) <= '1';
		WAIT FOR 16000 ps;
	END LOOP;
	A2(0) <= '0';
WAIT;
END PROCESS t_prcs_A2_0;
END SUBTRATOR_arch;
