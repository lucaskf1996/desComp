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

-- DATE "09/14/2021 14:52:28"

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
	saida_INST : OUT std_logic_vector(12 DOWNTO 0);
	saida_RAM : OUT std_logic_vector(7 DOWNTO 0);
	DEBUG_Data_OUT : OUT std_logic_vector(7 DOWNTO 0);
	DEBUG_Data_IN : OUT std_logic_vector(7 DOWNTO 0)
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
SIGNAL ww_saida_INST : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_saida_RAM : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DEBUG_Data_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DEBUG_Data_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \saida_RAM[0]~output_o\ : std_logic;
SIGNAL \saida_RAM[1]~output_o\ : std_logic;
SIGNAL \saida_RAM[2]~output_o\ : std_logic;
SIGNAL \saida_RAM[3]~output_o\ : std_logic;
SIGNAL \saida_RAM[4]~output_o\ : std_logic;
SIGNAL \saida_RAM[5]~output_o\ : std_logic;
SIGNAL \saida_RAM[6]~output_o\ : std_logic;
SIGNAL \saida_RAM[7]~output_o\ : std_logic;
SIGNAL \DEBUG_Data_IN[0]~output_o\ : std_logic;
SIGNAL \DEBUG_Data_IN[1]~output_o\ : std_logic;
SIGNAL \DEBUG_Data_IN[2]~output_o\ : std_logic;
SIGNAL \DEBUG_Data_IN[3]~output_o\ : std_logic;
SIGNAL \DEBUG_Data_IN[4]~output_o\ : std_logic;
SIGNAL \DEBUG_Data_IN[5]~output_o\ : std_logic;
SIGNAL \DEBUG_Data_IN[6]~output_o\ : std_logic;
SIGNAL \DEBUG_Data_IN[7]~output_o\ : std_logic;
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
SIGNAL \saida_INST[0]~output_o\ : std_logic;
SIGNAL \saida_INST[1]~output_o\ : std_logic;
SIGNAL \saida_INST[2]~output_o\ : std_logic;
SIGNAL \saida_INST[3]~output_o\ : std_logic;
SIGNAL \saida_INST[4]~output_o\ : std_logic;
SIGNAL \saida_INST[5]~output_o\ : std_logic;
SIGNAL \saida_INST[6]~output_o\ : std_logic;
SIGNAL \saida_INST[7]~output_o\ : std_logic;
SIGNAL \saida_INST[8]~output_o\ : std_logic;
SIGNAL \saida_INST[9]~output_o\ : std_logic;
SIGNAL \saida_INST[10]~output_o\ : std_logic;
SIGNAL \saida_INST[11]~output_o\ : std_logic;
SIGNAL \saida_INST[12]~output_o\ : std_logic;
SIGNAL \DEBUG_Data_OUT[0]~output_o\ : std_logic;
SIGNAL \DEBUG_Data_OUT[1]~output_o\ : std_logic;
SIGNAL \DEBUG_Data_OUT[2]~output_o\ : std_logic;
SIGNAL \DEBUG_Data_OUT[3]~output_o\ : std_logic;
SIGNAL \DEBUG_Data_OUT[4]~output_o\ : std_logic;
SIGNAL \DEBUG_Data_OUT[5]~output_o\ : std_logic;
SIGNAL \DEBUG_Data_OUT[6]~output_o\ : std_logic;
SIGNAL \DEBUG_Data_OUT[7]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~2\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~6\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \CPU|DESVIO|Sel[0]~0_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~10\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~14\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~18\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~22\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~26\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~30\ : std_logic;
SIGNAL \CPU|SOMPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_wirecell_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal7~1_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal7~0_combout\ : std_logic;
SIGNAL \RAM1|dado_out~16_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Sinais_Controle~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REG1|DOUT[7]~0_combout\ : std_logic;
SIGNAL \RAM1|ram~552_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~551_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~550_combout\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|ram~577_combout\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~573_combout\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|ram~569_combout\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~565_combout\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \RAM1|ram~561_combout\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~545_combout\ : std_logic;
SIGNAL \RAM1|ram~557_combout\ : std_logic;
SIGNAL \RAM1|ram~546_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \RAM1|ram~553_combout\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \ANDLEDR~3_combout\ : std_logic;
SIGNAL \ANDLEDR~0_combout\ : std_logic;
SIGNAL \ANDLEDR~1_combout\ : std_logic;
SIGNAL \ANDLED8~0_combout\ : std_logic;
SIGNAL \REGLED8|DOUT~0_combout\ : std_logic;
SIGNAL \REGLED8|DOUT~q\ : std_logic;
SIGNAL \ANDLEDR~2_combout\ : std_logic;
SIGNAL \REGLED9|DOUT~0_combout\ : std_logic;
SIGNAL \REGLED9|DOUT~q\ : std_logic;
SIGNAL \CPU|PC1|dataOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|DECODER1|Sinais_Controle\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \REGLEDR|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ALT_INV_ANDLEDR~2_combout\ : std_logic;
SIGNAL \ALT_INV_ANDLED8~0_combout\ : std_logic;
SIGNAL \ALT_INV_ANDLEDR~1_combout\ : std_logic;
SIGNAL \ALT_INV_ANDLEDR~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
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
SIGNAL \RAM1|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC1|ALT_INV_dataOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_dado_out~16_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_Reset <= Reset;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LED8 <= ww_LED8;
LED9 <= ww_LED9;
saida_INST <= ww_saida_INST;
saida_RAM <= ww_saida_RAM;
DEBUG_Data_OUT <= ww_DEBUG_Data_OUT;
DEBUG_Data_IN <= ww_DEBUG_Data_IN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM1|ALT_INV_ram~542_combout\ <= NOT \RAM1|ram~542_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~541_combout\ <= NOT \RAM1|ram~541_combout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\ALT_INV_ANDLEDR~2_combout\ <= NOT \ANDLEDR~2_combout\;
\ALT_INV_ANDLED8~0_combout\ <= NOT \ANDLED8~0_combout\;
\ALT_INV_ANDLEDR~1_combout\ <= NOT \ANDLEDR~1_combout\;
\ALT_INV_ANDLEDR~0_combout\ <= NOT \ANDLEDR~0_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
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
\RAM1|ALT_INV_ram~577_combout\ <= NOT \RAM1|ram~577_combout\;
\RAM1|ALT_INV_ram~573_combout\ <= NOT \RAM1|ram~573_combout\;
\RAM1|ALT_INV_ram~569_combout\ <= NOT \RAM1|ram~569_combout\;
\RAM1|ALT_INV_ram~565_combout\ <= NOT \RAM1|ram~565_combout\;
\RAM1|ALT_INV_ram~561_combout\ <= NOT \RAM1|ram~561_combout\;
\RAM1|ALT_INV_ram~557_combout\ <= NOT \RAM1|ram~557_combout\;
\RAM1|ALT_INV_ram~553_combout\ <= NOT \RAM1|ram~553_combout\;
\CPU|REG1|ALT_INV_DOUT\(7) <= NOT \CPU|REG1|DOUT\(7);
\CPU|REG1|ALT_INV_DOUT\(6) <= NOT \CPU|REG1|DOUT\(6);
\CPU|REG1|ALT_INV_DOUT\(5) <= NOT \CPU|REG1|DOUT\(5);
\CPU|REG1|ALT_INV_DOUT\(4) <= NOT \CPU|REG1|DOUT\(4);
\CPU|REG1|ALT_INV_DOUT\(3) <= NOT \CPU|REG1|DOUT\(3);
\CPU|REG1|ALT_INV_DOUT\(2) <= NOT \CPU|REG1|DOUT\(2);
\CPU|REG1|ALT_INV_DOUT\(1) <= NOT \CPU|REG1|DOUT\(1);
\CPU|REG1|ALT_INV_DOUT\(0) <= NOT \CPU|REG1|DOUT\(0);
\CPU|PC1|ALT_INV_dataOUT\(8) <= NOT \CPU|PC1|dataOUT\(8);
\RAM1|ALT_INV_dado_out~16_combout\ <= NOT \RAM1|dado_out~16_combout\;
\RAM1|ALT_INV_ram~550_combout\ <= NOT \RAM1|ram~550_combout\;
\CPU|DECODER1|ALT_INV_Equal7~1_combout\ <= NOT \CPU|DECODER1|Equal7~1_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \CPU|MUX1|saida_MUX[7]~7_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~6_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~5_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \CPU|MUX1|saida_MUX[4]~4_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~3_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~2_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~1_combout\;
\CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\ <= NOT \CPU|DECODER1|Sinais_Controle~0_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~0_combout\;
\CPU|DECODER1|ALT_INV_Equal7~0_combout\ <= NOT \CPU|DECODER1|Equal7~0_combout\;
\RAM1|ALT_INV_ram~548_combout\ <= NOT \RAM1|ram~548_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~547_combout\ <= NOT \RAM1|ram~547_combout\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~545_combout\ <= NOT \RAM1|ram~545_combout\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~544_combout\ <= NOT \RAM1|ram~544_combout\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\CPU|PC1|ALT_INV_dataOUT\(7) <= NOT \CPU|PC1|dataOUT\(7);
\CPU|PC1|ALT_INV_dataOUT\(6) <= NOT \CPU|PC1|dataOUT\(6);
\CPU|PC1|ALT_INV_dataOUT\(5) <= NOT \CPU|PC1|dataOUT\(5);
\CPU|PC1|ALT_INV_dataOUT\(4) <= NOT \CPU|PC1|dataOUT\(4);
\CPU|PC1|ALT_INV_dataOUT\(3) <= NOT \CPU|PC1|dataOUT\(3);
\CPU|PC1|ALT_INV_dataOUT\(2) <= NOT \CPU|PC1|dataOUT\(2);
\CPU|PC1|ALT_INV_dataOUT\(1) <= NOT \CPU|PC1|dataOUT\(1);
\CPU|PC1|ALT_INV_dataOUT\(0) <= NOT \CPU|PC1|dataOUT\(0);

