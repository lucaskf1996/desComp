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

-- DATE "10/27/2021 18:46:08"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA_completa IS
    PORT (
	entradaA : IN std_logic_vector(31 DOWNTO 0);
	entradaB : IN std_logic_vector(31 DOWNTO 0);
	inverte_B : IN std_logic;
	saida : OUT std_logic_vector(31 DOWNTO 0);
	flagZero : OUT std_logic;
	seletor : IN std_logic_vector(1 DOWNTO 0)
	);
END ULA_completa;

ARCHITECTURE structure OF ULA_completa IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entradaA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entradaB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inverte_B : std_logic;
SIGNAL ww_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_flagZero : std_logic;
SIGNAL ww_seletor : std_logic_vector(1 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \saida[8]~output_o\ : std_logic;
SIGNAL \saida[9]~output_o\ : std_logic;
SIGNAL \saida[10]~output_o\ : std_logic;
SIGNAL \saida[11]~output_o\ : std_logic;
SIGNAL \saida[12]~output_o\ : std_logic;
SIGNAL \saida[13]~output_o\ : std_logic;
SIGNAL \saida[14]~output_o\ : std_logic;
SIGNAL \saida[15]~output_o\ : std_logic;
SIGNAL \saida[16]~output_o\ : std_logic;
SIGNAL \saida[17]~output_o\ : std_logic;
SIGNAL \saida[18]~output_o\ : std_logic;
SIGNAL \saida[19]~output_o\ : std_logic;
SIGNAL \saida[20]~output_o\ : std_logic;
SIGNAL \saida[21]~output_o\ : std_logic;
SIGNAL \saida[22]~output_o\ : std_logic;
SIGNAL \saida[23]~output_o\ : std_logic;
SIGNAL \saida[24]~output_o\ : std_logic;
SIGNAL \saida[25]~output_o\ : std_logic;
SIGNAL \saida[26]~output_o\ : std_logic;
SIGNAL \saida[27]~output_o\ : std_logic;
SIGNAL \saida[28]~output_o\ : std_logic;
SIGNAL \saida[29]~output_o\ : std_logic;
SIGNAL \saida[30]~output_o\ : std_logic;
SIGNAL \saida[31]~output_o\ : std_logic;
SIGNAL \flagZero~output_o\ : std_logic;
SIGNAL \entradaA[30]~input_o\ : std_logic;
SIGNAL \inverte_B~input_o\ : std_logic;
SIGNAL \entradaB[30]~input_o\ : std_logic;
SIGNAL \ULA30|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[29]~input_o\ : std_logic;
SIGNAL \entradaB[29]~input_o\ : std_logic;
SIGNAL \ULA29|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA29|somador|cOut~0_combout\ : std_logic;
SIGNAL \entradaA[28]~input_o\ : std_logic;
SIGNAL \entradaB[28]~input_o\ : std_logic;
SIGNAL \ULA28|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[27]~input_o\ : std_logic;
SIGNAL \entradaB[27]~input_o\ : std_logic;
SIGNAL \ULA27|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[26]~input_o\ : std_logic;
SIGNAL \entradaB[26]~input_o\ : std_logic;
SIGNAL \ULA26|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[25]~input_o\ : std_logic;
SIGNAL \entradaB[25]~input_o\ : std_logic;
SIGNAL \ULA25|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[24]~input_o\ : std_logic;
SIGNAL \entradaB[24]~input_o\ : std_logic;
SIGNAL \ULA24|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA24|somador|cOut~0_combout\ : std_logic;
SIGNAL \entradaA[23]~input_o\ : std_logic;
SIGNAL \entradaB[23]~input_o\ : std_logic;
SIGNAL \ULA23|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[22]~input_o\ : std_logic;
SIGNAL \entradaB[22]~input_o\ : std_logic;
SIGNAL \ULA22|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[21]~input_o\ : std_logic;
SIGNAL \entradaB[21]~input_o\ : std_logic;
SIGNAL \ULA21|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[20]~input_o\ : std_logic;
SIGNAL \entradaB[20]~input_o\ : std_logic;
SIGNAL \ULA20|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[19]~input_o\ : std_logic;
SIGNAL \entradaB[19]~input_o\ : std_logic;
SIGNAL \ULA19|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA19|somador|cOut~0_combout\ : std_logic;
SIGNAL \entradaA[18]~input_o\ : std_logic;
SIGNAL \entradaB[18]~input_o\ : std_logic;
SIGNAL \ULA18|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[17]~input_o\ : std_logic;
SIGNAL \entradaB[17]~input_o\ : std_logic;
SIGNAL \ULA17|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[16]~input_o\ : std_logic;
SIGNAL \entradaB[16]~input_o\ : std_logic;
SIGNAL \ULA16|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[15]~input_o\ : std_logic;
SIGNAL \entradaB[15]~input_o\ : std_logic;
SIGNAL \ULA15|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[14]~input_o\ : std_logic;
SIGNAL \entradaB[14]~input_o\ : std_logic;
SIGNAL \ULA14|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA14|somador|cOut~0_combout\ : std_logic;
SIGNAL \entradaA[13]~input_o\ : std_logic;
SIGNAL \entradaB[13]~input_o\ : std_logic;
SIGNAL \ULA13|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[12]~input_o\ : std_logic;
SIGNAL \entradaB[12]~input_o\ : std_logic;
SIGNAL \ULA12|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[11]~input_o\ : std_logic;
SIGNAL \entradaB[11]~input_o\ : std_logic;
SIGNAL \ULA11|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[10]~input_o\ : std_logic;
SIGNAL \entradaB[10]~input_o\ : std_logic;
SIGNAL \ULA10|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[9]~input_o\ : std_logic;
SIGNAL \entradaB[9]~input_o\ : std_logic;
SIGNAL \ULA9|somador|cOut~0_combout\ : std_logic;
SIGNAL \entradaA[8]~input_o\ : std_logic;
SIGNAL \entradaB[8]~input_o\ : std_logic;
SIGNAL \ULA8|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[7]~input_o\ : std_logic;
SIGNAL \entradaB[7]~input_o\ : std_logic;
SIGNAL \ULA7|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[6]~input_o\ : std_logic;
SIGNAL \entradaB[6]~input_o\ : std_logic;
SIGNAL \ULA6|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[5]~input_o\ : std_logic;
SIGNAL \entradaB[5]~input_o\ : std_logic;
SIGNAL \ULA5|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[4]~input_o\ : std_logic;
SIGNAL \entradaB[4]~input_o\ : std_logic;
SIGNAL \ULA4|somador|cOut~0_combout\ : std_logic;
SIGNAL \entradaA[3]~input_o\ : std_logic;
SIGNAL \entradaB[3]~input_o\ : std_logic;
SIGNAL \ULA3|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[2]~input_o\ : std_logic;
SIGNAL \entradaB[2]~input_o\ : std_logic;
SIGNAL \ULA2|MuxEntradaB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[1]~input_o\ : std_logic;
SIGNAL \entradaB[1]~input_o\ : std_logic;
SIGNAL \entradaB[0]~input_o\ : std_logic;
SIGNAL \entradaA[0]~input_o\ : std_logic;
SIGNAL \ULA1|somador|cOut~combout\ : std_logic;
SIGNAL \ULA4|somador|saida~0_combout\ : std_logic;
SIGNAL \ULA4|somador|cOut~1_combout\ : std_logic;
SIGNAL \ULA6|somador|cOut~combout\ : std_logic;
SIGNAL \ULA9|somador|saida~0_combout\ : std_logic;
SIGNAL \ULA9|somador|cOut~1_combout\ : std_logic;
SIGNAL \ULA11|somador|cOut~combout\ : std_logic;
SIGNAL \ULA14|somador|saida~0_combout\ : std_logic;
SIGNAL \ULA14|somador|cOut~1_combout\ : std_logic;
SIGNAL \ULA16|somador|cOut~combout\ : std_logic;
SIGNAL \ULA19|somador|saida~0_combout\ : std_logic;
SIGNAL \ULA19|somador|cOut~1_combout\ : std_logic;
SIGNAL \ULA21|somador|cOut~combout\ : std_logic;
SIGNAL \ULA24|somador|saida~0_combout\ : std_logic;
SIGNAL \ULA24|somador|cOut~1_combout\ : std_logic;
SIGNAL \ULA26|somador|cOut~combout\ : std_logic;
SIGNAL \ULA29|somador|saida~0_combout\ : std_logic;
SIGNAL \ULA29|somador|cOut~1_combout\ : std_logic;
SIGNAL \entradaA[31]~input_o\ : std_logic;
SIGNAL \entradaB[31]~input_o\ : std_logic;
SIGNAL \seletor[0]~input_o\ : std_logic;
SIGNAL \seletor[1]~input_o\ : std_logic;
SIGNAL \ULA0|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA0|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA0|MuxSaida|saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA0|MuxSaida|saida_MUX~3_combout\ : std_logic;
SIGNAL \ULA1|somador|saida~combout\ : std_logic;
SIGNAL \ULA1|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA2|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA3|somador|saida~0_combout\ : std_logic;
SIGNAL \ULA1|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA3|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA3|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA3|somador|cOut~combout\ : std_logic;
SIGNAL \ULA4|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA5|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA5|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA5|somador|cOut~combout\ : std_logic;
SIGNAL \ULA6|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA7|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA8|somador|saida~0_combout\ : std_logic;
SIGNAL \ULA8|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA8|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA8|somador|cOut~combout\ : std_logic;
SIGNAL \ULA9|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA10|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA10|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA10|somador|cOut~combout\ : std_logic;
SIGNAL \ULA11|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA12|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA13|somador|saida~0_combout\ : std_logic;
SIGNAL \ULA13|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA13|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA13|somador|cOut~combout\ : std_logic;
SIGNAL \ULA14|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA15|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA15|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA15|somador|cOut~combout\ : std_logic;
SIGNAL \ULA16|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA17|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA18|somador|saida~0_combout\ : std_logic;
SIGNAL \ULA18|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA18|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA18|somador|cOut~combout\ : std_logic;
SIGNAL \ULA19|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA20|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA20|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA20|somador|cOut~combout\ : std_logic;
SIGNAL \ULA21|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA22|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA23|somador|saida~0_combout\ : std_logic;
SIGNAL \ULA23|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA23|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA23|somador|cOut~combout\ : std_logic;
SIGNAL \ULA24|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA25|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA25|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA25|somador|cOut~combout\ : std_logic;
SIGNAL \ULA26|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA27|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA28|somador|saida~0_combout\ : std_logic;
SIGNAL \ULA28|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA28|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA28|somador|cOut~combout\ : std_logic;
SIGNAL \ULA29|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA30|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA30|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA31|somador|saida~0_combout\ : std_logic;
SIGNAL \ULA31|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA31|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA31|MuxSaida|saida_MUX~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ULA31|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA31|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA31|somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA30|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA30|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA29|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA28|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA28|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA28|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA28|somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA27|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA26|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA25|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA25|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA25|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA24|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA23|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA23|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA23|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA23|somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA22|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA21|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA20|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA20|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA20|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA19|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA18|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA18|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA18|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA18|somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA17|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA16|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA15|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA15|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA15|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA14|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA13|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA13|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA13|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA13|somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA12|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA11|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA10|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA10|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA10|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA9|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA8|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA8|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA8|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA8|somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA7|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA6|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA5|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA5|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA5|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA4|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA3|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA3|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA3|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA3|somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA2|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|somador|ALT_INV_saida~combout\ : std_logic;
SIGNAL \ULA0|MuxSaida|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \ULA0|MuxSaida|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA0|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA0|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA29|somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA29|somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA26|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA24|somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA24|somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA21|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA19|somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA19|somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA16|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA14|somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA14|somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA11|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA9|somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA9|somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA6|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA4|somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA4|somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA1|somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA2|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA3|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA4|somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ALT_INV_seletor[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_seletor[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_inverte_B~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[30]~input_o\ : std_logic;
SIGNAL \ULA5|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA6|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA7|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA8|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA9|somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA10|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA11|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA12|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA13|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA14|somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA14|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA15|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA16|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA17|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA18|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA19|somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA19|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA20|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA21|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA22|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA23|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA24|somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA24|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA25|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA26|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA27|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA28|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA29|somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA29|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA30|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ : std_logic;

BEGIN

ww_entradaA <= entradaA;
ww_entradaB <= entradaB;
ww_inverte_B <= inverte_B;
saida <= ww_saida;
flagZero <= ww_flagZero;
ww_seletor <= seletor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ULA31|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA31|MuxSaida|saida_MUX~1_combout\;
\ULA31|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA31|MuxSaida|saida_MUX~0_combout\;
\ULA31|somador|ALT_INV_saida~0_combout\ <= NOT \ULA31|somador|saida~0_combout\;
\ULA30|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA30|MuxSaida|saida_MUX~1_combout\;
\ULA30|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA30|MuxSaida|saida_MUX~0_combout\;
\ULA29|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA29|MuxSaida|saida_MUX~0_combout\;
\ULA28|somador|ALT_INV_cOut~combout\ <= NOT \ULA28|somador|cOut~combout\;
\ULA28|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA28|MuxSaida|saida_MUX~1_combout\;
\ULA28|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA28|MuxSaida|saida_MUX~0_combout\;
\ULA28|somador|ALT_INV_saida~0_combout\ <= NOT \ULA28|somador|saida~0_combout\;
\ULA27|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA27|MuxSaida|saida_MUX~0_combout\;
\ULA26|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA26|MuxSaida|saida_MUX~0_combout\;
\ULA25|somador|ALT_INV_cOut~combout\ <= NOT \ULA25|somador|cOut~combout\;
\ULA25|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA25|MuxSaida|saida_MUX~1_combout\;
\ULA25|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA25|MuxSaida|saida_MUX~0_combout\;
\ULA24|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA24|MuxSaida|saida_MUX~0_combout\;
\ULA23|somador|ALT_INV_cOut~combout\ <= NOT \ULA23|somador|cOut~combout\;
\ULA23|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA23|MuxSaida|saida_MUX~1_combout\;
\ULA23|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA23|MuxSaida|saida_MUX~0_combout\;
\ULA23|somador|ALT_INV_saida~0_combout\ <= NOT \ULA23|somador|saida~0_combout\;
\ULA22|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA22|MuxSaida|saida_MUX~0_combout\;
\ULA21|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA21|MuxSaida|saida_MUX~0_combout\;
\ULA20|somador|ALT_INV_cOut~combout\ <= NOT \ULA20|somador|cOut~combout\;
\ULA20|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA20|MuxSaida|saida_MUX~1_combout\;
\ULA20|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA20|MuxSaida|saida_MUX~0_combout\;
\ULA19|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA19|MuxSaida|saida_MUX~0_combout\;
\ULA18|somador|ALT_INV_cOut~combout\ <= NOT \ULA18|somador|cOut~combout\;
\ULA18|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA18|MuxSaida|saida_MUX~1_combout\;
\ULA18|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA18|MuxSaida|saida_MUX~0_combout\;
\ULA18|somador|ALT_INV_saida~0_combout\ <= NOT \ULA18|somador|saida~0_combout\;
\ULA17|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA17|MuxSaida|saida_MUX~0_combout\;
\ULA16|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA16|MuxSaida|saida_MUX~0_combout\;
\ULA15|somador|ALT_INV_cOut~combout\ <= NOT \ULA15|somador|cOut~combout\;
\ULA15|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA15|MuxSaida|saida_MUX~1_combout\;
\ULA15|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA15|MuxSaida|saida_MUX~0_combout\;
\ULA14|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA14|MuxSaida|saida_MUX~0_combout\;
\ULA13|somador|ALT_INV_cOut~combout\ <= NOT \ULA13|somador|cOut~combout\;
\ULA13|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA13|MuxSaida|saida_MUX~1_combout\;
\ULA13|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA13|MuxSaida|saida_MUX~0_combout\;
\ULA13|somador|ALT_INV_saida~0_combout\ <= NOT \ULA13|somador|saida~0_combout\;
\ULA12|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA12|MuxSaida|saida_MUX~0_combout\;
\ULA11|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA11|MuxSaida|saida_MUX~0_combout\;
\ULA10|somador|ALT_INV_cOut~combout\ <= NOT \ULA10|somador|cOut~combout\;
\ULA10|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA10|MuxSaida|saida_MUX~1_combout\;
\ULA10|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA10|MuxSaida|saida_MUX~0_combout\;
\ULA9|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA9|MuxSaida|saida_MUX~0_combout\;
\ULA8|somador|ALT_INV_cOut~combout\ <= NOT \ULA8|somador|cOut~combout\;
\ULA8|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA8|MuxSaida|saida_MUX~1_combout\;
\ULA8|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA8|MuxSaida|saida_MUX~0_combout\;
\ULA8|somador|ALT_INV_saida~0_combout\ <= NOT \ULA8|somador|saida~0_combout\;
\ULA7|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA7|MuxSaida|saida_MUX~0_combout\;
\ULA6|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA6|MuxSaida|saida_MUX~0_combout\;
\ULA5|somador|ALT_INV_cOut~combout\ <= NOT \ULA5|somador|cOut~combout\;
\ULA5|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA5|MuxSaida|saida_MUX~1_combout\;
\ULA5|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA5|MuxSaida|saida_MUX~0_combout\;
\ULA4|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA4|MuxSaida|saida_MUX~0_combout\;
\ULA3|somador|ALT_INV_cOut~combout\ <= NOT \ULA3|somador|cOut~combout\;
\ULA3|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA3|MuxSaida|saida_MUX~1_combout\;
\ULA3|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA3|MuxSaida|saida_MUX~0_combout\;
\ULA1|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA1|MuxSaida|saida_MUX~1_combout\;
\ULA3|somador|ALT_INV_saida~0_combout\ <= NOT \ULA3|somador|saida~0_combout\;
\ULA2|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA2|MuxSaida|saida_MUX~0_combout\;
\ULA1|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|MuxSaida|saida_MUX~0_combout\;
\ULA1|somador|ALT_INV_saida~combout\ <= NOT \ULA1|somador|saida~combout\;
\ULA0|MuxSaida|ALT_INV_saida_MUX~3_combout\ <= NOT \ULA0|MuxSaida|saida_MUX~3_combout\;
\ULA0|MuxSaida|ALT_INV_saida_MUX~2_combout\ <= NOT \ULA0|MuxSaida|saida_MUX~2_combout\;
\ULA0|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA0|MuxSaida|saida_MUX~1_combout\;
\ULA0|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA0|MuxSaida|saida_MUX~0_combout\;
\ULA29|somador|ALT_INV_cOut~1_combout\ <= NOT \ULA29|somador|cOut~1_combout\;
\ULA29|somador|ALT_INV_saida~0_combout\ <= NOT \ULA29|somador|saida~0_combout\;
\ULA26|somador|ALT_INV_cOut~combout\ <= NOT \ULA26|somador|cOut~combout\;
\ULA24|somador|ALT_INV_cOut~1_combout\ <= NOT \ULA24|somador|cOut~1_combout\;
\ULA24|somador|ALT_INV_saida~0_combout\ <= NOT \ULA24|somador|saida~0_combout\;
\ULA21|somador|ALT_INV_cOut~combout\ <= NOT \ULA21|somador|cOut~combout\;
\ULA19|somador|ALT_INV_cOut~1_combout\ <= NOT \ULA19|somador|cOut~1_combout\;
\ULA19|somador|ALT_INV_saida~0_combout\ <= NOT \ULA19|somador|saida~0_combout\;
\ULA16|somador|ALT_INV_cOut~combout\ <= NOT \ULA16|somador|cOut~combout\;
\ULA14|somador|ALT_INV_cOut~1_combout\ <= NOT \ULA14|somador|cOut~1_combout\;
\ULA14|somador|ALT_INV_saida~0_combout\ <= NOT \ULA14|somador|saida~0_combout\;
\ULA11|somador|ALT_INV_cOut~combout\ <= NOT \ULA11|somador|cOut~combout\;
\ULA9|somador|ALT_INV_cOut~1_combout\ <= NOT \ULA9|somador|cOut~1_combout\;
\ULA9|somador|ALT_INV_saida~0_combout\ <= NOT \ULA9|somador|saida~0_combout\;
\ULA6|somador|ALT_INV_cOut~combout\ <= NOT \ULA6|somador|cOut~combout\;
\ULA4|somador|ALT_INV_cOut~1_combout\ <= NOT \ULA4|somador|cOut~1_combout\;
\ULA4|somador|ALT_INV_saida~0_combout\ <= NOT \ULA4|somador|saida~0_combout\;
\ULA1|somador|ALT_INV_cOut~combout\ <= NOT \ULA1|somador|cOut~combout\;
\ULA2|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA2|MuxEntradaB|saida_MUX~0_combout\;
\ULA3|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA3|MuxEntradaB|saida_MUX~0_combout\;
\ULA4|somador|ALT_INV_cOut~0_combout\ <= NOT \ULA4|somador|cOut~0_combout\;
\ALT_INV_seletor[1]~input_o\ <= NOT \seletor[1]~input_o\;
\ALT_INV_seletor[0]~input_o\ <= NOT \seletor[0]~input_o\;
\ALT_INV_entradaB[31]~input_o\ <= NOT \entradaB[31]~input_o\;
\ALT_INV_entradaA[31]~input_o\ <= NOT \entradaA[31]~input_o\;
\ALT_INV_entradaA[0]~input_o\ <= NOT \entradaA[0]~input_o\;
\ALT_INV_entradaB[0]~input_o\ <= NOT \entradaB[0]~input_o\;
\ALT_INV_entradaB[1]~input_o\ <= NOT \entradaB[1]~input_o\;
\ALT_INV_entradaA[1]~input_o\ <= NOT \entradaA[1]~input_o\;
\ALT_INV_entradaB[2]~input_o\ <= NOT \entradaB[2]~input_o\;
\ALT_INV_entradaA[2]~input_o\ <= NOT \entradaA[2]~input_o\;
\ALT_INV_entradaB[3]~input_o\ <= NOT \entradaB[3]~input_o\;
\ALT_INV_entradaA[3]~input_o\ <= NOT \entradaA[3]~input_o\;
\ALT_INV_entradaB[4]~input_o\ <= NOT \entradaB[4]~input_o\;
\ALT_INV_entradaA[4]~input_o\ <= NOT \entradaA[4]~input_o\;
\ALT_INV_entradaB[5]~input_o\ <= NOT \entradaB[5]~input_o\;
\ALT_INV_entradaA[5]~input_o\ <= NOT \entradaA[5]~input_o\;
\ALT_INV_entradaB[6]~input_o\ <= NOT \entradaB[6]~input_o\;
\ALT_INV_entradaA[6]~input_o\ <= NOT \entradaA[6]~input_o\;
\ALT_INV_entradaB[7]~input_o\ <= NOT \entradaB[7]~input_o\;
\ALT_INV_entradaA[7]~input_o\ <= NOT \entradaA[7]~input_o\;
\ALT_INV_entradaB[8]~input_o\ <= NOT \entradaB[8]~input_o\;
\ALT_INV_entradaA[8]~input_o\ <= NOT \entradaA[8]~input_o\;
\ALT_INV_entradaB[9]~input_o\ <= NOT \entradaB[9]~input_o\;
\ALT_INV_entradaA[9]~input_o\ <= NOT \entradaA[9]~input_o\;
\ALT_INV_entradaB[10]~input_o\ <= NOT \entradaB[10]~input_o\;
\ALT_INV_entradaA[10]~input_o\ <= NOT \entradaA[10]~input_o\;
\ALT_INV_entradaB[11]~input_o\ <= NOT \entradaB[11]~input_o\;
\ALT_INV_entradaA[11]~input_o\ <= NOT \entradaA[11]~input_o\;
\ALT_INV_entradaB[12]~input_o\ <= NOT \entradaB[12]~input_o\;
\ALT_INV_entradaA[12]~input_o\ <= NOT \entradaA[12]~input_o\;
\ALT_INV_entradaB[13]~input_o\ <= NOT \entradaB[13]~input_o\;
\ALT_INV_entradaA[13]~input_o\ <= NOT \entradaA[13]~input_o\;
\ALT_INV_entradaB[14]~input_o\ <= NOT \entradaB[14]~input_o\;
\ALT_INV_entradaA[14]~input_o\ <= NOT \entradaA[14]~input_o\;
\ALT_INV_entradaB[15]~input_o\ <= NOT \entradaB[15]~input_o\;
\ALT_INV_entradaA[15]~input_o\ <= NOT \entradaA[15]~input_o\;
\ALT_INV_entradaB[16]~input_o\ <= NOT \entradaB[16]~input_o\;
\ALT_INV_entradaA[16]~input_o\ <= NOT \entradaA[16]~input_o\;
\ALT_INV_entradaB[17]~input_o\ <= NOT \entradaB[17]~input_o\;
\ALT_INV_entradaA[17]~input_o\ <= NOT \entradaA[17]~input_o\;
\ALT_INV_entradaB[18]~input_o\ <= NOT \entradaB[18]~input_o\;
\ALT_INV_entradaA[18]~input_o\ <= NOT \entradaA[18]~input_o\;
\ALT_INV_entradaB[19]~input_o\ <= NOT \entradaB[19]~input_o\;
\ALT_INV_entradaA[19]~input_o\ <= NOT \entradaA[19]~input_o\;
\ALT_INV_entradaB[20]~input_o\ <= NOT \entradaB[20]~input_o\;
\ALT_INV_entradaA[20]~input_o\ <= NOT \entradaA[20]~input_o\;
\ALT_INV_entradaB[21]~input_o\ <= NOT \entradaB[21]~input_o\;
\ALT_INV_entradaA[21]~input_o\ <= NOT \entradaA[21]~input_o\;
\ALT_INV_entradaB[22]~input_o\ <= NOT \entradaB[22]~input_o\;
\ALT_INV_entradaA[22]~input_o\ <= NOT \entradaA[22]~input_o\;
\ALT_INV_entradaB[23]~input_o\ <= NOT \entradaB[23]~input_o\;
\ALT_INV_entradaA[23]~input_o\ <= NOT \entradaA[23]~input_o\;
\ALT_INV_entradaB[24]~input_o\ <= NOT \entradaB[24]~input_o\;
\ALT_INV_entradaA[24]~input_o\ <= NOT \entradaA[24]~input_o\;
\ALT_INV_entradaB[25]~input_o\ <= NOT \entradaB[25]~input_o\;
\ALT_INV_entradaA[25]~input_o\ <= NOT \entradaA[25]~input_o\;
\ALT_INV_entradaB[26]~input_o\ <= NOT \entradaB[26]~input_o\;
\ALT_INV_entradaA[26]~input_o\ <= NOT \entradaA[26]~input_o\;
\ALT_INV_entradaB[27]~input_o\ <= NOT \entradaB[27]~input_o\;
\ALT_INV_entradaA[27]~input_o\ <= NOT \entradaA[27]~input_o\;
\ALT_INV_entradaB[28]~input_o\ <= NOT \entradaB[28]~input_o\;
\ALT_INV_entradaA[28]~input_o\ <= NOT \entradaA[28]~input_o\;
\ALT_INV_entradaB[29]~input_o\ <= NOT \entradaB[29]~input_o\;
\ALT_INV_entradaA[29]~input_o\ <= NOT \entradaA[29]~input_o\;
\ALT_INV_entradaB[30]~input_o\ <= NOT \entradaB[30]~input_o\;
\ALT_INV_inverte_B~input_o\ <= NOT \inverte_B~input_o\;
\ALT_INV_entradaA[30]~input_o\ <= NOT \entradaA[30]~input_o\;
\ULA5|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA5|MuxEntradaB|saida_MUX~0_combout\;
\ULA6|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA6|MuxEntradaB|saida_MUX~0_combout\;
\ULA7|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA7|MuxEntradaB|saida_MUX~0_combout\;
\ULA8|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA8|MuxEntradaB|saida_MUX~0_combout\;
\ULA9|somador|ALT_INV_cOut~0_combout\ <= NOT \ULA9|somador|cOut~0_combout\;
\ULA10|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA10|MuxEntradaB|saida_MUX~0_combout\;
\ULA11|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA11|MuxEntradaB|saida_MUX~0_combout\;
\ULA12|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA12|MuxEntradaB|saida_MUX~0_combout\;
\ULA13|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA13|MuxEntradaB|saida_MUX~0_combout\;
\ULA14|somador|ALT_INV_cOut~0_combout\ <= NOT \ULA14|somador|cOut~0_combout\;
\ULA14|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA14|MuxEntradaB|saida_MUX~0_combout\;
\ULA15|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA15|MuxEntradaB|saida_MUX~0_combout\;
\ULA16|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA16|MuxEntradaB|saida_MUX~0_combout\;
\ULA17|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA17|MuxEntradaB|saida_MUX~0_combout\;
\ULA18|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA18|MuxEntradaB|saida_MUX~0_combout\;
\ULA19|somador|ALT_INV_cOut~0_combout\ <= NOT \ULA19|somador|cOut~0_combout\;
\ULA19|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA19|MuxEntradaB|saida_MUX~0_combout\;
\ULA20|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA20|MuxEntradaB|saida_MUX~0_combout\;
\ULA21|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA21|MuxEntradaB|saida_MUX~0_combout\;
\ULA22|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA22|MuxEntradaB|saida_MUX~0_combout\;
\ULA23|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA23|MuxEntradaB|saida_MUX~0_combout\;
\ULA24|somador|ALT_INV_cOut~0_combout\ <= NOT \ULA24|somador|cOut~0_combout\;
\ULA24|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA24|MuxEntradaB|saida_MUX~0_combout\;
\ULA25|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA25|MuxEntradaB|saida_MUX~0_combout\;
\ULA26|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA26|MuxEntradaB|saida_MUX~0_combout\;
\ULA27|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA27|MuxEntradaB|saida_MUX~0_combout\;
\ULA28|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA28|MuxEntradaB|saida_MUX~0_combout\;
\ULA29|somador|ALT_INV_cOut~0_combout\ <= NOT \ULA29|somador|cOut~0_combout\;
\ULA29|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA29|MuxEntradaB|saida_MUX~0_combout\;
\ULA30|MuxEntradaB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA30|MuxEntradaB|saida_MUX~0_combout\;

\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA0|MuxSaida|saida_MUX~3_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA2|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA3|MuxSaida|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA4|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA5|MuxSaida|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA6|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA7|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

\saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA8|MuxSaida|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \saida[8]~output_o\);

\saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA9|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[9]~output_o\);

\saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA10|MuxSaida|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \saida[10]~output_o\);

\saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA11|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[11]~output_o\);

\saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA12|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[12]~output_o\);

\saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA13|MuxSaida|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \saida[13]~output_o\);

\saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA14|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[14]~output_o\);

\saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA15|MuxSaida|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \saida[15]~output_o\);

\saida[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA16|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[16]~output_o\);

\saida[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA17|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[17]~output_o\);

\saida[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA18|MuxSaida|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \saida[18]~output_o\);

\saida[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA19|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[19]~output_o\);

\saida[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA20|MuxSaida|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \saida[20]~output_o\);

\saida[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA21|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[21]~output_o\);

\saida[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA22|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[22]~output_o\);

\saida[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA23|MuxSaida|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \saida[23]~output_o\);

\saida[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA24|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[24]~output_o\);

\saida[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA25|MuxSaida|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \saida[25]~output_o\);

\saida[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA26|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[26]~output_o\);

\saida[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA27|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[27]~output_o\);

\saida[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA28|MuxSaida|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \saida[28]~output_o\);

\saida[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA29|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[29]~output_o\);

\saida[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA30|MuxSaida|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \saida[30]~output_o\);

\saida[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA31|MuxSaida|saida_MUX~2_combout\,
	devoe => ww_devoe,
	o => \saida[31]~output_o\);

