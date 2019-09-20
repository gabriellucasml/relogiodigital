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

-- DATE "09/19/2019 22:47:54"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogioDespertador IS
    PORT (
	teclado : IN std_logic_vector(9 DOWNTO 0);
	selecao : IN std_logic_vector(1 DOWNTO 0);
	h1 : BUFFER std_logic_vector(6 DOWNTO 0);
	h2 : BUFFER std_logic_vector(6 DOWNTO 0);
	m1 : BUFFER std_logic_vector(6 DOWNTO 0);
	m2 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END relogioDespertador;

-- Design Ports Information
-- teclado[0]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h1[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h1[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h1[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h1[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h1[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h1[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h1[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h2[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h2[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h2[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h2[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h2[4]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h2[5]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h2[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[1]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[5]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[6]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[3]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[4]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[5]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecao[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecao[1]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[6]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[4]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[9]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[5]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[8]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF relogioDespertador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_teclado : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_selecao : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_h1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_h2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_m1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_m2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \teclado[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \teclado[1]~input_o\ : std_logic;
SIGNAL \teclado[3]~input_o\ : std_logic;
SIGNAL \teclado[9]~input_o\ : std_logic;
SIGNAL \teclado[5]~input_o\ : std_logic;
SIGNAL \teclado[7]~input_o\ : std_logic;
SIGNAL \cod|s[0]~0_combout\ : std_logic;
SIGNAL \teclado[6]~input_o\ : std_logic;
SIGNAL \teclado[4]~input_o\ : std_logic;
SIGNAL \cod|s[2]~1_combout\ : std_logic;
SIGNAL \selecao[1]~input_o\ : std_logic;
SIGNAL \selecao[0]~input_o\ : std_logic;
SIGNAL \dmx|s1~0_combout\ : std_logic;
SIGNAL \teclado[2]~input_o\ : std_logic;
SIGNAL \teclado[8]~input_o\ : std_logic;
SIGNAL \dp3|a~0_combout\ : std_logic;
SIGNAL \dp1|a~0_combout\ : std_logic;
SIGNAL \dp1|b~0_combout\ : std_logic;
SIGNAL \dp1|c~combout\ : std_logic;
SIGNAL \dp1|d~0_combout\ : std_logic;
SIGNAL \dp1|e~combout\ : std_logic;
SIGNAL \cod|s[1]~2_combout\ : std_logic;
SIGNAL \dp1|f~0_combout\ : std_logic;
SIGNAL \dp1|g~0_combout\ : std_logic;
SIGNAL \dmx|s3~0_combout\ : std_logic;
SIGNAL \dp2|a~0_combout\ : std_logic;
SIGNAL \dp2|b~0_combout\ : std_logic;
SIGNAL \dp2|c~combout\ : std_logic;
SIGNAL \dp2|d~0_combout\ : std_logic;
SIGNAL \dp2|e~combout\ : std_logic;
SIGNAL \dp2|f~0_combout\ : std_logic;
SIGNAL \dp2|g~0_combout\ : std_logic;
SIGNAL \dmx|s3~1_combout\ : std_logic;
SIGNAL \dp3|a~1_combout\ : std_logic;
SIGNAL \dp3|b~0_combout\ : std_logic;
SIGNAL \dp3|c~combout\ : std_logic;
SIGNAL \dp3|d~0_combout\ : std_logic;
SIGNAL \dp3|e~combout\ : std_logic;
SIGNAL \dp3|f~0_combout\ : std_logic;
SIGNAL \dp3|g~0_combout\ : std_logic;
SIGNAL \dmx|s4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cod|s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_teclado[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclado[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclado[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclado[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclado[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclado[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclado[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclado[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclado[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_selecao[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_selecao[0]~input_o\ : std_logic;
SIGNAL \dmx|ALT_INV_s4\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \dmx|ALT_INV_s3~1_combout\ : std_logic;
SIGNAL \dmx|ALT_INV_s3~0_combout\ : std_logic;
SIGNAL \cod|ALT_INV_s\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \cod|ALT_INV_s[1]~2_combout\ : std_logic;
SIGNAL \dp3|ALT_INV_a~0_combout\ : std_logic;
SIGNAL \cod|ALT_INV_s[2]~1_combout\ : std_logic;
SIGNAL \cod|ALT_INV_s[0]~0_combout\ : std_logic;
SIGNAL \dmx|ALT_INV_s1~0_combout\ : std_logic;

BEGIN

ww_teclado <= teclado;
ww_selecao <= selecao;
h1 <= ww_h1;
h2 <= ww_h2;
m1 <= ww_m1;
m2 <= ww_m2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_teclado[8]~input_o\ <= NOT \teclado[8]~input_o\;
\ALT_INV_teclado[2]~input_o\ <= NOT \teclado[2]~input_o\;
\ALT_INV_teclado[5]~input_o\ <= NOT \teclado[5]~input_o\;
\ALT_INV_teclado[1]~input_o\ <= NOT \teclado[1]~input_o\;
\ALT_INV_teclado[9]~input_o\ <= NOT \teclado[9]~input_o\;
\ALT_INV_teclado[7]~input_o\ <= NOT \teclado[7]~input_o\;
\ALT_INV_teclado[3]~input_o\ <= NOT \teclado[3]~input_o\;
\ALT_INV_teclado[4]~input_o\ <= NOT \teclado[4]~input_o\;
\ALT_INV_teclado[6]~input_o\ <= NOT \teclado[6]~input_o\;
\ALT_INV_selecao[1]~input_o\ <= NOT \selecao[1]~input_o\;
\ALT_INV_selecao[0]~input_o\ <= NOT \selecao[0]~input_o\;
\dmx|ALT_INV_s4\(1) <= NOT \dmx|s4\(1);
\dmx|ALT_INV_s3~1_combout\ <= NOT \dmx|s3~1_combout\;
\dmx|ALT_INV_s3~0_combout\ <= NOT \dmx|s3~0_combout\;
\cod|ALT_INV_s\(3) <= NOT \cod|s\(3);
\cod|ALT_INV_s[1]~2_combout\ <= NOT \cod|s[1]~2_combout\;
\cod|ALT_INV_s\(1) <= NOT \cod|s\(1);
\dp3|ALT_INV_a~0_combout\ <= NOT \dp3|a~0_combout\;
\cod|ALT_INV_s[2]~1_combout\ <= NOT \cod|s[2]~1_combout\;
\cod|ALT_INV_s[0]~0_combout\ <= NOT \cod|s[0]~0_combout\;
\dmx|ALT_INV_s1~0_combout\ <= NOT \dmx|s1~0_combout\;

-- Location: IOOBUF_X89_Y36_N56
\h1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|a~0_combout\,
	devoe => ww_devoe,
	o => ww_h1(0));

-- Location: IOOBUF_X89_Y6_N56
\h1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|b~0_combout\,
	devoe => ww_devoe,
	o => ww_h1(1));

-- Location: IOOBUF_X89_Y35_N79
\h1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|c~combout\,
	devoe => ww_devoe,
	o => ww_h1(2));

-- Location: IOOBUF_X89_Y38_N22
\h1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|d~0_combout\,
	devoe => ww_devoe,
	o => ww_h1(3));

-- Location: IOOBUF_X89_Y8_N5
\h1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|e~combout\,
	devoe => ww_devoe,
	o => ww_h1(4));

-- Location: IOOBUF_X72_Y0_N53
\h1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|f~0_combout\,
	devoe => ww_devoe,
	o => ww_h1(5));

-- Location: IOOBUF_X89_Y35_N62
\h1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|g~0_combout\,
	devoe => ww_devoe,
	o => ww_h1(6));

-- Location: IOOBUF_X89_Y36_N39
\h2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp2|a~0_combout\,
	devoe => ww_devoe,
	o => ww_h2(0));

-- Location: IOOBUF_X89_Y35_N96
\h2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp2|b~0_combout\,
	devoe => ww_devoe,
	o => ww_h2(1));

-- Location: IOOBUF_X89_Y35_N45
\h2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp2|c~combout\,
	devoe => ww_devoe,
	o => ww_h2(2));

-- Location: IOOBUF_X89_Y8_N39
\h2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp2|d~0_combout\,
	devoe => ww_devoe,
	o => ww_h2(3));

-- Location: IOOBUF_X89_Y8_N56
\h2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp2|e~combout\,
	devoe => ww_devoe,
	o => ww_h2(4));

-- Location: IOOBUF_X89_Y9_N22
\h2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp2|f~0_combout\,
	devoe => ww_devoe,
	o => ww_h2(5));

-- Location: IOOBUF_X89_Y9_N5
\h2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp2|g~0_combout\,
	devoe => ww_devoe,
	o => ww_h2(6));

-- Location: IOOBUF_X89_Y37_N5
\m1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp3|a~1_combout\,
	devoe => ww_devoe,
	o => ww_m1(0));

-- Location: IOOBUF_X89_Y9_N39
\m1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp3|b~0_combout\,
	devoe => ww_devoe,
	o => ww_m1(1));

-- Location: IOOBUF_X89_Y9_N56
\m1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp3|c~combout\,
	devoe => ww_devoe,
	o => ww_m1(2));

-- Location: IOOBUF_X89_Y37_N56
\m1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp3|d~0_combout\,
	devoe => ww_devoe,
	o => ww_m1(3));

-- Location: IOOBUF_X89_Y6_N39
\m1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp3|e~combout\,
	devoe => ww_devoe,
	o => ww_m1(4));

-- Location: IOOBUF_X89_Y4_N62
\m1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp3|f~0_combout\,
	devoe => ww_devoe,
	o => ww_m1(5));

-- Location: IOOBUF_X89_Y8_N22
\m1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp3|g~0_combout\,
	devoe => ww_devoe,
	o => ww_m1(6));

-- Location: IOOBUF_X60_Y0_N36
\m2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_m2(0));

-- Location: IOOBUF_X28_Y0_N19
\m2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_m2(1));

-- Location: IOOBUF_X78_Y81_N2
\m2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_m2(2));

-- Location: IOOBUF_X62_Y0_N19
\m2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dmx|ALT_INV_s4\(1),
	devoe => ww_devoe,
	o => ww_m2(3));

