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

-- DATE "08/31/2021 17:33:18"

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
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	PCOUT : OUT std_logic_vector(3 DOWNTO 0)
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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PCOUT : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
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
SIGNAL \PCOUT[0]~output_o\ : std_logic;
SIGNAL \PCOUT[1]~output_o\ : std_logic;
SIGNAL \PCOUT[2]~output_o\ : std_logic;
SIGNAL \PCOUT[3]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \PC1|dataOUT[0]~3_combout\ : std_logic;
SIGNAL \PC1|dataOUT[1]~0_combout\ : std_logic;
SIGNAL \PC1|dataOUT[2]~1_combout\ : std_logic;
SIGNAL \PC1|dataOUT[3]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~18_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \DECODER1|Equal0~0_combout\ : std_logic;
SIGNAL \DECODER1|Sinais_Controle[2]~1_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \DECODER1|Sinais_Controle[0]~0_combout\ : std_logic;
SIGNAL \REG1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PC1|dataOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Sinais_Controle[0]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC1|ALT_INV_dataOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
PCOUT <= ww_PCOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\DECODER1|ALT_INV_Equal0~0_combout\ <= NOT \DECODER1|Equal0~0_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\DECODER1|ALT_INV_Sinais_Controle[0]~0_combout\ <= NOT \DECODER1|Sinais_Controle[0]~0_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC1|ALT_INV_dataOUT\(3) <= NOT \PC1|dataOUT\(3);
\PC1|ALT_INV_dataOUT\(2) <= NOT \PC1|dataOUT\(2);
\PC1|ALT_INV_dataOUT\(1) <= NOT \PC1|dataOUT\(1);
\PC1|ALT_INV_dataOUT\(0) <= NOT \PC1|dataOUT\(0);
\REG1|ALT_INV_DOUT\(3) <= NOT \REG1|DOUT\(3);
\REG1|ALT_INV_DOUT\(2) <= NOT \REG1|DOUT\(2);
\REG1|ALT_INV_DOUT\(1) <= NOT \REG1|DOUT\(1);
\REG1|ALT_INV_DOUT\(0) <= NOT \REG1|DOUT\(0);

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
	i => \DECODER1|ALT_INV_Sinais_Controle[0]~0_combout\,
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
	i => \DECODER1|Equal0~0_combout\,
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
	i => \DECODER1|Sinais_Controle[2]~1_combout\,
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
	i => \ROM1|ALT_INV_memROM~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\PCOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~1_combout\,
	devoe => ww_devoe,
	o => \PCOUT[0]~output_o\);

\PCOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~2_combout\,
	devoe => ww_devoe,
	o => \PCOUT[1]~output_o\);

\PCOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => \PCOUT[2]~output_o\);

\PCOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => \PCOUT[3]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\PC1|dataOUT[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC1|dataOUT[0]~3_combout\ = !\PC1|dataOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	combout => \PC1|dataOUT[0]~3_combout\);

\PC1|dataOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC1|dataOUT[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(0));

\PC1|dataOUT[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC1|dataOUT[1]~0_combout\ = !\PC1|dataOUT\(0) $ (!\PC1|dataOUT\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	combout => \PC1|dataOUT[1]~0_combout\);

\PC1|dataOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC1|dataOUT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(1));

