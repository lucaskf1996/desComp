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

-- DATE "09/19/2021 16:15:49"

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
SIGNAL \SWITCH[0]~input_o\ : std_logic;
SIGNAL \SWITCH[8]~input_o\ : std_logic;
SIGNAL \SWITCH[9]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
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
SIGNAL \CPU|SOMPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~18\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \CPU|DESVIO|Sel[0]~0_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~22\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~25_sumout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~26\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~30\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~2\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~6\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~10\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~14\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal1~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \DEC3X8|Mux7~0_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \RAM1|ram~546_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Sinais_Controle[4]~0_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~140_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~52_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~141_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~68_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~143_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~60_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~144_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~20_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~145_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~36_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~147_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~28_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~146_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~12_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~108_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~142_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~44_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~76_combout\ : std_logic;
SIGNAL \DEC3X8|Mux7~1_combout\ : std_logic;
SIGNAL \RAM1|dado_out~0_combout\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \Data_IN[1]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~53_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~69_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~61_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~21_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~37_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~29_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~13_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~112_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~45_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~80_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~41_q\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \Data_IN[2]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~54_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~70_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~62_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~22_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~38_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~30_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~14_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~116_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~46_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~84_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~42_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \Data_IN[3]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~55_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~71_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~63_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~23_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~39_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~31_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~15_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~120_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~47_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~88_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~43_q\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \Data_IN[4]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~56_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~72_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~64_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~24_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~40_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~32_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~16_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~124_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~48_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~92_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~44_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \Data_IN[5]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~57_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~73_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~65_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~25_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~41_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~33_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~17_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~128_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~49_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~96_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~45_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \Data_IN[6]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~58_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~74_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~66_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~26_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~42_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~34_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~18_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~132_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~50_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~100_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~46_q\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \RAM1|ram~545_combout\ : std_logic;
SIGNAL \Data_IN[7]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~59_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~75_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~67_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~27_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~43_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~35_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~19_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~136_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~51_q\ : std_logic;
SIGNAL \CPU|nomeComponente|registrador~104_combout\ : std_logic;
SIGNAL \DEC3X8|Mux7~2_combout\ : std_logic;
SIGNAL \REGLED8|DOUT~0_combout\ : std_logic;
SIGNAL \REGLED8|DOUT~q\ : std_logic;
SIGNAL \REGLED9|DOUT~0_combout\ : std_logic;
SIGNAL \REGLED9|DOUT~q\ : std_logic;
SIGNAL \REGLEDR|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC1|dataOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[7]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[6]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[5]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[4]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[1]~0_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~37_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~36_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~136_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~75_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~132_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~74_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~128_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~73_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~124_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~72_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~120_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~71_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~116_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~70_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~112_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~108_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~104_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~100_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~96_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~92_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~88_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~84_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~80_combout\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~76_combout\ : std_logic;
SIGNAL \CPU|PC1|ALT_INV_dataOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Sinais_Controle[4]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \DEC3X8|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \DEC3X8|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REGLED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \REGLED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \CPU|nomeComponente|ALT_INV_registrador~31_q\ : std_logic;

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
\RAM1|ALT_INV_dado_out~0_combout\ <= NOT \RAM1|dado_out~0_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ALT_INV_Data_IN[7]~6_combout\ <= NOT \Data_IN[7]~6_combout\;
\ALT_INV_Data_IN[6]~5_combout\ <= NOT \Data_IN[6]~5_combout\;
\ALT_INV_Data_IN[5]~4_combout\ <= NOT \Data_IN[5]~4_combout\;
\ALT_INV_Data_IN[4]~3_combout\ <= NOT \Data_IN[4]~3_combout\;
\ALT_INV_Data_IN[3]~2_combout\ <= NOT \Data_IN[3]~2_combout\;
\ALT_INV_Data_IN[2]~1_combout\ <= NOT \Data_IN[2]~1_combout\;
\ALT_INV_Data_IN[1]~0_combout\ <= NOT \Data_IN[1]~0_combout\;
\CPU|nomeComponente|ALT_INV_registrador~15_q\ <= NOT \CPU|nomeComponente|registrador~15_q\;
\CPU|nomeComponente|ALT_INV_registrador~39_q\ <= NOT \CPU|nomeComponente|registrador~39_q\;
\CPU|nomeComponente|ALT_INV_registrador~23_q\ <= NOT \CPU|nomeComponente|registrador~23_q\;
\CPU|nomeComponente|ALT_INV_registrador~30_q\ <= NOT \CPU|nomeComponente|registrador~30_q\;
\CPU|nomeComponente|ALT_INV_registrador~14_q\ <= NOT \CPU|nomeComponente|registrador~14_q\;
\CPU|nomeComponente|ALT_INV_registrador~38_q\ <= NOT \CPU|nomeComponente|registrador~38_q\;
\CPU|nomeComponente|ALT_INV_registrador~22_q\ <= NOT \CPU|nomeComponente|registrador~22_q\;
\CPU|nomeComponente|ALT_INV_registrador~29_q\ <= NOT \CPU|nomeComponente|registrador~29_q\;
\CPU|nomeComponente|ALT_INV_registrador~13_q\ <= NOT \CPU|nomeComponente|registrador~13_q\;
\CPU|nomeComponente|ALT_INV_registrador~37_q\ <= NOT \CPU|nomeComponente|registrador~37_q\;
\CPU|nomeComponente|ALT_INV_registrador~21_q\ <= NOT \CPU|nomeComponente|registrador~21_q\;
\CPU|nomeComponente|ALT_INV_registrador~28_q\ <= NOT \CPU|nomeComponente|registrador~28_q\;
\CPU|nomeComponente|ALT_INV_registrador~12_q\ <= NOT \CPU|nomeComponente|registrador~12_q\;
\CPU|nomeComponente|ALT_INV_registrador~36_q\ <= NOT \CPU|nomeComponente|registrador~36_q\;
\CPU|nomeComponente|ALT_INV_registrador~20_q\ <= NOT \CPU|nomeComponente|registrador~20_q\;
\CPU|nomeComponente|ALT_INV_registrador~67_q\ <= NOT \CPU|nomeComponente|registrador~67_q\;
\CPU|nomeComponente|ALT_INV_registrador~136_combout\ <= NOT \CPU|nomeComponente|registrador~136_combout\;
\CPU|nomeComponente|ALT_INV_registrador~51_q\ <= NOT \CPU|nomeComponente|registrador~51_q\;
\CPU|nomeComponente|ALT_INV_registrador~75_q\ <= NOT \CPU|nomeComponente|registrador~75_q\;
\CPU|nomeComponente|ALT_INV_registrador~59_q\ <= NOT \CPU|nomeComponente|registrador~59_q\;
\CPU|nomeComponente|ALT_INV_registrador~66_q\ <= NOT \CPU|nomeComponente|registrador~66_q\;
\CPU|nomeComponente|ALT_INV_registrador~132_combout\ <= NOT \CPU|nomeComponente|registrador~132_combout\;
\CPU|nomeComponente|ALT_INV_registrador~50_q\ <= NOT \CPU|nomeComponente|registrador~50_q\;
\CPU|nomeComponente|ALT_INV_registrador~74_q\ <= NOT \CPU|nomeComponente|registrador~74_q\;
\CPU|nomeComponente|ALT_INV_registrador~58_q\ <= NOT \CPU|nomeComponente|registrador~58_q\;
\CPU|nomeComponente|ALT_INV_registrador~65_q\ <= NOT \CPU|nomeComponente|registrador~65_q\;
\CPU|nomeComponente|ALT_INV_registrador~128_combout\ <= NOT \CPU|nomeComponente|registrador~128_combout\;
\CPU|nomeComponente|ALT_INV_registrador~49_q\ <= NOT \CPU|nomeComponente|registrador~49_q\;
\CPU|nomeComponente|ALT_INV_registrador~73_q\ <= NOT \CPU|nomeComponente|registrador~73_q\;
\CPU|nomeComponente|ALT_INV_registrador~57_q\ <= NOT \CPU|nomeComponente|registrador~57_q\;
\CPU|nomeComponente|ALT_INV_registrador~64_q\ <= NOT \CPU|nomeComponente|registrador~64_q\;
\CPU|nomeComponente|ALT_INV_registrador~124_combout\ <= NOT \CPU|nomeComponente|registrador~124_combout\;
\CPU|nomeComponente|ALT_INV_registrador~48_q\ <= NOT \CPU|nomeComponente|registrador~48_q\;
\CPU|nomeComponente|ALT_INV_registrador~72_q\ <= NOT \CPU|nomeComponente|registrador~72_q\;
\CPU|nomeComponente|ALT_INV_registrador~56_q\ <= NOT \CPU|nomeComponente|registrador~56_q\;
\CPU|nomeComponente|ALT_INV_registrador~63_q\ <= NOT \CPU|nomeComponente|registrador~63_q\;
\CPU|nomeComponente|ALT_INV_registrador~120_combout\ <= NOT \CPU|nomeComponente|registrador~120_combout\;
\CPU|nomeComponente|ALT_INV_registrador~47_q\ <= NOT \CPU|nomeComponente|registrador~47_q\;
\CPU|nomeComponente|ALT_INV_registrador~71_q\ <= NOT \CPU|nomeComponente|registrador~71_q\;
\CPU|nomeComponente|ALT_INV_registrador~55_q\ <= NOT \CPU|nomeComponente|registrador~55_q\;
\CPU|nomeComponente|ALT_INV_registrador~62_q\ <= NOT \CPU|nomeComponente|registrador~62_q\;
\CPU|nomeComponente|ALT_INV_registrador~116_combout\ <= NOT \CPU|nomeComponente|registrador~116_combout\;
\CPU|nomeComponente|ALT_INV_registrador~46_q\ <= NOT \CPU|nomeComponente|registrador~46_q\;
\CPU|nomeComponente|ALT_INV_registrador~70_q\ <= NOT \CPU|nomeComponente|registrador~70_q\;
\CPU|nomeComponente|ALT_INV_registrador~54_q\ <= NOT \CPU|nomeComponente|registrador~54_q\;
\CPU|nomeComponente|ALT_INV_registrador~61_q\ <= NOT \CPU|nomeComponente|registrador~61_q\;
\CPU|nomeComponente|ALT_INV_registrador~112_combout\ <= NOT \CPU|nomeComponente|registrador~112_combout\;
\CPU|nomeComponente|ALT_INV_registrador~45_q\ <= NOT \CPU|nomeComponente|registrador~45_q\;
\CPU|nomeComponente|ALT_INV_registrador~69_q\ <= NOT \CPU|nomeComponente|registrador~69_q\;
\CPU|nomeComponente|ALT_INV_registrador~53_q\ <= NOT \CPU|nomeComponente|registrador~53_q\;
\CPU|nomeComponente|ALT_INV_registrador~60_q\ <= NOT \CPU|nomeComponente|registrador~60_q\;
\CPU|nomeComponente|ALT_INV_registrador~108_combout\ <= NOT \CPU|nomeComponente|registrador~108_combout\;
\CPU|nomeComponente|ALT_INV_registrador~44_q\ <= NOT \CPU|nomeComponente|registrador~44_q\;
\CPU|nomeComponente|ALT_INV_registrador~68_q\ <= NOT \CPU|nomeComponente|registrador~68_q\;
\CPU|nomeComponente|ALT_INV_registrador~52_q\ <= NOT \CPU|nomeComponente|registrador~52_q\;
\CPU|nomeComponente|ALT_INV_registrador~104_combout\ <= NOT \CPU|nomeComponente|registrador~104_combout\;
\CPU|nomeComponente|ALT_INV_registrador~100_combout\ <= NOT \CPU|nomeComponente|registrador~100_combout\;
\CPU|nomeComponente|ALT_INV_registrador~96_combout\ <= NOT \CPU|nomeComponente|registrador~96_combout\;
\CPU|nomeComponente|ALT_INV_registrador~92_combout\ <= NOT \CPU|nomeComponente|registrador~92_combout\;
\CPU|nomeComponente|ALT_INV_registrador~88_combout\ <= NOT \CPU|nomeComponente|registrador~88_combout\;
\CPU|nomeComponente|ALT_INV_registrador~84_combout\ <= NOT \CPU|nomeComponente|registrador~84_combout\;
\CPU|nomeComponente|ALT_INV_registrador~80_combout\ <= NOT \CPU|nomeComponente|registrador~80_combout\;
\CPU|nomeComponente|ALT_INV_registrador~76_combout\ <= NOT \CPU|nomeComponente|registrador~76_combout\;
\CPU|PC1|ALT_INV_dataOUT\(8) <= NOT \CPU|PC1|dataOUT\(8);
\CPU|PC1|ALT_INV_dataOUT\(7) <= NOT \CPU|PC1|dataOUT\(7);
\CPU|PC1|ALT_INV_dataOUT\(6) <= NOT \CPU|PC1|dataOUT\(6);
\CPU|PC1|ALT_INV_dataOUT\(5) <= NOT \CPU|PC1|dataOUT\(5);
\CPU|PC1|ALT_INV_dataOUT\(4) <= NOT \CPU|PC1|dataOUT\(4);
\CPU|PC1|ALT_INV_dataOUT\(3) <= NOT \CPU|PC1|dataOUT\(3);
\CPU|PC1|ALT_INV_dataOUT\(2) <= NOT \CPU|PC1|dataOUT\(2);
\CPU|PC1|ALT_INV_dataOUT\(1) <= NOT \CPU|PC1|dataOUT\(1);
\CPU|PC1|ALT_INV_dataOUT\(0) <= NOT \CPU|PC1|dataOUT\(0);
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\CPU|DECODER1|ALT_INV_Equal1~1_combout\ <= NOT \CPU|DECODER1|Equal1~1_combout\;
\RAM1|ALT_INV_ram~545_combout\ <= NOT \RAM1|ram~545_combout\;
\RAM1|ALT_INV_ram~544_combout\ <= NOT \RAM1|ram~544_combout\;
\RAM1|ALT_INV_ram~46_q\ <= NOT \RAM1|ram~46_q\;
\RAM1|ALT_INV_ram~543_combout\ <= NOT \RAM1|ram~543_combout\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~542_combout\ <= NOT \RAM1|ram~542_combout\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~541_combout\ <= NOT \RAM1|ram~541_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~540_combout\ <= NOT \RAM1|ram~540_combout\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\RAM1|ALT_INV_ram~45_q\ <= NOT \RAM1|ram~45_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~537_combout\ <= NOT \RAM1|ram~537_combout\;
\RAM1|ALT_INV_ram~44_q\ <= NOT \RAM1|ram~44_q\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~43_q\ <= NOT \RAM1|ram~43_q\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~42_q\ <= NOT \RAM1|ram~42_q\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~41_q\ <= NOT \RAM1|ram~41_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\CPU|DECODER1|ALT_INV_Sinais_Controle[4]~0_combout\ <= NOT \CPU|DECODER1|Sinais_Controle[4]~0_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\RAM1|ALT_INV_ram~528_combout\ <= NOT \RAM1|ram~528_combout\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\CPU|DECODER1|ALT_INV_Equal1~0_combout\ <= NOT \CPU|DECODER1|Equal1~0_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\DEC3X8|ALT_INV_Mux7~2_combout\ <= NOT \DEC3X8|Mux7~2_combout\;
\DEC3X8|ALT_INV_Mux7~0_combout\ <= NOT \DEC3X8|Mux7~0_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\REGLED9|ALT_INV_DOUT~q\ <= NOT \REGLED9|DOUT~q\;
\REGLED8|ALT_INV_DOUT~q\ <= NOT \REGLED8|DOUT~q\;
\CPU|nomeComponente|ALT_INV_registrador~35_q\ <= NOT \CPU|nomeComponente|registrador~35_q\;
\CPU|nomeComponente|ALT_INV_registrador~19_q\ <= NOT \CPU|nomeComponente|registrador~19_q\;
\CPU|nomeComponente|ALT_INV_registrador~43_q\ <= NOT \CPU|nomeComponente|registrador~43_q\;
\CPU|nomeComponente|ALT_INV_registrador~27_q\ <= NOT \CPU|nomeComponente|registrador~27_q\;
\CPU|nomeComponente|ALT_INV_registrador~34_q\ <= NOT \CPU|nomeComponente|registrador~34_q\;
\CPU|nomeComponente|ALT_INV_registrador~18_q\ <= NOT \CPU|nomeComponente|registrador~18_q\;
\CPU|nomeComponente|ALT_INV_registrador~42_q\ <= NOT \CPU|nomeComponente|registrador~42_q\;
\CPU|nomeComponente|ALT_INV_registrador~26_q\ <= NOT \CPU|nomeComponente|registrador~26_q\;
\CPU|nomeComponente|ALT_INV_registrador~33_q\ <= NOT \CPU|nomeComponente|registrador~33_q\;
\CPU|nomeComponente|ALT_INV_registrador~17_q\ <= NOT \CPU|nomeComponente|registrador~17_q\;
\CPU|nomeComponente|ALT_INV_registrador~41_q\ <= NOT \CPU|nomeComponente|registrador~41_q\;
\CPU|nomeComponente|ALT_INV_registrador~25_q\ <= NOT \CPU|nomeComponente|registrador~25_q\;
\CPU|nomeComponente|ALT_INV_registrador~32_q\ <= NOT \CPU|nomeComponente|registrador~32_q\;
\CPU|nomeComponente|ALT_INV_registrador~16_q\ <= NOT \CPU|nomeComponente|registrador~16_q\;
\CPU|nomeComponente|ALT_INV_registrador~40_q\ <= NOT \CPU|nomeComponente|registrador~40_q\;
\CPU|nomeComponente|ALT_INV_registrador~24_q\ <= NOT \CPU|nomeComponente|registrador~24_q\;
\CPU|nomeComponente|ALT_INV_registrador~31_q\ <= NOT \CPU|nomeComponente|registrador~31_q\;

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGLEDR|DOUT\(0),
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
	i => \REGLEDR|DOUT\(1),
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
	i => \REGLEDR|DOUT\(2),
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
	i => \REGLEDR|DOUT\(3),
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
	i => \REGLEDR|DOUT\(4),
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
	i => \REGLEDR|DOUT\(5),
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
	i => \REGLEDR|DOUT\(6),
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
	i => \REGLEDR|DOUT\(7),
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

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(2) & \CPU|PC1|dataOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(2),
	datac => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (\CPU|PC1|dataOUT\(1) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(1),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~10_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = !\CPU|PC1|dataOUT\(3) $ (((!\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1)) # (!\CPU|PC1|dataOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011110101000010101111010100001010111101010000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~8_combout\);

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (\CPU|PC1|dataOUT\(2) & ((!\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(3)) # (\CPU|PC1|dataOUT\(1)))) # (\CPU|PC1|dataOUT\(0) & ((\CPU|PC1|dataOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000111000010100000011100001010000001110000101000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1) & (\CPU|PC1|dataOUT\(2) & !\CPU|PC1|dataOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~7_combout\);

\CPU|DESVIO|Sel[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO|Sel[0]~0_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~8_combout\ & (!\ROM1|memROM~9_combout\ & \ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|DESVIO|Sel[0]~0_combout\);

\CPU|PC1|dataOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~21_sumout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \CPU|DESVIO|Sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(5));

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

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\CPU|PC1|dataOUT\(1) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(1),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~4_combout\);

\CPU|PC1|dataOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~25_sumout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \CPU|DESVIO|Sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(6));

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

\CPU|PC1|dataOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~29_sumout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \CPU|DESVIO|Sel[0]~0_combout\,
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

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\CPU|PC1|dataOUT\(0) & (\CPU|PC1|dataOUT\(3) & ((!\CPU|PC1|dataOUT\(1)) # (!\CPU|PC1|dataOUT\(2))))) # (\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT\(1) $ (\CPU|PC1|dataOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110101000010000011010100001000001101010000100000110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~6_combout\);

\CPU|PC1|dataOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \CPU|DESVIO|Sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(8));

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (!\CPU|PC1|dataOUT\(0) & (((!\CPU|PC1|dataOUT\(2) & !\CPU|PC1|dataOUT\(3))))) # (\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT\(1))) # (\CPU|PC1|dataOUT\(2) & ((!\CPU|PC1|dataOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010101000000111001010100000011100101010000001110010101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~16_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\CPU|PC1|dataOUT\(8) & ( \ROM1|memROM~16_combout\ & ( (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT\(5) & (!\CPU|PC1|dataOUT\(6) & !\CPU|PC1|dataOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(4),
	datab => \CPU|PC1|ALT_INV_dataOUT\(5),
	datac => \CPU|PC1|ALT_INV_dataOUT\(6),
	datad => \CPU|PC1|ALT_INV_dataOUT\(7),
	datae => \CPU|PC1|ALT_INV_dataOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \ROM1|memROM~2_combout\);

\CPU|PC1|dataOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \CPU|DESVIO|Sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(0));

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

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = (!\CPU|PC1|dataOUT\(2) & (\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT\(0) $ (\CPU|PC1|dataOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010000000000001001000000000000100100000000000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~15_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU|PC1|dataOUT\(8) & ( \ROM1|memROM~15_combout\ & ( (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT\(5) & (!\CPU|PC1|dataOUT\(6) & !\CPU|PC1|dataOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(4),
	datab => \CPU|PC1|ALT_INV_dataOUT\(5),
	datac => \CPU|PC1|ALT_INV_dataOUT\(6),
	datad => \CPU|PC1|ALT_INV_dataOUT\(7),
	datae => \CPU|PC1|ALT_INV_dataOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \ROM1|memROM~1_combout\);

\CPU|PC1|dataOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~1_combout\,
	sload => \CPU|DESVIO|Sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(1));

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

\CPU|PC1|dataOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \CPU|DESVIO|Sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(2));

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

\CPU|PC1|dataOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \CPU|DESVIO|Sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(3));

\CPU|PC1|dataOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~17_sumout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \CPU|DESVIO|Sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(4));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\CPU|PC1|dataOUT\(8) & ( (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT\(5) & (!\CPU|PC1|dataOUT\(6) & !\CPU|PC1|dataOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(4),
	datab => \CPU|PC1|ALT_INV_dataOUT\(5),
	datac => \CPU|PC1|ALT_INV_dataOUT\(6),
	datad => \CPU|PC1|ALT_INV_dataOUT\(7),
	datae => \CPU|PC1|ALT_INV_dataOUT\(8),
	combout => \ROM1|memROM~0_combout\);

\CPU|DECODER1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal1~0_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~8_combout\ & (!\ROM1|memROM~9_combout\ & !\ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|DECODER1|Equal1~0_combout\);

\CPU|DECODER1|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal1~1_combout\ = (\ROM1|memROM~7_combout\ & ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~8_combout\ & \ROM1|memROM~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101110000000001010111000000000101011100000000010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|DECODER1|Equal1~1_combout\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~13_combout\);

\DEC3X8|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3X8|Mux7~0_combout\ = ( !\ROM1|memROM~9_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~8_combout\ & ((!\CPU|PC1|dataOUT\(1)) # (!\ROM1|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000000000000000000000001100100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(1),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \DEC3X8|Mux7~0_combout\);

\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~7_combout\ & \DEC3X8|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \DEC3X8|ALT_INV_Mux7~0_combout\,
	combout => \RAM1|process_0~0_combout\);

\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \RAM1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|ram~546_combout\);

\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~76_combout\,
	ena => \RAM1|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & \RAM1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|ram~547_combout\);

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~76_combout\,
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \RAM1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|ram~548_combout\);

\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~76_combout\,
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & \RAM1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|ram~549_combout\);

\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~76_combout\,
	ena => \RAM1|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~39_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~31_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( 
-- \RAM1|ram~23_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( \RAM1|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~15_q\,
	datab => \RAM1|ALT_INV_ram~23_q\,
	datac => \RAM1|ALT_INV_ram~31_q\,
	datad => \RAM1|ALT_INV_ram~39_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~527_combout\);

\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( \RAM1|ram~527_combout\ & ( !\ROM1|memROM~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~527_combout\,
	combout => \RAM1|ram~528_combout\);

\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( !\CPU|DECODER1|Equal1~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODER1|ALT_INV_Equal1~1_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|nomeComponente|registrador~76_combout\ ) + ( !\CPU|DECODER1|Equal1~1_combout\ $ (((!\CPU|DECODER1|Equal1~0_combout\ & ((\RAM1|ram~528_combout\))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~2_combout\)))) ) + ( 
-- \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|nomeComponente|registrador~76_combout\ ) + ( !\CPU|DECODER1|Equal1~1_combout\ $ (((!\CPU|DECODER1|Equal1~0_combout\ & ((\RAM1|ram~528_combout\))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~2_combout\)))) ) + ( 
-- \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111101011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|DECODER1|ALT_INV_Equal1~1_combout\,
	datad => \CPU|nomeComponente|ALT_INV_registrador~76_combout\,
	dataf => \RAM1|ALT_INV_ram~528_combout\,
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~0_combout\ = (!\CPU|DECODER1|Equal1~0_combout\ & ((\RAM1|ram~528_combout\))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal1~0_combout\,
	datac => \RAM1|ALT_INV_ram~528_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~0_combout\);

\CPU|ULA1|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~0_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~7_combout\ & (!\ROM1|memROM~8_combout\ $ (\ROM1|memROM~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100000000010000010000000001000001000000000100000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|ULA1|saida[1]~0_combout\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (!\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT\(3) & \ROM1|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(1),
	datab => \CPU|PC1|ALT_INV_dataOUT\(2),
	datac => \CPU|PC1|ALT_INV_dataOUT\(3),
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~11_combout\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \ROM1|memROM~0_combout\ & ( (\CPU|PC1|dataOUT\(3) & ((!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1) & \CPU|PC1|dataOUT\(2))) # (\CPU|PC1|dataOUT\(0) & (\CPU|PC1|dataOUT\(1) & !\CPU|PC1|dataOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001100000000000000000000000000000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~12_combout\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT\(1) $ (((!\CPU|PC1|dataOUT\(0) & \CPU|PC1|dataOUT\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000110000000000000000000001100000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~14_combout\);

\CPU|DECODER1|Sinais_Controle[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Sinais_Controle[4]~0_combout\ = (!\ROM1|memROM~0_combout\ & (((\ROM1|memROM~7_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~9_combout\ $ (((\ROM1|memROM~7_combout\) # (\ROM1|memROM~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110101111010000011010111101000001101011110100000110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|DECODER1|Sinais_Controle[4]~0_combout\);

\CPU|nomeComponente|registrador~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~140_combout\ = (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~14_combout\ & \CPU|DECODER1|Sinais_Controle[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \CPU|DECODER1|ALT_INV_Sinais_Controle[4]~0_combout\,
	combout => \CPU|nomeComponente|registrador~140_combout\);

\CPU|nomeComponente|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~52_q\);

\CPU|nomeComponente|registrador~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~141_combout\ = (\ROM1|memROM~11_combout\ & (\ROM1|memROM~12_combout\ & (\ROM1|memROM~14_combout\ & \CPU|DECODER1|Sinais_Controle[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \CPU|DECODER1|ALT_INV_Sinais_Controle[4]~0_combout\,
	combout => \CPU|nomeComponente|registrador~141_combout\);

\CPU|nomeComponente|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~68_q\);

\CPU|nomeComponente|registrador~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~143_combout\ = (\ROM1|memROM~11_combout\ & (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\ & \CPU|DECODER1|Sinais_Controle[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \CPU|DECODER1|ALT_INV_Sinais_Controle[4]~0_combout\,
	combout => \CPU|nomeComponente|registrador~143_combout\);

\CPU|nomeComponente|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~60_q\);

\CPU|nomeComponente|registrador~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~144_combout\ = (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~14_combout\ & \CPU|DECODER1|Sinais_Controle[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \CPU|DECODER1|ALT_INV_Sinais_Controle[4]~0_combout\,
	combout => \CPU|nomeComponente|registrador~144_combout\);

\CPU|nomeComponente|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~20_q\);

\CPU|nomeComponente|registrador~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~145_combout\ = (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~12_combout\ & (\ROM1|memROM~14_combout\ & \CPU|DECODER1|Sinais_Controle[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \CPU|DECODER1|ALT_INV_Sinais_Controle[4]~0_combout\,
	combout => \CPU|nomeComponente|registrador~145_combout\);

\CPU|nomeComponente|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~36_q\);

\CPU|nomeComponente|registrador~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~147_combout\ = (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\ & \CPU|DECODER1|Sinais_Controle[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \CPU|DECODER1|ALT_INV_Sinais_Controle[4]~0_combout\,
	combout => \CPU|nomeComponente|registrador~147_combout\);

\CPU|nomeComponente|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~28_q\);

\CPU|nomeComponente|registrador~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~146_combout\ = (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\ & \CPU|DECODER1|Sinais_Controle[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \CPU|DECODER1|ALT_INV_Sinais_Controle[4]~0_combout\,
	combout => \CPU|nomeComponente|registrador~146_combout\);

\CPU|nomeComponente|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~12_q\);

\CPU|nomeComponente|registrador~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~108_combout\ = ( !\ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~14_combout\ & (((\CPU|nomeComponente|registrador~12_q\ & !\ROM1|memROM~11_combout\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~11_combout\)) # 
-- (\CPU|nomeComponente|registrador~20_q\)))) ) ) # ( \ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~14_combout\ & (((\CPU|nomeComponente|registrador~28_q\ & !\ROM1|memROM~11_combout\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~11_combout\)) # 
-- (\CPU|nomeComponente|registrador~36_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|nomeComponente|ALT_INV_registrador~20_q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~36_q\,
	datac => \CPU|nomeComponente|ALT_INV_registrador~28_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	datag => \CPU|nomeComponente|ALT_INV_registrador~12_q\,
	combout => \CPU|nomeComponente|registrador~108_combout\);

\CPU|nomeComponente|registrador~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~142_combout\ = (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\ & \CPU|DECODER1|Sinais_Controle[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \CPU|DECODER1|ALT_INV_Sinais_Controle[4]~0_combout\,
	combout => \CPU|nomeComponente|registrador~142_combout\);

\CPU|nomeComponente|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~44_q\);

\CPU|nomeComponente|registrador~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~76_combout\ = ( !\ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~11_combout\ & (((\CPU|nomeComponente|registrador~108_combout\)))) # (\ROM1|memROM~11_combout\ & ((!\CPU|nomeComponente|registrador~108_combout\ & 
-- ((\CPU|nomeComponente|registrador~44_q\))) # (\CPU|nomeComponente|registrador~108_combout\ & (\CPU|nomeComponente|registrador~52_q\))))) ) ) # ( \ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~11_combout\ & (((\CPU|nomeComponente|registrador~108_combout\)))) 
-- # (\ROM1|memROM~11_combout\ & ((!\CPU|nomeComponente|registrador~108_combout\ & ((\CPU|nomeComponente|registrador~60_q\))) # (\CPU|nomeComponente|registrador~108_combout\ & (\CPU|nomeComponente|registrador~68_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|nomeComponente|ALT_INV_registrador~52_q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~68_q\,
	datac => \CPU|nomeComponente|ALT_INV_registrador~60_q\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|nomeComponente|ALT_INV_registrador~108_combout\,
	datag => \CPU|nomeComponente|ALT_INV_registrador~44_q\,
	combout => \CPU|nomeComponente|registrador~76_combout\);

\DEC3X8|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3X8|Mux7~1_combout\ = ( !\ROM1|memROM~7_combout\ & ( \DEC3X8|Mux7~0_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & \ROM1|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \DEC3X8|ALT_INV_Mux7~0_combout\,
	combout => \DEC3X8|Mux7~1_combout\);

\REGLEDR|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~76_combout\,
	ena => \DEC3X8|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(0));

\RAM1|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out~0_combout\ = (!\CPU|PC1|dataOUT\(3) & (\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT\(0) & \ROM1|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(3),
	datab => \CPU|PC1|ALT_INV_dataOUT\(2),
	datac => \CPU|PC1|ALT_INV_dataOUT\(0),
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|dado_out~0_combout\);

\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~80_combout\,
	ena => \RAM1|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~80_combout\,
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~80_combout\,
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~80_combout\,
	ena => \RAM1|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~40_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~32_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( 
-- \RAM1|ram~24_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( \RAM1|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~16_q\,
	datab => \RAM1|ALT_INV_ram~24_q\,
	datac => \RAM1|ALT_INV_ram~32_q\,
	datad => \RAM1|ALT_INV_ram~40_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~529_combout\);

\Data_IN[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[1]~0_combout\ = ( \RAM1|ram~529_combout\ & ( (\RAM1|dado_out~0_combout\ & !\ROM1|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~529_combout\,
	combout => \Data_IN[1]~0_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|nomeComponente|registrador~80_combout\ ) + ( !\CPU|DECODER1|Equal1~1_combout\ $ (((!\CPU|DECODER1|Equal1~0_combout\ & ((\Data_IN[1]~0_combout\))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~1_combout\)))) ) + ( 
-- \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|nomeComponente|registrador~80_combout\ ) + ( !\CPU|DECODER1|Equal1~1_combout\ $ (((!\CPU|DECODER1|Equal1~0_combout\ & ((\Data_IN[1]~0_combout\))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~1_combout\)))) ) + ( 
-- \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU|nomeComponente|ALT_INV_registrador~80_combout\,
	dataf => \ALT_INV_Data_IN[1]~0_combout\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( \RAM1|ram~529_combout\ & ( !\ROM1|memROM~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~529_combout\,
	combout => \RAM1|ram~530_combout\);

\CPU|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~1_combout\ = (!\CPU|DECODER1|Equal1~0_combout\ & (((\RAM1|ram~530_combout\ & \RAM1|dado_out~0_combout\)))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110100010001000111010001000100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal1~0_combout\,
	datac => \RAM1|ALT_INV_ram~530_combout\,
	datad => \RAM1|ALT_INV_dado_out~0_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~1_combout\);

\CPU|nomeComponente|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|MUX1|saida_MUX[1]~1_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~53_q\);

\CPU|nomeComponente|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|MUX1|saida_MUX[1]~1_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~69_q\);

\CPU|nomeComponente|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|MUX1|saida_MUX[1]~1_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~61_q\);

\CPU|nomeComponente|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|MUX1|saida_MUX[1]~1_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~21_q\);

\CPU|nomeComponente|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|MUX1|saida_MUX[1]~1_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~37_q\);

\CPU|nomeComponente|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|MUX1|saida_MUX[1]~1_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~29_q\);

\CPU|nomeComponente|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|MUX1|saida_MUX[1]~1_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~13_q\);

\CPU|nomeComponente|registrador~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~112_combout\ = ( !\ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~14_combout\ & (((\CPU|nomeComponente|registrador~13_q\ & !\ROM1|memROM~11_combout\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~11_combout\)) # 
-- (\CPU|nomeComponente|registrador~21_q\)))) ) ) # ( \ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~14_combout\ & (((\CPU|nomeComponente|registrador~29_q\ & !\ROM1|memROM~11_combout\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~11_combout\)) # 
-- (\CPU|nomeComponente|registrador~37_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|nomeComponente|ALT_INV_registrador~21_q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~37_q\,
	datac => \CPU|nomeComponente|ALT_INV_registrador~29_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	datag => \CPU|nomeComponente|ALT_INV_registrador~13_q\,
	combout => \CPU|nomeComponente|registrador~112_combout\);

\CPU|nomeComponente|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|MUX1|saida_MUX[1]~1_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~45_q\);

\CPU|nomeComponente|registrador~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~80_combout\ = ( !\ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~11_combout\ & (((\CPU|nomeComponente|registrador~112_combout\)))) # (\ROM1|memROM~11_combout\ & ((!\CPU|nomeComponente|registrador~112_combout\ & 
-- ((\CPU|nomeComponente|registrador~45_q\))) # (\CPU|nomeComponente|registrador~112_combout\ & (\CPU|nomeComponente|registrador~53_q\))))) ) ) # ( \ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~11_combout\ & (((\CPU|nomeComponente|registrador~112_combout\)))) 
-- # (\ROM1|memROM~11_combout\ & ((!\CPU|nomeComponente|registrador~112_combout\ & ((\CPU|nomeComponente|registrador~61_q\))) # (\CPU|nomeComponente|registrador~112_combout\ & (\CPU|nomeComponente|registrador~69_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|nomeComponente|ALT_INV_registrador~53_q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~69_q\,
	datac => \CPU|nomeComponente|ALT_INV_registrador~61_q\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|nomeComponente|ALT_INV_registrador~112_combout\,
	datag => \CPU|nomeComponente|ALT_INV_registrador~45_q\,
	combout => \CPU|nomeComponente|registrador~80_combout\);

\REGLEDR|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~80_combout\,
	ena => \DEC3X8|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(1));

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~84_combout\,
	ena => \RAM1|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~84_combout\,
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~84_combout\,
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

\RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~84_combout\,
	ena => \RAM1|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~41_q\);

\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~41_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~33_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( 
-- \RAM1|ram~25_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( \RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~17_q\,
	datab => \RAM1|ALT_INV_ram~25_q\,
	datac => \RAM1|ALT_INV_ram~33_q\,
	datad => \RAM1|ALT_INV_ram~41_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~531_combout\);

\Data_IN[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[2]~1_combout\ = ( \RAM1|ram~531_combout\ & ( (\RAM1|dado_out~0_combout\ & !\ROM1|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~531_combout\,
	combout => \Data_IN[2]~1_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|nomeComponente|registrador~84_combout\ ) + ( !\CPU|DECODER1|Equal1~1_combout\ $ (((!\CPU|DECODER1|Equal1~0_combout\ & ((\Data_IN[2]~1_combout\))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( 
-- \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|nomeComponente|registrador~84_combout\ ) + ( !\CPU|DECODER1|Equal1~1_combout\ $ (((!\CPU|DECODER1|Equal1~0_combout\ & ((\Data_IN[2]~1_combout\))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( 
-- \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \CPU|nomeComponente|ALT_INV_registrador~84_combout\,
	dataf => \ALT_INV_Data_IN[2]~1_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( \RAM1|ram~531_combout\ & ( !\ROM1|memROM~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~531_combout\,
	combout => \RAM1|ram~532_combout\);

\CPU|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~2_combout\ = (!\CPU|DECODER1|Equal1~0_combout\ & (((\RAM1|dado_out~0_combout\ & \RAM1|ram~532_combout\)))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110100010001000111010001000100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal1~0_combout\,
	datac => \RAM1|ALT_INV_dado_out~0_combout\,
	datad => \RAM1|ALT_INV_ram~532_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~2_combout\);

\CPU|nomeComponente|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|MUX1|saida_MUX[2]~2_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~54_q\);

\CPU|nomeComponente|registrador~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|MUX1|saida_MUX[2]~2_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~70_q\);

\CPU|nomeComponente|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|MUX1|saida_MUX[2]~2_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~62_q\);

\CPU|nomeComponente|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|MUX1|saida_MUX[2]~2_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~22_q\);

\CPU|nomeComponente|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|MUX1|saida_MUX[2]~2_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~38_q\);

\CPU|nomeComponente|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|MUX1|saida_MUX[2]~2_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~30_q\);

\CPU|nomeComponente|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|MUX1|saida_MUX[2]~2_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~14_q\);

\CPU|nomeComponente|registrador~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~116_combout\ = ( !\ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~14_combout\ & (((\CPU|nomeComponente|registrador~14_q\ & !\ROM1|memROM~11_combout\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~11_combout\)) # 
-- (\CPU|nomeComponente|registrador~22_q\)))) ) ) # ( \ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~14_combout\ & (((\CPU|nomeComponente|registrador~30_q\ & !\ROM1|memROM~11_combout\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~11_combout\)) # 
-- (\CPU|nomeComponente|registrador~38_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|nomeComponente|ALT_INV_registrador~22_q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~38_q\,
	datac => \CPU|nomeComponente|ALT_INV_registrador~30_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	datag => \CPU|nomeComponente|ALT_INV_registrador~14_q\,
	combout => \CPU|nomeComponente|registrador~116_combout\);

\CPU|nomeComponente|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|MUX1|saida_MUX[2]~2_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~46_q\);

\CPU|nomeComponente|registrador~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~84_combout\ = ( !\ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~11_combout\ & (((\CPU|nomeComponente|registrador~116_combout\)))) # (\ROM1|memROM~11_combout\ & ((!\CPU|nomeComponente|registrador~116_combout\ & 
-- ((\CPU|nomeComponente|registrador~46_q\))) # (\CPU|nomeComponente|registrador~116_combout\ & (\CPU|nomeComponente|registrador~54_q\))))) ) ) # ( \ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~11_combout\ & (((\CPU|nomeComponente|registrador~116_combout\)))) 
-- # (\ROM1|memROM~11_combout\ & ((!\CPU|nomeComponente|registrador~116_combout\ & ((\CPU|nomeComponente|registrador~62_q\))) # (\CPU|nomeComponente|registrador~116_combout\ & (\CPU|nomeComponente|registrador~70_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|nomeComponente|ALT_INV_registrador~54_q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~70_q\,
	datac => \CPU|nomeComponente|ALT_INV_registrador~62_q\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|nomeComponente|ALT_INV_registrador~116_combout\,
	datag => \CPU|nomeComponente|ALT_INV_registrador~46_q\,
	combout => \CPU|nomeComponente|registrador~84_combout\);

\REGLEDR|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~84_combout\,
	ena => \DEC3X8|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(2));

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~88_combout\,
	ena => \RAM1|ram~546_combout\,
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
	d => \CPU|nomeComponente|registrador~88_combout\,
	ena => \RAM1|ram~547_combout\,
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
	d => \CPU|nomeComponente|registrador~88_combout\,
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

\RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~88_combout\,
	ena => \RAM1|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~42_q\);

\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~42_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~34_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( 
-- \RAM1|ram~26_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~18_q\,
	datab => \RAM1|ALT_INV_ram~26_q\,
	datac => \RAM1|ALT_INV_ram~34_q\,
	datad => \RAM1|ALT_INV_ram~42_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~533_combout\);

\Data_IN[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[3]~2_combout\ = ( \RAM1|ram~533_combout\ & ( (\RAM1|dado_out~0_combout\ & !\ROM1|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~533_combout\,
	combout => \Data_IN[3]~2_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|nomeComponente|registrador~88_combout\ ) + ( !\CPU|DECODER1|Equal1~1_combout\ $ (((!\CPU|DECODER1|Equal1~0_combout\ & ((\Data_IN[3]~2_combout\))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~10_combout\)))) ) + 
-- ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|nomeComponente|registrador~88_combout\ ) + ( !\CPU|DECODER1|Equal1~1_combout\ $ (((!\CPU|DECODER1|Equal1~0_combout\ & ((\Data_IN[3]~2_combout\))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~10_combout\)))) ) + ( 
-- \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \CPU|nomeComponente|ALT_INV_registrador~88_combout\,
	dataf => \ALT_INV_Data_IN[3]~2_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( \RAM1|ram~533_combout\ & ( !\ROM1|memROM~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~533_combout\,
	combout => \RAM1|ram~534_combout\);

\CPU|MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~3_combout\ = (!\CPU|DECODER1|Equal1~0_combout\ & (((\RAM1|dado_out~0_combout\ & \RAM1|ram~534_combout\)))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110100010001000111010001000100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal1~0_combout\,
	datac => \RAM1|ALT_INV_dado_out~0_combout\,
	datad => \RAM1|ALT_INV_ram~534_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~3_combout\);

\CPU|nomeComponente|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|MUX1|saida_MUX[3]~3_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~55_q\);

\CPU|nomeComponente|registrador~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|MUX1|saida_MUX[3]~3_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~71_q\);

\CPU|nomeComponente|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|MUX1|saida_MUX[3]~3_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~63_q\);

\CPU|nomeComponente|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|MUX1|saida_MUX[3]~3_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~23_q\);