\flagZero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~8_combout\,
	devoe => ww_devoe,
	o => \flagZero~output_o\);

\entradaA[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(30),
	o => \entradaA[30]~input_o\);

\inverte_B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inverte_B,
	o => \inverte_B~input_o\);

\entradaB[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(30),
	o => \entradaB[30]~input_o\);

\ULA30|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[30]~input_o\,
	combout => \ULA30|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(29),
	o => \entradaA[29]~input_o\);

\entradaB[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(29),
	o => \entradaB[29]~input_o\);

\ULA29|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[29]~input_o\,
	combout => \ULA29|MuxEntradaB|saida_MUX~0_combout\);

\ULA29|somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|somador|cOut~0_combout\ = (\entradaA[29]~input_o\ & \ULA29|MuxEntradaB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[29]~input_o\,
	datab => \ULA29|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA29|somador|cOut~0_combout\);

\entradaA[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(28),
	o => \entradaA[28]~input_o\);

\entradaB[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(28),
	o => \entradaB[28]~input_o\);

\ULA28|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[28]~input_o\,
	combout => \ULA28|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(27),
	o => \entradaA[27]~input_o\);

\entradaB[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(27),
	o => \entradaB[27]~input_o\);

\ULA27|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA27|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[27]~input_o\,
	combout => \ULA27|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(26),
	o => \entradaA[26]~input_o\);

\entradaB[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(26),
	o => \entradaB[26]~input_o\);

\ULA26|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[26]~input_o\,
	combout => \ULA26|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(25),
	o => \entradaA[25]~input_o\);

\entradaB[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(25),
	o => \entradaB[25]~input_o\);

\ULA25|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[25]~input_o\,
	combout => \ULA25|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(24),
	o => \entradaA[24]~input_o\);

\entradaB[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(24),
	o => \entradaB[24]~input_o\);

\ULA24|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[24]~input_o\,
	combout => \ULA24|MuxEntradaB|saida_MUX~0_combout\);

\ULA24|somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|somador|cOut~0_combout\ = (\entradaA[24]~input_o\ & \ULA24|MuxEntradaB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[24]~input_o\,
	datab => \ULA24|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA24|somador|cOut~0_combout\);

\entradaA[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(23),
	o => \entradaA[23]~input_o\);

\entradaB[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(23),
	o => \entradaB[23]~input_o\);

\ULA23|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[23]~input_o\,
	combout => \ULA23|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(22),
	o => \entradaA[22]~input_o\);

\entradaB[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(22),
	o => \entradaB[22]~input_o\);

\ULA22|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA22|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[22]~input_o\,
	combout => \ULA22|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(21),
	o => \entradaA[21]~input_o\);

\entradaB[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(21),
	o => \entradaB[21]~input_o\);

\ULA21|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[21]~input_o\,
	combout => \ULA21|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(20),
	o => \entradaA[20]~input_o\);

\entradaB[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(20),
	o => \entradaB[20]~input_o\);

\ULA20|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[20]~input_o\,
	combout => \ULA20|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(19),
	o => \entradaA[19]~input_o\);

\entradaB[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(19),
	o => \entradaB[19]~input_o\);

\ULA19|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[19]~input_o\,
	combout => \ULA19|MuxEntradaB|saida_MUX~0_combout\);

\ULA19|somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|somador|cOut~0_combout\ = (\entradaA[19]~input_o\ & \ULA19|MuxEntradaB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[19]~input_o\,
	datab => \ULA19|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA19|somador|cOut~0_combout\);

\entradaA[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(18),
	o => \entradaA[18]~input_o\);

\entradaB[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(18),
	o => \entradaB[18]~input_o\);

\ULA18|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[18]~input_o\,
	combout => \ULA18|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(17),
	o => \entradaA[17]~input_o\);

\entradaB[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(17),
	o => \entradaB[17]~input_o\);

\ULA17|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA17|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[17]~input_o\,
	combout => \ULA17|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(16),
	o => \entradaA[16]~input_o\);

\entradaB[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(16),
	o => \entradaB[16]~input_o\);

\ULA16|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[16]~input_o\,
	combout => \ULA16|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(15),
	o => \entradaA[15]~input_o\);

\entradaB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(15),
	o => \entradaB[15]~input_o\);

\ULA15|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[15]~input_o\,
	combout => \ULA15|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(14),
	o => \entradaA[14]~input_o\);

\entradaB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(14),
	o => \entradaB[14]~input_o\);

\ULA14|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[14]~input_o\,
	combout => \ULA14|MuxEntradaB|saida_MUX~0_combout\);

\ULA14|somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|somador|cOut~0_combout\ = (\entradaA[14]~input_o\ & \ULA14|MuxEntradaB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[14]~input_o\,
	datab => \ULA14|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA14|somador|cOut~0_combout\);

\entradaA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(13),
	o => \entradaA[13]~input_o\);

\entradaB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(13),
	o => \entradaB[13]~input_o\);

\ULA13|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[13]~input_o\,
	combout => \ULA13|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(12),
	o => \entradaA[12]~input_o\);

\entradaB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(12),
	o => \entradaB[12]~input_o\);

\ULA12|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA12|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[12]~input_o\,
	combout => \ULA12|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(11),
	o => \entradaA[11]~input_o\);

\entradaB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(11),
	o => \entradaB[11]~input_o\);

\ULA11|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[11]~input_o\,
	combout => \ULA11|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(10),
	o => \entradaA[10]~input_o\);

\entradaB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(10),
	o => \entradaB[10]~input_o\);

\ULA10|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[10]~input_o\,
	combout => \ULA10|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(9),
	o => \entradaA[9]~input_o\);

\entradaB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(9),
	o => \entradaB[9]~input_o\);

\ULA9|somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|somador|cOut~0_combout\ = (\entradaA[9]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaB[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaA[9]~input_o\,
	datac => \ALT_INV_entradaB[9]~input_o\,
	combout => \ULA9|somador|cOut~0_combout\);

\entradaA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(8),
	o => \entradaA[8]~input_o\);

\entradaB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(8),
	o => \entradaB[8]~input_o\);

\ULA8|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[8]~input_o\,
	combout => \ULA8|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(7),
	o => \entradaA[7]~input_o\);

\entradaB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(7),
	o => \entradaB[7]~input_o\);

\ULA7|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[7]~input_o\,
	combout => \ULA7|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(6),
	o => \entradaA[6]~input_o\);

\entradaB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(6),
	o => \entradaB[6]~input_o\);

\ULA6|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[6]~input_o\,
	combout => \ULA6|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(5),
	o => \entradaA[5]~input_o\);

\entradaB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(5),
	o => \entradaB[5]~input_o\);

\ULA5|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[5]~input_o\,
	combout => \ULA5|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(4),
	o => \entradaA[4]~input_o\);

\entradaB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(4),
	o => \entradaB[4]~input_o\);

\ULA4|somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|somador|cOut~0_combout\ = (\entradaA[4]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaB[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaA[4]~input_o\,
	datac => \ALT_INV_entradaB[4]~input_o\,
	combout => \ULA4|somador|cOut~0_combout\);

\entradaA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(3),
	o => \entradaA[3]~input_o\);

\entradaB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(3),
	o => \entradaB[3]~input_o\);

\ULA3|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA3|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[3]~input_o\,
	combout => \ULA3|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(2),
	o => \entradaA[2]~input_o\);

\entradaB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(2),
	o => \entradaB[2]~input_o\);

\ULA2|MuxEntradaB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|MuxEntradaB|saida_MUX~0_combout\ = !\inverte_B~input_o\ $ (!\entradaB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaB[2]~input_o\,
	combout => \ULA2|MuxEntradaB|saida_MUX~0_combout\);

\entradaA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(1),
	o => \entradaA[1]~input_o\);

\entradaB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(1),
	o => \entradaB[1]~input_o\);

\entradaB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(0),
	o => \entradaB[0]~input_o\);

\entradaA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(0),
	o => \entradaA[0]~input_o\);

