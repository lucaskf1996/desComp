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
-- Generated on "09/14/2021 14:35:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula2_vhd_vec_tst IS
END Aula2_vhd_vec_tst;
ARCHITECTURE Aula2_arch OF Aula2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL DEBUG_PC : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL INSTRUCAO : STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL MUXJMP : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL OUT_ULA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SAIDA_FLAG0 : STD_LOGIC;
SIGNAL SAIDA_FLAGULA : STD_LOGIC;
COMPONENT Aula2
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	DEBUG_PC : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	INSTRUCAO : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	MUXJMP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	OUT_ULA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SAIDA_FLAG0 : OUT STD_LOGIC;
	SAIDA_FLAGULA : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Aula2
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	DEBUG_PC => DEBUG_PC,
	INSTRUCAO => INSTRUCAO,
	KEY => KEY,
	LEDR => LEDR,
	MUXJMP => MUXJMP,
	OUT_ULA => OUT_ULA,
	SAIDA_FLAG0 => SAIDA_FLAG0,
	SAIDA_FLAGULA => SAIDA_FLAGULA
	);

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
LOOP
	KEY(0) <= '0';
	WAIT FOR 5000 ps;
	KEY(0) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_KEY_0;
END Aula2_arch;
