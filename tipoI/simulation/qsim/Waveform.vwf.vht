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
-- Generated on "10/25/2021 22:25:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          tipoI
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tipoI_vhd_vec_tst IS
END tipoI_vhd_vec_tst;
ARCHITECTURE tipoI_arch OF tipoI_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL D_ENDMUX : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL D_imm : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL D_INST : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL D_MUX : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL D_MUX_S : STD_LOGIC;
SIGNAL D_RAM_REG : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL D_REG_RAM : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL D_REG_ULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL D_sinais : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL D_UCopcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL D_ULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT tipoI
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	D_ENDMUX : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	D_imm : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	D_INST : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	D_MUX : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	D_MUX_S : BUFFER STD_LOGIC;
	D_RAM_REG : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	D_REG_RAM : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	D_REG_ULA : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	D_sinais : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	D_UCopcode : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	D_ULA : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDR : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : tipoI
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	D_ENDMUX => D_ENDMUX,
	D_imm => D_imm,
	D_INST => D_INST,
	D_MUX => D_MUX,
	D_MUX_S => D_MUX_S,
	D_RAM_REG => D_RAM_REG,
	D_REG_RAM => D_REG_RAM,
	D_REG_ULA => D_REG_ULA,
	D_sinais => D_sinais,
	D_UCopcode => D_UCopcode,
	D_ULA => D_ULA,
	KEY => KEY,
	LEDR => LEDR
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;
-- KEY[3]
t_prcs_KEY_3: PROCESS
BEGIN
	KEY(3) <= '0';
WAIT;
END PROCESS t_prcs_KEY_3;
-- KEY[2]
t_prcs_KEY_2: PROCESS
BEGIN
	KEY(2) <= '0';
WAIT;
END PROCESS t_prcs_KEY_2;
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
	KEY(1) <= '0';
WAIT;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		KEY(0) <= '0';
		WAIT FOR 10000 ps;
		KEY(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
END tipoI_arch;