-- Location: IOOBUF_X68_Y0_N53
\m2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dmx|ALT_INV_s4\(1),
	devoe => ww_devoe,
	o => ww_m2(4));

-- Location: IOOBUF_X72_Y0_N2
\m2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_m2(5));

-- Location: IOOBUF_X68_Y0_N2
\m2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dmx|s4\(1),
	devoe => ww_devoe,
	o => ww_m2(6));

-- Location: IOIBUF_X89_Y36_N4
\teclado[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(1),
	o => \teclado[1]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\teclado[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(3),
	o => \teclado[3]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\teclado[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(9),
	o => \teclado[9]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\teclado[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(5),
	o => \teclado[5]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\teclado[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(7),
	o => \teclado[7]~input_o\);

-- Location: LABCELL_X88_Y21_N30
\cod|s[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cod|s[0]~0_combout\ = ( !\teclado[5]~input_o\ & ( !\teclado[7]~input_o\ & ( (!\teclado[1]~input_o\ & (!\teclado[3]~input_o\ & !\teclado[9]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_teclado[1]~input_o\,
	datac => \ALT_INV_teclado[3]~input_o\,
	datad => \ALT_INV_teclado[9]~input_o\,
	datae => \ALT_INV_teclado[5]~input_o\,
	dataf => \ALT_INV_teclado[7]~input_o\,
	combout => \cod|s[0]~0_combout\);

-- Location: IOIBUF_X89_Y4_N95
\teclado[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(6),
	o => \teclado[6]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\teclado[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(4),
	o => \teclado[4]~input_o\);

-- Location: LABCELL_X88_Y21_N9
\cod|s[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cod|s[2]~1_combout\ = ( !\teclado[7]~input_o\ & ( (!\teclado[4]~input_o\ & (!\teclado[6]~input_o\ & !\teclado[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclado[4]~input_o\,
	datac => \ALT_INV_teclado[6]~input_o\,
	datad => \ALT_INV_teclado[5]~input_o\,
	dataf => \ALT_INV_teclado[7]~input_o\,
	combout => \cod|s[2]~1_combout\);

-- Location: IOIBUF_X72_Y0_N18
\selecao[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao(1),
	o => \selecao[1]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\selecao[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao(0),
	o => \selecao[0]~input_o\);

-- Location: MLABCELL_X87_Y21_N0
\dmx|s1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dmx|s1~0_combout\ = ( !\selecao[1]~input_o\ & ( !\selecao[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_selecao[1]~input_o\,
	dataf => \ALT_INV_selecao[0]~input_o\,
	combout => \dmx|s1~0_combout\);

-- Location: IOIBUF_X89_Y6_N21
\teclado[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(2),
	o => \teclado[2]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\teclado[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(8),
	o => \teclado[8]~input_o\);

-- Location: LABCELL_X88_Y21_N42
\dp3|a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp3|a~0_combout\ = ( !\teclado[3]~input_o\ & ( !\teclado[7]~input_o\ & ( (!\teclado[2]~input_o\ & (!\teclado[6]~input_o\ & (!\teclado[8]~input_o\ & !\teclado[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclado[2]~input_o\,
	datab => \ALT_INV_teclado[6]~input_o\,
	datac => \ALT_INV_teclado[8]~input_o\,
	datad => \ALT_INV_teclado[9]~input_o\,
	datae => \ALT_INV_teclado[3]~input_o\,
	dataf => \ALT_INV_teclado[7]~input_o\,
	combout => \dp3|a~0_combout\);

-- Location: LABCELL_X88_Y21_N48
\dp1|a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|a~0_combout\ = ( \dmx|s1~0_combout\ & ( \dp3|a~0_combout\ & ( (!\cod|s[0]~0_combout\ & (((!\cod|s[2]~1_combout\)))) # (\cod|s[0]~0_combout\ & (!\teclado[6]~input_o\ & (!\teclado[4]~input_o\))) ) ) ) # ( !\dmx|s1~0_combout\ & ( \dp3|a~0_combout\ ) ) # 
-- ( \dmx|s1~0_combout\ & ( !\dp3|a~0_combout\ ) ) # ( !\dmx|s1~0_combout\ & ( !\dp3|a~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111110101001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s[0]~0_combout\,
	datab => \ALT_INV_teclado[6]~input_o\,
	datac => \ALT_INV_teclado[4]~input_o\,
	datad => \cod|ALT_INV_s[2]~1_combout\,
	datae => \dmx|ALT_INV_s1~0_combout\,
	dataf => \dp3|ALT_INV_a~0_combout\,
	combout => \dp1|a~0_combout\);

-- Location: LABCELL_X88_Y21_N54
\cod|s[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cod|s\(1) = ( !\teclado[7]~input_o\ & ( (!\teclado[2]~input_o\ & (!\teclado[6]~input_o\ & !\teclado[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclado[2]~input_o\,
	datab => \ALT_INV_teclado[6]~input_o\,
	datac => \ALT_INV_teclado[3]~input_o\,
	dataf => \ALT_INV_teclado[7]~input_o\,
	combout => \cod|s\(1));

-- Location: LABCELL_X88_Y21_N0
\dp1|b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|b~0_combout\ = ( \cod|s[2]~1_combout\ ) # ( !\cod|s[2]~1_combout\ & ( (!\dmx|s1~0_combout\) # (!\cod|s\(1) $ (\cod|s[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110111101101111011011110110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s\(1),
	datab => \dmx|ALT_INV_s1~0_combout\,
	datac => \cod|ALT_INV_s[0]~0_combout\,
	dataf => \cod|ALT_INV_s[2]~1_combout\,
	combout => \dp1|b~0_combout\);

-- Location: MLABCELL_X87_Y21_N36
\dp1|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|c~combout\ = ( \cod|s[0]~0_combout\ & ( (!\cod|s[2]~1_combout\) # ((!\dmx|s1~0_combout\) # (\cod|s\(1))) ) ) # ( !\cod|s[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s[2]~1_combout\,
	datab => \cod|ALT_INV_s\(1),
	datac => \dmx|ALT_INV_s1~0_combout\,
	dataf => \cod|ALT_INV_s[0]~0_combout\,
	combout => \dp1|c~combout\);

-- Location: LABCELL_X88_Y21_N36
\dp1|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|d~0_combout\ = ( \cod|s\(1) & ( \dmx|s1~0_combout\ & ( (!\cod|s[0]~0_combout\ & (((!\cod|s[2]~1_combout\)))) # (\cod|s[0]~0_combout\ & (!\teclado[4]~input_o\ & (!\teclado[6]~input_o\))) ) ) ) # ( !\cod|s\(1) & ( \dmx|s1~0_combout\ & ( 
-- (\cod|s[2]~1_combout\) # (\cod|s[0]~0_combout\) ) ) ) # ( \cod|s\(1) & ( !\dmx|s1~0_combout\ ) ) # ( !\cod|s\(1) & ( !\dmx|s1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011111111111110110000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclado[4]~input_o\,
	datab => \cod|ALT_INV_s[0]~0_combout\,
	datac => \ALT_INV_teclado[6]~input_o\,
	datad => \cod|ALT_INV_s[2]~1_combout\,
	datae => \cod|ALT_INV_s\(1),
	dataf => \dmx|ALT_INV_s1~0_combout\,
	combout => \dp1|d~0_combout\);

-- Location: LABCELL_X88_Y21_N12
\dp1|e\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|e~combout\ = ( \cod|s[0]~0_combout\ & ( (!\dmx|s1~0_combout\) # ((!\cod|s\(1)) # ((!\teclado[4]~input_o\ & !\teclado[6]~input_o\))) ) ) # ( !\cod|s[0]~0_combout\ & ( !\dmx|s1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111110001111111111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclado[4]~input_o\,
	datab => \ALT_INV_teclado[6]~input_o\,
	datac => \dmx|ALT_INV_s1~0_combout\,
	datad => \cod|ALT_INV_s\(1),
	dataf => \cod|ALT_INV_s[0]~0_combout\,
	combout => \dp1|e~combout\);

-- Location: LABCELL_X88_Y21_N57
\cod|s[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cod|s[1]~2_combout\ = (!\teclado[2]~input_o\ & !\teclado[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclado[2]~input_o\,
	datab => \ALT_INV_teclado[6]~input_o\,
	combout => \cod|s[1]~2_combout\);

-- Location: LABCELL_X88_Y21_N3
\cod|s[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cod|s\(3) = (!\teclado[9]~input_o\ & !\teclado[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_teclado[9]~input_o\,
	datad => \ALT_INV_teclado[8]~input_o\,
	combout => \cod|s\(3));

-- Location: MLABCELL_X87_Y21_N12
\dp1|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|f~0_combout\ = ( \dmx|s1~0_combout\ & ( \cod|s\(3) & ( (!\cod|s[0]~0_combout\ & (((!\cod|s[2]~1_combout\ & \cod|s\(1))))) # (\cod|s[0]~0_combout\ & (((!\cod|s[2]~1_combout\)) # (\cod|s[1]~2_combout\))) ) ) ) # ( !\dmx|s1~0_combout\ & ( \cod|s\(3) ) ) 
-- # ( \dmx|s1~0_combout\ & ( !\cod|s\(3) ) ) # ( !\dmx|s1~0_combout\ & ( !\cod|s\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110101000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s[0]~0_combout\,
	datab => \cod|ALT_INV_s[1]~2_combout\,
	datac => \cod|ALT_INV_s[2]~1_combout\,
	datad => \cod|ALT_INV_s\(1),
	datae => \dmx|ALT_INV_s1~0_combout\,
	dataf => \cod|ALT_INV_s\(3),
	combout => \dp1|f~0_combout\);

-- Location: MLABCELL_X87_Y21_N18
\dp1|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|g~0_combout\ = ( \cod|s\(3) & ( (\dmx|s1~0_combout\ & ((!\cod|s[2]~1_combout\ & ((\cod|s[0]~0_combout\) # (\cod|s\(1)))) # (\cod|s[2]~1_combout\ & (!\cod|s\(1))))) ) ) # ( !\cod|s\(3) & ( \dmx|s1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000110000011100000011000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s[2]~1_combout\,
	datab => \cod|ALT_INV_s\(1),
	datac => \dmx|ALT_INV_s1~0_combout\,
	datad => \cod|ALT_INV_s[0]~0_combout\,
	dataf => \cod|ALT_INV_s\(3),
	combout => \dp1|g~0_combout\);

-- Location: MLABCELL_X87_Y21_N57
\dmx|s3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dmx|s3~0_combout\ = ( !\selecao[1]~input_o\ & ( \selecao[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_selecao[1]~input_o\,
	dataf => \ALT_INV_selecao[0]~input_o\,
	combout => \dmx|s3~0_combout\);

-- Location: LABCELL_X88_Y21_N51
\dp2|a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp2|a~0_combout\ = ( \dmx|s3~0_combout\ & ( \dp3|a~0_combout\ & ( (!\cod|s[0]~0_combout\ & (((!\cod|s[2]~1_combout\)))) # (\cod|s[0]~0_combout\ & (!\teclado[6]~input_o\ & ((!\teclado[4]~input_o\)))) ) ) ) # ( !\dmx|s3~0_combout\ & ( \dp3|a~0_combout\ ) ) 
-- # ( \dmx|s3~0_combout\ & ( !\dp3|a~0_combout\ ) ) # ( !\dmx|s3~0_combout\ & ( !\dp3|a~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111110010010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s[0]~0_combout\,
	datab => \ALT_INV_teclado[6]~input_o\,
	datac => \cod|ALT_INV_s[2]~1_combout\,
	datad => \ALT_INV_teclado[4]~input_o\,
	datae => \dmx|ALT_INV_s3~0_combout\,
	dataf => \dp3|ALT_INV_a~0_combout\,
	combout => \dp2|a~0_combout\);

-- Location: MLABCELL_X87_Y21_N33
\dp2|b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp2|b~0_combout\ = (!\dmx|s3~0_combout\) # ((!\cod|s[0]~0_combout\ $ (\cod|s\(1))) # (\cod|s[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111111111111110011111111111111001111111111111100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s[0]~0_combout\,
	datab => \cod|ALT_INV_s\(1),
	datac => \dmx|ALT_INV_s3~0_combout\,
	datad => \cod|ALT_INV_s[2]~1_combout\,
	combout => \dp2|b~0_combout\);

-- Location: MLABCELL_X87_Y21_N6
\dp2|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp2|c~combout\ = ( \dmx|s3~0_combout\ & ( (!\cod|s[2]~1_combout\) # ((!\cod|s[0]~0_combout\) # (\cod|s\(1))) ) ) # ( !\dmx|s3~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110111111101111111111111111111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s[2]~1_combout\,
	datab => \cod|ALT_INV_s\(1),
	datac => \cod|ALT_INV_s[0]~0_combout\,
	datae => \dmx|ALT_INV_s3~0_combout\,
	combout => \dp2|c~combout\);

-- Location: LABCELL_X88_Y21_N39
\dp2|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp2|d~0_combout\ = ( \cod|s\(1) & ( \dmx|s3~0_combout\ & ( (!\cod|s[0]~0_combout\ & (((!\cod|s[2]~1_combout\)))) # (\cod|s[0]~0_combout\ & (!\teclado[4]~input_o\ & ((!\teclado[6]~input_o\)))) ) ) ) # ( !\cod|s\(1) & ( \dmx|s3~0_combout\ & ( 
-- (\cod|s[2]~1_combout\) # (\cod|s[0]~0_combout\) ) ) ) # ( \cod|s\(1) & ( !\dmx|s3~0_combout\ ) ) # ( !\cod|s\(1) & ( !\dmx|s3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100111111001111111110001011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclado[4]~input_o\,
	datab => \cod|ALT_INV_s[0]~0_combout\,
	datac => \cod|ALT_INV_s[2]~1_combout\,
	datad => \ALT_INV_teclado[6]~input_o\,
	datae => \cod|ALT_INV_s\(1),
	dataf => \dmx|ALT_INV_s3~0_combout\,
	combout => \dp2|d~0_combout\);

-- Location: LABCELL_X88_Y21_N15
\dp2|e\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp2|e~combout\ = ( \cod|s[0]~0_combout\ & ( (!\dmx|s3~0_combout\) # ((!\cod|s\(1)) # ((!\teclado[4]~input_o\ & !\teclado[6]~input_o\))) ) ) # ( !\cod|s[0]~0_combout\ & ( !\dmx|s3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111110001111111111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclado[4]~input_o\,
	datab => \ALT_INV_teclado[6]~input_o\,
	datac => \dmx|ALT_INV_s3~0_combout\,
	datad => \cod|ALT_INV_s\(1),
	dataf => \cod|ALT_INV_s[0]~0_combout\,
	combout => \dp2|e~combout\);

-- Location: MLABCELL_X87_Y21_N15
\dp2|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp2|f~0_combout\ = ( \dmx|s3~0_combout\ & ( \cod|s\(3) & ( (!\cod|s[0]~0_combout\ & (((\cod|s\(1) & !\cod|s[2]~1_combout\)))) # (\cod|s[0]~0_combout\ & (((!\cod|s[2]~1_combout\)) # (\cod|s[1]~2_combout\))) ) ) ) # ( !\dmx|s3~0_combout\ & ( \cod|s\(3) ) ) 
-- # ( \dmx|s3~0_combout\ & ( !\cod|s\(3) ) ) # ( !\dmx|s3~0_combout\ & ( !\cod|s\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110101111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s[0]~0_combout\,
	datab => \cod|ALT_INV_s[1]~2_combout\,
	datac => \cod|ALT_INV_s\(1),
	datad => \cod|ALT_INV_s[2]~1_combout\,
	datae => \dmx|ALT_INV_s3~0_combout\,
	dataf => \cod|ALT_INV_s\(3),
	combout => \dp2|f~0_combout\);

-- Location: MLABCELL_X87_Y21_N39
\dp2|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp2|g~0_combout\ = ( \cod|s\(3) & ( (\dmx|s3~0_combout\ & ((!\cod|s[2]~1_combout\ & ((\cod|s[0]~0_combout\) # (\cod|s\(1)))) # (\cod|s[2]~1_combout\ & (!\cod|s\(1))))) ) ) # ( !\cod|s\(3) & ( \dmx|s3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000110000011100000011000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s[2]~1_combout\,
	datab => \cod|ALT_INV_s\(1),
	datac => \dmx|ALT_INV_s3~0_combout\,
	datad => \cod|ALT_INV_s[0]~0_combout\,
	dataf => \cod|ALT_INV_s\(3),
	combout => \dp2|g~0_combout\);

-- Location: MLABCELL_X87_Y21_N42
\dmx|s3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dmx|s3~1_combout\ = (\selecao[1]~input_o\ & !\selecao[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[1]~input_o\,
	datab => \ALT_INV_selecao[0]~input_o\,
	combout => \dmx|s3~1_combout\);

-- Location: LABCELL_X88_Y21_N18
\dp3|a~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp3|a~1_combout\ = ( \dmx|s3~1_combout\ & ( \teclado[6]~input_o\ & ( (!\dp3|a~0_combout\) # ((!\cod|s[2]~1_combout\ & !\cod|s[0]~0_combout\)) ) ) ) # ( !\dmx|s3~1_combout\ & ( \teclado[6]~input_o\ ) ) # ( \dmx|s3~1_combout\ & ( !\teclado[6]~input_o\ & ( 
-- (!\dp3|a~0_combout\) # ((!\cod|s[0]~0_combout\ & ((!\cod|s[2]~1_combout\))) # (\cod|s[0]~0_combout\ & (!\teclado[4]~input_o\))) ) ) ) # ( !\dmx|s3~1_combout\ & ( !\teclado[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111100101011111111111111111111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclado[4]~input_o\,
	datab => \cod|ALT_INV_s[2]~1_combout\,
	datac => \cod|ALT_INV_s[0]~0_combout\,
	datad => \dp3|ALT_INV_a~0_combout\,
	datae => \dmx|ALT_INV_s3~1_combout\,
	dataf => \ALT_INV_teclado[6]~input_o\,
	combout => \dp3|a~1_combout\);

-- Location: MLABCELL_X87_Y21_N51
\dp3|b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp3|b~0_combout\ = ( \cod|s[2]~1_combout\ ) # ( !\cod|s[2]~1_combout\ & ( (!\dmx|s3~1_combout\) # (!\cod|s[0]~0_combout\ $ (\cod|s\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111111001111111111111111111111001111110011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s[0]~0_combout\,
	datab => \cod|ALT_INV_s\(1),
	datac => \dmx|ALT_INV_s3~1_combout\,
	datae => \cod|ALT_INV_s[2]~1_combout\,
	combout => \dp3|b~0_combout\);

-- Location: MLABCELL_X87_Y21_N30
\dp3|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp3|c~combout\ = ( \dmx|s3~1_combout\ & ( (!\cod|s[0]~0_combout\) # ((!\cod|s[2]~1_combout\) # (\cod|s\(1))) ) ) # ( !\dmx|s3~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s[0]~0_combout\,
	datab => \cod|ALT_INV_s\(1),
	datac => \cod|ALT_INV_s[2]~1_combout\,
	dataf => \dmx|ALT_INV_s3~1_combout\,
	combout => \dp3|c~combout\);

-- Location: LABCELL_X88_Y21_N24
\dp3|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp3|d~0_combout\ = ( \dmx|s3~1_combout\ & ( \teclado[4]~input_o\ & ( !\cod|s\(1) $ (((!\cod|s[2]~1_combout\ & !\cod|s[0]~0_combout\))) ) ) ) # ( !\dmx|s3~1_combout\ & ( \teclado[4]~input_o\ ) ) # ( \dmx|s3~1_combout\ & ( !\teclado[4]~input_o\ & ( 
-- (!\cod|s[0]~0_combout\ & (!\cod|s\(1) $ ((!\cod|s[2]~1_combout\)))) # (\cod|s[0]~0_combout\ & ((!\cod|s\(1)) # ((!\teclado[6]~input_o\)))) ) ) ) # ( !\dmx|s3~1_combout\ & ( !\teclado[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011011110110101011111111111111110110101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s\(1),
	datab => \cod|ALT_INV_s[2]~1_combout\,
	datac => \cod|ALT_INV_s[0]~0_combout\,
	datad => \ALT_INV_teclado[6]~input_o\,
	datae => \dmx|ALT_INV_s3~1_combout\,
	dataf => \ALT_INV_teclado[4]~input_o\,
	combout => \dp3|d~0_combout\);

-- Location: LABCELL_X88_Y21_N6
\dp3|e\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp3|e~combout\ = ( \cod|s[0]~0_combout\ & ( (!\dmx|s3~1_combout\) # ((!\cod|s\(1)) # ((!\teclado[4]~input_o\ & !\teclado[6]~input_o\))) ) ) # ( !\cod|s[0]~0_combout\ & ( !\dmx|s3~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111110111111001111111011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclado[4]~input_o\,
	datab => \dmx|ALT_INV_s3~1_combout\,
	datac => \cod|ALT_INV_s\(1),
	datad => \ALT_INV_teclado[6]~input_o\,
	dataf => \cod|ALT_INV_s[0]~0_combout\,
	combout => \dp3|e~combout\);

-- Location: MLABCELL_X87_Y21_N24
\dp3|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp3|f~0_combout\ = ( \cod|s[1]~2_combout\ & ( \cod|s\(3) & ( (!\dmx|s3~1_combout\) # (((!\cod|s[2]~1_combout\ & \cod|s\(1))) # (\cod|s[0]~0_combout\)) ) ) ) # ( !\cod|s[1]~2_combout\ & ( \cod|s\(3) & ( (!\dmx|s3~1_combout\) # ((!\cod|s[2]~1_combout\ & 
-- ((\cod|s\(1)) # (\cod|s[0]~0_combout\)))) ) ) ) # ( \cod|s[1]~2_combout\ & ( !\cod|s\(3) ) ) # ( !\cod|s[1]~2_combout\ & ( !\cod|s\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001110111011101100111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s[2]~1_combout\,
	datab => \dmx|ALT_INV_s3~1_combout\,
	datac => \cod|ALT_INV_s[0]~0_combout\,
	datad => \cod|ALT_INV_s\(1),
	datae => \cod|ALT_INV_s[1]~2_combout\,
	dataf => \cod|ALT_INV_s\(3),
	combout => \dp3|f~0_combout\);

-- Location: MLABCELL_X87_Y21_N21
\dp3|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp3|g~0_combout\ = ( \cod|s\(3) & ( (\dmx|s3~1_combout\ & ((!\cod|s[2]~1_combout\ & ((\cod|s[0]~0_combout\) # (\cod|s\(1)))) # (\cod|s[2]~1_combout\ & (!\cod|s\(1))))) ) ) # ( !\cod|s\(3) & ( \dmx|s3~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000110000011100000011000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s[2]~1_combout\,
	datab => \cod|ALT_INV_s\(1),
	datac => \dmx|ALT_INV_s3~1_combout\,
	datad => \cod|ALT_INV_s[0]~0_combout\,
	dataf => \cod|ALT_INV_s\(3),
	combout => \dp3|g~0_combout\);

-- Location: MLABCELL_X87_Y21_N45
\dmx|s4[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \dmx|s4\(1) = ( !\cod|s[0]~0_combout\ & ( (\selecao[1]~input_o\ & \selecao[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[1]~input_o\,
	datab => \ALT_INV_selecao[0]~input_o\,
	dataf => \cod|ALT_INV_s[0]~0_combout\,
	combout => \dmx|s4\(1));

-- Location: IOIBUF_X74_Y81_N75
\teclado[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(0),
	o => \teclado[0]~input_o\);

-- Location: MLABCELL_X72_Y32_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