\CPU|nomeComponente|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|MUX1|saida_MUX[3]~3_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~39_q\);

\CPU|nomeComponente|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|MUX1|saida_MUX[3]~3_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~31_q\);

\CPU|nomeComponente|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|MUX1|saida_MUX[3]~3_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~15_q\);

\CPU|nomeComponente|registrador~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~120_combout\ = ( !\ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~14_combout\ & (((\CPU|nomeComponente|registrador~15_q\ & !\ROM1|memROM~11_combout\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~11_combout\)) # 
-- (\CPU|nomeComponente|registrador~23_q\)))) ) ) # ( \ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~14_combout\ & (((\CPU|nomeComponente|registrador~31_q\ & !\ROM1|memROM~11_combout\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~11_combout\)) # 
-- (\CPU|nomeComponente|registrador~39_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|nomeComponente|ALT_INV_registrador~23_q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~39_q\,
	datac => \CPU|nomeComponente|ALT_INV_registrador~31_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	datag => \CPU|nomeComponente|ALT_INV_registrador~15_q\,
	combout => \CPU|nomeComponente|registrador~120_combout\);

\CPU|nomeComponente|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|MUX1|saida_MUX[3]~3_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~47_q\);

\CPU|nomeComponente|registrador~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~88_combout\ = ( !\ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~11_combout\ & (((\CPU|nomeComponente|registrador~120_combout\)))) # (\ROM1|memROM~11_combout\ & ((!\CPU|nomeComponente|registrador~120_combout\ & 
-- ((\CPU|nomeComponente|registrador~47_q\))) # (\CPU|nomeComponente|registrador~120_combout\ & (\CPU|nomeComponente|registrador~55_q\))))) ) ) # ( \ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~11_combout\ & (((\CPU|nomeComponente|registrador~120_combout\)))) 
-- # (\ROM1|memROM~11_combout\ & ((!\CPU|nomeComponente|registrador~120_combout\ & ((\CPU|nomeComponente|registrador~63_q\))) # (\CPU|nomeComponente|registrador~120_combout\ & (\CPU|nomeComponente|registrador~71_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|nomeComponente|ALT_INV_registrador~55_q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~71_q\,
	datac => \CPU|nomeComponente|ALT_INV_registrador~63_q\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|nomeComponente|ALT_INV_registrador~120_combout\,
	datag => \CPU|nomeComponente|ALT_INV_registrador~47_q\,
	combout => \CPU|nomeComponente|registrador~88_combout\);

