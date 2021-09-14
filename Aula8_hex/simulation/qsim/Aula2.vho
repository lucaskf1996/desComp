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

-- DATE "09/14/2021 18:12:48"

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
	Reset : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	LED8 : OUT std_logic;
	LED9 : OUT std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
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
SIGNAL ww_Reset : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED8 : std_logic;
SIGNAL ww_LED9 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~18\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \CPU|DESVIO|Sel[0]~0_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~22\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~25_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~26\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~30\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~2\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~6\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~10\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~14\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal3~1_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal3~0_combout\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \RAM1|ram~56_q\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~72_q\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~545_combout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~550_combout\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~546_combout\ : std_logic;
SIGNAL \RAM1|ram~48_q\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \RAM1|ram~64_q\ : std_logic;
SIGNAL \RAM1|ram~551_combout\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Sinais_Controle~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|DECODER1|Sinais_Controle~0_combout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[3]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Sinais_Controle[4]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~47_q\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~63_q\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~55_q\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~71_q\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~5_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \DEC3X8|Mux7~0_combout\ : std_logic;
SIGNAL \DEC3X8|Mux7~1_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~57_q\ : std_logic;
SIGNAL \RAM1|ram~49_q\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|ram~41_q\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~73_q\ : std_logic;
SIGNAL \RAM1|ram~65_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~42_q\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|ram~58_q\ : std_logic;
SIGNAL \RAM1|ram~74_q\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|ram~50_q\ : std_logic;
SIGNAL \RAM1|ram~66_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY_HEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY_HEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY_HEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY_HEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY_HEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC3X8|Mux7~2_combout\ : std_logic;
SIGNAL \DISPLAY_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC3X8|Mux7~3_combout\ : std_logic;
SIGNAL \DISPLAY_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC3X8|Mux7~4_combout\ : std_logic;
SIGNAL \DISPLAY_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC3X8|Mux7~5_combout\ : std_logic;
SIGNAL \DISPLAY_HEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY_HEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY_HEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY_HEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY_HEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY_HEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC3X8|Mux7~6_combout\ : std_logic;
SIGNAL \DISPLAY_HEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY_HEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY_HEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY_HEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY_HEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY_HEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REGHEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGHEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC1|dataOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGHEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGHEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGHEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGHEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DEC3X8|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \DISPLAY_HEX5|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \REGHEX5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISPLAY_HEX4|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \REGHEX4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISPLAY_HEX3|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \REGHEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISPLAY_HEX2|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \REGHEX2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISPLAY_HEX1|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \REGHEX1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISPLAY_HEX0|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \REGHEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC1|ALT_INV_dataOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~5_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Sinais_Controle~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal3~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_Reset <= Reset;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LED8 <= ww_LED8;
LED9 <= ww_LED9;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\DEC3X8|ALT_INV_Mux7~0_combout\ <= NOT \DEC3X8|Mux7~0_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
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
\REGHEX1|ALT_INV_DOUT\(1) <= NOT \REGHEX1|DOUT\(1);
\DISPLAY_HEX0|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \DISPLAY_HEX0|rascSaida7seg[2]~2_combout\;
\REGHEX0|ALT_INV_DOUT\(3) <= NOT \REGHEX0|DOUT\(3);
\REGHEX0|ALT_INV_DOUT\(2) <= NOT \REGHEX0|DOUT\(2);
\REGHEX0|ALT_INV_DOUT\(0) <= NOT \REGHEX0|DOUT\(0);
\REGHEX0|ALT_INV_DOUT\(1) <= NOT \REGHEX0|DOUT\(1);
\CPU|REG1|ALT_INV_DOUT\(3) <= NOT \CPU|REG1|DOUT\(3);
\CPU|REG1|ALT_INV_DOUT\(2) <= NOT \CPU|REG1|DOUT\(2);
\CPU|REG1|ALT_INV_DOUT\(0) <= NOT \CPU|REG1|DOUT\(0);
\CPU|PC1|ALT_INV_dataOUT\(8) <= NOT \CPU|PC1|dataOUT\(8);
\CPU|PC1|ALT_INV_dataOUT\(7) <= NOT \CPU|PC1|dataOUT\(7);
\CPU|PC1|ALT_INV_dataOUT\(6) <= NOT \CPU|PC1|dataOUT\(6);
\CPU|PC1|ALT_INV_dataOUT\(5) <= NOT \CPU|PC1|dataOUT\(5);
\CPU|PC1|ALT_INV_dataOUT\(4) <= NOT \CPU|PC1|dataOUT\(4);
\CPU|PC1|ALT_INV_dataOUT\(3) <= NOT \CPU|PC1|dataOUT\(3);
\CPU|PC1|ALT_INV_dataOUT\(2) <= NOT \CPU|PC1|dataOUT\(2);
\CPU|PC1|ALT_INV_dataOUT\(1) <= NOT \CPU|PC1|dataOUT\(1);
\CPU|PC1|ALT_INV_dataOUT\(0) <= NOT \CPU|PC1|dataOUT\(0);
\CPU|REG1|ALT_INV_DOUT\(1) <= NOT \CPU|REG1|DOUT\(1);
\RAM1|ALT_INV_ram~551_combout\ <= NOT \RAM1|ram~551_combout\;
\RAM1|ALT_INV_ram~550_combout\ <= NOT \RAM1|ram~550_combout\;
\RAM1|ALT_INV_ram~549_combout\ <= NOT \RAM1|ram~549_combout\;
\RAM1|ALT_INV_ram~548_combout\ <= NOT \RAM1|ram~548_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~5_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~5_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~4_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~4_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\CPU|DECODER1|ALT_INV_Sinais_Controle~2_combout\ <= NOT \CPU|DECODER1|Sinais_Controle~2_combout\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~537_combout\ <= NOT \RAM1|ram~537_combout\;
\RAM1|ALT_INV_ram~66_q\ <= NOT \RAM1|ram~66_q\;
\RAM1|ALT_INV_ram~50_q\ <= NOT \RAM1|ram~50_q\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~74_q\ <= NOT \RAM1|ram~74_q\;
\RAM1|ALT_INV_ram~58_q\ <= NOT \RAM1|ram~58_q\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~42_q\ <= NOT \RAM1|ram~42_q\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~2_combout\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~65_q\ <= NOT \RAM1|ram~65_q\;
\RAM1|ALT_INV_ram~73_q\ <= NOT \RAM1|ram~73_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~41_q\ <= NOT \RAM1|ram~41_q\;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~49_q\ <= NOT \RAM1|ram~49_q\;
\RAM1|ALT_INV_ram~57_q\ <= NOT \RAM1|ram~57_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~1_combout\;
\RAM1|ALT_INV_ram~63_q\ <= NOT \RAM1|ram~63_q\;
\RAM1|ALT_INV_ram~71_q\ <= NOT \RAM1|ram~71_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~47_q\ <= NOT \RAM1|ram~47_q\;
\RAM1|ALT_INV_ram~55_q\ <= NOT \RAM1|ram~55_q\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\ <= NOT \CPU|DECODER1|Sinais_Controle~0_combout\;
\CPU|DECODER1|ALT_INV_Equal3~1_combout\ <= NOT \CPU|DECODER1|Equal3~1_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~0_combout\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~64_q\ <= NOT \RAM1|ram~64_q\;
\RAM1|ALT_INV_ram~48_q\ <= NOT \RAM1|ram~48_q\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\RAM1|ALT_INV_ram~528_combout\ <= NOT \RAM1|ram~528_combout\;
\RAM1|ALT_INV_ram~72_q\ <= NOT \RAM1|ram~72_q\;
\RAM1|ALT_INV_ram~56_q\ <= NOT \RAM1|ram~56_q\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\CPU|DECODER1|ALT_INV_Equal3~0_combout\ <= NOT \CPU|DECODER1|Equal3~0_combout\;

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

