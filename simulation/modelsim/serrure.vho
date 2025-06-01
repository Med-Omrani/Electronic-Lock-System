-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "01/26/2025 20:16:19"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	serrure IS
    PORT (
	Sortie : OUT std_logic;
	col4 : IN std_logic;
	col3 : IN std_logic;
	col2 : IN std_logic;
	col1 : IN std_logic;
	lig4 : IN std_logic;
	lig3 : IN std_logic;
	lig2 : IN std_logic;
	lig1 : IN std_logic;
	LedR : OUT std_logic;
	LedV : OUT std_logic;
	a : OUT std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic
	);
END serrure;

-- Design Ports Information
-- Sortie	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LedR	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LedV	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col4	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lig1	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col3	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col1	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lig4	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lig3	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lig2	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col2	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF serrure IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Sortie : std_logic;
SIGNAL ww_col4 : std_logic;
SIGNAL ww_col3 : std_logic;
SIGNAL ww_col2 : std_logic;
SIGNAL ww_col1 : std_logic;
SIGNAL ww_lig4 : std_logic;
SIGNAL ww_lig3 : std_logic;
SIGNAL ww_lig2 : std_logic;
SIGNAL ww_lig1 : std_logic;
SIGNAL ww_LedR : std_logic;
SIGNAL ww_LedV : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Sortie~output_o\ : std_logic;
SIGNAL \LedR~output_o\ : std_logic;
SIGNAL \LedV~output_o\ : std_logic;
SIGNAL \a~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \g~output_o\ : std_logic;
SIGNAL \col4~input_o\ : std_logic;
SIGNAL \col3~input_o\ : std_logic;
SIGNAL \col2~input_o\ : std_logic;
SIGNAL \inst|touche[2]~9_combout\ : std_logic;
SIGNAL \lig3~input_o\ : std_logic;
SIGNAL \lig4~input_o\ : std_logic;
SIGNAL \lig2~input_o\ : std_logic;
SIGNAL \inst|touche[2]~7_combout\ : std_logic;
SIGNAL \inst|touche[2]~8_combout\ : std_logic;
SIGNAL \lig1~input_o\ : std_logic;
SIGNAL \col1~input_o\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst|touche[3]~2_combout\ : std_logic;
SIGNAL \inst|touche~3_combout\ : std_logic;
SIGNAL \inst|touche~4_combout\ : std_logic;
SIGNAL \inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst|Equal2~2_combout\ : std_logic;
SIGNAL \inst|touche~6_combout\ : std_logic;
SIGNAL \inst|touche[3]~11_combout\ : std_logic;
SIGNAL \inst|touche[1]~10_combout\ : std_logic;
SIGNAL \inst|touche[2]~12_combout\ : std_logic;
SIGNAL \inst|touche[2]~13_combout\ : std_logic;
SIGNAL \inst|touche[3]~5_combout\ : std_logic;
SIGNAL \inst|touche[2]~14_combout\ : std_logic;
SIGNAL \inst|touche[3]~24_combout\ : std_logic;
SIGNAL \inst|touche[3]~25_combout\ : std_logic;
SIGNAL \inst|touche[3]~26_combout\ : std_logic;
SIGNAL \inst|touche[3]~27_combout\ : std_logic;
SIGNAL \inst|touche[3]~23_combout\ : std_logic;
SIGNAL \inst|touche[3]~36_combout\ : std_logic;
SIGNAL \inst|touche[3]~21_combout\ : std_logic;
SIGNAL \inst|touche[3]~22_combout\ : std_logic;
SIGNAL \inst|touche[3]~28_combout\ : std_logic;
SIGNAL \inst|touche[3]~29_combout\ : std_logic;
SIGNAL \inst|touche[0]~16_combout\ : std_logic;
SIGNAL \inst|touche[0]~15_combout\ : std_logic;
SIGNAL \inst|touche[0]~18_combout\ : std_logic;
SIGNAL \inst|touche[0]~17_combout\ : std_logic;
SIGNAL \inst|touche[0]~19_combout\ : std_logic;
SIGNAL \inst|touche[0]~20_combout\ : std_logic;
SIGNAL \inst|touche[1]~30_combout\ : std_logic;
SIGNAL \inst|touche[1]~31_combout\ : std_logic;
SIGNAL \inst|touche[1]~32_combout\ : std_logic;
SIGNAL \inst|touche[1]~33_combout\ : std_logic;
SIGNAL \inst|touche[1]~34_combout\ : std_logic;
SIGNAL \inst|touche[1]~35_combout\ : std_logic;
SIGNAL \inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|a~2_combout\ : std_logic;
SIGNAL \inst4|a~10_combout\ : std_logic;
SIGNAL \inst4|a~5_combout\ : std_logic;
SIGNAL \inst4|a~6_combout\ : std_logic;
SIGNAL \inst4|a~7_combout\ : std_logic;
SIGNAL \inst4|a~8_combout\ : std_logic;
SIGNAL \inst4|a~9_combout\ : std_logic;
SIGNAL \inst4|a~3_combout\ : std_logic;
SIGNAL \inst4|a~12_combout\ : std_logic;
SIGNAL \inst4|a~4_combout\ : std_logic;
SIGNAL \inst4|a~11_combout\ : std_logic;
SIGNAL \inst4|b~0_combout\ : std_logic;
SIGNAL \inst4|b~1_combout\ : std_logic;
SIGNAL \inst4|c~5_combout\ : std_logic;
SIGNAL \inst4|c~2_combout\ : std_logic;
SIGNAL \inst4|c~3_combout\ : std_logic;
SIGNAL \inst4|c~4_combout\ : std_logic;
SIGNAL \inst4|d~0_combout\ : std_logic;
SIGNAL \inst4|d~1_combout\ : std_logic;
SIGNAL \inst4|d~2_combout\ : std_logic;
SIGNAL \inst4|Equal7~0_combout\ : std_logic;
SIGNAL \inst4|Equal8~0_combout\ : std_logic;
SIGNAL \inst4|Equal9~0_combout\ : std_logic;
SIGNAL \inst4|d~3_combout\ : std_logic;
SIGNAL \inst4|e~0_combout\ : std_logic;
SIGNAL \inst4|e~1_combout\ : std_logic;
SIGNAL \inst4|e~2_combout\ : std_logic;
SIGNAL \inst4|f~0_combout\ : std_logic;
SIGNAL \inst4|g~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_e~2_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

