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
-- Generated on "08/29/2019 15:39:06"
                                                             
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
COMPONENT SUBTRATOR
	PORT (
	A1 : IN STD_LOGIC_VECTOR(0 TO 3);
	A2 : IN STD_LOGIC_VECTOR(0 TO 3);
	OVERFLOW : OUT STD_LOGIC;
	S1 : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;
BEGIN
	i1 : SUBTRATOR
	PORT MAP (
-- list connections between master ports and signals
	A1 => A1,
	A2 => A2,
	OVERFLOW => OVERFLOW,
	S1 => S1
	);
END SUBTRATOR_arch;
