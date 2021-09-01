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

-- DATE "09/01/2021 18:31:23"

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

ENTITY 	Aula2 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	DEBUG : OUT std_logic_vector(5 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	SAIDA_MUX : OUT std_logic_vector(7 DOWNTO 0);
	OUT_ULA : OUT std_logic_vector(7 DOWNTO 0);
	ENTRADA_MUX_0 : OUT std_logic_vector(7 DOWNTO 0);
	ENTRADA_MUX_1 : OUT std_logic_vector(7 DOWNTO 0);
	SELETOR_MUX : OUT std_logic;
	HABILITA : OUT std_logic
	);
END Aula2;

ARCHITECTURE structure OF Aula2 IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DEBUG : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_SAIDA_MUX : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OUT_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ENTRADA_MUX_0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ENTRADA_MUX_1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SELETOR_MUX : std_logic;
SIGNAL ww_HABILITA : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \ENTRADA_MUX_0[0]~output_o\ : std_logic;
SIGNAL \ENTRADA_MUX_0[1]~output_o\ : std_logic;
SIGNAL \ENTRADA_MUX_0[2]~output_o\ : std_logic;
SIGNAL \ENTRADA_MUX_0[3]~output_o\ : std_logic;
SIGNAL \ENTRADA_MUX_0[4]~output_o\ : std_logic;
SIGNAL \ENTRADA_MUX_0[5]~output_o\ : std_logic;
SIGNAL \ENTRADA_MUX_0[6]~output_o\ : std_logic;
SIGNAL \ENTRADA_MUX_0[7]~output_o\ : std_logic;
SIGNAL \DEBUG[0]~output_o\ : std_logic;
SIGNAL \DEBUG[1]~output_o\ : std_logic;
SIGNAL \DEBUG[2]~output_o\ : std_logic;
SIGNAL \DEBUG[3]~output_o\ : std_logic;
SIGNAL \DEBUG[4]~output_o\ : std_logic;
SIGNAL \DEBUG[5]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \SAIDA_MUX[0]~output_o\ : std_logic;
SIGNAL \SAIDA_MUX[1]~output_o\ : std_logic;
SIGNAL \SAIDA_MUX[2]~output_o\ : std_logic;
SIGNAL \SAIDA_MUX[3]~output_o\ : std_logic;
SIGNAL \SAIDA_MUX[4]~output_o\ : std_logic;
SIGNAL \SAIDA_MUX[5]~output_o\ : std_logic;
SIGNAL \SAIDA_MUX[6]~output_o\ : std_logic;
SIGNAL \SAIDA_MUX[7]~output_o\ : std_logic;
SIGNAL \OUT_ULA[0]~output_o\ : std_logic;
SIGNAL \OUT_ULA[1]~output_o\ : std_logic;
SIGNAL \OUT_ULA[2]~output_o\ : std_logic;
SIGNAL \OUT_ULA[3]~output_o\ : std_logic;
SIGNAL \OUT_ULA[4]~output_o\ : std_logic;
SIGNAL \OUT_ULA[5]~output_o\ : std_logic;
SIGNAL \OUT_ULA[6]~output_o\ : std_logic;
SIGNAL \OUT_ULA[7]~output_o\ : std_logic;
SIGNAL \ENTRADA_MUX_1[0]~output_o\ : std_logic;
SIGNAL \ENTRADA_MUX_1[1]~output_o\ : std_logic;
SIGNAL \ENTRADA_MUX_1[2]~output_o\ : std_logic;
SIGNAL \ENTRADA_MUX_1[3]~output_o\ : std_logic;
SIGNAL \ENTRADA_MUX_1[4]~output_o\ : std_logic;
SIGNAL \ENTRADA_MUX_1[5]~output_o\ : std_logic;
SIGNAL \ENTRADA_MUX_1[6]~output_o\ : std_logic;
SIGNAL \ENTRADA_MUX_1[7]~output_o\ : std_logic;
SIGNAL \SELETOR_MUX~output_o\ : std_logic;
SIGNAL \HABILITA~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \PC1|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \PC1|ULA1|Add0~2\ : std_logic;
SIGNAL \PC1|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \PC1|ULA1|Add0~6\ : std_logic;
SIGNAL \PC1|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \PC1|ULA1|Add0~10\ : std_logic;
SIGNAL \PC1|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \DECODER1|Equal3~1_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~7_combout\ : std_logic;
SIGNAL \DECODER1|Sinais_Controle[3]~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \DECODER1|Sinais_Controle[3]~1_combout\ : std_logic;
SIGNAL \DECODER1|Sinais_Controle[1]~0_combout\ : std_logic;
SIGNAL \DECODER1|Equal3~2_combout\ : std_logic;
SIGNAL \DECODER1|Equal3~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~156_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~17_q\ : std_logic;
SIGNAL \REGDADOS1|ram~157_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~25_q\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~145_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~158_combout\ : std_logic;
SIGNAL \REGDADOS1|dado_out~0_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \REGDADOS1|ram~18_q\ : std_logic;
SIGNAL \REGDADOS1|ram~26_q\ : std_logic;
SIGNAL \REGDADOS1|ram~146_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~159_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~6_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \REGDADOS1|ram~19_q\ : std_logic;
SIGNAL \REGDADOS1|ram~27_q\ : std_logic;
SIGNAL \REGDADOS1|ram~147_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~160_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \REGDADOS1|ram~20_q\ : std_logic;
SIGNAL \REGDADOS1|ram~28_q\ : std_logic;
SIGNAL \REGDADOS1|ram~148_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~161_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \REGDADOS1|ram~21_q\ : std_logic;
SIGNAL \REGDADOS1|ram~29_q\ : std_logic;
SIGNAL \REGDADOS1|ram~149_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~162_combout\ : std_logic;
SIGNAL \REGDADOS1|dado_out[5]~9_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~30_q\ : std_logic;
SIGNAL \REGDADOS1|ram~22_q\ : std_logic;
SIGNAL \REGDADOS1|ram~150_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~151_combout\ : std_logic;
SIGNAL \REGDADOS1|dado_out[6]~10_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~4_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~23_q\ : std_logic;
SIGNAL \REGDADOS1|ram~31_q\ : std_logic;
SIGNAL \REGDADOS1|ram~152_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~163_combout\ : std_logic;
SIGNAL \REGDADOS1|dado_out[7]~11_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~5_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~32_q\ : std_logic;
SIGNAL \REGDADOS1|ram~153_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~24_q\ : std_logic;
SIGNAL \REGDADOS1|ram~154_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~155_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC1|dataOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \DECODER1|Sinais_Controle\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DECODER1|ALT_INV_Sinais_Controle[1]~0_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC1|ALT_INV_dataOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~7_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~6_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_dado_out[7]~11_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_dado_out[6]~10_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_dado_out[5]~9_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Sinais_Controle[3]~2_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[7]~5_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[6]~4_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Sinais_Controle[3]~1_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal3~1_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
DEBUG <= ww_DEBUG;
LEDR <= ww_LEDR;
SAIDA_MUX <= ww_SAIDA_MUX;
OUT_ULA <= ww_OUT_ULA;
ENTRADA_MUX_0 <= ww_ENTRADA_MUX_0;
ENTRADA_MUX_1 <= ww_ENTRADA_MUX_1;
SELETOR_MUX <= ww_SELETOR_MUX;
HABILITA <= ww_HABILITA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\DECODER1|ALT_INV_Sinais_Controle[1]~0_combout\ <= NOT \DECODER1|Sinais_Controle[1]~0_combout\;
\DECODER1|ALT_INV_Equal3~0_combout\ <= NOT \DECODER1|Equal3~0_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC1|ALT_INV_dataOUT\(3) <= NOT \PC1|dataOUT\(3);
\PC1|ALT_INV_dataOUT\(2) <= NOT \PC1|dataOUT\(2);
\PC1|ALT_INV_dataOUT\(1) <= NOT \PC1|dataOUT\(1);
\PC1|ALT_INV_dataOUT\(0) <= NOT \PC1|dataOUT\(0);
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\REG1|ALT_INV_DOUT\(7) <= NOT \REG1|DOUT\(7);
\REG1|ALT_INV_DOUT\(6) <= NOT \REG1|DOUT\(6);
\REG1|ALT_INV_DOUT\(5) <= NOT \REG1|DOUT\(5);
\REG1|ALT_INV_DOUT\(4) <= NOT \REG1|DOUT\(4);
\REG1|ALT_INV_DOUT\(3) <= NOT \REG1|DOUT\(3);
\REG1|ALT_INV_DOUT\(2) <= NOT \REG1|DOUT\(2);
\REG1|ALT_INV_DOUT\(1) <= NOT \REG1|DOUT\(1);
\REG1|ALT_INV_DOUT\(0) <= NOT \REG1|DOUT\(0);
\MUX1|ALT_INV_saida_MUX[0]~7_combout\ <= NOT \MUX1|saida_MUX[0]~7_combout\;
\MUX1|ALT_INV_saida_MUX[2]~6_combout\ <= NOT \MUX1|saida_MUX[2]~6_combout\;
\REGDADOS1|ALT_INV_dado_out[7]~11_combout\ <= NOT \REGDADOS1|dado_out[7]~11_combout\;
\REGDADOS1|ALT_INV_dado_out[6]~10_combout\ <= NOT \REGDADOS1|dado_out[6]~10_combout\;
\REGDADOS1|ALT_INV_dado_out[5]~9_combout\ <= NOT \REGDADOS1|dado_out[5]~9_combout\;
\DECODER1|ALT_INV_Sinais_Controle[3]~2_combout\ <= NOT \DECODER1|Sinais_Controle[3]~2_combout\;
\MUX1|ALT_INV_saida_MUX[7]~5_combout\ <= NOT \MUX1|saida_MUX[7]~5_combout\;
\REGDADOS1|ALT_INV_ram~155_combout\ <= NOT \REGDADOS1|ram~155_combout\;
\REGDADOS1|ALT_INV_ram~154_combout\ <= NOT \REGDADOS1|ram~154_combout\;
\REGDADOS1|ALT_INV_ram~24_q\ <= NOT \REGDADOS1|ram~24_q\;
\REGDADOS1|ALT_INV_ram~153_combout\ <= NOT \REGDADOS1|ram~153_combout\;
\REGDADOS1|ALT_INV_ram~32_q\ <= NOT \REGDADOS1|ram~32_q\;
\MUX1|ALT_INV_saida_MUX[6]~4_combout\ <= NOT \MUX1|saida_MUX[6]~4_combout\;
\REGDADOS1|ALT_INV_ram~152_combout\ <= NOT \REGDADOS1|ram~152_combout\;
\REGDADOS1|ALT_INV_ram~31_q\ <= NOT \REGDADOS1|ram~31_q\;
\REGDADOS1|ALT_INV_ram~23_q\ <= NOT \REGDADOS1|ram~23_q\;
\MUX1|ALT_INV_saida_MUX[5]~3_combout\ <= NOT \MUX1|saida_MUX[5]~3_combout\;
\REGDADOS1|ALT_INV_ram~151_combout\ <= NOT \REGDADOS1|ram~151_combout\;
\REGDADOS1|ALT_INV_ram~150_combout\ <= NOT \REGDADOS1|ram~150_combout\;
\REGDADOS1|ALT_INV_ram~22_q\ <= NOT \REGDADOS1|ram~22_q\;
\REGDADOS1|ALT_INV_ram~30_q\ <= NOT \REGDADOS1|ram~30_q\;
\MUX1|ALT_INV_saida_MUX[4]~2_combout\ <= NOT \MUX1|saida_MUX[4]~2_combout\;
\REGDADOS1|ALT_INV_ram~149_combout\ <= NOT \REGDADOS1|ram~149_combout\;
\REGDADOS1|ALT_INV_ram~29_q\ <= NOT \REGDADOS1|ram~29_q\;
\REGDADOS1|ALT_INV_ram~21_q\ <= NOT \REGDADOS1|ram~21_q\;
\MUX1|ALT_INV_saida_MUX[3]~1_combout\ <= NOT \MUX1|saida_MUX[3]~1_combout\;
\REGDADOS1|ALT_INV_ram~148_combout\ <= NOT \REGDADOS1|ram~148_combout\;
\REGDADOS1|ALT_INV_ram~28_q\ <= NOT \REGDADOS1|ram~28_q\;
\REGDADOS1|ALT_INV_ram~20_q\ <= NOT \REGDADOS1|ram~20_q\;
\REGDADOS1|ALT_INV_ram~147_combout\ <= NOT \REGDADOS1|ram~147_combout\;
\REGDADOS1|ALT_INV_ram~27_q\ <= NOT \REGDADOS1|ram~27_q\;
\REGDADOS1|ALT_INV_ram~19_q\ <= NOT \REGDADOS1|ram~19_q\;
\MUX1|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \MUX1|saida_MUX[1]~0_combout\;
\REGDADOS1|ALT_INV_ram~146_combout\ <= NOT \REGDADOS1|ram~146_combout\;
\REGDADOS1|ALT_INV_ram~26_q\ <= NOT \REGDADOS1|ram~26_q\;
\REGDADOS1|ALT_INV_ram~18_q\ <= NOT \REGDADOS1|ram~18_q\;
\REGDADOS1|ALT_INV_ram~145_combout\ <= NOT \REGDADOS1|ram~145_combout\;
\REGDADOS1|ALT_INV_ram~25_q\ <= NOT \REGDADOS1|ram~25_q\;
\REGDADOS1|ALT_INV_ram~17_q\ <= NOT \REGDADOS1|ram~17_q\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\REGDADOS1|ALT_INV_dado_out~0_combout\ <= NOT \REGDADOS1|dado_out~0_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\DECODER1|ALT_INV_Equal3~2_combout\ <= NOT \DECODER1|Equal3~2_combout\;
\DECODER1|ALT_INV_Sinais_Controle[3]~1_combout\ <= NOT \DECODER1|Sinais_Controle[3]~1_combout\;
\DECODER1|ALT_INV_Equal3~1_combout\ <= NOT \DECODER1|Equal3~1_combout\;