\REGLEDR|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~88_combout\,
	ena => \DEC3X8|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(3));

\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~92_combout\,
	ena => \RAM1|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~92_combout\,
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~92_combout\,
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

\RAM1|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~92_combout\,
	ena => \RAM1|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~43_q\);

\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~43_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~35_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( 
-- \RAM1|ram~27_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( \RAM1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datab => \RAM1|ALT_INV_ram~27_q\,
	datac => \RAM1|ALT_INV_ram~35_q\,
	datad => \RAM1|ALT_INV_ram~43_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~535_combout\);

\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( \RAM1|ram~535_combout\ & ( !\ROM1|memROM~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~535_combout\,
	combout => \RAM1|ram~536_combout\);

\Data_IN[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[4]~3_combout\ = (\RAM1|dado_out~0_combout\ & \RAM1|ram~536_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datab => \RAM1|ALT_INV_ram~536_combout\,
	combout => \Data_IN[4]~3_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|nomeComponente|registrador~92_combout\ ) + ( !\CPU|DECODER1|Equal1~1_combout\ $ (((!\CPU|DECODER1|Equal1~0_combout\ & ((\Data_IN[4]~3_combout\))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~4_combout\)))) ) + 
-- ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|nomeComponente|registrador~92_combout\ ) + ( !\CPU|DECODER1|Equal1~1_combout\ $ (((!\CPU|DECODER1|Equal1~0_combout\ & ((\Data_IN[4]~3_combout\))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( 
-- \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \CPU|nomeComponente|ALT_INV_registrador~92_combout\,
	dataf => \ALT_INV_Data_IN[4]~3_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~4_combout\ = (!\CPU|DECODER1|Equal1~0_combout\ & (((\RAM1|dado_out~0_combout\ & \RAM1|ram~536_combout\)))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110100010001000111010001000100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal1~0_combout\,
	datac => \RAM1|ALT_INV_dado_out~0_combout\,
	datad => \RAM1|ALT_INV_ram~536_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~4_combout\);

\CPU|nomeComponente|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|MUX1|saida_MUX[4]~4_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~56_q\);

\CPU|nomeComponente|registrador~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|MUX1|saida_MUX[4]~4_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~72_q\);

\CPU|nomeComponente|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|MUX1|saida_MUX[4]~4_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~64_q\);

\CPU|nomeComponente|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|MUX1|saida_MUX[4]~4_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~24_q\);

\CPU|nomeComponente|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|MUX1|saida_MUX[4]~4_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~40_q\);

\CPU|nomeComponente|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|MUX1|saida_MUX[4]~4_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~32_q\);