\saida_RAM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~528_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \saida_RAM[0]~output_o\);

\saida_RAM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~531_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \saida_RAM[1]~output_o\);

\saida_RAM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~534_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \saida_RAM[2]~output_o\);

\saida_RAM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~537_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \saida_RAM[3]~output_o\);

\saida_RAM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~540_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \saida_RAM[4]~output_o\);

\saida_RAM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~543_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \saida_RAM[5]~output_o\);

\saida_RAM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~546_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \saida_RAM[6]~output_o\);

\saida_RAM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~549_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \saida_RAM[7]~output_o\);

\DEBUG_Data_IN[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~528_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \DEBUG_Data_IN[0]~output_o\);

\DEBUG_Data_IN[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~531_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \DEBUG_Data_IN[1]~output_o\);

\DEBUG_Data_IN[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~534_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \DEBUG_Data_IN[2]~output_o\);

\DEBUG_Data_IN[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~537_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \DEBUG_Data_IN[3]~output_o\);

\DEBUG_Data_IN[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~540_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \DEBUG_Data_IN[4]~output_o\);

\DEBUG_Data_IN[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~543_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \DEBUG_Data_IN[5]~output_o\);

\DEBUG_Data_IN[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~546_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \DEBUG_Data_IN[6]~output_o\);