\ULA1|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|somador|cOut~combout\ = ( \entradaA[0]~input_o\ & ( (!\entradaB[1]~input_o\ & (((\entradaA[1]~input_o\ & \entradaB[0]~input_o\)) # (\inverte_B~input_o\))) # (\entradaB[1]~input_o\ & (((!\inverte_B~input_o\ & \entradaB[0]~input_o\)) # 
-- (\entradaA[1]~input_o\))) ) ) # ( !\entradaA[0]~input_o\ & ( (!\entradaB[1]~input_o\ & (\inverte_B~input_o\ & ((!\entradaB[0]~input_o\) # (\entradaA[1]~input_o\)))) # (\entradaB[1]~input_o\ & (\entradaA[1]~input_o\ & ((!\inverte_B~input_o\) # 
-- (!\entradaB[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100010010010100110111101101010011000100100101001101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaA[1]~input_o\,
	datac => \ALT_INV_entradaB[1]~input_o\,
	datad => \ALT_INV_entradaB[0]~input_o\,
	datae => \ALT_INV_entradaA[0]~input_o\,
	combout => \ULA1|somador|cOut~combout\);

\ULA4|somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|somador|saida~0_combout\ = !\inverte_B~input_o\ $ (!\entradaA[4]~input_o\ $ (\entradaB[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaA[4]~input_o\,
	datac => \ALT_INV_entradaB[4]~input_o\,
	combout => \ULA4|somador|saida~0_combout\);

\ULA4|somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|somador|cOut~1_combout\ = ( \ULA1|somador|cOut~combout\ & ( \ULA4|somador|saida~0_combout\ & ( (!\entradaA[3]~input_o\ & (\ULA3|MuxEntradaB|saida_MUX~0_combout\ & ((\ULA2|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[2]~input_o\)))) # 
-- (\entradaA[3]~input_o\ & (((\ULA2|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[2]~input_o\)) # (\ULA3|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( !\ULA1|somador|cOut~combout\ & ( \ULA4|somador|saida~0_combout\ & ( (!\entradaA[3]~input_o\ & 
-- (\ULA3|MuxEntradaB|saida_MUX~0_combout\ & (\entradaA[2]~input_o\ & \ULA2|MuxEntradaB|saida_MUX~0_combout\))) # (\entradaA[3]~input_o\ & (((\entradaA[2]~input_o\ & \ULA2|MuxEntradaB|saida_MUX~0_combout\)) # (\ULA3|MuxEntradaB|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[3]~input_o\,
	datab => \ULA3|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[2]~input_o\,
	datad => \ULA2|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|somador|ALT_INV_cOut~combout\,
	dataf => \ULA4|somador|ALT_INV_saida~0_combout\,
	combout => \ULA4|somador|cOut~1_combout\);

\ULA6|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|somador|cOut~combout\ = ( \ULA4|somador|cOut~0_combout\ & ( \ULA4|somador|cOut~1_combout\ & ( (!\entradaA[6]~input_o\ & ((!\ULA6|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[5]~input_o\ & !\ULA5|MuxEntradaB|saida_MUX~0_combout\)))) # 
-- (\entradaA[6]~input_o\ & (!\ULA6|MuxEntradaB|saida_MUX~0_combout\ & (!\entradaA[5]~input_o\ & !\ULA5|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( !\ULA4|somador|cOut~0_combout\ & ( \ULA4|somador|cOut~1_combout\ & ( (!\entradaA[6]~input_o\ & 
-- ((!\ULA6|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[5]~input_o\ & !\ULA5|MuxEntradaB|saida_MUX~0_combout\)))) # (\entradaA[6]~input_o\ & (!\ULA6|MuxEntradaB|saida_MUX~0_combout\ & (!\entradaA[5]~input_o\ & !\ULA5|MuxEntradaB|saida_MUX~0_combout\))) 
-- ) ) ) # ( \ULA4|somador|cOut~0_combout\ & ( !\ULA4|somador|cOut~1_combout\ & ( (!\entradaA[6]~input_o\ & ((!\ULA6|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[5]~input_o\ & !\ULA5|MuxEntradaB|saida_MUX~0_combout\)))) # (\entradaA[6]~input_o\ & 
-- (!\ULA6|MuxEntradaB|saida_MUX~0_combout\ & (!\entradaA[5]~input_o\ & !\ULA5|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( !\ULA4|somador|cOut~0_combout\ & ( !\ULA4|somador|cOut~1_combout\ & ( (!\entradaA[6]~input_o\ & 
-- ((!\ULA6|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[5]~input_o\) # (!\ULA5|MuxEntradaB|saida_MUX~0_combout\)))) # (\entradaA[6]~input_o\ & (!\ULA6|MuxEntradaB|saida_MUX~0_combout\ & ((!\entradaA[5]~input_o\) # 
-- (!\ULA5|MuxEntradaB|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[6]~input_o\,
	datab => \ULA6|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[5]~input_o\,
	datad => \ULA5|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA4|somador|ALT_INV_cOut~0_combout\,
	dataf => \ULA4|somador|ALT_INV_cOut~1_combout\,
	combout => \ULA6|somador|cOut~combout\);

\ULA9|somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|somador|saida~0_combout\ = !\inverte_B~input_o\ $ (!\entradaA[9]~input_o\ $ (\entradaB[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaA[9]~input_o\,
	datac => \ALT_INV_entradaB[9]~input_o\,
	combout => \ULA9|somador|saida~0_combout\);

\ULA9|somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|somador|cOut~1_combout\ = ( \ULA6|somador|cOut~combout\ & ( \ULA9|somador|saida~0_combout\ & ( (!\entradaA[8]~input_o\ & (\ULA8|MuxEntradaB|saida_MUX~0_combout\ & (\entradaA[7]~input_o\ & \ULA7|MuxEntradaB|saida_MUX~0_combout\))) # 
-- (\entradaA[8]~input_o\ & (((\entradaA[7]~input_o\ & \ULA7|MuxEntradaB|saida_MUX~0_combout\)) # (\ULA8|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( !\ULA6|somador|cOut~combout\ & ( \ULA9|somador|saida~0_combout\ & ( (!\entradaA[8]~input_o\ & 
-- (\ULA8|MuxEntradaB|saida_MUX~0_combout\ & ((\ULA7|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[7]~input_o\)))) # (\entradaA[8]~input_o\ & (((\ULA7|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[7]~input_o\)) # (\ULA8|MuxEntradaB|saida_MUX~0_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[8]~input_o\,
	datab => \ULA8|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[7]~input_o\,
	datad => \ULA7|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA6|somador|ALT_INV_cOut~combout\,
	dataf => \ULA9|somador|ALT_INV_saida~0_combout\,
	combout => \ULA9|somador|cOut~1_combout\);

\ULA11|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|somador|cOut~combout\ = ( \ULA9|somador|cOut~0_combout\ & ( \ULA9|somador|cOut~1_combout\ & ( (!\entradaA[11]~input_o\ & ((!\ULA11|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[10]~input_o\ & !\ULA10|MuxEntradaB|saida_MUX~0_combout\)))) # 
-- (\entradaA[11]~input_o\ & (!\ULA11|MuxEntradaB|saida_MUX~0_combout\ & (!\entradaA[10]~input_o\ & !\ULA10|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( !\ULA9|somador|cOut~0_combout\ & ( \ULA9|somador|cOut~1_combout\ & ( (!\entradaA[11]~input_o\ & 
-- ((!\ULA11|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[10]~input_o\ & !\ULA10|MuxEntradaB|saida_MUX~0_combout\)))) # (\entradaA[11]~input_o\ & (!\ULA11|MuxEntradaB|saida_MUX~0_combout\ & (!\entradaA[10]~input_o\ & 
-- !\ULA10|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( \ULA9|somador|cOut~0_combout\ & ( !\ULA9|somador|cOut~1_combout\ & ( (!\entradaA[11]~input_o\ & ((!\ULA11|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[10]~input_o\ & 
-- !\ULA10|MuxEntradaB|saida_MUX~0_combout\)))) # (\entradaA[11]~input_o\ & (!\ULA11|MuxEntradaB|saida_MUX~0_combout\ & (!\entradaA[10]~input_o\ & !\ULA10|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( !\ULA9|somador|cOut~0_combout\ & ( 
-- !\ULA9|somador|cOut~1_combout\ & ( (!\entradaA[11]~input_o\ & ((!\ULA11|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[10]~input_o\) # (!\ULA10|MuxEntradaB|saida_MUX~0_combout\)))) # (\entradaA[11]~input_o\ & (!\ULA11|MuxEntradaB|saida_MUX~0_combout\ & 
-- ((!\entradaA[10]~input_o\) # (!\ULA10|MuxEntradaB|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[11]~input_o\,
	datab => \ULA11|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[10]~input_o\,
	datad => \ULA10|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA9|somador|ALT_INV_cOut~0_combout\,
	dataf => \ULA9|somador|ALT_INV_cOut~1_combout\,
	combout => \ULA11|somador|cOut~combout\);

\ULA14|somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|somador|saida~0_combout\ = !\entradaA[14]~input_o\ $ (!\ULA14|MuxEntradaB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[14]~input_o\,
	datab => \ULA14|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA14|somador|saida~0_combout\);

\ULA14|somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|somador|cOut~1_combout\ = ( \ULA11|somador|cOut~combout\ & ( \ULA14|somador|saida~0_combout\ & ( (!\entradaA[13]~input_o\ & (\ULA13|MuxEntradaB|saida_MUX~0_combout\ & (\entradaA[12]~input_o\ & \ULA12|MuxEntradaB|saida_MUX~0_combout\))) # 
-- (\entradaA[13]~input_o\ & (((\entradaA[12]~input_o\ & \ULA12|MuxEntradaB|saida_MUX~0_combout\)) # (\ULA13|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( !\ULA11|somador|cOut~combout\ & ( \ULA14|somador|saida~0_combout\ & ( (!\entradaA[13]~input_o\ & 
-- (\ULA13|MuxEntradaB|saida_MUX~0_combout\ & ((\ULA12|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[12]~input_o\)))) # (\entradaA[13]~input_o\ & (((\ULA12|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[12]~input_o\)) # 
-- (\ULA13|MuxEntradaB|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[13]~input_o\,
	datab => \ULA13|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[12]~input_o\,
	datad => \ULA12|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA11|somador|ALT_INV_cOut~combout\,
	dataf => \ULA14|somador|ALT_INV_saida~0_combout\,
	combout => \ULA14|somador|cOut~1_combout\);

\ULA16|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|somador|cOut~combout\ = ( \ULA14|somador|cOut~0_combout\ & ( \ULA14|somador|cOut~1_combout\ & ( (!\entradaA[16]~input_o\ & ((!\ULA16|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[15]~input_o\ & !\ULA15|MuxEntradaB|saida_MUX~0_combout\)))) # 
-- (\entradaA[16]~input_o\ & (!\ULA16|MuxEntradaB|saida_MUX~0_combout\ & (!\entradaA[15]~input_o\ & !\ULA15|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( !\ULA14|somador|cOut~0_combout\ & ( \ULA14|somador|cOut~1_combout\ & ( (!\entradaA[16]~input_o\ & 
-- ((!\ULA16|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[15]~input_o\ & !\ULA15|MuxEntradaB|saida_MUX~0_combout\)))) # (\entradaA[16]~input_o\ & (!\ULA16|MuxEntradaB|saida_MUX~0_combout\ & (!\entradaA[15]~input_o\ & 
-- !\ULA15|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( \ULA14|somador|cOut~0_combout\ & ( !\ULA14|somador|cOut~1_combout\ & ( (!\entradaA[16]~input_o\ & ((!\ULA16|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[15]~input_o\ & 
-- !\ULA15|MuxEntradaB|saida_MUX~0_combout\)))) # (\entradaA[16]~input_o\ & (!\ULA16|MuxEntradaB|saida_MUX~0_combout\ & (!\entradaA[15]~input_o\ & !\ULA15|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( !\ULA14|somador|cOut~0_combout\ & ( 
-- !\ULA14|somador|cOut~1_combout\ & ( (!\entradaA[16]~input_o\ & ((!\ULA16|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[15]~input_o\) # (!\ULA15|MuxEntradaB|saida_MUX~0_combout\)))) # (\entradaA[16]~input_o\ & (!\ULA16|MuxEntradaB|saida_MUX~0_combout\ & 
-- ((!\entradaA[15]~input_o\) # (!\ULA15|MuxEntradaB|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[16]~input_o\,
	datab => \ULA16|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[15]~input_o\,
	datad => \ULA15|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA14|somador|ALT_INV_cOut~0_combout\,
	dataf => \ULA14|somador|ALT_INV_cOut~1_combout\,
	combout => \ULA16|somador|cOut~combout\);

\ULA19|somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|somador|saida~0_combout\ = !\entradaA[19]~input_o\ $ (!\ULA19|MuxEntradaB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[19]~input_o\,
	datab => \ULA19|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA19|somador|saida~0_combout\);

\ULA19|somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|somador|cOut~1_combout\ = ( \ULA16|somador|cOut~combout\ & ( \ULA19|somador|saida~0_combout\ & ( (!\entradaA[18]~input_o\ & (\ULA18|MuxEntradaB|saida_MUX~0_combout\ & (\entradaA[17]~input_o\ & \ULA17|MuxEntradaB|saida_MUX~0_combout\))) # 
-- (\entradaA[18]~input_o\ & (((\entradaA[17]~input_o\ & \ULA17|MuxEntradaB|saida_MUX~0_combout\)) # (\ULA18|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( !\ULA16|somador|cOut~combout\ & ( \ULA19|somador|saida~0_combout\ & ( (!\entradaA[18]~input_o\ & 
-- (\ULA18|MuxEntradaB|saida_MUX~0_combout\ & ((\ULA17|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[17]~input_o\)))) # (\entradaA[18]~input_o\ & (((\ULA17|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[17]~input_o\)) # 
-- (\ULA18|MuxEntradaB|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[18]~input_o\,
	datab => \ULA18|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[17]~input_o\,
	datad => \ULA17|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA16|somador|ALT_INV_cOut~combout\,
	dataf => \ULA19|somador|ALT_INV_saida~0_combout\,
	combout => \ULA19|somador|cOut~1_combout\);

\ULA21|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|somador|cOut~combout\ = ( \ULA19|somador|cOut~0_combout\ & ( \ULA19|somador|cOut~1_combout\ & ( (!\entradaA[21]~input_o\ & ((!\ULA21|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[20]~input_o\ & !\ULA20|MuxEntradaB|saida_MUX~0_combout\)))) # 
-- (\entradaA[21]~input_o\ & (!\ULA21|MuxEntradaB|saida_MUX~0_combout\ & (!\entradaA[20]~input_o\ & !\ULA20|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( !\ULA19|somador|cOut~0_combout\ & ( \ULA19|somador|cOut~1_combout\ & ( (!\entradaA[21]~input_o\ & 
-- ((!\ULA21|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[20]~input_o\ & !\ULA20|MuxEntradaB|saida_MUX~0_combout\)))) # (\entradaA[21]~input_o\ & (!\ULA21|MuxEntradaB|saida_MUX~0_combout\ & (!\entradaA[20]~input_o\ & 
-- !\ULA20|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( \ULA19|somador|cOut~0_combout\ & ( !\ULA19|somador|cOut~1_combout\ & ( (!\entradaA[21]~input_o\ & ((!\ULA21|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[20]~input_o\ & 
-- !\ULA20|MuxEntradaB|saida_MUX~0_combout\)))) # (\entradaA[21]~input_o\ & (!\ULA21|MuxEntradaB|saida_MUX~0_combout\ & (!\entradaA[20]~input_o\ & !\ULA20|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( !\ULA19|somador|cOut~0_combout\ & ( 
-- !\ULA19|somador|cOut~1_combout\ & ( (!\entradaA[21]~input_o\ & ((!\ULA21|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[20]~input_o\) # (!\ULA20|MuxEntradaB|saida_MUX~0_combout\)))) # (\entradaA[21]~input_o\ & (!\ULA21|MuxEntradaB|saida_MUX~0_combout\ & 
-- ((!\entradaA[20]~input_o\) # (!\ULA20|MuxEntradaB|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[21]~input_o\,
	datab => \ULA21|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[20]~input_o\,
	datad => \ULA20|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA19|somador|ALT_INV_cOut~0_combout\,
	dataf => \ULA19|somador|ALT_INV_cOut~1_combout\,
	combout => \ULA21|somador|cOut~combout\);

\ULA24|somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|somador|saida~0_combout\ = !\entradaA[24]~input_o\ $ (!\ULA24|MuxEntradaB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[24]~input_o\,
	datab => \ULA24|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA24|somador|saida~0_combout\);

\ULA24|somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|somador|cOut~1_combout\ = ( \ULA21|somador|cOut~combout\ & ( \ULA24|somador|saida~0_combout\ & ( (!\entradaA[23]~input_o\ & (\ULA23|MuxEntradaB|saida_MUX~0_combout\ & (\entradaA[22]~input_o\ & \ULA22|MuxEntradaB|saida_MUX~0_combout\))) # 
-- (\entradaA[23]~input_o\ & (((\entradaA[22]~input_o\ & \ULA22|MuxEntradaB|saida_MUX~0_combout\)) # (\ULA23|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( !\ULA21|somador|cOut~combout\ & ( \ULA24|somador|saida~0_combout\ & ( (!\entradaA[23]~input_o\ & 
-- (\ULA23|MuxEntradaB|saida_MUX~0_combout\ & ((\ULA22|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[22]~input_o\)))) # (\entradaA[23]~input_o\ & (((\ULA22|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[22]~input_o\)) # 
-- (\ULA23|MuxEntradaB|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[23]~input_o\,
	datab => \ULA23|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[22]~input_o\,
	datad => \ULA22|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA21|somador|ALT_INV_cOut~combout\,
	dataf => \ULA24|somador|ALT_INV_saida~0_combout\,
	combout => \ULA24|somador|cOut~1_combout\);

\ULA26|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|somador|cOut~combout\ = ( \ULA24|somador|cOut~0_combout\ & ( \ULA24|somador|cOut~1_combout\ & ( (!\entradaA[26]~input_o\ & ((!\ULA26|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[25]~input_o\ & !\ULA25|MuxEntradaB|saida_MUX~0_combout\)))) # 
-- (\entradaA[26]~input_o\ & (!\ULA26|MuxEntradaB|saida_MUX~0_combout\ & (!\entradaA[25]~input_o\ & !\ULA25|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( !\ULA24|somador|cOut~0_combout\ & ( \ULA24|somador|cOut~1_combout\ & ( (!\entradaA[26]~input_o\ & 
-- ((!\ULA26|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[25]~input_o\ & !\ULA25|MuxEntradaB|saida_MUX~0_combout\)))) # (\entradaA[26]~input_o\ & (!\ULA26|MuxEntradaB|saida_MUX~0_combout\ & (!\entradaA[25]~input_o\ & 
-- !\ULA25|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( \ULA24|somador|cOut~0_combout\ & ( !\ULA24|somador|cOut~1_combout\ & ( (!\entradaA[26]~input_o\ & ((!\ULA26|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[25]~input_o\ & 
-- !\ULA25|MuxEntradaB|saida_MUX~0_combout\)))) # (\entradaA[26]~input_o\ & (!\ULA26|MuxEntradaB|saida_MUX~0_combout\ & (!\entradaA[25]~input_o\ & !\ULA25|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( !\ULA24|somador|cOut~0_combout\ & ( 
-- !\ULA24|somador|cOut~1_combout\ & ( (!\entradaA[26]~input_o\ & ((!\ULA26|MuxEntradaB|saida_MUX~0_combout\) # ((!\entradaA[25]~input_o\) # (!\ULA25|MuxEntradaB|saida_MUX~0_combout\)))) # (\entradaA[26]~input_o\ & (!\ULA26|MuxEntradaB|saida_MUX~0_combout\ & 
-- ((!\entradaA[25]~input_o\) # (!\ULA25|MuxEntradaB|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[26]~input_o\,
	datab => \ULA26|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[25]~input_o\,
	datad => \ULA25|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA24|somador|ALT_INV_cOut~0_combout\,
	dataf => \ULA24|somador|ALT_INV_cOut~1_combout\,
	combout => \ULA26|somador|cOut~combout\);

\ULA29|somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|somador|saida~0_combout\ = !\entradaA[29]~input_o\ $ (!\ULA29|MuxEntradaB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[29]~input_o\,
	datab => \ULA29|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA29|somador|saida~0_combout\);

\ULA29|somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|somador|cOut~1_combout\ = ( \ULA26|somador|cOut~combout\ & ( \ULA29|somador|saida~0_combout\ & ( (!\entradaA[28]~input_o\ & (\ULA28|MuxEntradaB|saida_MUX~0_combout\ & (\entradaA[27]~input_o\ & \ULA27|MuxEntradaB|saida_MUX~0_combout\))) # 
-- (\entradaA[28]~input_o\ & (((\entradaA[27]~input_o\ & \ULA27|MuxEntradaB|saida_MUX~0_combout\)) # (\ULA28|MuxEntradaB|saida_MUX~0_combout\))) ) ) ) # ( !\ULA26|somador|cOut~combout\ & ( \ULA29|somador|saida~0_combout\ & ( (!\entradaA[28]~input_o\ & 
-- (\ULA28|MuxEntradaB|saida_MUX~0_combout\ & ((\ULA27|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[27]~input_o\)))) # (\entradaA[28]~input_o\ & (((\ULA27|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[27]~input_o\)) # 
-- (\ULA28|MuxEntradaB|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[28]~input_o\,
	datab => \ULA28|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[27]~input_o\,
	datad => \ULA27|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA26|somador|ALT_INV_cOut~combout\,
	dataf => \ULA29|somador|ALT_INV_saida~0_combout\,
	combout => \ULA29|somador|cOut~1_combout\);

\entradaA[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(31),
	o => \entradaA[31]~input_o\);

\entradaB[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(31),
	o => \entradaB[31]~input_o\);

\seletor[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(0),
	o => \seletor[0]~input_o\);

\seletor[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(1),
	o => \seletor[1]~input_o\);

\ULA0|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA0|MuxSaida|saida_MUX~0_combout\ = ( \seletor[1]~input_o\ & ( (\seletor[0]~input_o\ & ((!\entradaB[31]~input_o\ $ (!\inverte_B~input_o\)) # (\entradaA[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000111110100000000000000000000000001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[31]~input_o\,
	datab => \ALT_INV_entradaB[31]~input_o\,
	datac => \ALT_INV_inverte_B~input_o\,
	datad => \ALT_INV_seletor[0]~input_o\,
	datae => \ALT_INV_seletor[1]~input_o\,
	combout => \ULA0|MuxSaida|saida_MUX~0_combout\);

\ULA0|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA0|MuxSaida|saida_MUX~1_combout\ = (\entradaA[31]~input_o\ & (!\entradaB[31]~input_o\ $ (!\inverte_B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[31]~input_o\,
	datab => \ALT_INV_entradaB[31]~input_o\,
	datac => \ALT_INV_inverte_B~input_o\,
	combout => \ULA0|MuxSaida|saida_MUX~1_combout\);

\ULA0|MuxSaida|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA0|MuxSaida|saida_MUX~2_combout\ = ( \ULA0|MuxSaida|saida_MUX~1_combout\ & ( (!\seletor[0]~input_o\ & ((!\seletor[1]~input_o\ & (\entradaB[0]~input_o\ & \entradaA[0]~input_o\)) # (\seletor[1]~input_o\ & (!\entradaB[0]~input_o\ $ 
-- (!\entradaA[0]~input_o\))))) # (\seletor[0]~input_o\ & (((\entradaA[0]~input_o\) # (\entradaB[0]~input_o\)) # (\seletor[1]~input_o\))) ) ) # ( !\ULA0|MuxSaida|saida_MUX~1_combout\ & ( (!\entradaB[0]~input_o\ & (\entradaA[0]~input_o\ & 
-- (!\seletor[0]~input_o\ $ (!\seletor[1]~input_o\)))) # (\entradaB[0]~input_o\ & (!\seletor[1]~input_o\ $ (((!\seletor[0]~input_o\ & !\entradaA[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100000101110111110100000110011011000001011101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaB[0]~input_o\,
	datad => \ALT_INV_entradaA[0]~input_o\,
	datae => \ULA0|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA0|MuxSaida|saida_MUX~2_combout\);

\ULA0|MuxSaida|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA0|MuxSaida|saida_MUX~3_combout\ = ( \ULA0|MuxSaida|saida_MUX~0_combout\ & ( \ULA0|MuxSaida|saida_MUX~2_combout\ ) ) # ( !\ULA0|MuxSaida|saida_MUX~0_combout\ & ( \ULA0|MuxSaida|saida_MUX~2_combout\ ) ) # ( \ULA0|MuxSaida|saida_MUX~0_combout\ & ( 
-- !\ULA0|MuxSaida|saida_MUX~2_combout\ & ( (!\entradaA[30]~input_o\ & ((!\ULA30|MuxEntradaB|saida_MUX~0_combout\) # ((!\ULA29|somador|cOut~0_combout\ & !\ULA29|somador|cOut~1_combout\)))) # (\entradaA[30]~input_o\ & (!\ULA30|MuxEntradaB|saida_MUX~0_combout\ 
-- & (!\ULA29|somador|cOut~0_combout\ & !\ULA29|somador|cOut~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010001000100011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[30]~input_o\,
	datab => \ULA30|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA29|somador|ALT_INV_cOut~0_combout\,
	datad => \ULA29|somador|ALT_INV_cOut~1_combout\,
	datae => \ULA0|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA0|MuxSaida|ALT_INV_saida_MUX~2_combout\,
	combout => \ULA0|MuxSaida|saida_MUX~3_combout\);

\ULA1|somador|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|somador|saida~combout\ = ( \entradaA[0]~input_o\ & ( !\entradaA[1]~input_o\ $ (!\entradaB[1]~input_o\ $ (((!\inverte_B~input_o\ & \entradaB[0]~input_o\)))) ) ) # ( !\entradaA[0]~input_o\ & ( !\entradaA[1]~input_o\ $ (!\entradaB[1]~input_o\ $ 
-- (((\inverte_B~input_o\ & \entradaB[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111001001011000111100011010010011110010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaA[1]~input_o\,
	datac => \ALT_INV_entradaB[1]~input_o\,
	datad => \ALT_INV_entradaB[0]~input_o\,
	datae => \ALT_INV_entradaA[0]~input_o\,
	combout => \ULA1|somador|saida~combout\);

\ULA1|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|MuxSaida|saida_MUX~0_combout\ = ( \ULA1|somador|saida~combout\ & ( (!\seletor[0]~input_o\ & (((\entradaA[1]~input_o\ & \entradaB[1]~input_o\)) # (\seletor[1]~input_o\))) # (\seletor[0]~input_o\ & (!\seletor[1]~input_o\ & ((\entradaB[1]~input_o\) # 
-- (\entradaA[1]~input_o\)))) ) ) # ( !\ULA1|somador|saida~combout\ & ( (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[1]~input_o\ & \entradaB[1]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[1]~input_o\) # (\entradaA[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100001001100110111000000100010011000010011001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[1]~input_o\,
	datad => \ALT_INV_entradaB[1]~input_o\,
	datae => \ULA1|somador|ALT_INV_saida~combout\,
	combout => \ULA1|MuxSaida|saida_MUX~0_combout\);

\ULA2|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[2]~input_o\ & ( \ULA1|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[2]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[2]~input_o\ & ( \ULA1|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[2]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[2]~input_o\)))) ) ) ) # ( \entradaB[2]~input_o\ & ( !\ULA1|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[2]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) 
-- ) ) ) # ( !\entradaB[2]~input_o\ & ( !\ULA1|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[2]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000111000001110001111010000001000001101000011010011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[2]~input_o\,
	datae => \ALT_INV_entradaB[2]~input_o\,
	dataf => \ULA1|somador|ALT_INV_cOut~combout\,
	combout => \ULA2|MuxSaida|saida_MUX~0_combout\);

\ULA3|somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA3|somador|saida~0_combout\ = !\inverte_B~input_o\ $ (!\entradaA[3]~input_o\ $ (\entradaB[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_entradaA[3]~input_o\,
	datac => \ALT_INV_entradaB[3]~input_o\,
	combout => \ULA3|somador|saida~0_combout\);

\ULA1|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|MuxSaida|saida_MUX~1_combout\ = (!\seletor[0]~input_o\ & \seletor[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	combout => \ULA1|MuxSaida|saida_MUX~1_combout\);

\ULA3|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA3|MuxSaida|saida_MUX~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[3]~input_o\ & \entradaB[3]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[3]~input_o\) # (\entradaA[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[3]~input_o\,
	datad => \ALT_INV_entradaB[3]~input_o\,
	combout => \ULA3|MuxSaida|saida_MUX~0_combout\);

\ULA3|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA3|MuxSaida|saida_MUX~1_combout\ = ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA3|MuxSaida|saida_MUX~0_combout\ ) ) # ( !\ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA3|MuxSaida|saida_MUX~0_combout\ ) ) # ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( 
-- !\ULA3|MuxSaida|saida_MUX~0_combout\ & ( !\ULA3|somador|saida~0_combout\ $ (((!\entradaA[2]~input_o\ & ((!\ULA2|MuxEntradaB|saida_MUX~0_combout\) # (!\ULA1|somador|cOut~combout\))) # (\entradaA[2]~input_o\ & (!\ULA2|MuxEntradaB|saida_MUX~0_combout\ & 
-- !\ULA1|somador|cOut~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101111110100011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[2]~input_o\,
	datab => \ULA2|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|somador|ALT_INV_cOut~combout\,
	datad => \ULA3|somador|ALT_INV_saida~0_combout\,
	datae => \ULA1|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA3|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA3|MuxSaida|saida_MUX~1_combout\);

\ULA3|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA3|somador|cOut~combout\ = ( \ULA1|somador|cOut~combout\ & ( (!\entradaA[3]~input_o\ & (\ULA3|MuxEntradaB|saida_MUX~0_combout\ & ((\ULA2|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[2]~input_o\)))) # (\entradaA[3]~input_o\ & 
-- (((\ULA2|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[2]~input_o\)) # (\ULA3|MuxEntradaB|saida_MUX~0_combout\))) ) ) # ( !\ULA1|somador|cOut~combout\ & ( (!\entradaA[3]~input_o\ & (\ULA3|MuxEntradaB|saida_MUX~0_combout\ & (\entradaA[2]~input_o\ & 
-- \ULA2|MuxEntradaB|saida_MUX~0_combout\))) # (\entradaA[3]~input_o\ & (((\entradaA[2]~input_o\ & \ULA2|MuxEntradaB|saida_MUX~0_combout\)) # (\ULA3|MuxEntradaB|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000101110111011100010001000101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[3]~input_o\,
	datab => \ULA3|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[2]~input_o\,
	datad => \ULA2|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1|somador|ALT_INV_cOut~combout\,
	combout => \ULA3|somador|cOut~combout\);

\ULA4|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[4]~input_o\ & ( \ULA3|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[4]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[4]~input_o\ & ( \ULA3|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[4]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[4]~input_o\)))) ) ) ) # ( \entradaB[4]~input_o\ & ( !\ULA3|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[4]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) 
-- ) ) ) # ( !\entradaB[4]~input_o\ & ( !\ULA3|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[4]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000111000001110001111010000001000001101000011010011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[4]~input_o\,
	datae => \ALT_INV_entradaB[4]~input_o\,
	dataf => \ULA3|somador|ALT_INV_cOut~combout\,
	combout => \ULA4|MuxSaida|saida_MUX~0_combout\);

\ULA5|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|MuxSaida|saida_MUX~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[5]~input_o\ & \entradaB[5]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[5]~input_o\) # (\entradaA[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[5]~input_o\,
	datad => \ALT_INV_entradaB[5]~input_o\,
	combout => \ULA5|MuxSaida|saida_MUX~0_combout\);

\ULA5|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|MuxSaida|saida_MUX~1_combout\ = ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA5|MuxSaida|saida_MUX~0_combout\ ) ) # ( !\ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA5|MuxSaida|saida_MUX~0_combout\ ) ) # ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( 
-- !\ULA5|MuxSaida|saida_MUX~0_combout\ & ( !\entradaA[5]~input_o\ $ (!\ULA5|MuxEntradaB|saida_MUX~0_combout\ $ (((\ULA4|somador|cOut~1_combout\) # (\ULA4|somador|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011010011001100111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[5]~input_o\,
	datab => \ULA5|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA4|somador|ALT_INV_cOut~0_combout\,
	datad => \ULA4|somador|ALT_INV_cOut~1_combout\,
	datae => \ULA1|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA5|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA5|MuxSaida|saida_MUX~1_combout\);

\ULA5|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|somador|cOut~combout\ = (!\entradaA[5]~input_o\ & ((!\ULA5|MuxEntradaB|saida_MUX~0_combout\) # ((!\ULA4|somador|cOut~0_combout\ & !\ULA4|somador|cOut~1_combout\)))) # (\entradaA[5]~input_o\ & (!\ULA5|MuxEntradaB|saida_MUX~0_combout\ & 
-- (!\ULA4|somador|cOut~0_combout\ & !\ULA4|somador|cOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010001000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[5]~input_o\,
	datab => \ULA5|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA4|somador|ALT_INV_cOut~0_combout\,
	datad => \ULA4|somador|ALT_INV_cOut~1_combout\,
	combout => \ULA5|somador|cOut~combout\);

\ULA6|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[6]~input_o\ & ( \ULA5|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[6]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[6]~input_o\ & ( \ULA5|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[6]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[6]~input_o\)))) ) ) ) # ( \entradaB[6]~input_o\ & ( !\ULA5|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[6]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) 
-- ) ) ) # ( !\entradaB[6]~input_o\ & ( !\ULA5|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[6]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[6]~input_o\,
	datae => \ALT_INV_entradaB[6]~input_o\,
	dataf => \ULA5|somador|ALT_INV_cOut~combout\,
	combout => \ULA6|MuxSaida|saida_MUX~0_combout\);

\ULA7|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[7]~input_o\ & ( \ULA6|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[7]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[7]~input_o\ & ( \ULA6|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[7]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[7]~input_o\)))) ) ) ) # ( \entradaB[7]~input_o\ & ( !\ULA6|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[7]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) 
-- ) ) ) # ( !\entradaB[7]~input_o\ & ( !\ULA6|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[7]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[7]~input_o\,
	datae => \ALT_INV_entradaB[7]~input_o\,
	dataf => \ULA6|somador|ALT_INV_cOut~combout\,
	combout => \ULA7|MuxSaida|saida_MUX~0_combout\);

\ULA8|somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|somador|saida~0_combout\ = !\entradaA[8]~input_o\ $ (!\ULA8|MuxEntradaB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[8]~input_o\,
	datab => \ULA8|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA8|somador|saida~0_combout\);

\ULA8|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|MuxSaida|saida_MUX~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[8]~input_o\ & \entradaB[8]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[8]~input_o\) # (\entradaA[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[8]~input_o\,
	datad => \ALT_INV_entradaB[8]~input_o\,
	combout => \ULA8|MuxSaida|saida_MUX~0_combout\);

\ULA8|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|MuxSaida|saida_MUX~1_combout\ = ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA8|MuxSaida|saida_MUX~0_combout\ ) ) # ( !\ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA8|MuxSaida|saida_MUX~0_combout\ ) ) # ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( 
-- !\ULA8|MuxSaida|saida_MUX~0_combout\ & ( !\ULA8|somador|saida~0_combout\ $ (((!\entradaA[7]~input_o\ & ((!\ULA7|MuxEntradaB|saida_MUX~0_combout\) # (\ULA6|somador|cOut~combout\))) # (\entradaA[7]~input_o\ & (!\ULA7|MuxEntradaB|saida_MUX~0_combout\ & 
-- \ULA6|somador|cOut~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100011000111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[7]~input_o\,
	datab => \ULA7|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA6|somador|ALT_INV_cOut~combout\,
	datad => \ULA8|somador|ALT_INV_saida~0_combout\,
	datae => \ULA1|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA8|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA8|MuxSaida|saida_MUX~1_combout\);

\ULA8|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|somador|cOut~combout\ = ( \ULA6|somador|cOut~combout\ & ( (!\entradaA[8]~input_o\ & (\ULA8|MuxEntradaB|saida_MUX~0_combout\ & (\entradaA[7]~input_o\ & \ULA7|MuxEntradaB|saida_MUX~0_combout\))) # (\entradaA[8]~input_o\ & (((\entradaA[7]~input_o\ & 
-- \ULA7|MuxEntradaB|saida_MUX~0_combout\)) # (\ULA8|MuxEntradaB|saida_MUX~0_combout\))) ) ) # ( !\ULA6|somador|cOut~combout\ & ( (!\entradaA[8]~input_o\ & (\ULA8|MuxEntradaB|saida_MUX~0_combout\ & ((\ULA7|MuxEntradaB|saida_MUX~0_combout\) # 
-- (\entradaA[7]~input_o\)))) # (\entradaA[8]~input_o\ & (((\ULA7|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[7]~input_o\)) # (\ULA8|MuxEntradaB|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101110111000100010001011100010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[8]~input_o\,
	datab => \ULA8|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[7]~input_o\,
	datad => \ULA7|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA6|somador|ALT_INV_cOut~combout\,
	combout => \ULA8|somador|cOut~combout\);

\ULA9|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[9]~input_o\ & ( \ULA8|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[9]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[9]~input_o\ & ( \ULA8|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[9]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[9]~input_o\)))) ) ) ) # ( \entradaB[9]~input_o\ & ( !\ULA8|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[9]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\)))) 
-- ) ) ) # ( !\entradaB[9]~input_o\ & ( !\ULA8|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[9]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & \entradaA[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000111000001110001111010000001000001101000011010011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[9]~input_o\,
	datae => \ALT_INV_entradaB[9]~input_o\,
	dataf => \ULA8|somador|ALT_INV_cOut~combout\,
	combout => \ULA9|MuxSaida|saida_MUX~0_combout\);

\ULA10|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|MuxSaida|saida_MUX~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[10]~input_o\ & \entradaB[10]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[10]~input_o\) # (\entradaA[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[10]~input_o\,
	datad => \ALT_INV_entradaB[10]~input_o\,
	combout => \ULA10|MuxSaida|saida_MUX~0_combout\);

\ULA10|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|MuxSaida|saida_MUX~1_combout\ = ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA10|MuxSaida|saida_MUX~0_combout\ ) ) # ( !\ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA10|MuxSaida|saida_MUX~0_combout\ ) ) # ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( 
-- !\ULA10|MuxSaida|saida_MUX~0_combout\ & ( !\entradaA[10]~input_o\ $ (!\ULA10|MuxEntradaB|saida_MUX~0_combout\ $ (((\ULA9|somador|cOut~1_combout\) # (\ULA9|somador|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011010011001100111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[10]~input_o\,
	datab => \ULA10|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA9|somador|ALT_INV_cOut~0_combout\,
	datad => \ULA9|somador|ALT_INV_cOut~1_combout\,
	datae => \ULA1|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA10|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA10|MuxSaida|saida_MUX~1_combout\);

\ULA10|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|somador|cOut~combout\ = (!\entradaA[10]~input_o\ & ((!\ULA10|MuxEntradaB|saida_MUX~0_combout\) # ((!\ULA9|somador|cOut~0_combout\ & !\ULA9|somador|cOut~1_combout\)))) # (\entradaA[10]~input_o\ & (!\ULA10|MuxEntradaB|saida_MUX~0_combout\ & 
-- (!\ULA9|somador|cOut~0_combout\ & !\ULA9|somador|cOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010001000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[10]~input_o\,
	datab => \ULA10|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA9|somador|ALT_INV_cOut~0_combout\,
	datad => \ULA9|somador|ALT_INV_cOut~1_combout\,
	combout => \ULA10|somador|cOut~combout\);

\ULA11|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[11]~input_o\ & ( \ULA10|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[11]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[11]~input_o\ & ( \ULA10|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[11]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[11]~input_o\)))) ) ) ) # ( \entradaB[11]~input_o\ & ( !\ULA10|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[11]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[11]~input_o\ & ( !\ULA10|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[11]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[11]~input_o\,
	datae => \ALT_INV_entradaB[11]~input_o\,
	dataf => \ULA10|somador|ALT_INV_cOut~combout\,
	combout => \ULA11|MuxSaida|saida_MUX~0_combout\);

\ULA12|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA12|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[12]~input_o\ & ( \ULA11|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[12]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[12]~input_o\ & ( \ULA11|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[12]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[12]~input_o\)))) ) ) ) # ( \entradaB[12]~input_o\ & ( !\ULA11|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[12]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[12]~input_o\ & ( !\ULA11|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[12]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[12]~input_o\,
	datae => \ALT_INV_entradaB[12]~input_o\,
	dataf => \ULA11|somador|ALT_INV_cOut~combout\,
	combout => \ULA12|MuxSaida|saida_MUX~0_combout\);

\ULA13|somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|somador|saida~0_combout\ = !\entradaA[13]~input_o\ $ (!\ULA13|MuxEntradaB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[13]~input_o\,
	datab => \ULA13|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA13|somador|saida~0_combout\);

\ULA13|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|MuxSaida|saida_MUX~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[13]~input_o\ & \entradaB[13]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[13]~input_o\) # (\entradaA[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[13]~input_o\,
	datad => \ALT_INV_entradaB[13]~input_o\,
	combout => \ULA13|MuxSaida|saida_MUX~0_combout\);

\ULA13|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|MuxSaida|saida_MUX~1_combout\ = ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA13|MuxSaida|saida_MUX~0_combout\ ) ) # ( !\ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA13|MuxSaida|saida_MUX~0_combout\ ) ) # ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( 
-- !\ULA13|MuxSaida|saida_MUX~0_combout\ & ( !\ULA13|somador|saida~0_combout\ $ (((!\entradaA[12]~input_o\ & ((!\ULA12|MuxEntradaB|saida_MUX~0_combout\) # (\ULA11|somador|cOut~combout\))) # (\entradaA[12]~input_o\ & (!\ULA12|MuxEntradaB|saida_MUX~0_combout\ 
-- & \ULA11|somador|cOut~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100011000111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[12]~input_o\,
	datab => \ULA12|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA11|somador|ALT_INV_cOut~combout\,
	datad => \ULA13|somador|ALT_INV_saida~0_combout\,
	datae => \ULA1|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA13|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA13|MuxSaida|saida_MUX~1_combout\);

\ULA13|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|somador|cOut~combout\ = ( \ULA11|somador|cOut~combout\ & ( (!\entradaA[13]~input_o\ & (\ULA13|MuxEntradaB|saida_MUX~0_combout\ & (\entradaA[12]~input_o\ & \ULA12|MuxEntradaB|saida_MUX~0_combout\))) # (\entradaA[13]~input_o\ & 
-- (((\entradaA[12]~input_o\ & \ULA12|MuxEntradaB|saida_MUX~0_combout\)) # (\ULA13|MuxEntradaB|saida_MUX~0_combout\))) ) ) # ( !\ULA11|somador|cOut~combout\ & ( (!\entradaA[13]~input_o\ & (\ULA13|MuxEntradaB|saida_MUX~0_combout\ & 
-- ((\ULA12|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[12]~input_o\)))) # (\entradaA[13]~input_o\ & (((\ULA12|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[12]~input_o\)) # (\ULA13|MuxEntradaB|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101110111000100010001011100010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[13]~input_o\,
	datab => \ULA13|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[12]~input_o\,
	datad => \ULA12|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA11|somador|ALT_INV_cOut~combout\,
	combout => \ULA13|somador|cOut~combout\);

\ULA14|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[14]~input_o\ & ( \ULA13|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[14]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[14]~input_o\ & ( \ULA13|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[14]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[14]~input_o\)))) ) ) ) # ( \entradaB[14]~input_o\ & ( !\ULA13|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[14]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[14]~input_o\ & ( !\ULA13|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[14]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000111000001110001111010000001000001101000011010011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[14]~input_o\,
	datae => \ALT_INV_entradaB[14]~input_o\,
	dataf => \ULA13|somador|ALT_INV_cOut~combout\,
	combout => \ULA14|MuxSaida|saida_MUX~0_combout\);

\ULA15|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|MuxSaida|saida_MUX~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[15]~input_o\ & \entradaB[15]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[15]~input_o\) # (\entradaA[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[15]~input_o\,
	datad => \ALT_INV_entradaB[15]~input_o\,
	combout => \ULA15|MuxSaida|saida_MUX~0_combout\);

\ULA15|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|MuxSaida|saida_MUX~1_combout\ = ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA15|MuxSaida|saida_MUX~0_combout\ ) ) # ( !\ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA15|MuxSaida|saida_MUX~0_combout\ ) ) # ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( 
-- !\ULA15|MuxSaida|saida_MUX~0_combout\ & ( !\entradaA[15]~input_o\ $ (!\ULA15|MuxEntradaB|saida_MUX~0_combout\ $ (((\ULA14|somador|cOut~1_combout\) # (\ULA14|somador|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011010011001100111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[15]~input_o\,
	datab => \ULA15|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA14|somador|ALT_INV_cOut~0_combout\,
	datad => \ULA14|somador|ALT_INV_cOut~1_combout\,
	datae => \ULA1|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA15|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA15|MuxSaida|saida_MUX~1_combout\);

\ULA15|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|somador|cOut~combout\ = (!\entradaA[15]~input_o\ & ((!\ULA15|MuxEntradaB|saida_MUX~0_combout\) # ((!\ULA14|somador|cOut~0_combout\ & !\ULA14|somador|cOut~1_combout\)))) # (\entradaA[15]~input_o\ & (!\ULA15|MuxEntradaB|saida_MUX~0_combout\ & 
-- (!\ULA14|somador|cOut~0_combout\ & !\ULA14|somador|cOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010001000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[15]~input_o\,
	datab => \ULA15|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA14|somador|ALT_INV_cOut~0_combout\,
	datad => \ULA14|somador|ALT_INV_cOut~1_combout\,
	combout => \ULA15|somador|cOut~combout\);

\ULA16|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[16]~input_o\ & ( \ULA15|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[16]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[16]~input_o\ & ( \ULA15|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[16]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[16]~input_o\)))) ) ) ) # ( \entradaB[16]~input_o\ & ( !\ULA15|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[16]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[16]~input_o\ & ( !\ULA15|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[16]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[16]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[16]~input_o\,
	datae => \ALT_INV_entradaB[16]~input_o\,
	dataf => \ULA15|somador|ALT_INV_cOut~combout\,
	combout => \ULA16|MuxSaida|saida_MUX~0_combout\);

\ULA17|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA17|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[17]~input_o\ & ( \ULA16|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[17]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[17]~input_o\ & ( \ULA16|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[17]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[17]~input_o\)))) ) ) ) # ( \entradaB[17]~input_o\ & ( !\ULA16|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[17]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[17]~input_o\ & ( !\ULA16|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[17]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[17]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[17]~input_o\,
	datae => \ALT_INV_entradaB[17]~input_o\,
	dataf => \ULA16|somador|ALT_INV_cOut~combout\,
	combout => \ULA17|MuxSaida|saida_MUX~0_combout\);

\ULA18|somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|somador|saida~0_combout\ = !\entradaA[18]~input_o\ $ (!\ULA18|MuxEntradaB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[18]~input_o\,
	datab => \ULA18|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA18|somador|saida~0_combout\);

\ULA18|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|MuxSaida|saida_MUX~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[18]~input_o\ & \entradaB[18]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[18]~input_o\) # (\entradaA[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[18]~input_o\,
	datad => \ALT_INV_entradaB[18]~input_o\,
	combout => \ULA18|MuxSaida|saida_MUX~0_combout\);

\ULA18|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|MuxSaida|saida_MUX~1_combout\ = ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA18|MuxSaida|saida_MUX~0_combout\ ) ) # ( !\ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA18|MuxSaida|saida_MUX~0_combout\ ) ) # ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( 
-- !\ULA18|MuxSaida|saida_MUX~0_combout\ & ( !\ULA18|somador|saida~0_combout\ $ (((!\entradaA[17]~input_o\ & ((!\ULA17|MuxEntradaB|saida_MUX~0_combout\) # (\ULA16|somador|cOut~combout\))) # (\entradaA[17]~input_o\ & (!\ULA17|MuxEntradaB|saida_MUX~0_combout\ 
-- & \ULA16|somador|cOut~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100011000111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[17]~input_o\,
	datab => \ULA17|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA16|somador|ALT_INV_cOut~combout\,
	datad => \ULA18|somador|ALT_INV_saida~0_combout\,
	datae => \ULA1|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA18|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA18|MuxSaida|saida_MUX~1_combout\);

\ULA18|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|somador|cOut~combout\ = ( \ULA16|somador|cOut~combout\ & ( (!\entradaA[18]~input_o\ & (\ULA18|MuxEntradaB|saida_MUX~0_combout\ & (\entradaA[17]~input_o\ & \ULA17|MuxEntradaB|saida_MUX~0_combout\))) # (\entradaA[18]~input_o\ & 
-- (((\entradaA[17]~input_o\ & \ULA17|MuxEntradaB|saida_MUX~0_combout\)) # (\ULA18|MuxEntradaB|saida_MUX~0_combout\))) ) ) # ( !\ULA16|somador|cOut~combout\ & ( (!\entradaA[18]~input_o\ & (\ULA18|MuxEntradaB|saida_MUX~0_combout\ & 
-- ((\ULA17|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[17]~input_o\)))) # (\entradaA[18]~input_o\ & (((\ULA17|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[17]~input_o\)) # (\ULA18|MuxEntradaB|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101110111000100010001011100010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[18]~input_o\,
	datab => \ULA18|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[17]~input_o\,
	datad => \ULA17|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA16|somador|ALT_INV_cOut~combout\,
	combout => \ULA18|somador|cOut~combout\);

\ULA19|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[19]~input_o\ & ( \ULA18|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[19]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[19]~input_o\ & ( \ULA18|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[19]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[19]~input_o\)))) ) ) ) # ( \entradaB[19]~input_o\ & ( !\ULA18|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[19]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[19]~input_o\ & ( !\ULA18|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[19]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[19]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000111000001110001111010000001000001101000011010011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[19]~input_o\,
	datae => \ALT_INV_entradaB[19]~input_o\,
	dataf => \ULA18|somador|ALT_INV_cOut~combout\,
	combout => \ULA19|MuxSaida|saida_MUX~0_combout\);

\ULA20|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|MuxSaida|saida_MUX~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[20]~input_o\ & \entradaB[20]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[20]~input_o\) # (\entradaA[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[20]~input_o\,
	datad => \ALT_INV_entradaB[20]~input_o\,
	combout => \ULA20|MuxSaida|saida_MUX~0_combout\);

\ULA20|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|MuxSaida|saida_MUX~1_combout\ = ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA20|MuxSaida|saida_MUX~0_combout\ ) ) # ( !\ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA20|MuxSaida|saida_MUX~0_combout\ ) ) # ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( 
-- !\ULA20|MuxSaida|saida_MUX~0_combout\ & ( !\entradaA[20]~input_o\ $ (!\ULA20|MuxEntradaB|saida_MUX~0_combout\ $ (((\ULA19|somador|cOut~1_combout\) # (\ULA19|somador|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011010011001100111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[20]~input_o\,
	datab => \ULA20|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA19|somador|ALT_INV_cOut~0_combout\,
	datad => \ULA19|somador|ALT_INV_cOut~1_combout\,
	datae => \ULA1|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA20|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA20|MuxSaida|saida_MUX~1_combout\);

\ULA20|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|somador|cOut~combout\ = (!\entradaA[20]~input_o\ & ((!\ULA20|MuxEntradaB|saida_MUX~0_combout\) # ((!\ULA19|somador|cOut~0_combout\ & !\ULA19|somador|cOut~1_combout\)))) # (\entradaA[20]~input_o\ & (!\ULA20|MuxEntradaB|saida_MUX~0_combout\ & 
-- (!\ULA19|somador|cOut~0_combout\ & !\ULA19|somador|cOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010001000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[20]~input_o\,
	datab => \ULA20|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA19|somador|ALT_INV_cOut~0_combout\,
	datad => \ULA19|somador|ALT_INV_cOut~1_combout\,
	combout => \ULA20|somador|cOut~combout\);

\ULA21|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[21]~input_o\ & ( \ULA20|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[21]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[21]~input_o\ & ( \ULA20|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[21]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[21]~input_o\)))) ) ) ) # ( \entradaB[21]~input_o\ & ( !\ULA20|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[21]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[21]~input_o\ & ( !\ULA20|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[21]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[21]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[21]~input_o\,
	datae => \ALT_INV_entradaB[21]~input_o\,
	dataf => \ULA20|somador|ALT_INV_cOut~combout\,
	combout => \ULA21|MuxSaida|saida_MUX~0_combout\);

\ULA22|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA22|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[22]~input_o\ & ( \ULA21|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[22]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[22]~input_o\ & ( \ULA21|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[22]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[22]~input_o\)))) ) ) ) # ( \entradaB[22]~input_o\ & ( !\ULA21|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[22]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[22]~input_o\ & ( !\ULA21|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[22]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[22]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[22]~input_o\,
	datae => \ALT_INV_entradaB[22]~input_o\,
	dataf => \ULA21|somador|ALT_INV_cOut~combout\,
	combout => \ULA22|MuxSaida|saida_MUX~0_combout\);

\ULA23|somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|somador|saida~0_combout\ = !\entradaA[23]~input_o\ $ (!\ULA23|MuxEntradaB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[23]~input_o\,
	datab => \ULA23|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA23|somador|saida~0_combout\);

\ULA23|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|MuxSaida|saida_MUX~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[23]~input_o\ & \entradaB[23]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[23]~input_o\) # (\entradaA[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[23]~input_o\,
	datad => \ALT_INV_entradaB[23]~input_o\,
	combout => \ULA23|MuxSaida|saida_MUX~0_combout\);