\CPU|nomeComponente|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|MUX1|saida_MUX[4]~4_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~16_q\);

\CPU|nomeComponente|registrador~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~124_combout\ = ( !\ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~14_combout\ & (((\CPU|nomeComponente|registrador~16_q\ & !\ROM1|memROM~11_combout\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~11_combout\)) # 
-- (\CPU|nomeComponente|registrador~24_q\)))) ) ) # ( \ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~14_combout\ & (((\CPU|nomeComponente|registrador~32_q\ & !\ROM1|memROM~11_combout\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~11_combout\)) # 
-- (\CPU|nomeComponente|registrador~40_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|nomeComponente|ALT_INV_registrador~24_q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~40_q\,
	datac => \CPU|nomeComponente|ALT_INV_registrador~32_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	datag => \CPU|nomeComponente|ALT_INV_registrador~16_q\,
	combout => \CPU|nomeComponente|registrador~124_combout\);

\CPU|nomeComponente|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|MUX1|saida_MUX[4]~4_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~48_q\);

\CPU|nomeComponente|registrador~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~92_combout\ = ( !\ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~11_combout\ & (((\CPU|nomeComponente|registrador~124_combout\)))) # (\ROM1|memROM~11_combout\ & ((!\CPU|nomeComponente|registrador~124_combout\ & 
-- ((\CPU|nomeComponente|registrador~48_q\))) # (\CPU|nomeComponente|registrador~124_combout\ & (\CPU|nomeComponente|registrador~56_q\))))) ) ) # ( \ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~11_combout\ & (((\CPU|nomeComponente|registrador~124_combout\)))) 
-- # (\ROM1|memROM~11_combout\ & ((!\CPU|nomeComponente|registrador~124_combout\ & ((\CPU|nomeComponente|registrador~64_q\))) # (\CPU|nomeComponente|registrador~124_combout\ & (\CPU|nomeComponente|registrador~72_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|nomeComponente|ALT_INV_registrador~56_q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~72_q\,
	datac => \CPU|nomeComponente|ALT_INV_registrador~64_q\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|nomeComponente|ALT_INV_registrador~124_combout\,
	datag => \CPU|nomeComponente|ALT_INV_registrador~48_q\,
	combout => \CPU|nomeComponente|registrador~92_combout\);

