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
-- Generated on "09/12/2019 14:13:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Deslocador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Deslocador_vhd_vec_tst IS
END Deslocador_vhd_vec_tst;
ARCHITECTURE Deslocador_arch OF Deslocador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL direita : STD_LOGIC;
SIGNAL entrada : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL esquerda : STD_LOGIC;
SIGNAL saida : STD_LOGIC_VECTOR(0 TO 7);
COMPONENT Deslocador
	PORT (
	direita : IN STD_LOGIC;
	entrada : IN STD_LOGIC_VECTOR(0 TO 7);
	esquerda : IN STD_LOGIC;
	saida : OUT STD_LOGIC_VECTOR(0 TO 7)
	);
END COMPONENT;
BEGIN
	i1 : Deslocador
	PORT MAP (
-- list connections between master ports and signals
	direita => direita,
	entrada => entrada,
	esquerda => esquerda,
	saida => saida
	);
-- entrada[7]
t_prcs_entrada_7: PROCESS
BEGIN
	entrada(7) <= '1';
WAIT;
END PROCESS t_prcs_entrada_7;
-- entrada[6]
t_prcs_entrada_6: PROCESS
BEGIN
	entrada(6) <= '1';
WAIT;
END PROCESS t_prcs_entrada_6;
-- entrada[5]
t_prcs_entrada_5: PROCESS
BEGIN
	entrada(5) <= '1';
WAIT;
END PROCESS t_prcs_entrada_5;
-- entrada[4]
t_prcs_entrada_4: PROCESS
BEGIN
	entrada(4) <= '1';
WAIT;
END PROCESS t_prcs_entrada_4;
-- entrada[3]
t_prcs_entrada_3: PROCESS
BEGIN
	entrada(3) <= '1';
WAIT;
END PROCESS t_prcs_entrada_3;
-- entrada[2]
t_prcs_entrada_2: PROCESS
BEGIN
	entrada(2) <= '1';
WAIT;
END PROCESS t_prcs_entrada_2;
-- entrada[1]
t_prcs_entrada_1: PROCESS
BEGIN
	entrada(1) <= '1';
WAIT;
END PROCESS t_prcs_entrada_1;
-- entrada[0]
t_prcs_entrada_0: PROCESS
BEGIN
	entrada(0) <= '1';
WAIT;
END PROCESS t_prcs_entrada_0;

-- direita
t_prcs_direita: PROCESS
BEGIN
	direita <= '0';
WAIT;
END PROCESS t_prcs_direita;

-- esquerda
t_prcs_esquerda: PROCESS
BEGIN
	esquerda <= '0';
WAIT;
END PROCESS t_prcs_esquerda;
END Deslocador_arch;
