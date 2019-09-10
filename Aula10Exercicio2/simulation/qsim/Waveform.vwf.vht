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
-- Generated on "09/10/2019 15:04:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SOMADORSUBTRATOR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SOMADORSUBTRATOR_vhd_vec_tst IS
END SOMADORSUBTRATOR_vhd_vec_tst;
ARCHITECTURE SOMADORSUBTRATOR_arch OF SOMADORSUBTRATOR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL B : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL LUZ1 : STD_LOGIC;
SIGNAL LUZ2 : STD_LOGIC;
SIGNAL OP : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(0 TO 7);
COMPONENT SOMADORSUBTRATOR
	PORT (
	A : IN STD_LOGIC_VECTOR(0 TO 7);
	B : IN STD_LOGIC_VECTOR(0 TO 7);
	LUZ1 : OUT STD_LOGIC;
	LUZ2 : OUT STD_LOGIC;
	OP : IN STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR(0 TO 7)
	);
END COMPONENT;
BEGIN
	i1 : SOMADORSUBTRATOR
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	LUZ1 => LUZ1,
	LUZ2 => LUZ2,
	OP => OP,
	S => S
	);

-- A[0]
t_prcs_A_0: PROCESS
BEGIN
LOOP
	A(0) <= '0';
	WAIT FOR 5000 ps;
	A(0) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_0;

-- B[0]
t_prcs_B_0: PROCESS
BEGIN
LOOP
	B(0) <= '0';
	WAIT FOR 10000 ps;
	B(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B_0;

-- OP
t_prcs_OP: PROCESS
BEGIN
LOOP
	OP <= '0';
	WAIT FOR 20000 ps;
	OP <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_OP;
END SOMADORSUBTRATOR_arch;
