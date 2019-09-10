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

-- DATE "09/10/2019 15:04:29"

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

ENTITY 	SOMADORSUBTRATOR IS
    PORT (
	A : IN std_logic_vector(0 TO 7);
	B : IN std_logic_vector(0 TO 7);
	OP : IN std_logic;
	S : OUT std_logic_vector(0 TO 7);
	LUZ1 : OUT std_logic;
	LUZ2 : OUT std_logic
	);
END SOMADORSUBTRATOR;

-- Design Ports Information
-- S[7]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUZ1	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUZ2	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SOMADORSUBTRATOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(0 TO 7);
SIGNAL ww_B : std_logic_vector(0 TO 7);
SIGNAL ww_OP : std_logic;
SIGNAL ww_S : std_logic_vector(0 TO 7);
SIGNAL ww_LUZ1 : std_logic;
SIGNAL ww_LUZ2 : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \LUZ1~output_o\ : std_logic;
SIGNAL \LUZ2~output_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \OP~input_o\ : std_logic;
SIGNAL \G1|G1|S~1_cout\ : std_logic;
SIGNAL \G1|G1|S~3\ : std_logic;
SIGNAL \G1|G1|S~5\ : std_logic;
SIGNAL \G1|G1|S~7\ : std_logic;
SIGNAL \G1|G1|S~9\ : std_logic;
SIGNAL \G1|G1|S~11\ : std_logic;
SIGNAL \G1|G1|S~13\ : std_logic;
SIGNAL \G1|G1|S~15\ : std_logic;
SIGNAL \G1|G1|S~16_combout\ : std_logic;
SIGNAL \G1|G1|S~14_combout\ : std_logic;
SIGNAL \G1|G1|S~12_combout\ : std_logic;
SIGNAL \G1|G1|S~10_combout\ : std_logic;
SIGNAL \G1|G1|S~8_combout\ : std_logic;
SIGNAL \G1|G1|S~6_combout\ : std_logic;
SIGNAL \G1|G1|S~4_combout\ : std_logic;
SIGNAL \G1|G1|S~2_combout\ : std_logic;
SIGNAL \ALT_INV_OP~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_OP <= OP;
S <= ww_S;
LUZ1 <= ww_LUZ1;
LUZ2 <= ww_LUZ2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_OP~input_o\ <= NOT \OP~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y33_N23
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G1|S~16_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G1|S~14_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G1|S~12_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G1|S~10_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G1|S~8_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G1|S~6_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G1|S~4_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G1|S~2_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\LUZ1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_OP~input_o\,
	devoe => ww_devoe,
	o => \LUZ1~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\LUZ2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OP~input_o\,
	devoe => ww_devoe,
	o => \LUZ2~output_o\);

-- Location: IOIBUF_X0_Y26_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\OP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP,
	o => \OP~input_o\);

-- Location: LCCOMB_X1_Y28_N12
\G1|G1|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1|G1|S~1_cout\ = CARRY(\OP~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datad => VCC,
	cout => \G1|G1|S~1_cout\);

-- Location: LCCOMB_X1_Y28_N14
\G1|G1|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1|G1|S~2_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\ & (\G1|G1|S~1_cout\ & VCC)) # (!\B[0]~input_o\ & (!\G1|G1|S~1_cout\)))) # (!\A[0]~input_o\ & ((\B[0]~input_o\ & (!\G1|G1|S~1_cout\)) # (!\B[0]~input_o\ & ((\G1|G1|S~1_cout\) # (GND)))))
-- \G1|G1|S~3\ = CARRY((\A[0]~input_o\ & (!\B[0]~input_o\ & !\G1|G1|S~1_cout\)) # (!\A[0]~input_o\ & ((!\G1|G1|S~1_cout\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cin => \G1|G1|S~1_cout\,
	combout => \G1|G1|S~2_combout\,
	cout => \G1|G1|S~3\);

