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

-- DATE "09/12/2019 14:13:18"

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

ENTITY 	Deslocador IS
    PORT (
	entrada : IN std_logic_vector(0 TO 7);
	esquerda : IN std_logic;
	direita : IN std_logic;
	saida : OUT std_logic_vector(0 TO 7)
	);
END Deslocador;

-- Design Ports Information
-- saida[7]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[0]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direita	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[6]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- esquerda	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[5]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Deslocador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(0 TO 7);
SIGNAL ww_esquerda : std_logic;
SIGNAL ww_direita : std_logic;
SIGNAL ww_saida : std_logic_vector(0 TO 7);
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \esquerda~input_o\ : std_logic;
SIGNAL \entrada[7]~input_o\ : std_logic;
SIGNAL \entrada[6]~input_o\ : std_logic;
SIGNAL \direita~input_o\ : std_logic;
SIGNAL \saida~0_combout\ : std_logic;
SIGNAL \entrada[5]~input_o\ : std_logic;
SIGNAL \saida~1_combout\ : std_logic;
SIGNAL \saida~2_combout\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \saida~3_combout\ : std_logic;
SIGNAL \saida~4_combout\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \saida~5_combout\ : std_logic;
SIGNAL \saida~6_combout\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \saida~7_combout\ : std_logic;
SIGNAL \saida~8_combout\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \saida~9_combout\ : std_logic;
SIGNAL \saida~10_combout\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \saida~11_combout\ : std_logic;
SIGNAL \saida~12_combout\ : std_logic;
SIGNAL \saida~13_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_entrada <= entrada;
ww_esquerda <= esquerda;
ww_direita <= direita;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y23_N16
\saida[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\saida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~2_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\saida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~4_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\saida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~6_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\saida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~8_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\saida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~10_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\saida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~12_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\saida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~13_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\esquerda~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_esquerda,
	o => \esquerda~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\entrada[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(7),
	o => \entrada[7]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\entrada[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(6),
	o => \entrada[6]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\direita~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_direita,
	o => \direita~input_o\);

-- Location: LCCOMB_X1_Y24_N8
\saida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~0_combout\ = (\esquerda~input_o\ & (\entrada[7]~input_o\ & ((\direita~input_o\)))) # (!\esquerda~input_o\ & ((\direita~input_o\ & ((\entrada[6]~input_o\))) # (!\direita~input_o\ & (\entrada[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \esquerda~input_o\,
	datab => \entrada[7]~input_o\,
	datac => \entrada[6]~input_o\,
	datad => \direita~input_o\,
	combout => \saida~0_combout\);

-- Location: IOIBUF_X0_Y27_N15
\entrada[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(5),
	o => \entrada[5]~input_o\);

-- Location: LCCOMB_X1_Y24_N10
\saida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~1_combout\ = (\esquerda~input_o\ & (((\entrada[7]~input_o\ & !\direita~input_o\)))) # (!\esquerda~input_o\ & (\entrada[5]~input_o\ & ((\direita~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \esquerda~input_o\,
	datab => \entrada[5]~input_o\,
	datac => \entrada[7]~input_o\,
	datad => \direita~input_o\,
	combout => \saida~1_combout\);

-- Location: LCCOMB_X1_Y24_N28
\saida~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~2_combout\ = (\saida~1_combout\) # ((\entrada[6]~input_o\ & (\esquerda~input_o\ $ (!\direita~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \esquerda~input_o\,
	datab => \direita~input_o\,
	datac => \entrada[6]~input_o\,
	datad => \saida~1_combout\,
	combout => \saida~2_combout\);

-- Location: IOIBUF_X0_Y24_N15
\entrada[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

-- Location: LCCOMB_X1_Y24_N22
\saida~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~3_combout\ = (\esquerda~input_o\ & (((\entrada[6]~input_o\ & !\direita~input_o\)))) # (!\esquerda~input_o\ & (\entrada[4]~input_o\ & ((\direita~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \esquerda~input_o\,
	datab => \entrada[4]~input_o\,
	datac => \entrada[6]~input_o\,
	datad => \direita~input_o\,
	combout => \saida~3_combout\);

-- Location: LCCOMB_X1_Y24_N0
\saida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~4_combout\ = (\saida~3_combout\) # ((\entrada[5]~input_o\ & (\esquerda~input_o\ $ (!\direita~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \esquerda~input_o\,
	datab => \entrada[5]~input_o\,
	datac => \saida~3_combout\,
	datad => \direita~input_o\,
	combout => \saida~4_combout\);