\ULA23|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|MuxSaida|saida_MUX~1_combout\ = ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA23|MuxSaida|saida_MUX~0_combout\ ) ) # ( !\ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA23|MuxSaida|saida_MUX~0_combout\ ) ) # ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( 
-- !\ULA23|MuxSaida|saida_MUX~0_combout\ & ( !\ULA23|somador|saida~0_combout\ $ (((!\entradaA[22]~input_o\ & ((!\ULA22|MuxEntradaB|saida_MUX~0_combout\) # (\ULA21|somador|cOut~combout\))) # (\entradaA[22]~input_o\ & (!\ULA22|MuxEntradaB|saida_MUX~0_combout\ 
-- & \ULA21|somador|cOut~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100011000111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[22]~input_o\,
	datab => \ULA22|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA21|somador|ALT_INV_cOut~combout\,
	datad => \ULA23|somador|ALT_INV_saida~0_combout\,
	datae => \ULA1|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA23|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA23|MuxSaida|saida_MUX~1_combout\);

\ULA23|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|somador|cOut~combout\ = ( \ULA21|somador|cOut~combout\ & ( (!\entradaA[23]~input_o\ & (\ULA23|MuxEntradaB|saida_MUX~0_combout\ & (\entradaA[22]~input_o\ & \ULA22|MuxEntradaB|saida_MUX~0_combout\))) # (\entradaA[23]~input_o\ & 
-- (((\entradaA[22]~input_o\ & \ULA22|MuxEntradaB|saida_MUX~0_combout\)) # (\ULA23|MuxEntradaB|saida_MUX~0_combout\))) ) ) # ( !\ULA21|somador|cOut~combout\ & ( (!\entradaA[23]~input_o\ & (\ULA23|MuxEntradaB|saida_MUX~0_combout\ & 
-- ((\ULA22|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[22]~input_o\)))) # (\entradaA[23]~input_o\ & (((\ULA22|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[22]~input_o\)) # (\ULA23|MuxEntradaB|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101110111000100010001011100010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[23]~input_o\,
	datab => \ULA23|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[22]~input_o\,
	datad => \ULA22|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA21|somador|ALT_INV_cOut~combout\,
	combout => \ULA23|somador|cOut~combout\);

\ULA24|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[24]~input_o\ & ( \ULA23|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[24]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[24]~input_o\ & ( \ULA23|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[24]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[24]~input_o\)))) ) ) ) # ( \entradaB[24]~input_o\ & ( !\ULA23|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[24]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[24]~input_o\ & ( !\ULA23|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[24]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[24]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000111000001110001111010000001000001101000011010011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[24]~input_o\,
	datae => \ALT_INV_entradaB[24]~input_o\,
	dataf => \ULA23|somador|ALT_INV_cOut~combout\,
	combout => \ULA24|MuxSaida|saida_MUX~0_combout\);

