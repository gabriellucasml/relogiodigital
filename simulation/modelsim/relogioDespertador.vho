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

-- DATE "10/28/2019 20:36:00"

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

ENTITY 	contador IS
    PORT (
	d : IN std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	clrn : IN std_logic;
	ena : IN std_logic;
	load : IN std_logic;
	q : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END contador;

-- Design Ports Information
-- q[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clrn	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ena	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_clrn : std_logic;
SIGNAL ww_ena : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \q~0_combout\ : std_logic;
SIGNAL \clrn~input_o\ : std_logic;
SIGNAL \ena~input_o\ : std_logic;
SIGNAL \q[0]~reg0_q\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \q~1_combout\ : std_logic;
SIGNAL \q[1]~reg0_q\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \q~2_combout\ : std_logic;
SIGNAL \q[2]~reg0_q\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \q~3_combout\ : std_logic;
SIGNAL \q[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_d[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_load~input_o\ : std_logic;
SIGNAL \ALT_INV_d[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_q[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_q[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_q[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_q[0]~reg0_q\ : std_logic;

BEGIN

ww_d <= d;
ww_clk <= clk;
ww_clrn <= clrn;
ww_ena <= ena;
ww_load <= load;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_d[3]~input_o\ <= NOT \d[3]~input_o\;
\ALT_INV_d[2]~input_o\ <= NOT \d[2]~input_o\;
\ALT_INV_d[1]~input_o\ <= NOT \d[1]~input_o\;
\ALT_INV_load~input_o\ <= NOT \load~input_o\;
\ALT_INV_d[0]~input_o\ <= NOT \d[0]~input_o\;
\ALT_INV_q[3]~reg0_q\ <= NOT \q[3]~reg0_q\;
\ALT_INV_q[2]~reg0_q\ <= NOT \q[2]~reg0_q\;
\ALT_INV_q[1]~reg0_q\ <= NOT \q[1]~reg0_q\;
\ALT_INV_q[0]~reg0_q\ <= NOT \q[0]~reg0_q\;

-- Location: IOOBUF_X89_Y35_N96
\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(0));

-- Location: IOOBUF_X89_Y37_N5
\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(1));

-- Location: IOOBUF_X89_Y35_N45
\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(2));

-- Location: IOOBUF_X89_Y36_N39
\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(3));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y38_N55
\d[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: LABCELL_X88_Y37_N51
\q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~0_combout\ = ( \q[0]~reg0_q\ & ( (\d[0]~input_o\ & \load~input_o\) ) ) # ( !\q[0]~reg0_q\ & ( (!\load~input_o\) # (\d[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011000000110000001111110011111100110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_d[0]~input_o\,
	datac => \ALT_INV_load~input_o\,
	datae => \ALT_INV_q[0]~reg0_q\,
	combout => \q~0_combout\);

-- Location: IOIBUF_X89_Y37_N38
\clrn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clrn,
	o => \clrn~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\ena~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ena,
	o => \ena~input_o\);

-- Location: FF_X88_Y37_N53
\q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~0_combout\,
	clrn => \clrn~input_o\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~reg0_q\);

-- Location: IOIBUF_X89_Y38_N4
\d[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: LABCELL_X88_Y37_N9
\q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~1_combout\ = ( \q[1]~reg0_q\ & ( \q[0]~reg0_q\ & ( (\load~input_o\ & \d[1]~input_o\) ) ) ) # ( !\q[1]~reg0_q\ & ( \q[0]~reg0_q\ & ( (!\load~input_o\) # (\d[1]~input_o\) ) ) ) # ( \q[1]~reg0_q\ & ( !\q[0]~reg0_q\ & ( (!\load~input_o\) # (\d[1]~input_o\) 
-- ) ) ) # ( !\q[1]~reg0_q\ & ( !\q[0]~reg0_q\ & ( (\load~input_o\ & \d[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111111001111110011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_load~input_o\,
	datac => \ALT_INV_d[1]~input_o\,
	datae => \ALT_INV_q[1]~reg0_q\,
	dataf => \ALT_INV_q[0]~reg0_q\,
	combout => \q~1_combout\);

-- Location: FF_X88_Y37_N11
\q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~1_combout\,
	clrn => \clrn~input_o\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~reg0_q\);

-- Location: IOIBUF_X89_Y38_N38
\d[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: LABCELL_X88_Y37_N12
\q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~2_combout\ = ( \q[2]~reg0_q\ & ( \q[1]~reg0_q\ & ( (!\load~input_o\ & ((!\q[0]~reg0_q\))) # (\load~input_o\ & (\d[2]~input_o\)) ) ) ) # ( !\q[2]~reg0_q\ & ( \q[1]~reg0_q\ & ( (!\load~input_o\ & ((\q[0]~reg0_q\))) # (\load~input_o\ & (\d[2]~input_o\)) ) 
-- ) ) # ( \q[2]~reg0_q\ & ( !\q[1]~reg0_q\ & ( (!\load~input_o\) # (\d[2]~input_o\) ) ) ) # ( !\q[2]~reg0_q\ & ( !\q[1]~reg0_q\ & ( (\d[2]~input_o\ & \load~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100011101000111011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[2]~input_o\,
	datab => \ALT_INV_load~input_o\,
	datac => \ALT_INV_q[0]~reg0_q\,
	datae => \ALT_INV_q[2]~reg0_q\,
	dataf => \ALT_INV_q[1]~reg0_q\,
	combout => \q~2_combout\);

-- Location: FF_X88_Y37_N14
\q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~2_combout\,
	clrn => \clrn~input_o\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[2]~reg0_q\);

-- Location: IOIBUF_X89_Y37_N21
\d[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: LABCELL_X88_Y37_N42
\q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~3_combout\ = ( \q[3]~reg0_q\ & ( \q[1]~reg0_q\ & ( (!\load~input_o\ & (((!\q[0]~reg0_q\) # (!\q[2]~reg0_q\)))) # (\load~input_o\ & (\d[3]~input_o\)) ) ) ) # ( !\q[3]~reg0_q\ & ( \q[1]~reg0_q\ & ( (!\load~input_o\ & (((\q[0]~reg0_q\ & \q[2]~reg0_q\)))) 
-- # (\load~input_o\ & (\d[3]~input_o\)) ) ) ) # ( \q[3]~reg0_q\ & ( !\q[1]~reg0_q\ & ( (!\load~input_o\) # (\d[3]~input_o\) ) ) ) # ( !\q[3]~reg0_q\ & ( !\q[1]~reg0_q\ & ( (\d[3]~input_o\ & \load~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100010001000111011101110111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[3]~input_o\,
	datab => \ALT_INV_load~input_o\,
	datac => \ALT_INV_q[0]~reg0_q\,
	datad => \ALT_INV_q[2]~reg0_q\,
	datae => \ALT_INV_q[3]~reg0_q\,
	dataf => \ALT_INV_q[1]~reg0_q\,
	combout => \q~3_combout\);

-- Location: FF_X88_Y37_N43
\q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \q~3_combout\,
	clrn => \clrn~input_o\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[3]~reg0_q\);

-- Location: LABCELL_X12_Y68_N0
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