\LED8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED8);

\LED9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED9);

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
	o => ww_HEX0(0));

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
	o => ww_HEX0(1));

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
	o => ww_HEX0(2));

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
	o => ww_HEX0(3));

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
	o => ww_HEX0(4));

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
	o => ww_HEX0(5));

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
	o => ww_HEX0(6));

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
	o => ww_HEX1(0));

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
	o => ww_HEX1(1));

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
	o => ww_HEX1(2));

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
	o => ww_HEX1(3));

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
	o => ww_HEX1(4));

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
	o => ww_HEX1(5));

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
	o => ww_HEX1(6));

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
	o => ww_HEX2(0));

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
	o => ww_HEX2(1));

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
	o => ww_HEX2(2));

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
	o => ww_HEX2(3));

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
	o => ww_HEX2(4));

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
	o => ww_HEX2(5));

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
	o => ww_HEX2(6));

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
	o => ww_HEX3(0));

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
	o => ww_HEX3(1));

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
	o => ww_HEX3(2));

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
	o => ww_HEX3(3));

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
	o => ww_HEX3(4));

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
	o => ww_HEX3(5));

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
	o => ww_HEX3(6));

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
	o => ww_HEX4(0));

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
	o => ww_HEX4(1));

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
	o => ww_HEX4(2));

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
	o => ww_HEX4(3));

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
	o => ww_HEX4(4));

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
	o => ww_HEX4(5));

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
	o => ww_HEX4(6));

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
	o => ww_HEX5(0));

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
	o => ww_HEX5(1));

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
	o => ww_HEX5(2));

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
	o => ww_HEX5(3));

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
	o => ww_HEX5(4));

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
	o => ww_HEX5(5));

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
	o => ww_HEX5(6));

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & ((\CPU|PC1|dataOUT\(3)) # (\CPU|PC1|dataOUT\(2)))) # (\CPU|PC1|dataOUT\(1) & ((!\CPU|PC1|dataOUT\(2)) # (!\CPU|PC1|dataOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010100000101010101010000010101010101000001010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~8_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1)) # ((!\CPU|PC1|dataOUT\(2)) # (!\CPU|PC1|dataOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101010101010001010101010101000101010101010100",
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
-- \ROM1|memROM~6_combout\ = (!\CPU|PC1|dataOUT\(0) & (((\CPU|PC1|dataOUT\(3)) # (\CPU|PC1|dataOUT\(2))) # (\CPU|PC1|dataOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010001010101010101000101010101010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~10_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (!\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(0) & ((\CPU|PC1|dataOUT\(3)) # (\CPU|PC1|dataOUT\(2))))) # (\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(0) $ (((\CPU|PC1|dataOUT\(2) & \CPU|PC1|dataOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101001001010101010100100101010101010010010101010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\CPU|DESVIO|Sel[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO|Sel[0]~0_combout\ = (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|DESVIO|Sel[0]~0_combout\);

\CPU|PC1|dataOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMPC|Add0~21_sumout\,
	asdata => \ROM1|memROM~8_combout\,
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

\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\CPU|PC1|dataOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMPC|Add0~25_sumout\,
	asdata => \~GND~combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
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

\CPU|PC1|dataOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \CPU|DESVIO|Sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(8));

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (!\CPU|PC1|dataOUT\(8) & (!\CPU|PC1|dataOUT\(0) $ (((\CPU|PC1|dataOUT\(3)) # (\CPU|PC1|dataOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010100000000100101010000000010010101000000001001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(2),
	datac => \CPU|PC1|ALT_INV_dataOUT\(3),
	datad => \CPU|PC1|ALT_INV_dataOUT\(8),
	combout => \ROM1|memROM~12_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU|PC1|dataOUT\(7) & ( \ROM1|memROM~12_combout\ & ( (!\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT\(5) & !\CPU|PC1|dataOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(1),
	datab => \CPU|PC1|ALT_INV_dataOUT\(4),
	datac => \CPU|PC1|ALT_INV_dataOUT\(5),
	datad => \CPU|PC1|ALT_INV_dataOUT\(6),
	datae => \CPU|PC1|ALT_INV_dataOUT\(7),
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ROM1|memROM~1_combout\);

\CPU|PC1|dataOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~1_combout\,
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

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC1|dataOUT\(1) & (\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(2) & \CPU|PC1|dataOUT\(3)))) # (\CPU|PC1|dataOUT\(1) & (\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT\(0) $ (!\CPU|PC1|dataOUT\(3))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100001000000000000000000000000101000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~2_combout\);

\CPU|PC1|dataOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~2_combout\,
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

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (\CPU|PC1|dataOUT\(0) & (\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT\(1) $ (!\CPU|PC1|dataOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000000101000000000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~13_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\CPU|PC1|dataOUT\(8) & ( \ROM1|memROM~13_combout\ & ( (!\CPU|PC1|dataOUT\(4) & (!\CPU|PC1|dataOUT\(5) & (!\CPU|PC1|dataOUT\(6) & !\CPU|PC1|dataOUT\(7)))) ) ) )

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
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~3_combout\);

\CPU|PC1|dataOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~3_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMPC|Add0~13_sumout\,
	asdata => \~GND~combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMPC|Add0~17_sumout\,
	asdata => \~GND~combout\,
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

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (\ROM1|memROM~0_combout\ & !\ROM1|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~11_combout\);

\CPU|DECODER1|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal3~1_combout\ = (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER1|Equal3~1_combout\);

\CPU|DECODER1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal3~0_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|DECODER1|Equal3~0_combout\);

\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( !\ROM1|memROM~7_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~539_combout\);

\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & \RAM1|ram~539_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~540_combout\);

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \RAM1|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & \RAM1|ram~539_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~541_combout\);

\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \RAM1|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = ( \CPU|PC1|dataOUT\(2) & ( \CPU|PC1|dataOUT\(3) & ( (!\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & (\RAM1|ram~24_q\)) # (\CPU|PC1|dataOUT\(1) & ((\RAM1|ram~40_q\))))) # (\CPU|PC1|dataOUT\(0) & (\RAM1|ram~24_q\)) ) ) ) # ( 
-- !\CPU|PC1|dataOUT\(2) & ( \CPU|PC1|dataOUT\(3) & ( (!\CPU|PC1|dataOUT\(0) & (\RAM1|ram~24_q\)) # (\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & ((\RAM1|ram~40_q\))) # (\CPU|PC1|dataOUT\(1) & (\RAM1|ram~24_q\)))) ) ) ) # ( \CPU|PC1|dataOUT\(2) & ( 
-- !\CPU|PC1|dataOUT\(3) & ( (!\CPU|PC1|dataOUT\(0) & (\RAM1|ram~24_q\)) # (\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & (\RAM1|ram~24_q\)) # (\CPU|PC1|dataOUT\(1) & ((\RAM1|ram~40_q\))))) ) ) ) # ( !\CPU|PC1|dataOUT\(2) & ( !\CPU|PC1|dataOUT\(3) & ( 
-- \RAM1|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101001101010011010101010101010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~24_q\,
	datab => \RAM1|ALT_INV_ram~40_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(0),
	datad => \CPU|PC1|ALT_INV_dataOUT\(1),
	datae => \CPU|PC1|ALT_INV_dataOUT\(2),
	dataf => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \RAM1|ram~548_combout\);

\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = (!\ROM1|memROM~0_combout\ & (\RAM1|ram~24_q\)) # (\ROM1|memROM~0_combout\ & (((!\ROM1|memROM~4_combout\ & \RAM1|ram~548_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001000111010001000100011101000100010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~24_q\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~548_combout\,
	combout => \RAM1|ram~527_combout\);

\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & \RAM1|ram~539_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~542_combout\);

\RAM1|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~56_q\);

\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & \RAM1|ram~539_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~543_combout\);

\RAM1|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~72_q\);

\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = ( \CPU|PC1|dataOUT\(2) & ( \CPU|PC1|dataOUT\(3) & ( (!\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & (\RAM1|ram~56_q\)) # (\CPU|PC1|dataOUT\(1) & ((\RAM1|ram~72_q\))))) # (\CPU|PC1|dataOUT\(0) & (\RAM1|ram~56_q\)) ) ) ) # ( 
-- !\CPU|PC1|dataOUT\(2) & ( \CPU|PC1|dataOUT\(3) & ( (!\CPU|PC1|dataOUT\(0) & (\RAM1|ram~56_q\)) # (\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & ((\RAM1|ram~72_q\))) # (\CPU|PC1|dataOUT\(1) & (\RAM1|ram~56_q\)))) ) ) ) # ( \CPU|PC1|dataOUT\(2) & ( 
-- !\CPU|PC1|dataOUT\(3) & ( (!\CPU|PC1|dataOUT\(0) & (\RAM1|ram~56_q\)) # (\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & (\RAM1|ram~56_q\)) # (\CPU|PC1|dataOUT\(1) & ((\RAM1|ram~72_q\))))) ) ) ) # ( !\CPU|PC1|dataOUT\(2) & ( !\CPU|PC1|dataOUT\(3) & ( 
-- \RAM1|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101001101010011010101010101010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~56_q\,
	datab => \RAM1|ALT_INV_ram~72_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(0),
	datad => \CPU|PC1|ALT_INV_dataOUT\(1),
	datae => \CPU|PC1|ALT_INV_dataOUT\(2),
	dataf => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \RAM1|ram~549_combout\);

\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = (!\ROM1|memROM~0_combout\ & (\RAM1|ram~56_q\)) # (\ROM1|memROM~0_combout\ & (((!\ROM1|memROM~4_combout\ & \RAM1|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001000111010001000100011101000100010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~56_q\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~549_combout\,
	combout => \RAM1|ram~528_combout\);

\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & \RAM1|ram~539_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~544_combout\);

\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \RAM1|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & \RAM1|ram~539_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~545_combout\);

\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \RAM1|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

\RAM1|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~550_combout\ = ( \CPU|PC1|dataOUT\(2) & ( \CPU|PC1|dataOUT\(3) & ( (!\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & (\RAM1|ram~16_q\)) # (\CPU|PC1|dataOUT\(1) & ((\RAM1|ram~32_q\))))) # (\CPU|PC1|dataOUT\(0) & (\RAM1|ram~16_q\)) ) ) ) # ( 
-- !\CPU|PC1|dataOUT\(2) & ( \CPU|PC1|dataOUT\(3) & ( (!\CPU|PC1|dataOUT\(0) & (\RAM1|ram~16_q\)) # (\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & ((\RAM1|ram~32_q\))) # (\CPU|PC1|dataOUT\(1) & (\RAM1|ram~16_q\)))) ) ) ) # ( \CPU|PC1|dataOUT\(2) & ( 
-- !\CPU|PC1|dataOUT\(3) & ( (!\CPU|PC1|dataOUT\(0) & (\RAM1|ram~16_q\)) # (\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & (\RAM1|ram~16_q\)) # (\CPU|PC1|dataOUT\(1) & ((\RAM1|ram~32_q\))))) ) ) ) # ( !\CPU|PC1|dataOUT\(2) & ( !\CPU|PC1|dataOUT\(3) & ( 
-- \RAM1|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101001101010011010101010101010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~16_q\,
	datab => \RAM1|ALT_INV_ram~32_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(0),
	datad => \CPU|PC1|ALT_INV_dataOUT\(1),
	datae => \CPU|PC1|ALT_INV_dataOUT\(2),
	dataf => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \RAM1|ram~550_combout\);

\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = (!\ROM1|memROM~0_combout\ & (\RAM1|ram~16_q\)) # (\ROM1|memROM~0_combout\ & (((!\ROM1|memROM~4_combout\ & \RAM1|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001000111010001000100011101000100010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~16_q\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~550_combout\,
	combout => \RAM1|ram~529_combout\);

\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & \RAM1|ram~539_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~546_combout\);

\RAM1|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \RAM1|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~48_q\);

\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & \RAM1|ram~539_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~547_combout\);

\RAM1|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~64_q\);

\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = ( \CPU|PC1|dataOUT\(2) & ( \CPU|PC1|dataOUT\(3) & ( (!\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & (\RAM1|ram~48_q\)) # (\CPU|PC1|dataOUT\(1) & ((\RAM1|ram~64_q\))))) # (\CPU|PC1|dataOUT\(0) & (\RAM1|ram~48_q\)) ) ) ) # ( 
-- !\CPU|PC1|dataOUT\(2) & ( \CPU|PC1|dataOUT\(3) & ( (!\CPU|PC1|dataOUT\(0) & (\RAM1|ram~48_q\)) # (\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & ((\RAM1|ram~64_q\))) # (\CPU|PC1|dataOUT\(1) & (\RAM1|ram~48_q\)))) ) ) ) # ( \CPU|PC1|dataOUT\(2) & ( 
-- !\CPU|PC1|dataOUT\(3) & ( (!\CPU|PC1|dataOUT\(0) & (\RAM1|ram~48_q\)) # (\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & (\RAM1|ram~48_q\)) # (\CPU|PC1|dataOUT\(1) & ((\RAM1|ram~64_q\))))) ) ) ) # ( !\CPU|PC1|dataOUT\(2) & ( !\CPU|PC1|dataOUT\(3) & ( 
-- \RAM1|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101001101010011010101010101010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~48_q\,
	datab => \RAM1|ALT_INV_ram~64_q\,
	datac => \CPU|PC1|ALT_INV_dataOUT\(0),
	datad => \CPU|PC1|ALT_INV_dataOUT\(1),
	datae => \CPU|PC1|ALT_INV_dataOUT\(2),
	dataf => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \RAM1|ram~551_combout\);

\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = (!\ROM1|memROM~0_combout\ & (\RAM1|ram~48_q\)) # (\ROM1|memROM~0_combout\ & (((!\ROM1|memROM~4_combout\ & \RAM1|ram~551_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001000111010001000100011101000100010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~48_q\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~551_combout\,
	combout => \RAM1|ram~530_combout\);

\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~528_combout\ ) ) ) # ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~527_combout\ ) ) ) # ( \ROM1|memROM~3_combout\ & ( 
-- !\ROM1|memROM~1_combout\ & ( \RAM1|ram~530_combout\ ) ) ) # ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~1_combout\ & ( \RAM1|ram~529_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~527_combout\,
	datab => \RAM1|ALT_INV_ram~528_combout\,
	datac => \RAM1|ALT_INV_ram~529_combout\,
	datad => \RAM1|ALT_INV_ram~530_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~531_combout\);

\CPU|MUX1|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~0_combout\ = (!\CPU|DECODER1|Equal3~0_combout\ & ((\RAM1|ram~531_combout\))) # (\CPU|DECODER1|Equal3~0_combout\ & (\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	datac => \RAM1|ALT_INV_ram~531_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~0_combout\);

\CPU|DECODER1|Sinais_Controle~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Sinais_Controle~2_combout\ = !\ROM1|memROM~9_combout\ $ (\ROM1|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER1|Sinais_Controle~2_combout\);

\CPU|ULA1|Add0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~18_cout\ = CARRY(( (!\CPU|DECODER1|Equal3~1_combout\) # ((!\ROM1|memROM~10_combout\ & (!\ROM1|memROM~11_combout\ $ (!\ROM1|memROM~9_combout\)))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010111011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~18_cout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[0]~1_combout\ $ (((\CPU|DECODER1|Equal3~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~2_combout\) # (\ROM1|memROM~10_combout\))))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add0~18_cout\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( !\CPU|MUX1|saida_MUX[0]~1_combout\ $ (((\CPU|DECODER1|Equal3~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~2_combout\) # (\ROM1|memROM~10_combout\))))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add0~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datad => \CPU|DECODER1|ALT_INV_Sinais_Controle~2_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add0~18_cout\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|DECODER1|Sinais_Controle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Sinais_Controle~0_combout\ = (!\ROM1|memROM~9_combout\ $ (\ROM1|memROM~11_combout\)) # (\ROM1|memROM~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011011110110111101101111011011110110111101101111011011110110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER1|Sinais_Controle~0_combout\);

\CPU|REG1|DOUT[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG1|DOUT[3]~0_combout\ = (!\CPU|DECODER1|Equal3~1_combout\ & !\CPU|DECODER1|Sinais_Controle~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	datab => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	combout => \CPU|REG1|DOUT[3]~0_combout\);

\CPU|DECODER1|Sinais_Controle[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Sinais_Controle[4]~1_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~7_combout\ $ (((\ROM1|memROM~6_combout\) # (\ROM1|memROM~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010101010000000001010101000000000101010100000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|DECODER1|Sinais_Controle[4]~1_combout\);

\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~1_combout\,
	sload => \CPU|REG1|DOUT[3]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \RAM1|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

\RAM1|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \RAM1|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~47_q\);

\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \RAM1|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

\RAM1|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~63_q\);

\CPU|MUX1|saida_MUX[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~4_combout\ = ( \RAM1|ram~31_q\ & ( \RAM1|ram~63_q\ & ( ((!\ROM1|memROM~3_combout\ & (\RAM1|ram~15_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~47_q\)))) # (\ROM1|memROM~2_combout\) ) ) ) # ( !\RAM1|ram~31_q\ & ( \RAM1|ram~63_q\ & ( 
-- (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~3_combout\ & (\RAM1|ram~15_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~47_q\))))) # (\ROM1|memROM~2_combout\ & (((\ROM1|memROM~3_combout\)))) ) ) ) # ( \RAM1|ram~31_q\ & ( !\RAM1|ram~63_q\ & ( 
-- (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~3_combout\ & (\RAM1|ram~15_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~47_q\))))) # (\ROM1|memROM~2_combout\ & (((!\ROM1|memROM~3_combout\)))) ) ) ) # ( !\RAM1|ram~31_q\ & ( !\RAM1|ram~63_q\ & ( 
-- (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~3_combout\ & (\RAM1|ram~15_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~47_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \RAM1|ALT_INV_ram~15_q\,
	datac => \RAM1|ALT_INV_ram~47_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~31_q\,
	dataf => \RAM1|ALT_INV_ram~63_q\,
	combout => \CPU|MUX1|saida_MUX[0]~4_combout\);

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \RAM1|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\RAM1|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~55_q\);

\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \RAM1|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

\RAM1|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~71_q\);

\CPU|MUX1|saida_MUX[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~5_combout\ = ( \RAM1|ram~39_q\ & ( \RAM1|ram~71_q\ & ( ((!\ROM1|memROM~3_combout\ & (\RAM1|ram~23_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~55_q\)))) # (\ROM1|memROM~2_combout\) ) ) ) # ( !\RAM1|ram~39_q\ & ( \RAM1|ram~71_q\ & ( 
-- (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~3_combout\ & (\RAM1|ram~23_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~55_q\))))) # (\ROM1|memROM~2_combout\ & (((\ROM1|memROM~3_combout\)))) ) ) ) # ( \RAM1|ram~39_q\ & ( !\RAM1|ram~71_q\ & ( 
-- (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~3_combout\ & (\RAM1|ram~23_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~55_q\))))) # (\ROM1|memROM~2_combout\ & (((!\ROM1|memROM~3_combout\)))) ) ) ) # ( !\RAM1|ram~39_q\ & ( !\RAM1|ram~71_q\ & ( 
-- (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~3_combout\ & (\RAM1|ram~23_q\)) # (\ROM1|memROM~3_combout\ & ((\RAM1|ram~55_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \RAM1|ALT_INV_ram~23_q\,
	datac => \RAM1|ALT_INV_ram~55_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~39_q\,
	dataf => \RAM1|ALT_INV_ram~71_q\,
	combout => \CPU|MUX1|saida_MUX[0]~5_combout\);

\CPU|MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~1_combout\ = ( \CPU|MUX1|saida_MUX[0]~5_combout\ & ( (!\CPU|DECODER1|Equal3~0_combout\ & (!\ROM1|memROM~8_combout\ & ((\CPU|MUX1|saida_MUX[0]~4_combout\) # (\ROM1|memROM~1_combout\)))) # (\CPU|DECODER1|Equal3~0_combout\ & 
-- (\ROM1|memROM~1_combout\)) ) ) # ( !\CPU|MUX1|saida_MUX[0]~5_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\CPU|DECODER1|Equal3~0_combout\ & (!\ROM1|memROM~8_combout\ & \CPU|MUX1|saida_MUX[0]~4_combout\))) # (\ROM1|memROM~1_combout\ & 
-- (\CPU|DECODER1|Equal3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110010001010100011101000100010001100100010101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[0]~4_combout\,
	datae => \CPU|MUX1|ALT_INV_saida_MUX[0]~5_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~1_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[1]~0_combout\ $ (((\CPU|DECODER1|Equal3~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~2_combout\) # (\ROM1|memROM~10_combout\))))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( !\CPU|MUX1|saida_MUX[1]~0_combout\ $ (((\CPU|DECODER1|Equal3~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~2_combout\) # (\ROM1|memROM~10_combout\))))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	datad => \CPU|DECODER1|ALT_INV_Sinais_Controle~2_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[1]~0_combout\,
	sload => \CPU|REG1|DOUT[3]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

\DEC3X8|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3X8|Mux7~0_combout\ = ( !\ROM1|memROM~7_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~4_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \DEC3X8|Mux7~0_combout\);

\DEC3X8|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3X8|Mux7~1_combout\ = (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & \DEC3X8|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \DEC3X8|ALT_INV_Mux7~0_combout\,
	combout => \DEC3X8|Mux7~1_combout\);

\REGHEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \DEC3X8|Mux7~1_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \DEC3X8|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX0|DOUT\(0));

\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \RAM1|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \RAM1|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~57_q\);

\RAM1|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \RAM1|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~49_q\);

\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~3_combout\ & ( \RAM1|ram~57_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~3_combout\ & ( \RAM1|ram~49_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~3_combout\ & ( 
-- \RAM1|ram~25_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~25_q\,
	datab => \RAM1|ALT_INV_ram~17_q\,
	datac => \RAM1|ALT_INV_ram~57_q\,
	datad => \RAM1|ALT_INV_ram~49_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~532_combout\);

\RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \RAM1|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~41_q\);

\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \RAM1|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

\RAM1|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~73_q\);

\RAM1|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~65_q\);

\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~3_combout\ & ( \RAM1|ram~73_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~3_combout\ & ( \RAM1|ram~65_q\ ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~3_combout\ & ( 
-- \RAM1|ram~41_q\ ) ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~41_q\,
	datab => \RAM1|ALT_INV_ram~33_q\,
	datac => \RAM1|ALT_INV_ram~73_q\,
	datad => \RAM1|ALT_INV_ram~65_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~533_combout\);

\CPU|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~2_combout\ = ( \ROM1|memROM~3_combout\ & ( \CPU|DECODER1|Equal3~0_combout\ ) ) # ( \ROM1|memROM~3_combout\ & ( !\CPU|DECODER1|Equal3~0_combout\ & ( (!\ROM1|memROM~8_combout\ & ((!\ROM1|memROM~2_combout\ & (\RAM1|ram~532_combout\)) # 
-- (\ROM1|memROM~2_combout\ & ((\RAM1|ram~533_combout\))))) ) ) ) # ( !\ROM1|memROM~3_combout\ & ( !\CPU|DECODER1|Equal3~0_combout\ & ( (!\ROM1|memROM~8_combout\ & ((!\ROM1|memROM~2_combout\ & (\RAM1|ram~532_combout\)) # (\ROM1|memROM~2_combout\ & 
-- ((\RAM1|ram~533_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~532_combout\,
	datab => \RAM1|ALT_INV_ram~533_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~2_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[2]~2_combout\ $ (((\CPU|DECODER1|Equal3~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~2_combout\) # (\ROM1|memROM~10_combout\))))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( !\CPU|MUX1|saida_MUX[2]~2_combout\ $ (((\CPU|DECODER1|Equal3~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~2_combout\) # (\ROM1|memROM~10_combout\))))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|DECODER1|ALT_INV_Sinais_Controle~2_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|MUX1|saida_MUX[2]~2_combout\,
	sload => \CPU|REG1|DOUT[3]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

\REGHEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \DEC3X8|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGHEX0|DOUT\(2));

\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \RAM1|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

\RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \RAM1|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~42_q\);

\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~42_q\ ) ) ) # ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~26_q\,
	datac => \RAM1|ALT_INV_ram~42_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~534_combout\);