\DEBUG_Data_IN[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~549_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \DEBUG_Data_IN[7]~output_o\);

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

\saida_INST[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~2_combout\,
	devoe => ww_devoe,
	o => \saida_INST[0]~output_o\);

\saida_INST[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~4_combout\,
	devoe => ww_devoe,
	o => \saida_INST[1]~output_o\);

\saida_INST[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~5_combout\,
	devoe => ww_devoe,
	o => \saida_INST[2]~output_o\);

\saida_INST[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~6_combout\,
	devoe => ww_devoe,
	o => \saida_INST[3]~output_o\);

\saida_INST[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~5_combout\,
	devoe => ww_devoe,
	o => \saida_INST[4]~output_o\);

\saida_INST[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => \saida_INST[5]~output_o\);

\saida_INST[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~5_combout\,
	devoe => ww_devoe,
	o => \saida_INST[6]~output_o\);

\saida_INST[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => \saida_INST[7]~output_o\);

\saida_INST[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~8_combout\,
	devoe => ww_devoe,
	o => \saida_INST[8]~output_o\);

\saida_INST[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~10_combout\,
	devoe => ww_devoe,
	o => \saida_INST[9]~output_o\);

\saida_INST[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~12_combout\,
	devoe => ww_devoe,
	o => \saida_INST[10]~output_o\);

\saida_INST[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~14_combout\,
	devoe => ww_devoe,
	o => \saida_INST[11]~output_o\);

\saida_INST[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_INST[12]~output_o\);

\DEBUG_Data_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(0),
	devoe => ww_devoe,
	o => \DEBUG_Data_OUT[0]~output_o\);

\DEBUG_Data_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(1),
	devoe => ww_devoe,
	o => \DEBUG_Data_OUT[1]~output_o\);

\DEBUG_Data_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(2),
	devoe => ww_devoe,
	o => \DEBUG_Data_OUT[2]~output_o\);

\DEBUG_Data_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(3),
	devoe => ww_devoe,
	o => \DEBUG_Data_OUT[3]~output_o\);

\DEBUG_Data_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(4),
	devoe => ww_devoe,
	o => \DEBUG_Data_OUT[4]~output_o\);

\DEBUG_Data_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(5),
	devoe => ww_devoe,
	o => \DEBUG_Data_OUT[5]~output_o\);

\DEBUG_Data_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(6),
	devoe => ww_devoe,
	o => \DEBUG_Data_OUT[6]~output_o\);

\DEBUG_Data_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG1|DOUT\(7),
	devoe => ww_devoe,
	o => \DEBUG_Data_OUT[7]~output_o\);

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

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (!\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(2) $ (!\CPU|PC1|dataOUT\(3))))) # (\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(3) & ((!\CPU|PC1|dataOUT\(1)) # (!\CPU|PC1|dataOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111010100000010111101010000001011110101000000101111010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT\(0) $ (\CPU|PC1|dataOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000001000000001000000100000000100000010000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~11_combout\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (!\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1) $ (!\CPU|PC1|dataOUT\(2))))) # (\CPU|PC1|dataOUT\(3) & (((\CPU|PC1|dataOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000001111001010000000111100101000000011110010100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~13_combout\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (\ROM1|memROM~1_combout\ & !\ROM1|memROM~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~14_combout\);

\CPU|DESVIO|Sel[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO|Sel[0]~0_combout\ = (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~11_combout\ & \ROM1|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \CPU|DESVIO|Sel[0]~0_combout\);

\CPU|PC1|dataOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~5_combout\,
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

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(2) & (\CPU|PC1|dataOUT\(3) & \ROM1|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(2),
	datac => \CPU|PC1|ALT_INV_dataOUT\(3),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~6_combout\);

\CPU|PC1|dataOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \CPU|DESVIO|Sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(3));

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

\CPU|PC1|dataOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMPC|Add0~17_sumout\,
	asdata => \ROM1|memROM~5_combout\,
	sload => \CPU|DESVIO|Sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(4));

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

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~1_combout\ & ( (\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(2) & \CPU|PC1|dataOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~7_combout\);

\CPU|PC1|dataOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMPC|Add0~21_sumout\,
	asdata => \ROM1|memROM~7_combout\,
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

\CPU|PC1|dataOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMPC|Add0~25_sumout\,
	asdata => \ROM1|memROM~5_combout\,
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
	asdata => \ROM1|memROM~7_combout\,
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

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(2) $ (!\CPU|PC1|dataOUT\(3))))) # (\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1) & (\CPU|PC1|dataOUT\(2) & !\CPU|PC1|dataOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011101010000000000000000000000000111010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~8_combout\);

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

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\CPU|PC1|dataOUT\(0) & (\CPU|PC1|dataOUT\(1) & (\CPU|PC1|dataOUT\(2) & !\CPU|PC1|dataOUT\(3)))) # (\CPU|PC1|dataOUT\(0) & (((!\CPU|PC1|dataOUT\(2) & \CPU|PC1|dataOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010000000000100101000000000010010100000000001001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~4_combout\);