\ULA25|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|MuxSaida|saida_MUX~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[25]~input_o\ & \entradaB[25]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[25]~input_o\) # (\entradaA[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[25]~input_o\,
	datad => \ALT_INV_entradaB[25]~input_o\,
	combout => \ULA25|MuxSaida|saida_MUX~0_combout\);

\ULA25|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|MuxSaida|saida_MUX~1_combout\ = ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA25|MuxSaida|saida_MUX~0_combout\ ) ) # ( !\ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA25|MuxSaida|saida_MUX~0_combout\ ) ) # ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( 
-- !\ULA25|MuxSaida|saida_MUX~0_combout\ & ( !\entradaA[25]~input_o\ $ (!\ULA25|MuxEntradaB|saida_MUX~0_combout\ $ (((\ULA24|somador|cOut~1_combout\) # (\ULA24|somador|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011010011001100111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[25]~input_o\,
	datab => \ULA25|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA24|somador|ALT_INV_cOut~0_combout\,
	datad => \ULA24|somador|ALT_INV_cOut~1_combout\,
	datae => \ULA1|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA25|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA25|MuxSaida|saida_MUX~1_combout\);

\ULA25|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|somador|cOut~combout\ = (!\entradaA[25]~input_o\ & ((!\ULA25|MuxEntradaB|saida_MUX~0_combout\) # ((!\ULA24|somador|cOut~0_combout\ & !\ULA24|somador|cOut~1_combout\)))) # (\entradaA[25]~input_o\ & (!\ULA25|MuxEntradaB|saida_MUX~0_combout\ & 
-- (!\ULA24|somador|cOut~0_combout\ & !\ULA24|somador|cOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010001000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[25]~input_o\,
	datab => \ULA25|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA24|somador|ALT_INV_cOut~0_combout\,
	datad => \ULA24|somador|ALT_INV_cOut~1_combout\,
	combout => \ULA25|somador|cOut~combout\);

\ULA26|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[26]~input_o\ & ( \ULA25|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[26]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[26]~input_o\ & ( \ULA25|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[26]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[26]~input_o\)))) ) ) ) # ( \entradaB[26]~input_o\ & ( !\ULA25|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[26]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[26]~input_o\ & ( !\ULA25|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[26]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[26]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[26]~input_o\,
	datae => \ALT_INV_entradaB[26]~input_o\,
	dataf => \ULA25|somador|ALT_INV_cOut~combout\,
	combout => \ULA26|MuxSaida|saida_MUX~0_combout\);

