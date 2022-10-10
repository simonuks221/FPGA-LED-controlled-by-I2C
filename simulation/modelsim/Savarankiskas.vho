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

-- DATE "10/10/2022 22:38:04"

-- 
-- Device: Altera EP2AGX45CU17I3 Package UFBGA358
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ARRIAII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
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
-- Data_out[0]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[1]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[3]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[4]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[5]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[7]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCL	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Data_out[0]~output_o\ : std_logic;
SIGNAL \Data_out[1]~output_o\ : std_logic;
SIGNAL \Data_out[2]~output_o\ : std_logic;
SIGNAL \Data_out[3]~output_o\ : std_logic;
SIGNAL \Data_out[4]~output_o\ : std_logic;
SIGNAL \Data_out[5]~output_o\ : std_logic;
SIGNAL \Data_out[6]~output_o\ : std_logic;
SIGNAL \Data_out[7]~output_o\ : std_logic;
SIGNAL \SCL~input_o\ : std_logic;
SIGNAL \SCL~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \start~0_combout\ : std_logic;
SIGNAL \start~feeder_combout\ : std_logic;
SIGNAL \start~q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \dataIndex[1]~feeder_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \data[0]~0_combout\ : std_logic;
SIGNAL \data[1]~1_combout\ : std_logic;
SIGNAL \data[2]~2_combout\ : std_logic;
SIGNAL \data[3]~3_combout\ : std_logic;
SIGNAL \data[4]~4_combout\ : std_logic;
SIGNAL \data[5]~5_combout\ : std_logic;
SIGNAL \data[6]~6_combout\ : std_logic;
SIGNAL \data[7]~7_combout\ : std_logic;
SIGNAL dataIndex : std_logic_vector(31 DOWNTO 0);
SIGNAL data : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_SCL~input_o\ : std_logic;
SIGNAL \ALT_INV_SDA~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_start~0_combout\ : std_logic;
SIGNAL \ALT_INV_start~q\ : std_logic;
SIGNAL ALT_INV_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL ALT_INV_dataIndex : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_SDA <= SDA;
ww_SCL <= SCL;
Data_out <= ww_Data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SCL~input_o\ <= NOT \SCL~input_o\;
\ALT_INV_SDA~input_o\ <= NOT \SDA~input_o\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_start~0_combout\ <= NOT \start~0_combout\;
\ALT_INV_start~q\ <= NOT \start~q\;
ALT_INV_data(7) <= NOT data(7);
ALT_INV_data(6) <= NOT data(6);
ALT_INV_data(5) <= NOT data(5);
ALT_INV_data(4) <= NOT data(4);
ALT_INV_data(3) <= NOT data(3);
ALT_INV_data(2) <= NOT data(2);
ALT_INV_data(1) <= NOT data(1);
ALT_INV_data(0) <= NOT data(0);
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
ALT_INV_dataIndex(3) <= NOT dataIndex(3);
ALT_INV_dataIndex(4) <= NOT dataIndex(4);
ALT_INV_dataIndex(5) <= NOT dataIndex(5);
ALT_INV_dataIndex(6) <= NOT dataIndex(6);
ALT_INV_dataIndex(7) <= NOT dataIndex(7);
ALT_INV_dataIndex(8) <= NOT dataIndex(8);
ALT_INV_dataIndex(9) <= NOT dataIndex(9);
ALT_INV_dataIndex(10) <= NOT dataIndex(10);
ALT_INV_dataIndex(11) <= NOT dataIndex(11);
ALT_INV_dataIndex(12) <= NOT dataIndex(12);
ALT_INV_dataIndex(13) <= NOT dataIndex(13);
ALT_INV_dataIndex(14) <= NOT dataIndex(14);
ALT_INV_dataIndex(15) <= NOT dataIndex(15);
ALT_INV_dataIndex(16) <= NOT dataIndex(16);
ALT_INV_dataIndex(17) <= NOT dataIndex(17);
ALT_INV_dataIndex(18) <= NOT dataIndex(18);
ALT_INV_dataIndex(19) <= NOT dataIndex(19);
ALT_INV_dataIndex(20) <= NOT dataIndex(20);
ALT_INV_dataIndex(21) <= NOT dataIndex(21);
ALT_INV_dataIndex(22) <= NOT dataIndex(22);
ALT_INV_dataIndex(23) <= NOT dataIndex(23);
ALT_INV_dataIndex(24) <= NOT dataIndex(24);
ALT_INV_dataIndex(25) <= NOT dataIndex(25);
ALT_INV_dataIndex(26) <= NOT dataIndex(26);
ALT_INV_dataIndex(27) <= NOT dataIndex(27);
ALT_INV_dataIndex(28) <= NOT dataIndex(28);
ALT_INV_dataIndex(29) <= NOT dataIndex(29);
ALT_INV_dataIndex(30) <= NOT dataIndex(30);
ALT_INV_dataIndex(31) <= NOT dataIndex(31);
ALT_INV_dataIndex(1) <= NOT dataIndex(1);
ALT_INV_dataIndex(2) <= NOT dataIndex(2);
ALT_INV_dataIndex(0) <= NOT dataIndex(0);