\RAM1|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \RAM1|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~58_q\);

\RAM1|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \RAM1|ram~543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~74_q\);

\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~74_q\ ) ) ) # ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~58_q\,
	datac => \RAM1|ALT_INV_ram~74_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~535_combout\);

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \RAM1|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \RAM1|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~34_q\ ) ) ) # ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~18_q\,
	datac => \RAM1|ALT_INV_ram~34_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~536_combout\);

\RAM1|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \RAM1|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~50_q\);

\RAM1|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~66_q\);

\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~2_combout\ & ( \RAM1|ram~66_q\ ) ) ) # ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~50_q\,
	datac => \RAM1|ALT_INV_ram~66_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~537_combout\);

\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~535_combout\ ) ) ) # ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~534_combout\ ) ) ) # ( \ROM1|memROM~3_combout\ & ( 
-- !\ROM1|memROM~1_combout\ & ( \RAM1|ram~537_combout\ ) ) ) # ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~1_combout\ & ( \RAM1|ram~536_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~534_combout\,
	datab => \RAM1|ALT_INV_ram~535_combout\,
	datac => \RAM1|ALT_INV_ram~536_combout\,
	datad => \RAM1|ALT_INV_ram~537_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~538_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|DECODER1|Equal3~1_combout\ & (((!\RAM1|ram~538_combout\) # (\CPU|DECODER1|Equal3~0_combout\)))) # (\CPU|DECODER1|Equal3~1_combout\ & (!\CPU|DECODER1|Sinais_Controle~0_combout\ $ (((!\CPU|DECODER1|Equal3~0_combout\ 
-- & \RAM1|ram~538_combout\))))) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal3~1_combout\,
	datab => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	datac => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	datad => \RAM1|ALT_INV_ram~538_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\);