\ULA27|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA27|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[27]~input_o\ & ( \ULA26|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[27]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[27]~input_o\ & ( \ULA26|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[27]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[27]~input_o\)))) ) ) ) # ( \entradaB[27]~input_o\ & ( !\ULA26|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[27]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[27]~input_o\ & ( !\ULA26|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[27]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[27]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100001101001111100000000100001110000011100011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[27]~input_o\,
	datae => \ALT_INV_entradaB[27]~input_o\,
	dataf => \ULA26|somador|ALT_INV_cOut~combout\,
	combout => \ULA27|MuxSaida|saida_MUX~0_combout\);

\ULA28|somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|somador|saida~0_combout\ = !\entradaA[28]~input_o\ $ (!\ULA28|MuxEntradaB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[28]~input_o\,
	datab => \ULA28|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA28|somador|saida~0_combout\);

\ULA28|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|MuxSaida|saida_MUX~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[28]~input_o\ & \entradaB[28]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[28]~input_o\) # (\entradaA[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[28]~input_o\,
	datad => \ALT_INV_entradaB[28]~input_o\,
	combout => \ULA28|MuxSaida|saida_MUX~0_combout\);

\ULA28|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|MuxSaida|saida_MUX~1_combout\ = ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA28|MuxSaida|saida_MUX~0_combout\ ) ) # ( !\ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA28|MuxSaida|saida_MUX~0_combout\ ) ) # ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( 
-- !\ULA28|MuxSaida|saida_MUX~0_combout\ & ( !\ULA28|somador|saida~0_combout\ $ (((!\entradaA[27]~input_o\ & ((!\ULA27|MuxEntradaB|saida_MUX~0_combout\) # (\ULA26|somador|cOut~combout\))) # (\entradaA[27]~input_o\ & (!\ULA27|MuxEntradaB|saida_MUX~0_combout\ 
-- & \ULA26|somador|cOut~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100011000111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[27]~input_o\,
	datab => \ULA27|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA26|somador|ALT_INV_cOut~combout\,
	datad => \ULA28|somador|ALT_INV_saida~0_combout\,
	datae => \ULA1|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA28|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA28|MuxSaida|saida_MUX~1_combout\);

\ULA28|somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|somador|cOut~combout\ = ( \ULA26|somador|cOut~combout\ & ( (!\entradaA[28]~input_o\ & (\ULA28|MuxEntradaB|saida_MUX~0_combout\ & (\entradaA[27]~input_o\ & \ULA27|MuxEntradaB|saida_MUX~0_combout\))) # (\entradaA[28]~input_o\ & 
-- (((\entradaA[27]~input_o\ & \ULA27|MuxEntradaB|saida_MUX~0_combout\)) # (\ULA28|MuxEntradaB|saida_MUX~0_combout\))) ) ) # ( !\ULA26|somador|cOut~combout\ & ( (!\entradaA[28]~input_o\ & (\ULA28|MuxEntradaB|saida_MUX~0_combout\ & 
-- ((\ULA27|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[27]~input_o\)))) # (\entradaA[28]~input_o\ & (((\ULA27|MuxEntradaB|saida_MUX~0_combout\) # (\entradaA[27]~input_o\)) # (\ULA28|MuxEntradaB|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101110111000100010001011100010111011101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[28]~input_o\,
	datab => \ULA28|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[27]~input_o\,
	datad => \ULA27|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA26|somador|ALT_INV_cOut~combout\,
	combout => \ULA28|somador|cOut~combout\);

\ULA29|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[29]~input_o\ & ( \ULA28|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[29]~input_o\ $ (((!\inverte_B~input_o\) # (!\seletor[1]~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[29]~input_o\ & ( \ULA28|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (\entradaA[29]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[29]~input_o\)))) ) ) ) # ( \entradaB[29]~input_o\ & ( !\ULA28|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[29]~input_o\ $ (((!\seletor[1]~input_o\) # (\inverte_B~input_o\))))) # (\seletor[0]~input_o\ & 
-- (((!\seletor[1]~input_o\)))) ) ) ) # ( !\entradaB[29]~input_o\ & ( !\ULA28|somador|cOut~combout\ & ( (!\seletor[0]~input_o\ & (\seletor[1]~input_o\ & (!\inverte_B~input_o\ $ (!\entradaA[29]~input_o\)))) # (\seletor[0]~input_o\ & (((!\seletor[1]~input_o\ & 
-- \entradaA[29]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000111000001110001111010000001000001101000011010011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverte_B~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_seletor[1]~input_o\,
	datad => \ALT_INV_entradaA[29]~input_o\,
	datae => \ALT_INV_entradaB[29]~input_o\,
	dataf => \ULA28|somador|ALT_INV_cOut~combout\,
	combout => \ULA29|MuxSaida|saida_MUX~0_combout\);

\ULA30|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|MuxSaida|saida_MUX~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[30]~input_o\ & \entradaB[30]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaB[30]~input_o\) # (\entradaA[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[0]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[30]~input_o\,
	datad => \ALT_INV_entradaB[30]~input_o\,
	combout => \ULA30|MuxSaida|saida_MUX~0_combout\);