\ENTRADA_MUX_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGDADOS1|ram~158_combout\,
	oe => \REGDADOS1|dado_out~0_combout\,
	devoe => ww_devoe,
	o => \ENTRADA_MUX_0[0]~output_o\);

\ENTRADA_MUX_0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGDADOS1|ram~159_combout\,
	oe => \REGDADOS1|dado_out~0_combout\,
	devoe => ww_devoe,
	o => \ENTRADA_MUX_0[1]~output_o\);

\ENTRADA_MUX_0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGDADOS1|ram~160_combout\,
	oe => \REGDADOS1|dado_out~0_combout\,
	devoe => ww_devoe,
	o => \ENTRADA_MUX_0[2]~output_o\);

\ENTRADA_MUX_0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGDADOS1|ram~161_combout\,
	oe => \REGDADOS1|dado_out~0_combout\,
	devoe => ww_devoe,
	o => \ENTRADA_MUX_0[3]~output_o\);

\ENTRADA_MUX_0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGDADOS1|ram~162_combout\,
	oe => \REGDADOS1|dado_out~0_combout\,
	devoe => ww_devoe,
	o => \ENTRADA_MUX_0[4]~output_o\);

\ENTRADA_MUX_0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGDADOS1|ram~151_combout\,
	oe => \REGDADOS1|dado_out~0_combout\,
	devoe => ww_devoe,
	o => \ENTRADA_MUX_0[5]~output_o\);