\CPU|MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~3_combout\ = (!\CPU|DECODER1|Equal3~0_combout\ & \RAM1|ram~538_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal3~0_combout\,
	datab => \RAM1|ALT_INV_ram~538_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~3_combout\);

\CPU|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|MUX1|saida_MUX[3]~3_combout\,
	sload => \CPU|REG1|DOUT[3]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

\REGHEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \DEC3X8|Mux7~1_combout\,
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

\DEC3X8|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3X8|Mux7~2_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & \DEC3X8|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \DEC3X8|ALT_INV_Mux7~0_combout\,
	combout => \DEC3X8|Mux7~2_combout\);

\REGHEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \DEC3X8|Mux7~2_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \DEC3X8|Mux7~2_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \DEC3X8|Mux7~2_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \DEC3X8|Mux7~2_combout\,
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

\DEC3X8|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3X8|Mux7~3_combout\ = (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & \DEC3X8|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \DEC3X8|ALT_INV_Mux7~0_combout\,
	combout => \DEC3X8|Mux7~3_combout\);

\REGHEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \DEC3X8|Mux7~3_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \DEC3X8|Mux7~3_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \DEC3X8|Mux7~3_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \DEC3X8|Mux7~3_combout\,
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

\DEC3X8|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3X8|Mux7~4_combout\ = (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & \DEC3X8|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \DEC3X8|ALT_INV_Mux7~0_combout\,
	combout => \DEC3X8|Mux7~4_combout\);

\REGHEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \DEC3X8|Mux7~4_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \DEC3X8|Mux7~4_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \DEC3X8|Mux7~4_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \DEC3X8|Mux7~4_combout\,
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

\DEC3X8|Mux7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3X8|Mux7~5_combout\ = (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & \DEC3X8|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \DEC3X8|ALT_INV_Mux7~0_combout\,
	combout => \DEC3X8|Mux7~5_combout\);

\REGHEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \DEC3X8|Mux7~5_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \DEC3X8|Mux7~5_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \DEC3X8|Mux7~5_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \DEC3X8|Mux7~5_combout\,
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

\DEC3X8|Mux7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC3X8|Mux7~6_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & \DEC3X8|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \DEC3X8|ALT_INV_Mux7~0_combout\,
	combout => \DEC3X8|Mux7~6_combout\);

\REGHEX5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \DEC3X8|Mux7~6_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \DEC3X8|Mux7~6_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \DEC3X8|Mux7~6_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \DEC3X8|Mux7~6_combout\,
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

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\Reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

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
END structure;