\ULA30|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|MuxSaida|saida_MUX~1_combout\ = ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA30|MuxSaida|saida_MUX~0_combout\ ) ) # ( !\ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA30|MuxSaida|saida_MUX~0_combout\ ) ) # ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( 
-- !\ULA30|MuxSaida|saida_MUX~0_combout\ & ( !\entradaA[30]~input_o\ $ (!\ULA30|MuxEntradaB|saida_MUX~0_combout\ $ (((\ULA29|somador|cOut~1_combout\) # (\ULA29|somador|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011010011001100111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[30]~input_o\,
	datab => \ULA30|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA29|somador|ALT_INV_cOut~0_combout\,
	datad => \ULA29|somador|ALT_INV_cOut~1_combout\,
	datae => \ULA1|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA30|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA30|MuxSaida|saida_MUX~1_combout\);

\ULA31|somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|somador|saida~0_combout\ = !\entradaA[31]~input_o\ $ (!\entradaB[31]~input_o\ $ (\inverte_B~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[31]~input_o\,
	datab => \ALT_INV_entradaB[31]~input_o\,
	datac => \ALT_INV_inverte_B~input_o\,
	combout => \ULA31|somador|saida~0_combout\);

\ULA31|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|MuxSaida|saida_MUX~0_combout\ = ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( \ULA31|somador|saida~0_combout\ & ( (!\entradaA[30]~input_o\ & ((!\ULA30|MuxEntradaB|saida_MUX~0_combout\) # ((!\ULA29|somador|cOut~0_combout\ & 
-- !\ULA29|somador|cOut~1_combout\)))) # (\entradaA[30]~input_o\ & (!\ULA30|MuxEntradaB|saida_MUX~0_combout\ & (!\ULA29|somador|cOut~0_combout\ & !\ULA29|somador|cOut~1_combout\))) ) ) ) # ( \ULA1|MuxSaida|saida_MUX~1_combout\ & ( 
-- !\ULA31|somador|saida~0_combout\ & ( (!\entradaA[30]~input_o\ & (\ULA30|MuxEntradaB|saida_MUX~0_combout\ & ((\ULA29|somador|cOut~1_combout\) # (\ULA29|somador|cOut~0_combout\)))) # (\entradaA[30]~input_o\ & (((\ULA29|somador|cOut~1_combout\) # 
-- (\ULA29|somador|cOut~0_combout\)) # (\ULA30|MuxEntradaB|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110111011100000000000000001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[30]~input_o\,
	datab => \ULA30|MuxEntradaB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA29|somador|ALT_INV_cOut~0_combout\,
	datad => \ULA29|somador|ALT_INV_cOut~1_combout\,
	datae => \ULA1|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA31|somador|ALT_INV_saida~0_combout\,
	combout => \ULA31|MuxSaida|saida_MUX~0_combout\);

\ULA31|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|MuxSaida|saida_MUX~1_combout\ = (!\seletor[1]~input_o\ & ((!\entradaA[31]~input_o\ & (\entradaB[31]~input_o\ & \seletor[0]~input_o\)) # (\entradaA[31]~input_o\ & ((\seletor[0]~input_o\) # (\entradaB[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100000000000101110000000000010111000000000001011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[31]~input_o\,
	datab => \ALT_INV_entradaB[31]~input_o\,
	datac => \ALT_INV_seletor[0]~input_o\,
	datad => \ALT_INV_seletor[1]~input_o\,
	combout => \ULA31|MuxSaida|saida_MUX~1_combout\);

\ULA31|MuxSaida|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|MuxSaida|saida_MUX~2_combout\ = (\ULA31|MuxSaida|saida_MUX~1_combout\) # (\ULA31|MuxSaida|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA31|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA31|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA31|MuxSaida|saida_MUX~2_combout\);

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\ULA5|MuxSaida|saida_MUX~1_combout\ & ( (!\ULA1|MuxSaida|saida_MUX~0_combout\ & (!\ULA2|MuxSaida|saida_MUX~0_combout\ & (!\ULA3|MuxSaida|saida_MUX~1_combout\ & !\ULA4|MuxSaida|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA2|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA3|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	datad => \ULA4|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA5|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	combout => \Equal0~0_combout\);

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\ULA6|MuxSaida|saida_MUX~0_combout\ & (!\ULA7|MuxSaida|saida_MUX~0_combout\ & (!\ULA8|MuxSaida|saida_MUX~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA6|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA7|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA8|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~1_combout\);

\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \Equal0~1_combout\ & ( (!\ULA9|MuxSaida|saida_MUX~0_combout\ & (!\ULA10|MuxSaida|saida_MUX~1_combout\ & (!\ULA11|MuxSaida|saida_MUX~0_combout\ & !\ULA12|MuxSaida|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA9|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA10|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	datac => \ULA11|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA12|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~2_combout\);

\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\ULA13|MuxSaida|saida_MUX~1_combout\ & (!\ULA14|MuxSaida|saida_MUX~0_combout\ & (!\ULA15|MuxSaida|saida_MUX~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA13|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA14|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA15|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~3_combout\);

\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\ULA16|MuxSaida|saida_MUX~0_combout\ & (!\ULA17|MuxSaida|saida_MUX~0_combout\ & (!\ULA18|MuxSaida|saida_MUX~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA16|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA17|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA18|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~4_combout\ & ( (!\ULA19|MuxSaida|saida_MUX~0_combout\ & (!\ULA20|MuxSaida|saida_MUX~1_combout\ & (!\ULA21|MuxSaida|saida_MUX~0_combout\ & !\ULA22|MuxSaida|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA19|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA20|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	datac => \ULA21|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA22|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	combout => \Equal0~5_combout\);

\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\ULA23|MuxSaida|saida_MUX~1_combout\ & (!\ULA24|MuxSaida|saida_MUX~0_combout\ & (!\ULA25|MuxSaida|saida_MUX~1_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA23|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA24|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA25|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	datad => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6_combout\);

\Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\ULA26|MuxSaida|saida_MUX~0_combout\ & (!\ULA27|MuxSaida|saida_MUX~0_combout\ & (!\ULA28|MuxSaida|saida_MUX~1_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA26|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA27|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA28|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	datad => \ALT_INV_Equal0~6_combout\,
	combout => \Equal0~7_combout\);

\Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = ( !\ULA0|MuxSaida|saida_MUX~3_combout\ & ( \Equal0~7_combout\ & ( (!\ULA29|MuxSaida|saida_MUX~0_combout\ & (!\ULA30|MuxSaida|saida_MUX~1_combout\ & (!\ULA31|MuxSaida|saida_MUX~0_combout\ & !\ULA31|MuxSaida|saida_MUX~1_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA29|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA30|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	datac => \ULA31|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA31|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	datae => \ULA0|MuxSaida|ALT_INV_saida_MUX~3_combout\,
	dataf => \ALT_INV_Equal0~7_combout\,
	combout => \Equal0~8_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;

ww_saida(8) <= \saida[8]~output_o\;

ww_saida(9) <= \saida[9]~output_o\;

ww_saida(10) <= \saida[10]~output_o\;

ww_saida(11) <= \saida[11]~output_o\;

ww_saida(12) <= \saida[12]~output_o\;

ww_saida(13) <= \saida[13]~output_o\;

ww_saida(14) <= \saida[14]~output_o\;

ww_saida(15) <= \saida[15]~output_o\;

ww_saida(16) <= \saida[16]~output_o\;

ww_saida(17) <= \saida[17]~output_o\;

ww_saida(18) <= \saida[18]~output_o\;

ww_saida(19) <= \saida[19]~output_o\;

ww_saida(20) <= \saida[20]~output_o\;

ww_saida(21) <= \saida[21]~output_o\;

ww_saida(22) <= \saida[22]~output_o\;

ww_saida(23) <= \saida[23]~output_o\;

ww_saida(24) <= \saida[24]~output_o\;

ww_saida(25) <= \saida[25]~output_o\;

ww_saida(26) <= \saida[26]~output_o\;

ww_saida(27) <= \saida[27]~output_o\;

ww_saida(28) <= \saida[28]~output_o\;

ww_saida(29) <= \saida[29]~output_o\;

ww_saida(30) <= \saida[30]~output_o\;

ww_saida(31) <= \saida[31]~output_o\;

ww_flagZero <= \flagZero~output_o\;
END structure;


