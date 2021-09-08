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

-- DATE "09/08/2021 14:14:37"

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
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	OUT_ULA : OUT std_logic_vector(7 DOWNTO 0);
	DEBUG_PC : OUT std_logic_vector(8 DOWNTO 0);
	INSTRUCAO : OUT std_logic_vector(12 DOWNTO 0);
	SAIDA_FLAG0 : OUT std_logic;
	SAIDA_FLAGULA : OUT std_logic;
	MUXJMP : OUT std_logic_vector(1 DOWNTO 0)
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
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_OUT_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DEBUG_PC : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_INSTRUCAO : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_SAIDA_FLAG0 : std_logic;
SIGNAL ww_SAIDA_FLAGULA : std_logic;
SIGNAL ww_MUXJMP : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
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
SIGNAL \OUT_ULA[0]~output_o\ : std_logic;
SIGNAL \OUT_ULA[1]~output_o\ : std_logic;
SIGNAL \OUT_ULA[2]~output_o\ : std_logic;
SIGNAL \OUT_ULA[3]~output_o\ : std_logic;
SIGNAL \OUT_ULA[4]~output_o\ : std_logic;
SIGNAL \OUT_ULA[5]~output_o\ : std_logic;
SIGNAL \OUT_ULA[6]~output_o\ : std_logic;
SIGNAL \OUT_ULA[7]~output_o\ : std_logic;
SIGNAL \DEBUG_PC[0]~output_o\ : std_logic;
SIGNAL \DEBUG_PC[1]~output_o\ : std_logic;
SIGNAL \DEBUG_PC[2]~output_o\ : std_logic;
SIGNAL \DEBUG_PC[3]~output_o\ : std_logic;
SIGNAL \DEBUG_PC[4]~output_o\ : std_logic;
SIGNAL \DEBUG_PC[5]~output_o\ : std_logic;
SIGNAL \DEBUG_PC[6]~output_o\ : std_logic;
SIGNAL \DEBUG_PC[7]~output_o\ : std_logic;
SIGNAL \DEBUG_PC[8]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[0]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[1]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[2]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[3]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[4]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[5]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[6]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[7]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[8]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[9]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[10]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[11]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[12]~output_o\ : std_logic;
SIGNAL \SAIDA_FLAG0~output_o\ : std_logic;
SIGNAL \SAIDA_FLAGULA~output_o\ : std_logic;
SIGNAL \MUXJMP[0]~output_o\ : std_logic;
SIGNAL \MUXJMP[1]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \REGDADOS1|process_0~0_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~161_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~17_q\ : std_logic;
SIGNAL \REGDADOS1|ram~145_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~146_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \DECODER1|Sinais_Controle[4]~1_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~18_q\ : std_logic;
SIGNAL \REGDADOS1|ram~147_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~148_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~19_q\ : std_logic;
SIGNAL \REGDADOS1|ram~149_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~150_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|Equal3~1_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~4_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~20_q\ : std_logic;
SIGNAL \REGDADOS1|ram~151_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~152_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~5_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~21_q\ : std_logic;
SIGNAL \REGDADOS1|ram~153_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~154_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~6_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~22_q\ : std_logic;
SIGNAL \REGDADOS1|ram~155_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~156_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~7_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~23_q\ : std_logic;
SIGNAL \REGDADOS1|ram~157_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~158_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|Equal3~3_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~8_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~24_q\ : std_logic;
SIGNAL \REGDADOS1|ram~159_combout\ : std_logic;
SIGNAL \REGDADOS1|ram~160_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \DECODER1|Equal7~0_combout\ : std_logic;
SIGNAL \REGIGUAL|DOUT~0_combout\ : std_logic;
SIGNAL \REGIGUAL|DOUT~q\ : std_logic;
SIGNAL \DESVIO|Sel[0]~1_combout\ : std_logic;
SIGNAL \DESVIO|Sel[1]~0_combout\ : std_logic;
SIGNAL \DECODER1|Equal7~1_combout\ : std_logic;
SIGNAL \DECODER1|Sinais_Controle[10]~0_combout\ : std_logic;
SIGNAL \PC1|dataOUT[3]~0_combout\ : std_logic;
SIGNAL \SOMPC|Add0~2\ : std_logic;
SIGNAL \SOMPC|Add0~6\ : std_logic;
SIGNAL \SOMPC|Add0~10\ : std_logic;
SIGNAL \SOMPC|Add0~13_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \SOMPC|Add0~9_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \SOMPC|Add0~5_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \SOMPC|Add0~1_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~1_combout\ : std_logic;
SIGNAL \SOMPC|Add0~14\ : std_logic;
SIGNAL \SOMPC|Add0~17_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \SOMPC|Add0~18\ : std_logic;
SIGNAL \SOMPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \SOMPC|Add0~22\ : std_logic;
SIGNAL \SOMPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \SOMPC|Add0~26\ : std_logic;
SIGNAL \SOMPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \SOMPC|Add0~30\ : std_logic;
SIGNAL \SOMPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ULA1|Equal3~0_combout\ : std_logic;
SIGNAL \ULA1|Equal3~2_combout\ : std_logic;
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC1|dataOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGRET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \DESVIO|ALT_INV_Sel[0]~1_combout\ : std_logic;
SIGNAL \DESVIO|ALT_INV_Sel[1]~0_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Sinais_Controle[10]~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \REGRET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 4);
SIGNAL \REGDADOS1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \PC1|ALT_INV_dataOUT[3]~0_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \REGIGUAL|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \PC1|ALT_INV_dataOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[3]~0_combout\ : std_logic;
SIGNAL \REGDADOS1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SOMPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \SOMPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \SOMPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \SOMPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \SOMPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \SOMPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \SOMPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \SOMPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \SOMPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
OUT_ULA <= ww_OUT_ULA;
DEBUG_PC <= ww_DEBUG_PC;
INSTRUCAO <= ww_INSTRUCAO;
SAIDA_FLAG0 <= ww_SAIDA_FLAG0;
SAIDA_FLAGULA <= ww_SAIDA_FLAGULA;
MUXJMP <= ww_MUXJMP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\DESVIO|ALT_INV_Sel[0]~1_combout\ <= NOT \DESVIO|Sel[0]~1_combout\;
\DESVIO|ALT_INV_Sel[1]~0_combout\ <= NOT \DESVIO|Sel[1]~0_combout\;
\DECODER1|ALT_INV_Sinais_Controle[10]~0_combout\ <= NOT \DECODER1|Sinais_Controle[10]~0_combout\;
\ULA1|ALT_INV_Equal3~3_combout\ <= NOT \ULA1|Equal3~3_combout\;
\REGRET|ALT_INV_DOUT\(8) <= NOT \REGRET|DOUT\(8);
\REGRET|ALT_INV_DOUT\(7) <= NOT \REGRET|DOUT\(7);
\REGRET|ALT_INV_DOUT\(6) <= NOT \REGRET|DOUT\(6);
\REGRET|ALT_INV_DOUT\(5) <= NOT \REGRET|DOUT\(5);
\REGRET|ALT_INV_DOUT\(4) <= NOT \REGRET|DOUT\(4);
\REGDADOS1|ALT_INV_ram~160_combout\ <= NOT \REGDADOS1|ram~160_combout\;
\REGDADOS1|ALT_INV_ram~159_combout\ <= NOT \REGDADOS1|ram~159_combout\;
\REGDADOS1|ALT_INV_ram~24_q\ <= NOT \REGDADOS1|ram~24_q\;
\REGDADOS1|ALT_INV_ram~158_combout\ <= NOT \REGDADOS1|ram~158_combout\;
\REGDADOS1|ALT_INV_ram~157_combout\ <= NOT \REGDADOS1|ram~157_combout\;
\REGDADOS1|ALT_INV_ram~23_q\ <= NOT \REGDADOS1|ram~23_q\;
\REGDADOS1|ALT_INV_ram~156_combout\ <= NOT \REGDADOS1|ram~156_combout\;
\REGDADOS1|ALT_INV_ram~155_combout\ <= NOT \REGDADOS1|ram~155_combout\;
\REGDADOS1|ALT_INV_ram~22_q\ <= NOT \REGDADOS1|ram~22_q\;
\REGDADOS1|ALT_INV_ram~154_combout\ <= NOT \REGDADOS1|ram~154_combout\;
\REGDADOS1|ALT_INV_ram~153_combout\ <= NOT \REGDADOS1|ram~153_combout\;
\REGDADOS1|ALT_INV_ram~21_q\ <= NOT \REGDADOS1|ram~21_q\;
\REGDADOS1|ALT_INV_ram~152_combout\ <= NOT \REGDADOS1|ram~152_combout\;
\REGDADOS1|ALT_INV_ram~151_combout\ <= NOT \REGDADOS1|ram~151_combout\;
\REGDADOS1|ALT_INV_ram~20_q\ <= NOT \REGDADOS1|ram~20_q\;
\REGDADOS1|ALT_INV_ram~150_combout\ <= NOT \REGDADOS1|ram~150_combout\;
\REGDADOS1|ALT_INV_ram~149_combout\ <= NOT \REGDADOS1|ram~149_combout\;
\REGDADOS1|ALT_INV_ram~19_q\ <= NOT \REGDADOS1|ram~19_q\;
\REGDADOS1|ALT_INV_ram~148_combout\ <= NOT \REGDADOS1|ram~148_combout\;
\REGDADOS1|ALT_INV_ram~147_combout\ <= NOT \REGDADOS1|ram~147_combout\;
\REGDADOS1|ALT_INV_ram~18_q\ <= NOT \REGDADOS1|ram~18_q\;
\REGDADOS1|ALT_INV_ram~146_combout\ <= NOT \REGDADOS1|ram~146_combout\;
\REGDADOS1|ALT_INV_ram~145_combout\ <= NOT \REGDADOS1|ram~145_combout\;
\REGDADOS1|ALT_INV_ram~17_q\ <= NOT \REGDADOS1|ram~17_q\;
\PC1|ALT_INV_dataOUT[3]~0_combout\ <= NOT \PC1|dataOUT[3]~0_combout\;
\DECODER1|ALT_INV_Equal7~1_combout\ <= NOT \DECODER1|Equal7~1_combout\;
\ULA1|ALT_INV_Equal3~1_combout\ <= NOT \ULA1|Equal3~1_combout\;
\ULA1|ALT_INV_Equal3~0_combout\ <= NOT \ULA1|Equal3~0_combout\;
\REGIGUAL|ALT_INV_DOUT~q\ <= NOT \REGIGUAL|DOUT~q\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\PC1|ALT_INV_dataOUT\(8) <= NOT \PC1|dataOUT\(8);
\PC1|ALT_INV_dataOUT\(7) <= NOT \PC1|dataOUT\(7);
\PC1|ALT_INV_dataOUT\(6) <= NOT \PC1|dataOUT\(6);
\PC1|ALT_INV_dataOUT\(5) <= NOT \PC1|dataOUT\(5);
\PC1|ALT_INV_dataOUT\(4) <= NOT \PC1|dataOUT\(4);
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\ULA1|ALT_INV_saida[3]~0_combout\ <= NOT \ULA1|saida[3]~0_combout\;
\REGDADOS1|ALT_INV_process_0~0_combout\ <= NOT \REGDADOS1|process_0~0_combout\;
\DECODER1|ALT_INV_Equal7~0_combout\ <= NOT \DECODER1|Equal7~0_combout\;
\PC1|ALT_INV_dataOUT\(3) <= NOT \PC1|dataOUT\(3);
\PC1|ALT_INV_dataOUT\(2) <= NOT \PC1|dataOUT\(2);
\PC1|ALT_INV_dataOUT\(1) <= NOT \PC1|dataOUT\(1);
\PC1|ALT_INV_dataOUT\(0) <= NOT \PC1|dataOUT\(0);
\REG1|ALT_INV_DOUT\(7) <= NOT \REG1|DOUT\(7);
\REG1|ALT_INV_DOUT\(6) <= NOT \REG1|DOUT\(6);
\REG1|ALT_INV_DOUT\(5) <= NOT \REG1|DOUT\(5);
\REG1|ALT_INV_DOUT\(4) <= NOT \REG1|DOUT\(4);
\REG1|ALT_INV_DOUT\(3) <= NOT \REG1|DOUT\(3);
\REG1|ALT_INV_DOUT\(2) <= NOT \REG1|DOUT\(2);
\REG1|ALT_INV_DOUT\(1) <= NOT \REG1|DOUT\(1);
\REG1|ALT_INV_DOUT\(0) <= NOT \REG1|DOUT\(0);
\SOMPC|ALT_INV_Add0~33_sumout\ <= NOT \SOMPC|Add0~33_sumout\;
\SOMPC|ALT_INV_Add0~29_sumout\ <= NOT \SOMPC|Add0~29_sumout\;
\SOMPC|ALT_INV_Add0~25_sumout\ <= NOT \SOMPC|Add0~25_sumout\;
\SOMPC|ALT_INV_Add0~21_sumout\ <= NOT \SOMPC|Add0~21_sumout\;
\SOMPC|ALT_INV_Add0~17_sumout\ <= NOT \SOMPC|Add0~17_sumout\;
\SOMPC|ALT_INV_Add0~13_sumout\ <= NOT \SOMPC|Add0~13_sumout\;
\SOMPC|ALT_INV_Add0~9_sumout\ <= NOT \SOMPC|Add0~9_sumout\;
\SOMPC|ALT_INV_Add0~5_sumout\ <= NOT \SOMPC|Add0~5_sumout\;
\SOMPC|ALT_INV_Add0~1_sumout\ <= NOT \SOMPC|Add0~1_sumout\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;

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