-- Location: IOOBUF_X32_Y0_N67
\Data_out[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data(0),
	devoe => ww_devoe,
	o => \Data_out[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Data_out[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data(1),
	devoe => ww_devoe,
	o => \Data_out[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N36
\Data_out[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data(2),
	devoe => ww_devoe,
	o => \Data_out[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N67
\Data_out[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data(3),
	devoe => ww_devoe,
	o => \Data_out[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\Data_out[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data(4),
	devoe => ww_devoe,
	o => \Data_out[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N98
\Data_out[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data(5),
	devoe => ww_devoe,
	o => \Data_out[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N98
\Data_out[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data(6),
	devoe => ww_devoe,
	o => \Data_out[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N67
\Data_out[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data(7),
	devoe => ww_devoe,
	o => \Data_out[7]~output_o\);

-- Location: IOIBUF_X26_Y0_N32
\SCL~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCL,
	o => \SCL~input_o\);

-- Location: CLKCTRL_G7
\SCL~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SCL~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SCL~inputclkctrl_outclk\);

-- Location: LABCELL_X27_Y2_N0
\Add0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( dataIndex(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( dataIndex(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X27_Y2_N4
\Add0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( dataIndex(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( dataIndex(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X27_Y2_N6
\Add0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( dataIndex(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( dataIndex(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: IOIBUF_X29_Y0_N32
\SDA~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDA,
	o => \SDA~input_o\);

-- Location: MLABCELL_X26_Y1_N4
\start~0\ : arriaii_lcell_comb
-- Equation(s):
-- \start~0_combout\ = ( \start~q\ ) # ( !\start~q\ & ( \SCL~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SCL~input_o\,
	dataf => \ALT_INV_start~q\,
	combout => \start~0_combout\);

-- Location: MLABCELL_X26_Y1_N16
\start~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \start~feeder_combout\ = \start~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~0_combout\,
	combout => \start~feeder_combout\);

-- Location: FF_X26_Y1_N17
start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SDA~input_o\,
	d => \start~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start~q\);

-- Location: FF_X27_Y2_N7
\dataIndex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(3));

-- Location: LABCELL_X27_Y2_N8
\Add0~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( dataIndex(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( dataIndex(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X27_Y2_N9
\dataIndex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(4));

-- Location: LABCELL_X27_Y2_N10
\Add0~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( dataIndex(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( dataIndex(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X27_Y2_N11
\dataIndex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(5));

-- Location: LABCELL_X27_Y2_N12
\Add0~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( dataIndex(6) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( dataIndex(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X27_Y2_N13
\dataIndex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(6));

-- Location: LABCELL_X27_Y2_N14
\Add0~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( dataIndex(7) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( dataIndex(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X27_Y2_N15
\dataIndex[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(7));

-- Location: LABCELL_X27_Y2_N16
\Add0~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( dataIndex(8) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( dataIndex(8) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(8),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X27_Y2_N17
\dataIndex[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(8));

-- Location: LABCELL_X27_Y2_N18
\Add0~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( dataIndex(9) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( dataIndex(9) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(9),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X27_Y2_N19
\dataIndex[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(9));

-- Location: LABCELL_X27_Y2_N20
\Add0~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( dataIndex(10) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( dataIndex(10) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(10),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X27_Y2_N21
\dataIndex[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(10));

-- Location: LABCELL_X27_Y2_N22
\Add0~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( dataIndex(11) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( dataIndex(11) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(11),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X27_Y2_N23
\dataIndex[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(11));

-- Location: LABCELL_X27_Y2_N24
\Add0~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( dataIndex(12) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( dataIndex(12) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(12),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X27_Y2_N25
\dataIndex[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(12));

-- Location: LABCELL_X27_Y2_N26
\Add0~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( dataIndex(13) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( dataIndex(13) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(13),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X27_Y2_N27
\dataIndex[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(13));

-- Location: LABCELL_X27_Y2_N28
\Add0~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( dataIndex(14) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( dataIndex(14) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(14),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X27_Y2_N29
\dataIndex[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(14));

-- Location: LABCELL_X27_Y2_N30
\Add0~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( dataIndex(15) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( dataIndex(15) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(15),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X27_Y1_N37
\dataIndex[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	asdata => \Add0~61_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(15));

-- Location: LABCELL_X27_Y2_N32
\Add0~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( GND ) + ( dataIndex(16) ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( GND ) + ( dataIndex(16) ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_dataIndex(16),
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X27_Y1_N31
\dataIndex[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	asdata => \Add0~65_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(16));

-- Location: LABCELL_X27_Y2_N34
\Add0~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( dataIndex(17) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( dataIndex(17) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(17),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X27_Y1_N27
\dataIndex[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	asdata => \Add0~69_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(17));

-- Location: LABCELL_X27_Y2_N36
\Add0~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( GND ) + ( dataIndex(18) ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( GND ) + ( dataIndex(18) ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_dataIndex(18),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X27_Y1_N29
\dataIndex[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	asdata => \Add0~73_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(18));

-- Location: LABCELL_X27_Y2_N38
\Add0~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( GND ) + ( dataIndex(19) ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( GND ) + ( dataIndex(19) ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_dataIndex(19),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X27_Y1_N33
\dataIndex[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	asdata => \Add0~77_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(19));

-- Location: LABCELL_X27_Y1_N0
\Add0~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( dataIndex(20) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( dataIndex(20) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(20),
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X27_Y1_N1
\dataIndex[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~81_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(20));

-- Location: LABCELL_X27_Y1_N38
\Equal0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !dataIndex(15) & ( !dataIndex(18) & ( (!dataIndex(19) & (!dataIndex(16) & (!dataIndex(17) & !dataIndex(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dataIndex(19),
	datab => ALT_INV_dataIndex(16),
	datac => ALT_INV_dataIndex(17),
	datad => ALT_INV_dataIndex(20),
	datae => ALT_INV_dataIndex(15),
	dataf => ALT_INV_dataIndex(18),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X27_Y1_N2
\Add0~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( dataIndex(21) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( dataIndex(21) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(21),
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X27_Y1_N3
\dataIndex[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(21));

-- Location: LABCELL_X27_Y1_N4
\Add0~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( dataIndex(22) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( dataIndex(22) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(22),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X27_Y1_N5
\dataIndex[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~89_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(22));

-- Location: LABCELL_X27_Y1_N6
\Add0~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( dataIndex(23) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( dataIndex(23) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(23),
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X27_Y1_N7
\dataIndex[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~93_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(23));

-- Location: LABCELL_X27_Y1_N8
\Add0~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( dataIndex(24) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( dataIndex(24) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(24),
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X27_Y1_N9
\dataIndex[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~97_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(24));

-- Location: LABCELL_X27_Y1_N10
\Add0~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( dataIndex(25) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( dataIndex(25) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(25),
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X27_Y1_N11
\dataIndex[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~101_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(25));

-- Location: LABCELL_X27_Y1_N12
\Add0~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( dataIndex(26) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( dataIndex(26) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(26),
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X27_Y1_N13
\dataIndex[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~105_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(26));

-- Location: LABCELL_X27_Y1_N34
\Equal0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !dataIndex(26) & ( !dataIndex(25) & ( (!dataIndex(22) & (!dataIndex(21) & (!dataIndex(23) & !dataIndex(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dataIndex(22),
	datab => ALT_INV_dataIndex(21),
	datac => ALT_INV_dataIndex(23),
	datad => ALT_INV_dataIndex(24),
	datae => ALT_INV_dataIndex(26),
	dataf => ALT_INV_dataIndex(25),
	combout => \Equal0~2_combout\);

-- Location: MLABCELL_X26_Y2_N14
\Equal0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !dataIndex(8) & ( !dataIndex(3) & ( (!dataIndex(6) & (!dataIndex(5) & (!dataIndex(4) & !dataIndex(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dataIndex(6),
	datab => ALT_INV_dataIndex(5),
	datac => ALT_INV_dataIndex(4),
	datad => ALT_INV_dataIndex(7),
	datae => ALT_INV_dataIndex(8),
	dataf => ALT_INV_dataIndex(3),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X27_Y1_N14
\Add0~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( dataIndex(27) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( dataIndex(27) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(27),
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X27_Y1_N15
\dataIndex[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~109_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(27));

-- Location: LABCELL_X27_Y1_N16
\Add0~113\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( dataIndex(28) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( dataIndex(28) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(28),
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X27_Y1_N17
\dataIndex[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~113_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(28));

-- Location: LABCELL_X27_Y1_N18
\Add0~117\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( dataIndex(29) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( dataIndex(29) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(29),
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X27_Y1_N19
\dataIndex[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~117_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(29));

-- Location: LABCELL_X27_Y1_N20
\Add0~121\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( dataIndex(30) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( dataIndex(30) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(30),
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X27_Y1_N21
\dataIndex[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~121_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(30));

-- Location: LABCELL_X27_Y1_N22
\Add0~125\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( dataIndex(31) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(31),
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\);

-- Location: FF_X27_Y1_N23
\dataIndex[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~125_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(31));

-- Location: LABCELL_X27_Y1_N24
\Equal0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( dataIndex(2) & ( !dataIndex(28) & ( (!dataIndex(30) & (!dataIndex(29) & (!dataIndex(31) & !dataIndex(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dataIndex(30),
	datab => ALT_INV_dataIndex(29),
	datac => ALT_INV_dataIndex(31),
	datad => ALT_INV_dataIndex(27),
	datae => ALT_INV_dataIndex(2),
	dataf => ALT_INV_dataIndex(28),
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X26_Y2_N24
\Equal0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !dataIndex(10) & ( !dataIndex(13) & ( (!dataIndex(11) & (!dataIndex(12) & (!dataIndex(9) & !dataIndex(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dataIndex(11),
	datab => ALT_INV_dataIndex(12),
	datac => ALT_INV_dataIndex(9),
	datad => ALT_INV_dataIndex(14),
	datae => ALT_INV_dataIndex(10),
	dataf => ALT_INV_dataIndex(13),
	combout => \Equal0~4_combout\);

-- Location: MLABCELL_X26_Y1_N2
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( dataIndex(1) & ( dataIndex(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_dataIndex(0),
	datae => ALT_INV_dataIndex(1),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X27_Y1_N30
\Equal0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~4_combout\ & ( \Equal0~0_combout\ & ( (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~5_combout\ & \Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~6_combout\);

-- Location: FF_X26_Y1_N35
\dataIndex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	asdata => \Add0~1_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(0));

-- Location: LABCELL_X27_Y2_N2
\Add0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( dataIndex(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( dataIndex(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dataIndex(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X26_Y1_N12
\dataIndex[1]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \dataIndex[1]~feeder_combout\ = ( \Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \dataIndex[1]~feeder_combout\);

-- Location: FF_X26_Y1_N13
\dataIndex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \dataIndex[1]~feeder_combout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(1));

-- Location: FF_X27_Y2_N5
\dataIndex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \start~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataIndex(2));

-- Location: MLABCELL_X29_Y1_N8
\data[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \data[0]~0_combout\ = ( data(0) & ( \SDA~input_o\ ) ) # ( !data(0) & ( \SDA~input_o\ & ( (!dataIndex(2) & (!dataIndex(0) & (\start~q\ & !dataIndex(1)))) ) ) ) # ( data(0) & ( !\SDA~input_o\ & ( (((!\start~q\) # (dataIndex(1))) # (dataIndex(0))) # 
-- (dataIndex(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111111111100001000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dataIndex(2),
	datab => ALT_INV_dataIndex(0),
	datac => \ALT_INV_start~q\,
	datad => ALT_INV_dataIndex(1),
	datae => ALT_INV_data(0),
	dataf => \ALT_INV_SDA~input_o\,
	combout => \data[0]~0_combout\);

-- Location: FF_X29_Y1_N9
\data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(0));

-- Location: MLABCELL_X29_Y1_N28
\data[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \data[1]~1_combout\ = ( data(1) & ( \SDA~input_o\ ) ) # ( !data(1) & ( \SDA~input_o\ & ( (!dataIndex(2) & (dataIndex(0) & (\start~q\ & !dataIndex(1)))) ) ) ) # ( data(1) & ( !\SDA~input_o\ & ( ((!dataIndex(0)) # ((!\start~q\) # (dataIndex(1)))) # 
-- (dataIndex(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011111111100000010000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dataIndex(2),
	datab => ALT_INV_dataIndex(0),
	datac => \ALT_INV_start~q\,
	datad => ALT_INV_dataIndex(1),
	datae => ALT_INV_data(1),
	dataf => \ALT_INV_SDA~input_o\,
	combout => \data[1]~1_combout\);

-- Location: FF_X29_Y1_N29
\data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(1));

-- Location: MLABCELL_X29_Y1_N24
\data[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \data[2]~2_combout\ = ( data(2) & ( \SDA~input_o\ ) ) # ( !data(2) & ( \SDA~input_o\ & ( (!dataIndex(2) & (!dataIndex(0) & (\start~q\ & dataIndex(1)))) ) ) ) # ( data(2) & ( !\SDA~input_o\ & ( (((!\start~q\) # (!dataIndex(1))) # (dataIndex(0))) # 
-- (dataIndex(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dataIndex(2),
	datab => ALT_INV_dataIndex(0),
	datac => \ALT_INV_start~q\,
	datad => ALT_INV_dataIndex(1),
	datae => ALT_INV_data(2),
	dataf => \ALT_INV_SDA~input_o\,
	combout => \data[2]~2_combout\);

-- Location: FF_X29_Y1_N25
\data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(2));

-- Location: MLABCELL_X29_Y1_N36
\data[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \data[3]~3_combout\ = ( data(3) & ( \SDA~input_o\ ) ) # ( !data(3) & ( \SDA~input_o\ & ( (!dataIndex(2) & (dataIndex(0) & (\start~q\ & dataIndex(1)))) ) ) ) # ( data(3) & ( !\SDA~input_o\ & ( ((!dataIndex(0)) # ((!\start~q\) # (!dataIndex(1)))) # 
-- (dataIndex(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dataIndex(2),
	datab => ALT_INV_dataIndex(0),
	datac => \ALT_INV_start~q\,
	datad => ALT_INV_dataIndex(1),
	datae => ALT_INV_data(3),
	dataf => \ALT_INV_SDA~input_o\,
	combout => \data[3]~3_combout\);

-- Location: FF_X29_Y1_N37
\data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \data[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(3));

-- Location: MLABCELL_X29_Y1_N32
\data[4]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \data[4]~4_combout\ = ( data(4) & ( \SDA~input_o\ ) ) # ( !data(4) & ( \SDA~input_o\ & ( (dataIndex(2) & (!dataIndex(0) & (\start~q\ & !dataIndex(1)))) ) ) ) # ( data(4) & ( !\SDA~input_o\ & ( (!dataIndex(2)) # (((!\start~q\) # (dataIndex(1))) # 
-- (dataIndex(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111111111100000100000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dataIndex(2),
	datab => ALT_INV_dataIndex(0),
	datac => \ALT_INV_start~q\,
	datad => ALT_INV_dataIndex(1),
	datae => ALT_INV_data(4),
	dataf => \ALT_INV_SDA~input_o\,
	combout => \data[4]~4_combout\);

-- Location: FF_X29_Y1_N33
\data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \data[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(4));

-- Location: MLABCELL_X29_Y1_N12
\data[5]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \data[5]~5_combout\ = ( data(5) & ( \SDA~input_o\ ) ) # ( !data(5) & ( \SDA~input_o\ & ( (dataIndex(2) & (dataIndex(0) & (\start~q\ & !dataIndex(1)))) ) ) ) # ( data(5) & ( !\SDA~input_o\ & ( (!dataIndex(2)) # ((!dataIndex(0)) # ((!\start~q\) # 
-- (dataIndex(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111111100000001000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dataIndex(2),
	datab => ALT_INV_dataIndex(0),
	datac => \ALT_INV_start~q\,
	datad => ALT_INV_dataIndex(1),
	datae => ALT_INV_data(5),
	dataf => \ALT_INV_SDA~input_o\,
	combout => \data[5]~5_combout\);

-- Location: FF_X29_Y1_N13
\data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \data[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(5));

-- Location: MLABCELL_X29_Y1_N16
\data[6]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \data[6]~6_combout\ = ( data(6) & ( \SDA~input_o\ ) ) # ( !data(6) & ( \SDA~input_o\ & ( (dataIndex(2) & (!dataIndex(0) & (\start~q\ & dataIndex(1)))) ) ) ) # ( data(6) & ( !\SDA~input_o\ & ( (!dataIndex(2)) # (((!\start~q\) # (!dataIndex(1))) # 
-- (dataIndex(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dataIndex(2),
	datab => ALT_INV_dataIndex(0),
	datac => \ALT_INV_start~q\,
	datad => ALT_INV_dataIndex(1),
	datae => ALT_INV_data(6),
	dataf => \ALT_INV_SDA~input_o\,
	combout => \data[6]~6_combout\);

-- Location: FF_X29_Y1_N17
\data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \data[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(6));

-- Location: MLABCELL_X29_Y1_N20
\data[7]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \data[7]~7_combout\ = ( data(7) & ( \SDA~input_o\ ) ) # ( !data(7) & ( \SDA~input_o\ & ( (dataIndex(2) & (dataIndex(0) & (\start~q\ & dataIndex(1)))) ) ) ) # ( data(7) & ( !\SDA~input_o\ & ( (!dataIndex(2)) # ((!dataIndex(0)) # ((!\start~q\) # 
-- (!dataIndex(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dataIndex(2),
	datab => ALT_INV_dataIndex(0),
	datac => \ALT_INV_start~q\,
	datad => ALT_INV_dataIndex(1),
	datae => ALT_INV_data(7),
	dataf => \ALT_INV_SDA~input_o\,
	combout => \data[7]~7_combout\);

-- Location: FF_X29_Y1_N21
\data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \data[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(7));

ww_Data_out(0) <= \Data_out[0]~output_o\;

ww_Data_out(1) <= \Data_out[1]~output_o\;

ww_Data_out(2) <= \Data_out[2]~output_o\;

ww_Data_out(3) <= \Data_out[3]~output_o\;

ww_Data_out(4) <= \Data_out[4]~output_o\;

ww_Data_out(5) <= \Data_out[5]~output_o\;

ww_Data_out(6) <= \Data_out[6]~output_o\;

ww_Data_out(7) <= \Data_out[7]~output_o\;
END structure;


