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

-- DATE "10/30/2019 16:53:32"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogioDespertador IS
    PORT (
	teclado : IN std_logic_vector(9 DOWNTO 0);
	selecao : IN std_logic_vector(1 DOWNTO 0);
	CLK : IN std_logic;
	enable : IN std_logic;
	load : IN std_logic;
	hora1 : OUT std_logic_vector(6 DOWNTO 0);
	hora0 : OUT std_logic_vector(6 DOWNTO 0);
	min1 : OUT std_logic_vector(6 DOWNTO 0);
	min0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END relogioDespertador;

-- Design Ports Information
-- teclado[0]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hora1[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hora1[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hora1[2]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hora1[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hora1[4]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hora1[5]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hora1[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hora0[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hora0[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hora0[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hora0[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hora0[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hora0[5]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hora0[6]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min1[0]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min1[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min1[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min1[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min1[4]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min1[5]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min1[6]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min0[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min0[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min0[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min0[3]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min0[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min0[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min0[6]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[8]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[9]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecao[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecao[0]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[6]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[4]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[5]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_CLK : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_hora1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hora0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_min1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_min0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \teclado[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \teclado[6]~input_o\ : std_logic;
SIGNAL \teclado[7]~input_o\ : std_logic;
SIGNAL \teclado[3]~input_o\ : std_logic;
SIGNAL \teclado[2]~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \selecao[1]~input_o\ : std_logic;
SIGNAL \selecao[0]~input_o\ : std_logic;
SIGNAL \conth0|q~1_combout\ : std_logic;
SIGNAL \teclado[9]~input_o\ : std_logic;
SIGNAL \teclado[5]~input_o\ : std_logic;
SIGNAL \teclado[1]~input_o\ : std_logic;
SIGNAL \conth0|q~4_combout\ : std_logic;
SIGNAL \contm0|q~0_combout\ : std_logic;
SIGNAL \contm0|q~4_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \contm0|q~2_combout\ : std_logic;
SIGNAL \contm0|q~3_combout\ : std_logic;
SIGNAL \contm0|Add0~0_combout\ : std_logic;
SIGNAL \contm0|q~1_combout\ : std_logic;
SIGNAL \control|Equal4~1_combout\ : std_logic;
SIGNAL \contm1|q[2]~3_combout\ : std_logic;
SIGNAL \contm1|q[0]~7_combout\ : std_logic;
SIGNAL \contm1|q[1]~4_combout\ : std_logic;
SIGNAL \contm1|q[3]~0_combout\ : std_logic;
SIGNAL \teclado[8]~input_o\ : std_logic;
SIGNAL \contm1|q[3]~1_combout\ : std_logic;
SIGNAL \contm1|q[3]~2_combout\ : std_logic;
SIGNAL \control|process_0~1_combout\ : std_logic;
SIGNAL \control|cln~0_combout\ : std_logic;
SIGNAL \teclado[4]~input_o\ : std_logic;
SIGNAL \contm1|q[2]~5_combout\ : std_logic;
SIGNAL \contm1|q[2]~6_combout\ : std_logic;
SIGNAL \control|process_0~0_combout\ : std_logic;
SIGNAL \control|process_0~2_combout\ : std_logic;
SIGNAL \conth0|q~2_combout\ : std_logic;
SIGNAL \conth0|q~3_combout\ : std_logic;
SIGNAL \conth0|Add0~0_combout\ : std_logic;
SIGNAL \conth0|q~0_combout\ : std_logic;
SIGNAL \display3|a~combout\ : std_logic;
SIGNAL \display3|b~combout\ : std_logic;
SIGNAL \display3|c~combout\ : std_logic;
SIGNAL \display3|d~0_combout\ : std_logic;
SIGNAL \display3|e~0_combout\ : std_logic;
SIGNAL \display3|f~0_combout\ : std_logic;
SIGNAL \display3|g~0_combout\ : std_logic;
SIGNAL \display2|a~combout\ : std_logic;
SIGNAL \display2|b~combout\ : std_logic;
SIGNAL \display2|c~combout\ : std_logic;
SIGNAL \display2|d~0_combout\ : std_logic;
SIGNAL \display2|e~0_combout\ : std_logic;
SIGNAL \display2|f~0_combout\ : std_logic;
SIGNAL \display2|g~0_combout\ : std_logic;
SIGNAL \display1|a~combout\ : std_logic;
SIGNAL \display1|b~combout\ : std_logic;
SIGNAL \control|Equal4~0_combout\ : std_logic;
SIGNAL \display1|d~0_combout\ : std_logic;
SIGNAL \display1|e~0_combout\ : std_logic;
SIGNAL \display1|f~0_combout\ : std_logic;
SIGNAL \display1|g~0_combout\ : std_logic;
SIGNAL \cod|s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contm0|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contm1|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \conth0|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_teclado[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclado[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclado[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclado[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclado[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclado[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclado[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_selecao[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_selecao[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclado[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclado[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_load~input_o\ : std_logic;
SIGNAL \contm0|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \contm0|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \contm1|ALT_INV_q[2]~5_combout\ : std_logic;
SIGNAL \contm1|ALT_INV_q[2]~3_combout\ : std_logic;
SIGNAL \control|ALT_INV_cln~0_combout\ : std_logic;
SIGNAL \contm1|ALT_INV_q[3]~1_combout\ : std_logic;
SIGNAL \contm1|ALT_INV_q[3]~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \cod|ALT_INV_s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \conth0|ALT_INV_q~1_combout\ : std_logic;
SIGNAL \control|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \control|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \control|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \conth0|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \control|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \contm0|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contm1|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \conth0|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_teclado <= teclado;
ww_selecao <= selecao;
ww_CLK <= CLK;
ww_enable <= enable;
ww_load <= load;
hora1 <= ww_hora1;
hora0 <= ww_hora0;
min1 <= ww_min1;
min0 <= ww_min0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_teclado[1]~input_o\ <= NOT \teclado[1]~input_o\;
\ALT_INV_teclado[5]~input_o\ <= NOT \teclado[5]~input_o\;
\ALT_INV_teclado[4]~input_o\ <= NOT \teclado[4]~input_o\;
\ALT_INV_teclado[7]~input_o\ <= NOT \teclado[7]~input_o\;
\ALT_INV_teclado[3]~input_o\ <= NOT \teclado[3]~input_o\;
\ALT_INV_teclado[6]~input_o\ <= NOT \teclado[6]~input_o\;
\ALT_INV_teclado[2]~input_o\ <= NOT \teclado[2]~input_o\;
\ALT_INV_selecao[0]~input_o\ <= NOT \selecao[0]~input_o\;
\ALT_INV_selecao[1]~input_o\ <= NOT \selecao[1]~input_o\;
\ALT_INV_teclado[9]~input_o\ <= NOT \teclado[9]~input_o\;
\ALT_INV_teclado[8]~input_o\ <= NOT \teclado[8]~input_o\;
\ALT_INV_load~input_o\ <= NOT \load~input_o\;
\contm0|ALT_INV_q~0_combout\ <= NOT \contm0|q~0_combout\;
\contm0|ALT_INV_Add0~0_combout\ <= NOT \contm0|Add0~0_combout\;
\contm1|ALT_INV_q[2]~5_combout\ <= NOT \contm1|q[2]~5_combout\;
\contm1|ALT_INV_q[2]~3_combout\ <= NOT \contm1|q[2]~3_combout\;
\control|ALT_INV_cln~0_combout\ <= NOT \control|cln~0_combout\;
\contm1|ALT_INV_q[3]~1_combout\ <= NOT \contm1|q[3]~1_combout\;
\contm1|ALT_INV_q[3]~0_combout\ <= NOT \contm1|q[3]~0_combout\;
\control|ALT_INV_Equal4~1_combout\ <= NOT \control|Equal4~1_combout\;
\cod|ALT_INV_s\(0) <= NOT \cod|s\(0);
\cod|ALT_INV_s\(2) <= NOT \cod|s\(2);
\cod|ALT_INV_s\(1) <= NOT \cod|s\(1);
\conth0|ALT_INV_q~1_combout\ <= NOT \conth0|q~1_combout\;
\control|ALT_INV_process_0~2_combout\ <= NOT \control|process_0~2_combout\;
\control|ALT_INV_process_0~1_combout\ <= NOT \control|process_0~1_combout\;
\control|ALT_INV_process_0~0_combout\ <= NOT \control|process_0~0_combout\;
\conth0|ALT_INV_Add0~0_combout\ <= NOT \conth0|Add0~0_combout\;
\control|ALT_INV_Equal4~0_combout\ <= NOT \control|Equal4~0_combout\;
\contm0|ALT_INV_q\(0) <= NOT \contm0|q\(0);
\contm0|ALT_INV_q\(2) <= NOT \contm0|q\(2);
\contm0|ALT_INV_q\(1) <= NOT \contm0|q\(1);
\contm0|ALT_INV_q\(3) <= NOT \contm0|q\(3);
\contm1|ALT_INV_q\(0) <= NOT \contm1|q\(0);
\contm1|ALT_INV_q\(2) <= NOT \contm1|q\(2);
\contm1|ALT_INV_q\(1) <= NOT \contm1|q\(1);
\contm1|ALT_INV_q\(3) <= NOT \contm1|q\(3);
\conth0|ALT_INV_q\(0) <= NOT \conth0|q\(0);
\conth0|ALT_INV_q\(2) <= NOT \conth0|q\(2);
\conth0|ALT_INV_q\(1) <= NOT \conth0|q\(1);
\conth0|ALT_INV_q\(3) <= NOT \conth0|q\(3);

-- Location: IOOBUF_X76_Y81_N2
\hora1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hora1(0));

-- Location: IOOBUF_X4_Y0_N19
\hora1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hora1(1));

-- Location: IOOBUF_X30_Y0_N19
\hora1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hora1(2));

-- Location: IOOBUF_X50_Y81_N93
\hora1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hora1(3));

-- Location: IOOBUF_X76_Y81_N36
\hora1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hora1(4));

-- Location: IOOBUF_X89_Y35_N79
\hora1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hora1(5));

-- Location: IOOBUF_X72_Y0_N36
\hora1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_hora1(6));

-- Location: IOOBUF_X58_Y0_N76
\hora0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|a~combout\,
	devoe => ww_devoe,
	o => ww_hora0(0));

-- Location: IOOBUF_X60_Y0_N2
\hora0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|b~combout\,
	devoe => ww_devoe,
	o => ww_hora0(1));

-- Location: IOOBUF_X54_Y0_N36
\hora0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|c~combout\,
	devoe => ww_devoe,
	o => ww_hora0(2));

-- Location: IOOBUF_X56_Y0_N2
\hora0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|d~0_combout\,
	devoe => ww_devoe,
	o => ww_hora0(3));

-- Location: IOOBUF_X56_Y0_N19
\hora0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|e~0_combout\,
	devoe => ww_devoe,
	o => ww_hora0(4));

-- Location: IOOBUF_X62_Y0_N19
\hora0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|f~0_combout\,
	devoe => ww_devoe,
	o => ww_hora0(5));

-- Location: IOOBUF_X56_Y0_N53
\hora0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|g~0_combout\,
	devoe => ww_devoe,
	o => ww_hora0(6));

-- Location: IOOBUF_X70_Y0_N19
\min1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|a~combout\,
	devoe => ww_devoe,
	o => ww_min1(0));

-- Location: IOOBUF_X68_Y0_N53
\min1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|b~combout\,
	devoe => ww_devoe,
	o => ww_min1(1));

-- Location: IOOBUF_X70_Y0_N2
\min1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|c~combout\,
	devoe => ww_devoe,
	o => ww_min1(2));

-- Location: IOOBUF_X70_Y0_N53
\min1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|d~0_combout\,
	devoe => ww_devoe,
	o => ww_min1(3));

-- Location: IOOBUF_X68_Y0_N2
\min1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|e~0_combout\,
	devoe => ww_devoe,
	o => ww_min1(4));

-- Location: IOOBUF_X70_Y0_N36
\min1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|f~0_combout\,
	devoe => ww_devoe,
	o => ww_min1(5));

-- Location: IOOBUF_X68_Y0_N19
\min1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|g~0_combout\,
	devoe => ww_devoe,
	o => ww_min1(6));

-- Location: IOOBUF_X54_Y0_N53
\min0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|a~combout\,
	devoe => ww_devoe,
	o => ww_min0(0));

-- Location: IOOBUF_X62_Y0_N36
\min0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|b~combout\,
	devoe => ww_devoe,
	o => ww_min0(1));

-- Location: IOOBUF_X62_Y0_N2
\min0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \control|ALT_INV_Equal4~0_combout\,
	devoe => ww_devoe,
	o => ww_min0(2));

-- Location: IOOBUF_X56_Y0_N36
\min0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|d~0_combout\,
	devoe => ww_devoe,
	o => ww_min0(3));

-- Location: IOOBUF_X58_Y0_N93
\min0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|e~0_combout\,
	devoe => ww_devoe,
	o => ww_min0(4));

-- Location: IOOBUF_X58_Y0_N42
\min0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|f~0_combout\,
	devoe => ww_devoe,
	o => ww_min0(5));

-- Location: IOOBUF_X62_Y0_N53
\min0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|g~0_combout\,
	devoe => ww_devoe,
	o => ww_min0(6));

-- Location: IOIBUF_X89_Y35_N61
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G10
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X66_Y0_N92
\teclado[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(6),
	o => \teclado[6]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\teclado[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(7),
	o => \teclado[7]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\teclado[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(3),
	o => \teclado[3]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\teclado[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(2),
	o => \teclado[2]~input_o\);

-- Location: LABCELL_X64_Y3_N9
\cod|s[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cod|s\(1) = ( !\teclado[2]~input_o\ & ( (!\teclado[6]~input_o\ & (!\teclado[7]~input_o\ & !\teclado[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclado[6]~input_o\,
	datab => \ALT_INV_teclado[7]~input_o\,
	datac => \ALT_INV_teclado[3]~input_o\,
	dataf => \ALT_INV_teclado[2]~input_o\,
	combout => \cod|s\(1));

-- Location: IOIBUF_X64_Y0_N52
\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\selecao[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao(1),
	o => \selecao[1]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\selecao[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao(0),
	o => \selecao[0]~input_o\);

-- Location: LABCELL_X64_Y3_N21
\conth0|q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conth0|q~1_combout\ = ( \selecao[0]~input_o\ & ( (\load~input_o\ & !\selecao[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_load~input_o\,
	datad => \ALT_INV_selecao[1]~input_o\,
	dataf => \ALT_INV_selecao[0]~input_o\,
	combout => \conth0|q~1_combout\);

-- Location: IOIBUF_X64_Y0_N18
\teclado[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(9),
	o => \teclado[9]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\teclado[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(5),
	o => \teclado[5]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\teclado[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(1),
	o => \teclado[1]~input_o\);

-- Location: LABCELL_X64_Y3_N18
\cod|s[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cod|s\(0) = ( !\teclado[1]~input_o\ & ( (!\teclado[9]~input_o\ & (!\teclado[5]~input_o\ & (!\teclado[7]~input_o\ & !\teclado[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclado[9]~input_o\,
	datab => \ALT_INV_teclado[5]~input_o\,
	datac => \ALT_INV_teclado[7]~input_o\,
	datad => \ALT_INV_teclado[3]~input_o\,
	dataf => \ALT_INV_teclado[1]~input_o\,
	combout => \cod|s\(0));

-- Location: LABCELL_X63_Y3_N42
\conth0|q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conth0|q~4_combout\ = ( \load~input_o\ & ( (\conth0|q~1_combout\ & !\cod|s\(0)) ) ) # ( !\load~input_o\ & ( (!\conth0|q\(0)) # ((\conth0|q~1_combout\ & !\cod|s\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110000111111110011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conth0|ALT_INV_q~1_combout\,
	datac => \cod|ALT_INV_s\(0),
	datad => \conth0|ALT_INV_q\(0),
	dataf => \ALT_INV_load~input_o\,
	combout => \conth0|q~4_combout\);

-- Location: LABCELL_X63_Y3_N36
\contm0|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contm0|q~0_combout\ = ( \selecao[0]~input_o\ & ( (\selecao[1]~input_o\ & \load~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_selecao[1]~input_o\,
	datad => \ALT_INV_load~input_o\,
	dataf => \ALT_INV_selecao[0]~input_o\,
	combout => \contm0|q~0_combout\);

-- Location: LABCELL_X63_Y3_N24
\contm0|q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \contm0|q~4_combout\ = ( \load~input_o\ & ( (\contm0|q~0_combout\ & !\cod|s\(0)) ) ) # ( !\load~input_o\ & ( (!\contm0|q\(0)) # ((\contm0|q~0_combout\ & !\cod|s\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110000111111110011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \contm0|ALT_INV_q~0_combout\,
	datac => \cod|ALT_INV_s\(0),
	datad => \contm0|ALT_INV_q\(0),
	dataf => \ALT_INV_load~input_o\,
	combout => \contm0|q~4_combout\);

-- Location: IOIBUF_X60_Y0_N35
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X63_Y3_N26
\contm0|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \contm0|q~4_combout\,
	clrn => \control|ALT_INV_cln~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contm0|q\(0));

-- Location: LABCELL_X63_Y3_N33
\contm0|q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \contm0|q~2_combout\ = ( \contm0|q\(0) & ( (!\cod|s\(0) & (((!\load~input_o\ & !\contm0|q\(1))) # (\contm0|q~0_combout\))) # (\cod|s\(0) & (!\load~input_o\ & ((!\contm0|q\(1))))) ) ) # ( !\contm0|q\(0) & ( (!\cod|s\(0) & (((!\load~input_o\ & 
-- \contm0|q\(1))) # (\contm0|q~0_combout\))) # (\cod|s\(0) & (!\load~input_o\ & ((\contm0|q\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011001110000010101100111011001110000010101100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s\(0),
	datab => \ALT_INV_load~input_o\,
	datac => \contm0|ALT_INV_q~0_combout\,
	datad => \contm0|ALT_INV_q\(1),
	dataf => \contm0|ALT_INV_q\(0),
	combout => \contm0|q~2_combout\);

-- Location: FF_X63_Y3_N35
\contm0|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \contm0|q~2_combout\,
	clrn => \control|ALT_INV_cln~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contm0|q\(1));

-- Location: LABCELL_X63_Y3_N18
\contm0|q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \contm0|q~3_combout\ = ( \contm0|q\(2) & ( \contm0|q\(1) & ( (!\cod|s\(0) & (((!\contm0|q\(0) & !\load~input_o\)) # (\contm0|q~0_combout\))) # (\cod|s\(0) & (((!\contm0|q\(0) & !\load~input_o\)))) ) ) ) # ( !\contm0|q\(2) & ( \contm0|q\(1) & ( 
-- (!\cod|s\(0) & (((\contm0|q\(0) & !\load~input_o\)) # (\contm0|q~0_combout\))) # (\cod|s\(0) & (((\contm0|q\(0) & !\load~input_o\)))) ) ) ) # ( \contm0|q\(2) & ( !\contm0|q\(1) & ( (!\load~input_o\) # ((!\cod|s\(0) & \contm0|q~0_combout\)) ) ) ) # ( 
-- !\contm0|q\(2) & ( !\contm0|q\(1) & ( (!\cod|s\(0) & \contm0|q~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010111111110010001000101111001000101111001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s\(0),
	datab => \contm0|ALT_INV_q~0_combout\,
	datac => \contm0|ALT_INV_q\(0),
	datad => \ALT_INV_load~input_o\,
	datae => \contm0|ALT_INV_q\(2),
	dataf => \contm0|ALT_INV_q\(1),
	combout => \contm0|q~3_combout\);

-- Location: FF_X63_Y3_N20
\contm0|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \contm0|q~3_combout\,
	clrn => \control|ALT_INV_cln~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contm0|q\(2));

-- Location: LABCELL_X63_Y3_N48
\contm0|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contm0|Add0~0_combout\ = ( \contm0|q\(2) & ( !\contm0|q\(3) $ (((!\contm0|q\(1)) # (!\contm0|q\(0)))) ) ) # ( !\contm0|q\(2) & ( \contm0|q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \contm0|ALT_INV_q\(3),
	datac => \contm0|ALT_INV_q\(1),
	datad => \contm0|ALT_INV_q\(0),
	dataf => \contm0|ALT_INV_q\(2),
	combout => \contm0|Add0~0_combout\);

-- Location: LABCELL_X63_Y3_N30
\contm0|q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contm0|q~1_combout\ = ( \contm0|Add0~0_combout\ & ( (!\load~input_o\) # ((\contm0|q~0_combout\ & !\cod|s\(0))) ) ) # ( !\contm0|Add0~0_combout\ & ( (\contm0|q~0_combout\ & !\cod|s\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011001111110011001100111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_load~input_o\,
	datac => \contm0|ALT_INV_q~0_combout\,
	datad => \cod|ALT_INV_s\(0),
	dataf => \contm0|ALT_INV_Add0~0_combout\,
	combout => \contm0|q~1_combout\);

-- Location: FF_X63_Y3_N32
\contm0|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \contm0|q~1_combout\,
	clrn => \control|ALT_INV_cln~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contm0|q\(3));

-- Location: LABCELL_X63_Y3_N45
\control|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Equal4~1_combout\ = ( !\contm0|q\(0) & ( (\contm0|q\(1) & (\contm0|q\(3) & !\contm0|q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contm0|ALT_INV_q\(1),
	datac => \contm0|ALT_INV_q\(3),
	datad => \contm0|ALT_INV_q\(2),
	dataf => \contm0|ALT_INV_q\(0),
	combout => \control|Equal4~1_combout\);

-- Location: LABCELL_X64_Y3_N45
\contm1|q[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \contm1|q[2]~3_combout\ = (!\selecao[0]~input_o\ & (\load~input_o\ & \selecao[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datac => \ALT_INV_load~input_o\,
	datad => \ALT_INV_selecao[1]~input_o\,
	combout => \contm1|q[2]~3_combout\);

-- Location: LABCELL_X64_Y3_N39
\contm1|q[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \contm1|q[0]~7_combout\ = ( \control|cln~0_combout\ & ( (!\cod|s\(0) & (((!\contm1|q\(0) & !\load~input_o\)) # (\contm1|q[2]~3_combout\))) # (\cod|s\(0) & (!\contm1|q\(0) & (!\load~input_o\))) ) ) # ( !\control|cln~0_combout\ & ( \contm1|q\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111000000111010101100000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s\(0),
	datab => \contm1|ALT_INV_q\(0),
	datac => \ALT_INV_load~input_o\,
	datad => \contm1|ALT_INV_q[2]~3_combout\,
	dataf => \control|ALT_INV_cln~0_combout\,
	combout => \contm1|q[0]~7_combout\);

-- Location: FF_X64_Y3_N41
\contm1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \contm1|q[0]~7_combout\,
	clrn => \control|ALT_INV_process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contm1|q\(0));

-- Location: LABCELL_X64_Y3_N54
\contm1|q[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \contm1|q[1]~4_combout\ = ( \contm1|q\(1) & ( \contm1|q\(0) & ( (!\control|cln~0_combout\) # ((!\cod|s\(1) & \contm1|q[2]~3_combout\)) ) ) ) # ( !\contm1|q\(1) & ( \contm1|q\(0) & ( (\control|cln~0_combout\ & ((!\load~input_o\) # ((!\cod|s\(1) & 
-- \contm1|q[2]~3_combout\)))) ) ) ) # ( \contm1|q\(1) & ( !\contm1|q\(0) & ( (!\load~input_o\) # ((!\control|cln~0_combout\) # ((!\cod|s\(1) & \contm1|q[2]~3_combout\))) ) ) ) # ( !\contm1|q\(1) & ( !\contm1|q\(0) & ( (!\cod|s\(1) & (\contm1|q[2]~3_combout\ 
-- & \control|cln~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010111111111100111000000000110011101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s\(1),
	datab => \ALT_INV_load~input_o\,
	datac => \contm1|ALT_INV_q[2]~3_combout\,
	datad => \control|ALT_INV_cln~0_combout\,
	datae => \contm1|ALT_INV_q\(1),
	dataf => \contm1|ALT_INV_q\(0),
	combout => \contm1|q[1]~4_combout\);

-- Location: FF_X64_Y3_N56
\contm1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \contm1|q[1]~4_combout\,
	clrn => \control|ALT_INV_process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contm1|q\(1));

-- Location: LABCELL_X64_Y3_N48
\contm1|q[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contm1|q[3]~0_combout\ = ( \contm1|q\(3) & ( (!\load~input_o\ & ((!\contm1|q\(2)) # ((!\contm1|q\(0)) # (!\contm1|q\(1))))) ) ) # ( !\contm1|q\(3) & ( (\contm1|q\(2) & (\contm1|q\(0) & (\contm1|q\(1) & !\load~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000011111110000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contm1|ALT_INV_q\(2),
	datab => \contm1|ALT_INV_q\(0),
	datac => \contm1|ALT_INV_q\(1),
	datad => \ALT_INV_load~input_o\,
	dataf => \contm1|ALT_INV_q\(3),
	combout => \contm1|q[3]~0_combout\);

-- Location: IOIBUF_X60_Y0_N52
\teclado[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(8),
	o => \teclado[8]~input_o\);

-- Location: LABCELL_X63_Y3_N0
\contm1|q[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contm1|q[3]~1_combout\ = ( !\selecao[0]~input_o\ & ( (\selecao[1]~input_o\ & (\load~input_o\ & ((\teclado[9]~input_o\) # (\teclado[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclado[8]~input_o\,
	datab => \ALT_INV_teclado[9]~input_o\,
	datac => \ALT_INV_selecao[1]~input_o\,
	datad => \ALT_INV_load~input_o\,
	dataf => \ALT_INV_selecao[0]~input_o\,
	combout => \contm1|q[3]~1_combout\);

-- Location: LABCELL_X64_Y3_N30
\contm1|q[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \contm1|q[3]~2_combout\ = ( \contm1|q\(3) & ( \control|Equal4~1_combout\ & ( (((\control|process_0~0_combout\ & \control|process_0~1_combout\)) # (\contm1|q[3]~1_combout\)) # (\contm1|q[3]~0_combout\) ) ) ) # ( !\contm1|q\(3) & ( 
-- \control|Equal4~1_combout\ & ( (!\contm1|q[3]~0_combout\ & (\contm1|q[3]~1_combout\ & ((!\control|process_0~0_combout\) # (!\control|process_0~1_combout\)))) # (\contm1|q[3]~0_combout\ & ((!\control|process_0~0_combout\) # 
-- ((!\control|process_0~1_combout\)))) ) ) ) # ( \contm1|q\(3) & ( !\control|Equal4~1_combout\ & ( ((!\control|process_0~0_combout\) # ((!\control|process_0~1_combout\) # (\contm1|q[3]~1_combout\))) # (\contm1|q[3]~0_combout\) ) ) ) # ( !\contm1|q\(3) & ( 
-- !\control|Equal4~1_combout\ & ( (\control|process_0~0_combout\ & (\control|process_0~1_combout\ & ((\contm1|q[3]~1_combout\) # (\contm1|q[3]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011111111011111111101010100111111000101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contm1|ALT_INV_q[3]~0_combout\,
	datab => \control|ALT_INV_process_0~0_combout\,
	datac => \control|ALT_INV_process_0~1_combout\,
	datad => \contm1|ALT_INV_q[3]~1_combout\,
	datae => \contm1|ALT_INV_q\(3),
	dataf => \control|ALT_INV_Equal4~1_combout\,
	combout => \contm1|q[3]~2_combout\);

-- Location: FF_X64_Y3_N32
\contm1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \contm1|q[3]~2_combout\,
	clrn => \control|ALT_INV_process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contm1|q\(3));

-- Location: LABCELL_X63_Y3_N39
\control|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|process_0~1_combout\ = ( !\contm0|q\(1) & ( (!\contm1|q\(3) & (\contm0|q\(0) & (\contm0|q\(3) & !\contm0|q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contm1|ALT_INV_q\(3),
	datab => \contm0|ALT_INV_q\(0),
	datac => \contm0|ALT_INV_q\(3),
	datad => \contm0|ALT_INV_q\(2),
	dataf => \contm0|ALT_INV_q\(1),
	combout => \control|process_0~1_combout\);

-- Location: LABCELL_X63_Y3_N9
\control|cln~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|cln~0_combout\ = ( \control|process_0~1_combout\ & ( !\control|process_0~0_combout\ $ (!\control|Equal4~1_combout\) ) ) # ( !\control|process_0~1_combout\ & ( \control|Equal4~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \control|ALT_INV_process_0~0_combout\,
	datad => \control|ALT_INV_Equal4~1_combout\,
	dataf => \control|ALT_INV_process_0~1_combout\,
	combout => \control|cln~0_combout\);

-- Location: IOIBUF_X66_Y0_N58
\teclado[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(4),
	o => \teclado[4]~input_o\);

-- Location: LABCELL_X64_Y3_N6
\cod|s[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \cod|s\(2) = ( !\teclado[5]~input_o\ & ( (!\teclado[6]~input_o\ & (!\teclado[7]~input_o\ & !\teclado[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclado[6]~input_o\,
	datab => \ALT_INV_teclado[7]~input_o\,
	datac => \ALT_INV_teclado[4]~input_o\,
	dataf => \ALT_INV_teclado[5]~input_o\,
	combout => \cod|s\(2));

-- Location: LABCELL_X64_Y3_N51
\contm1|q[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \contm1|q[2]~5_combout\ = ( \contm1|q\(2) & ( (!\load~input_o\ & ((!\contm1|q\(0)) # (!\contm1|q\(1)))) ) ) # ( !\contm1|q\(2) & ( (\contm1|q\(0) & (!\load~input_o\ & \contm1|q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \contm1|ALT_INV_q\(0),
	datac => \ALT_INV_load~input_o\,
	datad => \contm1|ALT_INV_q\(1),
	dataf => \contm1|ALT_INV_q\(2),
	combout => \contm1|q[2]~5_combout\);

-- Location: LABCELL_X64_Y3_N24
\contm1|q[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \contm1|q[2]~6_combout\ = ( \contm1|q[2]~5_combout\ & ( (\control|cln~0_combout\) # (\contm1|q\(2)) ) ) # ( !\contm1|q[2]~5_combout\ & ( (!\control|cln~0_combout\ & (\contm1|q\(2))) # (\control|cln~0_combout\ & (((\contm1|q[2]~3_combout\ & !\cod|s\(2))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000100010001110100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contm1|ALT_INV_q\(2),
	datab => \control|ALT_INV_cln~0_combout\,
	datac => \contm1|ALT_INV_q[2]~3_combout\,
	datad => \cod|ALT_INV_s\(2),
	dataf => \contm1|ALT_INV_q[2]~5_combout\,
	combout => \contm1|q[2]~6_combout\);

-- Location: FF_X64_Y3_N26
\contm1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \contm1|q[2]~6_combout\,
	clrn => \control|ALT_INV_process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contm1|q\(2));

-- Location: LABCELL_X63_Y3_N51
\control|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|process_0~0_combout\ = ( \contm1|q\(0) & ( (\contm1|q\(2) & !\contm1|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \contm1|ALT_INV_q\(2),
	datad => \contm1|ALT_INV_q\(1),
	dataf => \contm1|ALT_INV_q\(0),
	combout => \control|process_0~0_combout\);

-- Location: LABCELL_X63_Y3_N3
\control|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|process_0~2_combout\ = ( \control|process_0~1_combout\ & ( \control|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \control|ALT_INV_process_0~0_combout\,
	dataf => \control|ALT_INV_process_0~1_combout\,
	combout => \control|process_0~2_combout\);

-- Location: FF_X63_Y3_N44
\conth0|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \conth0|q~4_combout\,
	ena => \control|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conth0|q\(0));

-- Location: LABCELL_X63_Y3_N6
\conth0|q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conth0|q~2_combout\ = ( \conth0|q\(0) & ( (!\cod|s\(1) & (((!\load~input_o\ & !\conth0|q\(1))) # (\conth0|q~1_combout\))) # (\cod|s\(1) & (!\load~input_o\ & ((!\conth0|q\(1))))) ) ) # ( !\conth0|q\(0) & ( (!\cod|s\(1) & (((!\load~input_o\ & 
-- \conth0|q\(1))) # (\conth0|q~1_combout\))) # (\cod|s\(1) & (!\load~input_o\ & ((\conth0|q\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011001110000010101100111011001110000010101100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cod|ALT_INV_s\(1),
	datab => \ALT_INV_load~input_o\,
	datac => \conth0|ALT_INV_q~1_combout\,
	datad => \conth0|ALT_INV_q\(1),
	dataf => \conth0|ALT_INV_q\(0),
	combout => \conth0|q~2_combout\);

-- Location: FF_X63_Y3_N8
\conth0|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \conth0|q~2_combout\,
	ena => \control|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conth0|q\(1));

-- Location: LABCELL_X63_Y3_N12
\conth0|q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conth0|q~3_combout\ = ( \conth0|q\(2) & ( \conth0|q\(0) & ( (!\conth0|q~1_combout\ & (!\load~input_o\ & ((!\conth0|q\(1))))) # (\conth0|q~1_combout\ & ((!\cod|s\(2)) # ((!\load~input_o\ & !\conth0|q\(1))))) ) ) ) # ( !\conth0|q\(2) & ( \conth0|q\(0) & ( 
-- (!\conth0|q~1_combout\ & (!\load~input_o\ & ((\conth0|q\(1))))) # (\conth0|q~1_combout\ & ((!\cod|s\(2)) # ((!\load~input_o\ & \conth0|q\(1))))) ) ) ) # ( \conth0|q\(2) & ( !\conth0|q\(0) & ( (!\load~input_o\) # ((\conth0|q~1_combout\ & !\cod|s\(2))) ) ) 
-- ) # ( !\conth0|q\(2) & ( !\conth0|q\(0) & ( (\conth0|q~1_combout\ & !\cod|s\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000110111001101110001010000110111001101110001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conth0|ALT_INV_q~1_combout\,
	datab => \ALT_INV_load~input_o\,
	datac => \cod|ALT_INV_s\(2),
	datad => \conth0|ALT_INV_q\(1),
	datae => \conth0|ALT_INV_q\(2),
	dataf => \conth0|ALT_INV_q\(0),
	combout => \conth0|q~3_combout\);

-- Location: FF_X63_Y3_N14
\conth0|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \conth0|q~3_combout\,
	ena => \control|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conth0|q\(2));

-- Location: LABCELL_X63_Y3_N27
\conth0|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conth0|Add0~0_combout\ = ( \conth0|q\(1) & ( !\conth0|q\(3) $ (((!\conth0|q\(0)) # (!\conth0|q\(2)))) ) ) # ( !\conth0|q\(1) & ( \conth0|q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conth0|ALT_INV_q\(0),
	datac => \conth0|ALT_INV_q\(2),
	datad => \conth0|ALT_INV_q\(3),
	dataf => \conth0|ALT_INV_q\(1),
	combout => \conth0|Add0~0_combout\);

-- Location: LABCELL_X63_Y3_N54
\conth0|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conth0|q~0_combout\ = ( \selecao[0]~input_o\ & ( \conth0|Add0~0_combout\ & ( (!\load~input_o\) # ((!\selecao[1]~input_o\ & ((\teclado[9]~input_o\) # (\teclado[8]~input_o\)))) ) ) ) # ( !\selecao[0]~input_o\ & ( \conth0|Add0~0_combout\ & ( !\load~input_o\ 
-- ) ) ) # ( \selecao[0]~input_o\ & ( !\conth0|Add0~0_combout\ & ( (!\selecao[1]~input_o\ & (\load~input_o\ & ((\teclado[9]~input_o\) # (\teclado[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000111000011111111000000001111111101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclado[8]~input_o\,
	datab => \ALT_INV_teclado[9]~input_o\,
	datac => \ALT_INV_selecao[1]~input_o\,
	datad => \ALT_INV_load~input_o\,
	datae => \ALT_INV_selecao[0]~input_o\,
	dataf => \conth0|ALT_INV_Add0~0_combout\,
	combout => \conth0|q~0_combout\);

-- Location: FF_X63_Y3_N56
\conth0|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \conth0|q~0_combout\,
	ena => \control|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conth0|q\(3));

-- Location: LABCELL_X62_Y3_N15
\display3|a\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|a~combout\ = ( \conth0|q\(0) & ( \conth0|q\(3) ) ) # ( !\conth0|q\(0) & ( \conth0|q\(3) ) ) # ( \conth0|q\(0) & ( !\conth0|q\(3) & ( (\conth0|q\(2)) # (\conth0|q\(1)) ) ) ) # ( !\conth0|q\(0) & ( !\conth0|q\(3) & ( (!\conth0|q\(2)) # 
-- (\conth0|q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101011101110111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conth0|ALT_INV_q\(1),
	datab => \conth0|ALT_INV_q\(2),
	datae => \conth0|ALT_INV_q\(0),
	dataf => \conth0|ALT_INV_q\(3),
	combout => \display3|a~combout\);

-- Location: LABCELL_X62_Y3_N54
\display3|b\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|b~combout\ = ( \conth0|q\(0) & ( \conth0|q\(2) & ( \conth0|q\(1) ) ) ) # ( !\conth0|q\(0) & ( \conth0|q\(2) & ( !\conth0|q\(1) ) ) ) # ( \conth0|q\(0) & ( !\conth0|q\(2) ) ) # ( !\conth0|q\(0) & ( !\conth0|q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conth0|ALT_INV_q\(1),
	datae => \conth0|ALT_INV_q\(0),
	dataf => \conth0|ALT_INV_q\(2),
	combout => \display3|b~combout\);

-- Location: LABCELL_X62_Y3_N3
\display3|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|c~combout\ = ( \conth0|q\(0) & ( \conth0|q\(2) ) ) # ( !\conth0|q\(0) & ( \conth0|q\(2) ) ) # ( \conth0|q\(0) & ( !\conth0|q\(2) ) ) # ( !\conth0|q\(0) & ( !\conth0|q\(2) & ( !\conth0|q\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conth0|ALT_INV_q\(1),
	datae => \conth0|ALT_INV_q\(0),
	dataf => \conth0|ALT_INV_q\(2),
	combout => \display3|c~combout\);

-- Location: LABCELL_X62_Y3_N30
\display3|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|d~0_combout\ = ( \conth0|q\(1) & ( \conth0|q\(2) & ( !\conth0|q\(0) ) ) ) # ( !\conth0|q\(1) & ( \conth0|q\(2) & ( \conth0|q\(0) ) ) ) # ( \conth0|q\(1) & ( !\conth0|q\(2) ) ) # ( !\conth0|q\(1) & ( !\conth0|q\(2) & ( !\conth0|q\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100111111111111111100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conth0|ALT_INV_q\(0),
	datae => \conth0|ALT_INV_q\(1),
	dataf => \conth0|ALT_INV_q\(2),
	combout => \display3|d~0_combout\);

-- Location: LABCELL_X62_Y3_N51
\display3|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|e~0_combout\ = ( !\conth0|q\(0) & ( \conth0|q\(2) & ( \conth0|q\(1) ) ) ) # ( !\conth0|q\(0) & ( !\conth0|q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conth0|ALT_INV_q\(1),
	datae => \conth0|ALT_INV_q\(0),
	dataf => \conth0|ALT_INV_q\(2),
	combout => \display3|e~0_combout\);

-- Location: LABCELL_X62_Y3_N6
\display3|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|f~0_combout\ = ( \conth0|q\(3) ) # ( !\conth0|q\(3) & ( (!\conth0|q\(1) & ((!\conth0|q\(0)) # (\conth0|q\(2)))) # (\conth0|q\(1) & (\conth0|q\(2) & !\conth0|q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100100010101110110010001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conth0|ALT_INV_q\(1),
	datab => \conth0|ALT_INV_q\(2),
	datad => \conth0|ALT_INV_q\(0),
	dataf => \conth0|ALT_INV_q\(3),
	combout => \display3|f~0_combout\);

-- Location: LABCELL_X62_Y3_N9
\display3|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|g~0_combout\ = ( \conth0|q\(3) ) # ( !\conth0|q\(3) & ( (!\conth0|q\(1) & (\conth0|q\(2))) # (\conth0|q\(1) & ((!\conth0|q\(2)) # (!\conth0|q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011001110110011101100111011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conth0|ALT_INV_q\(1),
	datab => \conth0|ALT_INV_q\(2),
	datac => \conth0|ALT_INV_q\(0),
	dataf => \conth0|ALT_INV_q\(3),
	combout => \display3|g~0_combout\);

-- Location: LABCELL_X64_Y3_N36
\display2|a\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|a~combout\ = ( \contm1|q\(3) ) # ( !\contm1|q\(3) & ( (!\contm1|q\(0) $ (\contm1|q\(2))) # (\contm1|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100111111110011110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \contm1|ALT_INV_q\(0),
	datac => \contm1|ALT_INV_q\(1),
	datad => \contm1|ALT_INV_q\(2),
	dataf => \contm1|ALT_INV_q\(3),
	combout => \display2|a~combout\);

-- Location: LABCELL_X64_Y3_N3
\display2|b\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|b~combout\ = ( \contm1|q\(2) & ( !\contm1|q\(1) $ (\contm1|q\(0)) ) ) # ( !\contm1|q\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contm1|ALT_INV_q\(1),
	datab => \contm1|ALT_INV_q\(0),
	dataf => \contm1|ALT_INV_q\(2),
	combout => \display2|b~combout\);

-- Location: LABCELL_X64_Y3_N12
\display2|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|c~combout\ = ( \contm1|q\(2) ) # ( !\contm1|q\(2) & ( (!\contm1|q\(1)) # (\contm1|q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contm1|ALT_INV_q\(1),
	datab => \contm1|ALT_INV_q\(0),
	dataf => \contm1|ALT_INV_q\(2),
	combout => \display2|c~combout\);

-- Location: LABCELL_X64_Y3_N15
\display2|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|d~0_combout\ = ( \contm1|q\(2) & ( !\contm1|q\(1) $ (!\contm1|q\(0)) ) ) # ( !\contm1|q\(2) & ( (!\contm1|q\(0)) # (\contm1|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contm1|ALT_INV_q\(1),
	datab => \contm1|ALT_INV_q\(0),
	dataf => \contm1|ALT_INV_q\(2),
	combout => \display2|d~0_combout\);

-- Location: LABCELL_X64_Y3_N42
\display2|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|e~0_combout\ = ( \contm1|q\(2) & ( (!\contm1|q\(0) & \contm1|q\(1)) ) ) # ( !\contm1|q\(2) & ( !\contm1|q\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \contm1|ALT_INV_q\(0),
	datad => \contm1|ALT_INV_q\(1),
	dataf => \contm1|ALT_INV_q\(2),
	combout => \display2|e~0_combout\);

-- Location: LABCELL_X64_Y3_N27
\display2|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|f~0_combout\ = ( \contm1|q\(3) ) # ( !\contm1|q\(3) & ( (!\contm1|q\(2) & (!\contm1|q\(0) & !\contm1|q\(1))) # (\contm1|q\(2) & ((!\contm1|q\(0)) # (!\contm1|q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010101010000111101010101000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contm1|ALT_INV_q\(2),
	datac => \contm1|ALT_INV_q\(0),
	datad => \contm1|ALT_INV_q\(1),
	dataf => \contm1|ALT_INV_q\(3),
	combout => \display2|f~0_combout\);

-- Location: LABCELL_X64_Y3_N0
\display2|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|g~0_combout\ = ( \contm1|q\(3) ) # ( !\contm1|q\(3) & ( (!\contm1|q\(1) & ((\contm1|q\(2)))) # (\contm1|q\(1) & ((!\contm1|q\(0)) # (!\contm1|q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111001011110010111100101111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contm1|ALT_INV_q\(1),
	datab => \contm1|ALT_INV_q\(0),
	datac => \contm1|ALT_INV_q\(2),
	dataf => \contm1|ALT_INV_q\(3),
	combout => \display2|g~0_combout\);

-- Location: LABCELL_X62_Y3_N39
\display1|a\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|a~combout\ = ( \contm0|q\(0) & ( ((\contm0|q\(3)) # (\contm0|q\(2))) # (\contm0|q\(1)) ) ) # ( !\contm0|q\(0) & ( ((!\contm0|q\(2)) # (\contm0|q\(3))) # (\contm0|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111101011111111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contm0|ALT_INV_q\(1),
	datac => \contm0|ALT_INV_q\(2),
	datad => \contm0|ALT_INV_q\(3),
	dataf => \contm0|ALT_INV_q\(0),
	combout => \display1|a~combout\);

-- Location: LABCELL_X62_Y3_N45
\display1|b\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|b~combout\ = ( \contm0|q\(0) & ( (!\contm0|q\(2)) # (\contm0|q\(1)) ) ) # ( !\contm0|q\(0) & ( (!\contm0|q\(1)) # (!\contm0|q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contm0|ALT_INV_q\(1),
	datab => \contm0|ALT_INV_q\(2),
	dataf => \contm0|ALT_INV_q\(0),
	combout => \display1|b~combout\);

-- Location: LABCELL_X62_Y3_N24
\control|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|Equal4~0_combout\ = ( !\contm0|q\(0) & ( (\contm0|q\(1) & !\contm0|q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contm0|ALT_INV_q\(1),
	datab => \contm0|ALT_INV_q\(2),
	dataf => \contm0|ALT_INV_q\(0),
	combout => \control|Equal4~0_combout\);

-- Location: LABCELL_X62_Y3_N27
\display1|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|d~0_combout\ = ( \contm0|q\(0) & ( !\contm0|q\(1) $ (!\contm0|q\(2)) ) ) # ( !\contm0|q\(0) & ( (!\contm0|q\(2)) # (\contm0|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contm0|ALT_INV_q\(1),
	datab => \contm0|ALT_INV_q\(2),
	dataf => \contm0|ALT_INV_q\(0),
	combout => \display1|d~0_combout\);

-- Location: LABCELL_X62_Y3_N18
\display1|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|e~0_combout\ = ( \contm0|q\(1) & ( !\contm0|q\(0) ) ) # ( !\contm0|q\(1) & ( (!\contm0|q\(0) & !\contm0|q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \contm0|ALT_INV_q\(0),
	datad => \contm0|ALT_INV_q\(2),
	dataf => \contm0|ALT_INV_q\(1),
	combout => \display1|e~0_combout\);

-- Location: LABCELL_X62_Y3_N36
\display1|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|f~0_combout\ = ( \contm0|q\(0) & ( ((!\contm0|q\(1) & \contm0|q\(2))) # (\contm0|q\(3)) ) ) # ( !\contm0|q\(0) & ( (!\contm0|q\(1)) # ((\contm0|q\(3)) # (\contm0|q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contm0|ALT_INV_q\(1),
	datab => \contm0|ALT_INV_q\(2),
	datac => \contm0|ALT_INV_q\(3),
	dataf => \contm0|ALT_INV_q\(0),
	combout => \display1|f~0_combout\);

-- Location: LABCELL_X62_Y3_N42
\display1|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|g~0_combout\ = ( \contm0|q\(0) & ( (!\contm0|q\(1) $ (!\contm0|q\(2))) # (\contm0|q\(3)) ) ) # ( !\contm0|q\(0) & ( ((\contm0|q\(3)) # (\contm0|q\(2))) # (\contm0|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contm0|ALT_INV_q\(1),
	datab => \contm0|ALT_INV_q\(2),
	datac => \contm0|ALT_INV_q\(3),
	dataf => \contm0|ALT_INV_q\(0),
	combout => \display1|g~0_combout\);

-- Location: IOIBUF_X78_Y81_N52
\teclado[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(0),
	o => \teclado[0]~input_o\);

-- Location: LABCELL_X67_Y79_N0
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


