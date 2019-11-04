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
-- Generated on "11/04/2019 15:13:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula26Exercicio1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula26Exercicio1_vhd_vec_tst IS
END Aula26Exercicio1_vhd_vec_tst;
ARCHITECTURE Aula26Exercicio1_arch OF Aula26Exercicio1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BT : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL EstadoAtual : STD_LOGIC_VECTOR(0 TO 1);
SIGNAL LUZ1 : STD_LOGIC;
SIGNAL LUZ2 : STD_LOGIC;
SIGNAL LUZ3 : STD_LOGIC;
SIGNAL ProximoEstado : STD_LOGIC_VECTOR(0 TO 1);
SIGNAL X : STD_LOGIC;
COMPONENT Aula26Exercicio1
	PORT (
	BT : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	EstadoAtual : IN STD_LOGIC_VECTOR(0 TO 1);
	LUZ1 : INOUT STD_LOGIC;
	LUZ2 : INOUT STD_LOGIC;
	LUZ3 : INOUT STD_LOGIC;
	ProximoEstado : INOUT STD_LOGIC_VECTOR(0 TO 1);
	X : INOUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Aula26Exercicio1
	PORT MAP (
-- list connections between master ports and signals
	BT => BT,
	CLK => CLK,
	EstadoAtual => EstadoAtual,
	LUZ1 => LUZ1,
	LUZ2 => LUZ2,
	LUZ3 => LUZ3,
	ProximoEstado => ProximoEstado,
	X => X
	);

-- BT
t_prcs_BT: PROCESS
BEGIN
LOOP
	BT <= '0';
	WAIT FOR 2000 ps;
	BT <= '1';
	WAIT FOR 2000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_BT;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;
-- EstadoAtual[1]
t_prcs_EstadoAtual_1: PROCESS
BEGIN
	FOR i IN 1 TO 62
	LOOP
		EstadoAtual(1) <= '0';
		WAIT FOR 8000 ps;
		EstadoAtual(1) <= '1';
		WAIT FOR 8000 ps;
	END LOOP;
	EstadoAtual(1) <= '0';
WAIT;
END PROCESS t_prcs_EstadoAtual_1;
-- EstadoAtual[0]
t_prcs_EstadoAtual_0: PROCESS
BEGIN
LOOP
	EstadoAtual(0) <= '0';
	WAIT FOR 4000 ps;
	EstadoAtual(0) <= '1';
	WAIT FOR 4000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_EstadoAtual_0;

-- LUZ1
t_prcs_LUZ1: PROCESS
BEGIN
	LUZ1 <= 'Z';
WAIT;
END PROCESS t_prcs_LUZ1;

-- LUZ2
t_prcs_LUZ2: PROCESS
BEGIN
	LUZ2 <= 'Z';
WAIT;
END PROCESS t_prcs_LUZ2;

-- LUZ3
t_prcs_LUZ3: PROCESS
BEGIN
	LUZ3 <= 'Z';
WAIT;
END PROCESS t_prcs_LUZ3;
-- ProximoEstado[1]
t_prcs_ProximoEstado_1: PROCESS
BEGIN
	ProximoEstado(1) <= 'Z';
WAIT;
END PROCESS t_prcs_ProximoEstado_1;
-- ProximoEstado[0]
t_prcs_ProximoEstado_0: PROCESS
BEGIN
	ProximoEstado(0) <= 'Z';
WAIT;
END PROCESS t_prcs_ProximoEstado_0;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= 'Z';
WAIT;
END PROCESS t_prcs_X;
END Aula26Exercicio1_arch;
