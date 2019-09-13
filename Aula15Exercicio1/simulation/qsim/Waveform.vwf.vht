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
-- Generated on "09/13/2019 11:02:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          project1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY project1_vhd_vec_tst IS
END project1_vhd_vec_tst;
ARCHITECTURE project1_arch OF project1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL j0 : STD_LOGIC;
SIGNAL j1 : STD_LOGIC;
SIGNAL j2 : STD_LOGIC;
SIGNAL j3 : STD_LOGIC;
SIGNAL luz1 : STD_LOGIC;
SIGNAL luz2 : STD_LOGIC;
COMPONENT project1
	PORT (
	j0 : IN STD_LOGIC;
	j1 : IN STD_LOGIC;
	j2 : IN STD_LOGIC;
	j3 : IN STD_LOGIC;
	luz1 : BUFFER STD_LOGIC;
	luz2 : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : project1
	PORT MAP (
-- list connections between master ports and signals
	j0 => j0,
	j1 => j1,
	j2 => j2,
	j3 => j3,
	luz1 => luz1,
	luz2 => luz2
	);

-- j0
t_prcs_j0: PROCESS
BEGIN
LOOP
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_j0;

-- j1
t_prcs_j1: PROCESS
BEGIN
LOOP
	j1 <= '0';
	WAIT FOR 10000 ps;
	j1 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_j1;

-- j2
t_prcs_j2: PROCESS
BEGIN
LOOP
	j2 <= '0';
	WAIT FOR 20000 ps;
	j2 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_j2;

-- j3
t_prcs_j3: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		j3 <= '0';
		WAIT FOR 40000 ps;
		j3 <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	j3 <= '0';
WAIT;
END PROCESS t_prcs_j3;
END project1_arch;
