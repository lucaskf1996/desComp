-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/19/2021 20:58:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          tipoR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tipoR_vhd_vec_tst IS
END tipoR_vhd_vec_tst;
ARCHITECTURE tipoR_arch OF tipoR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL HAB : STD_LOGIC;
SIGNAL operacao : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL UCfunct : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL UCopcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT tipoR
	PORT (
	clk : IN STD_LOGIC;
	HAB : IN STD_LOGIC;
	operacao : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	UCfunct : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	UCopcode : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : tipoR
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	HAB => HAB,
	operacao => operacao,
	UCfunct => UCfunct,
	UCopcode => UCopcode
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 300000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- HAB
t_prcs_HAB: PROCESS
BEGIN
	HAB <= '1';
WAIT;
END PROCESS t_prcs_HAB;
-- operacao[2]
t_prcs_operacao_2: PROCESS
BEGIN
	operacao(2) <= '0';
WAIT;
END PROCESS t_prcs_operacao_2;
-- operacao[1]
t_prcs_operacao_1: PROCESS
BEGIN
	operacao(1) <= '0';
WAIT;
END PROCESS t_prcs_operacao_1;
-- operacao[0]
t_prcs_operacao_0: PROCESS
BEGIN
	operacao(0) <= '0';
WAIT;
END PROCESS t_prcs_operacao_0;
END tipoR_arch;