\REGLEDR|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~92_combout\,
	ena => \DEC3X8|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(4));

\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~96_combout\,
	ena => \RAM1|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~96_combout\,
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~96_combout\,
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

\RAM1|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~96_combout\,
	ena => \RAM1|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~44_q\);

\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~44_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~36_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( 
-- \RAM1|ram~28_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~20_q\,
	datab => \RAM1|ALT_INV_ram~28_q\,
	datac => \RAM1|ALT_INV_ram~36_q\,
	datad => \RAM1|ALT_INV_ram~44_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~537_combout\);

\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( \RAM1|ram~537_combout\ & ( !\ROM1|memROM~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~537_combout\,
	combout => \RAM1|ram~538_combout\);

\Data_IN[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[5]~4_combout\ = (\RAM1|dado_out~0_combout\ & \RAM1|ram~538_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datab => \RAM1|ALT_INV_ram~538_combout\,
	combout => \Data_IN[5]~4_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|nomeComponente|registrador~96_combout\ ) + ( !\CPU|DECODER1|Equal1~1_combout\ $ (((!\CPU|DECODER1|Equal1~0_combout\ & ((\Data_IN[5]~4_combout\))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~10_combout\)))) ) + 
-- ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|nomeComponente|registrador~96_combout\ ) + ( !\CPU|DECODER1|Equal1~1_combout\ $ (((!\CPU|DECODER1|Equal1~0_combout\ & ((\Data_IN[5]~4_combout\))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~10_combout\)))) ) + ( 
-- \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \CPU|nomeComponente|ALT_INV_registrador~96_combout\,
	dataf => \ALT_INV_Data_IN[5]~4_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~5_combout\ = (!\CPU|DECODER1|Equal1~0_combout\ & (((\RAM1|dado_out~0_combout\ & \RAM1|ram~538_combout\)))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110100010001000111010001000100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal1~0_combout\,
	datac => \RAM1|ALT_INV_dado_out~0_combout\,
	datad => \RAM1|ALT_INV_ram~538_combout\,
	combout => \CPU|MUX1|saida_MUX[5]~5_combout\);

\CPU|nomeComponente|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|MUX1|saida_MUX[5]~5_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~57_q\);