\CPU|PC1|dataOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \CPU|DESVIO|Sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(1));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\CPU|PC1|dataOUT\(0) & (!\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(2) & !\CPU|PC1|dataOUT\(3)))) # (\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(2) & (\CPU|PC1|dataOUT\(1))) # (\CPU|PC1|dataOUT\(2) & 
-- ((!\CPU|PC1|dataOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010100010000100101010001000010010101000100001001010100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\ROM1|memROM~0_combout\) # (!\ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~2_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_wirecell_combout\ = !\ROM1|memROM~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~2_wirecell_combout\);

\CPU|PC1|dataOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|SOMPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~2_wirecell_combout\,
	sload => \CPU|DESVIO|Sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC1|dataOUT\(0));

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \ROM1|memROM~1_combout\ & ( (\CPU|PC1|dataOUT\(0) & (\CPU|PC1|dataOUT\(1) & (\CPU|PC1|dataOUT\(2) & !\CPU|PC1|dataOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~10_combout\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~12_combout\);

\CPU|DECODER1|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal7~1_combout\ = (!\ROM1|memROM~10_combout\ & (\ROM1|memROM~12_combout\ & !\ROM1|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \CPU|DECODER1|Equal7~1_combout\);

\CPU|DECODER1|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal7~0_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~11_combout\ & !\ROM1|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \CPU|DECODER1|Equal7~0_combout\);

\RAM1|dado_out~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out~16_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT\(2) & (\CPU|PC1|dataOUT\(1) & !\CPU|PC1|dataOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(3),
	datab => \CPU|PC1|ALT_INV_dataOUT\(2),
	datac => \CPU|PC1|ALT_INV_dataOUT\(1),
	datad => \CPU|PC1|ALT_INV_dataOUT\(0),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|dado_out~16_combout\);

\CPU|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~0_combout\ = ( \CPU|DECODER1|Equal7~0_combout\ & ( \RAM1|dado_out~16_combout\ & ( !\ROM1|memROM~2_combout\ ) ) ) # ( !\CPU|DECODER1|Equal7~0_combout\ & ( \RAM1|dado_out~16_combout\ & ( (!\ROM1|memROM~5_combout\ & 
-- \RAM1|ram~527_combout\) ) ) ) # ( \CPU|DECODER1|Equal7~0_combout\ & ( !\RAM1|dado_out~16_combout\ & ( !\ROM1|memROM~2_combout\ ) ) ) # ( !\CPU|DECODER1|Equal7~0_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101010101010101000000000110011001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~527_combout\,
	datae => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_dado_out~16_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~0_combout\);

\CPU|DECODER1|Sinais_Controle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Sinais_Controle~0_combout\ = !\ROM1|memROM~10_combout\ $ (\ROM1|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \CPU|DECODER1|Sinais_Controle~0_combout\);

