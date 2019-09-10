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
-- Generated on "09/10/2019 16:08:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          COMPARADOR5BITS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY COMPARADOR5BITS_vhd_vec_tst IS
END COMPARADOR5BITS_vhd_vec_tst;
ARCHITECTURE COMPARADOR5BITS_arch OF COMPARADOR5BITS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(0 TO 4);
SIGNAL B : STD_LOGIC_VECTOR(0 TO 4);
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT COMPARADOR5BITS
	PORT (
	A : IN STD_LOGIC_VECTOR(0 TO 4);
	B : IN STD_LOGIC_VECTOR(0 TO 4);
	X : BUFFER STD_LOGIC;
	Y : BUFFER STD_LOGIC;
	Z : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : COMPARADOR5BITS
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	X => X,
	Y => Y,
	Z => Z
	);
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
LOOP
	A(1) <= '0';
	WAIT FOR 20000 ps;
	A(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		A(0) <= '0';
		WAIT FOR 40000 ps;
		A(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '0';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
LOOP
	B(1) <= '0';
	WAIT FOR 5000 ps;
	B(1) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B_1;
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
END COMPARADOR5BITS_arch;