Sortie <= ww_Sortie;
ww_col4 <= col4;
ww_col3 <= col3;
ww_col2 <= col2;
ww_col1 <= col1;
ww_lig4 <= lig4;
ww_lig3 <= lig3;
ww_lig2 <= lig2;
ww_lig1 <= lig1;
LedR <= ww_LedR;
LedV <= ww_LedV;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\inst4|ALT_INV_e~2_combout\ <= NOT \inst4|e~2_combout\;
\inst9|ALT_INV_Equal0~0_combout\ <= NOT \inst9|Equal0~0_combout\;

-- Location: LCCOMB_X44_Y48_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X51_Y54_N16
\Sortie~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \Sortie~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\LedR~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \LedR~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LedV~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \LedV~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\a~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|a~11_combout\,
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\b~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|b~1_combout\,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\c~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|c~4_combout\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\d~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|d~3_combout\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\e~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_e~2_combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\f~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|f~0_combout\,
	devoe => ww_devoe,
	o => \f~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\g~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|g~0_combout\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOIBUF_X51_Y54_N29
\col4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col4,
	o => \col4~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\col3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col3,
	o => \col3~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\col2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col2,
	o => \col2~input_o\);

-- Location: LCCOMB_X52_Y53_N24
\inst|touche[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[2]~9_combout\ = (\col3~input_o\) # (\col2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datac => \col2~input_o\,
	combout => \inst|touche[2]~9_combout\);

-- Location: IOIBUF_X49_Y54_N1
\lig3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lig3,
	o => \lig3~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\lig4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lig4,
	o => \lig4~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\lig2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lig2,
	o => \lig2~input_o\);

-- Location: LCCOMB_X54_Y53_N26
\inst|touche[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[2]~7_combout\ = (\lig3~input_o\ & ((!\lig2~input_o\))) # (!\lig3~input_o\ & (\lig4~input_o\ & \lig2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lig3~input_o\,
	datac => \lig4~input_o\,
	datad => \lig2~input_o\,
	combout => \inst|touche[2]~7_combout\);

-- Location: LCCOMB_X54_Y53_N28
\inst|touche[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[2]~8_combout\ = (\col3~input_o\ & (!\col2~input_o\ & ((\lig2~input_o\)))) # (!\col3~input_o\ & (\lig2~input_o\ $ (((!\col2~input_o\ & \inst|touche[2]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datab => \col2~input_o\,
	datac => \inst|touche[2]~7_combout\,
	datad => \lig2~input_o\,
	combout => \inst|touche[2]~8_combout\);

-- Location: IOIBUF_X58_Y54_N29
\lig1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lig1,
	o => \lig1~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\col1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col1,
	o => \col1~input_o\);