\PC1|dataOUT[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC1|dataOUT[2]~1_combout\ = !\PC1|dataOUT\(2) $ (((!\PC1|dataOUT\(0)) # (!\PC1|dataOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	combout => \PC1|dataOUT[2]~1_combout\);

\PC1|dataOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC1|dataOUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(2));

\PC1|dataOUT[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC1|dataOUT[3]~2_combout\ = !\PC1|dataOUT\(3) $ (((!\PC1|dataOUT\(0)) # ((!\PC1|dataOUT\(1)) # (!\PC1|dataOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000000011111111000000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \PC1|dataOUT[3]~2_combout\);

\PC1|dataOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC1|dataOUT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC1|dataOUT\(3));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ((\PC1|dataOUT\(2) & ((\PC1|dataOUT\(1)) # (\PC1|dataOUT\(0))))) # (\PC1|dataOUT\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111111000001111111111100000111111111110000011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\ULA1|Add0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~18_cout\ = CARRY(( (\PC1|dataOUT\(3)) # (\PC1|dataOUT\(2)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(2),
	datab => \PC1|ALT_INV_dataOUT\(3),
	cin => GND,
	cout => \ULA1|Add0~18_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\SW[6]~input_o\ $ (((!\PC1|dataOUT\(2) & (!\PC1|dataOUT\(3) & !\ROM1|memROM~0_combout\)))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add0~18_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( !\SW[6]~input_o\ $ (((!\PC1|dataOUT\(2) & (!\PC1|dataOUT\(3) & !\ROM1|memROM~0_combout\)))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add0~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(2),
	datab => \PC1|ALT_INV_dataOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~18_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\PC1|dataOUT\(0) & (!\PC1|dataOUT\(1) & (!\PC1|dataOUT\(2) & !\PC1|dataOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(0),
	datab => \PC1|ALT_INV_dataOUT\(1),
	datac => \PC1|ALT_INV_dataOUT\(2),
	datad => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~2_combout\);

\DECODER1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal0~0_combout\ = (!\ROM1|memROM~0_combout\ & \ROM1|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \DECODER1|Equal0~0_combout\);

\DECODER1|Sinais_Controle[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Sinais_Controle[2]~1_combout\ = (!\PC1|dataOUT\(3) & (!\PC1|dataOUT\(2) $ (((!\PC1|dataOUT\(0) & !\PC1|dataOUT\(1))))))

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
	combout => \DECODER1|Sinais_Controle[2]~1_combout\);

\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~1_sumout\,
	clrn => \DECODER1|ALT_INV_Equal0~0_combout\,
	ena => \DECODER1|Sinais_Controle[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\SW[7]~input_o\ $ (((!\PC1|dataOUT\(2) & (!\PC1|dataOUT\(3) & !\ROM1|memROM~0_combout\)))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( !\SW[7]~input_o\ $ (((!\PC1|dataOUT\(2) & (!\PC1|dataOUT\(3) & !\ROM1|memROM~0_combout\)))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(2),
	datab => \PC1|ALT_INV_dataOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ALT_INV_SW[7]~input_o\,
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
	clrn => \DECODER1|ALT_INV_Equal0~0_combout\,
	ena => \DECODER1|Sinais_Controle[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\SW[8]~input_o\ $ (((!\PC1|dataOUT\(2) & (!\PC1|dataOUT\(3) & !\ROM1|memROM~0_combout\)))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\SW[8]~input_o\ $ (((!\PC1|dataOUT\(2) & (!\PC1|dataOUT\(3) & !\ROM1|memROM~0_combout\)))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(2),
	datab => \PC1|ALT_INV_dataOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ALT_INV_SW[8]~input_o\,
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
	clrn => \DECODER1|ALT_INV_Equal0~0_combout\,
	ena => \DECODER1|Sinais_Controle[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\SW[9]~input_o\ $ (((!\PC1|dataOUT\(2) & (!\PC1|dataOUT\(3) & !\ROM1|memROM~0_combout\)))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(2),
	datab => \PC1|ALT_INV_dataOUT\(3),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\);

\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~13_sumout\,
	clrn => \DECODER1|ALT_INV_Equal0~0_combout\,
	ena => \DECODER1|Sinais_Controle[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\PC1|dataOUT\(2) & !\PC1|dataOUT\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|ALT_INV_dataOUT\(2),
	datab => \PC1|ALT_INV_dataOUT\(3),
	combout => \ROM1|memROM~1_combout\);

\DECODER1|Sinais_Controle[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Sinais_Controle[0]~0_combout\ = (!\ROM1|memROM~1_combout\) # (\ROM1|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DECODER1|Sinais_Controle[0]~0_combout\);

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

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

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

ww_PCOUT(0) <= \PCOUT[0]~output_o\;

ww_PCOUT(1) <= \PCOUT[1]~output_o\;

ww_PCOUT(2) <= \PCOUT[2]~output_o\;

ww_PCOUT(3) <= \PCOUT[3]~output_o\;
END structure;


