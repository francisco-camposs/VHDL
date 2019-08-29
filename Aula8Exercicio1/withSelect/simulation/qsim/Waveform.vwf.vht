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
-- Generated on "08/29/2019 13:30:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DEMUX
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DEMUX_vhd_vec_tst IS
END DEMUX_vhd_vec_tst;
ARCHITECTURE DEMUX_arch OF DEMUX_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A1 : STD_LOGIC;
SIGNAL O1 : STD_LOGIC;
SIGNAL O2 : STD_LOGIC;
SIGNAL O3 : STD_LOGIC;
SIGNAL O4 : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
COMPONENT DEMUX
	PORT (
	A1 : IN STD_LOGIC;
	O1 : OUT STD_LOGIC;
	O2 : OUT STD_LOGIC;
	O3 : OUT STD_LOGIC;
	O4 : OUT STD_LOGIC;
	S0 : IN STD_LOGIC;
	S1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DEMUX
	PORT MAP (
-- list connections between master ports and signals
	A1 => A1,
	O1 => O1,
	O2 => O2,
	O3 => O3,
	O4 => O4,
	S0 => S0,
	S1 => S1
	);

-- A1
t_prcs_A1: PROCESS
BEGIN
	A1 <= '1';
WAIT;
END PROCESS t_prcs_A1;

-- S0
t_prcs_S0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		S0 <= '0';
		WAIT FOR 30000 ps;
		S0 <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	S0 <= '0';
	WAIT FOR 30000 ps;
	S0 <= '1';
WAIT;
END PROCESS t_prcs_S0;

-- S1
t_prcs_S1: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		S1 <= '0';
		WAIT FOR 15000 ps;
		S1 <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	S1 <= '0';
WAIT;
END PROCESS t_prcs_S1;
END DEMUX_arch;
