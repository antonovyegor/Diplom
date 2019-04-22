-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/20/2019 22:22:44"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uartRX IS
    PORT (
	clk50 : IN std_logic;
	R : IN std_logic;
	RX : IN std_logic;
	RXOUT : OUT std_logic_vector(31 DOWNTO 0);
	ready : OUT std_logic
	);
END uartRX;

-- Design Ports Information
-- RXOUT[0]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[4]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[5]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[6]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[8]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[9]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[10]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[11]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[12]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[13]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[14]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[15]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[16]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[17]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[18]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[19]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[20]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[21]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[22]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[23]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[24]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[25]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[26]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[27]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[28]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[29]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[30]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXOUT[31]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uartRX IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50 : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_RX : std_logic;
SIGNAL ww_RXOUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ready : std_logic;
SIGNAL \R~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RXOUT[0]~output_o\ : std_logic;
SIGNAL \RXOUT[1]~output_o\ : std_logic;
SIGNAL \RXOUT[2]~output_o\ : std_logic;
SIGNAL \RXOUT[3]~output_o\ : std_logic;
SIGNAL \RXOUT[4]~output_o\ : std_logic;
SIGNAL \RXOUT[5]~output_o\ : std_logic;
SIGNAL \RXOUT[6]~output_o\ : std_logic;
SIGNAL \RXOUT[7]~output_o\ : std_logic;
SIGNAL \RXOUT[8]~output_o\ : std_logic;
SIGNAL \RXOUT[9]~output_o\ : std_logic;
SIGNAL \RXOUT[10]~output_o\ : std_logic;
SIGNAL \RXOUT[11]~output_o\ : std_logic;
SIGNAL \RXOUT[12]~output_o\ : std_logic;
SIGNAL \RXOUT[13]~output_o\ : std_logic;
SIGNAL \RXOUT[14]~output_o\ : std_logic;
SIGNAL \RXOUT[15]~output_o\ : std_logic;
SIGNAL \RXOUT[16]~output_o\ : std_logic;
SIGNAL \RXOUT[17]~output_o\ : std_logic;
SIGNAL \RXOUT[18]~output_o\ : std_logic;
SIGNAL \RXOUT[19]~output_o\ : std_logic;
SIGNAL \RXOUT[20]~output_o\ : std_logic;
SIGNAL \RXOUT[21]~output_o\ : std_logic;
SIGNAL \RXOUT[22]~output_o\ : std_logic;
SIGNAL \RXOUT[23]~output_o\ : std_logic;
SIGNAL \RXOUT[24]~output_o\ : std_logic;
SIGNAL \RXOUT[25]~output_o\ : std_logic;
SIGNAL \RXOUT[26]~output_o\ : std_logic;
SIGNAL \RXOUT[27]~output_o\ : std_logic;
SIGNAL \RXOUT[28]~output_o\ : std_logic;
SIGNAL \RXOUT[29]~output_o\ : std_logic;
SIGNAL \RXOUT[30]~output_o\ : std_logic;
SIGNAL \RXOUT[31]~output_o\ : std_logic;
SIGNAL \ready~output_o\ : std_logic;
SIGNAL \clk50~input_o\ : std_logic;
SIGNAL \clk50~inputclkctrl_outclk\ : std_logic;
SIGNAL \RX~input_o\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \rx_buffer[1]~feeder_combout\ : std_logic;
SIGNAL \rx_buffer[0]~feeder_combout\ : std_logic;
SIGNAL \data[31]~feeder_combout\ : std_logic;
SIGNAL \cnt[0]~9_combout\ : std_logic;
SIGNAL \R~inputclkctrl_outclk\ : std_logic;
SIGNAL \bit_cnt[0]~6_combout\ : std_logic;
SIGNAL \Selector6~4_combout\ : std_logic;
SIGNAL \Selector6~5_combout\ : std_logic;
SIGNAL \fsm.idle~q\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \bit_cnt[5]~8_combout\ : std_logic;
SIGNAL \bit_cnt[5]~9_combout\ : std_logic;
SIGNAL \bit_cnt[0]~7\ : std_logic;
SIGNAL \bit_cnt[1]~10_combout\ : std_logic;
SIGNAL \bit_cnt[1]~11\ : std_logic;
SIGNAL \bit_cnt[2]~12_combout\ : std_logic;
SIGNAL \bit_cnt[2]~13\ : std_logic;
SIGNAL \bit_cnt[3]~14_combout\ : std_logic;
SIGNAL \bit_cnt[3]~15\ : std_logic;
SIGNAL \bit_cnt[4]~16_combout\ : std_logic;
SIGNAL \bit_cnt[4]~17\ : std_logic;
SIGNAL \bit_cnt[5]~18_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \fsm.finish~q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \fsm.start~q\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \fsm.rec~q\ : std_logic;
SIGNAL \cnt[8]~19_combout\ : std_logic;
SIGNAL \cnt[8]~20_combout\ : std_logic;
SIGNAL \cnt[0]~10\ : std_logic;
SIGNAL \cnt[1]~11_combout\ : std_logic;
SIGNAL \cnt[1]~12\ : std_logic;
SIGNAL \cnt[2]~13_combout\ : std_logic;
SIGNAL \cnt[2]~14\ : std_logic;
SIGNAL \cnt[3]~15_combout\ : std_logic;
SIGNAL \cnt[3]~16\ : std_logic;
SIGNAL \cnt[4]~17_combout\ : std_logic;
SIGNAL \cnt[4]~18\ : std_logic;
SIGNAL \cnt[5]~21_combout\ : std_logic;
SIGNAL \cnt[5]~22\ : std_logic;
SIGNAL \cnt[6]~23_combout\ : std_logic;
SIGNAL \cnt[6]~24\ : std_logic;
SIGNAL \cnt[7]~25_combout\ : std_logic;
SIGNAL \cnt[7]~26\ : std_logic;
SIGNAL \cnt[8]~27_combout\ : std_logic;
SIGNAL \data[0]~0_combout\ : std_logic;
SIGNAL \data[0]~1_combout\ : std_logic;
SIGNAL \data[30]~feeder_combout\ : std_logic;
SIGNAL \data[29]~feeder_combout\ : std_logic;
SIGNAL \data[28]~feeder_combout\ : std_logic;
SIGNAL \data[27]~feeder_combout\ : std_logic;
SIGNAL \data[26]~feeder_combout\ : std_logic;
SIGNAL \data[25]~feeder_combout\ : std_logic;
SIGNAL \data[24]~feeder_combout\ : std_logic;
SIGNAL \data[23]~feeder_combout\ : std_logic;
SIGNAL \data[22]~feeder_combout\ : std_logic;
SIGNAL \data[21]~feeder_combout\ : std_logic;
SIGNAL \data[20]~feeder_combout\ : std_logic;
SIGNAL \data[19]~feeder_combout\ : std_logic;
SIGNAL \data[18]~feeder_combout\ : std_logic;
SIGNAL \data[17]~feeder_combout\ : std_logic;
SIGNAL \data[16]~feeder_combout\ : std_logic;
SIGNAL \data[15]~feeder_combout\ : std_logic;
SIGNAL \data[14]~feeder_combout\ : std_logic;
SIGNAL \data[13]~feeder_combout\ : std_logic;
SIGNAL \data[12]~feeder_combout\ : std_logic;
SIGNAL \data[11]~feeder_combout\ : std_logic;
SIGNAL \data[10]~feeder_combout\ : std_logic;
SIGNAL \data[9]~feeder_combout\ : std_logic;
SIGNAL \data[8]~feeder_combout\ : std_logic;
SIGNAL \data[7]~feeder_combout\ : std_logic;
SIGNAL \data[6]~feeder_combout\ : std_logic;
SIGNAL \data[5]~feeder_combout\ : std_logic;
SIGNAL \data[4]~feeder_combout\ : std_logic;
SIGNAL \data[3]~feeder_combout\ : std_logic;
SIGNAL \data[2]~feeder_combout\ : std_logic;
SIGNAL \data[1]~feeder_combout\ : std_logic;
SIGNAL \data[0]~feeder_combout\ : std_logic;
SIGNAL \RXOUT[0]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[0]~0_combout\ : std_logic;
SIGNAL \RXOUT[0]~reg0_q\ : std_logic;
SIGNAL \RXOUT[1]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[1]~reg0_q\ : std_logic;
SIGNAL \RXOUT[2]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[2]~reg0_q\ : std_logic;
SIGNAL \RXOUT[3]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[3]~reg0_q\ : std_logic;
SIGNAL \RXOUT[4]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[4]~reg0_q\ : std_logic;
SIGNAL \RXOUT[5]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[5]~reg0_q\ : std_logic;
SIGNAL \RXOUT[6]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[6]~reg0_q\ : std_logic;
SIGNAL \RXOUT[7]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[7]~reg0_q\ : std_logic;
SIGNAL \RXOUT[8]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[8]~reg0_q\ : std_logic;
SIGNAL \RXOUT[9]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[9]~reg0_q\ : std_logic;
SIGNAL \RXOUT[10]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[10]~reg0_q\ : std_logic;
SIGNAL \RXOUT[11]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[11]~reg0_q\ : std_logic;
SIGNAL \RXOUT[12]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[12]~reg0_q\ : std_logic;
SIGNAL \RXOUT[13]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[13]~reg0_q\ : std_logic;
SIGNAL \RXOUT[14]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[14]~reg0_q\ : std_logic;
SIGNAL \RXOUT[15]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[15]~reg0_q\ : std_logic;
SIGNAL \RXOUT[16]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[16]~reg0_q\ : std_logic;
SIGNAL \RXOUT[17]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[17]~reg0_q\ : std_logic;
SIGNAL \RXOUT[18]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[18]~reg0_q\ : std_logic;
SIGNAL \RXOUT[19]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[19]~reg0_q\ : std_logic;
SIGNAL \RXOUT[20]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[20]~reg0_q\ : std_logic;
SIGNAL \RXOUT[21]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[21]~reg0_q\ : std_logic;
SIGNAL \RXOUT[22]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[22]~reg0_q\ : std_logic;
SIGNAL \RXOUT[23]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[23]~reg0_q\ : std_logic;
SIGNAL \RXOUT[24]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[24]~reg0_q\ : std_logic;
SIGNAL \RXOUT[25]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[25]~reg0_q\ : std_logic;
SIGNAL \RXOUT[26]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[26]~reg0_q\ : std_logic;
SIGNAL \RXOUT[27]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[27]~reg0_q\ : std_logic;
SIGNAL \RXOUT[28]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[28]~reg0_q\ : std_logic;
SIGNAL \RXOUT[29]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[29]~reg0_q\ : std_logic;
SIGNAL \RXOUT[30]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[30]~reg0_q\ : std_logic;
SIGNAL \RXOUT[31]~reg0feeder_combout\ : std_logic;
SIGNAL \RXOUT[31]~reg0_q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \ready~reg0_q\ : std_logic;
SIGNAL cnt : std_logic_vector(8 DOWNTO 0);
SIGNAL bit_cnt : std_logic_vector(5 DOWNTO 0);
SIGNAL data : std_logic_vector(31 DOWNTO 0);
SIGNAL rx_buffer : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_R~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_R~input_o\ : std_logic;
SIGNAL \ALT_INV_fsm.rec~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk50 <= clk50;
ww_R <= R;
ww_RX <= RX;
RXOUT <= ww_RXOUT;
ready <= ww_ready;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\R~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \R~input_o\);

