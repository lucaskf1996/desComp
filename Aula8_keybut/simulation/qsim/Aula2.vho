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

-- DATE "09/15/2021 12:54:21"

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
SIGNAL \CPU|SOMPC|Add0~2\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~6\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~10\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~14\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~18\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~22\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~26\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~30\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ANDSW07~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \SWITCH[8]~input_o\ : std_logic;
SIGNAL \SWITCH[9]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \ANDSW07~0_combout\ : std_logic;
SIGNAL \SWITCH[0]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \ANDHEX0~1_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Sinais_Controle~0_combout\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DECODER1|Sinais_Controle~1_combout\ : std_logic;
SIGNAL \ANDHEX0~0_combout\ : std_logic;
SIGNAL \ANDLEDR~0_combout\ : std_logic;
SIGNAL \SWITCH[1]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \SWITCH[2]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \SWITCH[3]~input_o\ : std_logic;
SIGNAL \Data_IN[3]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \SWITCH[4]~input_o\ : std_logic;
SIGNAL \Data_IN[4]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \SWITCH[5]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~8_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \SWITCH[6]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~9_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \SWITCH[7]~input_o\ : std_logic;
SIGNAL \Data_IN[7]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ANDLED8~0_combout\ : std_logic;
SIGNAL \REGLED8|DOUT~0_combout\ : std_logic;
SIGNAL \REGLED8|DOUT~q\ : std_logic;
SIGNAL \REGLED9|DOUT~0_combout\ : std_logic;
SIGNAL \REGLED9|DOUT~q\ : std_logic;
SIGNAL \ANDHEX0~2_combout\ : std_logic;
SIGNAL \DISPLAY_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY_HEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY_HEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY_HEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY_HEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY_HEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ANDHEX1~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ANDHEX2~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ANDHEX3~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ANDHEX5~0_combout\ : std_logic;
SIGNAL \ANDHEX4~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY_HEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY_HEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY_HEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY_HEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY_HEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ANDHEX5~combout\ : std_logic;
SIGNAL \DISPLAY_HEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY_HEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY_HEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY_HEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY_HEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY_HEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGLEDR|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGHEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGHEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGHEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC1|dataOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGHEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGHEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGHEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGHEX1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISPLAY_HEX0|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \REGHEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGLED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \REGLED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|SOMPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_SWITCH[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SWITCH[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_IN[7]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~9_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[4]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[3]~0_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~7_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~6_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~5_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_ANDSW07~1_combout\ : std_logic;
SIGNAL \ALT_INV_ANDHEX5~0_combout\ : std_logic;
SIGNAL \ALT_INV_ANDHEX0~1_combout\ : std_logic;
SIGNAL \ALT_INV_ANDLED8~0_combout\ : std_logic;
SIGNAL \ALT_INV_ANDSW07~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ALT_INV_ANDHEX0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC1|ALT_INV_dataOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \DISPLAY_HEX5|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \REGHEX5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISPLAY_HEX4|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \REGHEX4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISPLAY_HEX3|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \REGHEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISPLAY_HEX2|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \REGHEX2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISPLAY_HEX1|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;

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
\REGHEX1|ALT_INV_DOUT\(1) <= NOT \REGHEX1|DOUT\(1);
\DISPLAY_HEX0|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \DISPLAY_HEX0|rascSaida7seg[2]~2_combout\;
\REGHEX0|ALT_INV_DOUT\(3) <= NOT \REGHEX0|DOUT\(3);
\REGHEX0|ALT_INV_DOUT\(2) <= NOT \REGHEX0|DOUT\(2);
\REGHEX0|ALT_INV_DOUT\(0) <= NOT \REGHEX0|DOUT\(0);
\REGHEX0|ALT_INV_DOUT\(1) <= NOT \REGHEX0|DOUT\(1);
\REGLED9|ALT_INV_DOUT~q\ <= NOT \REGLED9|DOUT~q\;
\REGLED8|ALT_INV_DOUT~q\ <= NOT \REGLED8|DOUT~q\;
\CPU|SOMPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|SOMPC|Add0~21_sumout\;
\CPU|SOMPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|SOMPC|Add0~17_sumout\;
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
\ALT_INV_SWITCH[7]~input_o\ <= NOT \SWITCH[7]~input_o\;
\ALT_INV_SWITCH[6]~input_o\ <= NOT \SWITCH[6]~input_o\;
\ALT_INV_SWITCH[5]~input_o\ <= NOT \SWITCH[5]~input_o\;
\ALT_INV_SWITCH[4]~input_o\ <= NOT \SWITCH[4]~input_o\;
\ALT_INV_SWITCH[3]~input_o\ <= NOT \SWITCH[3]~input_o\;
\ALT_INV_SWITCH[2]~input_o\ <= NOT \SWITCH[2]~input_o\;
\ALT_INV_SWITCH[1]~input_o\ <= NOT \SWITCH[1]~input_o\;
\ALT_INV_FPGA_RESET~input_o\ <= NOT \FPGA_RESET~input_o\;
\ALT_INV_SWITCH[0]~input_o\ <= NOT \SWITCH[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SWITCH[9]~input_o\ <= NOT \SWITCH[9]~input_o\;
\ALT_INV_SWITCH[8]~input_o\ <= NOT \SWITCH[8]~input_o\;
\ALT_INV_Data_IN[7]~2_combout\ <= NOT \Data_IN[7]~2_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~9_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~9_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~8_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~8_combout\;
\ALT_INV_Data_IN[4]~1_combout\ <= NOT \Data_IN[4]~1_combout\;
\ALT_INV_Data_IN[3]~0_combout\ <= NOT \Data_IN[3]~0_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~7_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~7_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~6_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~6_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~5_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~5_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~4_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~4_combout\;
\CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\ <= NOT \CPU|DECODER1|Sinais_Controle~0_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~3_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~2_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~1_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~0_combout\;
\ALT_INV_ANDSW07~1_combout\ <= NOT \ANDSW07~1_combout\;
\ALT_INV_ANDHEX5~0_combout\ <= NOT \ANDHEX5~0_combout\;
\ALT_INV_ANDHEX0~1_combout\ <= NOT \ANDHEX0~1_combout\;
\ALT_INV_ANDLED8~0_combout\ <= NOT \ANDLED8~0_combout\;
\ALT_INV_ANDSW07~0_combout\ <= NOT \ANDSW07~0_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ALT_INV_ANDHEX0~0_combout\ <= NOT \ANDHEX0~0_combout\;
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
\DISPLAY_HEX5|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \DISPLAY_HEX5|rascSaida7seg[2]~2_combout\;
\REGHEX5|ALT_INV_DOUT\(3) <= NOT \REGHEX5|DOUT\(3);
\REGHEX5|ALT_INV_DOUT\(2) <= NOT \REGHEX5|DOUT\(2);
\REGHEX5|ALT_INV_DOUT\(0) <= NOT \REGHEX5|DOUT\(0);
\REGHEX5|ALT_INV_DOUT\(1) <= NOT \REGHEX5|DOUT\(1);
\DISPLAY_HEX4|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \DISPLAY_HEX4|rascSaida7seg[2]~2_combout\;
\REGHEX4|ALT_INV_DOUT\(3) <= NOT \REGHEX4|DOUT\(3);
\REGHEX4|ALT_INV_DOUT\(2) <= NOT \REGHEX4|DOUT\(2);
\REGHEX4|ALT_INV_DOUT\(0) <= NOT \REGHEX4|DOUT\(0);
\REGHEX4|ALT_INV_DOUT\(1) <= NOT \REGHEX4|DOUT\(1);
\DISPLAY_HEX3|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \DISPLAY_HEX3|rascSaida7seg[2]~2_combout\;
\REGHEX3|ALT_INV_DOUT\(3) <= NOT \REGHEX3|DOUT\(3);
\REGHEX3|ALT_INV_DOUT\(2) <= NOT \REGHEX3|DOUT\(2);
\REGHEX3|ALT_INV_DOUT\(0) <= NOT \REGHEX3|DOUT\(0);
\REGHEX3|ALT_INV_DOUT\(1) <= NOT \REGHEX3|DOUT\(1);
\DISPLAY_HEX2|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \DISPLAY_HEX2|rascSaida7seg[2]~2_combout\;
\REGHEX2|ALT_INV_DOUT\(3) <= NOT \REGHEX2|DOUT\(3);
\REGHEX2|ALT_INV_DOUT\(2) <= NOT \REGHEX2|DOUT\(2);
\REGHEX2|ALT_INV_DOUT\(0) <= NOT \REGHEX2|DOUT\(0);
\REGHEX2|ALT_INV_DOUT\(1) <= NOT \REGHEX2|DOUT\(1);
\DISPLAY_HEX1|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \DISPLAY_HEX1|rascSaida7seg[2]~2_combout\;
\REGHEX1|ALT_INV_DOUT\(3) <= NOT \REGHEX1|DOUT\(3);
\REGHEX1|ALT_INV_DOUT\(2) <= NOT \REGHEX1|DOUT\(2);
\REGHEX1|ALT_INV_DOUT\(0) <= NOT \REGHEX1|DOUT\(0);

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
	i => \DISPLAY_HEX0|rascSaida7seg[0]~0_combout\,
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
	i => \DISPLAY_HEX0|rascSaida7seg[1]~1_combout\,
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
	i => \DISPLAY_HEX0|ALT_INV_rascSaida7seg[2]~2_combout\,
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
	i => \DISPLAY_HEX0|rascSaida7seg[3]~3_combout\,
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
	i => \DISPLAY_HEX0|rascSaida7seg[4]~4_combout\,
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
	i => \DISPLAY_HEX0|rascSaida7seg[5]~5_combout\,
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
	i => \DISPLAY_HEX0|rascSaida7seg[6]~6_combout\,
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
	i => \DISPLAY_HEX1|rascSaida7seg[0]~0_combout\,
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
	i => \DISPLAY_HEX1|rascSaida7seg[1]~1_combout\,
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
	i => \DISPLAY_HEX1|ALT_INV_rascSaida7seg[2]~2_combout\,
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
	i => \DISPLAY_HEX1|rascSaida7seg[3]~3_combout\,
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
	i => \DISPLAY_HEX1|rascSaida7seg[4]~4_combout\,
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
	i => \DISPLAY_HEX1|rascSaida7seg[5]~5_combout\,
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
	i => \DISPLAY_HEX1|rascSaida7seg[6]~6_combout\,
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
	i => \DISPLAY_HEX2|rascSaida7seg[0]~0_combout\,
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
	i => \DISPLAY_HEX2|rascSaida7seg[1]~1_combout\,
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
	i => \DISPLAY_HEX2|ALT_INV_rascSaida7seg[2]~2_combout\,
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
	i => \DISPLAY_HEX2|rascSaida7seg[3]~3_combout\,
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
	i => \DISPLAY_HEX2|rascSaida7seg[4]~4_combout\,
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
	i => \DISPLAY_HEX2|rascSaida7seg[5]~5_combout\,
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
	i => \DISPLAY_HEX2|rascSaida7seg[6]~6_combout\,
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
	i => \DISPLAY_HEX3|rascSaida7seg[0]~0_combout\,
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
	i => \DISPLAY_HEX3|rascSaida7seg[1]~1_combout\,
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
	i => \DISPLAY_HEX3|ALT_INV_rascSaida7seg[2]~2_combout\,
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
	i => \DISPLAY_HEX3|rascSaida7seg[3]~3_combout\,
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
	i => \DISPLAY_HEX3|rascSaida7seg[4]~4_combout\,
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
	i => \DISPLAY_HEX3|rascSaida7seg[5]~5_combout\,
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
	i => \DISPLAY_HEX3|rascSaida7seg[6]~6_combout\,
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
	i => \DISPLAY_HEX4|rascSaida7seg[0]~0_combout\,
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
	i => \DISPLAY_HEX4|rascSaida7seg[1]~1_combout\,
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
	i => \DISPLAY_HEX4|ALT_INV_rascSaida7seg[2]~2_combout\,
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
	i => \DISPLAY_HEX4|rascSaida7seg[3]~3_combout\,
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
	i => \DISPLAY_HEX4|rascSaida7seg[4]~4_combout\,
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
	i => \DISPLAY_HEX4|rascSaida7seg[5]~5_combout\,
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
	i => \DISPLAY_HEX4|rascSaida7seg[6]~6_combout\,
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
	i => \DISPLAY_HEX5|rascSaida7seg[0]~0_combout\,
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
	i => \DISPLAY_HEX5|rascSaida7seg[1]~1_combout\,
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
	i => \DISPLAY_HEX5|ALT_INV_rascSaida7seg[2]~2_combout\,
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
	i => \DISPLAY_HEX5|rascSaida7seg[3]~3_combout\,
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
	i => \DISPLAY_HEX5|rascSaida7seg[4]~4_combout\,
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
	i => \DISPLAY_HEX5|rascSaida7seg[5]~5_combout\,
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
	i => \DISPLAY_HEX5|rascSaida7seg[6]~6_combout\,
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

\CPU|MUXPC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[1]~1_combout\ = ( \CPU|SOMPC|Add0~5_sumout\ & ( ((!\CPU|PC1|dataOUT\(4)) # ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\))) # (\CPU|PC1|dataOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(4),
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \CPU|SOMPC|ALT_INV_Add0~5_sumout\,
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

\CPU|MUXPC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[2]~2_combout\ = ( \CPU|SOMPC|Add0~9_sumout\ & ( ((!\CPU|PC1|dataOUT\(4)) # ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\))) # (\CPU|PC1|dataOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(4),
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \CPU|SOMPC|ALT_INV_Add0~9_sumout\,
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(3));

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(2) & !\CPU|PC1|dataOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(1),
	datab => \CPU|PC1|ALT_INV_dataOUT\(2),
	datac => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~4_combout\);

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

\CPU|MUXPC|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[5]~4_combout\ = ( \CPU|SOMPC|Add0~21_sumout\ & ( ((!\CPU|PC1|dataOUT\(4)) # ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\))) # (\CPU|PC1|dataOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(4),
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \CPU|SOMPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUXPC|saida_MUX[5]~4_combout\);

\CPU|PC1|dataOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUXPC|saida_MUX[5]~4_combout\,
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

\CPU|PC1|dataOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~25_sumout\,
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

\CPU|PC1|dataOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|SOMPC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(8));

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\CPU|PC1|dataOUT\(5) & (!\CPU|PC1|dataOUT\(6) & (!\CPU|PC1|dataOUT\(7) & !\CPU|PC1|dataOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(5),
	datab => \CPU|PC1|ALT_INV_dataOUT\(6),
	datac => \CPU|PC1|ALT_INV_dataOUT\(7),
	datad => \CPU|PC1|ALT_INV_dataOUT\(8),
	combout => \ROM1|memROM~2_combout\);

\CPU|MUXPC|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[4]~3_combout\ = ( \CPU|SOMPC|Add0~17_sumout\ & ( ((!\CPU|PC1|dataOUT\(4)) # ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\))) # (\CPU|PC1|dataOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(4),
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \CPU|SOMPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUXPC|saida_MUX[4]~3_combout\);

\CPU|PC1|dataOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUXPC|saida_MUX[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(4));

\CPU|MUXPC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[0]~0_combout\ = ( \CPU|SOMPC|Add0~1_sumout\ & ( ((!\CPU|PC1|dataOUT\(4)) # ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~4_combout\))) # (\CPU|PC1|dataOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(4),
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \CPU|SOMPC|ALT_INV_Add0~1_sumout\,
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

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (\CPU|PC1|dataOUT\(3) & ((!\CPU|PC1|dataOUT\(0) & (\CPU|PC1|dataOUT\(1) & \CPU|PC1|dataOUT\(2))) # (\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010010000000000101001000000000010100100000000001010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ANDSW07~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDSW07~1_combout\ = (!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(4) & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(4),
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ANDSW07~1_combout\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & (\CPU|PC1|dataOUT\(2))) # (\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(2) & \CPU|PC1|dataOUT\(3))))) # (\CPU|PC1|dataOUT\(0) & (\CPU|PC1|dataOUT\(2) & ((!\CPU|PC1|dataOUT\(3)) # 
-- (\CPU|PC1|dataOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101001000011010010100100001101001010010000110100101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU|PC1|dataOUT\(8) & ( (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT\(5) & (!\CPU|PC1|dataOUT\(6) & !\CPU|PC1|dataOUT\(7)))) ) )

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
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(3) & ((!\CPU|PC1|dataOUT\(1)) # (!\CPU|PC1|dataOUT\(2))))) # (\CPU|PC1|dataOUT\(0) & (((\CPU|PC1|dataOUT\(2) & \CPU|PC1|dataOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000101101010000000010110101000000001011010100000000101",
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
-- \ROM1|memROM~6_combout\ = (!\CPU|PC1|dataOUT\(3) & (\CPU|PC1|dataOUT\(1) & ((!\CPU|PC1|dataOUT\(2)) # (\CPU|PC1|dataOUT\(0))))) # (\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT\(1) $ (((\CPU|PC1|dataOUT\(0) & !\CPU|PC1|dataOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000110011100001100011001110000110001100111000011000110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~6_combout\);

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

\CPU|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~0_combout\ = ( \SWITCH[8]~input_o\ & ( \SWITCH[9]~input_o\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~0_combout\ $ (!\ROM1|memROM~6_combout\)))) ) ) ) # ( !\SWITCH[8]~input_o\ & ( \SWITCH[9]~input_o\ & 
-- ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) ) ) # ( \SWITCH[8]~input_o\ & ( !\SWITCH[9]~input_o\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~5_combout\ & 
-- \ROM1|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000001000000000000000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ALT_INV_SWITCH[8]~input_o\,
	dataf => \ALT_INV_SWITCH[9]~input_o\,
	combout => \CPU|MUX1|saida_MUX[0]~0_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\CPU|MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~1_combout\ = ( \KEY[0]~input_o\ & ( \KEY[2]~input_o\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\)) ) ) ) # ( !\KEY[0]~input_o\ & ( \KEY[2]~input_o\ & ( (\ROM1|memROM~0_combout\ & 
-- (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) ) ) # ( \KEY[0]~input_o\ & ( !\KEY[2]~input_o\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000010000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \CPU|MUX1|saida_MUX[0]~1_combout\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\CPU|MUX1|saida_MUX[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~2_combout\ = ( \KEY[3]~input_o\ & ( \KEY[1]~input_o\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\)) ) ) ) # ( !\KEY[3]~input_o\ & ( \KEY[1]~input_o\ & ( (!\ROM1|memROM~0_combout\ & 
-- (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\))) ) ) ) # ( \KEY[3]~input_o\ & ( !\KEY[1]~input_o\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000001000000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \CPU|MUX1|saida_MUX[0]~2_combout\);

\ANDSW07~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDSW07~0_combout\ = (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~5_combout\) # (\ROM1|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000101010001010100010101000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ANDSW07~0_combout\);

\SWITCH[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(0),
	o => \SWITCH[0]~input_o\);

\CPU|MUX1|saida_MUX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~3_combout\ = ( \SWITCH[0]~input_o\ & ( (!\ANDSW07~0_combout\ & (\ANDSW07~1_combout\ & ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001110000000000000000000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_ANDSW07~0_combout\,
	datad => \ALT_INV_ANDSW07~1_combout\,
	datae => \ALT_INV_SWITCH[0]~input_o\,
	combout => \CPU|MUX1|saida_MUX[0]~3_combout\);

\ANDHEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX0~1_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ANDHEX0~1_combout\);

\CPU|DECODER1|Sinais_Controle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Sinais_Controle~0_combout\ = ( !\CPU|PC1|dataOUT\(7) & ( !\CPU|PC1|dataOUT\(8) & ( (!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT\(5) & !\CPU|PC1|dataOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(4),
	datac => \CPU|PC1|ALT_INV_dataOUT\(5),
	datad => \CPU|PC1|ALT_INV_dataOUT\(6),
	datae => \CPU|PC1|ALT_INV_dataOUT\(7),
	dataf => \CPU|PC1|ALT_INV_dataOUT\(8),
	combout => \CPU|DECODER1|Sinais_Controle~0_combout\);

\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

\CPU|MUX1|saida_MUX[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~4_combout\ = ( \CPU|DECODER1|Sinais_Controle~0_combout\ & ( \FPGA_RESET~input_o\ & ( (!\CPU|PC1|dataOUT\(0) & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~3_combout\ & \ANDHEX0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ALT_INV_ANDHEX0~1_combout\,
	datae => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	dataf => \ALT_INV_FPGA_RESET~input_o\,
	combout => \CPU|MUX1|saida_MUX[0]~4_combout\);

\CPU|MUX1|saida_MUX[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~5_combout\ = ( \CPU|MUX1|saida_MUX[0]~3_combout\ & ( \CPU|MUX1|saida_MUX[0]~4_combout\ ) ) # ( !\CPU|MUX1|saida_MUX[0]~3_combout\ & ( \CPU|MUX1|saida_MUX[0]~4_combout\ ) ) # ( \CPU|MUX1|saida_MUX[0]~3_combout\ & ( 
-- !\CPU|MUX1|saida_MUX[0]~4_combout\ ) ) # ( !\CPU|MUX1|saida_MUX[0]~3_combout\ & ( !\CPU|MUX1|saida_MUX[0]~4_combout\ & ( (\ANDSW07~1_combout\ & (((\CPU|MUX1|saida_MUX[0]~2_combout\) # (\CPU|MUX1|saida_MUX[0]~1_combout\)) # 
-- (\CPU|MUX1|saida_MUX[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ANDSW07~1_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[0]~2_combout\,
	datae => \CPU|MUX1|ALT_INV_saida_MUX[0]~3_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[0]~4_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~5_combout\);

\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[0]~5_combout\ ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( !\CPU|MUX1|saida_MUX[0]~5_combout\ ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX1|ALT_INV_saida_MUX[0]~5_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|DECODER1|Sinais_Controle~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Sinais_Controle~1_combout\ = (!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(4) & \ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(4),
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \CPU|DECODER1|Sinais_Controle~1_combout\);

\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~5_combout\,
	sload => \CPU|DECODER1|Sinais_Controle~1_combout\,
	ena => \CPU|DECODER1|Sinais_Controle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

\ANDHEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX0~0_combout\ = (\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(4) & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(4),
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ANDHEX0~0_combout\);

\ANDLEDR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDLEDR~0_combout\ = (\ANDHEX0~0_combout\ & (!\ANDSW07~0_combout\ & ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000000000011100000000000001110000000000000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_ANDHEX0~0_combout\,
	datad => \ALT_INV_ANDSW07~0_combout\,
	combout => \ANDLEDR~0_combout\);

\REGLEDR|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(0));

\SWITCH[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(1),
	o => \SWITCH[1]~input_o\);

\CPU|MUX1|saida_MUX[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~6_combout\ = ( \SWITCH[1]~input_o\ & ( (!\ANDSW07~0_combout\ & (\ANDSW07~1_combout\ & ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001110000000000000000000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_ANDSW07~0_combout\,
	datad => \ALT_INV_ANDSW07~1_combout\,
	datae => \ALT_INV_SWITCH[1]~input_o\,
	combout => \CPU|MUX1|saida_MUX[1]~6_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[1]~6_combout\ ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( !\CPU|MUX1|saida_MUX[1]~6_combout\ ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~6_combout\,
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
	asdata => \CPU|MUX1|saida_MUX[1]~6_combout\,
	sload => \CPU|DECODER1|Sinais_Controle~1_combout\,
	ena => \CPU|DECODER1|Sinais_Controle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

\REGLEDR|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(1));

\SWITCH[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(2),
	o => \SWITCH[2]~input_o\);

\CPU|MUX1|saida_MUX[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~7_combout\ = ( \SWITCH[2]~input_o\ & ( (!\ANDSW07~0_combout\ & (\ANDSW07~1_combout\ & ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001110000000000000000000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_ANDSW07~0_combout\,
	datad => \ALT_INV_ANDSW07~1_combout\,
	datae => \ALT_INV_SWITCH[2]~input_o\,
	combout => \CPU|MUX1|saida_MUX[2]~7_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[2]~7_combout\ ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( !\CPU|MUX1|saida_MUX[2]~7_combout\ ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX1|ALT_INV_saida_MUX[2]~7_combout\,
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
	asdata => \CPU|MUX1|saida_MUX[2]~7_combout\,
	sload => \CPU|DECODER1|Sinais_Controle~1_combout\,
	ena => \CPU|DECODER1|Sinais_Controle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

\REGLEDR|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(2));

\SWITCH[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(3),
	o => \SWITCH[3]~input_o\);

\Data_IN[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[3]~0_combout\ = ( \SWITCH[3]~input_o\ & ( (!\ANDSW07~0_combout\ & (\ANDSW07~1_combout\ & ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001110000000000000000000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_ANDSW07~0_combout\,
	datad => \ALT_INV_ANDSW07~1_combout\,
	datae => \ALT_INV_SWITCH[3]~input_o\,
	combout => \Data_IN[3]~0_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( !\Data_IN[3]~0_combout\ ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( !\Data_IN[3]~0_combout\ ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Data_IN[3]~0_combout\,
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
	asdata => \Data_IN[3]~0_combout\,
	sload => \CPU|DECODER1|Sinais_Controle~1_combout\,
	ena => \CPU|DECODER1|Sinais_Controle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

\REGLEDR|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(3));

\SWITCH[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(4),
	o => \SWITCH[4]~input_o\);

\Data_IN[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[4]~1_combout\ = ( \SWITCH[4]~input_o\ & ( (!\ANDSW07~0_combout\ & (\ANDSW07~1_combout\ & ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001110000000000000000000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_ANDSW07~0_combout\,
	datad => \ALT_INV_ANDSW07~1_combout\,
	datae => \ALT_INV_SWITCH[4]~input_o\,
	combout => \Data_IN[4]~1_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( !\Data_IN[4]~1_combout\ ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( !\Data_IN[4]~1_combout\ ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Data_IN[4]~1_combout\,
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
	asdata => \Data_IN[4]~1_combout\,
	sload => \CPU|DECODER1|Sinais_Controle~1_combout\,
	ena => \CPU|DECODER1|Sinais_Controle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(4));

\REGLEDR|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(4));

\SWITCH[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(5),
	o => \SWITCH[5]~input_o\);

\CPU|MUX1|saida_MUX[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~8_combout\ = ( \SWITCH[5]~input_o\ & ( (!\ANDSW07~0_combout\ & (\ANDSW07~1_combout\ & ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001110000000000000000000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_ANDSW07~0_combout\,
	datad => \ALT_INV_ANDSW07~1_combout\,
	datae => \ALT_INV_SWITCH[5]~input_o\,
	combout => \CPU|MUX1|saida_MUX[5]~8_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[5]~8_combout\ ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( !\CPU|MUX1|saida_MUX[5]~8_combout\ ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[5]~8_combout\,
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
	asdata => \CPU|MUX1|saida_MUX[5]~8_combout\,
	sload => \CPU|DECODER1|Sinais_Controle~1_combout\,
	ena => \CPU|DECODER1|Sinais_Controle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(5));

\REGLEDR|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(5));

\SWITCH[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(6),
	o => \SWITCH[6]~input_o\);

\CPU|MUX1|saida_MUX[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~9_combout\ = ( \SWITCH[6]~input_o\ & ( (!\ANDSW07~0_combout\ & (\ANDSW07~1_combout\ & ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001110000000000000000000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_ANDSW07~0_combout\,
	datad => \ALT_INV_ANDSW07~1_combout\,
	datae => \ALT_INV_SWITCH[6]~input_o\,
	combout => \CPU|MUX1|saida_MUX[6]~9_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[6]~9_combout\ ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( !\CPU|MUX1|saida_MUX[6]~9_combout\ ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~9_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1|saida_MUX[6]~9_combout\,
	sload => \CPU|DECODER1|Sinais_Controle~1_combout\,
	ena => \CPU|DECODER1|Sinais_Controle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(6));

\REGLEDR|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(6));

\SWITCH[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH(7),
	o => \SWITCH[7]~input_o\);

\Data_IN[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[7]~2_combout\ = ( \SWITCH[7]~input_o\ & ( (!\ANDSW07~0_combout\ & (\ANDSW07~1_combout\ & ((!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001110000000000000000000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_ANDSW07~0_combout\,
	datad => \ALT_INV_ANDSW07~1_combout\,
	datae => \ALT_INV_SWITCH[7]~input_o\,
	combout => \Data_IN[7]~2_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( !\Data_IN[7]~2_combout\ ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Data_IN[7]~2_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \Data_IN[7]~2_combout\,
	sload => \CPU|DECODER1|Sinais_Controle~1_combout\,
	ena => \CPU|DECODER1|Sinais_Controle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(7));

\REGLEDR|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \ANDLEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(7));

\ANDLED8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDLED8~0_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ANDLED8~0_combout\);

\REGLED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLED8|DOUT~0_combout\ = (!\ANDHEX0~0_combout\ & (\REGLED8|DOUT~q\)) # (\ANDHEX0~0_combout\ & ((!\ANDLED8~0_combout\ & (\REGLED8|DOUT~q\)) # (\ANDLED8~0_combout\ & ((\CPU|REG1|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010101010101001101010101010100110101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGLED8|ALT_INV_DOUT~q\,
	datab => \CPU|REG1|ALT_INV_DOUT\(0),
	datac => \ALT_INV_ANDHEX0~0_combout\,
	datad => \ALT_INV_ANDLED8~0_combout\,
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
-- \REGLED9|DOUT~0_combout\ = ( \ANDHEX0~0_combout\ & ( \ANDSW07~0_combout\ & ( \REGLED9|DOUT~q\ ) ) ) # ( !\ANDHEX0~0_combout\ & ( \ANDSW07~0_combout\ & ( \REGLED9|DOUT~q\ ) ) ) # ( \ANDHEX0~0_combout\ & ( !\ANDSW07~0_combout\ & ( (!\ROM1|memROM~0_combout\ 
-- & (\REGLED9|DOUT~q\)) # (\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~1_combout\ & (\REGLED9|DOUT~q\)) # (\ROM1|memROM~1_combout\ & ((\CPU|REG1|DOUT\(0)))))) ) ) ) # ( !\ANDHEX0~0_combout\ & ( !\ANDSW07~0_combout\ & ( \REGLED9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGLED9|ALT_INV_DOUT~q\,
	datab => \CPU|REG1|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ALT_INV_ANDHEX0~0_combout\,
	dataf => \ALT_INV_ANDSW07~0_combout\,
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

\ANDHEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX0~2_combout\ = (\ANDHEX0~0_combout\ & \ANDHEX0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ANDHEX0~0_combout\,
	datab => \ALT_INV_ANDHEX0~1_combout\,
	combout => \ANDHEX0~2_combout\);

\REGHEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \ANDHEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX0|DOUT\(1));

\REGHEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \ANDHEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX0|DOUT\(0));

\REGHEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \ANDHEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX0|DOUT\(2));

\REGHEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \ANDHEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX0|DOUT\(3));

\DISPLAY_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX0|rascSaida7seg[0]~0_combout\ = (!\REGHEX0|DOUT\(2) & (\REGHEX0|DOUT\(0) & (!\REGHEX0|DOUT\(1) $ (\REGHEX0|DOUT\(3))))) # (\REGHEX0|DOUT\(2) & (!\REGHEX0|DOUT\(1) & (!\REGHEX0|DOUT\(0) $ (\REGHEX0|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000010010001010000001001000101000000100100010100000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX0|ALT_INV_DOUT\(1),
	datab => \REGHEX0|ALT_INV_DOUT\(0),
	datac => \REGHEX0|ALT_INV_DOUT\(2),
	datad => \REGHEX0|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX0|rascSaida7seg[0]~0_combout\);

\DISPLAY_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX0|rascSaida7seg[1]~1_combout\ = (!\REGHEX0|DOUT\(1) & (\REGHEX0|DOUT\(2) & (!\REGHEX0|DOUT\(0) $ (!\REGHEX0|DOUT\(3))))) # (\REGHEX0|DOUT\(1) & ((!\REGHEX0|DOUT\(0) & (\REGHEX0|DOUT\(2))) # (\REGHEX0|DOUT\(0) & ((\REGHEX0|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011101000001100001110100000110000111010000011000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX0|ALT_INV_DOUT\(1),
	datab => \REGHEX0|ALT_INV_DOUT\(0),
	datac => \REGHEX0|ALT_INV_DOUT\(2),
	datad => \REGHEX0|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX0|rascSaida7seg[1]~1_combout\);

\DISPLAY_HEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX0|rascSaida7seg[2]~2_combout\ = (!\REGHEX0|DOUT\(2) & ((!\REGHEX0|DOUT\(1)) # ((\REGHEX0|DOUT\(3)) # (\REGHEX0|DOUT\(0))))) # (\REGHEX0|DOUT\(2) & ((!\REGHEX0|DOUT\(3)) # ((!\REGHEX0|DOUT\(1) & \REGHEX0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111110010101111111111001010111111111100101011111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX0|ALT_INV_DOUT\(1),
	datab => \REGHEX0|ALT_INV_DOUT\(0),
	datac => \REGHEX0|ALT_INV_DOUT\(2),
	datad => \REGHEX0|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX0|rascSaida7seg[2]~2_combout\);

\DISPLAY_HEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX0|rascSaida7seg[3]~3_combout\ = (!\REGHEX0|DOUT\(1) & (!\REGHEX0|DOUT\(3) & (!\REGHEX0|DOUT\(2) $ (!\REGHEX0|DOUT\(0))))) # (\REGHEX0|DOUT\(1) & ((!\REGHEX0|DOUT\(2) & (\REGHEX0|DOUT\(3) & !\REGHEX0|DOUT\(0))) # (\REGHEX0|DOUT\(2) & 
-- ((\REGHEX0|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX0|ALT_INV_DOUT\(3),
	datab => \REGHEX0|ALT_INV_DOUT\(2),
	datac => \REGHEX0|ALT_INV_DOUT\(1),
	datad => \REGHEX0|ALT_INV_DOUT\(0),
	combout => \DISPLAY_HEX0|rascSaida7seg[3]~3_combout\);

\DISPLAY_HEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX0|rascSaida7seg[4]~4_combout\ = (!\REGHEX0|DOUT\(1) & ((!\REGHEX0|DOUT\(2) & ((\REGHEX0|DOUT\(0)))) # (\REGHEX0|DOUT\(2) & (!\REGHEX0|DOUT\(3))))) # (\REGHEX0|DOUT\(1) & (((!\REGHEX0|DOUT\(3) & \REGHEX0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011111000001000001111100000100000111110000010000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX0|ALT_INV_DOUT\(1),
	datab => \REGHEX0|ALT_INV_DOUT\(2),
	datac => \REGHEX0|ALT_INV_DOUT\(3),
	datad => \REGHEX0|ALT_INV_DOUT\(0),
	combout => \DISPLAY_HEX0|rascSaida7seg[4]~4_combout\);

\DISPLAY_HEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX0|rascSaida7seg[5]~5_combout\ = (!\REGHEX0|DOUT\(1) & (\REGHEX0|DOUT\(0) & (!\REGHEX0|DOUT\(2) $ (\REGHEX0|DOUT\(3))))) # (\REGHEX0|DOUT\(1) & (!\REGHEX0|DOUT\(3) & ((!\REGHEX0|DOUT\(2)) # (\REGHEX0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000010011100010000001001110001000000100111000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX0|ALT_INV_DOUT\(1),
	datab => \REGHEX0|ALT_INV_DOUT\(0),
	datac => \REGHEX0|ALT_INV_DOUT\(2),
	datad => \REGHEX0|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX0|rascSaida7seg[5]~5_combout\);

\DISPLAY_HEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX0|rascSaida7seg[6]~6_combout\ = (!\REGHEX0|DOUT\(0) & (!\REGHEX0|DOUT\(1) & (!\REGHEX0|DOUT\(2) $ (\REGHEX0|DOUT\(3))))) # (\REGHEX0|DOUT\(0) & (!\REGHEX0|DOUT\(3) & (!\REGHEX0|DOUT\(1) $ (\REGHEX0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000100001000101000010000100010100001000010001010000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX0|ALT_INV_DOUT\(1),
	datab => \REGHEX0|ALT_INV_DOUT\(0),
	datac => \REGHEX0|ALT_INV_DOUT\(2),
	datad => \REGHEX0|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX0|rascSaida7seg[6]~6_combout\);

\ANDHEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX1~0_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ANDHEX0~0_combout\ & !\ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_ANDHEX0~0_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ANDHEX1~0_combout\);

\REGHEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \ANDHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX1|DOUT\(1));

\REGHEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \ANDHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX1|DOUT\(0));

\REGHEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \ANDHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX1|DOUT\(2));

\REGHEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \ANDHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX1|DOUT\(3));

\DISPLAY_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX1|rascSaida7seg[0]~0_combout\ = (!\REGHEX1|DOUT\(2) & (\REGHEX1|DOUT\(0) & (!\REGHEX1|DOUT\(1) $ (\REGHEX1|DOUT\(3))))) # (\REGHEX1|DOUT\(2) & (!\REGHEX1|DOUT\(1) & (!\REGHEX1|DOUT\(0) $ (\REGHEX1|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000010010001010000001001000101000000100100010100000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX1|ALT_INV_DOUT\(1),
	datab => \REGHEX1|ALT_INV_DOUT\(0),
	datac => \REGHEX1|ALT_INV_DOUT\(2),
	datad => \REGHEX1|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX1|rascSaida7seg[0]~0_combout\);

\DISPLAY_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX1|rascSaida7seg[1]~1_combout\ = (!\REGHEX1|DOUT\(1) & (\REGHEX1|DOUT\(2) & (!\REGHEX1|DOUT\(0) $ (!\REGHEX1|DOUT\(3))))) # (\REGHEX1|DOUT\(1) & ((!\REGHEX1|DOUT\(0) & (\REGHEX1|DOUT\(2))) # (\REGHEX1|DOUT\(0) & ((\REGHEX1|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011101000001100001110100000110000111010000011000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX1|ALT_INV_DOUT\(1),
	datab => \REGHEX1|ALT_INV_DOUT\(0),
	datac => \REGHEX1|ALT_INV_DOUT\(2),
	datad => \REGHEX1|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX1|rascSaida7seg[1]~1_combout\);

\DISPLAY_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX1|rascSaida7seg[2]~2_combout\ = (!\REGHEX1|DOUT\(2) & ((!\REGHEX1|DOUT\(1)) # ((\REGHEX1|DOUT\(3)) # (\REGHEX1|DOUT\(0))))) # (\REGHEX1|DOUT\(2) & ((!\REGHEX1|DOUT\(3)) # ((!\REGHEX1|DOUT\(1) & \REGHEX1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111110010101111111111001010111111111100101011111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX1|ALT_INV_DOUT\(1),
	datab => \REGHEX1|ALT_INV_DOUT\(0),
	datac => \REGHEX1|ALT_INV_DOUT\(2),
	datad => \REGHEX1|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX1|rascSaida7seg[2]~2_combout\);

\DISPLAY_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX1|rascSaida7seg[3]~3_combout\ = (!\REGHEX1|DOUT\(1) & (!\REGHEX1|DOUT\(3) & (!\REGHEX1|DOUT\(2) $ (!\REGHEX1|DOUT\(0))))) # (\REGHEX1|DOUT\(1) & ((!\REGHEX1|DOUT\(2) & (\REGHEX1|DOUT\(3) & !\REGHEX1|DOUT\(0))) # (\REGHEX1|DOUT\(2) & 
-- ((\REGHEX1|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX1|ALT_INV_DOUT\(3),
	datab => \REGHEX1|ALT_INV_DOUT\(2),
	datac => \REGHEX1|ALT_INV_DOUT\(1),
	datad => \REGHEX1|ALT_INV_DOUT\(0),
	combout => \DISPLAY_HEX1|rascSaida7seg[3]~3_combout\);

\DISPLAY_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX1|rascSaida7seg[4]~4_combout\ = (!\REGHEX1|DOUT\(1) & ((!\REGHEX1|DOUT\(2) & ((\REGHEX1|DOUT\(0)))) # (\REGHEX1|DOUT\(2) & (!\REGHEX1|DOUT\(3))))) # (\REGHEX1|DOUT\(1) & (((!\REGHEX1|DOUT\(3) & \REGHEX1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011111000001000001111100000100000111110000010000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX1|ALT_INV_DOUT\(1),
	datab => \REGHEX1|ALT_INV_DOUT\(2),
	datac => \REGHEX1|ALT_INV_DOUT\(3),
	datad => \REGHEX1|ALT_INV_DOUT\(0),
	combout => \DISPLAY_HEX1|rascSaida7seg[4]~4_combout\);

\DISPLAY_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX1|rascSaida7seg[5]~5_combout\ = (!\REGHEX1|DOUT\(1) & (\REGHEX1|DOUT\(0) & (!\REGHEX1|DOUT\(2) $ (\REGHEX1|DOUT\(3))))) # (\REGHEX1|DOUT\(1) & (!\REGHEX1|DOUT\(3) & ((!\REGHEX1|DOUT\(2)) # (\REGHEX1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000010011100010000001001110001000000100111000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX1|ALT_INV_DOUT\(1),
	datab => \REGHEX1|ALT_INV_DOUT\(0),
	datac => \REGHEX1|ALT_INV_DOUT\(2),
	datad => \REGHEX1|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX1|rascSaida7seg[5]~5_combout\);

\DISPLAY_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX1|rascSaida7seg[6]~6_combout\ = (!\REGHEX1|DOUT\(0) & (!\REGHEX1|DOUT\(1) & (!\REGHEX1|DOUT\(2) $ (\REGHEX1|DOUT\(3))))) # (\REGHEX1|DOUT\(0) & (!\REGHEX1|DOUT\(3) & (!\REGHEX1|DOUT\(1) $ (\REGHEX1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000100001000101000010000100010100001000010001010000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX1|ALT_INV_DOUT\(1),
	datab => \REGHEX1|ALT_INV_DOUT\(0),
	datac => \REGHEX1|ALT_INV_DOUT\(2),
	datad => \REGHEX1|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX1|rascSaida7seg[6]~6_combout\);

\ANDHEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX2~0_combout\ = ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ANDHEX0~0_combout\ & !\ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_ANDHEX0~0_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ANDHEX2~0_combout\);

\REGHEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \ANDHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX2|DOUT\(1));

\REGHEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \ANDHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX2|DOUT\(0));

\REGHEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \ANDHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX2|DOUT\(2));

\REGHEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \ANDHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX2|DOUT\(3));

\DISPLAY_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX2|rascSaida7seg[0]~0_combout\ = (!\REGHEX2|DOUT\(2) & (\REGHEX2|DOUT\(0) & (!\REGHEX2|DOUT\(1) $ (\REGHEX2|DOUT\(3))))) # (\REGHEX2|DOUT\(2) & (!\REGHEX2|DOUT\(1) & (!\REGHEX2|DOUT\(0) $ (\REGHEX2|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000010010001010000001001000101000000100100010100000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX2|ALT_INV_DOUT\(1),
	datab => \REGHEX2|ALT_INV_DOUT\(0),
	datac => \REGHEX2|ALT_INV_DOUT\(2),
	datad => \REGHEX2|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX2|rascSaida7seg[0]~0_combout\);

\DISPLAY_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX2|rascSaida7seg[1]~1_combout\ = (!\REGHEX2|DOUT\(1) & (\REGHEX2|DOUT\(2) & (!\REGHEX2|DOUT\(0) $ (!\REGHEX2|DOUT\(3))))) # (\REGHEX2|DOUT\(1) & ((!\REGHEX2|DOUT\(0) & (\REGHEX2|DOUT\(2))) # (\REGHEX2|DOUT\(0) & ((\REGHEX2|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011101000001100001110100000110000111010000011000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX2|ALT_INV_DOUT\(1),
	datab => \REGHEX2|ALT_INV_DOUT\(0),
	datac => \REGHEX2|ALT_INV_DOUT\(2),
	datad => \REGHEX2|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX2|rascSaida7seg[1]~1_combout\);

\DISPLAY_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX2|rascSaida7seg[2]~2_combout\ = (!\REGHEX2|DOUT\(2) & ((!\REGHEX2|DOUT\(1)) # ((\REGHEX2|DOUT\(3)) # (\REGHEX2|DOUT\(0))))) # (\REGHEX2|DOUT\(2) & ((!\REGHEX2|DOUT\(3)) # ((!\REGHEX2|DOUT\(1) & \REGHEX2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111110010101111111111001010111111111100101011111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX2|ALT_INV_DOUT\(1),
	datab => \REGHEX2|ALT_INV_DOUT\(0),
	datac => \REGHEX2|ALT_INV_DOUT\(2),
	datad => \REGHEX2|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX2|rascSaida7seg[2]~2_combout\);

\DISPLAY_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX2|rascSaida7seg[3]~3_combout\ = (!\REGHEX2|DOUT\(1) & (!\REGHEX2|DOUT\(3) & (!\REGHEX2|DOUT\(2) $ (!\REGHEX2|DOUT\(0))))) # (\REGHEX2|DOUT\(1) & ((!\REGHEX2|DOUT\(2) & (\REGHEX2|DOUT\(3) & !\REGHEX2|DOUT\(0))) # (\REGHEX2|DOUT\(2) & 
-- ((\REGHEX2|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX2|ALT_INV_DOUT\(3),
	datab => \REGHEX2|ALT_INV_DOUT\(2),
	datac => \REGHEX2|ALT_INV_DOUT\(1),
	datad => \REGHEX2|ALT_INV_DOUT\(0),
	combout => \DISPLAY_HEX2|rascSaida7seg[3]~3_combout\);

\DISPLAY_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX2|rascSaida7seg[4]~4_combout\ = (!\REGHEX2|DOUT\(1) & ((!\REGHEX2|DOUT\(2) & ((\REGHEX2|DOUT\(0)))) # (\REGHEX2|DOUT\(2) & (!\REGHEX2|DOUT\(3))))) # (\REGHEX2|DOUT\(1) & (((!\REGHEX2|DOUT\(3) & \REGHEX2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011111000001000001111100000100000111110000010000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX2|ALT_INV_DOUT\(1),
	datab => \REGHEX2|ALT_INV_DOUT\(2),
	datac => \REGHEX2|ALT_INV_DOUT\(3),
	datad => \REGHEX2|ALT_INV_DOUT\(0),
	combout => \DISPLAY_HEX2|rascSaida7seg[4]~4_combout\);

\DISPLAY_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX2|rascSaida7seg[5]~5_combout\ = (!\REGHEX2|DOUT\(1) & (\REGHEX2|DOUT\(0) & (!\REGHEX2|DOUT\(2) $ (\REGHEX2|DOUT\(3))))) # (\REGHEX2|DOUT\(1) & (!\REGHEX2|DOUT\(3) & ((!\REGHEX2|DOUT\(2)) # (\REGHEX2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000010011100010000001001110001000000100111000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX2|ALT_INV_DOUT\(1),
	datab => \REGHEX2|ALT_INV_DOUT\(0),
	datac => \REGHEX2|ALT_INV_DOUT\(2),
	datad => \REGHEX2|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX2|rascSaida7seg[5]~5_combout\);

\DISPLAY_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX2|rascSaida7seg[6]~6_combout\ = (!\REGHEX2|DOUT\(0) & (!\REGHEX2|DOUT\(1) & (!\REGHEX2|DOUT\(2) $ (\REGHEX2|DOUT\(3))))) # (\REGHEX2|DOUT\(0) & (!\REGHEX2|DOUT\(3) & (!\REGHEX2|DOUT\(1) $ (\REGHEX2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000100001000101000010000100010100001000010001010000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX2|ALT_INV_DOUT\(1),
	datab => \REGHEX2|ALT_INV_DOUT\(0),
	datac => \REGHEX2|ALT_INV_DOUT\(2),
	datad => \REGHEX2|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX2|rascSaida7seg[6]~6_combout\);

\ANDHEX3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX3~0_combout\ = ( \ROM1|memROM~6_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ANDHEX0~0_combout\ & !\ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_ANDHEX0~0_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ANDHEX3~0_combout\);

\REGHEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \ANDHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX3|DOUT\(1));

\REGHEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \ANDHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX3|DOUT\(0));

\REGHEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \ANDHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX3|DOUT\(2));

\REGHEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \ANDHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX3|DOUT\(3));

\DISPLAY_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX3|rascSaida7seg[0]~0_combout\ = (!\REGHEX3|DOUT\(2) & (\REGHEX3|DOUT\(0) & (!\REGHEX3|DOUT\(1) $ (\REGHEX3|DOUT\(3))))) # (\REGHEX3|DOUT\(2) & (!\REGHEX3|DOUT\(1) & (!\REGHEX3|DOUT\(0) $ (\REGHEX3|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000010010001010000001001000101000000100100010100000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX3|ALT_INV_DOUT\(1),
	datab => \REGHEX3|ALT_INV_DOUT\(0),
	datac => \REGHEX3|ALT_INV_DOUT\(2),
	datad => \REGHEX3|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX3|rascSaida7seg[0]~0_combout\);

\DISPLAY_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX3|rascSaida7seg[1]~1_combout\ = (!\REGHEX3|DOUT\(1) & (\REGHEX3|DOUT\(2) & (!\REGHEX3|DOUT\(0) $ (!\REGHEX3|DOUT\(3))))) # (\REGHEX3|DOUT\(1) & ((!\REGHEX3|DOUT\(0) & (\REGHEX3|DOUT\(2))) # (\REGHEX3|DOUT\(0) & ((\REGHEX3|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011101000001100001110100000110000111010000011000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX3|ALT_INV_DOUT\(1),
	datab => \REGHEX3|ALT_INV_DOUT\(0),
	datac => \REGHEX3|ALT_INV_DOUT\(2),
	datad => \REGHEX3|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX3|rascSaida7seg[1]~1_combout\);

\DISPLAY_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX3|rascSaida7seg[2]~2_combout\ = (!\REGHEX3|DOUT\(2) & ((!\REGHEX3|DOUT\(1)) # ((\REGHEX3|DOUT\(3)) # (\REGHEX3|DOUT\(0))))) # (\REGHEX3|DOUT\(2) & ((!\REGHEX3|DOUT\(3)) # ((!\REGHEX3|DOUT\(1) & \REGHEX3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111110010101111111111001010111111111100101011111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX3|ALT_INV_DOUT\(1),
	datab => \REGHEX3|ALT_INV_DOUT\(0),
	datac => \REGHEX3|ALT_INV_DOUT\(2),
	datad => \REGHEX3|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX3|rascSaida7seg[2]~2_combout\);

\DISPLAY_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX3|rascSaida7seg[3]~3_combout\ = (!\REGHEX3|DOUT\(1) & (!\REGHEX3|DOUT\(3) & (!\REGHEX3|DOUT\(2) $ (!\REGHEX3|DOUT\(0))))) # (\REGHEX3|DOUT\(1) & ((!\REGHEX3|DOUT\(2) & (\REGHEX3|DOUT\(3) & !\REGHEX3|DOUT\(0))) # (\REGHEX3|DOUT\(2) & 
-- ((\REGHEX3|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX3|ALT_INV_DOUT\(3),
	datab => \REGHEX3|ALT_INV_DOUT\(2),
	datac => \REGHEX3|ALT_INV_DOUT\(1),
	datad => \REGHEX3|ALT_INV_DOUT\(0),
	combout => \DISPLAY_HEX3|rascSaida7seg[3]~3_combout\);

\DISPLAY_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX3|rascSaida7seg[4]~4_combout\ = (!\REGHEX3|DOUT\(1) & ((!\REGHEX3|DOUT\(2) & ((\REGHEX3|DOUT\(0)))) # (\REGHEX3|DOUT\(2) & (!\REGHEX3|DOUT\(3))))) # (\REGHEX3|DOUT\(1) & (((!\REGHEX3|DOUT\(3) & \REGHEX3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011111000001000001111100000100000111110000010000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX3|ALT_INV_DOUT\(1),
	datab => \REGHEX3|ALT_INV_DOUT\(2),
	datac => \REGHEX3|ALT_INV_DOUT\(3),
	datad => \REGHEX3|ALT_INV_DOUT\(0),
	combout => \DISPLAY_HEX3|rascSaida7seg[4]~4_combout\);

\DISPLAY_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX3|rascSaida7seg[5]~5_combout\ = (!\REGHEX3|DOUT\(1) & (\REGHEX3|DOUT\(0) & (!\REGHEX3|DOUT\(2) $ (\REGHEX3|DOUT\(3))))) # (\REGHEX3|DOUT\(1) & (!\REGHEX3|DOUT\(3) & ((!\REGHEX3|DOUT\(2)) # (\REGHEX3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000010011100010000001001110001000000100111000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX3|ALT_INV_DOUT\(1),
	datab => \REGHEX3|ALT_INV_DOUT\(0),
	datac => \REGHEX3|ALT_INV_DOUT\(2),
	datad => \REGHEX3|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX3|rascSaida7seg[5]~5_combout\);

\DISPLAY_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX3|rascSaida7seg[6]~6_combout\ = (!\REGHEX3|DOUT\(0) & (!\REGHEX3|DOUT\(1) & (!\REGHEX3|DOUT\(2) $ (\REGHEX3|DOUT\(3))))) # (\REGHEX3|DOUT\(0) & (!\REGHEX3|DOUT\(3) & (!\REGHEX3|DOUT\(1) $ (\REGHEX3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000100001000101000010000100010100001000010001010000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX3|ALT_INV_DOUT\(1),
	datab => \REGHEX3|ALT_INV_DOUT\(0),
	datac => \REGHEX3|ALT_INV_DOUT\(2),
	datad => \REGHEX3|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX3|rascSaida7seg[6]~6_combout\);

\ANDHEX5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX5~0_combout\ = ( !\ROM1|memROM~5_combout\ & ( (\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(4) & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000000000000000000000100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(4),
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ANDHEX5~0_combout\);

\ANDHEX4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX4~0_combout\ = ( \ANDHEX5~0_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ALT_INV_ANDHEX5~0_combout\,
	combout => \ANDHEX4~0_combout\);

\REGHEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \ANDHEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX4|DOUT\(1));

\REGHEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \ANDHEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX4|DOUT\(0));

\REGHEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \ANDHEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX4|DOUT\(2));

\REGHEX4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \ANDHEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX4|DOUT\(3));

\DISPLAY_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX4|rascSaida7seg[0]~0_combout\ = (!\REGHEX4|DOUT\(2) & (\REGHEX4|DOUT\(0) & (!\REGHEX4|DOUT\(1) $ (\REGHEX4|DOUT\(3))))) # (\REGHEX4|DOUT\(2) & (!\REGHEX4|DOUT\(1) & (!\REGHEX4|DOUT\(0) $ (\REGHEX4|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000010010001010000001001000101000000100100010100000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX4|ALT_INV_DOUT\(1),
	datab => \REGHEX4|ALT_INV_DOUT\(0),
	datac => \REGHEX4|ALT_INV_DOUT\(2),
	datad => \REGHEX4|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX4|rascSaida7seg[0]~0_combout\);

\DISPLAY_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX4|rascSaida7seg[1]~1_combout\ = (!\REGHEX4|DOUT\(1) & (\REGHEX4|DOUT\(2) & (!\REGHEX4|DOUT\(0) $ (!\REGHEX4|DOUT\(3))))) # (\REGHEX4|DOUT\(1) & ((!\REGHEX4|DOUT\(0) & (\REGHEX4|DOUT\(2))) # (\REGHEX4|DOUT\(0) & ((\REGHEX4|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011101000001100001110100000110000111010000011000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX4|ALT_INV_DOUT\(1),
	datab => \REGHEX4|ALT_INV_DOUT\(0),
	datac => \REGHEX4|ALT_INV_DOUT\(2),
	datad => \REGHEX4|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX4|rascSaida7seg[1]~1_combout\);

\DISPLAY_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX4|rascSaida7seg[2]~2_combout\ = (!\REGHEX4|DOUT\(2) & ((!\REGHEX4|DOUT\(1)) # ((\REGHEX4|DOUT\(3)) # (\REGHEX4|DOUT\(0))))) # (\REGHEX4|DOUT\(2) & ((!\REGHEX4|DOUT\(3)) # ((!\REGHEX4|DOUT\(1) & \REGHEX4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111110010101111111111001010111111111100101011111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX4|ALT_INV_DOUT\(1),
	datab => \REGHEX4|ALT_INV_DOUT\(0),
	datac => \REGHEX4|ALT_INV_DOUT\(2),
	datad => \REGHEX4|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX4|rascSaida7seg[2]~2_combout\);

\DISPLAY_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX4|rascSaida7seg[3]~3_combout\ = (!\REGHEX4|DOUT\(1) & (!\REGHEX4|DOUT\(3) & (!\REGHEX4|DOUT\(2) $ (!\REGHEX4|DOUT\(0))))) # (\REGHEX4|DOUT\(1) & ((!\REGHEX4|DOUT\(2) & (\REGHEX4|DOUT\(3) & !\REGHEX4|DOUT\(0))) # (\REGHEX4|DOUT\(2) & 
-- ((\REGHEX4|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX4|ALT_INV_DOUT\(3),
	datab => \REGHEX4|ALT_INV_DOUT\(2),
	datac => \REGHEX4|ALT_INV_DOUT\(1),
	datad => \REGHEX4|ALT_INV_DOUT\(0),
	combout => \DISPLAY_HEX4|rascSaida7seg[3]~3_combout\);

\DISPLAY_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX4|rascSaida7seg[4]~4_combout\ = (!\REGHEX4|DOUT\(1) & ((!\REGHEX4|DOUT\(2) & ((\REGHEX4|DOUT\(0)))) # (\REGHEX4|DOUT\(2) & (!\REGHEX4|DOUT\(3))))) # (\REGHEX4|DOUT\(1) & (((!\REGHEX4|DOUT\(3) & \REGHEX4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011111000001000001111100000100000111110000010000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX4|ALT_INV_DOUT\(1),
	datab => \REGHEX4|ALT_INV_DOUT\(2),
	datac => \REGHEX4|ALT_INV_DOUT\(3),
	datad => \REGHEX4|ALT_INV_DOUT\(0),
	combout => \DISPLAY_HEX4|rascSaida7seg[4]~4_combout\);

\DISPLAY_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX4|rascSaida7seg[5]~5_combout\ = (!\REGHEX4|DOUT\(1) & (\REGHEX4|DOUT\(0) & (!\REGHEX4|DOUT\(2) $ (\REGHEX4|DOUT\(3))))) # (\REGHEX4|DOUT\(1) & (!\REGHEX4|DOUT\(3) & ((!\REGHEX4|DOUT\(2)) # (\REGHEX4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000010011100010000001001110001000000100111000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX4|ALT_INV_DOUT\(1),
	datab => \REGHEX4|ALT_INV_DOUT\(0),
	datac => \REGHEX4|ALT_INV_DOUT\(2),
	datad => \REGHEX4|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX4|rascSaida7seg[5]~5_combout\);

\DISPLAY_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX4|rascSaida7seg[6]~6_combout\ = (!\REGHEX4|DOUT\(0) & (!\REGHEX4|DOUT\(1) & (!\REGHEX4|DOUT\(2) $ (\REGHEX4|DOUT\(3))))) # (\REGHEX4|DOUT\(0) & (!\REGHEX4|DOUT\(3) & (!\REGHEX4|DOUT\(1) $ (\REGHEX4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000100001000101000010000100010100001000010001010000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX4|ALT_INV_DOUT\(1),
	datab => \REGHEX4|ALT_INV_DOUT\(0),
	datac => \REGHEX4|ALT_INV_DOUT\(2),
	datad => \REGHEX4|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX4|rascSaida7seg[6]~6_combout\);

ANDHEX5 : cyclonev_lcell_comb
-- Equation(s):
-- \ANDHEX5~combout\ = ( \ANDHEX5~0_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~3_combout\ & \ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ALT_INV_ANDHEX5~0_combout\,
	combout => \ANDHEX5~combout\);

\REGHEX5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \ANDHEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX5|DOUT\(1));

\REGHEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \ANDHEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX5|DOUT\(0));

\REGHEX5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \ANDHEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX5|DOUT\(2));

\REGHEX5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \ANDHEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX5|DOUT\(3));

\DISPLAY_HEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX5|rascSaida7seg[0]~0_combout\ = (!\REGHEX5|DOUT\(2) & (\REGHEX5|DOUT\(0) & (!\REGHEX5|DOUT\(1) $ (\REGHEX5|DOUT\(3))))) # (\REGHEX5|DOUT\(2) & (!\REGHEX5|DOUT\(1) & (!\REGHEX5|DOUT\(0) $ (\REGHEX5|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000010010001010000001001000101000000100100010100000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX5|ALT_INV_DOUT\(1),
	datab => \REGHEX5|ALT_INV_DOUT\(0),
	datac => \REGHEX5|ALT_INV_DOUT\(2),
	datad => \REGHEX5|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX5|rascSaida7seg[0]~0_combout\);

\DISPLAY_HEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX5|rascSaida7seg[1]~1_combout\ = (!\REGHEX5|DOUT\(1) & (\REGHEX5|DOUT\(2) & (!\REGHEX5|DOUT\(0) $ (!\REGHEX5|DOUT\(3))))) # (\REGHEX5|DOUT\(1) & ((!\REGHEX5|DOUT\(0) & (\REGHEX5|DOUT\(2))) # (\REGHEX5|DOUT\(0) & ((\REGHEX5|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011101000001100001110100000110000111010000011000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX5|ALT_INV_DOUT\(1),
	datab => \REGHEX5|ALT_INV_DOUT\(0),
	datac => \REGHEX5|ALT_INV_DOUT\(2),
	datad => \REGHEX5|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX5|rascSaida7seg[1]~1_combout\);

\DISPLAY_HEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX5|rascSaida7seg[2]~2_combout\ = (!\REGHEX5|DOUT\(2) & ((!\REGHEX5|DOUT\(1)) # ((\REGHEX5|DOUT\(3)) # (\REGHEX5|DOUT\(0))))) # (\REGHEX5|DOUT\(2) & ((!\REGHEX5|DOUT\(3)) # ((!\REGHEX5|DOUT\(1) & \REGHEX5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111110010101111111111001010111111111100101011111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX5|ALT_INV_DOUT\(1),
	datab => \REGHEX5|ALT_INV_DOUT\(0),
	datac => \REGHEX5|ALT_INV_DOUT\(2),
	datad => \REGHEX5|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX5|rascSaida7seg[2]~2_combout\);

\DISPLAY_HEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX5|rascSaida7seg[3]~3_combout\ = (!\REGHEX5|DOUT\(1) & (!\REGHEX5|DOUT\(3) & (!\REGHEX5|DOUT\(2) $ (!\REGHEX5|DOUT\(0))))) # (\REGHEX5|DOUT\(1) & ((!\REGHEX5|DOUT\(2) & (\REGHEX5|DOUT\(3) & !\REGHEX5|DOUT\(0))) # (\REGHEX5|DOUT\(2) & 
-- ((\REGHEX5|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX5|ALT_INV_DOUT\(3),
	datab => \REGHEX5|ALT_INV_DOUT\(2),
	datac => \REGHEX5|ALT_INV_DOUT\(1),
	datad => \REGHEX5|ALT_INV_DOUT\(0),
	combout => \DISPLAY_HEX5|rascSaida7seg[3]~3_combout\);

\DISPLAY_HEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX5|rascSaida7seg[4]~4_combout\ = (!\REGHEX5|DOUT\(1) & ((!\REGHEX5|DOUT\(2) & ((\REGHEX5|DOUT\(0)))) # (\REGHEX5|DOUT\(2) & (!\REGHEX5|DOUT\(3))))) # (\REGHEX5|DOUT\(1) & (((!\REGHEX5|DOUT\(3) & \REGHEX5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011111000001000001111100000100000111110000010000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX5|ALT_INV_DOUT\(1),
	datab => \REGHEX5|ALT_INV_DOUT\(2),
	datac => \REGHEX5|ALT_INV_DOUT\(3),
	datad => \REGHEX5|ALT_INV_DOUT\(0),
	combout => \DISPLAY_HEX5|rascSaida7seg[4]~4_combout\);

\DISPLAY_HEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX5|rascSaida7seg[5]~5_combout\ = (!\REGHEX5|DOUT\(1) & (\REGHEX5|DOUT\(0) & (!\REGHEX5|DOUT\(2) $ (\REGHEX5|DOUT\(3))))) # (\REGHEX5|DOUT\(1) & (!\REGHEX5|DOUT\(3) & ((!\REGHEX5|DOUT\(2)) # (\REGHEX5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000010011100010000001001110001000000100111000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX5|ALT_INV_DOUT\(1),
	datab => \REGHEX5|ALT_INV_DOUT\(0),
	datac => \REGHEX5|ALT_INV_DOUT\(2),
	datad => \REGHEX5|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX5|rascSaida7seg[5]~5_combout\);

\DISPLAY_HEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_HEX5|rascSaida7seg[6]~6_combout\ = (!\REGHEX5|DOUT\(0) & (!\REGHEX5|DOUT\(1) & (!\REGHEX5|DOUT\(2) $ (\REGHEX5|DOUT\(3))))) # (\REGHEX5|DOUT\(0) & (!\REGHEX5|DOUT\(3) & (!\REGHEX5|DOUT\(1) $ (\REGHEX5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000100001000101000010000100010100001000010001010000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGHEX5|ALT_INV_DOUT\(1),
	datab => \REGHEX5|ALT_INV_DOUT\(0),
	datac => \REGHEX5|ALT_INV_DOUT\(2),
	datad => \REGHEX5|ALT_INV_DOUT\(3),
	combout => \DISPLAY_HEX5|rascSaida7seg[6]~6_combout\);

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


