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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "09/30/2021 22:17:14"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	Aula7 IS
    PORT (
	CLOCK_50 : IN std_logic;
	FPGA_RESET : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SWITCH : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	LED8 : OUT std_logic;
	LED9 : OUT std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	DEBUGROM : OUT std_logic_vector(8 DOWNTO 0)
	);
END Aula7;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED9	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUGROM[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUGROM[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUGROM[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUGROM[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUGROM[4]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUGROM[5]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUGROM[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUGROM[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEBUGROM[8]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWITCH[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWITCH[8]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWITCH[9]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWITCH[1]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWITCH[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWITCH[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWITCH[4]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWITCH[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWITCH[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWITCH[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Aula7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_FPGA_RESET : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SWITCH : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED8 : std_logic;
SIGNAL ww_LED9 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DEBUGROM : std_logic_vector(8 DOWNTO 0);
SIGNAL \SWITCH[1]~input_o\ : std_logic;
SIGNAL \SWITCH[2]~input_o\ : std_logic;
SIGNAL \SWITCH[3]~input_o\ : std_logic;
SIGNAL \SWITCH[4]~input_o\ : std_logic;
SIGNAL \SWITCH[5]~input_o\ : std_logic;
SIGNAL \SWITCH[6]~input_o\ : std_logic;
SIGNAL \SWITCH[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~2\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~6\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~10\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~14\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~18\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|PC1|dataOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal4~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal8~0_combout\ : std_logic;
SIGNAL \CPU|PC1|dataOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|PC1|dataOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|PC1|dataOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal7~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal3~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \CPU|PC1|dataOUT[2]~0_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|PC1|dataOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~22\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|PC1|dataOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~26\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~30\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~22_combout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~23_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal2~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal2~1_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Sinais_Controle~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal7~1_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal3~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ram~562_combout\ : std_logic;
SIGNAL \RAM1|ram~563_combout\ : std_logic;
SIGNAL \RAM1|ram~101_q\ : std_logic;
SIGNAL \RAM1|ram~564_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~558_combout\ : std_logic;
SIGNAL \RAM1|ram~559_combout\ : std_logic;
SIGNAL \RAM1|ram~61_q\ : std_logic;
SIGNAL \RAM1|ram~556_combout\ : std_logic;
SIGNAL \RAM1|ram~557_combout\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~550_combout\ : std_logic;
SIGNAL \RAM1|ram~560_combout\ : std_logic;
SIGNAL \RAM1|ram~561_combout\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~565_combout\ : std_logic;
SIGNAL \RAM1|ram~551_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \RAM1|dado_out~0_combout\ : std_logic;
SIGNAL \SWITCH[0]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ANDSW07~1_combout\ : std_logic;
SIGNAL \ANDSW07~0_combout\ : std_logic;
SIGNAL \Data_IN[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \RAM1|ram~55_q\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~95_q\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \Data_IN[0]~4_combout\ : std_logic;
SIGNAL \SWITCH[9]~input_o\ : std_logic;
SIGNAL \SWITCH[8]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~1_combout\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
SIGNAL \ANDHEX0~2_combout\ : std_logic;
SIGNAL \Data_IN[0]~5_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \MEMKEY0|DOUT~feeder_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \MEMKEY0|DOUT~q\ : std_logic;
SIGNAL \Data_IN[0]~3_combout\ : std_logic;
SIGNAL \Data_IN[0]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \RAM1|ram~56_q\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~96_q\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \RAM1|ram~57_q\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~97_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~33feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \RAM1|ram~98_q\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~58feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~58_q\ : std_logic;
SIGNAL \RAM1|ram~573_combout\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~99_q\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~59_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~569_combout\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \RAM1|ram~60_q\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \RAM1|ram~100_q\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~545_combout\ : std_logic;
SIGNAL \RAM1|ram~546_combout\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~7_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal7~2_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~0_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~552_combout\ : std_logic;
SIGNAL \RAM1|ram~102_q\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~554_combout\ : std_logic;
SIGNAL \RAM1|ram~62feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~62_q\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~553_combout\ : std_logic;
SIGNAL \RAM1|ram~555_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~11_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~4_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~10_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~9_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~5_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~6_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~8_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~q\ : std_logic;
SIGNAL \CPU|MUXPC|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ANDHEX1~0_combout\ : std_logic;
SIGNAL \ANDHEX0~0_combout\ : std_logic;
SIGNAL \ANDHEX0~1_combout\ : std_logic;
SIGNAL \REGLED8|DOUT~0_combout\ : std_logic;
SIGNAL \REGLED8|DOUT~q\ : std_logic;
SIGNAL \ANDHEX2~0_combout\ : std_logic;
SIGNAL \REGLED9|DOUT~0_combout\ : std_logic;
SIGNAL \REGLED9|DOUT~q\ : std_logic;
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC1|dataOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REGRET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|DECODER1|Sinais_Controle\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~1_combout\ : std_logic;
SIGNAL \MEMKEY0|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_ANDSW07~1_combout\ : std_logic;
SIGNAL \ALT_INV_ANDSW07~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \CPU|REGRET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \CPU|MUXPC|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ALT_INV_ANDHEX0~2_combout\ : std_logic;
SIGNAL \ALT_INV_ANDHEX2~0_combout\ : std_logic;
SIGNAL \ALT_INV_ANDHEX1~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ALT_INV_ANDHEX0~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ALT_INV_ANDHEX0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC1|ALT_INV_dataOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGLED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \REGLED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC1|ALT_INV_dataOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC1|ALT_INV_dataOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC1|ALT_INV_dataOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC1|ALT_INV_dataOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC1|ALT_INV_dataOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~3_combout\ : std_logic;
SIGNAL \detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|ALT_INV_DOUT~7_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|ALT_INV_DOUT~6_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|ALT_INV_DOUT~5_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|ALT_INV_DOUT~4_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~11_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~10_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~9_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal7~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_FPGA_RESET <= FPGA_RESET;
ww_KEY <= KEY;
ww_SWITCH <= SWITCH;
LEDR <= ww_LEDR;
LED8 <= ww_LED8;
LED9 <= ww_LED9;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
DEBUGROM <= ww_DEBUGROM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|MUX1|ALT_INV_saida_MUX[4]~5_combout\ <= NOT \CPU|MUX1|saida_MUX[4]~5_combout\;
\RAM1|ALT_INV_ram~544_combout\ <= NOT \RAM1|ram~544_combout\;
\RAM1|ALT_INV_ram~543_combout\ <= NOT \RAM1|ram~543_combout\;
\RAM1|ALT_INV_ram~99_q\ <= NOT \RAM1|ram~99_q\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~59_q\ <= NOT \RAM1|ram~59_q\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\CPU|MUX1|ALT_INV_saida_MUX[3]~4_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~4_combout\;
\RAM1|ALT_INV_ram~542_combout\ <= NOT \RAM1|ram~542_combout\;
\RAM1|ALT_INV_ram~98_q\ <= NOT \RAM1|ram~98_q\;
\RAM1|ALT_INV_ram~58_q\ <= NOT \RAM1|ram~58_q\;
\RAM1|ALT_INV_ram~541_combout\ <= NOT \RAM1|ram~541_combout\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~3_combout\;
\RAM1|ALT_INV_ram~540_combout\ <= NOT \RAM1|ram~540_combout\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\RAM1|ALT_INV_ram~57_q\ <= NOT \RAM1|ram~57_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~97_q\ <= NOT \RAM1|ram~97_q\;
\RAM1|ALT_INV_ram~537_combout\ <= NOT \RAM1|ram~537_combout\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~2_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~1_combout\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~56_q\ <= NOT \RAM1|ram~56_q\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~96_q\ <= NOT \RAM1|ram~96_q\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\CPU|ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \CPU|ULA1|saida[0]~0_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~0_combout\;
\ALT_INV_Data_IN[0]~2_combout\ <= NOT \Data_IN[0]~2_combout\;
\ALT_INV_Data_IN[0]~1_combout\ <= NOT \Data_IN[0]~1_combout\;
\MEMKEY0|ALT_INV_DOUT~q\ <= NOT \MEMKEY0|DOUT~q\;
\ALT_INV_Data_IN[0]~0_combout\ <= NOT \Data_IN[0]~0_combout\;
\ALT_INV_ANDSW07~1_combout\ <= NOT \ANDSW07~1_combout\;
\ALT_INV_ANDSW07~0_combout\ <= NOT \ANDSW07~0_combout\;
\RAM1|ALT_INV_dado_out~0_combout\ <= NOT \RAM1|dado_out~0_combout\;
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\ <= NOT \CPU|DECODER1|Sinais_Controle~0_combout\;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~95_q\ <= NOT \RAM1|ram~95_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~528_combout\ <= NOT \RAM1|ram~528_combout\;
\RAM1|ALT_INV_ram~55_q\ <= NOT \RAM1|ram~55_q\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\CPU|DECODER1|ALT_INV_Equal3~1_combout\ <= NOT \CPU|DECODER1|Equal3~1_combout\;
\CPU|DECODER1|ALT_INV_Equal7~1_combout\ <= NOT \CPU|DECODER1|Equal7~1_combout\;
\CPU|REGRET|ALT_INV_DOUT\(8) <= NOT \CPU|REGRET|DOUT\(8);
\ROM1|ALT_INV_memROM~22_combout\ <= NOT \ROM1|memROM~22_combout\;
\CPU|REGRET|ALT_INV_DOUT\(7) <= NOT \CPU|REGRET|DOUT\(7);
\CPU|REGRET|ALT_INV_DOUT\(6) <= NOT \CPU|REGRET|DOUT\(6);
\ROM1|ALT_INV_memROM~21_combout\ <= NOT \ROM1|memROM~21_combout\;
\CPU|REGRET|ALT_INV_DOUT\(5) <= NOT \CPU|REGRET|DOUT\(5);
\CPU|REGRET|ALT_INV_DOUT\(4) <= NOT \CPU|REGRET|DOUT\(4);
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\CPU|REGRET|ALT_INV_DOUT\(3) <= NOT \CPU|REGRET|DOUT\(3);
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\CPU|REGRET|ALT_INV_DOUT\(2) <= NOT \CPU|REGRET|DOUT\(2);
\CPU|REGRET|ALT_INV_DOUT\(1) <= NOT \CPU|REGRET|DOUT\(1);
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\CPU|REGRET|ALT_INV_DOUT\(0) <= NOT \CPU|REGRET|DOUT\(0);
\CPU|MUXPC|ALT_INV_Equal1~0_combout\ <= NOT \CPU|MUXPC|Equal1~0_combout\;
\CPU|PC1|ALT_INV_dataOUT[2]~0_combout\ <= NOT \CPU|PC1|dataOUT[2]~0_combout\;
\CPU|REGIGUAL|ALT_INV_DOUT~q\ <= NOT \CPU|REGIGUAL|DOUT~q\;
\CPU|DECODER1|ALT_INV_Equal7~0_combout\ <= NOT \CPU|DECODER1|Equal7~0_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ALT_INV_ANDHEX0~2_combout\ <= NOT \ANDHEX0~2_combout\;
\ALT_INV_ANDHEX2~0_combout\ <= NOT \ANDHEX2~0_combout\;
\ALT_INV_ANDHEX1~0_combout\ <= NOT \ANDHEX1~0_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ALT_INV_ANDHEX0~1_combout\ <= NOT \ANDHEX0~1_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ALT_INV_ANDHEX0~0_combout\ <= NOT \ANDHEX0~0_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\CPU|DECODER1|ALT_INV_Equal4~0_combout\ <= NOT \CPU|DECODER1|Equal4~0_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\CPU|DECODER1|ALT_INV_Equal3~0_combout\ <= NOT \CPU|DECODER1|Equal3~0_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\CPU|PC1|ALT_INV_dataOUT\(8) <= NOT \CPU|PC1|dataOUT\(8);
\CPU|PC1|ALT_INV_dataOUT\(7) <= NOT \CPU|PC1|dataOUT\(7);
\CPU|PC1|ALT_INV_dataOUT\(6) <= NOT \CPU|PC1|dataOUT\(6);
\CPU|PC1|ALT_INV_dataOUT\(5) <= NOT \CPU|PC1|dataOUT\(5);
\CPU|PC1|ALT_INV_dataOUT\(4) <= NOT \CPU|PC1|dataOUT\(4);
\CPU|PC1|ALT_INV_dataOUT\(3) <= NOT \CPU|PC1|dataOUT\(3);
\CPU|PC1|ALT_INV_dataOUT\(2) <= NOT \CPU|PC1|dataOUT\(2);
\CPU|PC1|ALT_INV_dataOUT\(1) <= NOT \CPU|PC1|dataOUT\(1);
\CPU|PC1|ALT_INV_dataOUT\(0) <= NOT \CPU|PC1|dataOUT\(0);
\REGLED9|ALT_INV_DOUT~q\ <= NOT \REGLED9|DOUT~q\;
\REGLED8|ALT_INV_DOUT~q\ <= NOT \REGLED8|DOUT~q\;
\RAM1|ALT_INV_ram~573_combout\ <= NOT \RAM1|ram~573_combout\;
\RAM1|ALT_INV_ram~569_combout\ <= NOT \RAM1|ram~569_combout\;
\RAM1|ALT_INV_ram~565_combout\ <= NOT \RAM1|ram~565_combout\;
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|SOMPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|SOMPC|Add0~33_sumout\;
\CPU|SOMPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|SOMPC|Add0~29_sumout\;
\CPU|SOMPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|SOMPC|Add0~25_sumout\;
\CPU|SOMPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|SOMPC|Add0~21_sumout\;
\CPU|SOMPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|SOMPC|Add0~17_sumout\;
\CPU|SOMPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|SOMPC|Add0~13_sumout\;
\CPU|SOMPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|SOMPC|Add0~9_sumout\;
\CPU|SOMPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|SOMPC|Add0~5_sumout\;
\CPU|SOMPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|SOMPC|Add0~1_sumout\;
\CPU|REG1|ALT_INV_DOUT\(7) <= NOT \CPU|REG1|DOUT\(7);
\CPU|REG1|ALT_INV_DOUT\(6) <= NOT \CPU|REG1|DOUT\(6);
\CPU|REG1|ALT_INV_DOUT\(5) <= NOT \CPU|REG1|DOUT\(5);
\CPU|REG1|ALT_INV_DOUT\(4) <= NOT \CPU|REG1|DOUT\(4);
\CPU|REG1|ALT_INV_DOUT\(3) <= NOT \CPU|REG1|DOUT\(3);
\CPU|REG1|ALT_INV_DOUT\(2) <= NOT \CPU|REG1|DOUT\(2);
\CPU|REG1|ALT_INV_DOUT\(1) <= NOT \CPU|REG1|DOUT\(1);
\CPU|REG1|ALT_INV_DOUT\(0) <= NOT \CPU|REG1|DOUT\(0);
\CPU|PC1|ALT_INV_dataOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC1|dataOUT[6]~DUPLICATE_q\;
\CPU|PC1|ALT_INV_dataOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC1|dataOUT[5]~DUPLICATE_q\;
\CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC1|dataOUT[3]~DUPLICATE_q\;
\CPU|PC1|ALT_INV_dataOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC1|dataOUT[2]~DUPLICATE_q\;
\CPU|PC1|ALT_INV_dataOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC1|dataOUT[1]~DUPLICATE_q\;
\CPU|PC1|ALT_INV_dataOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC1|dataOUT[0]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_FPGA_RESET~input_o\ <= NOT \FPGA_RESET~input_o\;
\ALT_INV_SWITCH[9]~input_o\ <= NOT \SWITCH[9]~input_o\;
\ALT_INV_SWITCH[8]~input_o\ <= NOT \SWITCH[8]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SWITCH[0]~input_o\ <= NOT \SWITCH[0]~input_o\;
\ALT_INV_Data_IN[0]~5_combout\ <= NOT \Data_IN[0]~5_combout\;
\ALT_INV_Data_IN[0]~4_combout\ <= NOT \Data_IN[0]~4_combout\;
\ALT_INV_Data_IN[0]~3_combout\ <= NOT \Data_IN[0]~3_combout\;
\detectorSub0|ALT_INV_saidaQ~q\ <= NOT \detectorSub0|saidaQ~q\;
\ROM1|ALT_INV_memROM~23_combout\ <= NOT \ROM1|memROM~23_combout\;
\CPU|ULA1|ALT_INV_Equal2~1_combout\ <= NOT \CPU|ULA1|Equal2~1_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\RAM1|ALT_INV_ram~562_combout\ <= NOT \RAM1|ram~562_combout\;
\RAM1|ALT_INV_ram~560_combout\ <= NOT \RAM1|ram~560_combout\;
\RAM1|ALT_INV_ram~558_combout\ <= NOT \RAM1|ram~558_combout\;
\RAM1|ALT_INV_ram~556_combout\ <= NOT \RAM1|ram~556_combout\;
\CPU|ULA1|ALT_INV_Equal2~0_combout\ <= NOT \CPU|ULA1|Equal2~0_combout\;
\CPU|REGIGUAL|ALT_INV_DOUT~7_combout\ <= NOT \CPU|REGIGUAL|DOUT~7_combout\;
\CPU|REGIGUAL|ALT_INV_DOUT~6_combout\ <= NOT \CPU|REGIGUAL|DOUT~6_combout\;
\CPU|REGIGUAL|ALT_INV_DOUT~5_combout\ <= NOT \CPU|REGIGUAL|DOUT~5_combout\;
\CPU|REGIGUAL|ALT_INV_DOUT~4_combout\ <= NOT \CPU|REGIGUAL|DOUT~4_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[3]~11_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~11_combout\;
\CPU|REGIGUAL|ALT_INV_DOUT~3_combout\ <= NOT \CPU|REGIGUAL|DOUT~3_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~10_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~10_combout\;
\CPU|REGIGUAL|ALT_INV_DOUT~2_combout\ <= NOT \CPU|REGIGUAL|DOUT~2_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~9_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~9_combout\;
\CPU|REGIGUAL|ALT_INV_DOUT~1_combout\ <= NOT \CPU|REGIGUAL|DOUT~1_combout\;
\CPU|REGIGUAL|ALT_INV_DOUT~0_combout\ <= NOT \CPU|REGIGUAL|DOUT~0_combout\;
\CPU|DECODER1|ALT_INV_Equal7~2_combout\ <= NOT \CPU|DECODER1|Equal7~2_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[7]~8_combout\ <= NOT \CPU|MUX1|saida_MUX[7]~8_combout\;
\RAM1|ALT_INV_ram~555_combout\ <= NOT \RAM1|ram~555_combout\;
\RAM1|ALT_INV_ram~554_combout\ <= NOT \RAM1|ram~554_combout\;
\RAM1|ALT_INV_ram~102_q\ <= NOT \RAM1|ram~102_q\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~553_combout\ <= NOT \RAM1|ram~553_combout\;
\RAM1|ALT_INV_ram~62_q\ <= NOT \RAM1|ram~62_q\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~552_combout\ <= NOT \RAM1|ram~552_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~7_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~7_combout\;
\RAM1|ALT_INV_ram~551_combout\ <= NOT \RAM1|ram~551_combout\;
\RAM1|ALT_INV_ram~101_q\ <= NOT \RAM1|ram~101_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~550_combout\ <= NOT \RAM1|ram~550_combout\;
\RAM1|ALT_INV_ram~61_q\ <= NOT \RAM1|ram~61_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~6_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~6_combout\;
\RAM1|ALT_INV_ram~549_combout\ <= NOT \RAM1|ram~549_combout\;
\RAM1|ALT_INV_ram~548_combout\ <= NOT \RAM1|ram~548_combout\;
\RAM1|ALT_INV_ram~60_q\ <= NOT \RAM1|ram~60_q\;
\RAM1|ALT_INV_ram~547_combout\ <= NOT \RAM1|ram~547_combout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~546_combout\ <= NOT \RAM1|ram~546_combout\;
\RAM1|ALT_INV_ram~100_q\ <= NOT \RAM1|ram~100_q\;
\RAM1|ALT_INV_ram~545_combout\ <= NOT \RAM1|ram~545_combout\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X23_Y0_N76
\LED8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLED8|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LED8);

-- Location: IOOBUF_X23_Y0_N93
\LED9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLED9|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LED9);

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X18_Y0_N19
\DEBUGROM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC1|dataOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_DEBUGROM(0));

-- Location: IOOBUF_X18_Y0_N53
\DEBUGROM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC1|dataOUT\(1),
	devoe => ww_devoe,
	o => ww_DEBUGROM(1));

-- Location: IOOBUF_X19_Y0_N2
\DEBUGROM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC1|dataOUT\(2),
	devoe => ww_devoe,
	o => ww_DEBUGROM(2));

-- Location: IOOBUF_X18_Y0_N36
\DEBUGROM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC1|dataOUT\(3),
	devoe => ww_devoe,
	o => ww_DEBUGROM(3));

-- Location: IOOBUF_X22_Y0_N36
\DEBUGROM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC1|dataOUT\(4),
	devoe => ww_devoe,
	o => ww_DEBUGROM(4));

-- Location: IOOBUF_X19_Y0_N53
\DEBUGROM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC1|dataOUT\(5),
	devoe => ww_devoe,
	o => ww_DEBUGROM(5));

-- Location: IOOBUF_X18_Y0_N2
\DEBUGROM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC1|dataOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_DEBUGROM(6));

-- Location: IOOBUF_X23_Y0_N59
\DEBUGROM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC1|dataOUT\(7),
	devoe => ww_devoe,
	o => ww_DEBUGROM(7));

-- Location: IOOBUF_X19_Y0_N19
\DEBUGROM[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC1|dataOUT\(8),
	devoe => ww_devoe,
	o => ww_DEBUGROM(8));

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: FF_X20_Y3_N4
\CPU|PC1|dataOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(2));

-- Location: LABCELL_X17_Y3_N30
\CPU|SOMPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~1_sumout\ = SUM(( \CPU|PC1|dataOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|SOMPC|Add0~2\ = CARRY(( \CPU|PC1|dataOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC1|ALT_INV_dataOUT\(0),
	cin => GND,
	sumout => \CPU|SOMPC|Add0~1_sumout\,
	cout => \CPU|SOMPC|Add0~2\);

-- Location: LABCELL_X17_Y3_N33
\CPU|SOMPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~5_sumout\ = SUM(( \CPU|PC1|dataOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOMPC|Add0~2\ ))
-- \CPU|SOMPC|Add0~6\ = CARRY(( \CPU|PC1|dataOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOMPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC1|ALT_INV_dataOUT[1]~DUPLICATE_q\,
	cin => \CPU|SOMPC|Add0~2\,
	sumout => \CPU|SOMPC|Add0~5_sumout\,
	cout => \CPU|SOMPC|Add0~6\);

-- Location: FF_X20_Y3_N31
\CPU|PC1|dataOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUXPC|saida_MUX[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(3));

-- Location: LABCELL_X17_Y3_N36
\CPU|SOMPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~9_sumout\ = SUM(( \CPU|PC1|dataOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOMPC|Add0~6\ ))
-- \CPU|SOMPC|Add0~10\ = CARRY(( \CPU|PC1|dataOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOMPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC1|ALT_INV_dataOUT[2]~DUPLICATE_q\,
	cin => \CPU|SOMPC|Add0~6\,
	sumout => \CPU|SOMPC|Add0~9_sumout\,
	cout => \CPU|SOMPC|Add0~10\);

-- Location: LABCELL_X17_Y3_N39
\CPU|SOMPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~13_sumout\ = SUM(( \CPU|PC1|dataOUT\(3) ) + ( GND ) + ( \CPU|SOMPC|Add0~10\ ))
-- \CPU|SOMPC|Add0~14\ = CARRY(( \CPU|PC1|dataOUT\(3) ) + ( GND ) + ( \CPU|SOMPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(3),
	cin => \CPU|SOMPC|Add0~10\,
	sumout => \CPU|SOMPC|Add0~13_sumout\,
	cout => \CPU|SOMPC|Add0~14\);

-- Location: LABCELL_X17_Y3_N42
\CPU|SOMPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~17_sumout\ = SUM(( \CPU|PC1|dataOUT\(4) ) + ( GND ) + ( \CPU|SOMPC|Add0~14\ ))
-- \CPU|SOMPC|Add0~18\ = CARRY(( \CPU|PC1|dataOUT\(4) ) + ( GND ) + ( \CPU|SOMPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC1|ALT_INV_dataOUT\(4),
	cin => \CPU|SOMPC|Add0~14\,
	sumout => \CPU|SOMPC|Add0~17_sumout\,
	cout => \CPU|SOMPC|Add0~18\);

-- Location: FF_X17_Y3_N43
\CPU|REGRET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMPC|Add0~17_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(4));

-- Location: LABCELL_X17_Y3_N45
\CPU|SOMPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~21_sumout\ = SUM(( \CPU|PC1|dataOUT\(5) ) + ( GND ) + ( \CPU|SOMPC|Add0~18\ ))
-- \CPU|SOMPC|Add0~22\ = CARRY(( \CPU|PC1|dataOUT\(5) ) + ( GND ) + ( \CPU|SOMPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC1|ALT_INV_dataOUT\(5),
	cin => \CPU|SOMPC|Add0~18\,
	sumout => \CPU|SOMPC|Add0~21_sumout\,
	cout => \CPU|SOMPC|Add0~22\);

-- Location: FF_X17_Y3_N46
\CPU|REGRET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMPC|Add0~21_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(5));

-- Location: MLABCELL_X18_Y3_N24
\CPU|MUXPC|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[5]~5_combout\ = ( \CPU|SOMPC|Add0~21_sumout\ & ( (!\CPU|PC1|dataOUT[2]~0_combout\) # ((!\CPU|MUXPC|Equal1~0_combout\ & (\CPU|REGRET|DOUT\(5))) # (\CPU|MUXPC|Equal1~0_combout\ & ((\ROM1|memROM~13_combout\)))) ) ) # ( 
-- !\CPU|SOMPC|Add0~21_sumout\ & ( (\CPU|PC1|dataOUT[2]~0_combout\ & ((!\CPU|MUXPC|Equal1~0_combout\ & (\CPU|REGRET|DOUT\(5))) # (\CPU|MUXPC|Equal1~0_combout\ & ((\ROM1|memROM~13_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	datac => \CPU|REGRET|ALT_INV_DOUT\(5),
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \CPU|SOMPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUXPC|saida_MUX[5]~5_combout\);

-- Location: FF_X18_Y3_N26
\CPU|PC1|dataOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(5));

-- Location: FF_X18_Y3_N7
\CPU|PC1|dataOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(1));

-- Location: LABCELL_X19_Y2_N15
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \CPU|PC1|dataOUT\(5) & ( !\CPU|PC1|dataOUT\(1) & ( (!\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & !\CPU|PC1|dataOUT\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC1|ALT_INV_dataOUT\(2),
	datac => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC1|ALT_INV_dataOUT\(0),
	datae => \CPU|PC1|ALT_INV_dataOUT\(5),
	dataf => \CPU|PC1|ALT_INV_dataOUT\(1),
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X19_Y2_N57
\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~20_combout\);

-- Location: LABCELL_X21_Y3_N21
\CPU|MUXPC|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[4]~4_combout\ = ( \ROM1|memROM~20_combout\ & ( \CPU|PC1|dataOUT[2]~0_combout\ & ( (\CPU|REGRET|DOUT\(4)) # (\CPU|MUXPC|Equal1~0_combout\) ) ) ) # ( !\ROM1|memROM~20_combout\ & ( \CPU|PC1|dataOUT[2]~0_combout\ & ( 
-- (!\CPU|MUXPC|Equal1~0_combout\ & \CPU|REGRET|DOUT\(4)) ) ) ) # ( \ROM1|memROM~20_combout\ & ( !\CPU|PC1|dataOUT[2]~0_combout\ & ( \CPU|SOMPC|Add0~17_sumout\ ) ) ) # ( !\ROM1|memROM~20_combout\ & ( !\CPU|PC1|dataOUT[2]~0_combout\ & ( 
-- \CPU|SOMPC|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|REGRET|ALT_INV_DOUT\(4),
	datad => \CPU|SOMPC|ALT_INV_Add0~17_sumout\,
	datae => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	combout => \CPU|MUXPC|saida_MUX[4]~4_combout\);

-- Location: FF_X21_Y3_N23
\CPU|PC1|dataOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(4));

-- Location: FF_X18_Y3_N25
\CPU|PC1|dataOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X20_Y3_N24
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \CPU|PC1|dataOUT\(1) & ( (!\CPU|PC1|dataOUT[2]~DUPLICATE_q\ & ((!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & (\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & !\CPU|PC1|dataOUT\(0))) # (\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & 
-- (!\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & \CPU|PC1|dataOUT\(0))))) ) ) # ( !\CPU|PC1|dataOUT\(1) & ( (!\CPU|PC1|dataOUT[2]~DUPLICATE_q\ & (\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & !\CPU|PC1|dataOUT\(0)))) # 
-- (\CPU|PC1|dataOUT[2]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & (\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & \CPU|PC1|dataOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000100001000000000010000001000001000000000100000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC1|ALT_INV_dataOUT\(0),
	dataf => \CPU|PC1|ALT_INV_dataOUT\(1),
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X20_Y3_N27
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \CPU|PC1|dataOUT\(1) & ( (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & ((!\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & ((!\CPU|PC1|dataOUT\(0)))) # (\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT[2]~DUPLICATE_q\ & \CPU|PC1|dataOUT\(0))))) 
-- ) ) # ( !\CPU|PC1|dataOUT\(1) & ( (!\CPU|PC1|dataOUT[2]~DUPLICATE_q\ & ((!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & ((\CPU|PC1|dataOUT\(0)) # (\CPU|PC1|dataOUT[5]~DUPLICATE_q\))) # (\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT[5]~DUPLICATE_q\)))) # 
-- (\CPU|PC1|dataOUT[2]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & ((!\CPU|PC1|dataOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110010101000011011001010100011000000000010001100000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC1|ALT_INV_dataOUT\(0),
	dataf => \CPU|PC1|ALT_INV_dataOUT\(1),
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X21_Y3_N48
\CPU|DECODER1|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal4~0_combout\ = ( !\CPU|PC1|dataOUT\(7) & ( \ROM1|memROM~5_combout\ & ( (!\CPU|PC1|dataOUT\(4) & (!\ROM1|memROM~6_combout\ & (!\CPU|PC1|dataOUT[6]~DUPLICATE_q\ & !\CPU|PC1|dataOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(4),
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \CPU|PC1|ALT_INV_dataOUT[6]~DUPLICATE_q\,
	datad => \CPU|PC1|ALT_INV_dataOUT\(8),
	datae => \CPU|PC1|ALT_INV_dataOUT\(7),
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \CPU|DECODER1|Equal4~0_combout\);

-- Location: LABCELL_X17_Y3_N24
\CPU|DECODER1|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal8~0_combout\ = ( \CPU|DECODER1|Equal7~0_combout\ & ( \CPU|DECODER1|Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER1|ALT_INV_Equal4~0_combout\,
	dataf => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	combout => \CPU|DECODER1|Equal8~0_combout\);

-- Location: FF_X17_Y3_N34
\CPU|REGRET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMPC|Add0~5_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(1));

-- Location: FF_X18_Y3_N53
\CPU|PC1|dataOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y3_N33
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \CPU|PC1|dataOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT\(2) & \CPU|PC1|dataOUT[5]~DUPLICATE_q\)) ) ) # ( !\CPU|PC1|dataOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & 
-- (!\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ $ (!\CPU|PC1|dataOUT\(1))))) # (\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & ((!\CPU|PC1|dataOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101010000000010010101000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC1|ALT_INV_dataOUT\(2),
	datac => \CPU|PC1|ALT_INV_dataOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC1|ALT_INV_dataOUT\(1),
	dataf => \CPU|PC1|ALT_INV_dataOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X19_Y3_N6
\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~17_combout\);

-- Location: MLABCELL_X18_Y3_N6
\CPU|MUXPC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[1]~1_combout\ = ( \ROM1|memROM~17_combout\ & ( \CPU|PC1|dataOUT[2]~0_combout\ & ( (\CPU|MUXPC|Equal1~0_combout\) # (\CPU|REGRET|DOUT\(1)) ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \CPU|PC1|dataOUT[2]~0_combout\ & ( (\CPU|REGRET|DOUT\(1) 
-- & !\CPU|MUXPC|Equal1~0_combout\) ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\CPU|PC1|dataOUT[2]~0_combout\ & ( \CPU|SOMPC|Add0~5_sumout\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\CPU|PC1|dataOUT[2]~0_combout\ & ( \CPU|SOMPC|Add0~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REGRET|ALT_INV_DOUT\(1),
	datac => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datad => \CPU|SOMPC|ALT_INV_Add0~5_sumout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	combout => \CPU|MUXPC|saida_MUX[1]~1_combout\);

-- Location: FF_X18_Y3_N8
\CPU|PC1|dataOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y3_N12
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \CPU|PC1|dataOUT[3]~DUPLICATE_q\ & ( \CPU|PC1|dataOUT\(0) & ( (\CPU|PC1|dataOUT[1]~DUPLICATE_q\ & !\CPU|PC1|dataOUT\(5)) ) ) ) # ( !\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & ( !\CPU|PC1|dataOUT\(0) & ( 
-- (!\CPU|PC1|dataOUT[1]~DUPLICATE_q\ & \CPU|PC1|dataOUT\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC1|ALT_INV_dataOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(5),
	datae => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC1|ALT_INV_dataOUT\(0),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X19_Y3_N21
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC1|dataOUT\(2) & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~2_combout\);

-- Location: FF_X17_Y3_N38
\CPU|REGRET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMPC|Add0~9_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(2));

-- Location: LABCELL_X20_Y3_N3
\CPU|MUXPC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[2]~2_combout\ = ( \CPU|MUXPC|Equal1~0_combout\ & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & ((\CPU|SOMPC|Add0~9_sumout\))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (\ROM1|memROM~2_combout\)) ) ) # ( !\CPU|MUXPC|Equal1~0_combout\ & ( 
-- (!\CPU|PC1|dataOUT[2]~0_combout\ & ((\CPU|SOMPC|Add0~9_sumout\))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (\CPU|REGRET|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \CPU|REGRET|ALT_INV_DOUT\(2),
	datac => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	datad => \CPU|SOMPC|ALT_INV_Add0~9_sumout\,
	dataf => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	combout => \CPU|MUXPC|saida_MUX[2]~2_combout\);

-- Location: FF_X20_Y3_N5
\CPU|PC1|dataOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y3_N18
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \CPU|PC1|dataOUT\(1) & ( (!\CPU|PC1|dataOUT[2]~DUPLICATE_q\ & ((!\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & (\CPU|PC1|dataOUT\(0))) # (\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT\(0) & !\CPU|PC1|dataOUT\(3))))) ) ) # ( 
-- !\CPU|PC1|dataOUT\(1) & ( (!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT[2]~DUPLICATE_q\ $ (!\CPU|PC1|dataOUT[5]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000011000000000000000101000000010000010100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC1|ALT_INV_dataOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(0),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	dataf => \CPU|PC1|ALT_INV_dataOUT\(1),
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X19_Y3_N15
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \ROM1|memROM~11_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~14_combout\);

-- Location: FF_X17_Y3_N32
\CPU|REGRET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMPC|Add0~1_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(0));

-- Location: MLABCELL_X18_Y3_N51
\CPU|MUXPC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[0]~0_combout\ = ( \CPU|SOMPC|Add0~1_sumout\ & ( (!\CPU|PC1|dataOUT[2]~0_combout\) # ((!\CPU|MUXPC|Equal1~0_combout\ & ((\CPU|REGRET|DOUT\(0)))) # (\CPU|MUXPC|Equal1~0_combout\ & (\ROM1|memROM~14_combout\))) ) ) # ( 
-- !\CPU|SOMPC|Add0~1_sumout\ & ( (\CPU|PC1|dataOUT[2]~0_combout\ & ((!\CPU|MUXPC|Equal1~0_combout\ & ((\CPU|REGRET|DOUT\(0)))) # (\CPU|MUXPC|Equal1~0_combout\ & (\ROM1|memROM~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011111100011111101100000001000010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	datad => \CPU|REGRET|ALT_INV_DOUT\(0),
	datae => \CPU|SOMPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|MUXPC|saida_MUX[0]~0_combout\);

-- Location: FF_X18_Y3_N52
\CPU|PC1|dataOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(0));

-- Location: LABCELL_X19_Y3_N54
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \CPU|PC1|dataOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & \CPU|PC1|dataOUT[2]~DUPLICATE_q\)) ) ) # ( !\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC1|dataOUT\(1) & 
-- (\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & !\CPU|PC1|dataOUT[2]~DUPLICATE_q\)) # (\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & \CPU|PC1|dataOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC1|ALT_INV_dataOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC1|ALT_INV_dataOUT[5]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X20_Y3_N54
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \CPU|PC1|dataOUT\(0) & ( (!\CPU|PC1|dataOUT[2]~DUPLICATE_q\ & ((!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & ((!\CPU|PC1|dataOUT[5]~DUPLICATE_q\) # (\CPU|PC1|dataOUT\(1)))) # (\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & (\CPU|PC1|dataOUT\(1) & 
-- !\CPU|PC1|dataOUT[5]~DUPLICATE_q\)))) ) ) # ( !\CPU|PC1|dataOUT\(0) & ( (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & ((!\CPU|PC1|dataOUT\(1)) # ((!\CPU|PC1|dataOUT[2]~DUPLICATE_q\ & !\CPU|PC1|dataOUT[5]~DUPLICATE_q\)))) # (\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & 
-- (!\CPU|PC1|dataOUT[2]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT\(1) & !\CPU|PC1|dataOUT[5]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011000000111010001100000010001010000010001000101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(1),
	datad => \CPU|PC1|ALT_INV_dataOUT[5]~DUPLICATE_q\,
	dataf => \CPU|PC1|ALT_INV_dataOUT\(0),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X20_Y3_N12
\CPU|DECODER1|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal7~0_combout\ = ( !\ROM1|memROM~3_combout\ & ( (\CPU|PC1|dataOUT\(0) & (\ROM1|memROM~4_combout\ & \ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC1|ALT_INV_dataOUT\(0),
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|DECODER1|Equal7~0_combout\);

-- Location: LABCELL_X20_Y3_N39
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~16_combout\);

-- Location: LABCELL_X20_Y2_N6
\CPU|DECODER1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal3~0_combout\ = ( \ROM1|memROM~3_combout\ & ( (\ROM1|memROM~1_combout\ & ((!\CPU|PC1|dataOUT\(0)) # (!\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000010100000111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|DECODER1|Equal3~0_combout\);

-- Location: LABCELL_X21_Y3_N9
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( !\CPU|PC1|dataOUT\(4) & ( \ROM1|memROM~5_combout\ & ( (!\CPU|PC1|dataOUT[6]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT\(7) & !\CPU|PC1|dataOUT\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT[6]~DUPLICATE_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(7),
	datad => \CPU|PC1|ALT_INV_dataOUT\(8),
	datae => \CPU|PC1|ALT_INV_dataOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~15_combout\);

-- Location: LABCELL_X21_Y3_N30
\CPU|PC1|dataOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC1|dataOUT[2]~0_combout\ = ( \CPU|DECODER1|Equal3~0_combout\ & ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (\CPU|DECODER1|Equal7~0_combout\)) # (\ROM1|memROM~16_combout\ & ((\CPU|REGIGUAL|DOUT~q\))) ) ) ) # ( 
-- !\CPU|DECODER1|Equal3~0_combout\ & ( \ROM1|memROM~15_combout\ & ( (\CPU|DECODER1|Equal7~0_combout\ & !\ROM1|memROM~16_combout\) ) ) ) # ( \CPU|DECODER1|Equal3~0_combout\ & ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~16_combout\ ) ) ) # ( 
-- !\CPU|DECODER1|Equal3~0_combout\ & ( !\ROM1|memROM~15_combout\ & ( (\CPU|DECODER1|Equal7~0_combout\ & \ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000001111111100110011000000000011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	datac => \CPU|REGIGUAL|ALT_INV_DOUT~q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \CPU|PC1|dataOUT[2]~0_combout\);

-- Location: FF_X17_Y3_N40
\CPU|REGRET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMPC|Add0~13_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(3));

-- Location: FF_X21_Y3_N25
\CPU|PC1|dataOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(6));

-- Location: MLABCELL_X18_Y3_N33
\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = ( !\CPU|PC1|dataOUT\(1) & ( \CPU|PC1|dataOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC1|dataOUT[0]~DUPLICATE_q\ & !\CPU|PC1|dataOUT\(5)) ) ) ) # ( !\CPU|PC1|dataOUT\(1) & ( !\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & ( 
-- (!\CPU|PC1|dataOUT[0]~DUPLICATE_q\ & \CPU|PC1|dataOUT\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000010101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC1|ALT_INV_dataOUT\(5),
	datae => \CPU|PC1|ALT_INV_dataOUT\(1),
	dataf => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~18_combout\);

-- Location: LABCELL_X19_Y3_N0
\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = ( !\CPU|PC1|dataOUT\(7) & ( \ROM1|memROM~18_combout\ & ( (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT[2]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT\(6) & !\CPU|PC1|dataOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(4),
	datab => \CPU|PC1|ALT_INV_dataOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(6),
	datad => \CPU|PC1|ALT_INV_dataOUT\(8),
	datae => \CPU|PC1|ALT_INV_dataOUT\(7),
	dataf => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \ROM1|memROM~19_combout\);

-- Location: MLABCELL_X18_Y3_N27
\CPU|MUXPC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[3]~3_combout\ = ( \CPU|SOMPC|Add0~13_sumout\ & ( (!\CPU|PC1|dataOUT[2]~0_combout\) # ((!\CPU|MUXPC|Equal1~0_combout\ & (\CPU|REGRET|DOUT\(3))) # (\CPU|MUXPC|Equal1~0_combout\ & ((\ROM1|memROM~19_combout\)))) ) ) # ( 
-- !\CPU|SOMPC|Add0~13_sumout\ & ( (\CPU|PC1|dataOUT[2]~0_combout\ & ((!\CPU|MUXPC|Equal1~0_combout\ & (\CPU|REGRET|DOUT\(3))) # (\CPU|MUXPC|Equal1~0_combout\ & ((\ROM1|memROM~19_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	datac => \CPU|REGRET|ALT_INV_DOUT\(3),
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \CPU|SOMPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUXPC|saida_MUX[3]~3_combout\);

-- Location: FF_X20_Y3_N32
\CPU|PC1|dataOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUXPC|saida_MUX[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y3_N42
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( !\CPU|PC1|dataOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & (\CPU|PC1|dataOUT\(1) & \CPU|PC1|dataOUT[2]~DUPLICATE_q\)) # (\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT\(1) & 
-- !\CPU|PC1|dataOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100001100000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC1|ALT_INV_dataOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(1),
	datad => \CPU|PC1|ALT_INV_dataOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC1|ALT_INV_dataOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X19_Y3_N24
\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = ( \ROM1|memROM~7_combout\ & ( (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~21_combout\);

-- Location: LABCELL_X17_Y3_N48
\CPU|SOMPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~25_sumout\ = SUM(( \CPU|PC1|dataOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOMPC|Add0~22\ ))
-- \CPU|SOMPC|Add0~26\ = CARRY(( \CPU|PC1|dataOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|SOMPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC1|ALT_INV_dataOUT[6]~DUPLICATE_q\,
	cin => \CPU|SOMPC|Add0~22\,
	sumout => \CPU|SOMPC|Add0~25_sumout\,
	cout => \CPU|SOMPC|Add0~26\);

-- Location: FF_X17_Y3_N49
\CPU|REGRET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMPC|Add0~25_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(6));

-- Location: LABCELL_X21_Y3_N24
\CPU|MUXPC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[6]~6_combout\ = ( \CPU|REGRET|DOUT\(6) & ( \CPU|PC1|dataOUT[2]~0_combout\ & ( (!\CPU|MUXPC|Equal1~0_combout\) # (\ROM1|memROM~21_combout\) ) ) ) # ( !\CPU|REGRET|DOUT\(6) & ( \CPU|PC1|dataOUT[2]~0_combout\ & ( 
-- (\CPU|MUXPC|Equal1~0_combout\ & \ROM1|memROM~21_combout\) ) ) ) # ( \CPU|REGRET|DOUT\(6) & ( !\CPU|PC1|dataOUT[2]~0_combout\ & ( \CPU|SOMPC|Add0~25_sumout\ ) ) ) # ( !\CPU|REGRET|DOUT\(6) & ( !\CPU|PC1|dataOUT[2]~0_combout\ & ( \CPU|SOMPC|Add0~25_sumout\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \CPU|SOMPC|ALT_INV_Add0~25_sumout\,
	datae => \CPU|REGRET|ALT_INV_DOUT\(6),
	dataf => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	combout => \CPU|MUXPC|saida_MUX[6]~6_combout\);

-- Location: FF_X21_Y3_N26
\CPU|PC1|dataOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y3_N51
\CPU|SOMPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~29_sumout\ = SUM(( \CPU|PC1|dataOUT\(7) ) + ( GND ) + ( \CPU|SOMPC|Add0~26\ ))
-- \CPU|SOMPC|Add0~30\ = CARRY(( \CPU|PC1|dataOUT\(7) ) + ( GND ) + ( \CPU|SOMPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC1|ALT_INV_dataOUT\(7),
	cin => \CPU|SOMPC|Add0~26\,
	sumout => \CPU|SOMPC|Add0~29_sumout\,
	cout => \CPU|SOMPC|Add0~30\);

-- Location: LABCELL_X17_Y3_N54
\CPU|SOMPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~33_sumout\ = SUM(( \CPU|PC1|dataOUT\(8) ) + ( GND ) + ( \CPU|SOMPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC1|ALT_INV_dataOUT\(8),
	cin => \CPU|SOMPC|Add0~30\,
	sumout => \CPU|SOMPC|Add0~33_sumout\);

-- Location: MLABCELL_X18_Y3_N36
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \CPU|PC1|dataOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1) $ (!\CPU|PC1|dataOUT[5]~DUPLICATE_q\))) ) ) # ( !\CPU|PC1|dataOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC1|dataOUT\(1) & 
-- (\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & !\CPU|PC1|dataOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(1),
	datab => \CPU|PC1|ALT_INV_dataOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(0),
	dataf => \CPU|PC1|ALT_INV_dataOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~8_combout\);

-- Location: MLABCELL_X18_Y3_N21
\ROM1|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~22_combout\ = ( \ROM1|memROM~8_combout\ & ( !\CPU|PC1|dataOUT\(3) & ( \ROM1|memROM~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~22_combout\);

-- Location: FF_X17_Y3_N55
\CPU|REGRET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMPC|Add0~33_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(8));

-- Location: LABCELL_X21_Y3_N12
\CPU|MUXPC|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[8]~8_combout\ = ( \CPU|REGRET|DOUT\(8) & ( \CPU|PC1|dataOUT[2]~0_combout\ & ( (!\CPU|MUXPC|Equal1~0_combout\) # (\ROM1|memROM~22_combout\) ) ) ) # ( !\CPU|REGRET|DOUT\(8) & ( \CPU|PC1|dataOUT[2]~0_combout\ & ( 
-- (\ROM1|memROM~22_combout\ & \CPU|MUXPC|Equal1~0_combout\) ) ) ) # ( \CPU|REGRET|DOUT\(8) & ( !\CPU|PC1|dataOUT[2]~0_combout\ & ( \CPU|SOMPC|Add0~33_sumout\ ) ) ) # ( !\CPU|REGRET|DOUT\(8) & ( !\CPU|PC1|dataOUT[2]~0_combout\ & ( \CPU|SOMPC|Add0~33_sumout\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|SOMPC|ALT_INV_Add0~33_sumout\,
	datab => \ROM1|ALT_INV_memROM~22_combout\,
	datac => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datae => \CPU|REGRET|ALT_INV_DOUT\(8),
	dataf => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	combout => \CPU|MUXPC|saida_MUX[8]~8_combout\);

-- Location: FF_X21_Y3_N14
\CPU|PC1|dataOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(8));

-- Location: LABCELL_X20_Y3_N15
\ROM1|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~23_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\CPU|PC1|dataOUT\(7) & (!\CPU|PC1|dataOUT[6]~DUPLICATE_q\ & !\CPU|PC1|dataOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(7),
	datac => \CPU|PC1|ALT_INV_dataOUT[6]~DUPLICATE_q\,
	datad => \CPU|PC1|ALT_INV_dataOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~23_combout\);

-- Location: LABCELL_X19_Y3_N27
\CPU|ULA1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal2~0_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~1_combout\ ) ) # ( !\ROM1|memROM~3_combout\ & ( (\ROM1|memROM~1_combout\ & (\CPU|PC1|dataOUT\(0) & \ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(0),
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|ULA1|Equal2~0_combout\);

-- Location: LABCELL_X19_Y3_N30
\CPU|ULA1|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal2~1_combout\ = ( \ROM1|memROM~16_combout\ & ( \CPU|ULA1|Equal2~0_combout\ ) ) # ( !\ROM1|memROM~16_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_Equal2~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \CPU|ULA1|Equal2~1_combout\);

-- Location: LABCELL_X20_Y3_N6
\CPU|DECODER1|Sinais_Controle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Sinais_Controle~0_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~4_combout\) # (!\CPU|PC1|dataOUT\(0))))) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( 
-- \ROM1|memROM~6_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~4_combout\) # (!\CPU|PC1|dataOUT\(0))))) ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~1_combout\ & 
-- (!\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~4_combout\) # (!\CPU|PC1|dataOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000010000000110000001000000011000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \CPU|PC1|ALT_INV_dataOUT\(0),
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|DECODER1|Sinais_Controle~0_combout\);

-- Location: LABCELL_X20_Y3_N48
\CPU|DECODER1|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal7~1_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT[6]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT\(7) & !\CPU|PC1|dataOUT\(8)))) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( 
-- \ROM1|memROM~6_combout\ & ( (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT[6]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT\(7) & !\CPU|PC1|dataOUT\(8)))) ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( (!\CPU|PC1|dataOUT\(4) & 
-- (!\CPU|PC1|dataOUT[6]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT\(7) & !\CPU|PC1|dataOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(4),
	datab => \CPU|PC1|ALT_INV_dataOUT[6]~DUPLICATE_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(7),
	datad => \CPU|PC1|ALT_INV_dataOUT\(8),
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|DECODER1|Equal7~1_combout\);

-- Location: LABCELL_X20_Y2_N57
\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~1_combout\ & ((!\CPU|PC1|dataOUT[3]~DUPLICATE_q\) # (\ROM1|memROM~9_combout\))) ) ) # ( !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~7_combout\ & 
-- !\CPU|PC1|dataOUT[3]~DUPLICATE_q\)) # (\ROM1|memROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010001000101010001000101010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|process_0~0_combout\);

-- Location: LABCELL_X20_Y2_N33
\CPU|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~1_combout\ = ( \CPU|DECODER1|Equal7~0_combout\ & ( !\RAM1|process_0~0_combout\ & ( (!\CPU|DECODER1|Equal7~1_combout\ & (!\CPU|DECODER1|Equal3~0_combout\)) # (\CPU|DECODER1|Equal7~1_combout\ & 
-- ((\CPU|DECODER1|Sinais_Controle~0_combout\))) ) ) ) # ( !\CPU|DECODER1|Equal7~0_combout\ & ( !\RAM1|process_0~0_combout\ & ( (\CPU|DECODER1|Sinais_Controle~0_combout\ & ((!\CPU|DECODER1|Equal3~0_combout\) # (\CPU|DECODER1|Equal7~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001111110011000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	datac => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	datad => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	datae => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X19_Y1_N57
\CPU|DECODER1|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal3~1_combout\ = ( \CPU|DECODER1|Equal3~0_combout\ & ( !\CPU|DECODER1|Equal7~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	dataf => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	combout => \CPU|DECODER1|Equal3~1_combout\);

-- Location: LABCELL_X20_Y2_N15
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~1_combout\) # ((!\ROM1|memROM~3_combout\ & ((!\CPU|PC1|dataOUT[0]~DUPLICATE_q\) # (!\ROM1|memROM~4_combout\)))) ) ) ) # ( !\ROM1|memROM~16_combout\ 
-- & ( !\ROM1|memROM~15_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~3_combout\ & ((!\CPU|PC1|dataOUT[0]~DUPLICATE_q\) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000010000000000000000011111100111011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT[0]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X21_Y1_N57
\CPU|DECODER1|Sinais_Controle[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Sinais_Controle\(4) = ( \CPU|DECODER1|Equal3~1_combout\ ) # ( !\CPU|DECODER1|Equal3~1_combout\ & ( \CPU|DECODER1|Sinais_Controle~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	dataf => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	combout => \CPU|DECODER1|Sinais_Controle\(4));

-- Location: FF_X20_Y1_N53
\CPU|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1|saida_MUX[6]~7_combout\,
	sload => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(6));

-- Location: MLABCELL_X18_Y3_N0
\RAM1|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~562_combout\ = ( \CPU|PC1|dataOUT[3]~DUPLICATE_q\ & ( !\CPU|PC1|dataOUT\(0) & ( (\ROM1|memROM~1_combout\ & (!\CPU|PC1|dataOUT[2]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT\(5) & !\CPU|PC1|dataOUT[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(5),
	datad => \CPU|PC1|ALT_INV_dataOUT[1]~DUPLICATE_q\,
	datae => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC1|ALT_INV_dataOUT\(0),
	combout => \RAM1|ram~562_combout\);

-- Location: MLABCELL_X18_Y3_N42
\RAM1|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~563_combout\ = ( \CPU|DECODER1|Equal4~0_combout\ & ( (\CPU|DECODER1|Equal3~0_combout\ & (\RAM1|ram~562_combout\ & !\RAM1|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	datac => \RAM1|ALT_INV_ram~562_combout\,
	datad => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \CPU|DECODER1|ALT_INV_Equal4~0_combout\,
	combout => \RAM1|ram~563_combout\);

-- Location: FF_X18_Y1_N1
\RAM1|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~101_q\);

-- Location: MLABCELL_X18_Y3_N3
\RAM1|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~564_combout\ = ( \CPU|DECODER1|Equal4~0_combout\ & ( !\CPU|PC1|dataOUT\(3) & ( (\ROM1|memROM~1_combout\ & (!\CPU|PC1|dataOUT[2]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT[1]~DUPLICATE_q\ & !\CPU|PC1|dataOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC1|ALT_INV_dataOUT\(5),
	datae => \CPU|DECODER1|ALT_INV_Equal4~0_combout\,
	dataf => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \RAM1|ram~564_combout\);

-- Location: FF_X18_Y1_N53
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: MLABCELL_X18_Y2_N36
\RAM1|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~558_combout\ = ( \CPU|PC1|dataOUT[0]~DUPLICATE_q\ & ( \ROM1|memROM~1_combout\ & ( (\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT\(2) & (\CPU|PC1|dataOUT[1]~DUPLICATE_q\ & !\CPU|PC1|dataOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC1|ALT_INV_dataOUT\(2),
	datac => \CPU|PC1|ALT_INV_dataOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC1|ALT_INV_dataOUT\(5),
	datae => \CPU|PC1|ALT_INV_dataOUT[0]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~558_combout\);

-- Location: MLABCELL_X18_Y2_N6
\RAM1|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~559_combout\ = ( !\RAM1|process_0~0_combout\ & ( \CPU|DECODER1|Equal4~0_combout\ & ( (\CPU|DECODER1|Equal3~0_combout\ & \RAM1|ram~558_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	datac => \RAM1|ALT_INV_ram~558_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \CPU|DECODER1|ALT_INV_Equal4~0_combout\,
	combout => \RAM1|ram~559_combout\);

-- Location: FF_X19_Y1_N4
\RAM1|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~61_q\);

-- Location: LABCELL_X20_Y2_N36
\RAM1|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~556_combout\ = ( !\CPU|PC1|dataOUT\(5) & ( \CPU|PC1|dataOUT\(2) & ( (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT[0]~DUPLICATE_q\ & (\ROM1|memROM~1_combout\ & !\CPU|PC1|dataOUT[1]~DUPLICATE_q\))) ) ) ) # ( \CPU|PC1|dataOUT\(5) & ( 
-- !\CPU|PC1|dataOUT\(2) & ( (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT[0]~DUPLICATE_q\ & (\ROM1|memROM~1_combout\ & \CPU|PC1|dataOUT[1]~DUPLICATE_q\))) ) ) ) # ( !\CPU|PC1|dataOUT\(5) & ( !\CPU|PC1|dataOUT\(2) & ( 
-- (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & (\CPU|PC1|dataOUT[0]~DUPLICATE_q\ & (\ROM1|memROM~1_combout\ & \CPU|PC1|dataOUT[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000100000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC1|ALT_INV_dataOUT[0]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC1|ALT_INV_dataOUT[1]~DUPLICATE_q\,
	datae => \CPU|PC1|ALT_INV_dataOUT\(5),
	dataf => \CPU|PC1|ALT_INV_dataOUT\(2),
	combout => \RAM1|ram~556_combout\);

-- Location: LABCELL_X21_Y3_N39
\RAM1|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~557_combout\ = ( !\RAM1|process_0~0_combout\ & ( (\CPU|DECODER1|Equal4~0_combout\ & (\RAM1|ram~556_combout\ & \CPU|DECODER1|Equal3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal4~0_combout\,
	datac => \RAM1|ALT_INV_ram~556_combout\,
	datad => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|ram~557_combout\);

-- Location: FF_X18_Y1_N44
\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: MLABCELL_X18_Y1_N42
\RAM1|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~550_combout\ = ( \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~2_combout\ & ((\RAM1|ram~29_q\))) # (\ROM1|memROM~2_combout\ & (\RAM1|ram~61_q\)) ) ) # ( !\ROM1|memROM~14_combout\ & ( (\RAM1|ram~21_q\ & !\ROM1|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datab => \RAM1|ALT_INV_ram~61_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_ram~29_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~550_combout\);

-- Location: LABCELL_X20_Y2_N42
\RAM1|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~560_combout\ = ( \CPU|PC1|dataOUT\(5) & ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & ((!\CPU|PC1|dataOUT\(2) & (\CPU|PC1|dataOUT[0]~DUPLICATE_q\)) # (\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT[0]~DUPLICATE_q\ & 
-- !\CPU|PC1|dataOUT[1]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|PC1|dataOUT\(5) & ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT[0]~DUPLICATE_q\ & \CPU|PC1|dataOUT[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000010100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC1|ALT_INV_dataOUT\(2),
	datac => \CPU|PC1|ALT_INV_dataOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC1|ALT_INV_dataOUT[1]~DUPLICATE_q\,
	datae => \CPU|PC1|ALT_INV_dataOUT\(5),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~560_combout\);

-- Location: LABCELL_X20_Y2_N9
\RAM1|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~561_combout\ = ( \CPU|DECODER1|Equal4~0_combout\ & ( (\RAM1|ram~560_combout\ & (!\RAM1|process_0~0_combout\ & \CPU|DECODER1|Equal3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~560_combout\,
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	datad => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	dataf => \CPU|DECODER1|ALT_INV_Equal4~0_combout\,
	combout => \RAM1|ram~561_combout\);

-- Location: FF_X19_Y1_N53
\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

-- Location: MLABCELL_X18_Y1_N0
\RAM1|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~565_combout\ = ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~17_combout\ & ((((\RAM1|ram~550_combout\))))) # (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~14_combout\ & (\RAM1|ram~37_q\)))) ) ) # ( 
-- \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~14_combout\ & (\RAM1|ram~101_q\ & (\ROM1|memROM~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001000000000000000100011111111000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \RAM1|ALT_INV_ram~101_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \RAM1|ALT_INV_ram~550_combout\,
	datag => \RAM1|ALT_INV_ram~37_q\,
	combout => \RAM1|ram~565_combout\);

-- Location: MLABCELL_X18_Y1_N45
\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = ( !\ROM1|memROM~20_combout\ & ( (!\ROM1|memROM~13_combout\ & \RAM1|ram~565_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \RAM1|ALT_INV_ram~565_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~551_combout\);

-- Location: LABCELL_X19_Y1_N15
\CPU|MUX1|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~7_combout\ = ( \RAM1|ram~551_combout\ & ( ((\ROM1|memROM~21_combout\ & \CPU|DECODER1|Equal3~1_combout\)) # (\CPU|MUX1|saida_MUX[1]~1_combout\) ) ) # ( !\RAM1|ram~551_combout\ & ( (\ROM1|memROM~21_combout\ & 
-- \CPU|DECODER1|Equal3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	dataf => \RAM1|ALT_INV_ram~551_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~7_combout\);

-- Location: LABCELL_X21_Y1_N3
\RAM1|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out~0_combout\ = ( \CPU|DECODER1|Equal7~0_combout\ & ( !\RAM1|process_0~0_combout\ & ( (!\CPU|DECODER1|Equal7~1_combout\) # (\CPU|DECODER1|Sinais_Controle~0_combout\) ) ) ) # ( !\CPU|DECODER1|Equal7~0_combout\ & ( !\RAM1|process_0~0_combout\ & 
-- ( \CPU|DECODER1|Sinais_Controle~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111110011111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	datac => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	datae => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|dado_out~0_combout\);

-- Location: IOIBUF_X20_Y45_N1
\SWITCH[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(0),
	o => \SWITCH[0]~input_o\);

-- Location: LABCELL_X19_Y3_N48
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \CPU|PC1|dataOUT[0]~DUPLICATE_q\ & ( (\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT\(1) & !\CPU|PC1|dataOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC1|dataOUT[0]~DUPLICATE_q\ & ( 
-- (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & ((!\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & (\CPU|PC1|dataOUT\(1) & \CPU|PC1|dataOUT[2]~DUPLICATE_q\)) # (\CPU|PC1|dataOUT[5]~DUPLICATE_q\ & (!\CPU|PC1|dataOUT\(1) & !\CPU|PC1|dataOUT[2]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000001000001000000000100001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC1|ALT_INV_dataOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(1),
	datad => \CPU|PC1|ALT_INV_dataOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC1|ALT_INV_dataOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X21_Y3_N54
\ANDSW07~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDSW07~1_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~0_combout\ & ( (\ROM1|memROM~1_combout\ & ((!\CPU|PC1|dataOUT\(2)) # ((\ROM1|memROM~12_combout\) 
-- # (\ROM1|memROM~11_combout\)))) ) ) ) # ( \ROM1|memROM~10_combout\ & ( !\ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~0_combout\ & ( (\ROM1|memROM~1_combout\ & ((\ROM1|memROM~12_combout\) # 
-- (\ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101010101010101010101000101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT\(2),
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ANDSW07~1_combout\);

-- Location: LABCELL_X19_Y3_N12
\ANDSW07~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDSW07~0_combout\ = ( !\ROM1|memROM~9_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~7_combout\ & (!\CPU|PC1|dataOUT[3]~DUPLICATE_q\ & \ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ANDSW07~0_combout\);

-- Location: LABCELL_X20_Y3_N33
\Data_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~0_combout\ = ( !\ANDSW07~1_combout\ & ( \ANDSW07~0_combout\ & ( (\SWITCH[0]~input_o\ & (((\CPU|DECODER1|Equal7~0_combout\ & !\CPU|DECODER1|Equal7~1_combout\)) # (\CPU|DECODER1|Sinais_Controle~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SWITCH[0]~input_o\,
	datab => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	datac => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	datad => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	datae => \ALT_INV_ANDSW07~1_combout\,
	dataf => \ALT_INV_ANDSW07~0_combout\,
	combout => \Data_IN[0]~0_combout\);

-- Location: LABCELL_X20_Y1_N30
\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( (!\ROM1|memROM~16_combout\) # (((\ROM1|memROM~23_combout\ & !\CPU|PC1|dataOUT\(8))) # (\CPU|ULA1|Equal2~0_combout\)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001011111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal2~0_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \CPU|PC1|ALT_INV_dataOUT\(8),
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

-- Location: LABCELL_X20_Y1_N33
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[0]~0_combout\ $ (((\ROM1|memROM~16_combout\ & (!\CPU|ULA1|Equal2~0_combout\ & !\ROM1|memROM~15_combout\)))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( !\CPU|MUX1|saida_MUX[0]~0_combout\ $ (((\ROM1|memROM~16_combout\ & (!\CPU|ULA1|Equal2~0_combout\ & !\ROM1|memROM~15_combout\)))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal2~0_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: FF_X20_Y1_N35
\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

-- Location: FF_X19_Y2_N20
\RAM1|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~55_q\);

-- Location: LABCELL_X19_Y2_N18
\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( \ROM1|memROM~11_combout\ & ( (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~1_combout\ & \RAM1|ram~55_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_ram~55_q\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~528_combout\);

-- Location: FF_X20_Y2_N14
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: FF_X20_Y2_N23
\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

-- Location: LABCELL_X19_Y2_N6
\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \ROM1|memROM~11_combout\ & ( (!\ROM1|memROM~1_combout\ & (((\RAM1|ram~15_q\)))) # (\ROM1|memROM~1_combout\ & (\RAM1|ram~23_q\ & (!\ROM1|memROM~9_combout\))) ) ) # ( !\ROM1|memROM~11_combout\ & ( (\RAM1|ram~15_q\ & 
-- ((!\ROM1|memROM~9_combout\) # (!\ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111010001000000111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~23_q\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \RAM1|ALT_INV_ram~15_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~527_combout\);

-- Location: LABCELL_X19_Y2_N51
\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \ROM1|memROM~2_combout\ & ( (\RAM1|ram~528_combout\ & !\ROM1|memROM~19_combout\) ) ) # ( !\ROM1|memROM~2_combout\ & ( (\RAM1|ram~527_combout\ & !\ROM1|memROM~19_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~528_combout\,
	datac => \RAM1|ALT_INV_ram~527_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~529_combout\);

-- Location: FF_X19_Y2_N14
\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: FF_X19_Y2_N32
\RAM1|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~95_q\);

-- Location: LABCELL_X19_Y2_N33
\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( \ROM1|memROM~18_combout\ & ( \ROM1|memROM~0_combout\ & ( (\RAM1|ram~31_q\ & ((!\ROM1|memROM~1_combout\) # (\CPU|PC1|dataOUT\(2)))) ) ) ) # ( !\ROM1|memROM~18_combout\ & ( \ROM1|memROM~0_combout\ & ( (\RAM1|ram~31_q\ & 
-- ((!\ROM1|memROM~1_combout\) # (\CPU|PC1|dataOUT\(2)))) ) ) ) # ( \ROM1|memROM~18_combout\ & ( !\ROM1|memROM~0_combout\ & ( (!\CPU|PC1|dataOUT\(2) & ((!\ROM1|memROM~1_combout\ & (\RAM1|ram~31_q\)) # (\ROM1|memROM~1_combout\ & ((\RAM1|ram~95_q\))))) # 
-- (\CPU|PC1|dataOUT\(2) & (\RAM1|ram~31_q\)) ) ) ) # ( !\ROM1|memROM~18_combout\ & ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110001101100110011000100010011001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(2),
	datab => \RAM1|ALT_INV_ram~31_q\,
	datac => \RAM1|ALT_INV_ram~95_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~530_combout\);

-- Location: LABCELL_X19_Y2_N9
\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( \RAM1|ram~530_combout\ & ( (!\ROM1|memROM~20_combout\ & !\ROM1|memROM~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \RAM1|ALT_INV_ram~530_combout\,
	combout => \RAM1|ram~531_combout\);

-- Location: LABCELL_X19_Y2_N21
\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( \RAM1|ram~531_combout\ & ( (!\ROM1|memROM~13_combout\ & ((\ROM1|memROM~17_combout\) # (\RAM1|ram~529_combout\))) ) ) # ( !\RAM1|ram~531_combout\ & ( (\RAM1|ram~529_combout\ & (!\ROM1|memROM~17_combout\ & 
-- !\ROM1|memROM~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~529_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~531_combout\,
	combout => \RAM1|ram~532_combout\);

-- Location: LABCELL_X20_Y3_N57
\Data_IN[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~4_combout\ = ( \CPU|DECODER1|Equal7~0_combout\ & ( (!\CPU|DECODER1|Sinais_Controle~0_combout\ & \CPU|DECODER1|Equal7~1_combout\) ) ) # ( !\CPU|DECODER1|Equal7~0_combout\ & ( !\CPU|DECODER1|Sinais_Controle~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	datad => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	dataf => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	combout => \Data_IN[0]~4_combout\);

-- Location: IOIBUF_X23_Y0_N41
\SWITCH[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(9),
	o => \SWITCH[9]~input_o\);

-- Location: IOIBUF_X19_Y0_N35
\SWITCH[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(8),
	o => \SWITCH[8]~input_o\);

-- Location: LABCELL_X20_Y3_N36
\Data_IN[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~1_combout\ = ( \ROM1|memROM~12_combout\ & ( (\SWITCH[9]~input_o\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~11_combout\)) ) ) # ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~1_combout\ & (\SWITCH[8]~input_o\ & \ROM1|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SWITCH[9]~input_o\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_SWITCH[8]~input_o\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \Data_IN[0]~1_combout\);

-- Location: IOIBUF_X24_Y0_N52
\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

-- Location: LABCELL_X19_Y3_N45
\ANDHEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX0~2_combout\ = ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ANDHEX0~2_combout\);

-- Location: LABCELL_X20_Y3_N0
\Data_IN[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~5_combout\ = ( \ANDHEX0~2_combout\ & ( (!\ROM1|memROM~2_combout\ & (\Data_IN[0]~1_combout\)) # (\ROM1|memROM~2_combout\ & ((\FPGA_RESET~input_o\))) ) ) # ( !\ANDHEX0~2_combout\ & ( (!\ROM1|memROM~2_combout\ & \Data_IN[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ALT_INV_Data_IN[0]~1_combout\,
	datad => \ALT_INV_FPGA_RESET~input_o\,
	dataf => \ALT_INV_ANDHEX0~2_combout\,
	combout => \Data_IN[0]~5_combout\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X14_Y3_N51
\detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \detectorSub0|saidaQ~0_combout\);

-- Location: FF_X14_Y3_N53
\detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub0|saidaQ~q\);

-- Location: LABCELL_X14_Y3_N54
\detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saida~combout\ = LCELL(( !\KEY[0]~input_o\ & ( !\detectorSub0|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \detectorSub0|ALT_INV_saidaQ~q\,
	combout => \detectorSub0|saida~combout\);

-- Location: LABCELL_X19_Y3_N51
\MEMKEY0|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMKEY0|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \MEMKEY0|DOUT~feeder_combout\);

-- Location: MLABCELL_X18_Y3_N45
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \ROM1|memROM~9_combout\ & ( (\ROM1|memROM~12_combout\ & (\ROM1|memROM~11_combout\ & \ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X19_Y3_N36
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \ROM1|memROM~22_combout\ & ( \comb~0_combout\ & ( (\ROM1|memROM~21_combout\ & (\ROM1|memROM~13_combout\ & (\ROM1|memROM~19_combout\ & \ROM1|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~22_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \comb~1_combout\);

-- Location: FF_X19_Y3_N52
\MEMKEY0|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MEMKEY0|DOUT~feeder_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMKEY0|DOUT~q\);

-- Location: LABCELL_X20_Y3_N42
\Data_IN[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~3_combout\ = ( \ROM1|memROM~17_combout\ & ( \MEMKEY0|DOUT~q\ & ( (!\ROM1|memROM~14_combout\ & (\KEY[2]~input_o\)) # (\ROM1|memROM~14_combout\ & ((\KEY[3]~input_o\))) ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \MEMKEY0|DOUT~q\ & ( 
-- (!\ROM1|memROM~14_combout\) # (\KEY[1]~input_o\) ) ) ) # ( \ROM1|memROM~17_combout\ & ( !\MEMKEY0|DOUT~q\ & ( (!\ROM1|memROM~14_combout\ & (\KEY[2]~input_o\)) # (\ROM1|memROM~14_combout\ & ((\KEY[3]~input_o\))) ) ) ) # ( !\ROM1|memROM~17_combout\ & ( 
-- !\MEMKEY0|DOUT~q\ & ( (\ROM1|memROM~14_combout\ & \KEY[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_KEY[3]~input_o\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \MEMKEY0|ALT_INV_DOUT~q\,
	combout => \Data_IN[0]~3_combout\);

-- Location: LABCELL_X20_Y3_N18
\Data_IN[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~2_combout\ = ( \Data_IN[0]~5_combout\ & ( \Data_IN[0]~3_combout\ & ( (\ANDSW07~0_combout\ & !\Data_IN[0]~4_combout\) ) ) ) # ( !\Data_IN[0]~5_combout\ & ( \Data_IN[0]~3_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~13_combout\ & 
-- (\ANDSW07~0_combout\ & !\Data_IN[0]~4_combout\))) ) ) ) # ( \Data_IN[0]~5_combout\ & ( !\Data_IN[0]~3_combout\ & ( (\ANDSW07~0_combout\ & (!\Data_IN[0]~4_combout\ & ((!\ROM1|memROM~13_combout\) # (\ROM1|memROM~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011010000000000000010000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ALT_INV_ANDSW07~0_combout\,
	datad => \ALT_INV_Data_IN[0]~4_combout\,
	datae => \ALT_INV_Data_IN[0]~5_combout\,
	dataf => \ALT_INV_Data_IN[0]~3_combout\,
	combout => \Data_IN[0]~2_combout\);

-- Location: LABCELL_X20_Y1_N6
\CPU|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~0_combout\ = ( \RAM1|ram~532_combout\ & ( \Data_IN[0]~2_combout\ & ( (!\CPU|DECODER1|Equal3~1_combout\) # (\ROM1|memROM~14_combout\) ) ) ) # ( !\RAM1|ram~532_combout\ & ( \Data_IN[0]~2_combout\ & ( (!\CPU|DECODER1|Equal3~1_combout\) 
-- # (\ROM1|memROM~14_combout\) ) ) ) # ( \RAM1|ram~532_combout\ & ( !\Data_IN[0]~2_combout\ & ( (!\CPU|DECODER1|Equal3~1_combout\ & (((\Data_IN[0]~0_combout\) # (\RAM1|dado_out~0_combout\)))) # (\CPU|DECODER1|Equal3~1_combout\ & (\ROM1|memROM~14_combout\)) 
-- ) ) ) # ( !\RAM1|ram~532_combout\ & ( !\Data_IN[0]~2_combout\ & ( (!\CPU|DECODER1|Equal3~1_combout\ & ((\Data_IN[0]~0_combout\))) # (\CPU|DECODER1|Equal3~1_combout\ & (\ROM1|memROM~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	datac => \RAM1|ALT_INV_dado_out~0_combout\,
	datad => \ALT_INV_Data_IN[0]~0_combout\,
	datae => \RAM1|ALT_INV_ram~532_combout\,
	dataf => \ALT_INV_Data_IN[0]~2_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X20_Y1_N36
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[1]~2_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~23_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( !\CPU|MUX1|saida_MUX[1]~2_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~23_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010111111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(8),
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal2~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: FF_X20_Y1_N38
\CPU|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|MUX1|saida_MUX[1]~2_combout\,
	sload => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

-- Location: FF_X19_Y2_N58
\RAM1|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~56_q\);

-- Location: LABCELL_X19_Y2_N54
\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( !\ROM1|memROM~19_combout\ & ( (\RAM1|ram~56_q\ & (!\ROM1|memROM~20_combout\ & (\ROM1|memROM~14_combout\ & !\ROM1|memROM~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~56_q\,
	datab => \ROM1|ALT_INV_memROM~20_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~535_combout\);

-- Location: FF_X18_Y2_N55
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: FF_X18_Y2_N4
\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

-- Location: FF_X19_Y2_N38
\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: LABCELL_X19_Y2_N36
\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( \RAM1|ram~32_q\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~1_combout\ & (\RAM1|ram~16_q\)) # (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~11_combout\))) ) ) ) # ( !\RAM1|ram~32_q\ & ( \ROM1|memROM~12_combout\ & ( 
-- (!\ROM1|memROM~1_combout\ & \RAM1|ram~16_q\) ) ) ) # ( \RAM1|ram~32_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~1_combout\ & (((\RAM1|ram~16_q\)))) # (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~11_combout\ & ((\RAM1|ram~16_q\))) # 
-- (\ROM1|memROM~11_combout\ & (\RAM1|ram~24_q\)))) ) ) ) # ( !\RAM1|ram~32_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~1_combout\ & (((\RAM1|ram~16_q\)))) # (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~11_combout\ & ((\RAM1|ram~16_q\))) # 
-- (\ROM1|memROM~11_combout\ & (\RAM1|ram~24_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011101000011110001110100001100000011000011111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~24_q\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \RAM1|ALT_INV_ram~16_q\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_ram~32_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~533_combout\);

-- Location: FF_X19_Y2_N26
\RAM1|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~96_q\);

-- Location: LABCELL_X19_Y2_N24
\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( \RAM1|ram~96_q\ & ( \ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~20_combout\ & \ROM1|memROM~17_combout\)) ) ) ) # ( \RAM1|ram~96_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~20_combout\ & 
-- \RAM1|ram~533_combout\) ) ) ) # ( !\RAM1|ram~96_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~20_combout\ & \RAM1|ram~533_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~20_combout\,
	datac => \RAM1|ALT_INV_ram~533_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \RAM1|ALT_INV_ram~96_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~534_combout\);

-- Location: LABCELL_X19_Y2_N48
\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( \RAM1|ram~534_combout\ & ( (!\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~2_combout\) # (\RAM1|ram~535_combout\))) ) ) # ( !\RAM1|ram~534_combout\ & ( (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~13_combout\ & 
-- \RAM1|ram~535_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \RAM1|ALT_INV_ram~535_combout\,
	dataf => \RAM1|ALT_INV_ram~534_combout\,
	combout => \RAM1|ram~536_combout\);

-- Location: LABCELL_X20_Y1_N21
\CPU|MUX1|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~2_combout\ = ( \RAM1|ram~536_combout\ & ( \CPU|MUX1|saida_MUX[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \RAM1|ALT_INV_ram~536_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~2_combout\);

-- Location: LABCELL_X20_Y1_N39
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[2]~3_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~23_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( !\CPU|MUX1|saida_MUX[2]~3_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~23_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010111111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(8),
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal2~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[2]~3_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: FF_X20_Y1_N41
\CPU|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|MUX1|saida_MUX[2]~3_combout\,
	sload => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

-- Location: FF_X18_Y2_N25
\RAM1|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~57_q\);

-- Location: FF_X19_Y1_N59
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: LABCELL_X19_Y1_N27
\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~20_combout\ & ( (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~2_combout\ & ((\RAM1|ram~25_q\))) # (\ROM1|memROM~2_combout\ & (\RAM1|ram~57_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~57_q\,
	datab => \RAM1|ALT_INV_ram~25_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~539_combout\);

-- Location: FF_X18_Y1_N16
\RAM1|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~97_q\);

-- Location: FF_X18_Y1_N29
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: LABCELL_X17_Y1_N3
\RAM1|ram~33feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~33feeder_combout\ = ( \CPU|REG1|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~33feeder_combout\);

-- Location: FF_X17_Y1_N4
\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~33feeder_combout\,
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

-- Location: MLABCELL_X18_Y1_N9
\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( \CPU|PC1|dataOUT\(2) & ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~1_combout\ & (\RAM1|ram~17_q\)) # (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~12_combout\ & (\RAM1|ram~17_q\)) # (\ROM1|memROM~12_combout\ & 
-- ((\RAM1|ram~33_q\))))) ) ) ) # ( !\CPU|PC1|dataOUT\(2) & ( \ROM1|memROM~0_combout\ & ( (\RAM1|ram~17_q\ & !\ROM1|memROM~1_combout\) ) ) ) # ( \CPU|PC1|dataOUT\(2) & ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~1_combout\ & (\RAM1|ram~17_q\)) # 
-- (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~12_combout\ & (\RAM1|ram~17_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~33_q\))))) ) ) ) # ( !\CPU|PC1|dataOUT\(2) & ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~1_combout\ & (\RAM1|ram~17_q\)) # 
-- (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~12_combout\ & (\RAM1|ram~17_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~33_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010101010101001101010000010100000101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~17_q\,
	datab => \RAM1|ALT_INV_ram~33_q\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \CPU|PC1|ALT_INV_dataOUT\(2),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~537_combout\);

-- Location: MLABCELL_X18_Y1_N21
\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~20_combout\ & ( (\RAM1|ram~537_combout\ & !\ROM1|memROM~19_combout\) ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~20_combout\ & ( (!\ROM1|memROM~19_combout\ & 
-- (((\RAM1|ram~537_combout\)))) # (\ROM1|memROM~19_combout\ & (\RAM1|ram~97_q\ & ((\ROM1|memROM~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~97_q\,
	datab => \RAM1|ALT_INV_ram~537_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~538_combout\);

-- Location: LABCELL_X19_Y1_N9
\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( \RAM1|ram~538_combout\ & ( (!\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~14_combout\) # (\RAM1|ram~539_combout\))) ) ) # ( !\RAM1|ram~538_combout\ & ( (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~14_combout\ & 
-- \RAM1|ram~539_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \RAM1|ALT_INV_ram~539_combout\,
	dataf => \RAM1|ALT_INV_ram~538_combout\,
	combout => \RAM1|ram~540_combout\);

-- Location: LABCELL_X19_Y1_N12
\CPU|MUX1|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~3_combout\ = ( \RAM1|ram~540_combout\ & ( ((\ROM1|memROM~2_combout\ & \CPU|DECODER1|Equal3~1_combout\)) # (\CPU|MUX1|saida_MUX[1]~1_combout\) ) ) # ( !\RAM1|ram~540_combout\ & ( (\ROM1|memROM~2_combout\ & 
-- \CPU|DECODER1|Equal3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	dataf => \RAM1|ALT_INV_ram~540_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~3_combout\);

-- Location: LABCELL_X20_Y1_N42
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[3]~4_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~23_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( !\CPU|MUX1|saida_MUX[3]~4_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~23_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010111111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(8),
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal2~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: FF_X20_Y1_N44
\CPU|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|MUX1|saida_MUX[3]~4_combout\,
	sload => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

-- Location: FF_X19_Y2_N2
\RAM1|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~98_q\);

-- Location: FF_X19_Y3_N5
\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: FF_X19_Y3_N41
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: FF_X20_Y3_N52
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: LABCELL_X19_Y3_N9
\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( \ROM1|memROM~17_combout\ & ( (\RAM1|ram~34_q\ & !\ROM1|memROM~14_combout\) ) ) # ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~14_combout\ & (\RAM1|ram~18_q\)) # (\ROM1|memROM~14_combout\ & ((\RAM1|ram~26_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~34_q\,
	datab => \RAM1|ALT_INV_ram~18_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \RAM1|ALT_INV_ram~26_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~541_combout\);

-- Location: MLABCELL_X18_Y2_N27
\RAM1|ram~58feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~58feeder_combout\ = ( \CPU|REG1|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~58feeder_combout\);

-- Location: FF_X18_Y2_N28
\RAM1|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~58feeder_combout\,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~58_q\);

-- Location: LABCELL_X19_Y2_N0
\RAM1|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~573_combout\ = ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~2_combout\ & (((\RAM1|ram~541_combout\)))) # (\ROM1|memROM~2_combout\ & (\ROM1|memROM~14_combout\ & (\RAM1|ram~58_q\))))) ) ) # ( 
-- \ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~19_combout\ & (((\RAM1|ram~541_combout\)))) # (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~14_combout\ & (\RAM1|ram~98_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000100000000000000000000100011001101000000001100110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \RAM1|ALT_INV_ram~98_q\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \RAM1|ALT_INV_ram~541_combout\,
	datag => \RAM1|ALT_INV_ram~58_q\,
	combout => \RAM1|ram~573_combout\);

-- Location: LABCELL_X20_Y2_N51
\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( \RAM1|ram~573_combout\ & ( (!\ROM1|memROM~13_combout\ & !\ROM1|memROM~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \RAM1|ALT_INV_ram~573_combout\,
	combout => \RAM1|ram~542_combout\);

-- Location: LABCELL_X20_Y2_N24
\CPU|MUX1|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~4_combout\ = ( \CPU|DECODER1|Equal3~1_combout\ & ( ((\CPU|MUX1|saida_MUX[1]~1_combout\ & \RAM1|ram~542_combout\)) # (\ROM1|memROM~19_combout\) ) ) # ( !\CPU|DECODER1|Equal3~1_combout\ & ( (\CPU|MUX1|saida_MUX[1]~1_combout\ & 
-- \RAM1|ram~542_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \RAM1|ALT_INV_ram~542_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~4_combout\);

-- Location: LABCELL_X20_Y1_N45
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[4]~5_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~23_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( !\CPU|MUX1|saida_MUX[4]~5_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~23_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010111111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(8),
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal2~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[4]~5_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: FF_X20_Y1_N47
\CPU|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|MUX1|saida_MUX[4]~5_combout\,
	sload => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(4));

-- Location: FF_X19_Y1_N50
\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

-- Location: FF_X18_Y3_N20
\RAM1|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~99_q\);

-- Location: LABCELL_X19_Y1_N21
\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( \ROM1|memROM~19_combout\ & ( !\ROM1|memROM~20_combout\ & ( (\RAM1|ram~99_q\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~14_combout\)) ) ) ) # ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~20_combout\ & ( (\RAM1|ram~35_q\ & 
-- (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~35_q\,
	datab => \RAM1|ALT_INV_ram~99_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~543_combout\);

-- Location: FF_X19_Y1_N2
\RAM1|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~59_q\);

-- Location: FF_X18_Y1_N20
\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: FF_X18_Y1_N7
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: MLABCELL_X18_Y1_N30
\RAM1|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~569_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~20_combout\ & (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~14_combout\ & (\RAM1|ram~19_q\)) # (\ROM1|memROM~14_combout\ & ((\RAM1|ram~27_q\)))))) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- (!\ROM1|memROM~20_combout\ & (\ROM1|memROM~14_combout\ & (\RAM1|ram~59_q\ & ((!\ROM1|memROM~19_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100000101010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \RAM1|ALT_INV_ram~59_q\,
	datad => \RAM1|ALT_INV_ram~27_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	datag => \RAM1|ALT_INV_ram~19_q\,
	combout => \RAM1|ram~569_combout\);

-- Location: LABCELL_X19_Y1_N0
\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = ( \RAM1|ram~569_combout\ & ( (!\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~17_combout\) # (\RAM1|ram~543_combout\))) ) ) # ( !\RAM1|ram~569_combout\ & ( (!\ROM1|memROM~13_combout\ & (\RAM1|ram~543_combout\ & 
-- \ROM1|memROM~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \RAM1|ALT_INV_ram~543_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \RAM1|ALT_INV_ram~569_combout\,
	combout => \RAM1|ram~544_combout\);

-- Location: LABCELL_X20_Y1_N27
\CPU|MUX1|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~5_combout\ = ( \RAM1|ram~544_combout\ & ( \CPU|MUX1|saida_MUX[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \RAM1|ALT_INV_ram~544_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~5_combout\);

-- Location: LABCELL_X20_Y1_N48
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[5]~6_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~23_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( !\CPU|MUX1|saida_MUX[5]~6_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~23_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010111111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(8),
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal2~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[5]~6_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: FF_X20_Y1_N50
\CPU|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|MUX1|saida_MUX[5]~6_combout\,
	sload => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(5));

-- Location: FF_X19_Y1_N20
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: LABCELL_X19_Y1_N39
\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = ( !\ROM1|memROM~20_combout\ & ( (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~19_combout\ & (\RAM1|ram~28_q\ & !\ROM1|memROM~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \RAM1|ALT_INV_ram~28_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~547_combout\);

-- Location: FF_X19_Y1_N32
\RAM1|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~60_q\);

-- Location: LABCELL_X19_Y1_N36
\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = ( !\ROM1|memROM~20_combout\ & ( (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~19_combout\ & (\RAM1|ram~60_q\ & !\ROM1|memROM~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \RAM1|ALT_INV_ram~60_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~548_combout\);

-- Location: FF_X18_Y1_N32
\RAM1|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~100_q\);

-- Location: FF_X19_Y1_N26
\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: FF_X18_Y1_N50
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: MLABCELL_X18_Y1_N48
\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = ( \RAM1|ram~20_q\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~17_combout\) # (\RAM1|ram~36_q\) ) ) ) # ( !\RAM1|ram~20_q\ & ( !\ROM1|memROM~13_combout\ & ( (\RAM1|ram~36_q\ & \ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~36_q\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \RAM1|ALT_INV_ram~20_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~545_combout\);

-- Location: MLABCELL_X18_Y1_N24
\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = ( !\ROM1|memROM~20_combout\ & ( \RAM1|ram~545_combout\ & ( (!\ROM1|memROM~19_combout\) # ((\ROM1|memROM~17_combout\ & (!\ROM1|memROM~13_combout\ & \RAM1|ram~100_q\))) ) ) ) # ( !\ROM1|memROM~20_combout\ & ( !\RAM1|ram~545_combout\ 
-- & ( (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~19_combout\ & \RAM1|ram~100_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000011110000111101000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \RAM1|ALT_INV_ram~100_q\,
	datae => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \RAM1|ALT_INV_ram~545_combout\,
	combout => \RAM1|ram~546_combout\);

-- Location: LABCELL_X19_Y1_N30
\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = ( \RAM1|ram~546_combout\ & ( (!\ROM1|memROM~2_combout\ & (((!\ROM1|memROM~14_combout\)) # (\RAM1|ram~547_combout\))) # (\ROM1|memROM~2_combout\ & (((\ROM1|memROM~14_combout\ & \RAM1|ram~548_combout\)))) ) ) # ( 
-- !\RAM1|ram~546_combout\ & ( (\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~2_combout\ & (\RAM1|ram~547_combout\)) # (\ROM1|memROM~2_combout\ & ((\RAM1|ram~548_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011110100010101001111010001010100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \RAM1|ALT_INV_ram~547_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \RAM1|ALT_INV_ram~548_combout\,
	dataf => \RAM1|ALT_INV_ram~546_combout\,
	combout => \RAM1|ram~549_combout\);

-- Location: LABCELL_X20_Y1_N18
\CPU|MUX1|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~6_combout\ = ( \RAM1|ram~549_combout\ & ( \CPU|MUX1|saida_MUX[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \RAM1|ALT_INV_ram~549_combout\,
	combout => \CPU|MUX1|saida_MUX[5]~6_combout\);

-- Location: LABCELL_X20_Y1_N51
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[6]~7_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~23_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( !\CPU|MUX1|saida_MUX[6]~7_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~23_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010111111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(8),
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal2~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~7_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: LABCELL_X20_Y1_N24
\CPU|REGIGUAL|DOUT~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~7_combout\ = ( \CPU|ULA1|Add0~21_sumout\ & ( !\CPU|ULA1|saida[0]~0_combout\ ) ) # ( !\CPU|ULA1|Add0~21_sumout\ & ( (!\CPU|ULA1|saida[0]~0_combout\ & \CPU|ULA1|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \CPU|REGIGUAL|DOUT~7_combout\);

-- Location: LABCELL_X21_Y1_N15
\CPU|DECODER1|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal7~2_combout\ = ( \CPU|DECODER1|Equal7~0_combout\ & ( !\CPU|DECODER1|Equal7~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	dataf => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	combout => \CPU|DECODER1|Equal7~2_combout\);

-- Location: LABCELL_X21_Y1_N45
\CPU|REGIGUAL|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~0_combout\ = ( \CPU|REGIGUAL|DOUT~q\ & ( !\CPU|DECODER1|Equal7~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|REGIGUAL|ALT_INV_DOUT~q\,
	dataf => \CPU|DECODER1|ALT_INV_Equal7~2_combout\,
	combout => \CPU|REGIGUAL|DOUT~0_combout\);

-- Location: FF_X20_Y1_N56
\CPU|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|MUX1|saida_MUX[7]~8_combout\,
	sload => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(7));

-- Location: FF_X18_Y1_N41
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: MLABCELL_X18_Y1_N39
\RAM1|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~552_combout\ = ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~20_combout\ & (!\ROM1|memROM~13_combout\ & \RAM1|ram~22_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~20_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \RAM1|ALT_INV_ram~22_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~552_combout\);

-- Location: FF_X19_Y2_N34
\RAM1|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~102_q\);

-- Location: FF_X19_Y2_N44
\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: LABCELL_X19_Y2_N42
\RAM1|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~554_combout\ = ( \RAM1|ram~38_q\ & ( \ROM1|memROM~19_combout\ & ( (\RAM1|ram~102_q\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~13_combout\ & !\ROM1|memROM~20_combout\))) ) ) ) # ( !\RAM1|ram~38_q\ & ( \ROM1|memROM~19_combout\ & ( 
-- (\RAM1|ram~102_q\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~13_combout\ & !\ROM1|memROM~20_combout\))) ) ) ) # ( \RAM1|ram~38_q\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~13_combout\ & !\ROM1|memROM~20_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~102_q\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	datae => \RAM1|ALT_INV_ram~38_q\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~554_combout\);

-- Location: MLABCELL_X18_Y2_N33
\RAM1|ram~62feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~62feeder_combout\ = ( \CPU|REG1|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~62feeder_combout\);

-- Location: FF_X18_Y2_N34
\RAM1|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~62feeder_combout\,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~62_q\);

-- Location: FF_X18_Y3_N32
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: MLABCELL_X18_Y3_N54
\RAM1|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~553_combout\ = ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~20_combout\ & ( (!\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~2_combout\ & ((\RAM1|ram~30_q\))) # (\ROM1|memROM~2_combout\ & (\RAM1|ram~62_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~62_q\,
	datab => \RAM1|ALT_INV_ram~30_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~553_combout\);

-- Location: MLABCELL_X18_Y1_N12
\RAM1|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~555_combout\ = ( \RAM1|ram~554_combout\ & ( \RAM1|ram~553_combout\ & ( (!\ROM1|memROM~17_combout\ & ((\RAM1|ram~552_combout\) # (\ROM1|memROM~14_combout\))) # (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~14_combout\)) ) ) ) # ( 
-- !\RAM1|ram~554_combout\ & ( \RAM1|ram~553_combout\ & ( (!\ROM1|memROM~17_combout\ & ((\RAM1|ram~552_combout\) # (\ROM1|memROM~14_combout\))) ) ) ) # ( \RAM1|ram~554_combout\ & ( !\RAM1|ram~553_combout\ & ( (!\ROM1|memROM~14_combout\ & 
-- ((\RAM1|ram~552_combout\) # (\ROM1|memROM~17_combout\))) ) ) ) # ( !\RAM1|ram~554_combout\ & ( !\RAM1|ram~553_combout\ & ( (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~14_combout\ & \RAM1|ram~552_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000010100001111000000001010101010100101101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \RAM1|ALT_INV_ram~552_combout\,
	datae => \RAM1|ALT_INV_ram~554_combout\,
	dataf => \RAM1|ALT_INV_ram~553_combout\,
	combout => \RAM1|ram~555_combout\);

-- Location: LABCELL_X19_Y1_N33
\CPU|MUX1|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~8_combout\ = (\CPU|MUX1|saida_MUX[1]~1_combout\ & \RAM1|ram~555_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datad => \RAM1|ALT_INV_ram~555_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~8_combout\);

-- Location: LABCELL_X20_Y1_N54
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[7]~8_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~23_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010111111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(8),
	datab => \ROM1|ALT_INV_memROM~23_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal2~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[7]~8_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X19_Y1_N6
\CPU|MUX1|saida_MUX[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~11_combout\ = ( \CPU|DECODER1|Equal3~1_combout\ & ( \ROM1|memROM~19_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~11_combout\);

-- Location: LABCELL_X19_Y1_N54
\CPU|REGIGUAL|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~4_combout\ = ( \CPU|MUX1|saida_MUX[1]~1_combout\ & ( (\CPU|ULA1|saida[0]~0_combout\ & (((\RAM1|ram~542_combout\) # (\CPU|MUX1|saida_MUX[3]~11_combout\)) # (\RAM1|ram~536_combout\))) ) ) # ( !\CPU|MUX1|saida_MUX[1]~1_combout\ & ( 
-- (\CPU|MUX1|saida_MUX[3]~11_combout\ & \CPU|ULA1|saida[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~536_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[3]~11_combout\,
	datac => \RAM1|ALT_INV_ram~542_combout\,
	datad => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|REGIGUAL|DOUT~4_combout\);

-- Location: MLABCELL_X18_Y1_N36
\CPU|MUX1|saida_MUX[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~10_combout\ = (\ROM1|memROM~2_combout\ & \CPU|DECODER1|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~10_combout\);

-- Location: MLABCELL_X18_Y1_N57
\CPU|REGIGUAL|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~3_combout\ = ( !\CPU|ULA1|saida[0]~0_combout\ & ( \CPU|MUX1|saida_MUX[2]~10_combout\ & ( \CPU|DECODER1|Equal7~2_combout\ ) ) ) # ( \CPU|ULA1|saida[0]~0_combout\ & ( !\CPU|MUX1|saida_MUX[2]~10_combout\ & ( 
-- (\CPU|DECODER1|Equal7~2_combout\ & ((!\CPU|MUX1|saida_MUX[1]~1_combout\) # (!\RAM1|ram~540_combout\))) ) ) ) # ( !\CPU|ULA1|saida[0]~0_combout\ & ( !\CPU|MUX1|saida_MUX[2]~10_combout\ & ( \CPU|DECODER1|Equal7~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000101000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|DECODER1|ALT_INV_Equal7~2_combout\,
	datad => \RAM1|ALT_INV_ram~540_combout\,
	datae => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[2]~10_combout\,
	combout => \CPU|REGIGUAL|DOUT~3_combout\);

-- Location: LABCELL_X19_Y1_N45
\CPU|REGIGUAL|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~1_combout\ = ( \RAM1|ram~549_combout\ & ( (\CPU|ULA1|saida[0]~0_combout\ & \CPU|MUX1|saida_MUX[1]~1_combout\) ) ) # ( !\RAM1|ram~549_combout\ & ( (\CPU|ULA1|saida[0]~0_combout\ & (\CPU|MUX1|saida_MUX[1]~1_combout\ & 
-- \RAM1|ram~555_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datad => \RAM1|ALT_INV_ram~555_combout\,
	dataf => \RAM1|ALT_INV_ram~549_combout\,
	combout => \CPU|REGIGUAL|DOUT~1_combout\);

-- Location: LABCELL_X19_Y1_N3
\CPU|MUX1|saida_MUX[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~9_combout\ = (\CPU|DECODER1|Equal3~1_combout\ & \ROM1|memROM~21_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~9_combout\);

-- Location: LABCELL_X19_Y1_N42
\CPU|REGIGUAL|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~2_combout\ = ( \RAM1|ram~551_combout\ & ( (\CPU|ULA1|saida[0]~0_combout\ & ((\CPU|MUX1|saida_MUX[6]~9_combout\) # (\CPU|MUX1|saida_MUX[1]~1_combout\))) ) ) # ( !\RAM1|ram~551_combout\ & ( (\CPU|ULA1|saida[0]~0_combout\ & 
-- (((\CPU|MUX1|saida_MUX[1]~1_combout\ & \RAM1|ram~544_combout\)) # (\CPU|MUX1|saida_MUX[6]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011000000010011001100010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datab => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datac => \RAM1|ALT_INV_ram~544_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~9_combout\,
	dataf => \RAM1|ALT_INV_ram~551_combout\,
	combout => \CPU|REGIGUAL|DOUT~2_combout\);

-- Location: LABCELL_X19_Y1_N48
\CPU|REGIGUAL|DOUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~5_combout\ = ( !\CPU|REGIGUAL|DOUT~1_combout\ & ( !\CPU|REGIGUAL|DOUT~2_combout\ & ( (!\CPU|REGIGUAL|DOUT~4_combout\ & (\CPU|REGIGUAL|DOUT~3_combout\ & ((!\CPU|MUX1|saida_MUX[0]~0_combout\) # (!\CPU|ULA1|saida[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|REGIGUAL|ALT_INV_DOUT~4_combout\,
	datad => \CPU|REGIGUAL|ALT_INV_DOUT~3_combout\,
	datae => \CPU|REGIGUAL|ALT_INV_DOUT~1_combout\,
	dataf => \CPU|REGIGUAL|ALT_INV_DOUT~2_combout\,
	combout => \CPU|REGIGUAL|DOUT~5_combout\);

-- Location: LABCELL_X20_Y1_N12
\CPU|REGIGUAL|DOUT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~6_combout\ = ( \CPU|ULA1|Add0~5_sumout\ & ( \CPU|ULA1|Add0~9_sumout\ & ( (\CPU|ULA1|saida[0]~0_combout\ & \CPU|REGIGUAL|DOUT~5_combout\) ) ) ) # ( !\CPU|ULA1|Add0~5_sumout\ & ( \CPU|ULA1|Add0~9_sumout\ & ( (\CPU|ULA1|saida[0]~0_combout\ 
-- & \CPU|REGIGUAL|DOUT~5_combout\) ) ) ) # ( \CPU|ULA1|Add0~5_sumout\ & ( !\CPU|ULA1|Add0~9_sumout\ & ( (\CPU|ULA1|saida[0]~0_combout\ & \CPU|REGIGUAL|DOUT~5_combout\) ) ) ) # ( !\CPU|ULA1|Add0~5_sumout\ & ( !\CPU|ULA1|Add0~9_sumout\ & ( 
-- (\CPU|REGIGUAL|DOUT~5_combout\ & (((!\CPU|ULA1|Add0~1_sumout\ & !\CPU|ULA1|Add0~13_sumout\)) # (\CPU|ULA1|saida[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datab => \CPU|REGIGUAL|ALT_INV_DOUT~5_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	combout => \CPU|REGIGUAL|DOUT~6_combout\);

-- Location: LABCELL_X20_Y1_N0
\CPU|REGIGUAL|DOUT~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~8_combout\ = ( \CPU|ULA1|Add0~29_sumout\ & ( \CPU|REGIGUAL|DOUT~6_combout\ & ( ((\CPU|ULA1|saida[0]~0_combout\ & !\CPU|REGIGUAL|DOUT~7_combout\)) # (\CPU|REGIGUAL|DOUT~0_combout\) ) ) ) # ( !\CPU|ULA1|Add0~29_sumout\ & ( 
-- \CPU|REGIGUAL|DOUT~6_combout\ & ( ((!\CPU|REGIGUAL|DOUT~7_combout\ & ((!\CPU|ULA1|Add0~25_sumout\) # (\CPU|ULA1|saida[0]~0_combout\)))) # (\CPU|REGIGUAL|DOUT~0_combout\) ) ) ) # ( \CPU|ULA1|Add0~29_sumout\ & ( !\CPU|REGIGUAL|DOUT~6_combout\ & ( 
-- \CPU|REGIGUAL|DOUT~0_combout\ ) ) ) # ( !\CPU|ULA1|Add0~29_sumout\ & ( !\CPU|REGIGUAL|DOUT~6_combout\ & ( \CPU|REGIGUAL|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111110110000111111110011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	datab => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|REGIGUAL|ALT_INV_DOUT~7_combout\,
	datad => \CPU|REGIGUAL|ALT_INV_DOUT~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	dataf => \CPU|REGIGUAL|ALT_INV_DOUT~6_combout\,
	combout => \CPU|REGIGUAL|DOUT~8_combout\);

-- Location: FF_X20_Y1_N2
\CPU|REGIGUAL|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|REGIGUAL|DOUT~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGIGUAL|DOUT~q\);

-- Location: LABCELL_X21_Y3_N3
\CPU|MUXPC|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|Equal1~0_combout\ = ( \CPU|DECODER1|Equal3~0_combout\ & ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & ((\CPU|DECODER1|Equal7~0_combout\))) # (\ROM1|memROM~16_combout\ & (\CPU|REGIGUAL|DOUT~q\)) ) ) ) # ( 
-- !\CPU|DECODER1|Equal3~0_combout\ & ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & \CPU|DECODER1|Equal7~0_combout\) ) ) ) # ( \CPU|DECODER1|Equal3~0_combout\ & ( !\ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & 
-- !\CPU|DECODER1|Equal7~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000001100000011000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGIGUAL|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	datae => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \CPU|MUXPC|Equal1~0_combout\);

-- Location: FF_X17_Y3_N52
\CPU|REGRET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|SOMPC|Add0~29_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(7));

-- Location: LABCELL_X21_Y3_N45
\CPU|MUXPC|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[7]~7_combout\ = ( \ROM1|memROM~20_combout\ & ( \CPU|PC1|dataOUT[2]~0_combout\ & ( (\CPU|REGRET|DOUT\(7)) # (\CPU|MUXPC|Equal1~0_combout\) ) ) ) # ( !\ROM1|memROM~20_combout\ & ( \CPU|PC1|dataOUT[2]~0_combout\ & ( 
-- (!\CPU|MUXPC|Equal1~0_combout\ & \CPU|REGRET|DOUT\(7)) ) ) ) # ( \ROM1|memROM~20_combout\ & ( !\CPU|PC1|dataOUT[2]~0_combout\ & ( \CPU|SOMPC|Add0~29_sumout\ ) ) ) # ( !\ROM1|memROM~20_combout\ & ( !\CPU|PC1|dataOUT[2]~0_combout\ & ( 
-- \CPU|SOMPC|Add0~29_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|REGRET|ALT_INV_DOUT\(7),
	datad => \CPU|SOMPC|ALT_INV_Add0~29_sumout\,
	datae => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	combout => \CPU|MUXPC|saida_MUX[7]~7_combout\);

-- Location: FF_X21_Y3_N47
\CPU|PC1|dataOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(7));

-- Location: LABCELL_X21_Y3_N36
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU|PC1|dataOUT\(8) & ( (!\CPU|PC1|dataOUT\(7) & (!\CPU|PC1|dataOUT[6]~DUPLICATE_q\ & !\CPU|PC1|dataOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC1|ALT_INV_dataOUT\(7),
	datac => \CPU|PC1|ALT_INV_dataOUT[6]~DUPLICATE_q\,
	datad => \CPU|PC1|ALT_INV_dataOUT\(4),
	dataf => \CPU|PC1|ALT_INV_dataOUT\(8),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X19_Y3_N57
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X20_Y2_N3
\ANDHEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX1~0_combout\ = ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~1_combout\ & \ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ANDHEX1~0_combout\);

-- Location: LABCELL_X20_Y2_N18
\ANDHEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX0~0_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~9_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~8_combout\ & !\CPU|PC1|dataOUT[3]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU|PC1|ALT_INV_dataOUT[3]~DUPLICATE_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ANDHEX0~0_combout\);

-- Location: LABCELL_X20_Y2_N27
\ANDHEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX0~1_combout\ = ( \ANDHEX0~0_combout\ & ( (\CPU|DECODER1|Equal4~0_combout\ & (!\ROM1|memROM~2_combout\ & \CPU|DECODER1|Equal3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER1|ALT_INV_Equal4~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_ANDHEX0~0_combout\,
	combout => \ANDHEX0~1_combout\);

-- Location: LABCELL_X20_Y2_N0
\REGLED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLED8|DOUT~0_combout\ = ( \ANDHEX0~1_combout\ & ( (!\ROM1|memROM~13_combout\ & ((!\ANDHEX1~0_combout\ & ((\REGLED8|DOUT~q\))) # (\ANDHEX1~0_combout\ & (\CPU|REG1|DOUT\(0))))) # (\ROM1|memROM~13_combout\ & (((\REGLED8|DOUT~q\)))) ) ) # ( 
-- !\ANDHEX0~1_combout\ & ( \REGLED8|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ALT_INV_ANDHEX1~0_combout\,
	datac => \CPU|REG1|ALT_INV_DOUT\(0),
	datad => \REGLED8|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_ANDHEX0~1_combout\,
	combout => \REGLED8|DOUT~0_combout\);

-- Location: FF_X20_Y2_N1
\REGLED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGLED8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED8|DOUT~q\);

-- Location: LABCELL_X20_Y2_N54
\ANDHEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX2~0_combout\ = ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~1_combout\ & !\ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ANDHEX2~0_combout\);

-- Location: LABCELL_X20_Y2_N48
\REGLED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLED9|DOUT~0_combout\ = ( \ANDHEX0~1_combout\ & ( (!\ROM1|memROM~13_combout\ & ((!\ANDHEX2~0_combout\ & ((\REGLED9|DOUT~q\))) # (\ANDHEX2~0_combout\ & (\CPU|REG1|DOUT\(0))))) # (\ROM1|memROM~13_combout\ & (((\REGLED9|DOUT~q\)))) ) ) # ( 
-- !\ANDHEX0~1_combout\ & ( \REGLED9|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000010111101110000001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \CPU|REG1|ALT_INV_DOUT\(0),
	datac => \ALT_INV_ANDHEX2~0_combout\,
	datad => \REGLED9|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_ANDHEX0~1_combout\,
	combout => \REGLED9|DOUT~0_combout\);

-- Location: FF_X20_Y2_N49
\REGLED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REGLED9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED9|DOUT~q\);

-- Location: IOIBUF_X8_Y45_N41
\SWITCH[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(1),
	o => \SWITCH[1]~input_o\);

-- Location: IOIBUF_X54_Y15_N4
\SWITCH[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(2),
	o => \SWITCH[2]~input_o\);

-- Location: IOIBUF_X42_Y45_N35
\SWITCH[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(3),
	o => \SWITCH[3]~input_o\);

-- Location: IOIBUF_X8_Y45_N58
\SWITCH[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(4),
	o => \SWITCH[4]~input_o\);

-- Location: IOIBUF_X46_Y45_N41
\SWITCH[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(5),
	o => \SWITCH[5]~input_o\);

-- Location: IOIBUF_X54_Y18_N95
\SWITCH[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(6),
	o => \SWITCH[6]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\SWITCH[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(7),
	o => \SWITCH[7]~input_o\);

-- Location: LABCELL_X36_Y12_N0
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