\CPU|nomeComponente|registrador~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|MUX1|saida_MUX[5]~5_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~73_q\);

\CPU|nomeComponente|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|MUX1|saida_MUX[5]~5_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~65_q\);

\CPU|nomeComponente|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|MUX1|saida_MUX[5]~5_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~25_q\);

\CPU|nomeComponente|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|MUX1|saida_MUX[5]~5_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~41_q\);

\CPU|nomeComponente|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|MUX1|saida_MUX[5]~5_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~33_q\);

\CPU|nomeComponente|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|MUX1|saida_MUX[5]~5_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~17_q\);

\CPU|nomeComponente|registrador~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~128_combout\ = ( !\ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~14_combout\ & (((\CPU|nomeComponente|registrador~17_q\ & !\ROM1|memROM~11_combout\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~11_combout\)) # 
-- (\CPU|nomeComponente|registrador~25_q\)))) ) ) # ( \ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~14_combout\ & (((\CPU|nomeComponente|registrador~33_q\ & !\ROM1|memROM~11_combout\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~11_combout\)) # 
-- (\CPU|nomeComponente|registrador~41_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|nomeComponente|ALT_INV_registrador~25_q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~41_q\,
	datac => \CPU|nomeComponente|ALT_INV_registrador~33_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	datag => \CPU|nomeComponente|ALT_INV_registrador~17_q\,
	combout => \CPU|nomeComponente|registrador~128_combout\);