\clk50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50~input_o\);
\ALT_INV_R~inputclkctrl_outclk\ <= NOT \R~inputclkctrl_outclk\;
\ALT_INV_R~input_o\ <= NOT \R~input_o\;
\ALT_INV_fsm.rec~q\ <= NOT \fsm.rec~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X11_Y24_N16
\RXOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[0]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\RXOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[1]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\RXOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[2]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\RXOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[3]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[3]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\RXOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[4]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\RXOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[5]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[5]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\RXOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[6]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\RXOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[7]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\RXOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[8]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[8]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\RXOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[9]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[9]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\RXOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[10]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[10]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\RXOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[11]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[11]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\RXOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[12]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[12]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\RXOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[13]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[13]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\RXOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[14]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[14]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\RXOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[15]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[15]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\RXOUT[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[16]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[16]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\RXOUT[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[17]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[17]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\RXOUT[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[18]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[18]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\RXOUT[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[19]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[19]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\RXOUT[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[20]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[20]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\RXOUT[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[21]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[21]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\RXOUT[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[22]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[22]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\RXOUT[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[23]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[23]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\RXOUT[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[24]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[24]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\RXOUT[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[25]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[25]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\RXOUT[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[26]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[26]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\RXOUT[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[27]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[27]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\RXOUT[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[28]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[28]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\RXOUT[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[29]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[29]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\RXOUT[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[30]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[30]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\RXOUT[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RXOUT[31]~reg0_q\,
	devoe => ww_devoe,
	o => \RXOUT[31]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\ready~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ready~reg0_q\,
	devoe => ww_devoe,
	o => \ready~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50,
	o => \clk50~input_o\);

-- Location: CLKCTRL_G2
\clk50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y18_N1
\RX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX,
	o => \RX~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\R~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: FF_X18_Y18_N1
\rx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \RX~input_o\,
	sload => VCC,
	ena => \ALT_INV_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(3));

-- Location: FF_X18_Y18_N5
\rx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => rx_buffer(3),
	sload => VCC,
	ena => \ALT_INV_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(2));

-- Location: LCCOMB_X18_Y18_N14
\rx_buffer[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buffer[1]~feeder_combout\ = rx_buffer(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => rx_buffer(2),
	combout => \rx_buffer[1]~feeder_combout\);

-- Location: FF_X18_Y18_N15
\rx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \rx_buffer[1]~feeder_combout\,
	ena => \ALT_INV_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(1));

-- Location: LCCOMB_X18_Y18_N30
\rx_buffer[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buffer[0]~feeder_combout\ = rx_buffer(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => rx_buffer(1),
	combout => \rx_buffer[0]~feeder_combout\);

-- Location: FF_X18_Y18_N31
\rx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \rx_buffer[0]~feeder_combout\,
	ena => \ALT_INV_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(0));

-- Location: LCCOMB_X19_Y18_N12
\data[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[31]~feeder_combout\ = rx_buffer(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(0),
	combout => \data[31]~feeder_combout\);

-- Location: LCCOMB_X17_Y18_N4
\cnt[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[0]~9_combout\ = cnt(0) $ (VCC)
-- \cnt[0]~10\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	datad => VCC,
	combout => \cnt[0]~9_combout\,
	cout => \cnt[0]~10\);

-- Location: CLKCTRL_G4
\R~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \R~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \R~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y18_N14
\bit_cnt[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cnt[0]~6_combout\ = bit_cnt(0) $ (VCC)
-- \bit_cnt[0]~7\ = CARRY(bit_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_cnt(0),
	datad => VCC,
	combout => \bit_cnt[0]~6_combout\,
	cout => \bit_cnt[0]~7\);

-- Location: LCCOMB_X18_Y18_N16
\Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~4_combout\ = (!\Selector6~2_combout\ & (!\Selector6~3_combout\ & ((!\data[0]~0_combout\) # (!\Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~1_combout\,
	datab => \Selector6~2_combout\,
	datac => \Selector6~3_combout\,
	datad => \data[0]~0_combout\,
	combout => \Selector6~4_combout\);

-- Location: LCCOMB_X18_Y18_N20
\Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~5_combout\ = (!\fsm.finish~q\ & ((\fsm.idle~q\) # (!\Selector6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm.finish~q\,
	datac => \fsm.idle~q\,
	datad => \Selector6~4_combout\,
	combout => \Selector6~5_combout\);

-- Location: FF_X18_Y18_N21
\fsm.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Selector6~5_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm.idle~q\);

-- Location: LCCOMB_X18_Y18_N0
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (rx_buffer(0) & (!rx_buffer(1) & !\fsm.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buffer(0),
	datab => rx_buffer(1),
	datad => \fsm.idle~q\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X17_Y18_N26
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (cnt(1) & (!cnt(6) & (cnt(5) & !cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(6),
	datac => cnt(5),
	datad => cnt(3),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X17_Y18_N24
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (cnt(4) & (!cnt(0) & (!cnt(2) & cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datab => cnt(0),
	datac => cnt(2),
	datad => cnt(7),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X18_Y18_N8
\bit_cnt[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cnt[5]~8_combout\ = (\fsm.rec~q\ & (cnt(8) & (\Equal1~1_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm.rec~q\,
	datab => cnt(8),
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \bit_cnt[5]~8_combout\);

-- Location: LCCOMB_X19_Y18_N10
\bit_cnt[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cnt[5]~9_combout\ = (!\R~input_o\ & ((\Selector6~2_combout\) # ((!\Selector6~1_combout\ & \bit_cnt[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~2_combout\,
	datab => \R~input_o\,
	datac => \Selector6~1_combout\,
	datad => \bit_cnt[5]~8_combout\,
	combout => \bit_cnt[5]~9_combout\);

-- Location: FF_X19_Y18_N15
\bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \bit_cnt[0]~6_combout\,
	sclr => \ALT_INV_fsm.rec~q\,
	ena => \bit_cnt[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(0));

-- Location: LCCOMB_X19_Y18_N16
\bit_cnt[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cnt[1]~10_combout\ = (bit_cnt(1) & (!\bit_cnt[0]~7\)) # (!bit_cnt(1) & ((\bit_cnt[0]~7\) # (GND)))
-- \bit_cnt[1]~11\ = CARRY((!\bit_cnt[0]~7\) # (!bit_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_cnt(1),
	datad => VCC,
	cin => \bit_cnt[0]~7\,
	combout => \bit_cnt[1]~10_combout\,
	cout => \bit_cnt[1]~11\);

-- Location: FF_X19_Y18_N17
\bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \bit_cnt[1]~10_combout\,
	sclr => \ALT_INV_fsm.rec~q\,
	ena => \bit_cnt[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(1));

-- Location: LCCOMB_X19_Y18_N18
\bit_cnt[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cnt[2]~12_combout\ = (bit_cnt(2) & (\bit_cnt[1]~11\ $ (GND))) # (!bit_cnt(2) & (!\bit_cnt[1]~11\ & VCC))
-- \bit_cnt[2]~13\ = CARRY((bit_cnt(2) & !\bit_cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_cnt(2),
	datad => VCC,
	cin => \bit_cnt[1]~11\,
	combout => \bit_cnt[2]~12_combout\,
	cout => \bit_cnt[2]~13\);

-- Location: FF_X19_Y18_N19
\bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \bit_cnt[2]~12_combout\,
	sclr => \ALT_INV_fsm.rec~q\,
	ena => \bit_cnt[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(2));

-- Location: LCCOMB_X19_Y18_N20
\bit_cnt[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cnt[3]~14_combout\ = (bit_cnt(3) & (!\bit_cnt[2]~13\)) # (!bit_cnt(3) & ((\bit_cnt[2]~13\) # (GND)))
-- \bit_cnt[3]~15\ = CARRY((!\bit_cnt[2]~13\) # (!bit_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_cnt(3),
	datad => VCC,
	cin => \bit_cnt[2]~13\,
	combout => \bit_cnt[3]~14_combout\,
	cout => \bit_cnt[3]~15\);

-- Location: FF_X19_Y18_N21
\bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \bit_cnt[3]~14_combout\,
	sclr => \ALT_INV_fsm.rec~q\,
	ena => \bit_cnt[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(3));

-- Location: LCCOMB_X19_Y18_N22
\bit_cnt[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cnt[4]~16_combout\ = (bit_cnt(4) & (\bit_cnt[3]~15\ $ (GND))) # (!bit_cnt(4) & (!\bit_cnt[3]~15\ & VCC))
-- \bit_cnt[4]~17\ = CARRY((bit_cnt(4) & !\bit_cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(4),
	datad => VCC,
	cin => \bit_cnt[3]~15\,
	combout => \bit_cnt[4]~16_combout\,
	cout => \bit_cnt[4]~17\);

-- Location: FF_X19_Y18_N23
\bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \bit_cnt[4]~16_combout\,
	sclr => \ALT_INV_fsm.rec~q\,
	ena => \bit_cnt[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(4));

-- Location: LCCOMB_X19_Y18_N24
\bit_cnt[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cnt[5]~18_combout\ = \bit_cnt[4]~17\ $ (bit_cnt(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(5),
	cin => \bit_cnt[4]~17\,
	combout => \bit_cnt[5]~18_combout\);

-- Location: FF_X19_Y18_N25
\bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \bit_cnt[5]~18_combout\,
	sclr => \ALT_INV_fsm.rec~q\,
	ena => \bit_cnt[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(5));

-- Location: LCCOMB_X19_Y18_N2
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (bit_cnt(1) & (bit_cnt(3) & (bit_cnt(0) & bit_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(1),
	datab => bit_cnt(3),
	datac => bit_cnt(0),
	datad => bit_cnt(2),
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X19_Y18_N4
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (!bit_cnt(5) & (bit_cnt(4) & \Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_cnt(5),
	datac => bit_cnt(4),
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X18_Y18_N26
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\data[0]~0_combout\ & (\Selector6~1_combout\ & (!\fsm.finish~q\ & !\Selector6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~0_combout\,
	datab => \Selector6~1_combout\,
	datac => \fsm.finish~q\,
	datad => \Selector6~4_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X18_Y18_N27
\fsm.finish\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm.finish~q\);

-- Location: LCCOMB_X17_Y18_N0
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (cnt(3) & (cnt(6) & (!cnt(5) & !cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(6),
	datac => cnt(5),
	datad => cnt(1),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X17_Y18_N22
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (cnt(4) & (cnt(0) & (!cnt(2) & cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datab => cnt(0),
	datac => cnt(2),
	datad => cnt(7),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X18_Y18_N6
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!cnt(8) & (\Equal0~1_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(8),
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X18_Y18_N28
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\data[0]~0_combout\ & (!\Selector6~1_combout\ & ((!\Equal0~2_combout\) # (!\fsm.start~q\)))) # (!\data[0]~0_combout\ & (((!\Equal0~2_combout\)) # (!\fsm.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~0_combout\,
	datab => \fsm.start~q\,
	datac => \Selector6~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X18_Y18_N2
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (!\fsm.finish~q\ & (\Selector7~0_combout\ & ((\Selector6~2_combout\) # (\fsm.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm.finish~q\,
	datab => \Selector6~2_combout\,
	datac => \fsm.start~q\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: FF_X18_Y18_N3
\fsm.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm.start~q\);

-- Location: LCCOMB_X18_Y18_N22
\Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = (!cnt(8) & (\fsm.start~q\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(8),
	datab => \fsm.start~q\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Selector6~3_combout\);

-- Location: LCCOMB_X18_Y18_N12
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (!\fsm.finish~q\ & ((\Selector6~4_combout\ & ((\fsm.rec~q\))) # (!\Selector6~4_combout\ & (\Selector6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~3_combout\,
	datab => \fsm.finish~q\,
	datac => \fsm.rec~q\,
	datad => \Selector6~4_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X18_Y18_N13
\fsm.rec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm.rec~q\);

-- Location: LCCOMB_X17_Y18_N30
\cnt[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[8]~19_combout\ = ((\data[0]~0_combout\) # ((!\fsm.rec~q\ & \Equal0~2_combout\))) # (!\fsm.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm.rec~q\,
	datab => \fsm.idle~q\,
	datac => \data[0]~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \cnt[8]~19_combout\);

-- Location: LCCOMB_X18_Y18_N18
\cnt[8]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[8]~20_combout\ = (!\fsm.finish~q\ & ((\fsm.idle~q\) # ((rx_buffer(0) & !rx_buffer(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buffer(0),
	datab => \fsm.finish~q\,
	datac => rx_buffer(1),
	datad => \fsm.idle~q\,
	combout => \cnt[8]~20_combout\);

-- Location: FF_X17_Y18_N5
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cnt[0]~9_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	sclr => \cnt[8]~19_combout\,
	ena => \cnt[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X17_Y18_N6
\cnt[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[1]~11_combout\ = (cnt(1) & (!\cnt[0]~10\)) # (!cnt(1) & ((\cnt[0]~10\) # (GND)))
-- \cnt[1]~12\ = CARRY((!\cnt[0]~10\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(1),
	datad => VCC,
	cin => \cnt[0]~10\,
	combout => \cnt[1]~11_combout\,
	cout => \cnt[1]~12\);

-- Location: FF_X17_Y18_N7
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cnt[1]~11_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	sclr => \cnt[8]~19_combout\,
	ena => \cnt[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X17_Y18_N8
\cnt[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[2]~13_combout\ = (cnt(2) & (\cnt[1]~12\ $ (GND))) # (!cnt(2) & (!\cnt[1]~12\ & VCC))
-- \cnt[2]~14\ = CARRY((cnt(2) & !\cnt[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(2),
	datad => VCC,
	cin => \cnt[1]~12\,
	combout => \cnt[2]~13_combout\,
	cout => \cnt[2]~14\);

-- Location: FF_X17_Y18_N9
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cnt[2]~13_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	sclr => \cnt[8]~19_combout\,
	ena => \cnt[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X17_Y18_N10
\cnt[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[3]~15_combout\ = (cnt(3) & (!\cnt[2]~14\)) # (!cnt(3) & ((\cnt[2]~14\) # (GND)))
-- \cnt[3]~16\ = CARRY((!\cnt[2]~14\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(3),
	datad => VCC,
	cin => \cnt[2]~14\,
	combout => \cnt[3]~15_combout\,
	cout => \cnt[3]~16\);

-- Location: FF_X17_Y18_N11
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cnt[3]~15_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	sclr => \cnt[8]~19_combout\,
	ena => \cnt[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X17_Y18_N12
\cnt[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[4]~17_combout\ = (cnt(4) & (\cnt[3]~16\ $ (GND))) # (!cnt(4) & (!\cnt[3]~16\ & VCC))
-- \cnt[4]~18\ = CARRY((cnt(4) & !\cnt[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(4),
	datad => VCC,
	cin => \cnt[3]~16\,
	combout => \cnt[4]~17_combout\,
	cout => \cnt[4]~18\);

-- Location: FF_X17_Y18_N13
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cnt[4]~17_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	sclr => \cnt[8]~19_combout\,
	ena => \cnt[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X17_Y18_N14
\cnt[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[5]~21_combout\ = (cnt(5) & (!\cnt[4]~18\)) # (!cnt(5) & ((\cnt[4]~18\) # (GND)))
-- \cnt[5]~22\ = CARRY((!\cnt[4]~18\) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(5),
	datad => VCC,
	cin => \cnt[4]~18\,
	combout => \cnt[5]~21_combout\,
	cout => \cnt[5]~22\);

-- Location: FF_X17_Y18_N15
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cnt[5]~21_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	sclr => \cnt[8]~19_combout\,
	ena => \cnt[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LCCOMB_X17_Y18_N16
\cnt[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[6]~23_combout\ = (cnt(6) & (\cnt[5]~22\ $ (GND))) # (!cnt(6) & (!\cnt[5]~22\ & VCC))
-- \cnt[6]~24\ = CARRY((cnt(6) & !\cnt[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(6),
	datad => VCC,
	cin => \cnt[5]~22\,
	combout => \cnt[6]~23_combout\,
	cout => \cnt[6]~24\);

-- Location: FF_X17_Y18_N17
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cnt[6]~23_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	sclr => \cnt[8]~19_combout\,
	ena => \cnt[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LCCOMB_X17_Y18_N18
\cnt[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[7]~25_combout\ = (cnt(7) & (!\cnt[6]~24\)) # (!cnt(7) & ((\cnt[6]~24\) # (GND)))
-- \cnt[7]~26\ = CARRY((!\cnt[6]~24\) # (!cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(7),
	datad => VCC,
	cin => \cnt[6]~24\,
	combout => \cnt[7]~25_combout\,
	cout => \cnt[7]~26\);

-- Location: FF_X17_Y18_N19
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cnt[7]~25_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	sclr => \cnt[8]~19_combout\,
	ena => \cnt[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: LCCOMB_X17_Y18_N20
\cnt[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[8]~27_combout\ = \cnt[7]~26\ $ (!cnt(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(8),
	cin => \cnt[7]~26\,
	combout => \cnt[8]~27_combout\);

-- Location: FF_X17_Y18_N21
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \cnt[8]~27_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	sclr => \cnt[8]~19_combout\,
	ena => \cnt[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: LCCOMB_X17_Y18_N2
\data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[0]~0_combout\ = (cnt(8) & (\fsm.rec~q\ & (\Equal1~1_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(8),
	datab => \fsm.rec~q\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \data[0]~0_combout\);

-- Location: LCCOMB_X17_Y18_N28
\data[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[0]~1_combout\ = (!\R~input_o\ & \data[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R~input_o\,
	datad => \data[0]~0_combout\,
	combout => \data[0]~1_combout\);

-- Location: FF_X19_Y18_N13
\data[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[31]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(31));

-- Location: LCCOMB_X16_Y18_N18
\data[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[30]~feeder_combout\ = data(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(31),
	combout => \data[30]~feeder_combout\);

-- Location: FF_X16_Y18_N19
\data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[30]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(30));

-- Location: LCCOMB_X16_Y18_N12
\data[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[29]~feeder_combout\ = data(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(30),
	combout => \data[29]~feeder_combout\);

-- Location: FF_X16_Y18_N13
\data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[29]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(29));

-- Location: LCCOMB_X16_Y18_N6
\data[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[28]~feeder_combout\ = data(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(29),
	combout => \data[28]~feeder_combout\);

-- Location: FF_X16_Y18_N7
\data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[28]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(28));

-- Location: LCCOMB_X16_Y18_N16
\data[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[27]~feeder_combout\ = data(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(28),
	combout => \data[27]~feeder_combout\);

-- Location: FF_X16_Y18_N17
\data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[27]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(27));

-- Location: LCCOMB_X16_Y18_N2
\data[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[26]~feeder_combout\ = data(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(27),
	combout => \data[26]~feeder_combout\);

-- Location: FF_X16_Y18_N3
\data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[26]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(26));

-- Location: LCCOMB_X16_Y18_N20
\data[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[25]~feeder_combout\ = data(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(26),
	combout => \data[25]~feeder_combout\);

-- Location: FF_X16_Y18_N21
\data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[25]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(25));

-- Location: LCCOMB_X16_Y18_N22
\data[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[24]~feeder_combout\ = data(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(25),
	combout => \data[24]~feeder_combout\);

-- Location: FF_X16_Y18_N23
\data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[24]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(24));

-- Location: LCCOMB_X14_Y18_N30
\data[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[23]~feeder_combout\ = data(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(24),
	combout => \data[23]~feeder_combout\);

-- Location: FF_X14_Y18_N31
\data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[23]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(23));

-- Location: LCCOMB_X14_Y18_N16
\data[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[22]~feeder_combout\ = data(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(23),
	combout => \data[22]~feeder_combout\);

-- Location: FF_X14_Y18_N17
\data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[22]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(22));

-- Location: LCCOMB_X14_Y18_N10
\data[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[21]~feeder_combout\ = data(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(22),
	combout => \data[21]~feeder_combout\);

-- Location: FF_X14_Y18_N11
\data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[21]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(21));

-- Location: LCCOMB_X14_Y18_N12
\data[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[20]~feeder_combout\ = data(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(21),
	combout => \data[20]~feeder_combout\);

-- Location: FF_X14_Y18_N13
\data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[20]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(20));

-- Location: LCCOMB_X14_Y18_N14
\data[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[19]~feeder_combout\ = data(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(20),
	combout => \data[19]~feeder_combout\);

-- Location: FF_X14_Y18_N15
\data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[19]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(19));

-- Location: LCCOMB_X14_Y18_N28
\data[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[18]~feeder_combout\ = data(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(19),
	combout => \data[18]~feeder_combout\);

-- Location: FF_X14_Y18_N29
\data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[18]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(18));

-- Location: LCCOMB_X14_Y18_N18
\data[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[17]~feeder_combout\ = data(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(18),
	combout => \data[17]~feeder_combout\);

-- Location: FF_X14_Y18_N19
\data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[17]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(17));

-- Location: LCCOMB_X14_Y18_N4
\data[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[16]~feeder_combout\ = data(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(17),
	combout => \data[16]~feeder_combout\);

-- Location: FF_X14_Y18_N5
\data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[16]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(16));

-- Location: LCCOMB_X17_Y20_N26
\data[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[15]~feeder_combout\ = data(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(16),
	combout => \data[15]~feeder_combout\);

-- Location: FF_X17_Y20_N27
\data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[15]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(15));

-- Location: LCCOMB_X16_Y20_N18
\data[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[14]~feeder_combout\ = data(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(15),
	combout => \data[14]~feeder_combout\);

-- Location: FF_X16_Y20_N19
\data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[14]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(14));

-- Location: LCCOMB_X16_Y20_N4
\data[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[13]~feeder_combout\ = data(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(14),
	combout => \data[13]~feeder_combout\);

-- Location: FF_X16_Y20_N5
\data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[13]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(13));

-- Location: LCCOMB_X16_Y20_N14
\data[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[12]~feeder_combout\ = data(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(13),
	combout => \data[12]~feeder_combout\);

-- Location: FF_X16_Y20_N15
\data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[12]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(12));

-- Location: LCCOMB_X16_Y20_N12
\data[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[11]~feeder_combout\ = data(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(12),
	combout => \data[11]~feeder_combout\);

-- Location: FF_X16_Y20_N13
\data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[11]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(11));

-- Location: LCCOMB_X17_Y20_N20
\data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[10]~feeder_combout\ = data(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(11),
	combout => \data[10]~feeder_combout\);

-- Location: FF_X17_Y20_N21
\data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[10]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(10));

-- Location: LCCOMB_X17_Y20_N22
\data[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[9]~feeder_combout\ = data(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(10),
	combout => \data[9]~feeder_combout\);

-- Location: FF_X17_Y20_N23
\data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[9]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(9));

-- Location: LCCOMB_X16_Y18_N28
\data[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[8]~feeder_combout\ = data(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(9),
	combout => \data[8]~feeder_combout\);

-- Location: FF_X16_Y18_N29
\data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[8]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(8));

-- Location: LCCOMB_X16_Y18_N26
\data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[7]~feeder_combout\ = data(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(8),
	combout => \data[7]~feeder_combout\);

-- Location: FF_X16_Y18_N27
\data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[7]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(7));

-- Location: LCCOMB_X16_Y18_N0
\data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[6]~feeder_combout\ = data(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(7),
	combout => \data[6]~feeder_combout\);

-- Location: FF_X16_Y18_N1
\data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[6]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(6));

-- Location: LCCOMB_X16_Y18_N10
\data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[5]~feeder_combout\ = data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(6),
	combout => \data[5]~feeder_combout\);

-- Location: FF_X16_Y18_N11
\data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[5]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(5));

-- Location: LCCOMB_X16_Y18_N4
\data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[4]~feeder_combout\ = data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(5),
	combout => \data[4]~feeder_combout\);

-- Location: FF_X16_Y18_N5
\data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[4]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(4));

-- Location: LCCOMB_X16_Y18_N30
\data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[3]~feeder_combout\ = data(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(4),
	combout => \data[3]~feeder_combout\);

-- Location: FF_X16_Y18_N31
\data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[3]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(3));

-- Location: LCCOMB_X16_Y18_N8
\data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[2]~feeder_combout\ = data(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(3),
	combout => \data[2]~feeder_combout\);

-- Location: FF_X16_Y18_N9
\data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[2]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(2));

-- Location: LCCOMB_X16_Y18_N14
\data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[1]~feeder_combout\ = data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(2),
	combout => \data[1]~feeder_combout\);

-- Location: FF_X16_Y18_N15
\data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[1]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(1));

-- Location: LCCOMB_X16_Y18_N24
\data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[0]~feeder_combout\ = data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(1),
	combout => \data[0]~feeder_combout\);

-- Location: FF_X16_Y18_N25
\data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \data[0]~feeder_combout\,
	ena => \data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(0));

-- Location: LCCOMB_X16_Y20_N20
\RXOUT[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[0]~reg0feeder_combout\ = data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(0),
	combout => \RXOUT[0]~reg0feeder_combout\);

-- Location: LCCOMB_X18_Y18_N4
\RXOUT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[0]~0_combout\ = (!\R~input_o\ & \fsm.finish~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R~input_o\,
	datad => \fsm.finish~q\,
	combout => \RXOUT[0]~0_combout\);

-- Location: FF_X16_Y20_N21
\RXOUT[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[0]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[0]~reg0_q\);

-- Location: LCCOMB_X17_Y20_N0
\RXOUT[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[1]~reg0feeder_combout\ = data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(1),
	combout => \RXOUT[1]~reg0feeder_combout\);

-- Location: FF_X17_Y20_N1
\RXOUT[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[1]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[1]~reg0_q\);

-- Location: LCCOMB_X13_Y18_N12
\RXOUT[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[2]~reg0feeder_combout\ = data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(2),
	combout => \RXOUT[2]~reg0feeder_combout\);

-- Location: FF_X13_Y18_N13
\RXOUT[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[2]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[2]~reg0_q\);

-- Location: LCCOMB_X16_Y20_N10
\RXOUT[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[3]~reg0feeder_combout\ = data(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(3),
	combout => \RXOUT[3]~reg0feeder_combout\);

-- Location: FF_X16_Y20_N11
\RXOUT[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[3]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[3]~reg0_q\);

-- Location: LCCOMB_X14_Y18_N8
\RXOUT[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[4]~reg0feeder_combout\ = data(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(4),
	combout => \RXOUT[4]~reg0feeder_combout\);

-- Location: FF_X14_Y18_N9
\RXOUT[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[4]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[4]~reg0_q\);

-- Location: LCCOMB_X16_Y20_N24
\RXOUT[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[5]~reg0feeder_combout\ = data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(5),
	combout => \RXOUT[5]~reg0feeder_combout\);

-- Location: FF_X16_Y20_N25
\RXOUT[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[5]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[5]~reg0_q\);

-- Location: LCCOMB_X17_Y20_N14
\RXOUT[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[6]~reg0feeder_combout\ = data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(6),
	combout => \RXOUT[6]~reg0feeder_combout\);

-- Location: FF_X17_Y20_N15
\RXOUT[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[6]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[6]~reg0_q\);

-- Location: LCCOMB_X17_Y20_N4
\RXOUT[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[7]~reg0feeder_combout\ = data(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(7),
	combout => \RXOUT[7]~reg0feeder_combout\);

-- Location: FF_X17_Y20_N5
\RXOUT[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[7]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[7]~reg0_q\);

-- Location: LCCOMB_X17_Y20_N10
\RXOUT[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[8]~reg0feeder_combout\ = data(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(8),
	combout => \RXOUT[8]~reg0feeder_combout\);

-- Location: FF_X17_Y20_N11
\RXOUT[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[8]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[8]~reg0_q\);

-- Location: LCCOMB_X17_Y20_N24
\RXOUT[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[9]~reg0feeder_combout\ = data(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(9),
	combout => \RXOUT[9]~reg0feeder_combout\);

-- Location: FF_X17_Y20_N25
\RXOUT[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[9]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[9]~reg0_q\);

-- Location: LCCOMB_X17_Y20_N2
\RXOUT[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[10]~reg0feeder_combout\ = data(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(10),
	combout => \RXOUT[10]~reg0feeder_combout\);

-- Location: FF_X17_Y20_N3
\RXOUT[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[10]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[10]~reg0_q\);

-- Location: LCCOMB_X17_Y20_N12
\RXOUT[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[11]~reg0feeder_combout\ = data(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(11),
	combout => \RXOUT[11]~reg0feeder_combout\);

-- Location: FF_X17_Y20_N13
\RXOUT[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[11]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[11]~reg0_q\);

-- Location: LCCOMB_X17_Y20_N18
\RXOUT[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[12]~reg0feeder_combout\ = data(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(12),
	combout => \RXOUT[12]~reg0feeder_combout\);

-- Location: FF_X17_Y20_N19
\RXOUT[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[12]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[12]~reg0_q\);

-- Location: LCCOMB_X14_Y20_N0
\RXOUT[13]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[13]~reg0feeder_combout\ = data(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(13),
	combout => \RXOUT[13]~reg0feeder_combout\);

-- Location: FF_X14_Y20_N1
\RXOUT[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[13]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[13]~reg0_q\);

-- Location: LCCOMB_X16_Y20_N6
\RXOUT[14]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[14]~reg0feeder_combout\ = data(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(14),
	combout => \RXOUT[14]~reg0feeder_combout\);

-- Location: FF_X16_Y20_N7
\RXOUT[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[14]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[14]~reg0_q\);

-- Location: LCCOMB_X17_Y20_N16
\RXOUT[15]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[15]~reg0feeder_combout\ = data(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(15),
	combout => \RXOUT[15]~reg0feeder_combout\);

-- Location: FF_X17_Y20_N17
\RXOUT[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[15]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[15]~reg0_q\);

-- Location: LCCOMB_X17_Y20_N30
\RXOUT[16]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[16]~reg0feeder_combout\ = data(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(16),
	combout => \RXOUT[16]~reg0feeder_combout\);

-- Location: FF_X17_Y20_N31
\RXOUT[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[16]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[16]~reg0_q\);

-- Location: LCCOMB_X13_Y18_N18
\RXOUT[17]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[17]~reg0feeder_combout\ = data(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(17),
	combout => \RXOUT[17]~reg0feeder_combout\);

-- Location: FF_X13_Y18_N19
\RXOUT[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[17]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[17]~reg0_q\);

-- Location: LCCOMB_X14_Y18_N6
\RXOUT[18]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[18]~reg0feeder_combout\ = data(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(18),
	combout => \RXOUT[18]~reg0feeder_combout\);

-- Location: FF_X14_Y18_N7
\RXOUT[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[18]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[18]~reg0_q\);

-- Location: LCCOMB_X14_Y18_N0
\RXOUT[19]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[19]~reg0feeder_combout\ = data(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(19),
	combout => \RXOUT[19]~reg0feeder_combout\);

-- Location: FF_X14_Y18_N1
\RXOUT[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[19]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[19]~reg0_q\);

-- Location: LCCOMB_X14_Y18_N26
\RXOUT[20]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[20]~reg0feeder_combout\ = data(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(20),
	combout => \RXOUT[20]~reg0feeder_combout\);

-- Location: FF_X14_Y18_N27
\RXOUT[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[20]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[20]~reg0_q\);

-- Location: LCCOMB_X14_Y18_N20
\RXOUT[21]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[21]~reg0feeder_combout\ = data(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(21),
	combout => \RXOUT[21]~reg0feeder_combout\);

-- Location: FF_X14_Y18_N21
\RXOUT[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[21]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[21]~reg0_q\);

-- Location: LCCOMB_X13_Y18_N8
\RXOUT[22]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[22]~reg0feeder_combout\ = data(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(22),
	combout => \RXOUT[22]~reg0feeder_combout\);

-- Location: FF_X13_Y18_N9
\RXOUT[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[22]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[22]~reg0_q\);

-- Location: LCCOMB_X14_Y20_N26
\RXOUT[23]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[23]~reg0feeder_combout\ = data(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(23),
	combout => \RXOUT[23]~reg0feeder_combout\);

-- Location: FF_X14_Y20_N27
\RXOUT[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[23]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[23]~reg0_q\);

-- Location: LCCOMB_X14_Y18_N22
\RXOUT[24]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[24]~reg0feeder_combout\ = data(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(24),
	combout => \RXOUT[24]~reg0feeder_combout\);

-- Location: FF_X14_Y18_N23
\RXOUT[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[24]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[24]~reg0_q\);

-- Location: LCCOMB_X13_Y18_N26
\RXOUT[25]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[25]~reg0feeder_combout\ = data(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(25),
	combout => \RXOUT[25]~reg0feeder_combout\);

-- Location: FF_X13_Y18_N27
\RXOUT[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[25]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[25]~reg0_q\);

-- Location: LCCOMB_X17_Y20_N28
\RXOUT[26]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[26]~reg0feeder_combout\ = data(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(26),
	combout => \RXOUT[26]~reg0feeder_combout\);

-- Location: FF_X17_Y20_N29
\RXOUT[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[26]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[26]~reg0_q\);

-- Location: LCCOMB_X16_Y20_N0
\RXOUT[27]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[27]~reg0feeder_combout\ = data(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(27),
	combout => \RXOUT[27]~reg0feeder_combout\);

-- Location: FF_X16_Y20_N1
\RXOUT[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[27]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[27]~reg0_q\);

-- Location: LCCOMB_X16_Y20_N22
\RXOUT[28]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[28]~reg0feeder_combout\ = data(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(28),
	combout => \RXOUT[28]~reg0feeder_combout\);

-- Location: FF_X16_Y20_N23
\RXOUT[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[28]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[28]~reg0_q\);

-- Location: LCCOMB_X17_Y20_N6
\RXOUT[29]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[29]~reg0feeder_combout\ = data(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(29),
	combout => \RXOUT[29]~reg0feeder_combout\);

-- Location: FF_X17_Y20_N7
\RXOUT[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[29]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[29]~reg0_q\);

-- Location: LCCOMB_X17_Y20_N8
\RXOUT[30]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[30]~reg0feeder_combout\ = data(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(30),
	combout => \RXOUT[30]~reg0feeder_combout\);

-- Location: FF_X17_Y20_N9
\RXOUT[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[30]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[30]~reg0_q\);

-- Location: LCCOMB_X13_Y18_N24
\RXOUT[31]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RXOUT[31]~reg0feeder_combout\ = data(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(31),
	combout => \RXOUT[31]~reg0feeder_combout\);

-- Location: FF_X13_Y18_N25
\RXOUT[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \RXOUT[31]~reg0feeder_combout\,
	ena => \RXOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RXOUT[31]~reg0_q\);

-- Location: LCCOMB_X18_Y18_N24
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\fsm.finish~q\) # ((\ready~reg0_q\ & ((\fsm.rec~q\) # (\fsm.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm.rec~q\,
	datab => \fsm.start~q\,
	datac => \ready~reg0_q\,
	datad => \fsm.finish~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X18_Y18_N25
\ready~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \ALT_INV_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready~reg0_q\);

ww_RXOUT(0) <= \RXOUT[0]~output_o\;

ww_RXOUT(1) <= \RXOUT[1]~output_o\;

ww_RXOUT(2) <= \RXOUT[2]~output_o\;

ww_RXOUT(3) <= \RXOUT[3]~output_o\;

ww_RXOUT(4) <= \RXOUT[4]~output_o\;

ww_RXOUT(5) <= \RXOUT[5]~output_o\;

ww_RXOUT(6) <= \RXOUT[6]~output_o\;

ww_RXOUT(7) <= \RXOUT[7]~output_o\;

ww_RXOUT(8) <= \RXOUT[8]~output_o\;

ww_RXOUT(9) <= \RXOUT[9]~output_o\;

ww_RXOUT(10) <= \RXOUT[10]~output_o\;

ww_RXOUT(11) <= \RXOUT[11]~output_o\;

ww_RXOUT(12) <= \RXOUT[12]~output_o\;

ww_RXOUT(13) <= \RXOUT[13]~output_o\;

ww_RXOUT(14) <= \RXOUT[14]~output_o\;

ww_RXOUT(15) <= \RXOUT[15]~output_o\;

ww_RXOUT(16) <= \RXOUT[16]~output_o\;

ww_RXOUT(17) <= \RXOUT[17]~output_o\;

ww_RXOUT(18) <= \RXOUT[18]~output_o\;

ww_RXOUT(19) <= \RXOUT[19]~output_o\;

ww_RXOUT(20) <= \RXOUT[20]~output_o\;

ww_RXOUT(21) <= \RXOUT[21]~output_o\;

ww_RXOUT(22) <= \RXOUT[22]~output_o\;

ww_RXOUT(23) <= \RXOUT[23]~output_o\;

ww_RXOUT(24) <= \RXOUT[24]~output_o\;

ww_RXOUT(25) <= \RXOUT[25]~output_o\;

ww_RXOUT(26) <= \RXOUT[26]~output_o\;

ww_RXOUT(27) <= \RXOUT[27]~output_o\;

ww_RXOUT(28) <= \RXOUT[28]~output_o\;

ww_RXOUT(29) <= \RXOUT[29]~output_o\;

ww_RXOUT(30) <= \RXOUT[30]~output_o\;

ww_RXOUT(31) <= \RXOUT[31]~output_o\;

ww_ready <= \ready~output_o\;
END structure;