\OUT_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[0]~1_combout\,
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
	i => \ULA1|saida[1]~2_combout\,
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
	i => \ULA1|saida[2]~3_combout\,
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
	i => \ULA1|saida[3]~4_combout\,
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
	i => \ULA1|saida[4]~5_combout\,
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
	i => \ULA1|saida[5]~6_combout\,
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
	i => \ULA1|saida[6]~7_combout\,
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
	i => \ULA1|saida[7]~8_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[7]~output_o\);

\DEBUG_PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC1|dataOUT\(0),
	devoe => ww_devoe,
	o => \DEBUG_PC[0]~output_o\);

\DEBUG_PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC1|dataOUT\(1),
	devoe => ww_devoe,
	o => \DEBUG_PC[1]~output_o\);

\DEBUG_PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC1|dataOUT\(2),
	devoe => ww_devoe,
	o => \DEBUG_PC[2]~output_o\);

\DEBUG_PC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC1|dataOUT\(3),
	devoe => ww_devoe,
	o => \DEBUG_PC[3]~output_o\);

\DEBUG_PC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC1|dataOUT\(4),
	devoe => ww_devoe,
	o => \DEBUG_PC[4]~output_o\);

\DEBUG_PC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC1|dataOUT\(5),
	devoe => ww_devoe,
	o => \DEBUG_PC[5]~output_o\);

