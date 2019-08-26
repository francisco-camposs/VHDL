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
-- Generated on "08/26/2019 16:04:54"
                                                             
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
SIGNAL S1 : STD_LOGIC_VECTOR(0 TO 1);
COMPONENT DEMUX
	PORT (
	A1 : IN STD_LOGIC;
	O1 : BUFFER STD_LOGIC;
	O2 : BUFFER STD_LOGIC;
	O3 : BUFFER STD_LOGIC;
	O4 : BUFFER STD_LOGIC;
	S1 : IN STD_LOGIC_VECTOR(0 TO 1)
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
	S1 => S1
	);

-- A1
t_prcs_A1: PROCESS
BEGIN
	A1 <= '1';
WAIT;
END PROCESS t_prcs_A1;

-- S1[0]
t_prcs_S1_0: PROCESS
BEGIN
	S1(0) <= '0';
WAIT;
END PROCESS t_prcs_S1_0;

-- S1[1]
t_prcs_S1_1: PROCESS
BEGIN
	S1(1) <= '1';
WAIT;
END PROCESS t_prcs_S1_1;
END DEMUX_arch;