-- Location: LCCOMB_X54_Y53_N16
\inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (!\col3~input_o\ & (!\lig3~input_o\ & (!\lig4~input_o\ & !\col1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datab => \lig3~input_o\,
	datac => \lig4~input_o\,
	datad => \col1~input_o\,
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X54_Y53_N10
\inst|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal3~0_combout\ = (\lig1~input_o\ & (\inst|Equal2~0_combout\ & (!\col2~input_o\ & !\lig2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig1~input_o\,
	datab => \inst|Equal2~0_combout\,
	datac => \col2~input_o\,
	datad => \lig2~input_o\,
	combout => \inst|Equal3~0_combout\);

-- Location: LCCOMB_X54_Y53_N0
\inst|touche[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[3]~2_combout\ = (!\lig2~input_o\ & !\lig1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lig2~input_o\,
	datac => \lig1~input_o\,
	combout => \inst|touche[3]~2_combout\);

-- Location: LCCOMB_X54_Y53_N18
\inst|touche~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche~3_combout\ = (!\col3~input_o\ & (\col4~input_o\ & (\lig3~input_o\ $ (\lig4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datab => \lig3~input_o\,
	datac => \lig4~input_o\,
	datad => \col4~input_o\,
	combout => \inst|touche~3_combout\);

-- Location: LCCOMB_X54_Y53_N4
\inst|touche~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche~4_combout\ = (\inst|touche[3]~2_combout\ & (\inst|touche~3_combout\ & (!\col2~input_o\ & !\col1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[3]~2_combout\,
	datab => \inst|touche~3_combout\,
	datac => \col2~input_o\,
	datad => \col1~input_o\,
	combout => \inst|touche~4_combout\);

-- Location: LCCOMB_X54_Y53_N12
\inst|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~1_combout\ = (\col4~input_o\ & (!\lig1~input_o\ & \lig2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \col4~input_o\,
	datac => \lig1~input_o\,
	datad => \lig2~input_o\,
	combout => \inst|Equal2~1_combout\);

-- Location: LCCOMB_X54_Y53_N6
\inst|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~2_combout\ = (\inst|Equal2~0_combout\ & (!\col2~input_o\ & \inst|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal2~0_combout\,
	datac => \col2~input_o\,
	datad => \inst|Equal2~1_combout\,
	combout => \inst|Equal2~2_combout\);

-- Location: LCCOMB_X54_Y53_N8
\inst|touche~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche~6_combout\ = (\inst|touche~4_combout\) # ((\inst|Equal2~2_combout\) # ((\inst|Equal3~0_combout\ & \col4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \col4~input_o\,
	datac => \inst|touche~4_combout\,
	datad => \inst|Equal2~2_combout\,
	combout => \inst|touche~6_combout\);

-- Location: LCCOMB_X57_Y53_N18
\inst|touche[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[3]~11_combout\ = (\lig4~input_o\ & (!\lig2~input_o\ & (!\lig3~input_o\ & !\lig1~input_o\))) # (!\lig4~input_o\ & ((\lig2~input_o\ & (!\lig3~input_o\ & !\lig1~input_o\)) # (!\lig2~input_o\ & (\lig3~input_o\ $ (\lig1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig4~input_o\,
	datab => \lig2~input_o\,
	datac => \lig3~input_o\,
	datad => \lig1~input_o\,
	combout => \inst|touche[3]~11_combout\);

-- Location: LCCOMB_X57_Y53_N8
\inst|touche[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[1]~10_combout\ = (!\lig3~input_o\ & (!\col1~input_o\ & !\lig4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig3~input_o\,
	datab => \col1~input_o\,
	datad => \lig4~input_o\,
	combout => \inst|touche[1]~10_combout\);

-- Location: LCCOMB_X60_Y53_N24
\inst|touche[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[2]~12_combout\ = (\inst|touche[3]~11_combout\ & ((\inst|touche[2]~9_combout\ & ((\inst|touche[1]~10_combout\))) # (!\inst|touche[2]~9_combout\ & (\col1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[3]~11_combout\,
	datab => \col1~input_o\,
	datac => \inst|touche[2]~9_combout\,
	datad => \inst|touche[1]~10_combout\,
	combout => \inst|touche[2]~12_combout\);

-- Location: LCCOMB_X60_Y53_N26
\inst|touche[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[2]~13_combout\ = (\inst|touche[2]~12_combout\ & (((\inst|touche[2]~8_combout\)))) # (!\inst|touche[2]~12_combout\ & (!\inst|touche[2]~9_combout\ & ((\inst|touche~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[2]~9_combout\,
	datab => \inst|touche[2]~8_combout\,
	datac => \inst|touche~6_combout\,
	datad => \inst|touche[2]~12_combout\,
	combout => \inst|touche[2]~13_combout\);

-- Location: LCCOMB_X54_Y53_N14
\inst|touche[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[3]~5_combout\ = (\col4~input_o\ & ((\inst|Equal3~0_combout\) # ((\inst|touche~4_combout\) # (\inst|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \col4~input_o\,
	datac => \inst|touche~4_combout\,
	datad => \inst|Equal2~2_combout\,
	combout => \inst|touche[3]~5_combout\);

-- Location: LCCOMB_X60_Y53_N20
\inst|touche[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[2]~14_combout\ = (\inst|touche[3]~5_combout\) # ((!\col4~input_o\ & \inst|touche[2]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col4~input_o\,
	datac => \inst|touche[2]~13_combout\,
	datad => \inst|touche[3]~5_combout\,
	combout => \inst|touche[2]~14_combout\);

-- Location: LCCOMB_X57_Y53_N12
\inst|touche[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[3]~24_combout\ = (!\col2~input_o\ & ((\lig4~input_o\ & ((\lig2~input_o\) # (\lig1~input_o\))) # (!\lig4~input_o\ & (\lig2~input_o\ $ (!\lig1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig4~input_o\,
	datab => \lig2~input_o\,
	datac => \col2~input_o\,
	datad => \lig1~input_o\,
	combout => \inst|touche[3]~24_combout\);

-- Location: LCCOMB_X57_Y53_N30
\inst|touche[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[3]~25_combout\ = (\lig3~input_o\ & (!\col1~input_o\)) # (!\lig3~input_o\ & ((\inst|touche[3]~24_combout\) # ((!\col1~input_o\ & !\col2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig3~input_o\,
	datab => \col1~input_o\,
	datac => \col2~input_o\,
	datad => \inst|touche[3]~24_combout\,
	combout => \inst|touche[3]~25_combout\);

-- Location: LCCOMB_X57_Y53_N16
\inst|touche[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[3]~26_combout\ = (!\col1~input_o\ & !\col2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \col1~input_o\,
	datac => \col2~input_o\,
	combout => \inst|touche[3]~26_combout\);

-- Location: LCCOMB_X57_Y53_N10
\inst|touche[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[3]~27_combout\ = (\inst|touche[3]~25_combout\ & (((\inst|touche[3]~26_combout\ & !\inst|touche[3]~11_combout\)) # (!\col3~input_o\))) # (!\inst|touche[3]~25_combout\ & (\inst|touche[3]~26_combout\ & (!\inst|touche[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[3]~25_combout\,
	datab => \inst|touche[3]~26_combout\,
	datac => \inst|touche[3]~11_combout\,
	datad => \col3~input_o\,
	combout => \inst|touche[3]~27_combout\);

-- Location: LCCOMB_X57_Y53_N26
\inst|touche[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[3]~23_combout\ = (\lig3~input_o\ & (\col2~input_o\ & (!\col1~input_o\ & !\lig4~input_o\))) # (!\lig3~input_o\ & (!\col2~input_o\ & (\col1~input_o\ & \lig4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig3~input_o\,
	datab => \col2~input_o\,
	datac => \col1~input_o\,
	datad => \lig4~input_o\,
	combout => \inst|touche[3]~23_combout\);

-- Location: LCCOMB_X57_Y53_N6
\inst|touche[3]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[3]~36_combout\ = (!\col3~input_o\ & (!\lig2~input_o\ & (\inst|touche[3]~23_combout\ & !\lig1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datab => \lig2~input_o\,
	datac => \inst|touche[3]~23_combout\,
	datad => \lig1~input_o\,
	combout => \inst|touche[3]~36_combout\);

-- Location: LCCOMB_X57_Y53_N14
\inst|touche[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[3]~21_combout\ = (!\lig2~input_o\ & (!\lig1~input_o\ & (\lig4~input_o\ $ (\lig3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig4~input_o\,
	datab => \lig2~input_o\,
	datac => \lig3~input_o\,
	datad => \lig1~input_o\,
	combout => \inst|touche[3]~21_combout\);

-- Location: LCCOMB_X57_Y53_N0
\inst|touche[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[3]~22_combout\ = (\inst|touche[3]~21_combout\ & (!\col2~input_o\ & (!\col1~input_o\ & \col3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[3]~21_combout\,
	datab => \col2~input_o\,
	datac => \col1~input_o\,
	datad => \col3~input_o\,
	combout => \inst|touche[3]~22_combout\);

-- Location: LCCOMB_X60_Y53_N22
\inst|touche[3]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[3]~28_combout\ = (\inst|touche[3]~36_combout\) # ((\inst|touche[3]~22_combout\) # ((\inst|touche[3]~27_combout\ & \inst|touche~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[3]~27_combout\,
	datab => \inst|touche[3]~36_combout\,
	datac => \inst|touche~6_combout\,
	datad => \inst|touche[3]~22_combout\,
	combout => \inst|touche[3]~28_combout\);

-- Location: LCCOMB_X60_Y53_N16
\inst|touche[3]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[3]~29_combout\ = (\inst|touche[3]~5_combout\) # ((!\col4~input_o\ & \inst|touche[3]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col4~input_o\,
	datac => \inst|touche[3]~28_combout\,
	datad => \inst|touche[3]~5_combout\,
	combout => \inst|touche[3]~29_combout\);

-- Location: LCCOMB_X54_Y53_N22
\inst|touche[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[0]~16_combout\ = (!\lig2~input_o\ & ((\lig1~input_o\ & (!\lig4~input_o\ & !\lig3~input_o\)) # (!\lig1~input_o\ & (\lig4~input_o\ $ (\lig3~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig1~input_o\,
	datab => \lig2~input_o\,
	datac => \lig4~input_o\,
	datad => \lig3~input_o\,
	combout => \inst|touche[0]~16_combout\);

-- Location: LCCOMB_X57_Y53_N4
\inst|touche[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[0]~15_combout\ = (!\lig4~input_o\ & ((\lig2~input_o\ & (!\lig3~input_o\ & !\lig1~input_o\)) # (!\lig2~input_o\ & (\lig3~input_o\ $ (\lig1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lig4~input_o\,
	datab => \lig2~input_o\,
	datac => \lig3~input_o\,
	datad => \lig1~input_o\,
	combout => \inst|touche[0]~15_combout\);

-- Location: LCCOMB_X55_Y53_N18
\inst|touche[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[0]~18_combout\ = (\col3~input_o\ & (\inst|touche[0]~16_combout\ & ((!\col1~input_o\)))) # (!\col3~input_o\ & (\inst|touche[0]~15_combout\ & (\inst|touche[0]~16_combout\ $ (!\col1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datab => \inst|touche[0]~16_combout\,
	datac => \inst|touche[0]~15_combout\,
	datad => \col1~input_o\,
	combout => \inst|touche[0]~18_combout\);

-- Location: LCCOMB_X55_Y53_N24
\inst|touche[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[0]~17_combout\ = (\inst|touche[0]~16_combout\ & (\col1~input_o\ $ (((\col3~input_o\) # (!\inst|touche[0]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datab => \inst|touche[0]~16_combout\,
	datac => \inst|touche[0]~15_combout\,
	datad => \col1~input_o\,
	combout => \inst|touche[0]~17_combout\);

-- Location: LCCOMB_X54_Y53_N24
\inst|touche[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[0]~19_combout\ = (\inst|touche[0]~18_combout\ & (!\col4~input_o\)) # (!\inst|touche[0]~18_combout\ & (\col4~input_o\ & \inst|touche[0]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|touche[0]~18_combout\,
	datac => \col4~input_o\,
	datad => \inst|touche[0]~17_combout\,
	combout => \inst|touche[0]~19_combout\);

-- Location: LCCOMB_X54_Y53_N2
\inst|touche[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[0]~20_combout\ = (\inst|Equal2~2_combout\) # ((\inst|touche[0]~19_combout\ & (\col2~input_o\ $ (\inst|touche[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~2_combout\,
	datab => \inst|touche[0]~19_combout\,
	datac => \col2~input_o\,
	datad => \inst|touche[0]~17_combout\,
	combout => \inst|touche[0]~20_combout\);

-- Location: LCCOMB_X57_Y53_N28
\inst|touche[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[1]~30_combout\ = (!\col3~input_o\ & (!\col4~input_o\ & (\lig3~input_o\ $ (\lig4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datab => \col4~input_o\,
	datac => \lig3~input_o\,
	datad => \lig4~input_o\,
	combout => \inst|touche[1]~30_combout\);

-- Location: LCCOMB_X57_Y53_N22
\inst|touche[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[1]~31_combout\ = (\inst|touche[3]~2_combout\ & (\col1~input_o\ & (!\col2~input_o\ & \inst|touche[1]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[3]~2_combout\,
	datab => \col1~input_o\,
	datac => \col2~input_o\,
	datad => \inst|touche[1]~30_combout\,
	combout => \inst|touche[1]~31_combout\);

-- Location: LCCOMB_X57_Y53_N24
\inst|touche[1]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[1]~32_combout\ = (\col3~input_o\ & (!\col4~input_o\ & (!\lig3~input_o\ & \lig4~input_o\))) # (!\col3~input_o\ & (\col4~input_o\ & (\lig3~input_o\ $ (\lig4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datab => \col4~input_o\,
	datac => \lig3~input_o\,
	datad => \lig4~input_o\,
	combout => \inst|touche[1]~32_combout\);

-- Location: LCCOMB_X57_Y53_N2
\inst|touche[1]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[1]~33_combout\ = (\inst|touche[1]~31_combout\) # ((\inst|touche[3]~2_combout\ & (\inst|touche[3]~26_combout\ & \inst|touche[1]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[3]~2_combout\,
	datab => \inst|touche[3]~26_combout\,
	datac => \inst|touche[1]~31_combout\,
	datad => \inst|touche[1]~32_combout\,
	combout => \inst|touche[1]~33_combout\);

-- Location: LCCOMB_X57_Y53_N20
\inst|touche[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[1]~34_combout\ = (\col3~input_o\ & (!\col2~input_o\ & (\lig2~input_o\ $ (\lig1~input_o\)))) # (!\col3~input_o\ & (!\lig2~input_o\ & (\col2~input_o\ & \lig1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col3~input_o\,
	datab => \lig2~input_o\,
	datac => \col2~input_o\,
	datad => \lig1~input_o\,
	combout => \inst|touche[1]~34_combout\);

-- Location: LCCOMB_X60_Y53_N18
\inst|touche[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|touche[1]~35_combout\ = (\inst|touche[1]~33_combout\) # ((!\col4~input_o\ & (\inst|touche[1]~34_combout\ & \inst|touche[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col4~input_o\,
	datab => \inst|touche[1]~33_combout\,
	datac => \inst|touche[1]~34_combout\,
	datad => \inst|touche[1]~10_combout\,
	combout => \inst|touche[1]~35_combout\);

-- Location: LCCOMB_X59_Y53_N8
\inst9|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Equal0~0_combout\ = (\inst|touche[2]~14_combout\ & (!\inst|touche[3]~29_combout\ & (\inst|touche[0]~20_combout\ & !\inst|touche[1]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[2]~14_combout\,
	datab => \inst|touche[3]~29_combout\,
	datac => \inst|touche[0]~20_combout\,
	datad => \inst|touche[1]~35_combout\,
	combout => \inst9|Equal0~0_combout\);

-- Location: LCCOMB_X60_Y53_N28
\inst4|a~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|a~2_combout\ = (!\col4~input_o\ & ((\inst|touche[3]~28_combout\ & (!\inst|touche[2]~13_combout\ & !\inst|touche[1]~35_combout\)) # (!\inst|touche[3]~28_combout\ & (\inst|touche[2]~13_combout\ & \inst|touche[1]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[3]~28_combout\,
	datab => \col4~input_o\,
	datac => \inst|touche[2]~13_combout\,
	datad => \inst|touche[1]~35_combout\,
	combout => \inst4|a~2_combout\);

-- Location: LCCOMB_X60_Y53_N14
\inst4|a~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|a~10_combout\ = (\inst9|Equal0~0_combout\) # ((\inst4|a~2_combout\) # ((!\inst|touche[3]~29_combout\ & !\inst|touche[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal0~0_combout\,
	datab => \inst|touche[3]~29_combout\,
	datac => \inst|touche[2]~14_combout\,
	datad => \inst4|a~2_combout\,
	combout => \inst4|a~10_combout\);

-- Location: LCCOMB_X60_Y53_N2
\inst4|a~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|a~5_combout\ = (\inst|touche[3]~5_combout\) # ((!\col4~input_o\ & (\inst|touche[2]~13_combout\ & \inst|touche[0]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col4~input_o\,
	datab => \inst|touche[3]~5_combout\,
	datac => \inst|touche[2]~13_combout\,
	datad => \inst|touche[0]~20_combout\,
	combout => \inst4|a~5_combout\);

-- Location: LCCOMB_X60_Y53_N12
\inst4|a~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|a~6_combout\ = (\inst4|a~5_combout\) # ((!\col4~input_o\ & (\inst|touche[3]~28_combout\ & !\inst|touche[0]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col4~input_o\,
	datab => \inst4|a~5_combout\,
	datac => \inst|touche[3]~28_combout\,
	datad => \inst|touche[0]~20_combout\,
	combout => \inst4|a~6_combout\);

-- Location: LCCOMB_X59_Y53_N18
\inst4|a~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|a~7_combout\ = (\inst4|a~6_combout\ & (!\inst|touche[1]~35_combout\ & ((\inst9|Equal0~0_combout\) # (\inst4|a~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal0~0_combout\,
	datab => \inst4|a~2_combout\,
	datac => \inst4|a~6_combout\,
	datad => \inst|touche[1]~35_combout\,
	combout => \inst4|a~7_combout\);

-- Location: LCCOMB_X61_Y53_N0
\inst4|a~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|a~8_combout\ = (!\inst|touche[0]~20_combout\ & !\inst|touche[1]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[0]~20_combout\,
	datad => \inst|touche[1]~35_combout\,
	combout => \inst4|a~8_combout\);

-- Location: LCCOMB_X59_Y53_N4
\inst4|a~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|a~9_combout\ = (\inst4|a~7_combout\) # ((!\inst|touche[2]~14_combout\ & (!\inst4|a~6_combout\ & \inst4|a~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[2]~14_combout\,
	datab => \inst4|a~7_combout\,
	datac => \inst4|a~6_combout\,
	datad => \inst4|a~8_combout\,
	combout => \inst4|a~9_combout\);

-- Location: LCCOMB_X60_Y53_N30
\inst4|a~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|a~3_combout\ = (\inst|touche[0]~20_combout\ & (!\inst|touche[1]~35_combout\ & !\inst|touche[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[0]~20_combout\,
	datab => \inst|touche[1]~35_combout\,
	datad => \inst|touche[3]~5_combout\,
	combout => \inst4|a~3_combout\);

-- Location: LCCOMB_X60_Y53_N6
\inst4|a~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|a~12_combout\ = (\inst4|a~2_combout\ & ((\inst|touche[3]~5_combout\) # ((!\col4~input_o\ & \inst|touche[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col4~input_o\,
	datab => \inst4|a~2_combout\,
	datac => \inst|touche[3]~28_combout\,
	datad => \inst|touche[3]~5_combout\,
	combout => \inst4|a~12_combout\);

-- Location: LCCOMB_X60_Y53_N8
\inst4|a~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|a~4_combout\ = (\inst4|a~3_combout\ & (\inst4|a~12_combout\ & ((\col4~input_o\) # (!\inst|touche[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|a~3_combout\,
	datab => \col4~input_o\,
	datac => \inst|touche[2]~13_combout\,
	datad => \inst4|a~12_combout\,
	combout => \inst4|a~4_combout\);

-- Location: LCCOMB_X61_Y53_N2
\inst4|a~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|a~11_combout\ = (\inst4|a~9_combout\) # ((\inst4|a~4_combout\) # ((\inst4|a~10_combout\ & \inst|touche[1]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|a~10_combout\,
	datab => \inst|touche[1]~35_combout\,
	datac => \inst4|a~9_combout\,
	datad => \inst4|a~4_combout\,
	combout => \inst4|a~11_combout\);

-- Location: LCCOMB_X59_Y53_N30
\inst4|b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|b~0_combout\ = (\inst4|a~2_combout\ & ((\inst|touche[3]~29_combout\) # (\inst|touche[1]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[3]~29_combout\,
	datab => \inst4|a~2_combout\,
	datad => \inst|touche[1]~35_combout\,
	combout => \inst4|b~0_combout\);

-- Location: LCCOMB_X59_Y53_N24
\inst4|b~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|b~1_combout\ = (\inst4|b~0_combout\) # ((!\inst|touche[3]~29_combout\ & ((\inst4|a~8_combout\) # (!\inst|touche[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[2]~14_combout\,
	datab => \inst|touche[3]~29_combout\,
	datac => \inst4|b~0_combout\,
	datad => \inst4|a~8_combout\,
	combout => \inst4|b~1_combout\);

-- Location: LCCOMB_X59_Y53_N22
\inst4|c~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|c~5_combout\ = (\inst4|a~2_combout\ & (!\inst|touche[0]~20_combout\ & ((\inst|touche[2]~14_combout\) # (!\inst|touche[1]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[2]~14_combout\,
	datab => \inst4|a~2_combout\,
	datac => \inst|touche[0]~20_combout\,
	datad => \inst|touche[1]~35_combout\,
	combout => \inst4|c~5_combout\);

-- Location: LCCOMB_X60_Y53_N0
\inst4|c~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|c~2_combout\ = (\inst|touche[3]~5_combout\) # ((!\col4~input_o\ & \inst|touche[3]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col4~input_o\,
	datac => \inst|touche[3]~28_combout\,
	datad => \inst|touche[3]~5_combout\,
	combout => \inst4|c~2_combout\);

-- Location: LCCOMB_X59_Y53_N2
\inst4|c~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|c~3_combout\ = (\inst|touche[1]~35_combout\ & ((\inst|touche[2]~14_combout\) # ((!\inst4|a~12_combout\)))) # (!\inst|touche[1]~35_combout\ & (((\inst4|c~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[2]~14_combout\,
	datab => \inst|touche[1]~35_combout\,
	datac => \inst4|c~2_combout\,
	datad => \inst4|a~12_combout\,
	combout => \inst4|c~3_combout\);

-- Location: LCCOMB_X59_Y53_N12
\inst4|c~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|c~4_combout\ = (\inst4|c~5_combout\) # ((\inst|touche[0]~20_combout\ & ((\inst4|a~10_combout\))) # (!\inst|touche[0]~20_combout\ & (!\inst4|c~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|c~5_combout\,
	datab => \inst4|c~3_combout\,
	datac => \inst|touche[0]~20_combout\,
	datad => \inst4|a~10_combout\,
	combout => \inst4|c~4_combout\);

-- Location: LCCOMB_X59_Y53_N16
\inst4|d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|d~0_combout\ = (!\inst|touche[3]~29_combout\ & (\inst|touche[1]~35_combout\ & (\inst|touche[2]~14_combout\ $ (\inst|touche[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[2]~14_combout\,
	datab => \inst|touche[3]~29_combout\,
	datac => \inst|touche[0]~20_combout\,
	datad => \inst|touche[1]~35_combout\,
	combout => \inst4|d~0_combout\);

-- Location: LCCOMB_X60_Y53_N10
\inst4|d~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|d~1_combout\ = (!\col4~input_o\ & ((\inst|touche[2]~13_combout\ & (!\inst|touche[3]~28_combout\ & !\inst|touche[3]~5_combout\)) # (!\inst|touche[2]~13_combout\ & (\inst|touche[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col4~input_o\,
	datab => \inst|touche[2]~13_combout\,
	datac => \inst|touche[3]~28_combout\,
	datad => \inst|touche[3]~5_combout\,
	combout => \inst4|d~1_combout\);

-- Location: LCCOMB_X59_Y53_N26
\inst4|d~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|d~2_combout\ = (\inst4|d~0_combout\) # ((\inst4|d~1_combout\ & !\inst|touche[1]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d~0_combout\,
	datac => \inst4|d~1_combout\,
	datad => \inst|touche[1]~35_combout\,
	combout => \inst4|d~2_combout\);

-- Location: LCCOMB_X59_Y53_N28
\inst4|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal7~0_combout\ = (!\inst|touche[2]~14_combout\ & (!\inst|touche[3]~29_combout\ & (!\inst|touche[0]~20_combout\ & \inst|touche[1]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[2]~14_combout\,
	datab => \inst|touche[3]~29_combout\,
	datac => \inst|touche[0]~20_combout\,
	datad => \inst|touche[1]~35_combout\,
	combout => \inst4|Equal7~0_combout\);

-- Location: LCCOMB_X59_Y53_N14
\inst4|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal8~0_combout\ = (!\inst|touche[2]~14_combout\ & (!\inst|touche[3]~29_combout\ & (\inst|touche[0]~20_combout\ & !\inst|touche[1]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[2]~14_combout\,
	datab => \inst|touche[3]~29_combout\,
	datac => \inst|touche[0]~20_combout\,
	datad => \inst|touche[1]~35_combout\,
	combout => \inst4|Equal8~0_combout\);

-- Location: LCCOMB_X59_Y53_N6
\inst4|Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal9~0_combout\ = (!\inst|touche[2]~14_combout\ & (!\inst|touche[3]~29_combout\ & (!\inst|touche[0]~20_combout\ & !\inst|touche[1]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[2]~14_combout\,
	datab => \inst|touche[3]~29_combout\,
	datac => \inst|touche[0]~20_combout\,
	datad => \inst|touche[1]~35_combout\,
	combout => \inst4|Equal9~0_combout\);

-- Location: LCCOMB_X59_Y53_N0
\inst4|d~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|d~3_combout\ = (\inst4|Equal9~0_combout\) # ((!\inst4|Equal8~0_combout\ & ((\inst4|d~2_combout\) # (\inst4|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d~2_combout\,
	datab => \inst4|Equal7~0_combout\,
	datac => \inst4|Equal8~0_combout\,
	datad => \inst4|Equal9~0_combout\,
	combout => \inst4|d~3_combout\);

-- Location: LCCOMB_X54_Y53_N20
\inst4|e~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|e~0_combout\ = (\inst|Equal2~2_combout\) # ((\inst|touche~4_combout\) # (\inst|touche[0]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~2_combout\,
	datac => \inst|touche~4_combout\,
	datad => \inst|touche[0]~20_combout\,
	combout => \inst4|e~0_combout\);

-- Location: LCCOMB_X60_Y53_N4
\inst4|e~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|e~1_combout\ = (\inst|touche[1]~35_combout\ & ((\inst|touche[3]~28_combout\))) # (!\inst|touche[1]~35_combout\ & (\inst|touche[2]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|touche[2]~13_combout\,
	datac => \inst|touche[3]~28_combout\,
	datad => \inst|touche[1]~35_combout\,
	combout => \inst4|e~1_combout\);

-- Location: LCCOMB_X54_Y53_N30
\inst4|e~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|e~2_combout\ = (\inst4|e~0_combout\) # ((\col4~input_o\ & (\inst|Equal3~0_combout\)) # (!\col4~input_o\ & ((\inst4|e~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst4|e~0_combout\,
	datac => \inst4|e~1_combout\,
	datad => \col4~input_o\,
	combout => \inst4|e~2_combout\);

-- Location: LCCOMB_X59_Y53_N10
\inst4|f~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|f~0_combout\ = (\inst4|Equal9~0_combout\) # ((\inst4|d~2_combout\ & (!\inst4|Equal7~0_combout\ & !\inst4|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d~2_combout\,
	datab => \inst4|Equal7~0_combout\,
	datac => \inst4|Equal8~0_combout\,
	datad => \inst4|Equal9~0_combout\,
	combout => \inst4|f~0_combout\);

-- Location: LCCOMB_X59_Y53_N20
\inst4|g~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|g~0_combout\ = (!\inst4|Equal8~0_combout\ & (!\inst4|Equal9~0_combout\ & ((\inst4|d~2_combout\) # (\inst4|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d~2_combout\,
	datab => \inst4|Equal7~0_combout\,
	datac => \inst4|Equal8~0_combout\,
	datad => \inst4|Equal9~0_combout\,
	combout => \inst4|g~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Sortie <= \Sortie~output_o\;

ww_LedR <= \LedR~output_o\;

ww_LedV <= \LedV~output_o\;

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;

ww_e <= \e~output_o\;

ww_f <= \f~output_o\;

ww_g <= \g~output_o\;
END structure;