\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( (!\CPU|DECODER1|Equal7~1_combout\) # ((!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\ $ (!\ROM1|memROM~10_combout\)))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010111011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[0]~0_combout\ $ (((\CPU|DECODER1|Equal7~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~0_combout\) # (\ROM1|memROM~12_combout\))))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( !\CPU|MUX1|saida_MUX[0]~0_combout\ $ (((\CPU|DECODER1|Equal7~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~0_combout\) # (\ROM1|memROM~12_combout\))))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|REG1|DOUT[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG1|DOUT[7]~0_combout\ = (!\ROM1|memROM~12_combout\ & !\CPU|DECODER1|Sinais_Controle~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	combout => \CPU|REG1|DOUT[7]~0_combout\);

\CPU|DECODER1|Sinais_Controle[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Sinais_Controle\(4) = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~13_combout\ $ (((\ROM1|memROM~11_combout\) # (\ROM1|memROM~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010101010000000001010101000000000101010100000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \CPU|DECODER1|Sinais_Controle\(4));

\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU|REG1|DOUT[7]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

\RAM1|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~552_combout\ = ( \CPU|PC1|dataOUT\(0) & ( (\ROM1|memROM~1_combout\ & (!\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT\(2) & \CPU|PC1|dataOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT\(3),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(1),
	datae => \CPU|PC1|ALT_INV_dataOUT\(0),
	combout => \RAM1|ram~552_combout\);

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \RAM1|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = ( \CPU|PC1|dataOUT\(0) & ( (\ROM1|memROM~1_combout\ & (!\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT\(2) & !\CPU|PC1|dataOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC1|ALT_INV_dataOUT\(3),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(1),
	datae => \CPU|PC1|ALT_INV_dataOUT\(0),
	combout => \RAM1|ram~551_combout\);

\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \RAM1|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

\RAM1|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~550_combout\ = ( \RAM1|ram~15_q\ & ( (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~4_combout\ & ((\RAM1|ram~23_q\) # (\ROM1|memROM~2_combout\)))) # (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~2_combout\ & ((\ROM1|memROM~4_combout\)))) ) ) # ( 
-- !\RAM1|ram~15_q\ & ( (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~23_q\ & !\ROM1|memROM~4_combout\)) # (\ROM1|memROM~6_combout\ & ((\ROM1|memROM~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100010010011000010001000001000001000100100110000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~23_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \RAM1|ALT_INV_ram~15_q\,
	combout => \RAM1|ram~550_combout\);

\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \RAM1|ram~550_combout\ & ( (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \RAM1|ALT_INV_ram~550_combout\,
	combout => \RAM1|ram~527_combout\);

\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = (!\ROM1|memROM~5_combout\ & \RAM1|ram~527_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~527_combout\,
	combout => \RAM1|ram~528_combout\);

\CPU|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~1_combout\ = ( \CPU|DECODER1|Equal7~0_combout\ & ( \RAM1|dado_out~16_combout\ & ( \ROM1|memROM~4_combout\ ) ) ) # ( !\CPU|DECODER1|Equal7~0_combout\ & ( \RAM1|dado_out~16_combout\ & ( (!\ROM1|memROM~5_combout\ & 
-- \RAM1|ram~577_combout\) ) ) ) # ( \CPU|DECODER1|Equal7~0_combout\ & ( !\RAM1|dado_out~16_combout\ & ( \ROM1|memROM~4_combout\ ) ) ) # ( !\CPU|DECODER1|Equal7~0_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010100000000110011000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~577_combout\,
	datae => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_dado_out~16_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~1_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[1]~1_combout\ $ (((\CPU|DECODER1|Equal7~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~0_combout\) # (\ROM1|memROM~12_combout\))))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( !\CPU|MUX1|saida_MUX[1]~1_combout\ $ (((\CPU|DECODER1|Equal7~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~0_combout\) # (\ROM1|memROM~12_combout\))))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datad => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|MUX1|saida_MUX[1]~1_combout\,
	sload => \CPU|REG1|DOUT[7]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \RAM1|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~24_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~529_combout\);

\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \RAM1|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~16_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~530_combout\);

\RAM1|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~577_combout\ = ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~530_combout\ & ( (\ROM1|memROM~2_combout\) # (\RAM1|ram~529_combout\) ) ) ) # ( !\ROM1|memROM~7_combout\ & ( !\RAM1|ram~530_combout\ & ( (\RAM1|ram~529_combout\ & !\ROM1|memROM~2_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~529_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~530_combout\,
	combout => \RAM1|ram~577_combout\);

\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = (!\ROM1|memROM~5_combout\ & \RAM1|ram~577_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~577_combout\,
	combout => \RAM1|ram~531_combout\);

\CPU|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~2_combout\ = ( \RAM1|dado_out~16_combout\ & ( (!\ROM1|memROM~5_combout\ & (\RAM1|ram~573_combout\ & !\CPU|DECODER1|Equal7~0_combout\)) # (\ROM1|memROM~5_combout\ & ((\CPU|DECODER1|Equal7~0_combout\))) ) ) # ( 
-- !\RAM1|dado_out~16_combout\ & ( (!\CPU|DECODER1|Equal7~0_combout\) # (\ROM1|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101000010100101010111111111010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~573_combout\,
	datad => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	datae => \RAM1|ALT_INV_dado_out~16_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~2_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[2]~2_combout\ $ (((\CPU|DECODER1|Equal7~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~0_combout\) # (\ROM1|memROM~12_combout\))))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( !\CPU|MUX1|saida_MUX[2]~2_combout\ $ (((\CPU|DECODER1|Equal7~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~0_combout\) # (\ROM1|memROM~12_combout\))))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|MUX1|saida_MUX[2]~2_combout\,
	sload => \CPU|REG1|DOUT[7]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \RAM1|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~25_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~532_combout\);

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \RAM1|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~17_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~533_combout\);

\RAM1|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~573_combout\ = ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~533_combout\ & ( (\ROM1|memROM~2_combout\) # (\RAM1|ram~532_combout\) ) ) ) # ( !\ROM1|memROM~7_combout\ & ( !\RAM1|ram~533_combout\ & ( (\RAM1|ram~532_combout\ & !\ROM1|memROM~2_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~532_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~533_combout\,
	combout => \RAM1|ram~573_combout\);

\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = (!\ROM1|memROM~5_combout\ & \RAM1|ram~573_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~573_combout\,
	combout => \RAM1|ram~534_combout\);

\CPU|MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~3_combout\ = ( \CPU|DECODER1|Equal7~0_combout\ & ( \RAM1|dado_out~16_combout\ & ( \ROM1|memROM~6_combout\ ) ) ) # ( !\CPU|DECODER1|Equal7~0_combout\ & ( \RAM1|dado_out~16_combout\ & ( (!\ROM1|memROM~5_combout\ & 
-- \RAM1|ram~569_combout\) ) ) ) # ( \CPU|DECODER1|Equal7~0_combout\ & ( !\RAM1|dado_out~16_combout\ & ( \ROM1|memROM~6_combout\ ) ) ) # ( !\CPU|DECODER1|Equal7~0_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010100000000110011000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~569_combout\,
	datae => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_dado_out~16_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~3_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[3]~3_combout\ $ (((\CPU|DECODER1|Equal7~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~0_combout\) # (\ROM1|memROM~12_combout\))))) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( !\CPU|MUX1|saida_MUX[3]~3_combout\ $ (((\CPU|DECODER1|Equal7~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~0_combout\) # (\ROM1|memROM~12_combout\))))) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110101000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~3_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|MUX1|saida_MUX[3]~3_combout\,
	sload => \CPU|REG1|DOUT[7]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \RAM1|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~26_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
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
	ena => \RAM1|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~18_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~536_combout\);

\RAM1|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~569_combout\ = ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~536_combout\ & ( (\ROM1|memROM~2_combout\) # (\RAM1|ram~535_combout\) ) ) ) # ( !\ROM1|memROM~7_combout\ & ( !\RAM1|ram~536_combout\ & ( (\RAM1|ram~535_combout\ & !\ROM1|memROM~2_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~535_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~536_combout\,
	combout => \RAM1|ram~569_combout\);

\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = (!\ROM1|memROM~5_combout\ & \RAM1|ram~569_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~569_combout\,
	combout => \RAM1|ram~537_combout\);

\CPU|MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~4_combout\ = ( \RAM1|dado_out~16_combout\ & ( (!\ROM1|memROM~5_combout\ & (\RAM1|ram~565_combout\ & !\CPU|DECODER1|Equal7~0_combout\)) # (\ROM1|memROM~5_combout\ & ((\CPU|DECODER1|Equal7~0_combout\))) ) ) # ( 
-- !\RAM1|dado_out~16_combout\ & ( (!\CPU|DECODER1|Equal7~0_combout\) # (\ROM1|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101000010100101010111111111010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~565_combout\,
	datad => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	datae => \RAM1|ALT_INV_dado_out~16_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~4_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[4]~4_combout\ $ (((\CPU|DECODER1|Equal7~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~0_combout\) # (\ROM1|memROM~12_combout\))))) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( !\CPU|MUX1|saida_MUX[4]~4_combout\ $ (((\CPU|DECODER1|Equal7~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~0_combout\) # (\ROM1|memROM~12_combout\))))) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110101000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[4]~4_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|MUX1|saida_MUX[4]~4_combout\,
	sload => \CPU|REG1|DOUT[7]~0_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \RAM1|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~27_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~538_combout\);

\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \RAM1|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~539_combout\);

\RAM1|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~565_combout\ = ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~539_combout\ & ( (\ROM1|memROM~2_combout\) # (\RAM1|ram~538_combout\) ) ) ) # ( !\ROM1|memROM~7_combout\ & ( !\RAM1|ram~539_combout\ & ( (\RAM1|ram~538_combout\ & !\ROM1|memROM~2_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~538_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~565_combout\);

\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = (!\ROM1|memROM~5_combout\ & \RAM1|ram~565_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~565_combout\,
	combout => \RAM1|ram~540_combout\);

\CPU|MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~5_combout\ = ( \CPU|DECODER1|Equal7~0_combout\ & ( \RAM1|dado_out~16_combout\ & ( \ROM1|memROM~7_combout\ ) ) ) # ( !\CPU|DECODER1|Equal7~0_combout\ & ( \RAM1|dado_out~16_combout\ & ( (!\ROM1|memROM~5_combout\ & 
-- \RAM1|ram~561_combout\) ) ) ) # ( \CPU|DECODER1|Equal7~0_combout\ & ( !\RAM1|dado_out~16_combout\ & ( \ROM1|memROM~7_combout\ ) ) ) # ( !\CPU|DECODER1|Equal7~0_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010100000000110011000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~561_combout\,
	datae => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_dado_out~16_combout\,
	combout => \CPU|MUX1|saida_MUX[5]~5_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[5]~5_combout\ $ (((\CPU|DECODER1|Equal7~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~0_combout\) # (\ROM1|memROM~12_combout\))))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( !\CPU|MUX1|saida_MUX[5]~5_combout\ $ (((\CPU|DECODER1|Equal7~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~0_combout\) # (\ROM1|memROM~12_combout\))))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110101000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[5]~5_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|MUX1|saida_MUX[5]~5_combout\,
	sload => \CPU|REG1|DOUT[7]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(5));

\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \RAM1|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~28_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~541_combout\);

\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \RAM1|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~542_combout\);

\RAM1|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~561_combout\ = ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~542_combout\ & ( (\ROM1|memROM~2_combout\) # (\RAM1|ram~541_combout\) ) ) ) # ( !\ROM1|memROM~7_combout\ & ( !\RAM1|ram~542_combout\ & ( (\RAM1|ram~541_combout\ & !\ROM1|memROM~2_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~541_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~542_combout\,
	combout => \RAM1|ram~561_combout\);

\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = (!\ROM1|memROM~5_combout\ & \RAM1|ram~561_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~561_combout\,
	combout => \RAM1|ram~543_combout\);

\CPU|MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~6_combout\ = ( \RAM1|dado_out~16_combout\ & ( (!\ROM1|memROM~5_combout\ & (\RAM1|ram~557_combout\ & !\CPU|DECODER1|Equal7~0_combout\)) # (\ROM1|memROM~5_combout\ & ((\CPU|DECODER1|Equal7~0_combout\))) ) ) # ( 
-- !\RAM1|dado_out~16_combout\ & ( (!\CPU|DECODER1|Equal7~0_combout\) # (\ROM1|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101000010100101010111111111010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~557_combout\,
	datad => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	datae => \RAM1|ALT_INV_dado_out~16_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~6_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[6]~6_combout\ $ (((\CPU|DECODER1|Equal7~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~0_combout\) # (\ROM1|memROM~12_combout\))))) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( !\CPU|MUX1|saida_MUX[6]~6_combout\ $ (((\CPU|DECODER1|Equal7~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~0_combout\) # (\ROM1|memROM~12_combout\))))) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110101000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~6_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1|saida_MUX[6]~6_combout\,
	sload => \CPU|REG1|DOUT[7]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(6));

\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \RAM1|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~29_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~544_combout\);

\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \RAM1|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~545_combout\);

\RAM1|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~557_combout\ = ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~545_combout\ & ( (\ROM1|memROM~2_combout\) # (\RAM1|ram~544_combout\) ) ) ) # ( !\ROM1|memROM~7_combout\ & ( !\RAM1|ram~545_combout\ & ( (\RAM1|ram~544_combout\ & !\ROM1|memROM~2_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~544_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~545_combout\,
	combout => \RAM1|ram~557_combout\);

\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = (!\ROM1|memROM~5_combout\ & \RAM1|ram~557_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~557_combout\,
	combout => \RAM1|ram~546_combout\);

\CPU|MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~7_combout\ = ( \CPU|DECODER1|Equal7~0_combout\ & ( \RAM1|dado_out~16_combout\ & ( \ROM1|memROM~7_combout\ ) ) ) # ( !\CPU|DECODER1|Equal7~0_combout\ & ( \RAM1|dado_out~16_combout\ & ( (!\ROM1|memROM~5_combout\ & 
-- \RAM1|ram~553_combout\) ) ) ) # ( \CPU|DECODER1|Equal7~0_combout\ & ( !\RAM1|dado_out~16_combout\ & ( \ROM1|memROM~7_combout\ ) ) ) # ( !\CPU|DECODER1|Equal7~0_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010100000000110011000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~553_combout\,
	datae => \CPU|DECODER1|ALT_INV_Equal7~0_combout\,
	dataf => \RAM1|ALT_INV_dado_out~16_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~7_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[7]~7_combout\ $ (((\CPU|DECODER1|Equal7~1_combout\ & ((\CPU|DECODER1|Sinais_Controle~0_combout\) # (\ROM1|memROM~12_combout\))))) ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110101000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal7~1_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \CPU|DECODER1|ALT_INV_Sinais_Controle~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[7]~7_combout\,
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
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|MUX1|saida_MUX[7]~7_combout\,
	sload => \CPU|REG1|DOUT[7]~0_combout\,
	ena => \CPU|DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(7));

\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \RAM1|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~30_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~547_combout\);

\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \RAM1|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~22_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~548_combout\);

\RAM1|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~553_combout\ = ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~548_combout\ & ( (\ROM1|memROM~2_combout\) # (\RAM1|ram~547_combout\) ) ) ) # ( !\ROM1|memROM~7_combout\ & ( !\RAM1|ram~548_combout\ & ( (\RAM1|ram~547_combout\ & !\ROM1|memROM~2_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~547_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~548_combout\,
	combout => \RAM1|ram~553_combout\);

\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = (!\ROM1|memROM~5_combout\ & \RAM1|ram~553_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~553_combout\,
	combout => \RAM1|ram~549_combout\);

\ANDLEDR~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDLEDR~3_combout\ = (\CPU|PC1|dataOUT\(3) & (!\CPU|PC1|dataOUT\(2) & (!\CPU|PC1|dataOUT\(0) & \ROM1|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(3),
	datab => \CPU|PC1|ALT_INV_dataOUT\(2),
	datac => \CPU|PC1|ALT_INV_dataOUT\(0),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ANDLEDR~3_combout\);

\REGLEDR|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \ANDLEDR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(0));

\REGLEDR|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \ANDLEDR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(1));

\REGLEDR|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \ANDLEDR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(2));

\REGLEDR|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \ANDLEDR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(3));

\REGLEDR|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \ANDLEDR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(4));

\REGLEDR|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \ANDLEDR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(5));

\REGLEDR|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \ANDLEDR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(6));

\REGLEDR|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \ANDLEDR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLEDR|DOUT\(7));

\ANDLEDR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDLEDR~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (\CPU|PC1|dataOUT\(0) & ((!\CPU|PC1|dataOUT\(1) & (!\CPU|PC1|dataOUT\(2) & \CPU|PC1|dataOUT\(3))) # (\CPU|PC1|dataOUT\(1) & (\CPU|PC1|dataOUT\(2) & !\CPU|PC1|dataOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100000000000000000000000000000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC1|ALT_INV_dataOUT\(0),
	datab => \CPU|PC1|ALT_INV_dataOUT\(1),
	datac => \CPU|PC1|ALT_INV_dataOUT\(2),
	datad => \CPU|PC1|ALT_INV_dataOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ANDLEDR~0_combout\);

\ANDLEDR~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDLEDR~1_combout\ = (\ROM1|memROM~1_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~11_combout\ & !\ROM1|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ANDLEDR~1_combout\);

\ANDLED8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDLED8~0_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ANDLED8~0_combout\);

\REGLED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLED8|DOUT~0_combout\ = ( \ANDLEDR~1_combout\ & ( \ANDLED8~0_combout\ & ( (!\ROM1|memROM~8_combout\ & (\REGLED8|DOUT~q\)) # (\ROM1|memROM~8_combout\ & ((!\ANDLEDR~0_combout\ & ((\CPU|REG1|DOUT\(0)))) # (\ANDLEDR~0_combout\ & (\REGLED8|DOUT~q\)))) ) ) ) 
-- # ( !\ANDLEDR~1_combout\ & ( \ANDLED8~0_combout\ & ( \REGLED8|DOUT~q\ ) ) ) # ( \ANDLEDR~1_combout\ & ( !\ANDLED8~0_combout\ & ( \REGLED8|DOUT~q\ ) ) ) # ( !\ANDLEDR~1_combout\ & ( !\ANDLED8~0_combout\ & ( \REGLED8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010100011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGLED8|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU|REG1|ALT_INV_DOUT\(0),
	datad => \ALT_INV_ANDLEDR~0_combout\,
	datae => \ALT_INV_ANDLEDR~1_combout\,
	dataf => \ALT_INV_ANDLED8~0_combout\,
	combout => \REGLED8|DOUT~0_combout\);

\REGLED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGLED8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED8|DOUT~q\);

\ANDLEDR~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ANDLEDR~2_combout\ = (\ROM1|memROM~2_combout\ & (\ROM1|memROM~8_combout\ & (!\ANDLEDR~0_combout\ & \ANDLEDR~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ALT_INV_ANDLEDR~0_combout\,
	datad => \ALT_INV_ANDLEDR~1_combout\,
	combout => \ANDLEDR~2_combout\);

\REGLED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGLED9|DOUT~0_combout\ = (!\ROM1|memROM~4_combout\ & (\REGLED9|DOUT~q\)) # (\ROM1|memROM~4_combout\ & ((!\ANDLEDR~2_combout\ & (\REGLED9|DOUT~q\)) # (\ANDLEDR~2_combout\ & ((\CPU|REG1|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000111010101010100011101010101010001110101010101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGLED9|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \CPU|REG1|ALT_INV_DOUT\(0),
	datad => \ALT_INV_ANDLEDR~2_combout\,
	combout => \REGLED9|DOUT~0_combout\);

\REGLED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGLED9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGLED9|DOUT~q\);

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

ww_saida_INST(0) <= \saida_INST[0]~output_o\;

ww_saida_INST(1) <= \saida_INST[1]~output_o\;

ww_saida_INST(2) <= \saida_INST[2]~output_o\;

ww_saida_INST(3) <= \saida_INST[3]~output_o\;

ww_saida_INST(4) <= \saida_INST[4]~output_o\;

ww_saida_INST(5) <= \saida_INST[5]~output_o\;

ww_saida_INST(6) <= \saida_INST[6]~output_o\;

ww_saida_INST(7) <= \saida_INST[7]~output_o\;

ww_saida_INST(8) <= \saida_INST[8]~output_o\;

ww_saida_INST(9) <= \saida_INST[9]~output_o\;

ww_saida_INST(10) <= \saida_INST[10]~output_o\;

ww_saida_INST(11) <= \saida_INST[11]~output_o\;

ww_saida_INST(12) <= \saida_INST[12]~output_o\;

ww_saida_RAM(0) <= \saida_RAM[0]~output_o\;

ww_saida_RAM(1) <= \saida_RAM[1]~output_o\;

ww_saida_RAM(2) <= \saida_RAM[2]~output_o\;

ww_saida_RAM(3) <= \saida_RAM[3]~output_o\;

ww_saida_RAM(4) <= \saida_RAM[4]~output_o\;

ww_saida_RAM(5) <= \saida_RAM[5]~output_o\;

ww_saida_RAM(6) <= \saida_RAM[6]~output_o\;

ww_saida_RAM(7) <= \saida_RAM[7]~output_o\;

ww_DEBUG_Data_OUT(0) <= \DEBUG_Data_OUT[0]~output_o\;

ww_DEBUG_Data_OUT(1) <= \DEBUG_Data_OUT[1]~output_o\;

ww_DEBUG_Data_OUT(2) <= \DEBUG_Data_OUT[2]~output_o\;

ww_DEBUG_Data_OUT(3) <= \DEBUG_Data_OUT[3]~output_o\;

ww_DEBUG_Data_OUT(4) <= \DEBUG_Data_OUT[4]~output_o\;

ww_DEBUG_Data_OUT(5) <= \DEBUG_Data_OUT[5]~output_o\;

ww_DEBUG_Data_OUT(6) <= \DEBUG_Data_OUT[6]~output_o\;

ww_DEBUG_Data_OUT(7) <= \DEBUG_Data_OUT[7]~output_o\;

ww_DEBUG_Data_IN(0) <= \DEBUG_Data_IN[0]~output_o\;

ww_DEBUG_Data_IN(1) <= \DEBUG_Data_IN[1]~output_o\;

ww_DEBUG_Data_IN(2) <= \DEBUG_Data_IN[2]~output_o\;

ww_DEBUG_Data_IN(3) <= \DEBUG_Data_IN[3]~output_o\;

ww_DEBUG_Data_IN(4) <= \DEBUG_Data_IN[4]~output_o\;

ww_DEBUG_Data_IN(5) <= \DEBUG_Data_IN[5]~output_o\;

ww_DEBUG_Data_IN(6) <= \DEBUG_Data_IN[6]~output_o\;

ww_DEBUG_Data_IN(7) <= \DEBUG_Data_IN[7]~output_o\;
END structure;