\CPU|nomeComponente|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|MUX1|saida_MUX[5]~5_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~49_q\);

\CPU|nomeComponente|registrador~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~96_combout\ = ( !\ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~11_combout\ & (((\CPU|nomeComponente|registrador~128_combout\)))) # (\ROM1|memROM~11_combout\ & ((!\CPU|nomeComponente|registrador~128_combout\ & 
-- ((\CPU|nomeComponente|registrador~49_q\))) # (\CPU|nomeComponente|registrador~128_combout\ & (\CPU|nomeComponente|registrador~57_q\))))) ) ) # ( \ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~11_combout\ & (((\CPU|nomeComponente|registrador~128_combout\)))) 
-- # (\ROM1|memROM~11_combout\ & ((!\CPU|nomeComponente|registrador~128_combout\ & ((\CPU|nomeComponente|registrador~65_q\))) # (\CPU|nomeComponente|registrador~128_combout\ & (\CPU|nomeComponente|registrador~73_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|nomeComponente|ALT_INV_registrador~57_q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~73_q\,
	datac => \CPU|nomeComponente|ALT_INV_registrador~65_q\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|nomeComponente|ALT_INV_registrador~128_combout\,
	datag => \CPU|nomeComponente|ALT_INV_registrador~49_q\,
	combout => \CPU|nomeComponente|registrador~96_combout\);

\REGLEDR|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~96_combout\,
	ena => \DEC3X8|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(5));

\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~100_combout\,
	ena => \RAM1|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~100_combout\,
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~100_combout\,
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

\RAM1|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~100_combout\,
	ena => \RAM1|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~45_q\);

\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~45_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~37_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( 
-- \RAM1|ram~29_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( \RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datab => \RAM1|ALT_INV_ram~29_q\,
	datac => \RAM1|ALT_INV_ram~37_q\,
	datad => \RAM1|ALT_INV_ram~45_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~539_combout\);

\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( \RAM1|ram~539_combout\ & ( !\ROM1|memROM~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~540_combout\);

\Data_IN[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[6]~5_combout\ = (\RAM1|dado_out~0_combout\ & \RAM1|ram~540_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~0_combout\,
	datab => \RAM1|ALT_INV_ram~540_combout\,
	combout => \Data_IN[6]~5_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|nomeComponente|registrador~100_combout\ ) + ( !\CPU|DECODER1|Equal1~1_combout\ $ (((!\CPU|DECODER1|Equal1~0_combout\ & ((\Data_IN[6]~5_combout\))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~4_combout\)))) ) + 
-- ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|nomeComponente|registrador~100_combout\ ) + ( !\CPU|DECODER1|Equal1~1_combout\ $ (((!\CPU|DECODER1|Equal1~0_combout\ & ((\Data_IN[6]~5_combout\))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( 
-- \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \CPU|nomeComponente|ALT_INV_registrador~100_combout\,
	dataf => \ALT_INV_Data_IN[6]~5_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~6_combout\ = (!\CPU|DECODER1|Equal1~0_combout\ & (((\RAM1|dado_out~0_combout\ & \RAM1|ram~540_combout\)))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110100010001000111010001000100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal1~0_combout\,
	datac => \RAM1|ALT_INV_dado_out~0_combout\,
	datad => \RAM1|ALT_INV_ram~540_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~6_combout\);

\CPU|nomeComponente|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1|saida_MUX[6]~6_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~58_q\);

\CPU|nomeComponente|registrador~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1|saida_MUX[6]~6_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~74_q\);

\CPU|nomeComponente|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1|saida_MUX[6]~6_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~66_q\);

\CPU|nomeComponente|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1|saida_MUX[6]~6_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~26_q\);

\CPU|nomeComponente|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1|saida_MUX[6]~6_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~42_q\);

\CPU|nomeComponente|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1|saida_MUX[6]~6_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~34_q\);

\CPU|nomeComponente|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1|saida_MUX[6]~6_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~18_q\);

\CPU|nomeComponente|registrador~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~132_combout\ = ( !\ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~14_combout\ & (((\CPU|nomeComponente|registrador~18_q\ & !\ROM1|memROM~11_combout\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~11_combout\)) # 
-- (\CPU|nomeComponente|registrador~26_q\)))) ) ) # ( \ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~14_combout\ & (((\CPU|nomeComponente|registrador~34_q\ & !\ROM1|memROM~11_combout\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~11_combout\)) # 
-- (\CPU|nomeComponente|registrador~42_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|nomeComponente|ALT_INV_registrador~26_q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~42_q\,
	datac => \CPU|nomeComponente|ALT_INV_registrador~34_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	datag => \CPU|nomeComponente|ALT_INV_registrador~18_q\,
	combout => \CPU|nomeComponente|registrador~132_combout\);

\CPU|nomeComponente|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1|saida_MUX[6]~6_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~50_q\);