-- Location: IOIBUF_X0_Y28_N22
\entrada[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: LCCOMB_X1_Y24_N18
\saida~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~5_combout\ = (\esquerda~input_o\ & (\entrada[5]~input_o\ & ((!\direita~input_o\)))) # (!\esquerda~input_o\ & (((\entrada[3]~input_o\ & \direita~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \esquerda~input_o\,
	datab => \entrada[5]~input_o\,
	datac => \entrada[3]~input_o\,
	datad => \direita~input_o\,
	combout => \saida~5_combout\);

-- Location: LCCOMB_X1_Y24_N12
\saida~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~6_combout\ = (\saida~5_combout\) # ((\entrada[4]~input_o\ & (\esquerda~input_o\ $ (!\direita~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \esquerda~input_o\,
	datab => \direita~input_o\,
	datac => \entrada[4]~input_o\,
	datad => \saida~5_combout\,
	combout => \saida~6_combout\);

-- Location: IOIBUF_X0_Y24_N8
\entrada[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: LCCOMB_X1_Y24_N6
\saida~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~7_combout\ = (\esquerda~input_o\ & (\entrada[4]~input_o\ & ((!\direita~input_o\)))) # (!\esquerda~input_o\ & (((\entrada[2]~input_o\ & \direita~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \esquerda~input_o\,
	datab => \entrada[4]~input_o\,
	datac => \entrada[2]~input_o\,
	datad => \direita~input_o\,
	combout => \saida~7_combout\);

-- Location: LCCOMB_X1_Y24_N16
\saida~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~8_combout\ = (\saida~7_combout\) # ((\entrada[3]~input_o\ & (\esquerda~input_o\ $ (!\direita~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \esquerda~input_o\,
	datab => \direita~input_o\,
	datac => \entrada[3]~input_o\,
	datad => \saida~7_combout\,
	combout => \saida~8_combout\);

-- Location: IOIBUF_X0_Y28_N15
\entrada[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: LCCOMB_X1_Y24_N2
\saida~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~9_combout\ = (\esquerda~input_o\ & (!\direita~input_o\ & (\entrada[3]~input_o\))) # (!\esquerda~input_o\ & (\direita~input_o\ & ((\entrada[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \esquerda~input_o\,
	datab => \direita~input_o\,
	datac => \entrada[3]~input_o\,
	datad => \entrada[1]~input_o\,
	combout => \saida~9_combout\);

-- Location: LCCOMB_X1_Y24_N20
\saida~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~10_combout\ = (\saida~9_combout\) # ((\entrada[2]~input_o\ & (\esquerda~input_o\ $ (!\direita~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \esquerda~input_o\,
	datab => \direita~input_o\,
	datac => \entrada[2]~input_o\,
	datad => \saida~9_combout\,
	combout => \saida~10_combout\);

-- Location: IOIBUF_X0_Y25_N15
\entrada[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: LCCOMB_X1_Y24_N30
\saida~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~11_combout\ = (\esquerda~input_o\ & (((\entrada[2]~input_o\ & !\direita~input_o\)))) # (!\esquerda~input_o\ & (\entrada[0]~input_o\ & ((\direita~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \esquerda~input_o\,
	datab => \entrada[0]~input_o\,
	datac => \entrada[2]~input_o\,
	datad => \direita~input_o\,
	combout => \saida~11_combout\);

-- Location: LCCOMB_X1_Y24_N24
\saida~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~12_combout\ = (\saida~11_combout\) # ((\entrada[1]~input_o\ & (\esquerda~input_o\ $ (!\direita~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \esquerda~input_o\,
	datab => \direita~input_o\,
	datac => \saida~11_combout\,
	datad => \entrada[1]~input_o\,
	combout => \saida~12_combout\);

-- Location: LCCOMB_X1_Y24_N26
\saida~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~13_combout\ = (\esquerda~input_o\ & ((\direita~input_o\ & (\entrada[0]~input_o\)) # (!\direita~input_o\ & ((\entrada[1]~input_o\))))) # (!\esquerda~input_o\ & (!\direita~input_o\ & (\entrada[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \esquerda~input_o\,
	datab => \direita~input_o\,
	datac => \entrada[0]~input_o\,
	datad => \entrada[1]~input_o\,
	combout => \saida~13_combout\);

ww_saida(7) <= \saida[7]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(0) <= \saida[0]~output_o\;
END structure;


