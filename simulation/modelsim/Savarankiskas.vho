-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "10/10/2022 18:04:45"

-- 
-- Device: Altera EP2AGX45CU17I3 Package UFBGA358
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ARRIAII;
LIBRARY IEEE;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	I2CSlaveController IS
    PORT (
	SDA : IN std_logic;
	SCL : IN std_logic;
	Data_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END I2CSlaveController;

-- Design Ports Information
-- SDA	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCL	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[0]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[3]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[4]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[5]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[6]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[7]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF I2CSlaveController IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SDA : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL ww_Data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \SCL~input_o\ : std_logic;
SIGNAL \Data_out[0]~output_o\ : std_logic;
SIGNAL \Data_out[1]~output_o\ : std_logic;
SIGNAL \Data_out[2]~output_o\ : std_logic;
SIGNAL \Data_out[3]~output_o\ : std_logic;
SIGNAL \Data_out[4]~output_o\ : std_logic;
SIGNAL \Data_out[5]~output_o\ : std_logic;
SIGNAL \Data_out[6]~output_o\ : std_logic;
SIGNAL \Data_out[7]~output_o\ : std_logic;

BEGIN

ww_SDA <= SDA;
ww_SCL <= SCL;
Data_out <= ww_Data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X30_Y0_N2
\Data_out[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[0]~output_o\);

-- Location: IOOBUF_X33_Y56_N98
\Data_out[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[1]~output_o\);

-- Location: IOOBUF_X59_Y46_N67
\Data_out[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N67
\Data_out[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[3]~output_o\);

-- Location: IOOBUF_X43_Y0_N67
\Data_out[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[4]~output_o\);

-- Location: IOOBUF_X59_Y51_N5
\Data_out[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N98
\Data_out[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N67
\Data_out[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data_out[7]~output_o\);

-- Location: IOIBUF_X30_Y0_N94
\SDA~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDA,
	o => \SDA~input_o\);

-- Location: IOIBUF_X3_Y0_N94
\SCL~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCL,
	o => \SCL~input_o\);

ww_Data_out(0) <= \Data_out[0]~output_o\;

ww_Data_out(1) <= \Data_out[1]~output_o\;

ww_Data_out(2) <= \Data_out[2]~output_o\;

ww_Data_out(3) <= \Data_out[3]~output_o\;

ww_Data_out(4) <= \Data_out[4]~output_o\;

ww_Data_out(5) <= \Data_out[5]~output_o\;

ww_Data_out(6) <= \Data_out[6]~output_o\;

ww_Data_out(7) <= \Data_out[7]~output_o\;
END structure;