\ENTRADA_MUX_0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGDADOS1|ram~163_combout\,
	oe => \REGDADOS1|dado_out~0_combout\,
	devoe => ww_devoe,
	o => \ENTRADA_MUX_0[6]~output_o\);

\ENTRADA_MUX_0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGDADOS1|ram~155_combout\,
	oe => \REGDADOS1|dado_out~0_combout\,
	devoe => ww_devoe,
	o => \ENTRADA_MUX_0[7]~output_o\);

\DEBUG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \DEBUG[0]~output_o\);

\DEBUG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|ALT_INV_Sinais_Controle[1]~0_combout\,
	devoe => ww_devoe,
	o => \DEBUG[1]~output_o\);

\DEBUG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \DEBUG[2]~output_o\);

\DEBUG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Sinais_Controle[3]~1_combout\,
	devoe => ww_devoe,
	o => \DEBUG[3]~output_o\);

\DEBUG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Sinais_Controle\(4),
	devoe => ww_devoe,
	o => \DEBUG[4]~output_o\);

\DEBUG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \DEBUG[5]~output_o\);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(0),
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
	i => \REG1|DOUT\(1),
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
	i => \REG1|DOUT\(2),
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
	i => \REG1|DOUT\(3),
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
	i => \REG1|DOUT\(4),
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
	i => \REG1|DOUT\(5),
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
	i => \REG1|DOUT\(6),
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
	i => \REG1|DOUT\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\SAIDA_MUX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[0]~7_combout\,
	devoe => ww_devoe,
	o => \SAIDA_MUX[0]~output_o\);

\SAIDA_MUX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[1]~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA_MUX[1]~output_o\);

\SAIDA_MUX[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[2]~6_combout\,
	devoe => ww_devoe,
	o => \SAIDA_MUX[2]~output_o\);

\SAIDA_MUX[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[3]~1_combout\,
	devoe => ww_devoe,
	o => \SAIDA_MUX[3]~output_o\);

\SAIDA_MUX[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[4]~2_combout\,
	devoe => ww_devoe,
	o => \SAIDA_MUX[4]~output_o\);

\SAIDA_MUX[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[5]~3_combout\,
	devoe => ww_devoe,
	o => \SAIDA_MUX[5]~output_o\);

\SAIDA_MUX[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[6]~4_combout\,
	devoe => ww_devoe,
	o => \SAIDA_MUX[6]~output_o\);

\SAIDA_MUX[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[7]~5_combout\,
	devoe => ww_devoe,
	o => \SAIDA_MUX[7]~output_o\);

\OUT_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[0]~output_o\);

\OUT_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[1]~output_o\);

\OUT_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[2]~2_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[2]~output_o\);

\OUT_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[3]~output_o\);

\OUT_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[4]~4_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[4]~output_o\);

\OUT_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[5]~5_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[5]~output_o\);

\OUT_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[6]~6_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[6]~output_o\);

\OUT_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[7]~7_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[7]~output_o\);

\ENTRADA_MUX_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~3_combout\,
	devoe => ww_devoe,
	o => \ENTRADA_MUX_1[0]~output_o\);

\ENTRADA_MUX_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~4_combout\,
	devoe => ww_devoe,
	o => \ENTRADA_MUX_1[1]~output_o\);

\ENTRADA_MUX_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~5_combout\,
	devoe => ww_devoe,
	o => \ENTRADA_MUX_1[2]~output_o\);

\ENTRADA_MUX_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~4_combout\,
	devoe => ww_devoe,
	o => \ENTRADA_MUX_1[3]~output_o\);

\ENTRADA_MUX_1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENTRADA_MUX_1[4]~output_o\);

\ENTRADA_MUX_1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENTRADA_MUX_1[5]~output_o\);

\ENTRADA_MUX_1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENTRADA_MUX_1[6]~output_o\);

\ENTRADA_MUX_1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENTRADA_MUX_1[7]~output_o\);

\SELETOR_MUX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \SELETOR_MUX~output_o\);

