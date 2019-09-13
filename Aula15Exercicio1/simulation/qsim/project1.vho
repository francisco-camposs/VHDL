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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/13/2019 11:03:00"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	project1 IS
    PORT (
	j0 : IN std_logic;
	j1 : IN std_logic;
	j2 : IN std_logic;
	j3 : IN std_logic;
	luz1 : BUFFER std_logic;
	luz2 : BUFFER std_logic
	);
END project1;

-- Design Ports Information
-- luz1	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luz2	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j0	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j3	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j1	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j2	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF project1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_j0 : std_logic;
SIGNAL ww_j1 : std_logic;
SIGNAL ww_j2 : std_logic;
SIGNAL ww_j3 : std_logic;
SIGNAL ww_luz1 : std_logic;
SIGNAL ww_luz2 : std_logic;
SIGNAL \luz1~output_o\ : std_logic;
SIGNAL \luz2~output_o\ : std_logic;
SIGNAL \j3~input_o\ : std_logic;
SIGNAL \j2~input_o\ : std_logic;
SIGNAL \j1~input_o\ : std_logic;
SIGNAL \j0~input_o\ : std_logic;
SIGNAL \g1|s1~0_combout\ : std_logic;
SIGNAL \g1|s2~0_combout\ : std_logic;
SIGNAL \g1|ALT_INV_s2~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_j0 <= j0;
ww_j1 <= j1;
ww_j2 <= j2;
ww_j3 <= j3;
luz1 <= ww_luz1;
luz2 <= ww_luz2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\g1|ALT_INV_s2~0_combout\ <= NOT \g1|s2~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X27_Y73_N23
\luz1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1|s1~0_combout\,
	devoe => ww_devoe,
	o => \luz1~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\luz2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1|ALT_INV_s2~0_combout\,
	devoe => ww_devoe,
	o => \luz2~output_o\);

-- Location: IOIBUF_X25_Y73_N22
\j3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j3,
	o => \j3~input_o\);

-- Location: IOIBUF_X23_Y73_N8
\j2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j2,
	o => \j2~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\j1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j1,
	o => \j1~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\j0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j0,
	o => \j0~input_o\);

-- Location: LCCOMB_X26_Y72_N0
\g1|s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|s1~0_combout\ = (\j3~input_o\ & ((\j0~input_o\) # ((\j2~input_o\ & \j1~input_o\)))) # (!\j3~input_o\ & (\j2~input_o\ & (\j1~input_o\ & \j0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j3~input_o\,
	datab => \j2~input_o\,
	datac => \j1~input_o\,
	datad => \j0~input_o\,
	combout => \g1|s1~0_combout\);

-- Location: LCCOMB_X26_Y72_N2
\g1|s2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g1|s2~0_combout\ = (\j3~input_o\ & (!\j2~input_o\ & (!\j1~input_o\ & !\j0~input_o\))) # (!\j3~input_o\ & ((\j2~input_o\ & (!\j1~input_o\ & !\j0~input_o\)) # (!\j2~input_o\ & ((!\j0~input_o\) # (!\j1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j3~input_o\,
	datab => \j2~input_o\,
	datac => \j1~input_o\,
	datad => \j0~input_o\,
	combout => \g1|s2~0_combout\);

ww_luz1 <= \luz1~output_o\;

ww_luz2 <= \luz2~output_o\;
END structure;


