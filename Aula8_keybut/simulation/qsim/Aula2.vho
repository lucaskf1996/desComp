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

-- DATE "09/21/2021 15:43:19"

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
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LED8~output_o\ : std_logic;
SIGNAL \LED9~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \DEBUGROM[0]~output_o\ : std_logic;
SIGNAL \DEBUGROM[1]~output_o\ : std_logic;
SIGNAL \DEBUGROM[2]~output_o\ : std_logic;
SIGNAL \DEBUGROM[3]~output_o\ : std_logic;
SIGNAL \DEBUGROM[4]~output_o\ : std_logic;
SIGNAL \DEBUGROM[5]~output_o\ : std_logic;
SIGNAL \DEBUGROM[6]~output_o\ : std_logic;
SIGNAL \DEBUGROM[7]~output_o\ : std_logic;
SIGNAL \DEBUGROM[8]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal3~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal7~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal2~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~2\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~6\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~10\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~14\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~18\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~22\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~26\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~29_sumout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal4~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal8~0_combout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~30\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~22_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal7~1_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal3~1_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Sinais_Controle~0_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ram~562_combout\ : std_logic;
SIGNAL \RAM1|ram~563_combout\ : std_logic;
SIGNAL \RAM1|ram~101_q\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \RAM1|ram~564_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~556_combout\ : std_logic;
SIGNAL \RAM1|ram~557_combout\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~558_combout\ : std_logic;
SIGNAL \RAM1|ram~559_combout\ : std_logic;
SIGNAL \RAM1|ram~61_q\ : std_logic;
SIGNAL \RAM1|ram~550_combout\ : std_logic;
SIGNAL \RAM1|ram~560_combout\ : std_logic;
SIGNAL \RAM1|ram~561_combout\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~565_combout\ : std_logic;
SIGNAL \RAM1|ram~551_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \RAM1|ram~55_q\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~95_q\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|dado_out~0_combout\ : std_logic;
SIGNAL \SWITCH[0]~input_o\ : std_logic;
SIGNAL \ANDSW07~0_combout\ : std_logic;
SIGNAL \ANDSW07~1_combout\ : std_logic;
SIGNAL \Data_IN[0]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \ANDHEX3~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \MEMKEY0|DOUT~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~3_combout\ : std_logic;
SIGNAL \Data_IN[0]~4_combout\ : std_logic;
SIGNAL \SWITCH[8]~input_o\ : std_logic;
SIGNAL \SWITCH[9]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~1_combout\ : std_logic;
SIGNAL \ANDHEX0~2_combout\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
SIGNAL \Data_IN[0]~5_combout\ : std_logic;
SIGNAL \Data_IN[0]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \RAM1|ram~96_q\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|ram~56_q\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \RAM1|ram~97_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~57_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \RAM1|ram~98_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~58_q\ : std_logic;
SIGNAL \RAM1|ram~573_combout\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~59_q\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~569_combout\ : std_logic;
SIGNAL \RAM1|ram~99_q\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \RAM1|ram~100_q\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~545_combout\ : std_logic;
SIGNAL \RAM1|ram~546_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \RAM1|ram~60_q\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~552_combout\ : std_logic;
SIGNAL \RAM1|ram~62_q\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~553_combout\ : std_logic;
SIGNAL \RAM1|ram~102_q\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~554_combout\ : std_logic;
SIGNAL \RAM1|ram~555_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal7~2_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~9_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~10_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~11_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~4_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~5_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~6_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~7_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~8_combout\ : std_logic;
SIGNAL \CPU|REGIGUAL|DOUT~q\ : std_logic;
SIGNAL \CPU|MUXPC|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \CPU|PC1|dataOUT[2]~0_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal2~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ANDHEX0~0_combout\ : std_logic;
SIGNAL \ANDHEX0~1_combout\ : std_logic;
SIGNAL \ANDHEX1~0_combout\ : std_logic;
SIGNAL \REGLED8|DOUT~0_combout\ : std_logic;
SIGNAL \REGLED8|DOUT~q\ : std_logic;
SIGNAL \ANDHEX2~0_combout\ : std_logic;
SIGNAL \REGLED9|DOUT~0_combout\ : std_logic;
SIGNAL \REGLED9|DOUT~q\ : std_logic;
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC1|dataOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REGRET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|DECODER1|Sinais_Controle\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[0]~input_o\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \ALT_INV_ANDHEX3~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_Data_IN[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~3_combout\ : std_logic;
SIGNAL \detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal2~1_combout\ : std_logic;
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
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_FPGA_RESET~input_o\ <= NOT \FPGA_RESET~input_o\;
\ALT_INV_SWITCH[9]~input_o\ <= NOT \SWITCH[9]~input_o\;
\ALT_INV_SWITCH[8]~input_o\ <= NOT \SWITCH[8]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SWITCH[0]~input_o\ <= NOT \SWITCH[0]~input_o\;
\CPU|REG1|ALT_INV_DOUT\(2) <= NOT \CPU|REG1|DOUT\(2);
\CPU|REG1|ALT_INV_DOUT\(1) <= NOT \CPU|REG1|DOUT\(1);
\CPU|REG1|ALT_INV_DOUT\(0) <= NOT \CPU|REG1|DOUT\(0);
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
\ALT_INV_ANDHEX3~0_combout\ <= NOT \ANDHEX3~0_combout\;
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
\ALT_INV_Data_IN[0]~5_combout\ <= NOT \Data_IN[0]~5_combout\;
\ALT_INV_Data_IN[0]~4_combout\ <= NOT \Data_IN[0]~4_combout\;
\ALT_INV_Data_IN[0]~3_combout\ <= NOT \Data_IN[0]~3_combout\;
\detectorSub0|ALT_INV_saidaQ~q\ <= NOT \detectorSub0|saidaQ~q\;
\ROM1|ALT_INV_memROM~22_combout\ <= NOT \ROM1|memROM~22_combout\;
\CPU|ULA1|ALT_INV_Equal2~1_combout\ <= NOT \CPU|ULA1|Equal2~1_combout\;
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
	o => \LEDR[0]~output_o\);

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
	o => \LEDR[1]~output_o\);

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
	o => \LEDR[2]~output_o\);

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
	o => \LEDR[3]~output_o\);

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
	o => \LEDR[4]~output_o\);

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
	o => \LEDR[5]~output_o\);

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
	o => \LEDR[6]~output_o\);

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
	o => \LEDR[7]~output_o\);

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
	o => \LED8~output_o\);

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
	o => \LED9~output_o\);

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
	o => \HEX0[0]~output_o\);

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
	o => \HEX0[1]~output_o\);

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
	o => \HEX0[2]~output_o\);

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
	o => \HEX0[3]~output_o\);

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
	o => \HEX0[4]~output_o\);

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
	o => \HEX0[5]~output_o\);

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
	o => \HEX0[6]~output_o\);

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
	o => \HEX1[0]~output_o\);

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
	o => \HEX1[1]~output_o\);

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
	o => \HEX1[2]~output_o\);

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
	o => \HEX1[3]~output_o\);

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
	o => \HEX1[4]~output_o\);

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
	o => \HEX1[5]~output_o\);

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
	o => \HEX1[6]~output_o\);

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
	o => \HEX2[0]~output_o\);

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
	o => \HEX2[1]~output_o\);

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
	o => \HEX2[2]~output_o\);

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
	o => \HEX2[3]~output_o\);

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
	o => \HEX2[4]~output_o\);

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
	o => \HEX2[5]~output_o\);

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
	o => \HEX2[6]~output_o\);

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
	o => \HEX3[0]~output_o\);

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
	o => \HEX3[1]~output_o\);

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
	o => \HEX3[2]~output_o\);

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
	o => \HEX3[3]~output_o\);

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
	o => \HEX3[4]~output_o\);

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
	o => \HEX3[5]~output_o\);

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
	o => \HEX3[6]~output_o\);

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
	o => \HEX4[0]~output_o\);

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
	o => \HEX4[1]~output_o\);

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
	o => \HEX4[2]~output_o\);

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
	o => \HEX4[3]~output_o\);

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
	o => \HEX4[4]~output_o\);

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
	o => \HEX4[5]~output_o\);

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
	o => \HEX4[6]~output_o\);

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
	o => \HEX5[0]~output_o\);

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
	o => \HEX5[1]~output_o\);

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
	o => \HEX5[2]~output_o\);

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
	o => \HEX5[3]~output_o\);

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
	o => \HEX5[4]~output_o\);

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
	o => \HEX5[5]~output_o\);

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
	o => \HEX5[6]~output_o\);

\DEBUGROM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC1|dataOUT\(0),
	devoe => ww_devoe,
	o => \DEBUGROM[0]~output_o\);

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
	o => \DEBUGROM[1]~output_o\);

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
	o => \DEBUGROM[2]~output_o\);

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
	o => \DEBUGROM[3]~output_o\);

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
	o => \DEBUGROM[4]~output_o\);

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
	o => \DEBUGROM[5]~output_o\);

