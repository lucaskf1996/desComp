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
-- Generated on "09/14/2021 14:52:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula7
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula7_vhd_vec_tst IS
END Aula7_vhd_vec_tst;
ARCHITECTURE Aula7_arch OF Aula7_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL DEBUG_Data_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DEBUG_Data_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LED8 : STD_LOGIC;
SIGNAL LED9 : STD_LOGIC;
SIGNAL LEDR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Reset : STD_LOGIC;
SIGNAL saida_INST : STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL saida_RAM : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Aula7
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	DEBUG_Data_IN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DEBUG_Data_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LED8 : OUT STD_LOGIC;
	LED9 : OUT STD_LOGIC;
	LEDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Reset : IN STD_LOGIC;
	saida_INST : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
	saida_RAM : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula7
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	DEBUG_Data_IN => DEBUG_Data_IN,
	DEBUG_Data_OUT => DEBUG_Data_OUT,
	KEY => KEY,
	LED8 => LED8,
	LED9 => LED9,
	LEDR => LEDR,
	Reset => Reset,
	saida_INST => saida_INST,
	saida_RAM => saida_RAM
	);

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
LOOP
	KEY(0) <= '0';
	WAIT FOR 5000 ps;
	KEY(0) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 160000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_KEY_0;
END Aula7_arch;