-- Location: LCCOMB_X1_Y28_N16
\G1|G1|S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1|G1|S~4_combout\ = ((\A[1]~input_o\ $ (\B[1]~input_o\ $ (!\G1|G1|S~3\)))) # (GND)
-- \G1|G1|S~5\ = CARRY((\A[1]~input_o\ & ((\B[1]~input_o\) # (!\G1|G1|S~3\))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & !\G1|G1|S~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \G1|G1|S~3\,
	combout => \G1|G1|S~4_combout\,
	cout => \G1|G1|S~5\);

-- Location: LCCOMB_X1_Y28_N18
\G1|G1|S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1|G1|S~6_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\ & (\G1|G1|S~5\ & VCC)) # (!\B[2]~input_o\ & (!\G1|G1|S~5\)))) # (!\A[2]~input_o\ & ((\B[2]~input_o\ & (!\G1|G1|S~5\)) # (!\B[2]~input_o\ & ((\G1|G1|S~5\) # (GND)))))
-- \G1|G1|S~7\ = CARRY((\A[2]~input_o\ & (!\B[2]~input_o\ & !\G1|G1|S~5\)) # (!\A[2]~input_o\ & ((!\G1|G1|S~5\) # (!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \G1|G1|S~5\,
	combout => \G1|G1|S~6_combout\,
	cout => \G1|G1|S~7\);

-- Location: LCCOMB_X1_Y28_N20
\G1|G1|S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1|G1|S~8_combout\ = ((\A[3]~input_o\ $ (\B[3]~input_o\ $ (!\G1|G1|S~7\)))) # (GND)
-- \G1|G1|S~9\ = CARRY((\A[3]~input_o\ & ((\B[3]~input_o\) # (!\G1|G1|S~7\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & !\G1|G1|S~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \G1|G1|S~7\,
	combout => \G1|G1|S~8_combout\,
	cout => \G1|G1|S~9\);

-- Location: LCCOMB_X1_Y28_N22
\G1|G1|S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1|G1|S~10_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\ & (\G1|G1|S~9\ & VCC)) # (!\B[4]~input_o\ & (!\G1|G1|S~9\)))) # (!\A[4]~input_o\ & ((\B[4]~input_o\ & (!\G1|G1|S~9\)) # (!\B[4]~input_o\ & ((\G1|G1|S~9\) # (GND)))))
-- \G1|G1|S~11\ = CARRY((\A[4]~input_o\ & (!\B[4]~input_o\ & !\G1|G1|S~9\)) # (!\A[4]~input_o\ & ((!\G1|G1|S~9\) # (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \G1|G1|S~9\,
	combout => \G1|G1|S~10_combout\,
	cout => \G1|G1|S~11\);

-- Location: LCCOMB_X1_Y28_N24
\G1|G1|S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1|G1|S~12_combout\ = ((\A[5]~input_o\ $ (\B[5]~input_o\ $ (!\G1|G1|S~11\)))) # (GND)
-- \G1|G1|S~13\ = CARRY((\A[5]~input_o\ & ((\B[5]~input_o\) # (!\G1|G1|S~11\))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & !\G1|G1|S~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \G1|G1|S~11\,
	combout => \G1|G1|S~12_combout\,
	cout => \G1|G1|S~13\);

-- Location: LCCOMB_X1_Y28_N26
\G1|G1|S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1|G1|S~14_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\ & (\G1|G1|S~13\ & VCC)) # (!\B[6]~input_o\ & (!\G1|G1|S~13\)))) # (!\A[6]~input_o\ & ((\B[6]~input_o\ & (!\G1|G1|S~13\)) # (!\B[6]~input_o\ & ((\G1|G1|S~13\) # (GND)))))
-- \G1|G1|S~15\ = CARRY((\A[6]~input_o\ & (!\B[6]~input_o\ & !\G1|G1|S~13\)) # (!\A[6]~input_o\ & ((!\G1|G1|S~13\) # (!\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \G1|G1|S~13\,
	combout => \G1|G1|S~14_combout\,
	cout => \G1|G1|S~15\);

-- Location: LCCOMB_X1_Y28_N28
\G1|G1|S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1|G1|S~16_combout\ = \B[7]~input_o\ $ (\G1|G1|S~15\ $ (!\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	cin => \G1|G1|S~15\,
	combout => \G1|G1|S~16_combout\);

ww_S(7) <= \S[7]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_LUZ1 <= \LUZ1~output_o\;

ww_LUZ2 <= \LUZ2~output_o\;
END structure;


