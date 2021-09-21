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
-- Generated on "09/15/2021 12:54:20"
                                                             
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
SIGNAL DEBUGROM : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL FPGA_RESET : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LED8 : STD_LOGIC;
SIGNAL LED9 : STD_LOGIC;
SIGNAL LEDR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SWITCH : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT Aula7
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	DEBUGROM : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	FPGA_RESET : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LED8 : OUT STD_LOGIC;
	LED9 : OUT STD_LOGIC;
	LEDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SWITCH : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula7
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	DEBUGROM => DEBUGROM,
	FPGA_RESET => FPGA_RESET,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	KEY => KEY,
	LED8 => LED8,
	LED9 => LED9,
	LEDR => LEDR,
	SWITCH => SWITCH
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 5000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 340000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;

-- FPGA_RESET
t_prcs_FPGA_RESET: PROCESS
BEGIN
	FPGA_RESET <= '1';
	WAIT FOR 170000 ps;
	FPGA_RESET <= '0';
WAIT;
END PROCESS t_prcs_FPGA_RESET;
-- SWITCH[9]
t_prcs_SWITCH_9: PROCESS
BEGIN
	SWITCH(9) <= '1';
	WAIT FOR 170000 ps;
	SWITCH(9) <= '0';
WAIT;
END PROCESS t_prcs_SWITCH_9;
-- SWITCH[8]
t_prcs_SWITCH_8: PROCESS
BEGIN
	SWITCH(8) <= '1';
	WAIT FOR 170000 ps;
	SWITCH(8) <= '0';
WAIT;
END PROCESS t_prcs_SWITCH_8;
-- SWITCH[7]
t_prcs_SWITCH_7: PROCESS
BEGIN
	SWITCH(7) <= '0';
WAIT;
END PROCESS t_prcs_SWITCH_7;
-- SWITCH[6]
t_prcs_SWITCH_6: PROCESS
BEGIN
	SWITCH(6) <= '0';
WAIT;
END PROCESS t_prcs_SWITCH_6;
-- SWITCH[5]
t_prcs_SWITCH_5: PROCESS
BEGIN
	SWITCH(5) <= '0';
WAIT;
END PROCESS t_prcs_SWITCH_5;
-- SWITCH[4]
t_prcs_SWITCH_4: PROCESS
BEGIN
	SWITCH(4) <= '0';
WAIT;
END PROCESS t_prcs_SWITCH_4;
-- SWITCH[3]
t_prcs_SWITCH_3: PROCESS
BEGIN
	SWITCH(3) <= '0';
WAIT;
END PROCESS t_prcs_SWITCH_3;
-- SWITCH[2]
t_prcs_SWITCH_2: PROCESS
BEGIN
	SWITCH(2) <= '0';
WAIT;
END PROCESS t_prcs_SWITCH_2;
-- SWITCH[1]
t_prcs_SWITCH_1: PROCESS
BEGIN
	SWITCH(1) <= '1';
	WAIT FOR 170000 ps;
	SWITCH(1) <= '0';
WAIT;
END PROCESS t_prcs_SWITCH_1;
-- SWITCH[0]
t_prcs_SWITCH_0: PROCESS
BEGIN
	SWITCH(0) <= '1';
	WAIT FOR 170000 ps;
	SWITCH(0) <= '0';
WAIT;
END PROCESS t_prcs_SWITCH_0;
-- KEY[3]
t_prcs_KEY_3: PROCESS
BEGIN
	KEY(3) <= '1';
	WAIT FOR 170000 ps;
	KEY(3) <= '0';
WAIT;
END PROCESS t_prcs_KEY_3;
-- KEY[2]
t_prcs_KEY_2: PROCESS
BEGIN
	KEY(2) <= '1';
	WAIT FOR 170000 ps;
	KEY(2) <= '0';
WAIT;
END PROCESS t_prcs_KEY_2;
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
	KEY(1) <= '1';
	WAIT FOR 170000 ps;
	KEY(1) <= '0';
WAIT;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '1';
	WAIT FOR 170000 ps;
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
END Aula7_arch;