\HABILITA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC1|ALT_INV_dataOUT\(3),
	devoe => ww_devoe,
	o => \HABILITA~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\PC1|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC1|ULA1|Add0~1_sumout\ = SUM(( \PC1|dataOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \PC1|ULA1|Add0~2\ = CARRY(( \PC1|dataOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1|ALT_INV_dataOUT\(0),
	cin => GND,
	sumout => \PC1|ULA1|Add0~1_sumout\,
	cout => \PC1|ULA1|Add0~2\);

\PC1|dataOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC1|ULA1|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(0));

\PC1|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC1|ULA1|Add0~5_sumout\ = SUM(( \PC1|dataOUT\(1) ) + ( GND ) + ( \PC1|ULA1|Add0~2\ ))
-- \PC1|ULA1|Add0~6\ = CARRY(( \PC1|dataOUT\(1) ) + ( GND ) + ( \PC1|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1|ALT_INV_dataOUT\(1),
	cin => \PC1|ULA1|Add0~2\,
	sumout => \PC1|ULA1|Add0~5_sumout\,
	cout => \PC1|ULA1|Add0~6\);

\PC1|dataOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC1|ULA1|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(1));

\PC1|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC1|ULA1|Add0~9_sumout\ = SUM(( \PC1|dataOUT\(2) ) + ( GND ) + ( \PC1|ULA1|Add0~6\ ))
-- \PC1|ULA1|Add0~10\ = CARRY(( \PC1|dataOUT\(2) ) + ( GND ) + ( \PC1|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1|ALT_INV_dataOUT\(2),
	cin => \PC1|ULA1|Add0~6\,
	sumout => \PC1|ULA1|Add0~9_sumout\,
	cout => \PC1|ULA1|Add0~10\);

\PC1|dataOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC1|ULA1|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(2));

\PC1|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC1|ULA1|Add0~13_sumout\ = SUM(( \PC1|dataOUT\(3) ) + ( GND ) + ( \PC1|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1|ALT_INV_dataOUT\(3),
	cin => \PC1|ULA1|Add0~10\,
	sumout => \PC1|ULA1|Add0~13_sumout\);

\PC1|dataOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC1|ULA1|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(3));

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (\PC1|dataOUT\(0) & (\PC1|dataOUT\(1) & (!\PC1|dataOUT\(2) & !\PC1|dataOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\PC1|dataOUT\(3) & ((!\PC1|dataOUT\(0) & (!\PC1|dataOUT\(1) $ (!\PC1|dataOUT\(2)))) # (\PC1|dataOUT\(0) & (\PC1|dataOUT\(1) & \PC1|dataOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100000000001010010000000000101001000000000010100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (\PC1|dataOUT\(2) & (!\PC1|dataOUT\(3) & ((\PC1|dataOUT\(1)) # (\PC1|dataOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000000001110000000000000111000000000000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\PC1|dataOUT\(3) & (!\PC1|dataOUT\(2) $ (((!\PC1|dataOUT\(0) & !\PC1|dataOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000000000011110000000000001111000000000000111100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~2_combout\);

\DECODER1|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal3~1_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \DECODER1|Equal3~1_combout\);

\MUX1|saida_MUX[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~7_combout\ = ( \REGDADOS1|ram~145_combout\ & ( ((!\PC1|dataOUT\(0)) # (\PC1|dataOUT\(2))) # (\PC1|dataOUT\(3)) ) ) # ( !\REGDADOS1|ram~145_combout\ & ( ((!\PC1|dataOUT\(0) & ((!\PC1|dataOUT\(1)) # (!\PC1|dataOUT\(2))))) # 
-- (\PC1|dataOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101100110011111111110011111111111011001100111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(1),
	datab => \PC1|ALT_INV_dataOUT\(3),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(0),
	datae => \REGDADOS1|ALT_INV_ram~145_combout\,
	combout => \MUX1|saida_MUX[0]~7_combout\);

\DECODER1|Sinais_Controle[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Sinais_Controle[3]~2_combout\ = !\ROM1|memROM~0_combout\ $ (!\ROM1|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \DECODER1|Sinais_Controle[3]~2_combout\);

\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( (!\DECODER1|Equal3~1_combout\) # ((!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ $ (!\ROM1|memROM~0_combout\)))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010111011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal3~1_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\MUX1|saida_MUX[0]~7_combout\ $ (((\DECODER1|Equal3~1_combout\ & ((!\DECODER1|Sinais_Controle[3]~2_combout\) # (\ROM1|memROM~1_combout\))))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( !\MUX1|saida_MUX[0]~7_combout\ $ (((\DECODER1|Equal3~1_combout\ & ((!\DECODER1|Sinais_Controle[3]~2_combout\) # (\ROM1|memROM~1_combout\))))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal3~1_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[0]~7_combout\,
	datad => \DECODER1|ALT_INV_Sinais_Controle[3]~2_combout\,
	dataf => \REG1|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\DECODER1|Sinais_Controle[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Sinais_Controle[3]~1_combout\ = (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~0_combout\ $ (!\ROM1|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \DECODER1|Sinais_Controle[3]~1_combout\);

\DECODER1|Sinais_Controle[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Sinais_Controle[1]~0_combout\ = ((!\ROM1|memROM~0_combout\ & !\ROM1|memROM~1_combout\)) # (\ROM1|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111110001111100011111000111110001111100011111000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \DECODER1|Sinais_Controle[1]~0_combout\);

\DECODER1|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal3~2_combout\ = (\PC1|dataOUT\(0) & (!\PC1|dataOUT\(2) & !\PC1|dataOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(2),
	datac => \PC1|ALT_INV_dataOUT\(3),
	combout => \DECODER1|Equal3~2_combout\);

\DECODER1|Sinais_Controle[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Sinais_Controle\(4) = (!\DECODER1|Sinais_Controle[1]~0_combout\) # (\DECODER1|Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Sinais_Controle[1]~0_combout\,
	datab => \DECODER1|ALT_INV_Equal3~2_combout\,
	combout => \DECODER1|Sinais_Controle\(4));

\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \MUX1|saida_MUX[0]~7_combout\,
	sload => \DECODER1|Sinais_Controle[3]~1_combout\,
	ena => \DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

\DECODER1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal3~0_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & \ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \DECODER1|Equal3~0_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (\PC1|dataOUT\(1) & (!\PC1|dataOUT\(3) & (!\PC1|dataOUT\(0) $ (\PC1|dataOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100000000001000010000000000100001000000000010000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\REGDADOS1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~156_combout\ = ( !\DECODER1|Equal3~2_combout\ & ( (!\PC1|dataOUT\(3) & (\DECODER1|Equal3~0_combout\ & !\ROM1|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000000000000000001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC1|ALT_INV_dataOUT\(3),
	datac => \DECODER1|ALT_INV_Equal3~0_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \DECODER1|ALT_INV_Equal3~2_combout\,
	combout => \REGDADOS1|ram~156_combout\);

\REGDADOS1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \REGDADOS1|ram~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~17_q\);

\REGDADOS1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~157_combout\ = ( !\DECODER1|Equal3~2_combout\ & ( (!\PC1|dataOUT\(3) & (\DECODER1|Equal3~0_combout\ & \ROM1|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000000000000000000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC1|ALT_INV_dataOUT\(3),
	datac => \DECODER1|ALT_INV_Equal3~0_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \DECODER1|ALT_INV_Equal3~2_combout\,
	combout => \REGDADOS1|ram~157_combout\);

\REGDADOS1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \REGDADOS1|ram~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~25_q\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (\PC1|dataOUT\(0) & (!\PC1|dataOUT\(1) & (!\PC1|dataOUT\(2) & !\PC1|dataOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\REGDADOS1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~145_combout\ = ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~5_combout\ & ( \REGDADOS1|ram~25_q\ ) ) ) # ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~5_combout\ & ( \REGDADOS1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~17_q\,
	datab => \REGDADOS1|ALT_INV_ram~25_q\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \REGDADOS1|ram~145_combout\);

\REGDADOS1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~158_combout\ = (!\ROM1|memROM~4_combout\ & \REGDADOS1|ram~145_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \REGDADOS1|ALT_INV_ram~145_combout\,
	combout => \REGDADOS1|ram~158_combout\);

\REGDADOS1|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|dado_out~0_combout\ = (!\PC1|dataOUT\(3) & (\PC1|dataOUT\(2) & ((\PC1|dataOUT\(1)) # (\PC1|dataOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(3),
	datab => \PC1|ALT_INV_dataOUT\(0),
	datac => \PC1|ALT_INV_dataOUT\(1),
	datad => \PC1|ALT_INV_dataOUT\(2),
	combout => \REGDADOS1|dado_out~0_combout\);

\MUX1|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~0_combout\ = ( \REGDADOS1|ram~146_combout\ & ( (!\DECODER1|Equal3~2_combout\ & ((!\REGDADOS1|dado_out~0_combout\) # (!\ROM1|memROM~4_combout\))) # (\DECODER1|Equal3~2_combout\ & ((\ROM1|memROM~4_combout\))) ) ) # ( 
-- !\REGDADOS1|ram~146_combout\ & ( (!\DECODER1|Equal3~2_combout\ & (!\REGDADOS1|dado_out~0_combout\)) # (\DECODER1|Equal3~2_combout\ & ((\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101101011011010110110001101100011011010110110101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal3~2_combout\,
	datab => \REGDADOS1|ALT_INV_dado_out~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \REGDADOS1|ALT_INV_ram~146_combout\,
	combout => \MUX1|saida_MUX[1]~0_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\MUX1|saida_MUX[1]~0_combout\ $ (((\DECODER1|Equal3~1_combout\ & ((!\DECODER1|Sinais_Controle[3]~2_combout\) # (\ROM1|memROM~1_combout\))))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( !\MUX1|saida_MUX[1]~0_combout\ $ (((\DECODER1|Equal3~1_combout\ & ((!\DECODER1|Sinais_Controle[3]~2_combout\) # (\ROM1|memROM~1_combout\))))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal3~1_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	datad => \DECODER1|ALT_INV_Sinais_Controle[3]~2_combout\,
	dataf => \REG1|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \MUX1|saida_MUX[1]~0_combout\,
	sload => \DECODER1|Sinais_Controle[3]~1_combout\,
	ena => \DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

\REGDADOS1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \REGDADOS1|ram~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~18_q\);

\REGDADOS1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \REGDADOS1|ram~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~26_q\);

\REGDADOS1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~146_combout\ = ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~5_combout\ & ( \REGDADOS1|ram~26_q\ ) ) ) # ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~5_combout\ & ( \REGDADOS1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~18_q\,
	datab => \REGDADOS1|ALT_INV_ram~26_q\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \REGDADOS1|ram~146_combout\);

\REGDADOS1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~159_combout\ = (!\ROM1|memROM~4_combout\ & \REGDADOS1|ram~146_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \REGDADOS1|ALT_INV_ram~146_combout\,
	combout => \REGDADOS1|ram~159_combout\);

\MUX1|saida_MUX[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~6_combout\ = ( \PC1|dataOUT\(1) & ( ((!\PC1|dataOUT\(2) & (!\PC1|dataOUT\(0))) # (\PC1|dataOUT\(2) & ((\REGDADOS1|ram~147_combout\)))) # (\PC1|dataOUT\(3)) ) ) # ( !\PC1|dataOUT\(1) & ( ((!\PC1|dataOUT\(2)) # ((!\PC1|dataOUT\(0)) # 
-- (\REGDADOS1|ram~147_combout\))) # (\PC1|dataOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111110101011111011111111101111111111101010111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(3),
	datab => \PC1|ALT_INV_dataOUT\(2),
	datac => \PC1|ALT_INV_dataOUT\(0),
	datad => \REGDADOS1|ALT_INV_ram~147_combout\,
	datae => \PC1|ALT_INV_dataOUT\(1),
	combout => \MUX1|saida_MUX[2]~6_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\MUX1|saida_MUX[2]~6_combout\ $ (((\DECODER1|Equal3~1_combout\ & ((!\DECODER1|Sinais_Controle[3]~2_combout\) # (\ROM1|memROM~1_combout\))))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\MUX1|saida_MUX[2]~6_combout\ $ (((\DECODER1|Equal3~1_combout\ & ((!\DECODER1|Sinais_Controle[3]~2_combout\) # (\ROM1|memROM~1_combout\))))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal3~1_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[2]~6_combout\,
	datad => \DECODER1|ALT_INV_Sinais_Controle[3]~2_combout\,
	dataf => \REG1|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \MUX1|saida_MUX[2]~6_combout\,
	sload => \DECODER1|Sinais_Controle[3]~1_combout\,
	ena => \DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

\REGDADOS1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \REGDADOS1|ram~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~19_q\);

\REGDADOS1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \REGDADOS1|ram~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~27_q\);

\REGDADOS1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~147_combout\ = ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~5_combout\ & ( \REGDADOS1|ram~27_q\ ) ) ) # ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~5_combout\ & ( \REGDADOS1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~19_q\,
	datab => \REGDADOS1|ALT_INV_ram~27_q\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \REGDADOS1|ram~147_combout\);

\REGDADOS1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~160_combout\ = (!\ROM1|memROM~4_combout\ & \REGDADOS1|ram~147_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \REGDADOS1|ALT_INV_ram~147_combout\,
	combout => \REGDADOS1|ram~160_combout\);

\MUX1|saida_MUX[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~1_combout\ = ( \REGDADOS1|ram~148_combout\ & ( (!\DECODER1|Equal3~2_combout\ & ((!\REGDADOS1|dado_out~0_combout\) # (!\ROM1|memROM~4_combout\))) # (\DECODER1|Equal3~2_combout\ & ((\ROM1|memROM~4_combout\))) ) ) # ( 
-- !\REGDADOS1|ram~148_combout\ & ( (!\DECODER1|Equal3~2_combout\ & (!\REGDADOS1|dado_out~0_combout\)) # (\DECODER1|Equal3~2_combout\ & ((\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101101011011010110110001101100011011010110110101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal3~2_combout\,
	datab => \REGDADOS1|ALT_INV_dado_out~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \REGDADOS1|ALT_INV_ram~148_combout\,
	combout => \MUX1|saida_MUX[3]~1_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\MUX1|saida_MUX[3]~1_combout\ $ (((\DECODER1|Equal3~1_combout\ & ((!\DECODER1|Sinais_Controle[3]~2_combout\) # (\ROM1|memROM~1_combout\))))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( !\MUX1|saida_MUX[3]~1_combout\ $ (((\DECODER1|Equal3~1_combout\ & ((!\DECODER1|Sinais_Controle[3]~2_combout\) # (\ROM1|memROM~1_combout\))))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal3~1_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[3]~1_combout\,
	datad => \DECODER1|ALT_INV_Sinais_Controle[3]~2_combout\,
	dataf => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \MUX1|saida_MUX[3]~1_combout\,
	sload => \DECODER1|Sinais_Controle[3]~1_combout\,
	ena => \DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

\REGDADOS1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \REGDADOS1|ram~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~20_q\);

\REGDADOS1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \REGDADOS1|ram~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~28_q\);

\REGDADOS1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~148_combout\ = ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~5_combout\ & ( \REGDADOS1|ram~28_q\ ) ) ) # ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~5_combout\ & ( \REGDADOS1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~20_q\,
	datab => \REGDADOS1|ALT_INV_ram~28_q\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \REGDADOS1|ram~148_combout\);

\REGDADOS1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~161_combout\ = (!\ROM1|memROM~4_combout\ & \REGDADOS1|ram~148_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \REGDADOS1|ALT_INV_ram~148_combout\,
	combout => \REGDADOS1|ram~161_combout\);

\MUX1|saida_MUX[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~2_combout\ = ( \REGDADOS1|ram~149_combout\ & ( (!\DECODER1|Equal3~2_combout\ & ((!\REGDADOS1|dado_out~0_combout\) # (!\ROM1|memROM~4_combout\))) ) ) # ( !\REGDADOS1|ram~149_combout\ & ( (!\DECODER1|Equal3~2_combout\ & 
-- !\REGDADOS1|dado_out~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000101010001010100010001000100010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal3~2_combout\,
	datab => \REGDADOS1|ALT_INV_dado_out~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \REGDADOS1|ALT_INV_ram~149_combout\,
	combout => \MUX1|saida_MUX[4]~2_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( !\MUX1|saida_MUX[4]~2_combout\ $ (((\DECODER1|Equal3~1_combout\ & ((!\DECODER1|Sinais_Controle[3]~2_combout\) # (\ROM1|memROM~1_combout\))))) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( !\MUX1|saida_MUX[4]~2_combout\ $ (((\DECODER1|Equal3~1_combout\ & ((!\DECODER1|Sinais_Controle[3]~2_combout\) # (\ROM1|memROM~1_combout\))))) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal3~1_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[4]~2_combout\,
	datad => \DECODER1|ALT_INV_Sinais_Controle[3]~2_combout\,
	dataf => \REG1|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \MUX1|saida_MUX[4]~2_combout\,
	sload => \DECODER1|Sinais_Controle[3]~1_combout\,
	ena => \DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(4));

\REGDADOS1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \REGDADOS1|ram~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~21_q\);

\REGDADOS1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \REGDADOS1|ram~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~29_q\);

\REGDADOS1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~149_combout\ = ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~5_combout\ & ( \REGDADOS1|ram~29_q\ ) ) ) # ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~5_combout\ & ( \REGDADOS1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~21_q\,
	datab => \REGDADOS1|ALT_INV_ram~29_q\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \REGDADOS1|ram~149_combout\);

\REGDADOS1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~162_combout\ = (!\ROM1|memROM~4_combout\ & \REGDADOS1|ram~149_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \REGDADOS1|ALT_INV_ram~149_combout\,
	combout => \REGDADOS1|ram~162_combout\);

\REGDADOS1|dado_out[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|dado_out[5]~9_combout\ = (!\REGDADOS1|dado_out~0_combout\) # (\REGDADOS1|ram~151_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_dado_out~0_combout\,
	datab => \REGDADOS1|ALT_INV_ram~151_combout\,
	combout => \REGDADOS1|dado_out[5]~9_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( (!\DECODER1|Equal3~1_combout\ & (((!\REGDADOS1|dado_out[5]~9_combout\) # (\DECODER1|Equal3~2_combout\)))) # (\DECODER1|Equal3~1_combout\ & (!\DECODER1|Sinais_Controle[3]~1_combout\ $ (((!\REGDADOS1|dado_out[5]~9_combout\) # 
-- (\DECODER1|Equal3~2_combout\))))) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( (!\DECODER1|Equal3~1_combout\ & (((!\REGDADOS1|dado_out[5]~9_combout\) # (\DECODER1|Equal3~2_combout\)))) # (\DECODER1|Equal3~1_combout\ & (!\DECODER1|Sinais_Controle[3]~1_combout\ $ (((!\REGDADOS1|dado_out[5]~9_combout\) # 
-- (\DECODER1|Equal3~2_combout\))))) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011101101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal3~1_combout\,
	datab => \DECODER1|ALT_INV_Sinais_Controle[3]~1_combout\,
	datac => \DECODER1|ALT_INV_Equal3~2_combout\,
	datad => \REGDADOS1|ALT_INV_dado_out[5]~9_combout\,
	dataf => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\MUX1|saida_MUX[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~3_combout\ = (!\DECODER1|Equal3~2_combout\ & ((!\REGDADOS1|dado_out~0_combout\) # (\REGDADOS1|ram~151_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal3~2_combout\,
	datab => \REGDADOS1|ALT_INV_dado_out~0_combout\,
	datac => \REGDADOS1|ALT_INV_ram~151_combout\,
	combout => \MUX1|saida_MUX[5]~3_combout\);

\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \MUX1|saida_MUX[5]~3_combout\,
	sload => \DECODER1|Sinais_Controle[3]~1_combout\,
	ena => \DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

\REGDADOS1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \REGDADOS1|ram~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~30_q\);

\REGDADOS1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \REGDADOS1|ram~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~22_q\);

\REGDADOS1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~150_combout\ = ( \PC1|dataOUT\(2) & ( \PC1|dataOUT\(3) & ( \REGDADOS1|ram~22_q\ ) ) ) # ( !\PC1|dataOUT\(2) & ( \PC1|dataOUT\(3) & ( \REGDADOS1|ram~22_q\ ) ) ) # ( \PC1|dataOUT\(2) & ( !\PC1|dataOUT\(3) & ( (!\PC1|dataOUT\(0) & 
-- (((\REGDADOS1|ram~22_q\)))) # (\PC1|dataOUT\(0) & ((!\PC1|dataOUT\(1) & ((\REGDADOS1|ram~22_q\))) # (\PC1|dataOUT\(1) & (\REGDADOS1|ram~30_q\)))) ) ) ) # ( !\PC1|dataOUT\(2) & ( !\PC1|dataOUT\(3) & ( (!\PC1|dataOUT\(0) & ((!\PC1|dataOUT\(1) & 
-- ((\REGDADOS1|ram~22_q\))) # (\PC1|dataOUT\(1) & (\REGDADOS1|ram~30_q\)))) # (\PC1|dataOUT\(0) & (((\REGDADOS1|ram~22_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010011001100110011010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~30_q\,
	datab => \REGDADOS1|ALT_INV_ram~22_q\,
	datac => \PC1|ALT_INV_dataOUT\(0),
	datad => \PC1|ALT_INV_dataOUT\(1),
	datae => \PC1|ALT_INV_dataOUT\(2),
	dataf => \PC1|ALT_INV_dataOUT\(3),
	combout => \REGDADOS1|ram~150_combout\);

\REGDADOS1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~151_combout\ = (!\DECODER1|Equal3~2_combout\ & \REGDADOS1|ram~150_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal3~2_combout\,
	datac => \REGDADOS1|ALT_INV_ram~150_combout\,
	combout => \REGDADOS1|ram~151_combout\);

\REGDADOS1|dado_out[6]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|dado_out[6]~10_combout\ = (!\REGDADOS1|dado_out~0_combout\) # ((!\ROM1|memROM~4_combout\ & \REGDADOS1|ram~152_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011101110101010101110111010101010111011101010101011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_dado_out~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \REGDADOS1|ALT_INV_ram~152_combout\,
	combout => \REGDADOS1|dado_out[6]~10_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( (!\DECODER1|Equal3~1_combout\ & (((!\REGDADOS1|dado_out[6]~10_combout\) # (\DECODER1|Equal3~2_combout\)))) # (\DECODER1|Equal3~1_combout\ & (!\DECODER1|Sinais_Controle[3]~1_combout\ $ (((!\REGDADOS1|dado_out[6]~10_combout\) # 
-- (\DECODER1|Equal3~2_combout\))))) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( (!\DECODER1|Equal3~1_combout\ & (((!\REGDADOS1|dado_out[6]~10_combout\) # (\DECODER1|Equal3~2_combout\)))) # (\DECODER1|Equal3~1_combout\ & (!\DECODER1|Sinais_Controle[3]~1_combout\ $ (((!\REGDADOS1|dado_out[6]~10_combout\) # 
-- (\DECODER1|Equal3~2_combout\))))) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011101101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal3~1_combout\,
	datab => \DECODER1|ALT_INV_Sinais_Controle[3]~1_combout\,
	datac => \DECODER1|ALT_INV_Equal3~2_combout\,
	datad => \REGDADOS1|ALT_INV_dado_out[6]~10_combout\,
	dataf => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\MUX1|saida_MUX[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~4_combout\ = ( \REGDADOS1|ram~152_combout\ & ( (!\DECODER1|Equal3~2_combout\ & ((!\REGDADOS1|dado_out~0_combout\) # (!\ROM1|memROM~4_combout\))) ) ) # ( !\REGDADOS1|ram~152_combout\ & ( (!\DECODER1|Equal3~2_combout\ & 
-- !\REGDADOS1|dado_out~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000101010001010100010001000100010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal3~2_combout\,
	datab => \REGDADOS1|ALT_INV_dado_out~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \REGDADOS1|ALT_INV_ram~152_combout\,
	combout => \MUX1|saida_MUX[6]~4_combout\);

\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \MUX1|saida_MUX[6]~4_combout\,
	sload => \DECODER1|Sinais_Controle[3]~1_combout\,
	ena => \DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(6));

\REGDADOS1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \REGDADOS1|ram~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~23_q\);

\REGDADOS1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \REGDADOS1|ram~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~31_q\);

\REGDADOS1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~152_combout\ = ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~3_combout\ & ( \REGDADOS1|ram~31_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~3_combout\ & ( \REGDADOS1|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~23_q\,
	datac => \REGDADOS1|ALT_INV_ram~31_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \REGDADOS1|ram~152_combout\);

\REGDADOS1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~163_combout\ = (!\ROM1|memROM~4_combout\ & \REGDADOS1|ram~152_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \REGDADOS1|ALT_INV_ram~152_combout\,
	combout => \REGDADOS1|ram~163_combout\);

\REGDADOS1|dado_out[7]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|dado_out[7]~11_combout\ = (!\REGDADOS1|dado_out~0_combout\) # (\REGDADOS1|ram~155_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_dado_out~0_combout\,
	datab => \REGDADOS1|ALT_INV_ram~155_combout\,
	combout => \REGDADOS1|dado_out[7]~11_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( (!\DECODER1|Equal3~1_combout\ & (((!\REGDADOS1|dado_out[7]~11_combout\) # (\DECODER1|Equal3~2_combout\)))) # (\DECODER1|Equal3~1_combout\ & (!\DECODER1|Sinais_Controle[3]~1_combout\ $ (((!\REGDADOS1|dado_out[7]~11_combout\) # 
-- (\DECODER1|Equal3~2_combout\))))) ) + ( \REG1|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011101101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal3~1_combout\,
	datab => \DECODER1|ALT_INV_Sinais_Controle[3]~1_combout\,
	datac => \DECODER1|ALT_INV_Equal3~2_combout\,
	datad => \REGDADOS1|ALT_INV_dado_out[7]~11_combout\,
	dataf => \REG1|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

\MUX1|saida_MUX[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~5_combout\ = (!\DECODER1|Equal3~2_combout\ & ((!\REGDADOS1|dado_out~0_combout\) # (\REGDADOS1|ram~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal3~2_combout\,
	datab => \REGDADOS1|ALT_INV_dado_out~0_combout\,
	datac => \REGDADOS1|ALT_INV_ram~155_combout\,
	combout => \MUX1|saida_MUX[7]~5_combout\);

\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \MUX1|saida_MUX[7]~5_combout\,
	sload => \DECODER1|Sinais_Controle[3]~1_combout\,
	ena => \DECODER1|Sinais_Controle\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

\REGDADOS1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \REGDADOS1|ram~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~32_q\);

\REGDADOS1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~153_combout\ = ( \REGDADOS1|ram~32_q\ & ( (!\PC1|dataOUT\(0)) # (((\PC1|dataOUT\(3)) # (\PC1|dataOUT\(2))) # (\PC1|dataOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	dataf => \REGDADOS1|ALT_INV_ram~32_q\,
	combout => \REGDADOS1|ram~153_combout\);

\REGDADOS1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \REGDADOS1|ram~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~24_q\);

\REGDADOS1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~154_combout\ = ( \REGDADOS1|ram~24_q\ & ( (!\PC1|dataOUT\(0)) # (((\PC1|dataOUT\(3)) # (\PC1|dataOUT\(2))) # (\PC1|dataOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	dataf => \REGDADOS1|ALT_INV_ram~24_q\,
	combout => \REGDADOS1|ram~154_combout\);

\REGDADOS1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~155_combout\ = ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~3_combout\ & ( \REGDADOS1|ram~153_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~3_combout\ & ( \REGDADOS1|ram~154_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REGDADOS1|ALT_INV_ram~153_combout\,
	datad => \REGDADOS1|ALT_INV_ram~154_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \REGDADOS1|ram~155_combout\);

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = (!\DECODER1|Sinais_Controle[3]~1_combout\ & ((\ULA1|Add0~1_sumout\))) # (\DECODER1|Sinais_Controle[3]~1_combout\ & (\MUX1|saida_MUX[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Sinais_Controle[3]~1_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~7_combout\,
	datac => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[0]~0_combout\);

\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = (!\DECODER1|Sinais_Controle[3]~1_combout\ & ((\ULA1|Add0~5_sumout\))) # (\DECODER1|Sinais_Controle[3]~1_combout\ & (\MUX1|saida_MUX[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Sinais_Controle[3]~1_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	datac => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|saida[1]~1_combout\);

\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = (!\DECODER1|Sinais_Controle[3]~1_combout\ & ((\ULA1|Add0~9_sumout\))) # (\DECODER1|Sinais_Controle[3]~1_combout\ & (\MUX1|saida_MUX[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Sinais_Controle[3]~1_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[2]~6_combout\,
	datac => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[2]~2_combout\);

\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = (!\DECODER1|Sinais_Controle[3]~1_combout\ & ((\ULA1|Add0~13_sumout\))) # (\DECODER1|Sinais_Controle[3]~1_combout\ & (\MUX1|saida_MUX[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Sinais_Controle[3]~1_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[3]~1_combout\,
	datac => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = (!\DECODER1|Sinais_Controle[3]~1_combout\ & ((\ULA1|Add0~17_sumout\))) # (\DECODER1|Sinais_Controle[3]~1_combout\ & (\MUX1|saida_MUX[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Sinais_Controle[3]~1_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[4]~2_combout\,
	datac => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|saida[4]~4_combout\);

\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = (!\DECODER1|Sinais_Controle[3]~1_combout\ & ((\ULA1|Add0~21_sumout\))) # (\DECODER1|Sinais_Controle[3]~1_combout\ & (\MUX1|saida_MUX[5]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Sinais_Controle[3]~1_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[5]~3_combout\,
	datac => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = (!\DECODER1|Sinais_Controle[3]~1_combout\ & ((\ULA1|Add0~25_sumout\))) # (\DECODER1|Sinais_Controle[3]~1_combout\ & (\MUX1|saida_MUX[6]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Sinais_Controle[3]~1_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[6]~4_combout\,
	datac => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[6]~6_combout\);

\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = (!\DECODER1|Sinais_Controle[3]~1_combout\ & ((\ULA1|Add0~29_sumout\))) # (\DECODER1|Sinais_Controle[3]~1_combout\ & (\MUX1|saida_MUX[7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Sinais_Controle[3]~1_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[7]~5_combout\,
	datac => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

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

ww_DEBUG(0) <= \DEBUG[0]~output_o\;

ww_DEBUG(1) <= \DEBUG[1]~output_o\;

ww_DEBUG(2) <= \DEBUG[2]~output_o\;

ww_DEBUG(3) <= \DEBUG[3]~output_o\;

ww_DEBUG(4) <= \DEBUG[4]~output_o\;

ww_DEBUG(5) <= \DEBUG[5]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_SAIDA_MUX(0) <= \SAIDA_MUX[0]~output_o\;

ww_SAIDA_MUX(1) <= \SAIDA_MUX[1]~output_o\;

ww_SAIDA_MUX(2) <= \SAIDA_MUX[2]~output_o\;

ww_SAIDA_MUX(3) <= \SAIDA_MUX[3]~output_o\;

ww_SAIDA_MUX(4) <= \SAIDA_MUX[4]~output_o\;

ww_SAIDA_MUX(5) <= \SAIDA_MUX[5]~output_o\;

ww_SAIDA_MUX(6) <= \SAIDA_MUX[6]~output_o\;

ww_SAIDA_MUX(7) <= \SAIDA_MUX[7]~output_o\;

ww_OUT_ULA(0) <= \OUT_ULA[0]~output_o\;

ww_OUT_ULA(1) <= \OUT_ULA[1]~output_o\;

ww_OUT_ULA(2) <= \OUT_ULA[2]~output_o\;

ww_OUT_ULA(3) <= \OUT_ULA[3]~output_o\;

ww_OUT_ULA(4) <= \OUT_ULA[4]~output_o\;

ww_OUT_ULA(5) <= \OUT_ULA[5]~output_o\;

ww_OUT_ULA(6) <= \OUT_ULA[6]~output_o\;

ww_OUT_ULA(7) <= \OUT_ULA[7]~output_o\;

ww_ENTRADA_MUX_0(0) <= \ENTRADA_MUX_0[0]~output_o\;

ww_ENTRADA_MUX_0(1) <= \ENTRADA_MUX_0[1]~output_o\;

ww_ENTRADA_MUX_0(2) <= \ENTRADA_MUX_0[2]~output_o\;

ww_ENTRADA_MUX_0(3) <= \ENTRADA_MUX_0[3]~output_o\;

ww_ENTRADA_MUX_0(4) <= \ENTRADA_MUX_0[4]~output_o\;

ww_ENTRADA_MUX_0(5) <= \ENTRADA_MUX_0[5]~output_o\;

ww_ENTRADA_MUX_0(6) <= \ENTRADA_MUX_0[6]~output_o\;

ww_ENTRADA_MUX_0(7) <= \ENTRADA_MUX_0[7]~output_o\;

ww_ENTRADA_MUX_1(0) <= \ENTRADA_MUX_1[0]~output_o\;

ww_ENTRADA_MUX_1(1) <= \ENTRADA_MUX_1[1]~output_o\;

ww_ENTRADA_MUX_1(2) <= \ENTRADA_MUX_1[2]~output_o\;

ww_ENTRADA_MUX_1(3) <= \ENTRADA_MUX_1[3]~output_o\;

ww_ENTRADA_MUX_1(4) <= \ENTRADA_MUX_1[4]~output_o\;

ww_ENTRADA_MUX_1(5) <= \ENTRADA_MUX_1[5]~output_o\;

ww_ENTRADA_MUX_1(6) <= \ENTRADA_MUX_1[6]~output_o\;

ww_ENTRADA_MUX_1(7) <= \ENTRADA_MUX_1[7]~output_o\;

ww_SELETOR_MUX <= \SELETOR_MUX~output_o\;

ww_HABILITA <= \HABILITA~output_o\;
END structure;