\DEBUGROM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC1|dataOUT\(6),
	devoe => ww_devoe,
	o => \DEBUGROM[6]~output_o\);

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
	o => \DEBUGROM[7]~output_o\);

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
	o => \DEBUGROM[8]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \CPU|PC1|dataOUT\(5) & ( (!\CPU|PC1|dataOUT\(3) & ((!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1))) # (\CPU|PC1|dataOUT\(0) & (\CPU|PC1|dataOUT\(1) & !\CPU|PC1|dataOUT\(2))))) ) ) # ( !\CPU|PC1|dataOUT\(5) & ( 
-- (!\CPU|PC1|dataOUT\(2) & ((!\CPU|PC1|dataOUT\(3)) # (!\CPU|PC1|dataOUT\(0) $ (\CPU|PC1|dataOUT\(1))))) # (\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1) & !\CPU|PC1|dataOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010010000100110000000000011111000100100001001100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	datae => \CPU|PC1|ALT_INV_dataOUT\(5),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT\(5) & (!\CPU|PC1|dataOUT\(1) & \CPU|PC1|dataOUT\(3)))) # (\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT\(5) $ (!\CPU|PC1|dataOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010000000000001101000000000000110100000000000011010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(5),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~4_combout\);

\CPU|DECODER1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal3~0_combout\ = (\ROM1|memROM~1_combout\ & (\ROM1|memROM~3_combout\ & ((!\CPU|PC1|dataOUT\(0)) # (!\ROM1|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000010000000110000001000000011000000100000001100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|DECODER1|Equal3~0_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (!\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(2) & \CPU|PC1|dataOUT\(5))) # (\CPU|PC1|dataOUT\(1) & (\CPU|PC1|dataOUT\(2) & !\CPU|PC1|dataOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000000000000101000000000000010100000000000001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(5),
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = (!\CPU|PC1|dataOUT\(3) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(3),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~21_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \CPU|PC1|dataOUT\(5) & ( (!\CPU|PC1|dataOUT\(3) & ((!\CPU|PC1|dataOUT\(0) & (\CPU|PC1|dataOUT\(1) & !\CPU|PC1|dataOUT\(2))) # (\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1) & \CPU|PC1|dataOUT\(2))))) ) ) # ( 
-- !\CPU|PC1|dataOUT\(5) & ( (!\CPU|PC1|dataOUT\(2) & (\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT\(0) $ (\CPU|PC1|dataOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010000001001000000000000000000100100000010010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	datae => \CPU|PC1|ALT_INV_dataOUT\(5),
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~16_combout\);

\CPU|DECODER1|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal7~0_combout\ = (\CPU|PC1|dataOUT\(0) & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & \ROM1|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|DECODER1|Equal7~0_combout\);

\CPU|ULA1|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal2~1_combout\ = (!\ROM1|memROM~16_combout\) # (\CPU|ULA1|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal2~0_combout\,
	combout => \CPU|ULA1|Equal2~1_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (!\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & ((\CPU|PC1|dataOUT\(5)))) # (\CPU|PC1|dataOUT\(1) & (\CPU|PC1|dataOUT\(2) & !\CPU|PC1|dataOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001000000000101000100000000010100010000000001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(5),
	combout => \ROM1|memROM~8_combout\);

\CPU|SOMPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~1_sumout\ = SUM(( \CPU|PC1|dataOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|SOMPC|Add0~2\ = CARRY(( \CPU|PC1|dataOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC1|ALT_INV_dataOUT\(0),
	cin => GND,
	sumout => \CPU|SOMPC|Add0~1_sumout\,
	cout => \CPU|SOMPC|Add0~2\);

\CPU|SOMPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~5_sumout\ = SUM(( \CPU|PC1|dataOUT\(1) ) + ( GND ) + ( \CPU|SOMPC|Add0~2\ ))
-- \CPU|SOMPC|Add0~6\ = CARRY(( \CPU|PC1|dataOUT\(1) ) + ( GND ) + ( \CPU|SOMPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC1|ALT_INV_dataOUT\(1),
	cin => \CPU|SOMPC|Add0~2\,
	sumout => \CPU|SOMPC|Add0~5_sumout\,
	cout => \CPU|SOMPC|Add0~6\);

\CPU|SOMPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~9_sumout\ = SUM(( \CPU|PC1|dataOUT\(2) ) + ( GND ) + ( \CPU|SOMPC|Add0~6\ ))
-- \CPU|SOMPC|Add0~10\ = CARRY(( \CPU|PC1|dataOUT\(2) ) + ( GND ) + ( \CPU|SOMPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC1|ALT_INV_dataOUT\(2),
	cin => \CPU|SOMPC|Add0~6\,
	sumout => \CPU|SOMPC|Add0~9_sumout\,
	cout => \CPU|SOMPC|Add0~10\);

\CPU|SOMPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~13_sumout\ = SUM(( \CPU|PC1|dataOUT\(3) ) + ( GND ) + ( \CPU|SOMPC|Add0~10\ ))
-- \CPU|SOMPC|Add0~14\ = CARRY(( \CPU|PC1|dataOUT\(3) ) + ( GND ) + ( \CPU|SOMPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	cin => \CPU|SOMPC|Add0~10\,
	sumout => \CPU|SOMPC|Add0~13_sumout\,
	cout => \CPU|SOMPC|Add0~14\);

\CPU|SOMPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~17_sumout\ = SUM(( \CPU|PC1|dataOUT\(4) ) + ( GND ) + ( \CPU|SOMPC|Add0~14\ ))
-- \CPU|SOMPC|Add0~18\ = CARRY(( \CPU|PC1|dataOUT\(4) ) + ( GND ) + ( \CPU|SOMPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC1|ALT_INV_dataOUT\(4),
	cin => \CPU|SOMPC|Add0~14\,
	sumout => \CPU|SOMPC|Add0~17_sumout\,
	cout => \CPU|SOMPC|Add0~18\);

\CPU|SOMPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~21_sumout\ = SUM(( \CPU|PC1|dataOUT\(5) ) + ( GND ) + ( \CPU|SOMPC|Add0~18\ ))
-- \CPU|SOMPC|Add0~22\ = CARRY(( \CPU|PC1|dataOUT\(5) ) + ( GND ) + ( \CPU|SOMPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC1|ALT_INV_dataOUT\(5),
	cin => \CPU|SOMPC|Add0~18\,
	sumout => \CPU|SOMPC|Add0~21_sumout\,
	cout => \CPU|SOMPC|Add0~22\);

\CPU|SOMPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~25_sumout\ = SUM(( \CPU|PC1|dataOUT\(6) ) + ( GND ) + ( \CPU|SOMPC|Add0~22\ ))
-- \CPU|SOMPC|Add0~26\ = CARRY(( \CPU|PC1|dataOUT\(6) ) + ( GND ) + ( \CPU|SOMPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC1|ALT_INV_dataOUT\(6),
	cin => \CPU|SOMPC|Add0~22\,
	sumout => \CPU|SOMPC|Add0~25_sumout\,
	cout => \CPU|SOMPC|Add0~26\);

\CPU|SOMPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~29_sumout\ = SUM(( \CPU|PC1|dataOUT\(7) ) + ( GND ) + ( \CPU|SOMPC|Add0~26\ ))
-- \CPU|SOMPC|Add0~30\ = CARRY(( \CPU|PC1|dataOUT\(7) ) + ( GND ) + ( \CPU|SOMPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC1|ALT_INV_dataOUT\(7),
	cin => \CPU|SOMPC|Add0~26\,
	sumout => \CPU|SOMPC|Add0~29_sumout\,
	cout => \CPU|SOMPC|Add0~30\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \CPU|PC1|dataOUT\(5) & ( (!\CPU|PC1|dataOUT\(3) & ((!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1))) # (\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(2)))))) ) ) # ( !\CPU|PC1|dataOUT\(5) & ( (!\CPU|PC1|dataOUT\(0) & 
-- (!\CPU|PC1|dataOUT\(3) $ (((!\CPU|PC1|dataOUT\(1) & !\CPU|PC1|dataOUT\(2)))))) # (\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101011000000110110000000000001101010110000001101100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	datae => \CPU|PC1|ALT_INV_dataOUT\(5),
	combout => \ROM1|memROM~5_combout\);

\CPU|DECODER1|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal4~0_combout\ = ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT\(6) & (!\CPU|PC1|dataOUT\(7) & !\CPU|PC1|dataOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(4),
	datab => \CPU|PC1|ALT_INV_dataOUT\(6),
	datac => \CPU|PC1|ALT_INV_dataOUT\(7),
	datad => \CPU|PC1|ALT_INV_dataOUT\(8),
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|DECODER1|Equal4~0_combout\);

\CPU|DECODER1|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal8~0_combout\ = (\CPU|DECODER1|Equal4~0_combout\ & \CPU|DECODER1|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal4~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	combout => \CPU|DECODER1|Equal8~0_combout\);

\CPU|REGRET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~29_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(7));

\CPU|MUXPC|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[7]~7_combout\ = ( \CPU|REGRET|DOUT\(7) & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & (((!\CPU|MUXPC|Equal1~0_combout\)) # (\ROM1|memROM~20_combout\))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (((\CPU|SOMPC|Add0~29_sumout\)))) ) ) # ( 
-- !\CPU|REGRET|DOUT\(7) & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & (\ROM1|memROM~20_combout\ & (\CPU|MUXPC|Equal1~0_combout\))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (((\CPU|SOMPC|Add0~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	datac => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datad => \CPU|SOMPC|ALT_INV_Add0~29_sumout\,
	datae => \CPU|REGRET|ALT_INV_DOUT\(7),
	combout => \CPU|MUXPC|saida_MUX[7]~7_combout\);

\CPU|PC1|dataOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUXPC|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(7));

\CPU|SOMPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|SOMPC|Add0~33_sumout\ = SUM(( \CPU|PC1|dataOUT\(8) ) + ( GND ) + ( \CPU|SOMPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC1|ALT_INV_dataOUT\(8),
	cin => \CPU|SOMPC|Add0~30\,
	sumout => \CPU|SOMPC|Add0~33_sumout\);

\CPU|REGRET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~33_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(8));

\CPU|MUXPC|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[8]~8_combout\ = ( !\CPU|MUXPC|Equal1~0_combout\ & ( (((!\CPU|PC1|dataOUT[2]~0_combout\ & (\CPU|REGRET|DOUT\(8))) # (\CPU|PC1|dataOUT[2]~0_combout\ & ((\CPU|SOMPC|Add0~33_sumout\))))) ) ) # ( \CPU|MUXPC|Equal1~0_combout\ & ( 
-- (!\CPU|PC1|dataOUT[2]~0_combout\ & (\ROM1|memROM~8_combout\ & (\ROM1|memROM~1_combout\ & (!\CPU|PC1|dataOUT\(3))))) # (\CPU|PC1|dataOUT[2]~0_combout\ & ((((\CPU|SOMPC|Add0~33_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000100000001000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(3),
	datad => \CPU|SOMPC|ALT_INV_Add0~33_sumout\,
	datae => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	datag => \CPU|REGRET|ALT_INV_DOUT\(8),
	combout => \CPU|MUXPC|saida_MUX[8]~8_combout\);

\CPU|PC1|dataOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUXPC|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(8));

\ROM1|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~22_combout\ = (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT\(6) & (!\CPU|PC1|dataOUT\(7) & \ROM1|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(4),
	datab => \CPU|PC1|ALT_INV_dataOUT\(6),
	datac => \CPU|PC1|ALT_INV_dataOUT\(7),
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~22_combout\);

\CPU|DECODER1|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal7~1_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT\(6) & (!\CPU|PC1|dataOUT\(7) & !\CPU|PC1|dataOUT\(8)))) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ 
-- & ( (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT\(6) & (!\CPU|PC1|dataOUT\(7) & !\CPU|PC1|dataOUT\(8)))) ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT\(6) & (!\CPU|PC1|dataOUT\(7) & 
-- !\CPU|PC1|dataOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(4),
	datab => \CPU|PC1|ALT_INV_dataOUT\(6),
	datac => \CPU|PC1|ALT_INV_dataOUT\(7),
	datad => \CPU|PC1|ALT_INV_dataOUT\(8),
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|DECODER1|Equal7~1_combout\);

\CPU|DECODER1|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal3~1_combout\ = (\CPU|DECODER1|Equal3~0_combout\ & !\CPU|DECODER1|Equal7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	combout => \CPU|DECODER1|Equal3~1_combout\);

\CPU|DECODER1|Sinais_Controle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Sinais_Controle~0_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & ((!\CPU|PC1|dataOUT\(0)) # (!\ROM1|memROM~4_combout\)))) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( 
-- \ROM1|memROM~6_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & ((!\CPU|PC1|dataOUT\(0)) # (!\ROM1|memROM~4_combout\)))) ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~1_combout\ & 
-- (!\ROM1|memROM~3_combout\ & ((!\CPU|PC1|dataOUT\(0)) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000010000000110000001000000011000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|DECODER1|Sinais_Controle~0_combout\);

\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~1_combout\ ) ) # ( !\ROM1|memROM~9_combout\ & ( (!\CPU|PC1|dataOUT\(3) & (\ROM1|memROM~1_combout\ & ((\ROM1|memROM~8_combout\) # (\ROM1|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010001100110011001100000010001000100011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(3),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|process_0~0_combout\);

\CPU|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~1_combout\ = ( !\RAM1|process_0~0_combout\ & ( (!\CPU|DECODER1|Equal7~1_combout\ & (!\CPU|DECODER1|Equal3~0_combout\ & ((\CPU|DECODER1|Sinais_Controle~0_combout\) # (\CPU|DECODER1|Equal7~0_combout\)))) # 
-- (\CPU|DECODER1|Equal7~1_combout\ & (((\CPU|DECODER1|Sinais_Controle~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010101111000000000000000000100000101011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	datac => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	datad => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~1_combout\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~16_combout\ & ( (!\ROM1|memROM~1_combout\) # ((!\ROM1|memROM~3_combout\ & ((!\CPU|PC1|dataOUT\(0)) # (!\ROM1|memROM~4_combout\)))) ) ) ) # ( !\ROM1|memROM~15_combout\ & ( 
-- !\ROM1|memROM~16_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~3_combout\ & ((!\CPU|PC1|dataOUT\(0)) # (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000010111111001110110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|DECODER1|Sinais_Controle[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Sinais_Controle\(4) = (\CPU|DECODER1|Sinais_Controle~0_combout\) # (\CPU|DECODER1|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	datab => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	combout => \CPU|DECODER1|Sinais_Controle\(4));

\CPU|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1|saida_MUX[6]~7_combout\,
	sload => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(6));

\RAM1|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~562_combout\ = ( !\CPU|PC1|dataOUT\(1) & ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC1|dataOUT\(2) & (\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT\(5) & !\CPU|PC1|dataOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(2),
	datab => \CPU|PC1|ALT_INV_dataOUT\(3),
	datac => \CPU|PC1|ALT_INV_dataOUT\(5),
	datad => \CPU|PC1|ALT_INV_dataOUT\(0),
	datae => \CPU|PC1|ALT_INV_dataOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~562_combout\);

\RAM1|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~563_combout\ = (\CPU|DECODER1|Equal3~0_combout\ & (\CPU|DECODER1|Equal4~0_combout\ & (!\RAM1|process_0~0_combout\ & \RAM1|ram~562_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal4~0_combout\,
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	datad => \RAM1|ALT_INV_ram~562_combout\,
	combout => \RAM1|ram~563_combout\);

\RAM1|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \RAM1|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~101_q\);

\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = (!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(5) $ (!\CPU|PC1|dataOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010000000000010001000000000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(5),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~18_combout\);

\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = ( !\CPU|PC1|dataOUT\(8) & ( \ROM1|memROM~18_combout\ & ( (!\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT\(6) & !\CPU|PC1|dataOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(2),
	datab => \CPU|PC1|ALT_INV_dataOUT\(4),
	datac => \CPU|PC1|ALT_INV_dataOUT\(6),
	datad => \CPU|PC1|ALT_INV_dataOUT\(7),
	datae => \CPU|PC1|ALT_INV_dataOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \ROM1|memROM~19_combout\);

\RAM1|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~564_combout\ = ( \ROM1|memROM~1_combout\ & ( \CPU|DECODER1|Equal4~0_combout\ & ( (!\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(5) & (!\CPU|PC1|dataOUT\(2) & !\CPU|PC1|dataOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(1),
	datab => \CPU|PC1|ALT_INV_dataOUT\(5),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \CPU|DECODER1|ALT_INV_Equal4~0_combout\,
	combout => \RAM1|ram~564_combout\);

\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

\RAM1|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~556_combout\ = ( \CPU|PC1|dataOUT\(1) & ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT\(5) $ (!\CPU|PC1|dataOUT\(0))))) ) ) ) # ( !\CPU|PC1|dataOUT\(1) & ( \ROM1|memROM~1_combout\ & ( 
-- (\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT\(5) & !\CPU|PC1|dataOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(2),
	datab => \CPU|PC1|ALT_INV_dataOUT\(3),
	datac => \CPU|PC1|ALT_INV_dataOUT\(5),
	datad => \CPU|PC1|ALT_INV_dataOUT\(0),
	datae => \CPU|PC1|ALT_INV_dataOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~556_combout\);

\RAM1|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~557_combout\ = (\CPU|DECODER1|Equal3~0_combout\ & (\CPU|DECODER1|Equal4~0_combout\ & (!\RAM1|process_0~0_combout\ & \RAM1|ram~556_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal4~0_combout\,
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	datad => \RAM1|ALT_INV_ram~556_combout\,
	combout => \RAM1|ram~557_combout\);

\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

\RAM1|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~558_combout\ = ( \CPU|PC1|dataOUT\(1) & ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC1|dataOUT\(2) & (\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT\(5) & \CPU|PC1|dataOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(2),
	datab => \CPU|PC1|ALT_INV_dataOUT\(3),
	datac => \CPU|PC1|ALT_INV_dataOUT\(5),
	datad => \CPU|PC1|ALT_INV_dataOUT\(0),
	datae => \CPU|PC1|ALT_INV_dataOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~558_combout\);

\RAM1|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~559_combout\ = (\CPU|DECODER1|Equal3~0_combout\ & (\CPU|DECODER1|Equal4~0_combout\ & (!\RAM1|process_0~0_combout\ & \RAM1|ram~558_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal4~0_combout\,
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	datad => \RAM1|ALT_INV_ram~558_combout\,
	combout => \RAM1|ram~559_combout\);

\RAM1|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~61_q\);

\RAM1|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~550_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~61_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~29_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~2_combout\ & ( 
-- \RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datab => \RAM1|ALT_INV_ram~29_q\,
	datad => \RAM1|ALT_INV_ram~61_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~550_combout\);

\RAM1|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~560_combout\ = ( \CPU|PC1|dataOUT\(1) & ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT\(5) $ (\CPU|PC1|dataOUT\(0))))) ) ) ) # ( !\CPU|PC1|dataOUT\(1) & ( \ROM1|memROM~1_combout\ & ( 
-- (!\CPU|PC1|dataOUT\(3) & (\CPU|PC1|dataOUT\(5) & (!\CPU|PC1|dataOUT\(2) $ (!\CPU|PC1|dataOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000010001000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(2),
	datab => \CPU|PC1|ALT_INV_dataOUT\(3),
	datac => \CPU|PC1|ALT_INV_dataOUT\(5),
	datad => \CPU|PC1|ALT_INV_dataOUT\(0),
	datae => \CPU|PC1|ALT_INV_dataOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~560_combout\);

\RAM1|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~561_combout\ = (\CPU|DECODER1|Equal3~0_combout\ & (\CPU|DECODER1|Equal4~0_combout\ & (!\RAM1|process_0~0_combout\ & \RAM1|ram~560_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal4~0_combout\,
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	datad => \RAM1|ALT_INV_ram~560_combout\,
	combout => \RAM1|ram~561_combout\);

\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

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

\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~20_combout\ & ( \RAM1|ram~565_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~565_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~551_combout\);

\CPU|MUX1|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~7_combout\ = ( \RAM1|ram~551_combout\ & ( ((\ROM1|memROM~21_combout\ & \CPU|DECODER1|Equal3~1_combout\)) # (\CPU|MUX1|saida_MUX[1]~1_combout\) ) ) # ( !\RAM1|ram~551_combout\ & ( (\ROM1|memROM~21_combout\ & 
-- \CPU|DECODER1|Equal3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001000100010001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \RAM1|ALT_INV_ram~551_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~7_combout\);

\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \CPU|PC1|dataOUT\(5) & ( (!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(2) & !\CPU|PC1|dataOUT\(3))) ) ) # ( !\CPU|PC1|dataOUT\(5) & ( (!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1) & (\CPU|PC1|dataOUT\(2) & 
-- !\CPU|PC1|dataOUT\(3)))) # (\CPU|PC1|dataOUT\(0) & (\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000010000101000000000000000011000000100001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	datae => \CPU|PC1|ALT_INV_dataOUT\(5),
	combout => \ROM1|memROM~11_combout\);

\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \ROM1|memROM~9_combout\ & ( (\RAM1|ram~15_q\ & !\ROM1|memROM~1_combout\) ) ) # ( !\ROM1|memROM~9_combout\ & ( (!\ROM1|memROM~1_combout\ & (\RAM1|ram~15_q\)) # (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~11_combout\ & 
-- (\RAM1|ram~15_q\)) # (\ROM1|memROM~11_combout\ & ((\RAM1|ram~23_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010100000101000001010101010100110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~15_q\,
	datab => \RAM1|ALT_INV_ram~23_q\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~527_combout\);

\RAM1|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~55_q\);

\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = (\RAM1|ram~55_q\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~11_combout\ & !\ROM1|memROM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~55_q\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~528_combout\);

\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~528_combout\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~527_combout\,
	datab => \RAM1|ALT_INV_ram~528_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~529_combout\);

\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

\RAM1|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \RAM1|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~95_q\);

\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~18_combout\ & ( (!\CPU|PC1|dataOUT\(2) & (((\RAM1|ram~95_q\ & !\ROM1|memROM~0_combout\)))) # (\CPU|PC1|dataOUT\(2) & (\RAM1|ram~31_q\)) ) ) ) # ( !\ROM1|memROM~1_combout\ & ( 
-- \ROM1|memROM~18_combout\ & ( \RAM1|ram~31_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~18_combout\ & ( (\RAM1|ram~31_q\ & ((!\ROM1|memROM~0_combout\) # (\CPU|PC1|dataOUT\(2)))) ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~18_combout\ & ( 
-- \RAM1|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010000010101010101010101010011010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~31_q\,
	datab => \RAM1|ALT_INV_ram~95_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \RAM1|ram~530_combout\);

\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~20_combout\ & ( \RAM1|ram~530_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~530_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~531_combout\);

\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( \ROM1|memROM~17_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~531_combout\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~529_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~529_combout\,
	datab => \RAM1|ALT_INV_ram~531_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~532_combout\);

\RAM1|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out~0_combout\ = (!\RAM1|process_0~0_combout\ & (((\CPU|DECODER1|Equal7~0_combout\ & !\CPU|DECODER1|Equal7~1_combout\)) # (\CPU|DECODER1|Sinais_Controle~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100000000010011110000000001001111000000000100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	datac => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	datad => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|dado_out~0_combout\);

\SWITCH[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(0),
	o => \SWITCH[0]~input_o\);

\ANDSW07~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDSW07~0_combout\ = ( !\ROM1|memROM~9_combout\ & ( (!\CPU|PC1|dataOUT\(3) & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~7_combout\ & \ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(3),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ANDSW07~0_combout\);

\ANDSW07~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDSW07~1_combout\ = ( \ROM1|memROM~11_combout\ & ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~1_combout\ ) ) ) # ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~1_combout\ ) ) ) # ( \ROM1|memROM~11_combout\ & ( 
-- !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~1_combout\ ) ) ) # ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~1_combout\ & (((!\CPU|PC1|dataOUT\(2) & \ROM1|memROM~0_combout\)) # (\ROM1|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(2),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ANDSW07~1_combout\);

\Data_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~0_combout\ = ( \ANDSW07~0_combout\ & ( !\ANDSW07~1_combout\ & ( (\SWITCH[0]~input_o\ & (((\CPU|DECODER1|Equal7~0_combout\ & !\CPU|DECODER1|Equal7~1_combout\)) # (\CPU|DECODER1|Sinais_Controle~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	datac => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	datad => \ALT_INV_SWITCH[0]~input_o\,
	datae => \ALT_INV_ANDSW07~0_combout\,
	dataf => \ALT_INV_ANDSW07~1_combout\,
	combout => \Data_IN[0]~0_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \detectorSub0|saidaQ~0_combout\);

\detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub0|saidaQ~q\);

\detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saida~combout\ = LCELL((!\KEY[0]~input_o\ & !\detectorSub0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \detectorSub0|ALT_INV_saidaQ~q\,
	combout => \detectorSub0|saida~combout\);

\ANDHEX3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX3~0_combout\ = (\ROM1|memROM~1_combout\ & (\ROM1|memROM~11_combout\ & \ROM1|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ANDHEX3~0_combout\);

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \ANDHEX3~0_combout\ & ( \ROM1|memROM~19_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~21_combout\ & (\ROM1|memROM~20_combout\ & \ROM1|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~21_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \ALT_INV_ANDHEX3~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \comb~0_combout\);

\MEMKEY0|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => VCC,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMKEY0|DOUT~q\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\Data_IN[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~3_combout\ = ( \KEY[2]~input_o\ & ( \KEY[3]~input_o\ & ( ((!\ROM1|memROM~14_combout\ & (\MEMKEY0|DOUT~q\)) # (\ROM1|memROM~14_combout\ & ((\KEY[1]~input_o\)))) # (\ROM1|memROM~17_combout\) ) ) ) # ( !\KEY[2]~input_o\ & ( \KEY[3]~input_o\ & ( 
-- (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~17_combout\ & (\MEMKEY0|DOUT~q\))) # (\ROM1|memROM~14_combout\ & (((\KEY[1]~input_o\)) # (\ROM1|memROM~17_combout\))) ) ) ) # ( \KEY[2]~input_o\ & ( !\KEY[3]~input_o\ & ( (!\ROM1|memROM~14_combout\ & 
-- (((\MEMKEY0|DOUT~q\)) # (\ROM1|memROM~17_combout\))) # (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~17_combout\ & ((\KEY[1]~input_o\)))) ) ) ) # ( !\KEY[2]~input_o\ & ( !\KEY[3]~input_o\ & ( (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~14_combout\ & 
-- (\MEMKEY0|DOUT~q\)) # (\ROM1|memROM~14_combout\ & ((\KEY[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \MEMKEY0|ALT_INV_DOUT~q\,
	datad => \ALT_INV_KEY[1]~input_o\,
	datae => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \Data_IN[0]~3_combout\);

\Data_IN[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~4_combout\ = (!\CPU|DECODER1|Sinais_Controle~0_combout\ & ((!\CPU|DECODER1|Equal7~0_combout\) # (\CPU|DECODER1|Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110000101100001011000010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	datac => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	combout => \Data_IN[0]~4_combout\);

\SWITCH[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(8),
	o => \SWITCH[8]~input_o\);

\SWITCH[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(9),
	o => \SWITCH[9]~input_o\);

\Data_IN[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~1_combout\ = ( \SWITCH[9]~input_o\ & ( (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~11_combout\ & (\ROM1|memROM~12_combout\)) # (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~12_combout\ & \SWITCH[8]~input_o\)))) ) ) # ( !\SWITCH[9]~input_o\ & ( 
-- (\ROM1|memROM~1_combout\ & (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~12_combout\ & \SWITCH[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000001000001010000000000000100000000010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ALT_INV_SWITCH[8]~input_o\,
	datae => \ALT_INV_SWITCH[9]~input_o\,
	combout => \Data_IN[0]~1_combout\);

\ANDHEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX0~2_combout\ = (\ROM1|memROM~1_combout\ & (\ROM1|memROM~10_combout\ & (!\ROM1|memROM~11_combout\ & !\ROM1|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ANDHEX0~2_combout\);

\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

\Data_IN[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~5_combout\ = (!\ROM1|memROM~2_combout\ & (\Data_IN[0]~1_combout\)) # (\ROM1|memROM~2_combout\ & (((\ANDHEX0~2_combout\ & \FPGA_RESET~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111001000100010011100100010001001110010001000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ALT_INV_Data_IN[0]~1_combout\,
	datac => \ALT_INV_ANDHEX0~2_combout\,
	datad => \ALT_INV_FPGA_RESET~input_o\,
	combout => \Data_IN[0]~5_combout\);

\Data_IN[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~2_combout\ = ( !\Data_IN[0]~4_combout\ & ( \Data_IN[0]~5_combout\ & ( (\ANDSW07~0_combout\ & (((!\ROM1|memROM~13_combout\) # (\Data_IN[0]~3_combout\)) # (\ROM1|memROM~2_combout\))) ) ) ) # ( !\Data_IN[0]~4_combout\ & ( !\Data_IN[0]~5_combout\ 
-- & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~13_combout\ & (\ANDSW07~0_combout\ & \Data_IN[0]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000001101000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ALT_INV_ANDSW07~0_combout\,
	datad => \ALT_INV_Data_IN[0]~3_combout\,
	datae => \ALT_INV_Data_IN[0]~4_combout\,
	dataf => \ALT_INV_Data_IN[0]~5_combout\,
	combout => \Data_IN[0]~2_combout\);

\CPU|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~0_combout\ = ( \Data_IN[0]~0_combout\ & ( \Data_IN[0]~2_combout\ & ( (!\CPU|DECODER1|Equal3~1_combout\) # (\ROM1|memROM~14_combout\) ) ) ) # ( !\Data_IN[0]~0_combout\ & ( \Data_IN[0]~2_combout\ & ( (!\CPU|DECODER1|Equal3~1_combout\) 
-- # (\ROM1|memROM~14_combout\) ) ) ) # ( \Data_IN[0]~0_combout\ & ( !\Data_IN[0]~2_combout\ & ( (!\CPU|DECODER1|Equal3~1_combout\) # (\ROM1|memROM~14_combout\) ) ) ) # ( !\Data_IN[0]~0_combout\ & ( !\Data_IN[0]~2_combout\ & ( 
-- (!\CPU|DECODER1|Equal3~1_combout\ & (((\RAM1|ram~532_combout\ & \RAM1|dado_out~0_combout\)))) # (\CPU|DECODER1|Equal3~1_combout\ & (\ROM1|memROM~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	datac => \RAM1|ALT_INV_ram~532_combout\,
	datad => \RAM1|ALT_INV_dado_out~0_combout\,
	datae => \ALT_INV_Data_IN[0]~0_combout\,
	dataf => \ALT_INV_Data_IN[0]~2_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~0_combout\);

\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( ((!\ROM1|memROM~16_combout\) # ((\ROM1|memROM~22_combout\ & !\CPU|PC1|dataOUT\(8)))) # (\CPU|ULA1|Equal2~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001101111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal2~0_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \CPU|PC1|ALT_INV_dataOUT\(8),
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[0]~0_combout\ $ (((!\CPU|ULA1|Equal2~0_combout\ & (\ROM1|memROM~16_combout\ & !\ROM1|memROM~15_combout\)))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( !\CPU|MUX1|saida_MUX[0]~0_combout\ $ (((!\CPU|ULA1|Equal2~0_combout\ & (\ROM1|memROM~16_combout\ & !\ROM1|memROM~15_combout\)))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal2~0_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[1]~2_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~22_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( !\CPU|MUX1|saida_MUX[1]~2_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~22_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111010110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal2~1_combout\,
	datab => \ROM1|ALT_INV_memROM~22_combout\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(8),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|MUX1|saida_MUX[1]~2_combout\,
	sload => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

\RAM1|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \RAM1|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~96_q\);

\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( \ROM1|memROM~12_combout\ & ( \ROM1|memROM~11_combout\ & ( (\RAM1|ram~16_q\ & !\ROM1|memROM~1_combout\) ) ) ) # ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~11_combout\ & ( (!\ROM1|memROM~1_combout\ & (\RAM1|ram~16_q\)) # 
-- (\ROM1|memROM~1_combout\ & ((\RAM1|ram~24_q\))) ) ) ) # ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~11_combout\ & ( (!\ROM1|memROM~1_combout\ & (\RAM1|ram~16_q\)) # (\ROM1|memROM~1_combout\ & ((\RAM1|ram~32_q\))) ) ) ) # ( !\ROM1|memROM~12_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010011001101010101000011110101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~16_q\,
	datab => \RAM1|ALT_INV_ram~32_q\,
	datac => \RAM1|ALT_INV_ram~24_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~533_combout\);

\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( !\ROM1|memROM~20_combout\ & ( \ROM1|memROM~19_combout\ & ( (\RAM1|ram~96_q\ & (\ROM1|memROM~17_combout\ & !\ROM1|memROM~14_combout\)) ) ) ) # ( !\ROM1|memROM~20_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~533_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000010000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~96_q\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \RAM1|ALT_INV_ram~533_combout\,
	datae => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~534_combout\);

\RAM1|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~56_q\);

\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( !\ROM1|memROM~19_combout\ & ( (\RAM1|ram~56_q\ & (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~20_combout\ & \ROM1|memROM~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~56_q\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~535_combout\);

\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~535_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~534_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~534_combout\,
	datac => \RAM1|ALT_INV_ram~535_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~536_combout\);

\CPU|MUX1|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~2_combout\ = (\RAM1|ram~536_combout\ & \CPU|MUX1|saida_MUX[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~536_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~2_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[2]~3_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~22_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( !\CPU|MUX1|saida_MUX[2]~3_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~22_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111010110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal2~1_combout\,
	datab => \ROM1|ALT_INV_memROM~22_combout\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(8),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[2]~3_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|MUX1|saida_MUX[2]~3_combout\,
	sload => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

\RAM1|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \RAM1|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~97_q\);

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

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

\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( !\ROM1|memROM~20_combout\ & ( \ROM1|memROM~19_combout\ & ( (\RAM1|ram~97_q\ & (\ROM1|memROM~17_combout\ & !\ROM1|memROM~2_combout\)) ) ) ) # ( !\ROM1|memROM~20_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~537_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000010000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~97_q\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_ram~537_combout\,
	datae => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~538_combout\);

\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

\RAM1|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~57_q\);

\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( !\ROM1|memROM~20_combout\ & ( !\ROM1|memROM~19_combout\ & ( (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~2_combout\ & (\RAM1|ram~25_q\)) # (\ROM1|memROM~2_combout\ & ((\RAM1|ram~57_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~25_q\,
	datab => \RAM1|ALT_INV_ram~57_q\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~539_combout\);

\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~539_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~14_combout\ & ( \RAM1|ram~538_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~538_combout\,
	datac => \RAM1|ALT_INV_ram~539_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~540_combout\);

\CPU|MUX1|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~3_combout\ = ( \RAM1|ram~540_combout\ & ( ((\ROM1|memROM~2_combout\ & \CPU|DECODER1|Equal3~1_combout\)) # (\CPU|MUX1|saida_MUX[1]~1_combout\) ) ) # ( !\RAM1|ram~540_combout\ & ( (\ROM1|memROM~2_combout\ & 
-- \CPU|DECODER1|Equal3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001000100010001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \RAM1|ALT_INV_ram~540_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~3_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[3]~4_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~22_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( !\CPU|MUX1|saida_MUX[3]~4_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~22_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101110110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal2~1_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT\(8),
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|MUX1|saida_MUX[3]~4_combout\,
	sload => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

\RAM1|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \RAM1|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~98_q\);

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~34_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~26_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~17_combout\ & 
-- ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~18_q\,
	datab => \RAM1|ALT_INV_ram~26_q\,
	datac => \RAM1|ALT_INV_ram~34_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~541_combout\);

\RAM1|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~58_q\);

\RAM1|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~573_combout\ = ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~19_combout\ & ((!\ROM1|memROM~2_combout\ & (((\RAM1|ram~541_combout\)))) # (\ROM1|memROM~2_combout\ & (\ROM1|memROM~14_combout\ & (\RAM1|ram~58_q\))))) ) ) # ( 
-- \ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~19_combout\ & (((\RAM1|ram~541_combout\)))) # (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~14_combout\ & (\RAM1|ram~98_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000100000000100000000011001100000001001100111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \RAM1|ALT_INV_ram~98_q\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \RAM1|ALT_INV_ram~541_combout\,
	datag => \RAM1|ALT_INV_ram~58_q\,
	combout => \RAM1|ram~573_combout\);

\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~20_combout\ & ( \RAM1|ram~573_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~573_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~542_combout\);

\CPU|MUX1|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~4_combout\ = ( \RAM1|ram~542_combout\ & ( ((\ROM1|memROM~19_combout\ & \CPU|DECODER1|Equal3~1_combout\)) # (\CPU|MUX1|saida_MUX[1]~1_combout\) ) ) # ( !\RAM1|ram~542_combout\ & ( (\ROM1|memROM~19_combout\ & 
-- \CPU|DECODER1|Equal3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001000100010001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \RAM1|ALT_INV_ram~542_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~4_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[4]~5_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~22_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( !\CPU|MUX1|saida_MUX[4]~5_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~22_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101110110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal2~1_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT\(8),
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[4]~5_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|MUX1|saida_MUX[4]~5_combout\,
	sload => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(4));

\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

\RAM1|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~59_q\);

\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

\RAM1|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~569_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~19_combout\ & (!\ROM1|memROM~20_combout\ & ((!\ROM1|memROM~14_combout\ & ((\RAM1|ram~19_q\))) # (\ROM1|memROM~14_combout\ & (\RAM1|ram~27_q\))))) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- ((!\ROM1|memROM~19_combout\ & (\RAM1|ram~59_q\ & (!\ROM1|memROM~20_combout\ & \ROM1|memROM~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000000000000000000000000001000100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~27_q\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \RAM1|ALT_INV_ram~59_q\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	datag => \RAM1|ALT_INV_ram~19_q\,
	combout => \RAM1|ram~569_combout\);

\RAM1|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \RAM1|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~99_q\);

\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~19_combout\ & ( (\RAM1|ram~99_q\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~20_combout\)) ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~19_combout\ & ( 
-- (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~20_combout\ & \RAM1|ram~35_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000001000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~99_q\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \RAM1|ALT_INV_ram~35_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~543_combout\);

\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~543_combout\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~569_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~569_combout\,
	datac => \RAM1|ALT_INV_ram~543_combout\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~544_combout\);

\CPU|MUX1|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~5_combout\ = (\CPU|MUX1|saida_MUX[1]~1_combout\ & \RAM1|ram~544_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \RAM1|ALT_INV_ram~544_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~5_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[5]~6_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~22_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( !\CPU|MUX1|saida_MUX[5]~6_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~22_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101110110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal2~1_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT\(8),
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[5]~6_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|MUX1|saida_MUX[5]~6_combout\,
	sload => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(5));

\RAM1|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \RAM1|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~100_q\);

\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = ( !\ROM1|memROM~13_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~36_q\ ) ) ) # ( !\ROM1|memROM~13_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~20_q\,
	datac => \RAM1|ALT_INV_ram~36_q\,
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~545_combout\);

\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = ( !\ROM1|memROM~20_combout\ & ( \ROM1|memROM~19_combout\ & ( (\RAM1|ram~100_q\ & (!\ROM1|memROM~13_combout\ & \ROM1|memROM~17_combout\)) ) ) ) # ( !\ROM1|memROM~20_combout\ & ( !\ROM1|memROM~19_combout\ & ( \RAM1|ram~545_combout\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~100_q\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM1|ALT_INV_ram~545_combout\,
	datae => \ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~546_combout\);

\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = ( !\ROM1|memROM~19_combout\ & ( (\RAM1|ram~28_q\ & (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~20_combout\ & !\ROM1|memROM~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~28_q\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~547_combout\);

\RAM1|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~60_q\);

\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = ( !\ROM1|memROM~19_combout\ & ( !\ROM1|memROM~20_combout\ & ( (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~17_combout\ & \RAM1|ram~60_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM1|ALT_INV_ram~60_q\,
	datae => \ROM1|ALT_INV_memROM~19_combout\,
	dataf => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM1|ram~548_combout\);

\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~548_combout\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~547_combout\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( 
-- !\ROM1|memROM~14_combout\ & ( \RAM1|ram~546_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~546_combout\,
	datac => \RAM1|ALT_INV_ram~547_combout\,
	datad => \RAM1|ALT_INV_ram~548_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~549_combout\);

\CPU|MUX1|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~6_combout\ = (\CPU|MUX1|saida_MUX[1]~1_combout\ & \RAM1|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \RAM1|ALT_INV_ram~549_combout\,
	combout => \CPU|MUX1|saida_MUX[5]~6_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[6]~7_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~22_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( !\CPU|MUX1|saida_MUX[6]~7_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~22_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101110110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal2~1_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT\(8),
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~7_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|MUX1|saida_MUX[7]~8_combout\,
	sload => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(7));

\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \RAM1|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

\RAM1|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~552_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~19_combout\ & ( (\RAM1|ram~22_q\ & (!\ROM1|memROM~13_combout\ & !\ROM1|memROM~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~22_q\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~552_combout\);

\RAM1|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~62_q\);

\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \RAM1|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

\RAM1|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~553_combout\ = ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~19_combout\ & ( (\RAM1|ram~62_q\ & (!\ROM1|memROM~13_combout\ & !\ROM1|memROM~20_combout\)) ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~19_combout\ & ( 
-- (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~20_combout\ & \RAM1|ram~30_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~62_q\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \RAM1|ALT_INV_ram~30_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~553_combout\);

\RAM1|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \RAM1|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~102_q\);

\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \RAM1|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

\RAM1|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~554_combout\ = ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~19_combout\ & ( (\RAM1|ram~102_q\ & (!\ROM1|memROM~13_combout\ & !\ROM1|memROM~20_combout\)) ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~19_combout\ & ( 
-- (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~20_combout\ & \RAM1|ram~38_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000001000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~102_q\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \RAM1|ALT_INV_ram~38_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \RAM1|ram~554_combout\);

\RAM1|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~555_combout\ = ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~554_combout\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~553_combout\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( 
-- !\ROM1|memROM~17_combout\ & ( \RAM1|ram~552_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~552_combout\,
	datab => \RAM1|ALT_INV_ram~553_combout\,
	datac => \RAM1|ALT_INV_ram~554_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~555_combout\);

\CPU|MUX1|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~8_combout\ = (\CPU|MUX1|saida_MUX[1]~1_combout\ & \RAM1|ram~555_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \RAM1|ALT_INV_ram~555_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~8_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[7]~8_combout\ $ (((!\CPU|ULA1|Equal2~1_combout\ & ((!\ROM1|memROM~22_combout\) # (\CPU|PC1|dataOUT\(8)))))) ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101110110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal2~1_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT\(8),
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[7]~8_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|DECODER1|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal7~2_combout\ = (\CPU|DECODER1|Equal7~0_combout\ & !\CPU|DECODER1|Equal7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	combout => \CPU|DECODER1|Equal7~2_combout\);

\CPU|REGIGUAL|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~0_combout\ = (\CPU|REGIGUAL|DOUT~q\ & !\CPU|DECODER1|Equal7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGIGUAL|ALT_INV_DOUT~q\,
	datab => \CPU|DECODER1|ALT_INV_Equal7~2_combout\,
	combout => \CPU|REGIGUAL|DOUT~0_combout\);

\CPU|REGIGUAL|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~1_combout\ = ( \CPU|ULA1|saida[0]~0_combout\ & ( (\CPU|MUX1|saida_MUX[1]~1_combout\ & ((\RAM1|ram~555_combout\) # (\RAM1|ram~549_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datab => \RAM1|ALT_INV_ram~549_combout\,
	datad => \RAM1|ALT_INV_ram~555_combout\,
	dataf => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	combout => \CPU|REGIGUAL|DOUT~1_combout\);

\CPU|MUX1|saida_MUX[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~9_combout\ = (\ROM1|memROM~21_combout\ & \CPU|DECODER1|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~9_combout\);

\CPU|REGIGUAL|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~2_combout\ = ( \CPU|MUX1|saida_MUX[6]~9_combout\ & ( \CPU|ULA1|saida[0]~0_combout\ ) ) # ( !\CPU|MUX1|saida_MUX[6]~9_combout\ & ( \CPU|ULA1|saida[0]~0_combout\ & ( (\CPU|MUX1|saida_MUX[1]~1_combout\ & ((\RAM1|ram~551_combout\) # 
-- (\RAM1|ram~544_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datab => \RAM1|ALT_INV_ram~544_combout\,
	datad => \RAM1|ALT_INV_ram~551_combout\,
	datae => \CPU|MUX1|ALT_INV_saida_MUX[6]~9_combout\,
	dataf => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	combout => \CPU|REGIGUAL|DOUT~2_combout\);

\CPU|MUX1|saida_MUX[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~10_combout\ = (\ROM1|memROM~2_combout\ & \CPU|DECODER1|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~10_combout\);

\CPU|REGIGUAL|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~3_combout\ = ( \CPU|ULA1|saida[0]~0_combout\ & ( (\CPU|DECODER1|Equal7~2_combout\ & (!\CPU|MUX1|saida_MUX[2]~10_combout\ & ((!\CPU|MUX1|saida_MUX[1]~1_combout\) # (!\RAM1|ram~540_combout\)))) ) ) # ( !\CPU|ULA1|saida[0]~0_combout\ & ( 
-- \CPU|DECODER1|Equal7~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101000000000001010101010101010101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal7~2_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \RAM1|ALT_INV_ram~540_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[2]~10_combout\,
	datae => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	combout => \CPU|REGIGUAL|DOUT~3_combout\);

\CPU|MUX1|saida_MUX[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~11_combout\ = (\ROM1|memROM~19_combout\ & \CPU|DECODER1|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~19_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~11_combout\);

\CPU|REGIGUAL|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~4_combout\ = ( \CPU|MUX1|saida_MUX[3]~11_combout\ & ( \CPU|ULA1|saida[0]~0_combout\ ) ) # ( !\CPU|MUX1|saida_MUX[3]~11_combout\ & ( \CPU|ULA1|saida[0]~0_combout\ & ( (\CPU|MUX1|saida_MUX[1]~1_combout\ & ((\RAM1|ram~542_combout\) # 
-- (\RAM1|ram~536_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~536_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datad => \RAM1|ALT_INV_ram~542_combout\,
	datae => \CPU|MUX1|ALT_INV_saida_MUX[3]~11_combout\,
	dataf => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	combout => \CPU|REGIGUAL|DOUT~4_combout\);

\CPU|REGIGUAL|DOUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~5_combout\ = ( \CPU|REGIGUAL|DOUT~3_combout\ & ( !\CPU|REGIGUAL|DOUT~4_combout\ & ( (!\CPU|REGIGUAL|DOUT~1_combout\ & (!\CPU|REGIGUAL|DOUT~2_combout\ & ((!\CPU|MUX1|saida_MUX[0]~0_combout\) # (!\CPU|ULA1|saida[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|REGIGUAL|ALT_INV_DOUT~1_combout\,
	datad => \CPU|REGIGUAL|ALT_INV_DOUT~2_combout\,
	datae => \CPU|REGIGUAL|ALT_INV_DOUT~3_combout\,
	dataf => \CPU|REGIGUAL|ALT_INV_DOUT~4_combout\,
	combout => \CPU|REGIGUAL|DOUT~5_combout\);

\CPU|REGIGUAL|DOUT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~6_combout\ = ( \CPU|ULA1|saida[0]~0_combout\ & ( \CPU|REGIGUAL|DOUT~5_combout\ ) ) # ( !\CPU|ULA1|saida[0]~0_combout\ & ( \CPU|REGIGUAL|DOUT~5_combout\ & ( (!\CPU|ULA1|Add0~1_sumout\ & (!\CPU|ULA1|Add0~5_sumout\ & 
-- (!\CPU|ULA1|Add0~9_sumout\ & !\CPU|ULA1|Add0~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	datae => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	dataf => \CPU|REGIGUAL|ALT_INV_DOUT~5_combout\,
	combout => \CPU|REGIGUAL|DOUT~6_combout\);

\CPU|REGIGUAL|DOUT~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~7_combout\ = (!\CPU|ULA1|saida[0]~0_combout\ & ((\CPU|ULA1|Add0~21_sumout\) # (\CPU|ULA1|Add0~17_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	datac => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	combout => \CPU|REGIGUAL|DOUT~7_combout\);

\CPU|REGIGUAL|DOUT~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGIGUAL|DOUT~8_combout\ = ( \CPU|REGIGUAL|DOUT~6_combout\ & ( \CPU|REGIGUAL|DOUT~7_combout\ & ( \CPU|REGIGUAL|DOUT~0_combout\ ) ) ) # ( !\CPU|REGIGUAL|DOUT~6_combout\ & ( \CPU|REGIGUAL|DOUT~7_combout\ & ( \CPU|REGIGUAL|DOUT~0_combout\ ) ) ) # ( 
-- \CPU|REGIGUAL|DOUT~6_combout\ & ( !\CPU|REGIGUAL|DOUT~7_combout\ & ( (((!\CPU|ULA1|Add0~25_sumout\ & !\CPU|ULA1|Add0~29_sumout\)) # (\CPU|REGIGUAL|DOUT~0_combout\)) # (\CPU|ULA1|saida[0]~0_combout\) ) ) ) # ( !\CPU|REGIGUAL|DOUT~6_combout\ & ( 
-- !\CPU|REGIGUAL|DOUT~7_combout\ & ( \CPU|REGIGUAL|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111100011111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	datac => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datad => \CPU|REGIGUAL|ALT_INV_DOUT~0_combout\,
	datae => \CPU|REGIGUAL|ALT_INV_DOUT~6_combout\,
	dataf => \CPU|REGIGUAL|ALT_INV_DOUT~7_combout\,
	combout => \CPU|REGIGUAL|DOUT~8_combout\);

\CPU|REGIGUAL|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGIGUAL|DOUT~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGIGUAL|DOUT~q\);

\CPU|MUXPC|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|Equal1~0_combout\ = ( \CPU|REGIGUAL|DOUT~q\ & ( (!\ROM1|memROM~16_combout\ & (((\ROM1|memROM~15_combout\ & \CPU|DECODER1|Equal7~0_combout\)))) # (\ROM1|memROM~16_combout\ & (\CPU|DECODER1|Equal3~0_combout\ & ((!\CPU|DECODER1|Equal7~0_combout\) 
-- # (\ROM1|memROM~15_combout\)))) ) ) # ( !\CPU|REGIGUAL|DOUT~q\ & ( (!\ROM1|memROM~15_combout\ & (\CPU|DECODER1|Equal3~0_combout\ & (\ROM1|memROM~16_combout\ & !\CPU|DECODER1|Equal7~0_combout\))) # (\ROM1|memROM~15_combout\ & (((!\ROM1|memROM~16_combout\ & 
-- \CPU|DECODER1|Equal7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110000000001010011000100000100001100000000010100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	datae => \CPU|REGIGUAL|ALT_INV_DOUT~q\,
	combout => \CPU|MUXPC|Equal1~0_combout\);

\CPU|REGRET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~25_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(6));

\CPU|MUXPC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[6]~6_combout\ = ( \CPU|REGRET|DOUT\(6) & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & (((!\CPU|MUXPC|Equal1~0_combout\)) # (\ROM1|memROM~21_combout\))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (((\CPU|SOMPC|Add0~25_sumout\)))) ) ) # ( 
-- !\CPU|REGRET|DOUT\(6) & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & (\ROM1|memROM~21_combout\ & (\CPU|MUXPC|Equal1~0_combout\))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (((\CPU|SOMPC|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~21_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	datac => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datad => \CPU|SOMPC|ALT_INV_Add0~25_sumout\,
	datae => \CPU|REGRET|ALT_INV_DOUT\(6),
	combout => \CPU|MUXPC|saida_MUX[6]~6_combout\);

\CPU|PC1|dataOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUXPC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(6));

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT\(6) & (!\CPU|PC1|dataOUT\(7) & !\CPU|PC1|dataOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(4),
	datab => \CPU|PC1|ALT_INV_dataOUT\(6),
	datac => \CPU|PC1|ALT_INV_dataOUT\(7),
	datad => \CPU|PC1|ALT_INV_dataOUT\(8),
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~15_combout\);

\CPU|PC1|dataOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC1|dataOUT[2]~0_combout\ = ( \CPU|REGIGUAL|DOUT~q\ & ( (!\ROM1|memROM~16_combout\ & (((!\ROM1|memROM~15_combout\) # (!\CPU|DECODER1|Equal7~0_combout\)))) # (\ROM1|memROM~16_combout\ & (!\CPU|DECODER1|Equal3~0_combout\ & 
-- ((!\CPU|DECODER1|Equal7~0_combout\) # (\ROM1|memROM~15_combout\)))) ) ) # ( !\CPU|REGIGUAL|DOUT~q\ & ( (!\ROM1|memROM~15_combout\ & ((!\ROM1|memROM~16_combout\) # ((!\CPU|DECODER1|Equal3~0_combout\ & !\CPU|DECODER1|Equal7~0_combout\)))) # 
-- (\ROM1|memROM~15_combout\ & (((!\CPU|DECODER1|Equal7~0_combout\) # (\ROM1|memROM~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111000011111110101100001011111011110000111111101011000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	datae => \CPU|REGIGUAL|ALT_INV_DOUT~q\,
	combout => \CPU|PC1|dataOUT[2]~0_combout\);

\CPU|REGRET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~13_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(3));

\CPU|MUXPC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[3]~3_combout\ = ( \CPU|REGRET|DOUT\(3) & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & ((!\CPU|MUXPC|Equal1~0_combout\) # ((\ROM1|memROM~19_combout\)))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (((\CPU|SOMPC|Add0~13_sumout\)))) ) ) # ( 
-- !\CPU|REGRET|DOUT\(3) & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & (\CPU|MUXPC|Equal1~0_combout\ & ((\ROM1|memROM~19_combout\)))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (((\CPU|SOMPC|Add0~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111100011011010111100000101001001111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	datab => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|SOMPC|ALT_INV_Add0~13_sumout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \CPU|REGRET|ALT_INV_DOUT\(3),
	combout => \CPU|MUXPC|saida_MUX[3]~3_combout\);

\CPU|PC1|dataOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUXPC|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(3));

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \CPU|PC1|dataOUT\(5) & ( (!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(2) & !\CPU|PC1|dataOUT\(3)))) ) ) # ( !\CPU|PC1|dataOUT\(5) & ( (!\CPU|PC1|dataOUT\(0) & (\CPU|PC1|dataOUT\(1) & 
-- (\CPU|PC1|dataOUT\(2) & !\CPU|PC1|dataOUT\(3)))) # (\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(2) & \CPU|PC1|dataOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000100000000000000000000010010000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	datae => \CPU|PC1|ALT_INV_dataOUT\(5),
	combout => \ROM1|memROM~10_combout\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~13_combout\);

\CPU|REGRET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~21_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(5));

\CPU|MUXPC|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[5]~5_combout\ = ( \CPU|REGRET|DOUT\(5) & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & (((!\CPU|MUXPC|Equal1~0_combout\)) # (\ROM1|memROM~13_combout\))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (((\CPU|SOMPC|Add0~21_sumout\)))) ) ) # ( 
-- !\CPU|REGRET|DOUT\(5) & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & (\ROM1|memROM~13_combout\ & (\CPU|MUXPC|Equal1~0_combout\))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (((\CPU|SOMPC|Add0~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	datac => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datad => \CPU|SOMPC|ALT_INV_Add0~21_sumout\,
	datae => \CPU|REGRET|ALT_INV_DOUT\(5),
	combout => \CPU|MUXPC|saida_MUX[5]~5_combout\);

\CPU|PC1|dataOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUXPC|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(5));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1) & (\CPU|PC1|dataOUT\(5) & !\CPU|PC1|dataOUT\(3)))) # (\CPU|PC1|dataOUT\(0) & (\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(5) & \CPU|PC1|dataOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000010000000010000001000000001000000100000000100000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(5),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\CPU|PC1|dataOUT\(2) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(2),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

\CPU|REGRET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~9_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(2));

\CPU|MUXPC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[2]~2_combout\ = ( \CPU|REGRET|DOUT\(2) & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & (((!\CPU|MUXPC|Equal1~0_combout\)) # (\ROM1|memROM~2_combout\))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (((\CPU|SOMPC|Add0~9_sumout\)))) ) ) # ( 
-- !\CPU|REGRET|DOUT\(2) & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & (\ROM1|memROM~2_combout\ & (\CPU|MUXPC|Equal1~0_combout\))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (((\CPU|SOMPC|Add0~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	datac => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datad => \CPU|SOMPC|ALT_INV_Add0~9_sumout\,
	datae => \CPU|REGRET|ALT_INV_DOUT\(2),
	combout => \CPU|MUXPC|saida_MUX[2]~2_combout\);

\CPU|PC1|dataOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUXPC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(2));

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \CPU|PC1|dataOUT\(5) & ( (!\CPU|PC1|dataOUT\(3) & ((!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1))) # (\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(2)))))) ) ) # ( !\CPU|PC1|dataOUT\(5) & ( (!\CPU|PC1|dataOUT\(0) & 
-- (!\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT\(1) $ (!\CPU|PC1|dataOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000110110000000000000100000100000001101100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	datae => \CPU|PC1|ALT_INV_dataOUT\(5),
	combout => \ROM1|memROM~12_combout\);

\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ROM1|memROM~17_combout\);

\CPU|REGRET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~5_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(1));

\CPU|MUXPC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[1]~1_combout\ = ( \CPU|REGRET|DOUT\(1) & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & (((!\CPU|MUXPC|Equal1~0_combout\)) # (\ROM1|memROM~17_combout\))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (((\CPU|SOMPC|Add0~5_sumout\)))) ) ) # ( 
-- !\CPU|REGRET|DOUT\(1) & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & (\ROM1|memROM~17_combout\ & (\CPU|MUXPC|Equal1~0_combout\))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (((\CPU|SOMPC|Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	datac => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datad => \CPU|SOMPC|ALT_INV_Add0~5_sumout\,
	datae => \CPU|REGRET|ALT_INV_DOUT\(1),
	combout => \CPU|MUXPC|saida_MUX[1]~1_combout\);

\CPU|PC1|dataOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUXPC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(1));

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \CPU|PC1|dataOUT\(5) & ( (!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(2) & !\CPU|PC1|dataOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	datae => \CPU|PC1|ALT_INV_dataOUT\(5),
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~20_combout\);

\CPU|REGRET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~17_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(4));

\CPU|MUXPC|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[4]~4_combout\ = ( \CPU|REGRET|DOUT\(4) & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & (((!\CPU|MUXPC|Equal1~0_combout\)) # (\ROM1|memROM~20_combout\))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (((\CPU|SOMPC|Add0~17_sumout\)))) ) ) # ( 
-- !\CPU|REGRET|DOUT\(4) & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & (\ROM1|memROM~20_combout\ & (\CPU|MUXPC|Equal1~0_combout\))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (((\CPU|SOMPC|Add0~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	datac => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datad => \CPU|SOMPC|ALT_INV_Add0~17_sumout\,
	datae => \CPU|REGRET|ALT_INV_DOUT\(4),
	combout => \CPU|MUXPC|saida_MUX[4]~4_combout\);

\CPU|PC1|dataOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUXPC|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(4));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT\(6) & (!\CPU|PC1|dataOUT\(7) & !\CPU|PC1|dataOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(4),
	datab => \CPU|PC1|ALT_INV_dataOUT\(6),
	datac => \CPU|PC1|ALT_INV_dataOUT\(7),
	datad => \CPU|PC1|ALT_INV_dataOUT\(8),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~14_combout\);

\CPU|REGRET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~1_sumout\,
	ena => \CPU|DECODER1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGRET|DOUT\(0));

\CPU|MUXPC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[0]~0_combout\ = ( \CPU|REGRET|DOUT\(0) & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & (((!\CPU|MUXPC|Equal1~0_combout\)) # (\ROM1|memROM~14_combout\))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (((\CPU|SOMPC|Add0~1_sumout\)))) ) ) # ( 
-- !\CPU|REGRET|DOUT\(0) & ( (!\CPU|PC1|dataOUT[2]~0_combout\ & (\ROM1|memROM~14_combout\ & ((\CPU|MUXPC|Equal1~0_combout\)))) # (\CPU|PC1|dataOUT[2]~0_combout\ & (((\CPU|SOMPC|Add0~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011111100110101001100000011010100111111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \CPU|SOMPC|ALT_INV_Add0~1_sumout\,
	datac => \CPU|PC1|ALT_INV_dataOUT[2]~0_combout\,
	datad => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datae => \CPU|REGRET|ALT_INV_DOUT\(0),
	combout => \CPU|MUXPC|saida_MUX[0]~0_combout\);

\CPU|PC1|dataOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUXPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(0));

\CPU|ULA1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal2~0_combout\ = (\ROM1|memROM~1_combout\ & (((\CPU|PC1|dataOUT\(0) & \ROM1|memROM~4_combout\)) # (\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011000000110001001100000011000100110000001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|ULA1|Equal2~0_combout\);

\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

\ANDHEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX0~0_combout\ = ( !\ROM1|memROM~9_combout\ & ( (!\CPU|PC1|dataOUT\(3) & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~7_combout\ & \ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(3),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ANDHEX0~0_combout\);

\ANDHEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX0~1_combout\ = (!\ROM1|memROM~2_combout\ & (\CPU|DECODER1|Equal3~0_combout\ & (\CPU|DECODER1|Equal4~0_combout\ & \ANDHEX0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	datac => \CPU|DECODER1|ALT_INV_Equal4~0_combout\,
	datad => \ALT_INV_ANDHEX0~0_combout\,
	combout => \ANDHEX0~1_combout\);

\ANDHEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX1~0_combout\ = (\ROM1|memROM~1_combout\ & (\ROM1|memROM~11_combout\ & !\ROM1|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ANDHEX1~0_combout\);

\REGLED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLED8|DOUT~0_combout\ = ( \ANDHEX1~0_combout\ & ( (!\ANDHEX0~1_combout\ & (\REGLED8|DOUT~q\)) # (\ANDHEX0~1_combout\ & ((!\ROM1|memROM~13_combout\ & ((\CPU|REG1|DOUT\(0)))) # (\ROM1|memROM~13_combout\ & (\REGLED8|DOUT~q\)))) ) ) # ( 
-- !\ANDHEX1~0_combout\ & ( \REGLED8|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100110101010101010101010101010101001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGLED8|ALT_INV_DOUT~q\,
	datab => \CPU|REG1|ALT_INV_DOUT\(0),
	datac => \ALT_INV_ANDHEX0~1_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \ALT_INV_ANDHEX1~0_combout\,
	combout => \REGLED8|DOUT~0_combout\);

\REGLED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \REGLED8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED8|DOUT~q\);

\ANDHEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX2~0_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~11_combout\ & \ROM1|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ANDHEX2~0_combout\);

\REGLED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLED9|DOUT~0_combout\ = ( \ANDHEX2~0_combout\ & ( (!\ANDHEX0~1_combout\ & (\REGLED9|DOUT~q\)) # (\ANDHEX0~1_combout\ & ((!\ROM1|memROM~13_combout\ & ((\CPU|REG1|DOUT\(0)))) # (\ROM1|memROM~13_combout\ & (\REGLED9|DOUT~q\)))) ) ) # ( 
-- !\ANDHEX2~0_combout\ & ( \REGLED9|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100110101010101010101010101010101001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGLED9|ALT_INV_DOUT~q\,
	datab => \CPU|REG1|ALT_INV_DOUT\(0),
	datac => \ALT_INV_ANDHEX0~1_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \ALT_INV_ANDHEX2~0_combout\,
	combout => \REGLED9|DOUT~0_combout\);

\REGLED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \REGLED9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED9|DOUT~q\);

\SWITCH[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(1),
	o => \SWITCH[1]~input_o\);

\SWITCH[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(2),
	o => \SWITCH[2]~input_o\);

\SWITCH[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(3),
	o => \SWITCH[3]~input_o\);

\SWITCH[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(4),
	o => \SWITCH[4]~input_o\);

\SWITCH[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(5),
	o => \SWITCH[5]~input_o\);

\SWITCH[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(6),
	o => \SWITCH[6]~input_o\);

\SWITCH[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(7),
	o => \SWITCH[7]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LED8 <= \LED8~output_o\;

ww_LED9 <= \LED9~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_DEBUGROM(0) <= \DEBUGROM[0]~output_o\;

ww_DEBUGROM(1) <= \DEBUGROM[1]~output_o\;

ww_DEBUGROM(2) <= \DEBUGROM[2]~output_o\;

ww_DEBUGROM(3) <= \DEBUGROM[3]~output_o\;

ww_DEBUGROM(4) <= \DEBUGROM[4]~output_o\;

ww_DEBUGROM(5) <= \DEBUGROM[5]~output_o\;

ww_DEBUGROM(6) <= \DEBUGROM[6]~output_o\;

ww_DEBUGROM(7) <= \DEBUGROM[7]~output_o\;

ww_DEBUGROM(8) <= \DEBUGROM[8]~output_o\;
END structure;


