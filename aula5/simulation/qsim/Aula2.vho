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

-- DATE "09/14/2021 14:02:42"

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
SIGNAL \KEY[0]~input_o\ : std_logic;
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

\saida_RAM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \saida_RAM[0]~output_o\);

\saida_RAM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \saida_RAM[1]~output_o\);

\saida_RAM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \saida_RAM[2]~output_o\);

\saida_RAM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \saida_RAM[3]~output_o\);

\saida_RAM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \saida_RAM[4]~output_o\);

\saida_RAM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \saida_RAM[5]~output_o\);

\saida_RAM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \saida_RAM[6]~output_o\);

\saida_RAM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \saida_RAM[7]~output_o\);

\DEBUG_Data_IN[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEBUG_Data_IN[0]~output_o\);

\DEBUG_Data_IN[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEBUG_Data_IN[1]~output_o\);

\DEBUG_Data_IN[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEBUG_Data_IN[2]~output_o\);

\DEBUG_Data_IN[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEBUG_Data_IN[3]~output_o\);

\DEBUG_Data_IN[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEBUG_Data_IN[4]~output_o\);

\DEBUG_Data_IN[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEBUG_Data_IN[5]~output_o\);

\DEBUG_Data_IN[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEBUG_Data_IN[6]~output_o\);

\DEBUG_Data_IN[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \DEBUG_Data_OUT[7]~output_o\);

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

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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


