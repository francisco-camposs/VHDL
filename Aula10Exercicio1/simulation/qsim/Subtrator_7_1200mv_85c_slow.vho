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

-- DATE "09/10/2019 13:10:45"

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

ENTITY 	SUBTRATOR IS
    PORT (
	A1 : IN std_logic_vector(0 TO 3);
	A2 : IN std_logic_vector(0 TO 3);
	S1 : OUT std_logic_vector(0 TO 3);
	OVERFLOW : OUT std_logic
	);
END SUBTRATOR;

-- Design Ports Information
-- A1[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[2]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[3]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[2]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[1]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[3]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[1]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OVERFLOW	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[0]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SUBTRATOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A1 : std_logic_vector(0 TO 3);
SIGNAL ww_A2 : std_logic_vector(0 TO 3);
SIGNAL ww_S1 : std_logic_vector(0 TO 3);
SIGNAL ww_OVERFLOW : std_logic;
SIGNAL \A1[3]~input_o\ : std_logic;
SIGNAL \A1[2]~input_o\ : std_logic;
SIGNAL \A1[1]~input_o\ : std_logic;
SIGNAL \A2[3]~input_o\ : std_logic;
SIGNAL \A2[2]~input_o\ : std_logic;
SIGNAL \A2[1]~input_o\ : std_logic;
SIGNAL \S1[3]~output_o\ : std_logic;
SIGNAL \S1[2]~output_o\ : std_logic;
SIGNAL \S1[1]~output_o\ : std_logic;
SIGNAL \S1[0]~output_o\ : std_logic;
SIGNAL \OVERFLOW~output_o\ : std_logic;
SIGNAL \A1[0]~input_o\ : std_logic;
SIGNAL \A2[0]~input_o\ : std_logic;
SIGNAL \G1|S~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A1 <= A1;
ww_A2 <= A2;
S1 <= ww_S1;
OVERFLOW <= ww_OVERFLOW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y62_N23
\S1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S1[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\S1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S1[2]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\S1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S1[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\S1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|S~0_combout\,
	devoe => ww_devoe,
	o => \S1[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\OVERFLOW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OVERFLOW~output_o\);

-- Location: IOIBUF_X0_Y4_N1
\A1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(0),
	o => \A1[0]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\A2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(0),
	o => \A2[0]~input_o\);

-- Location: LCCOMB_X1_Y4_N16
\G1|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1|S~0_combout\ = \A1[0]~input_o\ $ (\A2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[0]~input_o\,
	datad => \A2[0]~input_o\,
	combout => \G1|S~0_combout\);

-- Location: IOIBUF_X81_Y73_N15
\A1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(3),
	o => \A1[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\A1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(2),
	o => \A1[2]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\A1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(1),
	o => \A1[1]~input_o\);

-- Location: IOIBUF_X115_Y69_N22
\A2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(3),
	o => \A2[3]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\A2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(2),
	o => \A2[2]~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\A2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(1),
	o => \A2[1]~input_o\);

ww_S1(3) <= \S1[3]~output_o\;

ww_S1(2) <= \S1[2]~output_o\;

ww_S1(1) <= \S1[1]~output_o\;

ww_S1(0) <= \S1[0]~output_o\;

ww_OVERFLOW <= \OVERFLOW~output_o\;
END structure;