\DEBUG_PC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC1|dataOUT\(6),
	devoe => ww_devoe,
	o => \DEBUG_PC[6]~output_o\);

\DEBUG_PC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC1|dataOUT\(7),
	devoe => ww_devoe,
	o => \DEBUG_PC[7]~output_o\);

\DEBUG_PC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC1|dataOUT\(8),
	devoe => ww_devoe,
	o => \DEBUG_PC[8]~output_o\);

\INSTRUCAO[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[0]~output_o\);

\INSTRUCAO[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~1_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[1]~output_o\);

\INSTRUCAO[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~3_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[2]~output_o\);

\INSTRUCAO[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~2_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[3]~output_o\);

\INSTRUCAO[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCAO[4]~output_o\);

\INSTRUCAO[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCAO[5]~output_o\);

\INSTRUCAO[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCAO[6]~output_o\);

\INSTRUCAO[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCAO[7]~output_o\);

\INSTRUCAO[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~4_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[8]~output_o\);

\INSTRUCAO[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~5_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[9]~output_o\);

\INSTRUCAO[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~6_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[10]~output_o\);

\INSTRUCAO[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[11]~output_o\);

\INSTRUCAO[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~8_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[12]~output_o\);

\SAIDA_FLAG0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGIGUAL|DOUT~q\,
	devoe => ww_devoe,
	o => \SAIDA_FLAG0~output_o\);

\SAIDA_FLAGULA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \SAIDA_FLAGULA~output_o\);

\MUXJMP[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DESVIO|Sel[0]~1_combout\,
	devoe => ww_devoe,
	o => \MUXJMP[0]~output_o\);

\MUXJMP[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DESVIO|Sel[1]~0_combout\,
	devoe => ww_devoe,
	o => \MUXJMP[1]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\PC1|dataOUT\(2) & (\PC1|dataOUT\(3) & (!\PC1|dataOUT\(0) $ (\PC1|dataOUT\(1))))) # (\PC1|dataOUT\(2) & (!\PC1|dataOUT\(0) & (\PC1|dataOUT\(1) & !\PC1|dataOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010010000000000101001000000000010100100000000001010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~2_combout\);

\REGDADOS1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|process_0~0_combout\ = (!\PC1|dataOUT\(2) & !\PC1|dataOUT\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(2),
	datab => \PC1|ALT_INV_dataOUT\(3),
	combout => \REGDADOS1|process_0~0_combout\);