\CPU|nomeComponente|registrador~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~100_combout\ = ( !\ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~11_combout\ & (((\CPU|nomeComponente|registrador~132_combout\)))) # (\ROM1|memROM~11_combout\ & ((!\CPU|nomeComponente|registrador~132_combout\ & 
-- ((\CPU|nomeComponente|registrador~50_q\))) # (\CPU|nomeComponente|registrador~132_combout\ & (\CPU|nomeComponente|registrador~58_q\))))) ) ) # ( \ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~11_combout\ & (((\CPU|nomeComponente|registrador~132_combout\)))) 
-- # (\ROM1|memROM~11_combout\ & ((!\CPU|nomeComponente|registrador~132_combout\ & ((\CPU|nomeComponente|registrador~66_q\))) # (\CPU|nomeComponente|registrador~132_combout\ & (\CPU|nomeComponente|registrador~74_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|nomeComponente|ALT_INV_registrador~58_q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~74_q\,
	datac => \CPU|nomeComponente|ALT_INV_registrador~66_q\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|nomeComponente|ALT_INV_registrador~132_combout\,
	datag => \CPU|nomeComponente|ALT_INV_registrador~50_q\,
	combout => \CPU|nomeComponente|registrador~100_combout\);

\REGLEDR|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~100_combout\,
	ena => \DEC3X8|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(6));

\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~104_combout\,
	ena => \RAM1|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( \RAM1|ram~22_q\ & ( ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~3_combout\)) # (\CPU|PC1|dataOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011111110100000000000000001111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(1),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~22_q\,
	combout => \RAM1|ram~541_combout\);

\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~104_combout\,
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( \RAM1|ram~30_q\ & ( ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~3_combout\)) # (\CPU|PC1|dataOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011111110100000000000000001111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(1),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~30_q\,
	combout => \RAM1|ram~542_combout\);

\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~104_combout\,
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( \RAM1|ram~38_q\ & ( ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~3_combout\)) # (\CPU|PC1|dataOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011111110100000000000000001111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(1),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~38_q\,
	combout => \RAM1|ram~543_combout\);

\RAM1|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~104_combout\,
	ena => \RAM1|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~46_q\);

\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = ( \RAM1|ram~46_q\ & ( ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~3_combout\)) # (\CPU|PC1|dataOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011111110100000000000000001111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(1),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~46_q\,
	combout => \RAM1|ram~544_combout\);

\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~544_combout\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~543_combout\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- !\ROM1|memROM~1_combout\ & ( \RAM1|ram~542_combout\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( \RAM1|ram~541_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~541_combout\,
	datab => \RAM1|ALT_INV_ram~542_combout\,
	datac => \RAM1|ALT_INV_ram~543_combout\,
	datad => \RAM1|ALT_INV_ram~544_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~545_combout\);

\Data_IN[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[7]~6_combout\ = (!\ROM1|memROM~10_combout\ & (\RAM1|dado_out~0_combout\ & \RAM1|ram~545_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \RAM1|ALT_INV_dado_out~0_combout\,
	datac => \RAM1|ALT_INV_ram~545_combout\,
	combout => \Data_IN[7]~6_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|nomeComponente|registrador~104_combout\ ) + ( !\CPU|DECODER1|Equal1~1_combout\ $ (((!\CPU|DECODER1|Equal1~0_combout\ & ((\Data_IN[7]~6_combout\))) # (\CPU|DECODER1|Equal1~0_combout\ & (\ROM1|memROM~10_combout\)))) ) 
-- + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111101011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \CPU|DECODER1|ALT_INV_Equal1~1_combout\,
	datad => \CPU|nomeComponente|ALT_INV_registrador~104_combout\,
	dataf => \ALT_INV_Data_IN[7]~6_combout\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~7_combout\ = (!\ROM1|memROM~10_combout\ & (!\CPU|DECODER1|Equal1~0_combout\ & (\RAM1|dado_out~0_combout\ & \RAM1|ram~545_combout\))) # (\ROM1|memROM~10_combout\ & (\CPU|DECODER1|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011001000100010001100100010001000110010001000100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal1~0_combout\,
	datac => \RAM1|ALT_INV_dado_out~0_combout\,
	datad => \RAM1|ALT_INV_ram~545_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~7_combout\);

\CPU|nomeComponente|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|MUX1|saida_MUX[7]~7_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~59_q\);

\CPU|nomeComponente|registrador~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|MUX1|saida_MUX[7]~7_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~75_q\);

\CPU|nomeComponente|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|MUX1|saida_MUX[7]~7_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~67_q\);

\CPU|nomeComponente|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|MUX1|saida_MUX[7]~7_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~27_q\);

\CPU|nomeComponente|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|MUX1|saida_MUX[7]~7_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~43_q\);

\CPU|nomeComponente|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|MUX1|saida_MUX[7]~7_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~35_q\);

\CPU|nomeComponente|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|MUX1|saida_MUX[7]~7_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~19_q\);

\CPU|nomeComponente|registrador~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~136_combout\ = ( !\ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~14_combout\ & (((\CPU|nomeComponente|registrador~19_q\ & !\ROM1|memROM~11_combout\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~11_combout\)) # 
-- (\CPU|nomeComponente|registrador~27_q\)))) ) ) # ( \ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~14_combout\ & (((\CPU|nomeComponente|registrador~35_q\ & !\ROM1|memROM~11_combout\)))) # (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~11_combout\)) # 
-- (\CPU|nomeComponente|registrador~43_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|nomeComponente|ALT_INV_registrador~27_q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~43_q\,
	datac => \CPU|nomeComponente|ALT_INV_registrador~35_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	datag => \CPU|nomeComponente|ALT_INV_registrador~19_q\,
	combout => \CPU|nomeComponente|registrador~136_combout\);

\CPU|nomeComponente|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|MUX1|saida_MUX[7]~7_combout\,
	sload => \CPU|ULA1|saida[1]~0_combout\,
	ena => \CPU|nomeComponente|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|nomeComponente|registrador~51_q\);

\CPU|nomeComponente|registrador~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|nomeComponente|registrador~104_combout\ = ( !\ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~11_combout\ & (((\CPU|nomeComponente|registrador~136_combout\)))) # (\ROM1|memROM~11_combout\ & ((!\CPU|nomeComponente|registrador~136_combout\ & 
-- ((\CPU|nomeComponente|registrador~51_q\))) # (\CPU|nomeComponente|registrador~136_combout\ & (\CPU|nomeComponente|registrador~59_q\))))) ) ) # ( \ROM1|memROM~12_combout\ & ( ((!\ROM1|memROM~11_combout\ & (((\CPU|nomeComponente|registrador~136_combout\)))) 
-- # (\ROM1|memROM~11_combout\ & ((!\CPU|nomeComponente|registrador~136_combout\ & ((\CPU|nomeComponente|registrador~67_q\))) # (\CPU|nomeComponente|registrador~136_combout\ & (\CPU|nomeComponente|registrador~75_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|nomeComponente|ALT_INV_registrador~59_q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~75_q\,
	datac => \CPU|nomeComponente|ALT_INV_registrador~67_q\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|nomeComponente|ALT_INV_registrador~136_combout\,
	datag => \CPU|nomeComponente|ALT_INV_registrador~51_q\,
	combout => \CPU|nomeComponente|registrador~104_combout\);

\REGLEDR|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|nomeComponente|registrador~104_combout\,
	ena => \DEC3X8|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(7));

\DEC3X8|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3X8|Mux7~2_combout\ = (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~7_combout\ & \DEC3X8|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \DEC3X8|ALT_INV_Mux7~0_combout\,
	combout => \DEC3X8|Mux7~2_combout\);

\REGLED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLED8|DOUT~0_combout\ = ( \DEC3X8|Mux7~2_combout\ & ( (!\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~2_combout\ & (\REGLED8|DOUT~q\)) # (\ROM1|memROM~2_combout\ & ((\CPU|nomeComponente|registrador~76_combout\))))) # (\ROM1|memROM~1_combout\ & 
-- (\REGLED8|DOUT~q\)) ) ) # ( !\DEC3X8|Mux7~2_combout\ & ( \REGLED8|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010011010101010101010101010101010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGLED8|ALT_INV_DOUT~q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~76_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \DEC3X8|ALT_INV_Mux7~2_combout\,
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

\REGLED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLED9|DOUT~0_combout\ = ( \DEC3X8|Mux7~2_combout\ & ( (!\ROM1|memROM~1_combout\ & (\REGLED9|DOUT~q\)) # (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~2_combout\ & ((\CPU|nomeComponente|registrador~76_combout\))) # (\ROM1|memROM~2_combout\ & 
-- (\REGLED9|DOUT~q\)))) ) ) # ( !\DEC3X8|Mux7~2_combout\ & ( \REGLED9|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100110101010101010101010101010101001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGLED9|ALT_INV_DOUT~q\,
	datab => \CPU|nomeComponente|ALT_INV_registrador~76_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \DEC3X8|ALT_INV_Mux7~2_combout\,
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

\SWITCH[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(0),
	o => \SWITCH[0]~input_o\);

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

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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

\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

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


