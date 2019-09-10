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
-- Generated on "08/29/2019 13:44:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MaquinaDeCafe
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MaquinaDeCafe_vhd_vec_tst IS
END MaquinaDeCafe_vhd_vec_tst;
ARCHITECTURE MaquinaDeCafe_arch OF MaquinaDeCafe_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CAFE : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL INPUT : STD_LOGIC_VECTOR(0 TO 2);
COMPONENT MaquinaDeCafe
	PORT (
	CAFE : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	INPUT : IN STD_LOGIC_VECTOR(0 TO 2)
	);
END COMPONENT;
BEGIN
	i1 : MaquinaDeCafe
	PORT MAP (
-- list connections between master ports and signals
	CAFE => CAFE,
	INPUT => INPUT
	);
-- INPUT[2]
t_prcs_INPUT_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		INPUT(2) <= '0';
		WAIT FOR 40000 ps;
		INPUT(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	INPUT(2) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_2;
-- INPUT[1]
t_prcs_INPUT_1: PROCESS
BEGIN
LOOP
	INPUT(1) <= '0';
	WAIT FOR 20000 ps;
	INPUT(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_INPUT_1;
-- INPUT[0]
t_prcs_INPUT_0: PROCESS
BEGIN
LOOP
	INPUT(0) <= '0';
	WAIT FOR 10000 ps;
	INPUT(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_INPUT_0;
END MaquinaDeCafe_arch;