\REGDADOS1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~161_combout\ = (!\PC1|dataOUT\(3) & (!\PC1|dataOUT\(2) & (\PC1|dataOUT\(1) & !\PC1|dataOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(3),
	datab => \PC1|ALT_INV_dataOUT\(2),
	datac => \PC1|ALT_INV_dataOUT\(1),
	datad => \PC1|ALT_INV_dataOUT\(0),
	combout => \REGDADOS1|ram~161_combout\);

\REGDADOS1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \REGDADOS1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~17_q\);

\REGDADOS1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~145_combout\ = ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( \REGDADOS1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~17_q\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \REGDADOS1|ram~145_combout\);

\REGDADOS1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~146_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~3_combout\ & ( \REGDADOS1|ram~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~145_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \REGDADOS1|ram~146_combout\);

\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( (!\PC1|dataOUT\(0) & (((!\REGDADOS1|ram~146_combout\)))) # (\PC1|dataOUT\(0) & ((!\REGDADOS1|process_0~0_combout\ & ((!\REGDADOS1|ram~146_combout\))) # (\REGDADOS1|process_0~0_combout\ & (!\ROM1|memROM~0_combout\)))) ) + ( 
-- \REG1|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( (!\PC1|dataOUT\(0) & (((!\REGDADOS1|ram~146_combout\)))) # (\PC1|dataOUT\(0) & ((!\REGDADOS1|process_0~0_combout\ & ((!\REGDADOS1|ram~146_combout\))) # (\REGDADOS1|process_0~0_combout\ & (!\ROM1|memROM~0_combout\)))) ) + ( 
-- \REG1|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \REGDADOS1|ALT_INV_process_0~0_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \REGDADOS1|ALT_INV_ram~146_combout\,
	dataf => \REG1|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~2_combout\ = (!\ULA1|saida[3]~0_combout\ & ((\ULA1|Add0~5_sumout\))) # (\ULA1|saida[3]~0_combout\ & (\ROM1|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|saida[1]~2_combout\);

\DECODER1|Sinais_Controle[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Sinais_Controle[4]~1_combout\ = (!\PC1|dataOUT\(3) & (((!\PC1|dataOUT\(2) & \PC1|dataOUT\(0))))) # (\PC1|dataOUT\(3) & (\PC1|dataOUT\(2) & (!\PC1|dataOUT\(1) $ (!\PC1|dataOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000010000000011100001000000001110000100000000111000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(1),
	datab => \PC1|ALT_INV_dataOUT\(3),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(0),
	combout => \DECODER1|Sinais_Controle[4]~1_combout\);

\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[1]~2_combout\,
	ena => \DECODER1|Sinais_Controle[4]~1_combout\,
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
	ena => \REGDADOS1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~18_q\);

\REGDADOS1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~147_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( \REGDADOS1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~18_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \REGDADOS1|ram~147_combout\);

\REGDADOS1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~148_combout\ = ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~0_combout\ & ( \REGDADOS1|ram~147_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~147_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \REGDADOS1|ram~148_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( (!\PC1|dataOUT\(0) & (((!\REGDADOS1|ram~148_combout\)))) # (\PC1|dataOUT\(0) & ((!\REGDADOS1|process_0~0_combout\ & ((!\REGDADOS1|ram~148_combout\))) # (\REGDADOS1|process_0~0_combout\ & (!\ROM1|memROM~1_combout\)))) ) + ( 
-- \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( (!\PC1|dataOUT\(0) & (((!\REGDADOS1|ram~148_combout\)))) # (\PC1|dataOUT\(0) & ((!\REGDADOS1|process_0~0_combout\ & ((!\REGDADOS1|ram~148_combout\))) # (\REGDADOS1|process_0~0_combout\ & (!\ROM1|memROM~1_combout\)))) ) + ( 
-- \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \REGDADOS1|ALT_INV_process_0~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \REGDADOS1|ALT_INV_ram~148_combout\,
	dataf => \REG1|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~3_combout\ = (!\ULA1|saida[3]~0_combout\ & \ULA1|Add0~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[2]~3_combout\);

\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[2]~3_combout\,
	ena => \DECODER1|Sinais_Controle[4]~1_combout\,
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
	ena => \REGDADOS1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~19_q\);

\REGDADOS1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~149_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~0_combout\ & ( \REGDADOS1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~19_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \REGDADOS1|ram~149_combout\);

\REGDADOS1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~150_combout\ = ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~1_combout\ & ( \REGDADOS1|ram~149_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~149_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \REGDADOS1|ram~150_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( (!\REGDADOS1|ram~150_combout\) # ((\PC1|dataOUT\(0) & \REGDADOS1|process_0~0_combout\)) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( (!\REGDADOS1|ram~150_combout\) # ((\PC1|dataOUT\(0) & \REGDADOS1|process_0~0_combout\)) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \REGDADOS1|ALT_INV_process_0~0_combout\,
	datad => \REGDADOS1|ALT_INV_ram~150_combout\,
	dataf => \REG1|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\ULA1|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal3~1_combout\ = ( \ULA1|Add0~5_sumout\ & ( \ULA1|Add0~9_sumout\ & ( (\ULA1|saida[3]~0_combout\ & (!\ROM1|memROM~0_combout\ & !\ROM1|memROM~1_combout\)) ) ) ) # ( !\ULA1|Add0~5_sumout\ & ( \ULA1|Add0~9_sumout\ & ( (\ULA1|saida[3]~0_combout\ & 
-- (!\ROM1|memROM~0_combout\ & !\ROM1|memROM~1_combout\)) ) ) ) # ( \ULA1|Add0~5_sumout\ & ( !\ULA1|Add0~9_sumout\ & ( (\ULA1|saida[3]~0_combout\ & (!\ROM1|memROM~0_combout\ & !\ROM1|memROM~1_combout\)) ) ) ) # ( !\ULA1|Add0~5_sumout\ & ( 
-- !\ULA1|Add0~9_sumout\ & ( (!\ULA1|saida[3]~0_combout\ & (((!\ULA1|Add0~1_sumout\)))) # (\ULA1|saida[3]~0_combout\ & (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ULA1|ALT_INV_Add0~1_sumout\,
	datae => \ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|Equal3~1_combout\);

\ULA1|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~4_combout\ = (!\ULA1|saida[3]~0_combout\ & ((\ULA1|Add0~13_sumout\))) # (\ULA1|saida[3]~0_combout\ & (\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|saida[3]~4_combout\);

\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[3]~4_combout\,
	ena => \DECODER1|Sinais_Controle[4]~1_combout\,
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
	ena => \REGDADOS1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~20_q\);

\REGDADOS1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~151_combout\ = ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( \REGDADOS1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \REGDADOS1|ram~151_combout\);

\REGDADOS1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~152_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~3_combout\ & ( \REGDADOS1|ram~151_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~151_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \REGDADOS1|ram~152_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( (!\PC1|dataOUT\(0) & (((!\REGDADOS1|ram~152_combout\)))) # (\PC1|dataOUT\(0) & ((!\REGDADOS1|process_0~0_combout\ & ((!\REGDADOS1|ram~152_combout\))) # (\REGDADOS1|process_0~0_combout\ & (!\ROM1|memROM~2_combout\)))) ) + ( 
-- \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( (!\PC1|dataOUT\(0) & (((!\REGDADOS1|ram~152_combout\)))) # (\PC1|dataOUT\(0) & ((!\REGDADOS1|process_0~0_combout\ & ((!\REGDADOS1|ram~152_combout\))) # (\REGDADOS1|process_0~0_combout\ & (!\ROM1|memROM~2_combout\)))) ) + ( 
-- \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \REGDADOS1|ALT_INV_process_0~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \REGDADOS1|ALT_INV_ram~152_combout\,
	dataf => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\ULA1|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~5_combout\ = (!\ULA1|saida[3]~0_combout\ & \ULA1|Add0~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|saida[4]~5_combout\);

\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[4]~5_combout\,
	ena => \DECODER1|Sinais_Controle[4]~1_combout\,
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
	ena => \REGDADOS1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~21_q\);

\REGDADOS1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~153_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~3_combout\ & ( \REGDADOS1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~21_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \REGDADOS1|ram~153_combout\);

\REGDADOS1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~154_combout\ = ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( \REGDADOS1|ram~153_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~153_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \REGDADOS1|ram~154_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( (!\REGDADOS1|ram~154_combout\) # ((\PC1|dataOUT\(0) & \REGDADOS1|process_0~0_combout\)) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( (!\REGDADOS1|ram~154_combout\) # ((\PC1|dataOUT\(0) & \REGDADOS1|process_0~0_combout\)) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \REGDADOS1|ALT_INV_process_0~0_combout\,
	datad => \REGDADOS1|ALT_INV_ram~154_combout\,
	dataf => \REG1|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\ULA1|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~6_combout\ = (!\ULA1|saida[3]~0_combout\ & \ULA1|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[5]~6_combout\);

\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[5]~6_combout\,
	ena => \DECODER1|Sinais_Controle[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

\REGDADOS1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \REGDADOS1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~22_q\);

\REGDADOS1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~155_combout\ = ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( \REGDADOS1|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~22_q\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \REGDADOS1|ram~155_combout\);

\REGDADOS1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~156_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~3_combout\ & ( \REGDADOS1|ram~155_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~155_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \REGDADOS1|ram~156_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( (!\REGDADOS1|ram~156_combout\) # ((\PC1|dataOUT\(0) & (!\PC1|dataOUT\(2) & !\PC1|dataOUT\(3)))) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( (!\REGDADOS1|ram~156_combout\) # ((\PC1|dataOUT\(0) & (!\PC1|dataOUT\(2) & !\PC1|dataOUT\(3)))) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(2),
	datac => \PC1|ALT_INV_dataOUT\(3),
	datad => \REGDADOS1|ALT_INV_ram~156_combout\,
	dataf => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\ULA1|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~7_combout\ = (!\ULA1|saida[3]~0_combout\ & \ULA1|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[6]~7_combout\);

\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[6]~7_combout\,
	ena => \DECODER1|Sinais_Controle[4]~1_combout\,
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
	ena => \REGDADOS1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~23_q\);

\REGDADOS1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~157_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~3_combout\ & ( \REGDADOS1|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~23_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \REGDADOS1|ram~157_combout\);

\REGDADOS1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~158_combout\ = ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( \REGDADOS1|ram~157_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~157_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \REGDADOS1|ram~158_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( (!\REGDADOS1|ram~158_combout\) # ((\PC1|dataOUT\(0) & (!\PC1|dataOUT\(2) & !\PC1|dataOUT\(3)))) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( (!\REGDADOS1|ram~158_combout\) # ((\PC1|dataOUT\(0) & (!\PC1|dataOUT\(2) & !\PC1|dataOUT\(3)))) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(2),
	datac => \PC1|ALT_INV_dataOUT\(3),
	datad => \REGDADOS1|ALT_INV_ram~158_combout\,
	dataf => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\ULA1|Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal3~3_combout\ = ( \ULA1|Add0~21_sumout\ & ( \ULA1|Add0~25_sumout\ & ( (\ULA1|saida[3]~0_combout\ & !\ROM1|memROM~2_combout\) ) ) ) # ( !\ULA1|Add0~21_sumout\ & ( \ULA1|Add0~25_sumout\ & ( (\ULA1|saida[3]~0_combout\ & !\ROM1|memROM~2_combout\) ) 
-- ) ) # ( \ULA1|Add0~21_sumout\ & ( !\ULA1|Add0~25_sumout\ & ( (\ULA1|saida[3]~0_combout\ & !\ROM1|memROM~2_combout\) ) ) ) # ( !\ULA1|Add0~21_sumout\ & ( !\ULA1|Add0~25_sumout\ & ( (!\ULA1|saida[3]~0_combout\ & (((!\ULA1|Add0~13_sumout\ & 
-- !\ULA1|Add0~17_sumout\)))) # (\ULA1|saida[3]~0_combout\ & (!\ROM1|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ULA1|ALT_INV_Add0~13_sumout\,
	datad => \ULA1|ALT_INV_Add0~17_sumout\,
	datae => \ULA1|ALT_INV_Add0~21_sumout\,
	dataf => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|Equal3~3_combout\);

\ULA1|saida[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~8_combout\ = (!\ULA1|saida[3]~0_combout\ & \ULA1|Add0~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[7]~8_combout\);

\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[7]~8_combout\,
	ena => \DECODER1|Sinais_Controle[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

\REGDADOS1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \REGDADOS1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGDADOS1|ram~24_q\);

\REGDADOS1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~159_combout\ = ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( \REGDADOS1|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~24_q\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \REGDADOS1|ram~159_combout\);

\REGDADOS1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGDADOS1|ram~160_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~3_combout\ & ( \REGDADOS1|ram~159_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGDADOS1|ALT_INV_ram~159_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \REGDADOS1|ram~160_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( (!\REGDADOS1|ram~160_combout\) # ((\PC1|dataOUT\(0) & (!\PC1|dataOUT\(2) & !\PC1|dataOUT\(3)))) ) + ( \REG1|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(2),
	datac => \PC1|ALT_INV_dataOUT\(3),
	datad => \REGDADOS1|ALT_INV_ram~160_combout\,
	dataf => \REG1|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

\DECODER1|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal7~0_combout\ = (\PC1|dataOUT\(2) & (!\PC1|dataOUT\(3) & (!\PC1|dataOUT\(0) $ (\PC1|dataOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000010010000000000001001000000000000100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \DECODER1|Equal7~0_combout\);

\REGIGUAL|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGIGUAL|DOUT~0_combout\ = ( \DECODER1|Equal7~0_combout\ & ( (\ULA1|Equal3~1_combout\ & (\ULA1|Equal3~3_combout\ & !\ULA1|Add0~29_sumout\)) ) ) # ( !\DECODER1|Equal7~0_combout\ & ( \REGIGUAL|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000100010000000000001111000011110001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal3~1_combout\,
	datab => \ULA1|ALT_INV_Equal3~3_combout\,
	datac => \REGIGUAL|ALT_INV_DOUT~q\,
	datad => \ULA1|ALT_INV_Add0~29_sumout\,
	datae => \DECODER1|ALT_INV_Equal7~0_combout\,
	combout => \REGIGUAL|DOUT~0_combout\);

\REGIGUAL|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGIGUAL|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGIGUAL|DOUT~q\);

\DESVIO|Sel[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DESVIO|Sel[0]~1_combout\ = ( \PC1|dataOUT\(0) & ( (!\PC1|dataOUT\(3) & (\REGIGUAL|DOUT~q\ & (\PC1|dataOUT\(2) & !\PC1|dataOUT\(1)))) # (\PC1|dataOUT\(3) & (((!\PC1|dataOUT\(2))))) ) ) # ( !\PC1|dataOUT\(0) & ( (!\PC1|dataOUT\(3) & (((\PC1|dataOUT\(2) & 
-- \PC1|dataOUT\(1))))) # (\PC1|dataOUT\(3) & (\REGIGUAL|DOUT~q\ & (!\PC1|dataOUT\(2) & !\PC1|dataOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000001100001101000011000000010000000011000011010000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGIGUAL|ALT_INV_DOUT~q\,
	datab => \PC1|ALT_INV_dataOUT\(3),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(1),
	datae => \PC1|ALT_INV_dataOUT\(0),
	combout => \DESVIO|Sel[0]~1_combout\);

\DESVIO|Sel[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DESVIO|Sel[1]~0_combout\ = (\PC1|dataOUT\(3) & (\PC1|dataOUT\(2) & (\PC1|dataOUT\(1) & \PC1|dataOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(3),
	datab => \PC1|ALT_INV_dataOUT\(2),
	datac => \PC1|ALT_INV_dataOUT\(1),
	datad => \PC1|ALT_INV_dataOUT\(0),
	combout => \DESVIO|Sel[1]~0_combout\);

\DECODER1|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal7~1_combout\ = (!\PC1|dataOUT\(1) & ((!\PC1|dataOUT\(0) & (!\PC1|dataOUT\(2) & \PC1|dataOUT\(3))) # (\PC1|dataOUT\(0) & (\PC1|dataOUT\(2) & !\PC1|dataOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010000000000001001000000000000100100000000000010010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \DECODER1|Equal7~1_combout\);

\DECODER1|Sinais_Controle[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Sinais_Controle[10]~0_combout\ = (!\PC1|dataOUT\(3) & (\PC1|dataOUT\(2) & (!\PC1|dataOUT\(1) $ (!\PC1|dataOUT\(0))))) # (\PC1|dataOUT\(3) & ((!\PC1|dataOUT\(1) & (!\PC1|dataOUT\(2))) # (\PC1|dataOUT\(1) & ((\PC1|dataOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001100101010000100110010101000010011001010100001001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(3),
	datab => \PC1|ALT_INV_dataOUT\(2),
	datac => \PC1|ALT_INV_dataOUT\(1),
	datad => \PC1|ALT_INV_dataOUT\(0),
	combout => \DECODER1|Sinais_Controle[10]~0_combout\);

\PC1|dataOUT[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC1|dataOUT[3]~0_combout\ = (\DECODER1|Sinais_Controle[10]~0_combout\ & (((!\DECODER1|Equal7~1_combout\) # (\REGIGUAL|DOUT~q\)) # (\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011100000000111101110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \REGIGUAL|ALT_INV_DOUT~q\,
	datac => \DECODER1|ALT_INV_Equal7~1_combout\,
	datad => \DECODER1|ALT_INV_Sinais_Controle[10]~0_combout\,
	combout => \PC1|dataOUT[3]~0_combout\);

\SOMPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMPC|Add0~1_sumout\ = SUM(( \PC1|dataOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \SOMPC|Add0~2\ = CARRY(( \PC1|dataOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1|ALT_INV_dataOUT\(0),
	cin => GND,
	sumout => \SOMPC|Add0~1_sumout\,
	cout => \SOMPC|Add0~2\);

\SOMPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMPC|Add0~5_sumout\ = SUM(( \PC1|dataOUT\(1) ) + ( GND ) + ( \SOMPC|Add0~2\ ))
-- \SOMPC|Add0~6\ = CARRY(( \PC1|dataOUT\(1) ) + ( GND ) + ( \SOMPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1|ALT_INV_dataOUT\(1),
	cin => \SOMPC|Add0~2\,
	sumout => \SOMPC|Add0~5_sumout\,
	cout => \SOMPC|Add0~6\);

\SOMPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMPC|Add0~9_sumout\ = SUM(( \PC1|dataOUT\(2) ) + ( GND ) + ( \SOMPC|Add0~6\ ))
-- \SOMPC|Add0~10\ = CARRY(( \PC1|dataOUT\(2) ) + ( GND ) + ( \SOMPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1|ALT_INV_dataOUT\(2),
	cin => \SOMPC|Add0~6\,
	sumout => \SOMPC|Add0~9_sumout\,
	cout => \SOMPC|Add0~10\);

\SOMPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMPC|Add0~13_sumout\ = SUM(( \PC1|dataOUT\(3) ) + ( GND ) + ( \SOMPC|Add0~10\ ))
-- \SOMPC|Add0~14\ = CARRY(( \PC1|dataOUT\(3) ) + ( GND ) + ( \SOMPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1|ALT_INV_dataOUT\(3),
	cin => \SOMPC|Add0~10\,
	sumout => \SOMPC|Add0~13_sumout\,
	cout => \SOMPC|Add0~14\);

\MUXPC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[3]~3_combout\ = ( \SOMPC|Add0~13_sumout\ & ( (!\PC1|dataOUT[3]~0_combout\) # ((\ROM1|memROM~2_combout\ & (\DESVIO|Sel[0]~1_combout\ & !\DESVIO|Sel[1]~0_combout\))) ) ) # ( !\SOMPC|Add0~13_sumout\ & ( (\ROM1|memROM~2_combout\ & 
-- (\DESVIO|Sel[0]~1_combout\ & (!\DESVIO|Sel[1]~0_combout\ & \PC1|dataOUT[3]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000111111110001000000000000000100001111111100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \DESVIO|ALT_INV_Sel[0]~1_combout\,
	datac => \DESVIO|ALT_INV_Sel[1]~0_combout\,
	datad => \PC1|ALT_INV_dataOUT[3]~0_combout\,
	datae => \SOMPC|ALT_INV_Add0~13_sumout\,
	combout => \MUXPC|saida_MUX[3]~3_combout\);

\PC1|dataOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(3));

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\PC1|dataOUT\(0) & (\PC1|dataOUT\(1) & (\PC1|dataOUT\(2) & !\PC1|dataOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\MUXPC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[2]~2_combout\ = ( \SOMPC|Add0~9_sumout\ & ( ((!\DESVIO|Sel[0]~1_combout\) # ((!\PC1|dataOUT[3]~0_combout\) # (\DESVIO|Sel[1]~0_combout\))) # (\ROM1|memROM~3_combout\) ) ) # ( !\SOMPC|Add0~9_sumout\ & ( (\PC1|dataOUT[3]~0_combout\ & 
-- (((!\DESVIO|Sel[0]~1_combout\) # (\DESVIO|Sel[1]~0_combout\)) # (\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111111111111101111100000000110111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \DESVIO|ALT_INV_Sel[0]~1_combout\,
	datac => \DESVIO|ALT_INV_Sel[1]~0_combout\,
	datad => \PC1|ALT_INV_dataOUT[3]~0_combout\,
	datae => \SOMPC|ALT_INV_Add0~9_sumout\,
	combout => \MUXPC|saida_MUX[2]~2_combout\);

\PC1|dataOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(2));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\PC1|dataOUT\(2) & ((!\PC1|dataOUT\(0) & (!\PC1|dataOUT\(1) & \PC1|dataOUT\(3))) # (\PC1|dataOUT\(0) & (\PC1|dataOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010010000000100001001000000010000100100000001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~1_combout\);

\MUXPC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[1]~1_combout\ = ( \SOMPC|Add0~5_sumout\ & ( ((!\DESVIO|Sel[0]~1_combout\) # ((!\PC1|dataOUT[3]~0_combout\) # (\DESVIO|Sel[1]~0_combout\))) # (\ROM1|memROM~1_combout\) ) ) # ( !\SOMPC|Add0~5_sumout\ & ( (\PC1|dataOUT[3]~0_combout\ & 
-- (((!\DESVIO|Sel[0]~1_combout\) # (\DESVIO|Sel[1]~0_combout\)) # (\ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111111111111101111100000000110111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \DESVIO|ALT_INV_Sel[0]~1_combout\,
	datac => \DESVIO|ALT_INV_Sel[1]~0_combout\,
	datad => \PC1|ALT_INV_dataOUT[3]~0_combout\,
	datae => \SOMPC|ALT_INV_Add0~5_sumout\,
	combout => \MUXPC|saida_MUX[1]~1_combout\);

\PC1|dataOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(1));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (\PC1|dataOUT\(0) & (!\PC1|dataOUT\(3) & ((!\PC1|dataOUT\(1)) # (!\PC1|dataOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000000000010101000000000001010100000000000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\MUXPC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[0]~0_combout\ = ( \SOMPC|Add0~1_sumout\ & ( ((!\DESVIO|Sel[0]~1_combout\) # ((!\PC1|dataOUT[3]~0_combout\) # (\DESVIO|Sel[1]~0_combout\))) # (\ROM1|memROM~0_combout\) ) ) # ( !\SOMPC|Add0~1_sumout\ & ( (\PC1|dataOUT[3]~0_combout\ & 
-- (((!\DESVIO|Sel[0]~1_combout\) # (\DESVIO|Sel[1]~0_combout\)) # (\ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111111111111101111100000000110111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \DESVIO|ALT_INV_Sel[0]~1_combout\,
	datac => \DESVIO|ALT_INV_Sel[1]~0_combout\,
	datad => \PC1|ALT_INV_dataOUT[3]~0_combout\,
	datae => \SOMPC|ALT_INV_Add0~1_sumout\,
	combout => \MUXPC|saida_MUX[0]~0_combout\);

\PC1|dataOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(0));

\ULA1|saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~0_combout\ = (\PC1|dataOUT\(0) & (!\DECODER1|Equal7~0_combout\ & \REGDADOS1|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \DECODER1|ALT_INV_Equal7~0_combout\,
	datac => \REGDADOS1|ALT_INV_process_0~0_combout\,
	combout => \ULA1|saida[3]~0_combout\);

\ULA1|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~1_combout\ = (!\ULA1|saida[3]~0_combout\ & ((\ULA1|Add0~1_sumout\))) # (\ULA1|saida[3]~0_combout\ & (\ROM1|memROM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[0]~1_combout\);

\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[0]~1_combout\,
	ena => \DECODER1|Sinais_Controle[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

\SOMPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMPC|Add0~17_sumout\ = SUM(( \PC1|dataOUT\(4) ) + ( GND ) + ( \SOMPC|Add0~14\ ))
-- \SOMPC|Add0~18\ = CARRY(( \PC1|dataOUT\(4) ) + ( GND ) + ( \SOMPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1|ALT_INV_dataOUT\(4),
	cin => \SOMPC|Add0~14\,
	sumout => \SOMPC|Add0~17_sumout\,
	cout => \SOMPC|Add0~18\);

\REGRET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOMPC|Add0~17_sumout\,
	ena => \ROM1|memROM~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGRET|DOUT\(4));

\MUXPC|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[4]~4_combout\ = (!\DESVIO|Sel[1]~0_combout\ & (((\SOMPC|Add0~17_sumout\ & !\PC1|dataOUT[3]~0_combout\)))) # (\DESVIO|Sel[1]~0_combout\ & (((\SOMPC|Add0~17_sumout\ & !\PC1|dataOUT[3]~0_combout\)) # (\REGRET|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100010001000111110001000100011111000100010001111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO|ALT_INV_Sel[1]~0_combout\,
	datab => \REGRET|ALT_INV_DOUT\(4),
	datac => \SOMPC|ALT_INV_Add0~17_sumout\,
	datad => \PC1|ALT_INV_dataOUT[3]~0_combout\,
	combout => \MUXPC|saida_MUX[4]~4_combout\);

\PC1|dataOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(4));

\SOMPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMPC|Add0~21_sumout\ = SUM(( \PC1|dataOUT\(5) ) + ( GND ) + ( \SOMPC|Add0~18\ ))
-- \SOMPC|Add0~22\ = CARRY(( \PC1|dataOUT\(5) ) + ( GND ) + ( \SOMPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1|ALT_INV_dataOUT\(5),
	cin => \SOMPC|Add0~18\,
	sumout => \SOMPC|Add0~21_sumout\,
	cout => \SOMPC|Add0~22\);

\REGRET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOMPC|Add0~21_sumout\,
	ena => \ROM1|memROM~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGRET|DOUT\(5));

\MUXPC|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[5]~5_combout\ = (!\DESVIO|Sel[1]~0_combout\ & (!\PC1|dataOUT[3]~0_combout\ & ((\SOMPC|Add0~21_sumout\)))) # (\DESVIO|Sel[1]~0_combout\ & (((!\PC1|dataOUT[3]~0_combout\ & \SOMPC|Add0~21_sumout\)) # (\REGRET|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO|ALT_INV_Sel[1]~0_combout\,
	datab => \PC1|ALT_INV_dataOUT[3]~0_combout\,
	datac => \REGRET|ALT_INV_DOUT\(5),
	datad => \SOMPC|ALT_INV_Add0~21_sumout\,
	combout => \MUXPC|saida_MUX[5]~5_combout\);

\PC1|dataOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(5));

\SOMPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMPC|Add0~25_sumout\ = SUM(( \PC1|dataOUT\(6) ) + ( GND ) + ( \SOMPC|Add0~22\ ))
-- \SOMPC|Add0~26\ = CARRY(( \PC1|dataOUT\(6) ) + ( GND ) + ( \SOMPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1|ALT_INV_dataOUT\(6),
	cin => \SOMPC|Add0~22\,
	sumout => \SOMPC|Add0~25_sumout\,
	cout => \SOMPC|Add0~26\);

\REGRET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOMPC|Add0~25_sumout\,
	ena => \ROM1|memROM~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGRET|DOUT\(6));

\MUXPC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[6]~6_combout\ = (!\DESVIO|Sel[1]~0_combout\ & (!\PC1|dataOUT[3]~0_combout\ & ((\SOMPC|Add0~25_sumout\)))) # (\DESVIO|Sel[1]~0_combout\ & (((!\PC1|dataOUT[3]~0_combout\ & \SOMPC|Add0~25_sumout\)) # (\REGRET|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO|ALT_INV_Sel[1]~0_combout\,
	datab => \PC1|ALT_INV_dataOUT[3]~0_combout\,
	datac => \REGRET|ALT_INV_DOUT\(6),
	datad => \SOMPC|ALT_INV_Add0~25_sumout\,
	combout => \MUXPC|saida_MUX[6]~6_combout\);

\PC1|dataOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(6));

\SOMPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMPC|Add0~29_sumout\ = SUM(( \PC1|dataOUT\(7) ) + ( GND ) + ( \SOMPC|Add0~26\ ))
-- \SOMPC|Add0~30\ = CARRY(( \PC1|dataOUT\(7) ) + ( GND ) + ( \SOMPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1|ALT_INV_dataOUT\(7),
	cin => \SOMPC|Add0~26\,
	sumout => \SOMPC|Add0~29_sumout\,
	cout => \SOMPC|Add0~30\);

\REGRET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOMPC|Add0~29_sumout\,
	ena => \ROM1|memROM~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGRET|DOUT\(7));

\MUXPC|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[7]~7_combout\ = (!\DESVIO|Sel[1]~0_combout\ & (!\PC1|dataOUT[3]~0_combout\ & ((\SOMPC|Add0~29_sumout\)))) # (\DESVIO|Sel[1]~0_combout\ & (((!\PC1|dataOUT[3]~0_combout\ & \SOMPC|Add0~29_sumout\)) # (\REGRET|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO|ALT_INV_Sel[1]~0_combout\,
	datab => \PC1|ALT_INV_dataOUT[3]~0_combout\,
	datac => \REGRET|ALT_INV_DOUT\(7),
	datad => \SOMPC|ALT_INV_Add0~29_sumout\,
	combout => \MUXPC|saida_MUX[7]~7_combout\);

\PC1|dataOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(7));

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\PC1|dataOUT\(3) & (\PC1|dataOUT\(2) & (!\PC1|dataOUT\(0) $ (!\PC1|dataOUT\(1))))) # (\PC1|dataOUT\(3) & ((!\PC1|dataOUT\(1) & ((!\PC1|dataOUT\(2)))) # (\PC1|dataOUT\(1) & (\PC1|dataOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011010001000001101101000100000110110100010000011011010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~4_combout\);

\SOMPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMPC|Add0~33_sumout\ = SUM(( \PC1|dataOUT\(8) ) + ( GND ) + ( \SOMPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC1|ALT_INV_dataOUT\(8),
	cin => \SOMPC|Add0~30\,
	sumout => \SOMPC|Add0~33_sumout\);

\REGRET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SOMPC|Add0~33_sumout\,
	ena => \ROM1|memROM~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGRET|DOUT\(8));

\MUXPC|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[8]~8_combout\ = ( \SOMPC|Add0~33_sumout\ & ( \REGRET|DOUT\(8) & ( (!\ROM1|memROM~4_combout\) # ((!\DESVIO|Sel[0]~1_combout\) # ((!\PC1|dataOUT[3]~0_combout\) # (\DESVIO|Sel[1]~0_combout\))) ) ) ) # ( !\SOMPC|Add0~33_sumout\ & ( 
-- \REGRET|DOUT\(8) & ( (\PC1|dataOUT[3]~0_combout\ & ((!\ROM1|memROM~4_combout\) # ((!\DESVIO|Sel[0]~1_combout\) # (\DESVIO|Sel[1]~0_combout\)))) ) ) ) # ( \SOMPC|Add0~33_sumout\ & ( !\REGRET|DOUT\(8) & ( (!\PC1|dataOUT[3]~0_combout\) # 
-- ((!\ROM1|memROM~4_combout\ & (\DESVIO|Sel[0]~1_combout\ & !\DESVIO|Sel[1]~0_combout\))) ) ) ) # ( !\SOMPC|Add0~33_sumout\ & ( !\REGRET|DOUT\(8) & ( (!\ROM1|memROM~4_combout\ & (\DESVIO|Sel[0]~1_combout\ & (!\DESVIO|Sel[1]~0_combout\ & 
-- \PC1|dataOUT[3]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000111111110010000000000000111011111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \DESVIO|ALT_INV_Sel[0]~1_combout\,
	datac => \DESVIO|ALT_INV_Sel[1]~0_combout\,
	datad => \PC1|ALT_INV_dataOUT[3]~0_combout\,
	datae => \SOMPC|ALT_INV_Add0~33_sumout\,
	dataf => \REGRET|ALT_INV_DOUT\(8),
	combout => \MUXPC|saida_MUX[8]~8_combout\);

\PC1|dataOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(8));

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\PC1|dataOUT\(0) & (!\PC1|dataOUT\(1) $ (((!\PC1|dataOUT\(3)) # (\PC1|dataOUT\(2)))))) # (\PC1|dataOUT\(0) & (!\PC1|dataOUT\(1) & (\PC1|dataOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011010000110001001101000011000100110100001100010011010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (!\PC1|dataOUT\(0) & (\PC1|dataOUT\(3) & (!\PC1|dataOUT\(1) $ (\PC1|dataOUT\(2))))) # (\PC1|dataOUT\(0) & (((!\PC1|dataOUT\(1) & \PC1|dataOUT\(2))) # (\PC1|dataOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011010111000001001101011100000100110101110000010011010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (!\PC1|dataOUT\(0) & (!\PC1|dataOUT\(2) & (!\PC1|dataOUT\(1) $ (!\PC1|dataOUT\(3))))) # (\PC1|dataOUT\(0) & ((!\PC1|dataOUT\(2)) # ((!\PC1|dataOUT\(1) & !\PC1|dataOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010011010000011101001101000001110100110100000111010011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (\PC1|dataOUT\(2) & ((!\PC1|dataOUT\(0) & ((!\PC1|dataOUT\(3)))) # (\PC1|dataOUT\(0) & (\PC1|dataOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100000001000010110000000100001011000000010000101100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~8_combout\);

\ULA1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal3~0_combout\ = (!\ULA1|saida[3]~0_combout\ & (((!\ULA1|Add0~13_sumout\ & !\ULA1|Add0~17_sumout\)))) # (\ULA1|saida[3]~0_combout\ & (!\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010001000100111001000100010011100100010001001110010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ULA1|ALT_INV_Add0~13_sumout\,
	datad => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|Equal3~0_combout\);

\ULA1|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal3~2_combout\ = ( \ULA1|Equal3~0_combout\ & ( \ULA1|Equal3~1_combout\ & ( ((!\ULA1|Add0~21_sumout\ & (!\ULA1|Add0~25_sumout\ & !\ULA1|Add0~29_sumout\))) # (\ULA1|saida[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[3]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~21_sumout\,
	datac => \ULA1|ALT_INV_Add0~25_sumout\,
	datad => \ULA1|ALT_INV_Add0~29_sumout\,
	datae => \ULA1|ALT_INV_Equal3~0_combout\,
	dataf => \ULA1|ALT_INV_Equal3~1_combout\,
	combout => \ULA1|Equal3~2_combout\);

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

ww_OUT_ULA(0) <= \OUT_ULA[0]~output_o\;

ww_OUT_ULA(1) <= \OUT_ULA[1]~output_o\;

ww_OUT_ULA(2) <= \OUT_ULA[2]~output_o\;

ww_OUT_ULA(3) <= \OUT_ULA[3]~output_o\;

ww_OUT_ULA(4) <= \OUT_ULA[4]~output_o\;

ww_OUT_ULA(5) <= \OUT_ULA[5]~output_o\;

ww_OUT_ULA(6) <= \OUT_ULA[6]~output_o\;

ww_OUT_ULA(7) <= \OUT_ULA[7]~output_o\;

ww_DEBUG_PC(0) <= \DEBUG_PC[0]~output_o\;

ww_DEBUG_PC(1) <= \DEBUG_PC[1]~output_o\;

ww_DEBUG_PC(2) <= \DEBUG_PC[2]~output_o\;

ww_DEBUG_PC(3) <= \DEBUG_PC[3]~output_o\;

ww_DEBUG_PC(4) <= \DEBUG_PC[4]~output_o\;

ww_DEBUG_PC(5) <= \DEBUG_PC[5]~output_o\;

ww_DEBUG_PC(6) <= \DEBUG_PC[6]~output_o\;

ww_DEBUG_PC(7) <= \DEBUG_PC[7]~output_o\;

ww_DEBUG_PC(8) <= \DEBUG_PC[8]~output_o\;

ww_INSTRUCAO(0) <= \INSTRUCAO[0]~output_o\;

ww_INSTRUCAO(1) <= \INSTRUCAO[1]~output_o\;

ww_INSTRUCAO(2) <= \INSTRUCAO[2]~output_o\;

ww_INSTRUCAO(3) <= \INSTRUCAO[3]~output_o\;

ww_INSTRUCAO(4) <= \INSTRUCAO[4]~output_o\;

ww_INSTRUCAO(5) <= \INSTRUCAO[5]~output_o\;

ww_INSTRUCAO(6) <= \INSTRUCAO[6]~output_o\;

ww_INSTRUCAO(7) <= \INSTRUCAO[7]~output_o\;

ww_INSTRUCAO(8) <= \INSTRUCAO[8]~output_o\;

ww_INSTRUCAO(9) <= \INSTRUCAO[9]~output_o\;

ww_INSTRUCAO(10) <= \INSTRUCAO[10]~output_o\;

ww_INSTRUCAO(11) <= \INSTRUCAO[11]~output_o\;

ww_INSTRUCAO(12) <= \INSTRUCAO[12]~output_o\;

ww_SAIDA_FLAG0 <= \SAIDA_FLAG0~output_o\;

ww_SAIDA_FLAGULA <= \SAIDA_FLAGULA~output_o\;

ww_MUXJMP(0) <= \MUXJMP[0]~output_o\;

ww_MUXJMP(1) <= \MUXJMP[1]~output_o\;
END structure;


