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
-- Generated on "10/30/2019 18:11:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          relogioDespertador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY relogioDespertador_vhd_vec_tst IS
END relogioDespertador_vhd_vec_tst;
ARCHITECTURE relogioDespertador_arch OF relogioDespertador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL hora0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL hora1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL load : STD_LOGIC;
SIGNAL min0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL min1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL selecao : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL teclado : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT relogioDespertador
	PORT (
	CLK : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	hora0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	hora1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	load : IN STD_LOGIC;
	min0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	min1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	selecao : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	teclado : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : relogioDespertador
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	enable => enable,
	hora0 => hora0,
	hora1 => hora1,
	load => load,
	min0 => min0,
	min1 => min1,
	selecao => selecao,
	teclado => teclado
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '0';
WAIT;
END PROCESS t_prcs_load;
-- selecao[1]
t_prcs_selecao_1: PROCESS
BEGIN
	selecao(1) <= '0';
WAIT;
END PROCESS t_prcs_selecao_1;
-- selecao[0]
t_prcs_selecao_0: PROCESS
BEGIN
	selecao(0) <= '0';
WAIT;
END PROCESS t_prcs_selecao_0;
-- teclado[9]
t_prcs_teclado_9: PROCESS
BEGIN
	teclado(9) <= '0';
WAIT;
END PROCESS t_prcs_teclado_9;
-- teclado[8]
t_prcs_teclado_8: PROCESS
BEGIN
	teclado(8) <= '0';
WAIT;
END PROCESS t_prcs_teclado_8;
-- teclado[7]
t_prcs_teclado_7: PROCESS
BEGIN
	teclado(7) <= '0';
WAIT;
END PROCESS t_prcs_teclado_7;
-- teclado[6]
t_prcs_teclado_6: PROCESS
BEGIN
	teclado(6) <= '0';
WAIT;
END PROCESS t_prcs_teclado_6;
-- teclado[5]
t_prcs_teclado_5: PROCESS
BEGIN
	teclado(5) <= '0';
WAIT;
END PROCESS t_prcs_teclado_5;
-- teclado[4]
t_prcs_teclado_4: PROCESS
BEGIN
	teclado(4) <= '0';
WAIT;
END PROCESS t_prcs_teclado_4;
-- teclado[3]
t_prcs_teclado_3: PROCESS
BEGIN
	teclado(3) <= '0';
WAIT;
END PROCESS t_prcs_teclado_3;
-- teclado[2]
t_prcs_teclado_2: PROCESS
BEGIN
	teclado(2) <= '0';
WAIT;
END PROCESS t_prcs_teclado_2;
-- teclado[1]
t_prcs_teclado_1: PROCESS
BEGIN
	teclado(1) <= '0';
WAIT;
END PROCESS t_prcs_teclado_1;
-- teclado[0]
t_prcs_teclado_0: PROCESS
BEGIN
	teclado(0) <= '0';
WAIT;
END PROCESS t_prcs_teclado_0;
END relogioDespertador_arch;
