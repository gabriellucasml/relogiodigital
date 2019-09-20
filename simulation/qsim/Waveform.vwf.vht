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
-- Generated on "09/19/2019 22:40:41"
                                                             
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
SIGNAL h1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL h2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL m1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL m2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL selecao : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL teclado : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT relogioDespertador
	PORT (
	h1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	h2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	m1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	m2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	selecao : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	teclado : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : relogioDespertador
	PORT MAP (
-- list connections between master ports and signals
	h1 => h1,
	h2 => h2,
	m1 => m1,
	m2 => m2,
	selecao => selecao,
	teclado => teclado
	);
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
	teclado(1) <= '1';
WAIT;
END PROCESS t_prcs_teclado_1;
-- teclado[0]
t_prcs_teclado_0: PROCESS
BEGIN
	teclado(0) <= '0';
WAIT;
END PROCESS t_prcs_teclado_0;
END relogioDespertador_arch;
