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

-- DATE "06/29/2019 12:34:02"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TB_2SIN IS
    PORT (
	Clock : IN std_logic;
	Signal_OUT : BUFFER std_logic;
	BUT1 : IN std_logic;
	BUT2 : IN std_logic
	);
END TB_2SIN;

-- Design Ports Information
-- Signal_OUT	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUT2	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUT1	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TB_2SIN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Signal_OUT : std_logic;
SIGNAL ww_BUT1 : std_logic;
SIGNAL ww_BUT2 : std_logic;
SIGNAL \b2v_inst6|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst6|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst6|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst6|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst6|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst6|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst6|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst6|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst6|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst6|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst6|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst4|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst4|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst4|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \BUT2~input_o\ : std_logic;
SIGNAL \freq2[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[0]~32_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[0]~33\ : std_logic;
SIGNAL \b2v_inst5|acc[1]~34_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[1]~35\ : std_logic;
SIGNAL \b2v_inst5|acc[2]~36_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[2]~37\ : std_logic;
SIGNAL \b2v_inst5|acc[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[3]~39\ : std_logic;
SIGNAL \b2v_inst5|acc[4]~40_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[4]~41\ : std_logic;
SIGNAL \b2v_inst5|acc[5]~42_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[5]~43\ : std_logic;
SIGNAL \b2v_inst5|acc[6]~44_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[6]~45\ : std_logic;
SIGNAL \b2v_inst5|acc[7]~46_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[7]~47\ : std_logic;
SIGNAL \b2v_inst5|acc[8]~48_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[8]~49\ : std_logic;
SIGNAL \b2v_inst5|acc[9]~50_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[9]~51\ : std_logic;
SIGNAL \b2v_inst5|acc[10]~52_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[10]~53\ : std_logic;
SIGNAL \b2v_inst5|acc[11]~54_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[11]~55\ : std_logic;
SIGNAL \b2v_inst5|acc[12]~56_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[12]~57\ : std_logic;
SIGNAL \b2v_inst5|acc[13]~58_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[13]~59\ : std_logic;
SIGNAL \b2v_inst5|acc[14]~60_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[14]~61\ : std_logic;
SIGNAL \b2v_inst5|acc[15]~62_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[15]~63\ : std_logic;
SIGNAL \b2v_inst5|acc[16]~64_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[16]~65\ : std_logic;
SIGNAL \b2v_inst5|acc[17]~66_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[17]~67\ : std_logic;
SIGNAL \b2v_inst5|acc[18]~68_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[18]~69\ : std_logic;
SIGNAL \b2v_inst5|acc[19]~70_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[19]~71\ : std_logic;
SIGNAL \b2v_inst5|acc[20]~72_combout\ : std_logic;
SIGNAL \b2v_inst5|ADDR_SIN[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[20]~73\ : std_logic;
SIGNAL \b2v_inst5|acc[21]~74_combout\ : std_logic;
SIGNAL \b2v_inst5|ADDR_SIN[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[21]~75\ : std_logic;
SIGNAL \b2v_inst5|acc[22]~76_combout\ : std_logic;
SIGNAL \b2v_inst5|ADDR_SIN[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[22]~77\ : std_logic;
SIGNAL \b2v_inst5|acc[23]~78_combout\ : std_logic;
SIGNAL \b2v_inst5|ADDR_SIN[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[23]~79\ : std_logic;
SIGNAL \b2v_inst5|acc[24]~80_combout\ : std_logic;
SIGNAL \b2v_inst5|ADDR_SIN[4]~4_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[24]~81\ : std_logic;
SIGNAL \b2v_inst5|acc[25]~82_combout\ : std_logic;
SIGNAL \b2v_inst5|ADDR_SIN[5]~5_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[25]~83\ : std_logic;
SIGNAL \b2v_inst5|acc[26]~84_combout\ : std_logic;
SIGNAL \b2v_inst5|ADDR_SIN[6]~6_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[26]~85\ : std_logic;
SIGNAL \b2v_inst5|acc[27]~86_combout\ : std_logic;
SIGNAL \b2v_inst5|ADDR_SIN[7]~7_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[27]~87\ : std_logic;
SIGNAL \b2v_inst5|acc[28]~88_combout\ : std_logic;
SIGNAL \b2v_inst5|ADDR_SIN[8]~8_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[28]~89\ : std_logic;
SIGNAL \b2v_inst5|acc[29]~90_combout\ : std_logic;
SIGNAL \b2v_inst5|ADDR_SIN[9]~9_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[29]~91\ : std_logic;
SIGNAL \b2v_inst5|acc[30]~92_combout\ : std_logic;
SIGNAL \b2v_inst5|ADDR_SIN[10]~10_combout\ : std_logic;
SIGNAL \b2v_inst5|acc[30]~93\ : std_logic;
SIGNAL \b2v_inst5|acc[31]~94_combout\ : std_logic;
SIGNAL \b2v_inst5|ADDR_SIN[11]~11_combout\ : std_logic;
SIGNAL \BUT1~input_o\ : std_logic;
SIGNAL \b2v_inst2|acc[1]~31_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[1]~32\ : std_logic;
SIGNAL \b2v_inst2|acc[2]~33_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[2]~34\ : std_logic;
SIGNAL \b2v_inst2|acc[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[3]~36\ : std_logic;
SIGNAL \b2v_inst2|acc[4]~37_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[4]~38\ : std_logic;
SIGNAL \b2v_inst2|acc[5]~39_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[5]~40\ : std_logic;
SIGNAL \b2v_inst2|acc[6]~41_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[6]~42\ : std_logic;
SIGNAL \b2v_inst2|acc[7]~43_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[7]~44\ : std_logic;
SIGNAL \b2v_inst2|acc[8]~45_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[8]~46\ : std_logic;
SIGNAL \b2v_inst2|acc[9]~47_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[9]~48\ : std_logic;
SIGNAL \b2v_inst2|acc[10]~49_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[10]~50\ : std_logic;
SIGNAL \b2v_inst2|acc[11]~51_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[11]~52\ : std_logic;
SIGNAL \b2v_inst2|acc[12]~53_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[12]~54\ : std_logic;
SIGNAL \b2v_inst2|acc[13]~55_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[13]~56\ : std_logic;
SIGNAL \b2v_inst2|acc[14]~57_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[14]~58\ : std_logic;
SIGNAL \b2v_inst2|acc[15]~59_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[15]~60\ : std_logic;
SIGNAL \b2v_inst2|acc[16]~61_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[16]~62\ : std_logic;
SIGNAL \b2v_inst2|acc[17]~63_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[17]~64\ : std_logic;
SIGNAL \b2v_inst2|acc[18]~65_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[18]~66\ : std_logic;
SIGNAL \b2v_inst2|acc[19]~67_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[19]~68\ : std_logic;
SIGNAL \b2v_inst2|acc[20]~69_combout\ : std_logic;
SIGNAL \b2v_inst2|ADDR_SIN[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[20]~70\ : std_logic;
SIGNAL \b2v_inst2|acc[21]~71_combout\ : std_logic;
SIGNAL \b2v_inst2|ADDR_SIN[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[21]~72\ : std_logic;
SIGNAL \b2v_inst2|acc[22]~73_combout\ : std_logic;
SIGNAL \b2v_inst2|ADDR_SIN[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[22]~74\ : std_logic;
SIGNAL \b2v_inst2|acc[23]~75_combout\ : std_logic;
SIGNAL \b2v_inst2|ADDR_SIN[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[23]~76\ : std_logic;
SIGNAL \b2v_inst2|acc[24]~77_combout\ : std_logic;
SIGNAL \b2v_inst2|ADDR_SIN[4]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[24]~78\ : std_logic;
SIGNAL \b2v_inst2|acc[25]~79_combout\ : std_logic;
SIGNAL \b2v_inst2|ADDR_SIN[5]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[25]~80\ : std_logic;
SIGNAL \b2v_inst2|acc[26]~81_combout\ : std_logic;
SIGNAL \b2v_inst2|ADDR_SIN[6]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[26]~82\ : std_logic;
SIGNAL \b2v_inst2|acc[27]~83_combout\ : std_logic;
SIGNAL \b2v_inst2|ADDR_SIN[7]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[27]~84\ : std_logic;
SIGNAL \b2v_inst2|acc[28]~85_combout\ : std_logic;
SIGNAL \b2v_inst2|ADDR_SIN[8]~8_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[28]~86\ : std_logic;
SIGNAL \b2v_inst2|acc[29]~87_combout\ : std_logic;
SIGNAL \b2v_inst2|ADDR_SIN[9]~9_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[29]~88\ : std_logic;
SIGNAL \b2v_inst2|acc[30]~89_combout\ : std_logic;
SIGNAL \b2v_inst2|ADDR_SIN[10]~10_combout\ : std_logic;
SIGNAL \b2v_inst2|acc[30]~90\ : std_logic;
SIGNAL \b2v_inst2|acc[31]~91_combout\ : std_logic;
SIGNAL \b2v_inst2|ADDR_SIN[11]~11_combout\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[0]~1\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[1]~3\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[2]~5\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[3]~7\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[4]~9\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[5]~11\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[6]~13\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[7]~15\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[8]~17\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[9]~19\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[10]~21\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[11]~23\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[12]~24_combout\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[11]~22_combout\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[10]~20_combout\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[9]~18_combout\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[8]~16_combout\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[7]~14_combout\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[6]~12_combout\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[5]~10_combout\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[4]~8_combout\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[2]~4_combout\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst|parallel_add_component|auto_generated|add1_result[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[0]~15_combout\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[0]~16\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[1]~18\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[2]~19_combout\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[2]~20\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[3]~21_combout\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[3]~22\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[4]~23_combout\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[4]~24\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[5]~25_combout\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[5]~26\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[6]~27_combout\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[6]~28\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[7]~29_combout\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[7]~30\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[8]~31_combout\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[8]~32\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[9]~33_combout\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[9]~34\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[10]~35_combout\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[10]~36\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[11]~37_combout\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[11]~38\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[12]~39_combout\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[12]~40\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[13]~41_combout\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[13]~42\ : std_logic;
SIGNAL \b2v_inst1|SigmaLatchQ[14]~43_combout\ : std_logic;
SIGNAL \b2v_inst1|DACout~q\ : std_logic;
SIGNAL freq2 : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst6|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst1|SigmaLatchQ\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst2|acc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst5|acc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL Freq1 : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_Clock <= Clock;
Signal_OUT <= ww_Signal_OUT;
ww_BUT1 <= BUT1;
ww_BUT2 <= BUT2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b2v_inst6|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\b2v_inst5|ADDR_SIN[11]~11_combout\ & \b2v_inst5|ADDR_SIN[10]~10_combout\ & \b2v_inst5|ADDR_SIN[9]~9_combout\ & \b2v_inst5|ADDR_SIN[8]~8_combout\ & 
\b2v_inst5|ADDR_SIN[7]~7_combout\ & \b2v_inst5|ADDR_SIN[6]~6_combout\ & \b2v_inst5|ADDR_SIN[5]~5_combout\ & \b2v_inst5|ADDR_SIN[4]~4_combout\ & \b2v_inst5|ADDR_SIN[3]~3_combout\ & \b2v_inst5|ADDR_SIN[2]~2_combout\ & \b2v_inst5|ADDR_SIN[1]~1_combout\ & 
\b2v_inst5|ADDR_SIN[0]~0_combout\);

\b2v_inst6|altsyncram_component|auto_generated|q_a\(10) <= \b2v_inst6|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\b2v_inst6|altsyncram_component|auto_generated|q_a\(11) <= \b2v_inst6|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\b2v_inst3|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\b2v_inst2|ADDR_SIN[11]~11_combout\ & \b2v_inst2|ADDR_SIN[10]~10_combout\ & \b2v_inst2|ADDR_SIN[9]~9_combout\ & \b2v_inst2|ADDR_SIN[8]~8_combout\ & 
\b2v_inst2|ADDR_SIN[7]~7_combout\ & \b2v_inst2|ADDR_SIN[6]~6_combout\ & \b2v_inst2|ADDR_SIN[5]~5_combout\ & \b2v_inst2|ADDR_SIN[4]~4_combout\ & \b2v_inst2|ADDR_SIN[3]~3_combout\ & \b2v_inst2|ADDR_SIN[2]~2_combout\ & \b2v_inst2|ADDR_SIN[1]~1_combout\ & 
\b2v_inst2|ADDR_SIN[0]~0_combout\);

\b2v_inst3|altsyncram_component|auto_generated|q_a\(10) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\b2v_inst3|altsyncram_component|auto_generated|q_a\(11) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\b2v_inst6|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\b2v_inst5|ADDR_SIN[11]~11_combout\ & \b2v_inst5|ADDR_SIN[10]~10_combout\ & \b2v_inst5|ADDR_SIN[9]~9_combout\ & \b2v_inst5|ADDR_SIN[8]~8_combout\ & 
\b2v_inst5|ADDR_SIN[7]~7_combout\ & \b2v_inst5|ADDR_SIN[6]~6_combout\ & \b2v_inst5|ADDR_SIN[5]~5_combout\ & \b2v_inst5|ADDR_SIN[4]~4_combout\ & \b2v_inst5|ADDR_SIN[3]~3_combout\ & \b2v_inst5|ADDR_SIN[2]~2_combout\ & \b2v_inst5|ADDR_SIN[1]~1_combout\ & 
\b2v_inst5|ADDR_SIN[0]~0_combout\);

\b2v_inst6|altsyncram_component|auto_generated|q_a\(8) <= \b2v_inst6|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\b2v_inst6|altsyncram_component|auto_generated|q_a\(9) <= \b2v_inst6|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\b2v_inst3|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\b2v_inst2|ADDR_SIN[11]~11_combout\ & \b2v_inst2|ADDR_SIN[10]~10_combout\ & \b2v_inst2|ADDR_SIN[9]~9_combout\ & \b2v_inst2|ADDR_SIN[8]~8_combout\ & 
\b2v_inst2|ADDR_SIN[7]~7_combout\ & \b2v_inst2|ADDR_SIN[6]~6_combout\ & \b2v_inst2|ADDR_SIN[5]~5_combout\ & \b2v_inst2|ADDR_SIN[4]~4_combout\ & \b2v_inst2|ADDR_SIN[3]~3_combout\ & \b2v_inst2|ADDR_SIN[2]~2_combout\ & \b2v_inst2|ADDR_SIN[1]~1_combout\ & 
\b2v_inst2|ADDR_SIN[0]~0_combout\);

\b2v_inst3|altsyncram_component|auto_generated|q_a\(8) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\b2v_inst3|altsyncram_component|auto_generated|q_a\(9) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\b2v_inst6|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\b2v_inst5|ADDR_SIN[11]~11_combout\ & \b2v_inst5|ADDR_SIN[10]~10_combout\ & \b2v_inst5|ADDR_SIN[9]~9_combout\ & \b2v_inst5|ADDR_SIN[8]~8_combout\ & 
\b2v_inst5|ADDR_SIN[7]~7_combout\ & \b2v_inst5|ADDR_SIN[6]~6_combout\ & \b2v_inst5|ADDR_SIN[5]~5_combout\ & \b2v_inst5|ADDR_SIN[4]~4_combout\ & \b2v_inst5|ADDR_SIN[3]~3_combout\ & \b2v_inst5|ADDR_SIN[2]~2_combout\ & \b2v_inst5|ADDR_SIN[1]~1_combout\ & 
\b2v_inst5|ADDR_SIN[0]~0_combout\);

\b2v_inst6|altsyncram_component|auto_generated|q_a\(6) <= \b2v_inst6|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\b2v_inst6|altsyncram_component|auto_generated|q_a\(7) <= \b2v_inst6|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\b2v_inst3|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\b2v_inst2|ADDR_SIN[11]~11_combout\ & \b2v_inst2|ADDR_SIN[10]~10_combout\ & \b2v_inst2|ADDR_SIN[9]~9_combout\ & \b2v_inst2|ADDR_SIN[8]~8_combout\ & 
\b2v_inst2|ADDR_SIN[7]~7_combout\ & \b2v_inst2|ADDR_SIN[6]~6_combout\ & \b2v_inst2|ADDR_SIN[5]~5_combout\ & \b2v_inst2|ADDR_SIN[4]~4_combout\ & \b2v_inst2|ADDR_SIN[3]~3_combout\ & \b2v_inst2|ADDR_SIN[2]~2_combout\ & \b2v_inst2|ADDR_SIN[1]~1_combout\ & 
\b2v_inst2|ADDR_SIN[0]~0_combout\);

\b2v_inst3|altsyncram_component|auto_generated|q_a\(6) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\b2v_inst3|altsyncram_component|auto_generated|q_a\(7) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\b2v_inst6|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\b2v_inst5|ADDR_SIN[11]~11_combout\ & \b2v_inst5|ADDR_SIN[10]~10_combout\ & \b2v_inst5|ADDR_SIN[9]~9_combout\ & \b2v_inst5|ADDR_SIN[8]~8_combout\ & 
\b2v_inst5|ADDR_SIN[7]~7_combout\ & \b2v_inst5|ADDR_SIN[6]~6_combout\ & \b2v_inst5|ADDR_SIN[5]~5_combout\ & \b2v_inst5|ADDR_SIN[4]~4_combout\ & \b2v_inst5|ADDR_SIN[3]~3_combout\ & \b2v_inst5|ADDR_SIN[2]~2_combout\ & \b2v_inst5|ADDR_SIN[1]~1_combout\ & 
\b2v_inst5|ADDR_SIN[0]~0_combout\);

\b2v_inst6|altsyncram_component|auto_generated|q_a\(4) <= \b2v_inst6|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\b2v_inst6|altsyncram_component|auto_generated|q_a\(5) <= \b2v_inst6|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\b2v_inst3|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\b2v_inst2|ADDR_SIN[11]~11_combout\ & \b2v_inst2|ADDR_SIN[10]~10_combout\ & \b2v_inst2|ADDR_SIN[9]~9_combout\ & \b2v_inst2|ADDR_SIN[8]~8_combout\ & 
\b2v_inst2|ADDR_SIN[7]~7_combout\ & \b2v_inst2|ADDR_SIN[6]~6_combout\ & \b2v_inst2|ADDR_SIN[5]~5_combout\ & \b2v_inst2|ADDR_SIN[4]~4_combout\ & \b2v_inst2|ADDR_SIN[3]~3_combout\ & \b2v_inst2|ADDR_SIN[2]~2_combout\ & \b2v_inst2|ADDR_SIN[1]~1_combout\ & 
\b2v_inst2|ADDR_SIN[0]~0_combout\);

\b2v_inst3|altsyncram_component|auto_generated|q_a\(4) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\b2v_inst3|altsyncram_component|auto_generated|q_a\(5) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\b2v_inst6|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\b2v_inst5|ADDR_SIN[11]~11_combout\ & \b2v_inst5|ADDR_SIN[10]~10_combout\ & \b2v_inst5|ADDR_SIN[9]~9_combout\ & \b2v_inst5|ADDR_SIN[8]~8_combout\ & 
\b2v_inst5|ADDR_SIN[7]~7_combout\ & \b2v_inst5|ADDR_SIN[6]~6_combout\ & \b2v_inst5|ADDR_SIN[5]~5_combout\ & \b2v_inst5|ADDR_SIN[4]~4_combout\ & \b2v_inst5|ADDR_SIN[3]~3_combout\ & \b2v_inst5|ADDR_SIN[2]~2_combout\ & \b2v_inst5|ADDR_SIN[1]~1_combout\ & 
\b2v_inst5|ADDR_SIN[0]~0_combout\);

\b2v_inst6|altsyncram_component|auto_generated|q_a\(2) <= \b2v_inst6|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\b2v_inst6|altsyncram_component|auto_generated|q_a\(3) <= \b2v_inst6|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\b2v_inst3|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\b2v_inst2|ADDR_SIN[11]~11_combout\ & \b2v_inst2|ADDR_SIN[10]~10_combout\ & \b2v_inst2|ADDR_SIN[9]~9_combout\ & \b2v_inst2|ADDR_SIN[8]~8_combout\ & 
\b2v_inst2|ADDR_SIN[7]~7_combout\ & \b2v_inst2|ADDR_SIN[6]~6_combout\ & \b2v_inst2|ADDR_SIN[5]~5_combout\ & \b2v_inst2|ADDR_SIN[4]~4_combout\ & \b2v_inst2|ADDR_SIN[3]~3_combout\ & \b2v_inst2|ADDR_SIN[2]~2_combout\ & \b2v_inst2|ADDR_SIN[1]~1_combout\ & 
\b2v_inst2|ADDR_SIN[0]~0_combout\);

\b2v_inst3|altsyncram_component|auto_generated|q_a\(2) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\b2v_inst3|altsyncram_component|auto_generated|q_a\(3) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\b2v_inst6|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\b2v_inst5|ADDR_SIN[11]~11_combout\ & \b2v_inst5|ADDR_SIN[10]~10_combout\ & \b2v_inst5|ADDR_SIN[9]~9_combout\ & \b2v_inst5|ADDR_SIN[8]~8_combout\ & 
\b2v_inst5|ADDR_SIN[7]~7_combout\ & \b2v_inst5|ADDR_SIN[6]~6_combout\ & \b2v_inst5|ADDR_SIN[5]~5_combout\ & \b2v_inst5|ADDR_SIN[4]~4_combout\ & \b2v_inst5|ADDR_SIN[3]~3_combout\ & \b2v_inst5|ADDR_SIN[2]~2_combout\ & \b2v_inst5|ADDR_SIN[1]~1_combout\ & 
\b2v_inst5|ADDR_SIN[0]~0_combout\);

\b2v_inst6|altsyncram_component|auto_generated|q_a\(0) <= \b2v_inst6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\b2v_inst6|altsyncram_component|auto_generated|q_a\(1) <= \b2v_inst6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\b2v_inst2|ADDR_SIN[11]~11_combout\ & \b2v_inst2|ADDR_SIN[10]~10_combout\ & \b2v_inst2|ADDR_SIN[9]~9_combout\ & \b2v_inst2|ADDR_SIN[8]~8_combout\ & 
\b2v_inst2|ADDR_SIN[7]~7_combout\ & \b2v_inst2|ADDR_SIN[6]~6_combout\ & \b2v_inst2|ADDR_SIN[5]~5_combout\ & \b2v_inst2|ADDR_SIN[4]~4_combout\ & \b2v_inst2|ADDR_SIN[3]~3_combout\ & \b2v_inst2|ADDR_SIN[2]~2_combout\ & \b2v_inst2|ADDR_SIN[1]~1_combout\ & 
\b2v_inst2|ADDR_SIN[0]~0_combout\);

\b2v_inst3|altsyncram_component|auto_generated|q_a\(0) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\b2v_inst3|altsyncram_component|auto_generated|q_a\(1) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\b2v_inst4|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \Clock~input_o\);

\b2v_inst4|altpll_component|auto_generated|wire_pll1_clk\(0) <= \b2v_inst4|altpll_component|auto_generated|pll1_CLK_bus\(0);
\b2v_inst4|altpll_component|auto_generated|wire_pll1_clk\(1) <= \b2v_inst4|altpll_component|auto_generated|pll1_CLK_bus\(1);
\b2v_inst4|altpll_component|auto_generated|wire_pll1_clk\(2) <= \b2v_inst4|altpll_component|auto_generated|pll1_CLK_bus\(2);
\b2v_inst4|altpll_component|auto_generated|wire_pll1_clk\(3) <= \b2v_inst4|altpll_component|auto_generated|pll1_CLK_bus\(3);
\b2v_inst4|altpll_component|auto_generated|wire_pll1_clk\(4) <= \b2v_inst4|altpll_component|auto_generated|pll1_CLK_bus\(4);

\b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk\(0));

\b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk\(2));

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

-- Location: IOOBUF_X34_Y10_N9
\Signal_OUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|DACout~q\,
	devoe => ww_devoe,
	o => ww_Signal_OUT);

-- Location: IOIBUF_X0_Y11_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G2
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: PLL_1
\b2v_inst4|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 2,
	c0_initial => 1,
	c0_low => 1,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 30,
	c1_initial => 1,
	c1_low => 30,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 4,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "c1",
	clk2_divide_by => 5,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 1,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \b2v_inst4|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \b2v_inst4|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \b2v_inst4|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \b2v_inst4|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: CLKCTRL_G4
\b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N15
\BUT2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUT2,
	o => \BUT2~input_o\);

-- Location: LCCOMB_X19_Y9_N0
\freq2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq2[0]~feeder_combout\ = \BUT2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUT2~input_o\,
	combout => \freq2[0]~feeder_combout\);

-- Location: FF_X19_Y9_N1
\freq2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \freq2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => freq2(0));

-- Location: LCCOMB_X21_Y10_N0
\b2v_inst5|acc[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[0]~32_combout\ = (freq2(0) & (\b2v_inst5|acc\(0) $ (VCC))) # (!freq2(0) & (\b2v_inst5|acc\(0) & VCC))
-- \b2v_inst5|acc[0]~33\ = CARRY((freq2(0) & \b2v_inst5|acc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => freq2(0),
	datab => \b2v_inst5|acc\(0),
	datad => VCC,
	combout => \b2v_inst5|acc[0]~32_combout\,
	cout => \b2v_inst5|acc[0]~33\);

-- Location: FF_X21_Y10_N1
\b2v_inst5|acc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(0));

-- Location: LCCOMB_X21_Y10_N2
\b2v_inst5|acc[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[1]~34_combout\ = (\b2v_inst5|acc\(1) & (!\b2v_inst5|acc[0]~33\)) # (!\b2v_inst5|acc\(1) & ((\b2v_inst5|acc[0]~33\) # (GND)))
-- \b2v_inst5|acc[1]~35\ = CARRY((!\b2v_inst5|acc[0]~33\) # (!\b2v_inst5|acc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|acc\(1),
	datad => VCC,
	cin => \b2v_inst5|acc[0]~33\,
	combout => \b2v_inst5|acc[1]~34_combout\,
	cout => \b2v_inst5|acc[1]~35\);

-- Location: FF_X21_Y10_N3
\b2v_inst5|acc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(1));

-- Location: LCCOMB_X21_Y10_N4
\b2v_inst5|acc[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[2]~36_combout\ = ((freq2(0) $ (\b2v_inst5|acc\(2) $ (!\b2v_inst5|acc[1]~35\)))) # (GND)
-- \b2v_inst5|acc[2]~37\ = CARRY((freq2(0) & ((\b2v_inst5|acc\(2)) # (!\b2v_inst5|acc[1]~35\))) # (!freq2(0) & (\b2v_inst5|acc\(2) & !\b2v_inst5|acc[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => freq2(0),
	datab => \b2v_inst5|acc\(2),
	datad => VCC,
	cin => \b2v_inst5|acc[1]~35\,
	combout => \b2v_inst5|acc[2]~36_combout\,
	cout => \b2v_inst5|acc[2]~37\);

-- Location: FF_X21_Y10_N5
\b2v_inst5|acc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(2));

-- Location: LCCOMB_X21_Y10_N6
\b2v_inst5|acc[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[3]~38_combout\ = (\b2v_inst5|acc\(3) & (!\b2v_inst5|acc[2]~37\)) # (!\b2v_inst5|acc\(3) & ((\b2v_inst5|acc[2]~37\) # (GND)))
-- \b2v_inst5|acc[3]~39\ = CARRY((!\b2v_inst5|acc[2]~37\) # (!\b2v_inst5|acc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|acc\(3),
	datad => VCC,
	cin => \b2v_inst5|acc[2]~37\,
	combout => \b2v_inst5|acc[3]~38_combout\,
	cout => \b2v_inst5|acc[3]~39\);

-- Location: FF_X21_Y10_N7
\b2v_inst5|acc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(3));

-- Location: LCCOMB_X21_Y10_N8
\b2v_inst5|acc[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[4]~40_combout\ = (\b2v_inst5|acc\(4) & (\b2v_inst5|acc[3]~39\ $ (GND))) # (!\b2v_inst5|acc\(4) & (!\b2v_inst5|acc[3]~39\ & VCC))
-- \b2v_inst5|acc[4]~41\ = CARRY((\b2v_inst5|acc\(4) & !\b2v_inst5|acc[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|acc\(4),
	datad => VCC,
	cin => \b2v_inst5|acc[3]~39\,
	combout => \b2v_inst5|acc[4]~40_combout\,
	cout => \b2v_inst5|acc[4]~41\);

-- Location: FF_X21_Y10_N9
\b2v_inst5|acc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(4));

-- Location: LCCOMB_X21_Y10_N10
\b2v_inst5|acc[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[5]~42_combout\ = (\b2v_inst5|acc\(5) & (!\b2v_inst5|acc[4]~41\)) # (!\b2v_inst5|acc\(5) & ((\b2v_inst5|acc[4]~41\) # (GND)))
-- \b2v_inst5|acc[5]~43\ = CARRY((!\b2v_inst5|acc[4]~41\) # (!\b2v_inst5|acc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|acc\(5),
	datad => VCC,
	cin => \b2v_inst5|acc[4]~41\,
	combout => \b2v_inst5|acc[5]~42_combout\,
	cout => \b2v_inst5|acc[5]~43\);

-- Location: FF_X21_Y10_N11
\b2v_inst5|acc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(5));

-- Location: LCCOMB_X21_Y10_N12
\b2v_inst5|acc[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[6]~44_combout\ = ((freq2(0) $ (\b2v_inst5|acc\(6) $ (!\b2v_inst5|acc[5]~43\)))) # (GND)
-- \b2v_inst5|acc[6]~45\ = CARRY((freq2(0) & ((\b2v_inst5|acc\(6)) # (!\b2v_inst5|acc[5]~43\))) # (!freq2(0) & (\b2v_inst5|acc\(6) & !\b2v_inst5|acc[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => freq2(0),
	datab => \b2v_inst5|acc\(6),
	datad => VCC,
	cin => \b2v_inst5|acc[5]~43\,
	combout => \b2v_inst5|acc[6]~44_combout\,
	cout => \b2v_inst5|acc[6]~45\);

-- Location: FF_X21_Y10_N13
\b2v_inst5|acc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(6));

-- Location: LCCOMB_X21_Y10_N14
\b2v_inst5|acc[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[7]~46_combout\ = (freq2(0) & ((\b2v_inst5|acc\(7) & (\b2v_inst5|acc[6]~45\ & VCC)) # (!\b2v_inst5|acc\(7) & (!\b2v_inst5|acc[6]~45\)))) # (!freq2(0) & ((\b2v_inst5|acc\(7) & (!\b2v_inst5|acc[6]~45\)) # (!\b2v_inst5|acc\(7) & 
-- ((\b2v_inst5|acc[6]~45\) # (GND)))))
-- \b2v_inst5|acc[7]~47\ = CARRY((freq2(0) & (!\b2v_inst5|acc\(7) & !\b2v_inst5|acc[6]~45\)) # (!freq2(0) & ((!\b2v_inst5|acc[6]~45\) # (!\b2v_inst5|acc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => freq2(0),
	datab => \b2v_inst5|acc\(7),
	datad => VCC,
	cin => \b2v_inst5|acc[6]~45\,
	combout => \b2v_inst5|acc[7]~46_combout\,
	cout => \b2v_inst5|acc[7]~47\);

-- Location: FF_X21_Y10_N15
\b2v_inst5|acc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[7]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(7));

-- Location: LCCOMB_X21_Y10_N16
\b2v_inst5|acc[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[8]~48_combout\ = ((freq2(0) $ (\b2v_inst5|acc\(8) $ (!\b2v_inst5|acc[7]~47\)))) # (GND)
-- \b2v_inst5|acc[8]~49\ = CARRY((freq2(0) & ((\b2v_inst5|acc\(8)) # (!\b2v_inst5|acc[7]~47\))) # (!freq2(0) & (\b2v_inst5|acc\(8) & !\b2v_inst5|acc[7]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => freq2(0),
	datab => \b2v_inst5|acc\(8),
	datad => VCC,
	cin => \b2v_inst5|acc[7]~47\,
	combout => \b2v_inst5|acc[8]~48_combout\,
	cout => \b2v_inst5|acc[8]~49\);

-- Location: FF_X21_Y10_N17
\b2v_inst5|acc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[8]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(8));

-- Location: LCCOMB_X21_Y10_N18
\b2v_inst5|acc[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[9]~50_combout\ = (freq2(0) & ((\b2v_inst5|acc\(9) & (\b2v_inst5|acc[8]~49\ & VCC)) # (!\b2v_inst5|acc\(9) & (!\b2v_inst5|acc[8]~49\)))) # (!freq2(0) & ((\b2v_inst5|acc\(9) & (!\b2v_inst5|acc[8]~49\)) # (!\b2v_inst5|acc\(9) & 
-- ((\b2v_inst5|acc[8]~49\) # (GND)))))
-- \b2v_inst5|acc[9]~51\ = CARRY((freq2(0) & (!\b2v_inst5|acc\(9) & !\b2v_inst5|acc[8]~49\)) # (!freq2(0) & ((!\b2v_inst5|acc[8]~49\) # (!\b2v_inst5|acc\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => freq2(0),
	datab => \b2v_inst5|acc\(9),
	datad => VCC,
	cin => \b2v_inst5|acc[8]~49\,
	combout => \b2v_inst5|acc[9]~50_combout\,
	cout => \b2v_inst5|acc[9]~51\);

-- Location: FF_X21_Y10_N19
\b2v_inst5|acc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[9]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(9));

-- Location: LCCOMB_X21_Y10_N20
\b2v_inst5|acc[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[10]~52_combout\ = ((freq2(0) $ (\b2v_inst5|acc\(10) $ (!\b2v_inst5|acc[9]~51\)))) # (GND)
-- \b2v_inst5|acc[10]~53\ = CARRY((freq2(0) & ((\b2v_inst5|acc\(10)) # (!\b2v_inst5|acc[9]~51\))) # (!freq2(0) & (\b2v_inst5|acc\(10) & !\b2v_inst5|acc[9]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => freq2(0),
	datab => \b2v_inst5|acc\(10),
	datad => VCC,
	cin => \b2v_inst5|acc[9]~51\,
	combout => \b2v_inst5|acc[10]~52_combout\,
	cout => \b2v_inst5|acc[10]~53\);

-- Location: FF_X21_Y10_N21
\b2v_inst5|acc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[10]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(10));

-- Location: LCCOMB_X21_Y10_N22
\b2v_inst5|acc[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[11]~54_combout\ = (\b2v_inst5|acc\(11) & (!\b2v_inst5|acc[10]~53\)) # (!\b2v_inst5|acc\(11) & ((\b2v_inst5|acc[10]~53\) # (GND)))
-- \b2v_inst5|acc[11]~55\ = CARRY((!\b2v_inst5|acc[10]~53\) # (!\b2v_inst5|acc\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|acc\(11),
	datad => VCC,
	cin => \b2v_inst5|acc[10]~53\,
	combout => \b2v_inst5|acc[11]~54_combout\,
	cout => \b2v_inst5|acc[11]~55\);

-- Location: FF_X21_Y10_N23
\b2v_inst5|acc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(11));

-- Location: LCCOMB_X21_Y10_N24
\b2v_inst5|acc[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[12]~56_combout\ = (\b2v_inst5|acc\(12) & (\b2v_inst5|acc[11]~55\ $ (GND))) # (!\b2v_inst5|acc\(12) & (!\b2v_inst5|acc[11]~55\ & VCC))
-- \b2v_inst5|acc[12]~57\ = CARRY((\b2v_inst5|acc\(12) & !\b2v_inst5|acc[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|acc\(12),
	datad => VCC,
	cin => \b2v_inst5|acc[11]~55\,
	combout => \b2v_inst5|acc[12]~56_combout\,
	cout => \b2v_inst5|acc[12]~57\);

-- Location: FF_X21_Y10_N25
\b2v_inst5|acc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(12));

-- Location: LCCOMB_X21_Y10_N26
\b2v_inst5|acc[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[13]~58_combout\ = (freq2(0) & ((\b2v_inst5|acc\(13) & (\b2v_inst5|acc[12]~57\ & VCC)) # (!\b2v_inst5|acc\(13) & (!\b2v_inst5|acc[12]~57\)))) # (!freq2(0) & ((\b2v_inst5|acc\(13) & (!\b2v_inst5|acc[12]~57\)) # (!\b2v_inst5|acc\(13) & 
-- ((\b2v_inst5|acc[12]~57\) # (GND)))))
-- \b2v_inst5|acc[13]~59\ = CARRY((freq2(0) & (!\b2v_inst5|acc\(13) & !\b2v_inst5|acc[12]~57\)) # (!freq2(0) & ((!\b2v_inst5|acc[12]~57\) # (!\b2v_inst5|acc\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => freq2(0),
	datab => \b2v_inst5|acc\(13),
	datad => VCC,
	cin => \b2v_inst5|acc[12]~57\,
	combout => \b2v_inst5|acc[13]~58_combout\,
	cout => \b2v_inst5|acc[13]~59\);

-- Location: FF_X21_Y10_N27
\b2v_inst5|acc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[13]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(13));

-- Location: LCCOMB_X21_Y10_N28
\b2v_inst5|acc[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[14]~60_combout\ = (\b2v_inst5|acc\(14) & (\b2v_inst5|acc[13]~59\ $ (GND))) # (!\b2v_inst5|acc\(14) & (!\b2v_inst5|acc[13]~59\ & VCC))
-- \b2v_inst5|acc[14]~61\ = CARRY((\b2v_inst5|acc\(14) & !\b2v_inst5|acc[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|acc\(14),
	datad => VCC,
	cin => \b2v_inst5|acc[13]~59\,
	combout => \b2v_inst5|acc[14]~60_combout\,
	cout => \b2v_inst5|acc[14]~61\);

-- Location: FF_X21_Y10_N29
\b2v_inst5|acc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[14]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(14));

-- Location: LCCOMB_X21_Y10_N30
\b2v_inst5|acc[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[15]~62_combout\ = (freq2(0) & ((\b2v_inst5|acc\(15) & (\b2v_inst5|acc[14]~61\ & VCC)) # (!\b2v_inst5|acc\(15) & (!\b2v_inst5|acc[14]~61\)))) # (!freq2(0) & ((\b2v_inst5|acc\(15) & (!\b2v_inst5|acc[14]~61\)) # (!\b2v_inst5|acc\(15) & 
-- ((\b2v_inst5|acc[14]~61\) # (GND)))))
-- \b2v_inst5|acc[15]~63\ = CARRY((freq2(0) & (!\b2v_inst5|acc\(15) & !\b2v_inst5|acc[14]~61\)) # (!freq2(0) & ((!\b2v_inst5|acc[14]~61\) # (!\b2v_inst5|acc\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => freq2(0),
	datab => \b2v_inst5|acc\(15),
	datad => VCC,
	cin => \b2v_inst5|acc[14]~61\,
	combout => \b2v_inst5|acc[15]~62_combout\,
	cout => \b2v_inst5|acc[15]~63\);

-- Location: FF_X21_Y10_N31
\b2v_inst5|acc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[15]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(15));

-- Location: LCCOMB_X21_Y9_N0
\b2v_inst5|acc[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[16]~64_combout\ = (\b2v_inst5|acc\(16) & (\b2v_inst5|acc[15]~63\ $ (GND))) # (!\b2v_inst5|acc\(16) & (!\b2v_inst5|acc[15]~63\ & VCC))
-- \b2v_inst5|acc[16]~65\ = CARRY((\b2v_inst5|acc\(16) & !\b2v_inst5|acc[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|acc\(16),
	datad => VCC,
	cin => \b2v_inst5|acc[15]~63\,
	combout => \b2v_inst5|acc[16]~64_combout\,
	cout => \b2v_inst5|acc[16]~65\);

-- Location: FF_X21_Y9_N1
\b2v_inst5|acc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[16]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(16));

-- Location: LCCOMB_X21_Y9_N2
\b2v_inst5|acc[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[17]~66_combout\ = (\b2v_inst5|acc\(17) & (!\b2v_inst5|acc[16]~65\)) # (!\b2v_inst5|acc\(17) & ((\b2v_inst5|acc[16]~65\) # (GND)))
-- \b2v_inst5|acc[17]~67\ = CARRY((!\b2v_inst5|acc[16]~65\) # (!\b2v_inst5|acc\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|acc\(17),
	datad => VCC,
	cin => \b2v_inst5|acc[16]~65\,
	combout => \b2v_inst5|acc[17]~66_combout\,
	cout => \b2v_inst5|acc[17]~67\);

-- Location: FF_X21_Y9_N3
\b2v_inst5|acc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[17]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(17));

-- Location: LCCOMB_X21_Y9_N4
\b2v_inst5|acc[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[18]~68_combout\ = (\b2v_inst5|acc\(18) & (\b2v_inst5|acc[17]~67\ $ (GND))) # (!\b2v_inst5|acc\(18) & (!\b2v_inst5|acc[17]~67\ & VCC))
-- \b2v_inst5|acc[18]~69\ = CARRY((\b2v_inst5|acc\(18) & !\b2v_inst5|acc[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|acc\(18),
	datad => VCC,
	cin => \b2v_inst5|acc[17]~67\,
	combout => \b2v_inst5|acc[18]~68_combout\,
	cout => \b2v_inst5|acc[18]~69\);

-- Location: FF_X21_Y9_N5
\b2v_inst5|acc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[18]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(18));

-- Location: LCCOMB_X21_Y9_N6
\b2v_inst5|acc[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[19]~70_combout\ = (\b2v_inst5|acc\(19) & (!\b2v_inst5|acc[18]~69\)) # (!\b2v_inst5|acc\(19) & ((\b2v_inst5|acc[18]~69\) # (GND)))
-- \b2v_inst5|acc[19]~71\ = CARRY((!\b2v_inst5|acc[18]~69\) # (!\b2v_inst5|acc\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|acc\(19),
	datad => VCC,
	cin => \b2v_inst5|acc[18]~69\,
	combout => \b2v_inst5|acc[19]~70_combout\,
	cout => \b2v_inst5|acc[19]~71\);

-- Location: FF_X21_Y9_N7
\b2v_inst5|acc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[19]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(19));

-- Location: LCCOMB_X21_Y9_N8
\b2v_inst5|acc[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[20]~72_combout\ = (\b2v_inst5|acc\(20) & (\b2v_inst5|acc[19]~71\ $ (GND))) # (!\b2v_inst5|acc\(20) & (!\b2v_inst5|acc[19]~71\ & VCC))
-- \b2v_inst5|acc[20]~73\ = CARRY((\b2v_inst5|acc\(20) & !\b2v_inst5|acc[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|acc\(20),
	datad => VCC,
	cin => \b2v_inst5|acc[19]~71\,
	combout => \b2v_inst5|acc[20]~72_combout\,
	cout => \b2v_inst5|acc[20]~73\);

-- Location: FF_X21_Y9_N9
\b2v_inst5|acc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[20]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(20));

-- Location: LCCOMB_X19_Y9_N26
\b2v_inst5|ADDR_SIN[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ADDR_SIN[0]~0_combout\ = (\b2v_inst5|acc\(20) & freq2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|acc\(20),
	datad => freq2(0),
	combout => \b2v_inst5|ADDR_SIN[0]~0_combout\);

-- Location: LCCOMB_X21_Y9_N10
\b2v_inst5|acc[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[21]~74_combout\ = (\b2v_inst5|acc\(21) & (!\b2v_inst5|acc[20]~73\)) # (!\b2v_inst5|acc\(21) & ((\b2v_inst5|acc[20]~73\) # (GND)))
-- \b2v_inst5|acc[21]~75\ = CARRY((!\b2v_inst5|acc[20]~73\) # (!\b2v_inst5|acc\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|acc\(21),
	datad => VCC,
	cin => \b2v_inst5|acc[20]~73\,
	combout => \b2v_inst5|acc[21]~74_combout\,
	cout => \b2v_inst5|acc[21]~75\);

-- Location: FF_X21_Y9_N11
\b2v_inst5|acc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[21]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(21));

-- Location: LCCOMB_X19_Y9_N24
\b2v_inst5|ADDR_SIN[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ADDR_SIN[1]~1_combout\ = (\b2v_inst5|acc\(21) & freq2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|acc\(21),
	datad => freq2(0),
	combout => \b2v_inst5|ADDR_SIN[1]~1_combout\);

-- Location: LCCOMB_X21_Y9_N12
\b2v_inst5|acc[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[22]~76_combout\ = (\b2v_inst5|acc\(22) & (\b2v_inst5|acc[21]~75\ $ (GND))) # (!\b2v_inst5|acc\(22) & (!\b2v_inst5|acc[21]~75\ & VCC))
-- \b2v_inst5|acc[22]~77\ = CARRY((\b2v_inst5|acc\(22) & !\b2v_inst5|acc[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|acc\(22),
	datad => VCC,
	cin => \b2v_inst5|acc[21]~75\,
	combout => \b2v_inst5|acc[22]~76_combout\,
	cout => \b2v_inst5|acc[22]~77\);

-- Location: FF_X21_Y9_N13
\b2v_inst5|acc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[22]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(22));

-- Location: LCCOMB_X19_Y9_N2
\b2v_inst5|ADDR_SIN[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ADDR_SIN[2]~2_combout\ = (\b2v_inst5|acc\(22) & freq2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|acc\(22),
	datad => freq2(0),
	combout => \b2v_inst5|ADDR_SIN[2]~2_combout\);

-- Location: LCCOMB_X21_Y9_N14
\b2v_inst5|acc[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[23]~78_combout\ = (\b2v_inst5|acc\(23) & (!\b2v_inst5|acc[22]~77\)) # (!\b2v_inst5|acc\(23) & ((\b2v_inst5|acc[22]~77\) # (GND)))
-- \b2v_inst5|acc[23]~79\ = CARRY((!\b2v_inst5|acc[22]~77\) # (!\b2v_inst5|acc\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|acc\(23),
	datad => VCC,
	cin => \b2v_inst5|acc[22]~77\,
	combout => \b2v_inst5|acc[23]~78_combout\,
	cout => \b2v_inst5|acc[23]~79\);

-- Location: FF_X21_Y9_N15
\b2v_inst5|acc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[23]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(23));

-- Location: LCCOMB_X19_Y9_N20
\b2v_inst5|ADDR_SIN[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ADDR_SIN[3]~3_combout\ = (\b2v_inst5|acc\(23) & freq2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|acc\(23),
	datad => freq2(0),
	combout => \b2v_inst5|ADDR_SIN[3]~3_combout\);

-- Location: LCCOMB_X21_Y9_N16
\b2v_inst5|acc[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[24]~80_combout\ = (\b2v_inst5|acc\(24) & (\b2v_inst5|acc[23]~79\ $ (GND))) # (!\b2v_inst5|acc\(24) & (!\b2v_inst5|acc[23]~79\ & VCC))
-- \b2v_inst5|acc[24]~81\ = CARRY((\b2v_inst5|acc\(24) & !\b2v_inst5|acc[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|acc\(24),
	datad => VCC,
	cin => \b2v_inst5|acc[23]~79\,
	combout => \b2v_inst5|acc[24]~80_combout\,
	cout => \b2v_inst5|acc[24]~81\);

-- Location: FF_X21_Y9_N17
\b2v_inst5|acc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[24]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(24));

-- Location: LCCOMB_X19_Y9_N22
\b2v_inst5|ADDR_SIN[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ADDR_SIN[4]~4_combout\ = (\b2v_inst5|acc\(24) & freq2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|acc\(24),
	datad => freq2(0),
	combout => \b2v_inst5|ADDR_SIN[4]~4_combout\);

-- Location: LCCOMB_X21_Y9_N18
\b2v_inst5|acc[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[25]~82_combout\ = (\b2v_inst5|acc\(25) & (!\b2v_inst5|acc[24]~81\)) # (!\b2v_inst5|acc\(25) & ((\b2v_inst5|acc[24]~81\) # (GND)))
-- \b2v_inst5|acc[25]~83\ = CARRY((!\b2v_inst5|acc[24]~81\) # (!\b2v_inst5|acc\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|acc\(25),
	datad => VCC,
	cin => \b2v_inst5|acc[24]~81\,
	combout => \b2v_inst5|acc[25]~82_combout\,
	cout => \b2v_inst5|acc[25]~83\);

-- Location: FF_X21_Y9_N19
\b2v_inst5|acc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[25]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(25));

-- Location: LCCOMB_X19_Y9_N28
\b2v_inst5|ADDR_SIN[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ADDR_SIN[5]~5_combout\ = (\b2v_inst5|acc\(25) & freq2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|acc\(25),
	datad => freq2(0),
	combout => \b2v_inst5|ADDR_SIN[5]~5_combout\);

-- Location: LCCOMB_X21_Y9_N20
\b2v_inst5|acc[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[26]~84_combout\ = (\b2v_inst5|acc\(26) & (\b2v_inst5|acc[25]~83\ $ (GND))) # (!\b2v_inst5|acc\(26) & (!\b2v_inst5|acc[25]~83\ & VCC))
-- \b2v_inst5|acc[26]~85\ = CARRY((\b2v_inst5|acc\(26) & !\b2v_inst5|acc[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|acc\(26),
	datad => VCC,
	cin => \b2v_inst5|acc[25]~83\,
	combout => \b2v_inst5|acc[26]~84_combout\,
	cout => \b2v_inst5|acc[26]~85\);

-- Location: FF_X21_Y9_N21
\b2v_inst5|acc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[26]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(26));

-- Location: LCCOMB_X19_Y9_N14
\b2v_inst5|ADDR_SIN[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ADDR_SIN[6]~6_combout\ = (\b2v_inst5|acc\(26) & freq2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|acc\(26),
	datad => freq2(0),
	combout => \b2v_inst5|ADDR_SIN[6]~6_combout\);

-- Location: LCCOMB_X21_Y9_N22
\b2v_inst5|acc[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[27]~86_combout\ = (\b2v_inst5|acc\(27) & (!\b2v_inst5|acc[26]~85\)) # (!\b2v_inst5|acc\(27) & ((\b2v_inst5|acc[26]~85\) # (GND)))
-- \b2v_inst5|acc[27]~87\ = CARRY((!\b2v_inst5|acc[26]~85\) # (!\b2v_inst5|acc\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|acc\(27),
	datad => VCC,
	cin => \b2v_inst5|acc[26]~85\,
	combout => \b2v_inst5|acc[27]~86_combout\,
	cout => \b2v_inst5|acc[27]~87\);

-- Location: FF_X21_Y9_N23
\b2v_inst5|acc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[27]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(27));

-- Location: LCCOMB_X19_Y9_N4
\b2v_inst5|ADDR_SIN[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ADDR_SIN[7]~7_combout\ = (\b2v_inst5|acc\(27) & freq2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|acc\(27),
	datad => freq2(0),
	combout => \b2v_inst5|ADDR_SIN[7]~7_combout\);

-- Location: LCCOMB_X21_Y9_N24
\b2v_inst5|acc[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[28]~88_combout\ = (\b2v_inst5|acc\(28) & (\b2v_inst5|acc[27]~87\ $ (GND))) # (!\b2v_inst5|acc\(28) & (!\b2v_inst5|acc[27]~87\ & VCC))
-- \b2v_inst5|acc[28]~89\ = CARRY((\b2v_inst5|acc\(28) & !\b2v_inst5|acc[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|acc\(28),
	datad => VCC,
	cin => \b2v_inst5|acc[27]~87\,
	combout => \b2v_inst5|acc[28]~88_combout\,
	cout => \b2v_inst5|acc[28]~89\);

-- Location: FF_X21_Y9_N25
\b2v_inst5|acc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[28]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(28));

-- Location: LCCOMB_X19_Y9_N18
\b2v_inst5|ADDR_SIN[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ADDR_SIN[8]~8_combout\ = (\b2v_inst5|acc\(28) & freq2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|acc\(28),
	datad => freq2(0),
	combout => \b2v_inst5|ADDR_SIN[8]~8_combout\);

-- Location: LCCOMB_X21_Y9_N26
\b2v_inst5|acc[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[29]~90_combout\ = (\b2v_inst5|acc\(29) & (!\b2v_inst5|acc[28]~89\)) # (!\b2v_inst5|acc\(29) & ((\b2v_inst5|acc[28]~89\) # (GND)))
-- \b2v_inst5|acc[29]~91\ = CARRY((!\b2v_inst5|acc[28]~89\) # (!\b2v_inst5|acc\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|acc\(29),
	datad => VCC,
	cin => \b2v_inst5|acc[28]~89\,
	combout => \b2v_inst5|acc[29]~90_combout\,
	cout => \b2v_inst5|acc[29]~91\);

-- Location: FF_X21_Y9_N27
\b2v_inst5|acc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[29]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(29));

-- Location: LCCOMB_X19_Y9_N16
\b2v_inst5|ADDR_SIN[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ADDR_SIN[9]~9_combout\ = (\b2v_inst5|acc\(29) & freq2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|acc\(29),
	datad => freq2(0),
	combout => \b2v_inst5|ADDR_SIN[9]~9_combout\);

-- Location: LCCOMB_X21_Y9_N28
\b2v_inst5|acc[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[30]~92_combout\ = (\b2v_inst5|acc\(30) & (\b2v_inst5|acc[29]~91\ $ (GND))) # (!\b2v_inst5|acc\(30) & (!\b2v_inst5|acc[29]~91\ & VCC))
-- \b2v_inst5|acc[30]~93\ = CARRY((\b2v_inst5|acc\(30) & !\b2v_inst5|acc[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|acc\(30),
	datad => VCC,
	cin => \b2v_inst5|acc[29]~91\,
	combout => \b2v_inst5|acc[30]~92_combout\,
	cout => \b2v_inst5|acc[30]~93\);

-- Location: FF_X21_Y9_N29
\b2v_inst5|acc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[30]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(30));

-- Location: LCCOMB_X19_Y9_N6
\b2v_inst5|ADDR_SIN[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ADDR_SIN[10]~10_combout\ = (\b2v_inst5|acc\(30) & freq2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|acc\(30),
	datad => freq2(0),
	combout => \b2v_inst5|ADDR_SIN[10]~10_combout\);

-- Location: LCCOMB_X21_Y9_N30
\b2v_inst5|acc[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|acc[31]~94_combout\ = \b2v_inst5|acc\(31) $ (\b2v_inst5|acc[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|acc\(31),
	cin => \b2v_inst5|acc[30]~93\,
	combout => \b2v_inst5|acc[31]~94_combout\);

-- Location: FF_X21_Y9_N31
\b2v_inst5|acc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst5|acc[31]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|acc\(31));

-- Location: LCCOMB_X19_Y9_N12
\b2v_inst5|ADDR_SIN[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ADDR_SIN[11]~11_combout\ = (\b2v_inst5|acc\(31) & freq2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|acc\(31),
	datad => freq2(0),
	combout => \b2v_inst5|ADDR_SIN[11]~11_combout\);

-- Location: M9K_X27_Y9_N0
\b2v_inst6|altsyncram_component|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init2 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9",
	mem_init0 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SIN.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM1:b2v_inst6|altsyncram:altsyncram_component|altsyncram_unr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \b2v_inst6|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst6|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: IOIBUF_X34_Y12_N22
\BUT1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUT1,
	o => \BUT1~input_o\);

-- Location: FF_X16_Y4_N29
\Freq1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BUT1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Freq1(10));

-- Location: LCCOMB_X17_Y5_N2
\b2v_inst2|acc[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[1]~31_combout\ = (\b2v_inst2|acc\(1) & (Freq1(10) $ (VCC))) # (!\b2v_inst2|acc\(1) & (Freq1(10) & VCC))
-- \b2v_inst2|acc[1]~32\ = CARRY((\b2v_inst2|acc\(1) & Freq1(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(1),
	datab => Freq1(10),
	datad => VCC,
	combout => \b2v_inst2|acc[1]~31_combout\,
	cout => \b2v_inst2|acc[1]~32\);

-- Location: FF_X17_Y5_N3
\b2v_inst2|acc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(1));

-- Location: LCCOMB_X17_Y5_N4
\b2v_inst2|acc[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[2]~33_combout\ = (\b2v_inst2|acc\(2) & (!\b2v_inst2|acc[1]~32\)) # (!\b2v_inst2|acc\(2) & ((\b2v_inst2|acc[1]~32\) # (GND)))
-- \b2v_inst2|acc[2]~34\ = CARRY((!\b2v_inst2|acc[1]~32\) # (!\b2v_inst2|acc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(2),
	datad => VCC,
	cin => \b2v_inst2|acc[1]~32\,
	combout => \b2v_inst2|acc[2]~33_combout\,
	cout => \b2v_inst2|acc[2]~34\);

-- Location: FF_X17_Y5_N5
\b2v_inst2|acc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(2));

-- Location: LCCOMB_X17_Y5_N6
\b2v_inst2|acc[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[3]~35_combout\ = ((\b2v_inst2|acc\(3) $ (Freq1(10) $ (!\b2v_inst2|acc[2]~34\)))) # (GND)
-- \b2v_inst2|acc[3]~36\ = CARRY((\b2v_inst2|acc\(3) & ((Freq1(10)) # (!\b2v_inst2|acc[2]~34\))) # (!\b2v_inst2|acc\(3) & (Freq1(10) & !\b2v_inst2|acc[2]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(3),
	datab => Freq1(10),
	datad => VCC,
	cin => \b2v_inst2|acc[2]~34\,
	combout => \b2v_inst2|acc[3]~35_combout\,
	cout => \b2v_inst2|acc[3]~36\);

-- Location: FF_X17_Y5_N7
\b2v_inst2|acc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(3));

-- Location: LCCOMB_X17_Y5_N8
\b2v_inst2|acc[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[4]~37_combout\ = (\b2v_inst2|acc\(4) & (!\b2v_inst2|acc[3]~36\)) # (!\b2v_inst2|acc\(4) & ((\b2v_inst2|acc[3]~36\) # (GND)))
-- \b2v_inst2|acc[4]~38\ = CARRY((!\b2v_inst2|acc[3]~36\) # (!\b2v_inst2|acc\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(4),
	datad => VCC,
	cin => \b2v_inst2|acc[3]~36\,
	combout => \b2v_inst2|acc[4]~37_combout\,
	cout => \b2v_inst2|acc[4]~38\);

-- Location: FF_X17_Y5_N9
\b2v_inst2|acc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(4));

-- Location: LCCOMB_X17_Y5_N10
\b2v_inst2|acc[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[5]~39_combout\ = (\b2v_inst2|acc\(5) & (\b2v_inst2|acc[4]~38\ $ (GND))) # (!\b2v_inst2|acc\(5) & (!\b2v_inst2|acc[4]~38\ & VCC))
-- \b2v_inst2|acc[5]~40\ = CARRY((\b2v_inst2|acc\(5) & !\b2v_inst2|acc[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(5),
	datad => VCC,
	cin => \b2v_inst2|acc[4]~38\,
	combout => \b2v_inst2|acc[5]~39_combout\,
	cout => \b2v_inst2|acc[5]~40\);

-- Location: FF_X17_Y5_N11
\b2v_inst2|acc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(5));

-- Location: LCCOMB_X17_Y5_N12
\b2v_inst2|acc[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[6]~41_combout\ = (\b2v_inst2|acc\(6) & (!\b2v_inst2|acc[5]~40\)) # (!\b2v_inst2|acc\(6) & ((\b2v_inst2|acc[5]~40\) # (GND)))
-- \b2v_inst2|acc[6]~42\ = CARRY((!\b2v_inst2|acc[5]~40\) # (!\b2v_inst2|acc\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(6),
	datad => VCC,
	cin => \b2v_inst2|acc[5]~40\,
	combout => \b2v_inst2|acc[6]~41_combout\,
	cout => \b2v_inst2|acc[6]~42\);

-- Location: FF_X17_Y5_N13
\b2v_inst2|acc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[6]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(6));

-- Location: LCCOMB_X17_Y5_N14
\b2v_inst2|acc[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[7]~43_combout\ = ((\b2v_inst2|acc\(7) $ (Freq1(10) $ (!\b2v_inst2|acc[6]~42\)))) # (GND)
-- \b2v_inst2|acc[7]~44\ = CARRY((\b2v_inst2|acc\(7) & ((Freq1(10)) # (!\b2v_inst2|acc[6]~42\))) # (!\b2v_inst2|acc\(7) & (Freq1(10) & !\b2v_inst2|acc[6]~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(7),
	datab => Freq1(10),
	datad => VCC,
	cin => \b2v_inst2|acc[6]~42\,
	combout => \b2v_inst2|acc[7]~43_combout\,
	cout => \b2v_inst2|acc[7]~44\);

-- Location: FF_X17_Y5_N15
\b2v_inst2|acc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(7));

-- Location: LCCOMB_X17_Y5_N16
\b2v_inst2|acc[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[8]~45_combout\ = (\b2v_inst2|acc\(8) & ((Freq1(10) & (\b2v_inst2|acc[7]~44\ & VCC)) # (!Freq1(10) & (!\b2v_inst2|acc[7]~44\)))) # (!\b2v_inst2|acc\(8) & ((Freq1(10) & (!\b2v_inst2|acc[7]~44\)) # (!Freq1(10) & ((\b2v_inst2|acc[7]~44\) # 
-- (GND)))))
-- \b2v_inst2|acc[8]~46\ = CARRY((\b2v_inst2|acc\(8) & (!Freq1(10) & !\b2v_inst2|acc[7]~44\)) # (!\b2v_inst2|acc\(8) & ((!\b2v_inst2|acc[7]~44\) # (!Freq1(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(8),
	datab => Freq1(10),
	datad => VCC,
	cin => \b2v_inst2|acc[7]~44\,
	combout => \b2v_inst2|acc[8]~45_combout\,
	cout => \b2v_inst2|acc[8]~46\);

-- Location: FF_X17_Y5_N17
\b2v_inst2|acc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[8]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(8));

-- Location: LCCOMB_X17_Y5_N18
\b2v_inst2|acc[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[9]~47_combout\ = ((\b2v_inst2|acc\(9) $ (Freq1(10) $ (!\b2v_inst2|acc[8]~46\)))) # (GND)
-- \b2v_inst2|acc[9]~48\ = CARRY((\b2v_inst2|acc\(9) & ((Freq1(10)) # (!\b2v_inst2|acc[8]~46\))) # (!\b2v_inst2|acc\(9) & (Freq1(10) & !\b2v_inst2|acc[8]~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(9),
	datab => Freq1(10),
	datad => VCC,
	cin => \b2v_inst2|acc[8]~46\,
	combout => \b2v_inst2|acc[9]~47_combout\,
	cout => \b2v_inst2|acc[9]~48\);

-- Location: FF_X17_Y5_N19
\b2v_inst2|acc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(9));

-- Location: LCCOMB_X17_Y5_N20
\b2v_inst2|acc[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[10]~49_combout\ = (\b2v_inst2|acc\(10) & ((Freq1(10) & (\b2v_inst2|acc[9]~48\ & VCC)) # (!Freq1(10) & (!\b2v_inst2|acc[9]~48\)))) # (!\b2v_inst2|acc\(10) & ((Freq1(10) & (!\b2v_inst2|acc[9]~48\)) # (!Freq1(10) & ((\b2v_inst2|acc[9]~48\) # 
-- (GND)))))
-- \b2v_inst2|acc[10]~50\ = CARRY((\b2v_inst2|acc\(10) & (!Freq1(10) & !\b2v_inst2|acc[9]~48\)) # (!\b2v_inst2|acc\(10) & ((!\b2v_inst2|acc[9]~48\) # (!Freq1(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(10),
	datab => Freq1(10),
	datad => VCC,
	cin => \b2v_inst2|acc[9]~48\,
	combout => \b2v_inst2|acc[10]~49_combout\,
	cout => \b2v_inst2|acc[10]~50\);

-- Location: FF_X17_Y5_N21
\b2v_inst2|acc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[10]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(10));

-- Location: LCCOMB_X17_Y5_N22
\b2v_inst2|acc[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[11]~51_combout\ = ((\b2v_inst2|acc\(11) $ (Freq1(10) $ (!\b2v_inst2|acc[10]~50\)))) # (GND)
-- \b2v_inst2|acc[11]~52\ = CARRY((\b2v_inst2|acc\(11) & ((Freq1(10)) # (!\b2v_inst2|acc[10]~50\))) # (!\b2v_inst2|acc\(11) & (Freq1(10) & !\b2v_inst2|acc[10]~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(11),
	datab => Freq1(10),
	datad => VCC,
	cin => \b2v_inst2|acc[10]~50\,
	combout => \b2v_inst2|acc[11]~51_combout\,
	cout => \b2v_inst2|acc[11]~52\);

-- Location: FF_X17_Y5_N23
\b2v_inst2|acc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[11]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(11));

-- Location: LCCOMB_X17_Y5_N24
\b2v_inst2|acc[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[12]~53_combout\ = (\b2v_inst2|acc\(12) & (!\b2v_inst2|acc[11]~52\)) # (!\b2v_inst2|acc\(12) & ((\b2v_inst2|acc[11]~52\) # (GND)))
-- \b2v_inst2|acc[12]~54\ = CARRY((!\b2v_inst2|acc[11]~52\) # (!\b2v_inst2|acc\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(12),
	datad => VCC,
	cin => \b2v_inst2|acc[11]~52\,
	combout => \b2v_inst2|acc[12]~53_combout\,
	cout => \b2v_inst2|acc[12]~54\);

-- Location: FF_X17_Y5_N25
\b2v_inst2|acc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[12]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(12));

-- Location: LCCOMB_X17_Y5_N26
\b2v_inst2|acc[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[13]~55_combout\ = (\b2v_inst2|acc\(13) & (\b2v_inst2|acc[12]~54\ $ (GND))) # (!\b2v_inst2|acc\(13) & (!\b2v_inst2|acc[12]~54\ & VCC))
-- \b2v_inst2|acc[13]~56\ = CARRY((\b2v_inst2|acc\(13) & !\b2v_inst2|acc[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(13),
	datad => VCC,
	cin => \b2v_inst2|acc[12]~54\,
	combout => \b2v_inst2|acc[13]~55_combout\,
	cout => \b2v_inst2|acc[13]~56\);

-- Location: FF_X17_Y5_N27
\b2v_inst2|acc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(13));

-- Location: LCCOMB_X17_Y5_N28
\b2v_inst2|acc[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[14]~57_combout\ = (\b2v_inst2|acc\(14) & ((Freq1(10) & (\b2v_inst2|acc[13]~56\ & VCC)) # (!Freq1(10) & (!\b2v_inst2|acc[13]~56\)))) # (!\b2v_inst2|acc\(14) & ((Freq1(10) & (!\b2v_inst2|acc[13]~56\)) # (!Freq1(10) & ((\b2v_inst2|acc[13]~56\) 
-- # (GND)))))
-- \b2v_inst2|acc[14]~58\ = CARRY((\b2v_inst2|acc\(14) & (!Freq1(10) & !\b2v_inst2|acc[13]~56\)) # (!\b2v_inst2|acc\(14) & ((!\b2v_inst2|acc[13]~56\) # (!Freq1(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(14),
	datab => Freq1(10),
	datad => VCC,
	cin => \b2v_inst2|acc[13]~56\,
	combout => \b2v_inst2|acc[14]~57_combout\,
	cout => \b2v_inst2|acc[14]~58\);

-- Location: FF_X17_Y5_N29
\b2v_inst2|acc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(14));

-- Location: LCCOMB_X17_Y5_N30
\b2v_inst2|acc[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[15]~59_combout\ = (\b2v_inst2|acc\(15) & (\b2v_inst2|acc[14]~58\ $ (GND))) # (!\b2v_inst2|acc\(15) & (!\b2v_inst2|acc[14]~58\ & VCC))
-- \b2v_inst2|acc[15]~60\ = CARRY((\b2v_inst2|acc\(15) & !\b2v_inst2|acc[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(15),
	datad => VCC,
	cin => \b2v_inst2|acc[14]~58\,
	combout => \b2v_inst2|acc[15]~59_combout\,
	cout => \b2v_inst2|acc[15]~60\);

-- Location: FF_X17_Y5_N31
\b2v_inst2|acc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[15]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(15));

-- Location: LCCOMB_X17_Y4_N0
\b2v_inst2|acc[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[16]~61_combout\ = (\b2v_inst2|acc\(16) & ((Freq1(10) & (\b2v_inst2|acc[15]~60\ & VCC)) # (!Freq1(10) & (!\b2v_inst2|acc[15]~60\)))) # (!\b2v_inst2|acc\(16) & ((Freq1(10) & (!\b2v_inst2|acc[15]~60\)) # (!Freq1(10) & ((\b2v_inst2|acc[15]~60\) 
-- # (GND)))))
-- \b2v_inst2|acc[16]~62\ = CARRY((\b2v_inst2|acc\(16) & (!Freq1(10) & !\b2v_inst2|acc[15]~60\)) # (!\b2v_inst2|acc\(16) & ((!\b2v_inst2|acc[15]~60\) # (!Freq1(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(16),
	datab => Freq1(10),
	datad => VCC,
	cin => \b2v_inst2|acc[15]~60\,
	combout => \b2v_inst2|acc[16]~61_combout\,
	cout => \b2v_inst2|acc[16]~62\);

-- Location: FF_X17_Y4_N1
\b2v_inst2|acc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[16]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(16));

-- Location: LCCOMB_X17_Y4_N2
\b2v_inst2|acc[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[17]~63_combout\ = (\b2v_inst2|acc\(17) & (\b2v_inst2|acc[16]~62\ $ (GND))) # (!\b2v_inst2|acc\(17) & (!\b2v_inst2|acc[16]~62\ & VCC))
-- \b2v_inst2|acc[17]~64\ = CARRY((\b2v_inst2|acc\(17) & !\b2v_inst2|acc[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(17),
	datad => VCC,
	cin => \b2v_inst2|acc[16]~62\,
	combout => \b2v_inst2|acc[17]~63_combout\,
	cout => \b2v_inst2|acc[17]~64\);

-- Location: FF_X17_Y4_N3
\b2v_inst2|acc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[17]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(17));

-- Location: LCCOMB_X17_Y4_N4
\b2v_inst2|acc[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[18]~65_combout\ = (\b2v_inst2|acc\(18) & (!\b2v_inst2|acc[17]~64\)) # (!\b2v_inst2|acc\(18) & ((\b2v_inst2|acc[17]~64\) # (GND)))
-- \b2v_inst2|acc[18]~66\ = CARRY((!\b2v_inst2|acc[17]~64\) # (!\b2v_inst2|acc\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(18),
	datad => VCC,
	cin => \b2v_inst2|acc[17]~64\,
	combout => \b2v_inst2|acc[18]~65_combout\,
	cout => \b2v_inst2|acc[18]~66\);

-- Location: FF_X17_Y4_N5
\b2v_inst2|acc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(18));

-- Location: LCCOMB_X17_Y4_N6
\b2v_inst2|acc[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[19]~67_combout\ = (\b2v_inst2|acc\(19) & (\b2v_inst2|acc[18]~66\ $ (GND))) # (!\b2v_inst2|acc\(19) & (!\b2v_inst2|acc[18]~66\ & VCC))
-- \b2v_inst2|acc[19]~68\ = CARRY((\b2v_inst2|acc\(19) & !\b2v_inst2|acc[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(19),
	datad => VCC,
	cin => \b2v_inst2|acc[18]~66\,
	combout => \b2v_inst2|acc[19]~67_combout\,
	cout => \b2v_inst2|acc[19]~68\);

-- Location: FF_X17_Y4_N7
\b2v_inst2|acc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[19]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(19));

-- Location: LCCOMB_X17_Y4_N8
\b2v_inst2|acc[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[20]~69_combout\ = (\b2v_inst2|acc\(20) & (!\b2v_inst2|acc[19]~68\)) # (!\b2v_inst2|acc\(20) & ((\b2v_inst2|acc[19]~68\) # (GND)))
-- \b2v_inst2|acc[20]~70\ = CARRY((!\b2v_inst2|acc[19]~68\) # (!\b2v_inst2|acc\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(20),
	datad => VCC,
	cin => \b2v_inst2|acc[19]~68\,
	combout => \b2v_inst2|acc[20]~69_combout\,
	cout => \b2v_inst2|acc[20]~70\);

-- Location: FF_X17_Y4_N9
\b2v_inst2|acc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[20]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(20));

-- Location: LCCOMB_X16_Y4_N2
\b2v_inst2|ADDR_SIN[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|ADDR_SIN[0]~0_combout\ = (\b2v_inst2|acc\(20) & Freq1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|acc\(20),
	datad => Freq1(10),
	combout => \b2v_inst2|ADDR_SIN[0]~0_combout\);

-- Location: LCCOMB_X17_Y4_N10
\b2v_inst2|acc[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[21]~71_combout\ = (\b2v_inst2|acc\(21) & (\b2v_inst2|acc[20]~70\ $ (GND))) # (!\b2v_inst2|acc\(21) & (!\b2v_inst2|acc[20]~70\ & VCC))
-- \b2v_inst2|acc[21]~72\ = CARRY((\b2v_inst2|acc\(21) & !\b2v_inst2|acc[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(21),
	datad => VCC,
	cin => \b2v_inst2|acc[20]~70\,
	combout => \b2v_inst2|acc[21]~71_combout\,
	cout => \b2v_inst2|acc[21]~72\);

-- Location: FF_X17_Y4_N11
\b2v_inst2|acc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[21]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(21));

-- Location: LCCOMB_X16_Y4_N12
\b2v_inst2|ADDR_SIN[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|ADDR_SIN[1]~1_combout\ = (\b2v_inst2|acc\(21) & Freq1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|acc\(21),
	datad => Freq1(10),
	combout => \b2v_inst2|ADDR_SIN[1]~1_combout\);

-- Location: LCCOMB_X17_Y4_N12
\b2v_inst2|acc[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[22]~73_combout\ = (\b2v_inst2|acc\(22) & (!\b2v_inst2|acc[21]~72\)) # (!\b2v_inst2|acc\(22) & ((\b2v_inst2|acc[21]~72\) # (GND)))
-- \b2v_inst2|acc[22]~74\ = CARRY((!\b2v_inst2|acc[21]~72\) # (!\b2v_inst2|acc\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(22),
	datad => VCC,
	cin => \b2v_inst2|acc[21]~72\,
	combout => \b2v_inst2|acc[22]~73_combout\,
	cout => \b2v_inst2|acc[22]~74\);

-- Location: FF_X17_Y4_N13
\b2v_inst2|acc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[22]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(22));

-- Location: LCCOMB_X16_Y4_N14
\b2v_inst2|ADDR_SIN[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|ADDR_SIN[2]~2_combout\ = (\b2v_inst2|acc\(22) & Freq1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|acc\(22),
	datad => Freq1(10),
	combout => \b2v_inst2|ADDR_SIN[2]~2_combout\);

-- Location: LCCOMB_X17_Y4_N14
\b2v_inst2|acc[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[23]~75_combout\ = (\b2v_inst2|acc\(23) & (\b2v_inst2|acc[22]~74\ $ (GND))) # (!\b2v_inst2|acc\(23) & (!\b2v_inst2|acc[22]~74\ & VCC))
-- \b2v_inst2|acc[23]~76\ = CARRY((\b2v_inst2|acc\(23) & !\b2v_inst2|acc[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(23),
	datad => VCC,
	cin => \b2v_inst2|acc[22]~74\,
	combout => \b2v_inst2|acc[23]~75_combout\,
	cout => \b2v_inst2|acc[23]~76\);

-- Location: FF_X17_Y4_N15
\b2v_inst2|acc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[23]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(23));

-- Location: LCCOMB_X16_Y4_N24
\b2v_inst2|ADDR_SIN[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|ADDR_SIN[3]~3_combout\ = (\b2v_inst2|acc\(23) & Freq1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|acc\(23),
	datad => Freq1(10),
	combout => \b2v_inst2|ADDR_SIN[3]~3_combout\);

-- Location: LCCOMB_X17_Y4_N16
\b2v_inst2|acc[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[24]~77_combout\ = (\b2v_inst2|acc\(24) & (!\b2v_inst2|acc[23]~76\)) # (!\b2v_inst2|acc\(24) & ((\b2v_inst2|acc[23]~76\) # (GND)))
-- \b2v_inst2|acc[24]~78\ = CARRY((!\b2v_inst2|acc[23]~76\) # (!\b2v_inst2|acc\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(24),
	datad => VCC,
	cin => \b2v_inst2|acc[23]~76\,
	combout => \b2v_inst2|acc[24]~77_combout\,
	cout => \b2v_inst2|acc[24]~78\);

-- Location: FF_X17_Y4_N17
\b2v_inst2|acc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[24]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(24));

-- Location: LCCOMB_X16_Y4_N26
\b2v_inst2|ADDR_SIN[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|ADDR_SIN[4]~4_combout\ = (\b2v_inst2|acc\(24) & Freq1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(24),
	datad => Freq1(10),
	combout => \b2v_inst2|ADDR_SIN[4]~4_combout\);

-- Location: LCCOMB_X17_Y4_N18
\b2v_inst2|acc[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[25]~79_combout\ = (\b2v_inst2|acc\(25) & (\b2v_inst2|acc[24]~78\ $ (GND))) # (!\b2v_inst2|acc\(25) & (!\b2v_inst2|acc[24]~78\ & VCC))
-- \b2v_inst2|acc[25]~80\ = CARRY((\b2v_inst2|acc\(25) & !\b2v_inst2|acc[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(25),
	datad => VCC,
	cin => \b2v_inst2|acc[24]~78\,
	combout => \b2v_inst2|acc[25]~79_combout\,
	cout => \b2v_inst2|acc[25]~80\);

-- Location: FF_X17_Y4_N19
\b2v_inst2|acc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[25]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(25));

-- Location: LCCOMB_X16_Y4_N16
\b2v_inst2|ADDR_SIN[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|ADDR_SIN[5]~5_combout\ = (\b2v_inst2|acc\(25) & Freq1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(25),
	datad => Freq1(10),
	combout => \b2v_inst2|ADDR_SIN[5]~5_combout\);

-- Location: LCCOMB_X17_Y4_N20
\b2v_inst2|acc[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[26]~81_combout\ = (\b2v_inst2|acc\(26) & (!\b2v_inst2|acc[25]~80\)) # (!\b2v_inst2|acc\(26) & ((\b2v_inst2|acc[25]~80\) # (GND)))
-- \b2v_inst2|acc[26]~82\ = CARRY((!\b2v_inst2|acc[25]~80\) # (!\b2v_inst2|acc\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(26),
	datad => VCC,
	cin => \b2v_inst2|acc[25]~80\,
	combout => \b2v_inst2|acc[26]~81_combout\,
	cout => \b2v_inst2|acc[26]~82\);

-- Location: FF_X17_Y4_N21
\b2v_inst2|acc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[26]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(26));

-- Location: LCCOMB_X16_Y4_N10
\b2v_inst2|ADDR_SIN[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|ADDR_SIN[6]~6_combout\ = (\b2v_inst2|acc\(26) & Freq1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(26),
	datad => Freq1(10),
	combout => \b2v_inst2|ADDR_SIN[6]~6_combout\);

-- Location: LCCOMB_X17_Y4_N22
\b2v_inst2|acc[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[27]~83_combout\ = (\b2v_inst2|acc\(27) & (\b2v_inst2|acc[26]~82\ $ (GND))) # (!\b2v_inst2|acc\(27) & (!\b2v_inst2|acc[26]~82\ & VCC))
-- \b2v_inst2|acc[27]~84\ = CARRY((\b2v_inst2|acc\(27) & !\b2v_inst2|acc[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(27),
	datad => VCC,
	cin => \b2v_inst2|acc[26]~82\,
	combout => \b2v_inst2|acc[27]~83_combout\,
	cout => \b2v_inst2|acc[27]~84\);

-- Location: FF_X17_Y4_N23
\b2v_inst2|acc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[27]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(27));

-- Location: LCCOMB_X16_Y4_N4
\b2v_inst2|ADDR_SIN[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|ADDR_SIN[7]~7_combout\ = (\b2v_inst2|acc\(27) & Freq1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(27),
	datad => Freq1(10),
	combout => \b2v_inst2|ADDR_SIN[7]~7_combout\);

-- Location: LCCOMB_X17_Y4_N24
\b2v_inst2|acc[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[28]~85_combout\ = (\b2v_inst2|acc\(28) & (!\b2v_inst2|acc[27]~84\)) # (!\b2v_inst2|acc\(28) & ((\b2v_inst2|acc[27]~84\) # (GND)))
-- \b2v_inst2|acc[28]~86\ = CARRY((!\b2v_inst2|acc[27]~84\) # (!\b2v_inst2|acc\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(28),
	datad => VCC,
	cin => \b2v_inst2|acc[27]~84\,
	combout => \b2v_inst2|acc[28]~85_combout\,
	cout => \b2v_inst2|acc[28]~86\);

-- Location: FF_X17_Y4_N25
\b2v_inst2|acc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[28]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(28));

-- Location: LCCOMB_X16_Y4_N22
\b2v_inst2|ADDR_SIN[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|ADDR_SIN[8]~8_combout\ = (\b2v_inst2|acc\(28) & Freq1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(28),
	datad => Freq1(10),
	combout => \b2v_inst2|ADDR_SIN[8]~8_combout\);

-- Location: LCCOMB_X17_Y4_N26
\b2v_inst2|acc[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[29]~87_combout\ = (\b2v_inst2|acc\(29) & (\b2v_inst2|acc[28]~86\ $ (GND))) # (!\b2v_inst2|acc\(29) & (!\b2v_inst2|acc[28]~86\ & VCC))
-- \b2v_inst2|acc[29]~88\ = CARRY((\b2v_inst2|acc\(29) & !\b2v_inst2|acc[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(29),
	datad => VCC,
	cin => \b2v_inst2|acc[28]~86\,
	combout => \b2v_inst2|acc[29]~87_combout\,
	cout => \b2v_inst2|acc[29]~88\);

-- Location: FF_X17_Y4_N27
\b2v_inst2|acc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[29]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(29));

-- Location: LCCOMB_X16_Y4_N8
\b2v_inst2|ADDR_SIN[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|ADDR_SIN[9]~9_combout\ = (\b2v_inst2|acc\(29) & Freq1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|acc\(29),
	datad => Freq1(10),
	combout => \b2v_inst2|ADDR_SIN[9]~9_combout\);

-- Location: LCCOMB_X17_Y4_N28
\b2v_inst2|acc[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[30]~89_combout\ = (\b2v_inst2|acc\(30) & (!\b2v_inst2|acc[29]~88\)) # (!\b2v_inst2|acc\(30) & ((\b2v_inst2|acc[29]~88\) # (GND)))
-- \b2v_inst2|acc[30]~90\ = CARRY((!\b2v_inst2|acc[29]~88\) # (!\b2v_inst2|acc\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(30),
	datad => VCC,
	cin => \b2v_inst2|acc[29]~88\,
	combout => \b2v_inst2|acc[30]~89_combout\,
	cout => \b2v_inst2|acc[30]~90\);

-- Location: FF_X17_Y4_N29
\b2v_inst2|acc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[30]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(30));

-- Location: LCCOMB_X16_Y4_N6
\b2v_inst2|ADDR_SIN[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|ADDR_SIN[10]~10_combout\ = (\b2v_inst2|acc\(30) & Freq1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|acc\(30),
	datad => Freq1(10),
	combout => \b2v_inst2|ADDR_SIN[10]~10_combout\);

-- Location: LCCOMB_X17_Y4_N30
\b2v_inst2|acc[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|acc[31]~91_combout\ = \b2v_inst2|acc\(31) $ (!\b2v_inst2|acc[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(31),
	cin => \b2v_inst2|acc[30]~90\,
	combout => \b2v_inst2|acc[31]~91_combout\);

-- Location: FF_X17_Y4_N31
\b2v_inst2|acc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|acc[31]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|acc\(31));

-- Location: LCCOMB_X16_Y4_N0
\b2v_inst2|ADDR_SIN[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|ADDR_SIN[11]~11_combout\ = (\b2v_inst2|acc\(31) & Freq1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|acc\(31),
	datad => Freq1(10),
	combout => \b2v_inst2|ADDR_SIN[11]~11_combout\);

-- Location: M9K_X15_Y4_N0
\b2v_inst3|altsyncram_component|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init2 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9",
	mem_init0 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SIN.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM1:b2v_inst3|altsyncram:altsyncram_component|altsyncram_unr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \b2v_inst3|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y2_N0
\b2v_inst3|altsyncram_component|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000155555555555555555555555555555555555555555555555555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000015555555555555555555555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"0000000000000000000000000000000000000000155555555555555555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000555555555555555555555555555555555555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5555555555555555555555555555555555555555555555555555555540000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA95555555555555555555555555555555555555555500000000000000000000000000000000000000003",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA55555555555555555555555555555555555555555550000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA55555555555555555555555555555555555555555555555555555555555555555555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SIN.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM1:b2v_inst3|altsyncram:altsyncram_component|altsyncram_unr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \b2v_inst3|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y7_N0
\b2v_inst6|altsyncram_component|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000155555555555555555555555555555555555555555555555555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000015555555555555555555555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"0000000000000000000000000000000000000000155555555555555555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000555555555555555555555555555555555555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5555555555555555555555555555555555555555555555555555555540000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA95555555555555555555555555555555555555555500000000000000000000000000000000000000003",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA55555555555555555555555555555555555555555550000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA55555555555555555555555555555555555555555555555555555555555555555555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SIN.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM1:b2v_inst6|altsyncram:altsyncram_component|altsyncram_unr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \b2v_inst6|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst6|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y8_N0
\b2v_inst6|altsyncram_component|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000015555555555555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFC00000000000000000001555555555555555556AAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFC00000000000000155555555555556AAAAAAAAAAAAABFFFFFFFFFFFFC0000000000001555555555555AAAAAAAAAAAAFFFFFFFFFFFF00000000000055555555555AAAAAAAAAAABFFFFFFFFFFC000000000015555555555AAAAAAAAAAAFFFFFFFFFFC000000000055555555556AAAAAAAAABFFFFFFFFFF000000000055555555556AAAAAAAAABFFFFFFFFFF",
	mem_init2 => X"00000000005555555555AAAAAAAAAABFFFFFFFFFC000000000055555555556AAAAAAAAABFFFFFFFFFF0000000000055555555556AAAAAAAAAAFFFFFFFFFFF00000000000555555555556AAAAAAAAAAAFFFFFFFFFFFC000000000001555555555556AAAAAAAAAAAAFFFFFFFFFFFFF000000000000015555555555555AAAAAAAAAAAAAABFFFFFFFFFFFFFFC00000000000000055555555555555555AAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFC0000000000000000000000555555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5555555555555555555555555540000000000000000000000FFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAA955555555555555554000000000000000FFFFFFFFFFFFFFFAAAAAAAAAAAAAA9555555555555500000000000003FFFFFFFFFFFFEAAAAAAAAAAAA555555555555000000000000FFFFFFFFFFFEAAAAAAAAAAA55555555555400000000003FFFFFFFFFFEAAAAAAAAAA5555555555400000000003FFFFFFFFFFAAAAAAAAAA555555555540000000000FFFFFFFFFFAAAAAAAAAA955555555540000000003",
	mem_init0 => X"FFFFFFFFFFAAAAAAAAAA555555555540000000003FFFFFFFFFFAAAAAAAAAA555555555540000000000FFFFFFFFFFEAAAAAAAAAA9555555555500000000000FFFFFFFFFFFAAAAAAAAAAA955555555554000000000003FFFFFFFFFFFEAAAAAAAAAAA95555555555550000000000000FFFFFFFFFFFFFAAAAAAAAAAAAAA55555555555555000000000000000FFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAA55555555555555555500000000000000000000FFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAA55555555555555555555555555555555550000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SIN.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM1:b2v_inst6|altsyncram:altsyncram_component|altsyncram_unr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \b2v_inst6|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst6|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y3_N0
\b2v_inst3|altsyncram_component|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000015555555555555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFC00000000000000000001555555555555555556AAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFC00000000000000155555555555556AAAAAAAAAAAAABFFFFFFFFFFFFC0000000000001555555555555AAAAAAAAAAAAFFFFFFFFFFFF00000000000055555555555AAAAAAAAAAABFFFFFFFFFFC000000000015555555555AAAAAAAAAAAFFFFFFFFFFC000000000055555555556AAAAAAAAABFFFFFFFFFF000000000055555555556AAAAAAAAABFFFFFFFFFF",
	mem_init2 => X"00000000005555555555AAAAAAAAAABFFFFFFFFFC000000000055555555556AAAAAAAAABFFFFFFFFFF0000000000055555555556AAAAAAAAAAFFFFFFFFFFF00000000000555555555556AAAAAAAAAAAFFFFFFFFFFFC000000000001555555555556AAAAAAAAAAAAFFFFFFFFFFFFF000000000000015555555555555AAAAAAAAAAAAAABFFFFFFFFFFFFFFC00000000000000055555555555555555AAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFC0000000000000000000000555555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5555555555555555555555555540000000000000000000000FFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAA955555555555555554000000000000000FFFFFFFFFFFFFFFAAAAAAAAAAAAAA9555555555555500000000000003FFFFFFFFFFFFEAAAAAAAAAAAA555555555555000000000000FFFFFFFFFFFEAAAAAAAAAAA55555555555400000000003FFFFFFFFFFEAAAAAAAAAA5555555555400000000003FFFFFFFFFFAAAAAAAAAA555555555540000000000FFFFFFFFFFAAAAAAAAAA955555555540000000003",
	mem_init0 => X"FFFFFFFFFFAAAAAAAAAA555555555540000000003FFFFFFFFFFAAAAAAAAAA555555555540000000000FFFFFFFFFFEAAAAAAAAAA9555555555500000000000FFFFFFFFFFFAAAAAAAAAAA955555555554000000000003FFFFFFFFFFFEAAAAAAAAAAA95555555555550000000000000FFFFFFFFFFFFFAAAAAAAAAAAAAA55555555555555000000000000000FFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAA55555555555555555500000000000000000000FFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAA55555555555555555555555555555555550000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SIN.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM1:b2v_inst3|altsyncram:altsyncram_component|altsyncram_unr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \b2v_inst3|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y6_N0
\b2v_inst3|altsyncram_component|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000000000000000000000000000000000000000155555555555555556AAAAAAAAAAAABFFFFFFFFFFC000000000555555555AAAAAAAAFFFFFFFC00000015555556AAAAAAFFFFFF000000555556AAAAAFFFFFC0000155556AAAABFFFFC000055556AAAAFFFFC00005555AAAABFFFC00015556AAABFFFC0005555AAABFFFC0005556AAAFFFC0005556AAAFFFC000555AAABFFC000555AAABFFC001555AAAFFF000555AAAFFF000555AAAFFF000555AAAFFF001556AABFF000555AABFFC00555AAAFFC00155AABFFC00555AABFF000556AAFFF00155AAAFFC00556AABFF00155AABFFC00556AAFFC00155AABFF00155AABFF000556AAFFC00556AAFFC00556AABFF",
	mem_init2 => X"00155AABFF00155AABFF000556AAFFC00556AAFFC00155AABFF00155AABFFC00556AAFFC00155AABFF000556AAFFF00155AAAFFC00555AABFF000556AABFF000556AABFF000555AABFFC00155AAAFFF000556AABFFC001556AABFFC001556AABFFC001555AAAFFF0001556AABFFF0001556AAAFFFC001555AAABFFF0001555AAABFFFC0005555AAABFFFC0001555AAAAFFFF000015556AAAAFFFF000015555AAAABFFFFC000055555AAAAAFFFFFC0000155555AAAAAAFFFFFF0000005555556AAAAAAFFFFFFFC000000055555555AAAAAAAAAFFFFFFFFFC000000000005555555555555AAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAA9555555555555400000000000FFFFFFFFFEAAAAAAAA9555555540000000FFFFFFFEAAAAAA5555554000003FFFFFEAAAAA95555500000FFFFFEAAAA9555540000FFFFFAAAA9555500003FFFEAAAA555500003FFFEAAA95550000FFFFAAA95554000FFFFAAA95550003FFFAAA9555000FFFEAAA5550003FFFAAA5550003FFEAA9555000FFFAAA555000FFFAAA555000FFFAAA554003FFEAA955000FFFAA9554003FFAAA554003FFAAA554003FFAA955400FFEAA955003FFEAA554003FFAA955000FFEAA55400FFFAA955003FFAA955000FFEAA55400FFEAA554003FFAA955003FFAA955003",
	mem_init0 => X"FFAAA55400FFEAA55400FFEAA554003FFAA955003FFAA955000FFEAA55400FFFAA955003FFAAA55400FFEAA955003FFEAA554003FFAA955400FFFAA955000FFEAA955400FFFAA9554003FFAAA555003FFEAA9554003FFEAA9554003FFEAA9554003FFEAA9555000FFFAAA9554000FFFAAA9554000FFFEAAA5554000FFFEAAA5554000FFFFAAA95554000FFFFAAAA55550000FFFFAAAA955540000FFFFEAAAA555540000FFFFFAAAAA5555500000FFFFFEAAAAA555554000003FFFFFEAAAAAA55555550000000FFFFFFFEAAAAAAA9555555554000000000FFFFFFFFFFFAAAAAAAAAAAAA5555555555555555500000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SIN.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM1:b2v_inst3|altsyncram:altsyncram_component|altsyncram_unr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \b2v_inst3|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y9_N0
\b2v_inst6|altsyncram_component|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000000000000000000000000000000000000000155555555555555556AAAAAAAAAAAABFFFFFFFFFFC000000000555555555AAAAAAAAFFFFFFFC00000015555556AAAAAAFFFFFF000000555556AAAAAFFFFFC0000155556AAAABFFFFC000055556AAAAFFFFC00005555AAAABFFFC00015556AAABFFFC0005555AAABFFFC0005556AAAFFFC0005556AAAFFFC000555AAABFFC000555AAABFFC001555AAAFFF000555AAAFFF000555AAAFFF000555AAAFFF001556AABFF000555AABFFC00555AAAFFC00155AABFFC00555AABFF000556AAFFF00155AAAFFC00556AABFF00155AABFFC00556AAFFC00155AABFF00155AABFF000556AAFFC00556AAFFC00556AABFF",
	mem_init2 => X"00155AABFF00155AABFF000556AAFFC00556AAFFC00155AABFF00155AABFFC00556AAFFC00155AABFF000556AAFFF00155AAAFFC00555AABFF000556AABFF000556AABFF000555AABFFC00155AAAFFF000556AABFFC001556AABFFC001556AABFFC001555AAAFFF0001556AABFFF0001556AAAFFFC001555AAABFFF0001555AAABFFFC0005555AAABFFFC0001555AAAAFFFF000015556AAAAFFFF000015555AAAABFFFFC000055555AAAAAFFFFFC0000155555AAAAAAFFFFFF0000005555556AAAAAAFFFFFFFC000000055555555AAAAAAAAAFFFFFFFFFC000000000005555555555555AAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAA9555555555555400000000000FFFFFFFFFEAAAAAAAA9555555540000000FFFFFFFEAAAAAA5555554000003FFFFFEAAAAA95555500000FFFFFEAAAA9555540000FFFFFAAAA9555500003FFFEAAAA555500003FFFEAAA95550000FFFFAAA95554000FFFFAAA95550003FFFAAA9555000FFFEAAA5550003FFFAAA5550003FFEAA9555000FFFAAA555000FFFAAA555000FFFAAA554003FFEAA955000FFFAA9554003FFAAA554003FFAAA554003FFAA955400FFEAA955003FFEAA554003FFAA955000FFEAA55400FFFAA955003FFAA955000FFEAA55400FFEAA554003FFAA955003FFAA955003",
	mem_init0 => X"FFAAA55400FFEAA55400FFEAA554003FFAA955003FFAA955000FFEAA55400FFFAA955003FFAAA55400FFEAA955003FFEAA554003FFAA955400FFFAA955000FFEAA955400FFFAA9554003FFAAA555003FFEAA9554003FFEAA9554003FFEAA9554003FFEAA9555000FFFAAA9554000FFFAAA9554000FFFEAAA5554000FFFEAAA5554000FFFFAAA95554000FFFFAAAA55550000FFFFAAAA955540000FFFFEAAAA555540000FFFFFAAAAA5555500000FFFFFEAAAAA555554000003FFFFFEAAAAAA55555550000000FFFFFFFEAAAAAAA9555555554000000000FFFFFFFFFFFAAAAAAAAAAAAA5555555555555555500000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SIN.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM1:b2v_inst6|altsyncram:altsyncram_component|altsyncram_unr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \b2v_inst6|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst6|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y5_N0
\b2v_inst3|altsyncram_component|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000555555556AAAAAAFFFFFC000015556AAABFFFC0005556AABFFC00155AAAFFC00556AAFF00156AAFF0055AAFF0055AAFC015AAFC015AAFC056ABF015ABF015ABF015AFC056AF015AFC05ABC05ABC05ABC05ABC15AF016BC05AF016BC15AF05AF016BC16BC16BC16BC16BC16BC16F05AF05AC16BC1AF05BC16B05AC16B05AC16F05BC1AF16B05BC1AC16F06B05BC5AC1AC16F16F06B06B06B06B06B06B06B06B06B06B06B16F16F1AC1AC5BC5B06B16F1AC1BC5B06B16F1AC5BC6B16C1BC5B06F1AC5B06F1AC5B06F1AC5B06F1AC5B16C1BC6B1AC5B06C1BC6B1AC5B16C1BC6F1AC6B16C5B16C1B06F1BC6F1AC6B16C5B16C1B06C1BC6F",
	mem_init2 => X"1BC6B1AC6B16C5B06C1B06F1BC6F1AC6B16C5B06C1BC6F1AC6B16C5B06C1BC6B1AC5B06C1BC6B16C5B06F1AC5B06F1AC5B06F1AC5B06F1AC5B06B16C1BC5B06F16C1AC5B06B16F1AC1AC5BC6B06B16F16F1AC1AC1AC1AC5BC5BC5BC5BC5BC1AC1AC1AC16F16F16B06BC5BC1AC16F06BC5BC1AF16BC5AC16F05BC16F05BC16F05AC16BC1AF05AF16BC16BC16BC5AF05AF05AF016BC16BC16BF05AF056BC15AF056BC05AFC16AF016AF016AF016AFC15ABC056AF015ABF015ABF015ABF015AAFC055ABF0056ABFC055AAFF0055AAFF00556ABFF00156AAFFC00155AAAFFF000555AAABFFF00005555AAAABFFFFC000005555555AAAAAAAAAFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFEAAAAAAAA9555555400000FFFFFAAAA955540003FFFAAA9554003FFEAA955000FFEAA55003FFAA55403FEA95403FEA9540FFAA5403FA9540FEA9503FA9503FA9503FA9503EA540FA950FEA503EA503EA503EA50FE940FA543E950FA543E943FA50FA50FA503E943E943E94FA50FA50FA53E943E90FA50E943E50F943E50F943E50E94FA53E90F94FA43E50E90F94FA43A53E53E50E90E90E90F94F94F94F94F94E90E90E90E93E53E53A43A4F94E90E93E53A4394E90E53E4394F90E53A4394E93E4394E93E4394E93E4394E93E4394E53A4F90E4394E93A4F90E4394E53A4E93E4F90E4394E53A4E93E4F93E4390E4394E53A4E93A4F93",
	mem_init0 => X"E4F90E4390E5394E53A4E93E4F93E4390E5394E53A4E93E4F90E5394E93A4F90E4394E93A4F90E5394E93E4394E93E4394E93E4394E93E4394F90E53A4F94E93E53A4394F90E93E53A4394F94E90E93E53E53A43A43A43A43A43A43A43A43A43A43A43E53E50E90E94F943A43E50E90F943A53E90F943E50E943A50E943A50F943E90FA50E943E943E50FA50FA50FA50FA50FA50FA503E943E950FA503E940FA503E950FA940FA940FA940FA940FE9503EA540FE9503FA9503FA9503FAA540FEA9500FEA9500FEA95403FEA95403FEAA55003FEAA55400FFEAA955000FFFAAA5554000FFFFAAAA555500000FFFFFEAAAAAA55555555400000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SIN.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM1:b2v_inst3|altsyncram:altsyncram_component|altsyncram_unr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \b2v_inst3|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y11_N0
\b2v_inst6|altsyncram_component|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000555555556AAAAAAFFFFFC000015556AAABFFFC0005556AABFFC00155AAAFFC00556AAFF00156AAFF0055AAFF0055AAFC015AAFC015AAFC056ABF015ABF015ABF015AFC056AF015AFC05ABC05ABC05ABC05ABC15AF016BC05AF016BC15AF05AF016BC16BC16BC16BC16BC16BC16F05AF05AC16BC1AF05BC16B05AC16B05AC16F05BC1AF16B05BC1AC16F06B05BC5AC1AC16F16F06B06B06B06B06B06B06B06B06B06B06B16F16F1AC1AC5BC5B06B16F1AC1BC5B06B16F1AC5BC6B16C1BC5B06F1AC5B06F1AC5B06F1AC5B06F1AC5B16C1BC6B1AC5B06C1BC6B1AC5B16C1BC6F1AC6B16C5B16C1B06F1BC6F1AC6B16C5B16C1B06C1BC6F",
	mem_init2 => X"1BC6B1AC6B16C5B06C1B06F1BC6F1AC6B16C5B06C1BC6F1AC6B16C5B06C1BC6B1AC5B06C1BC6B16C5B06F1AC5B06F1AC5B06F1AC5B06F1AC5B06B16C1BC5B06F16C1AC5B06B16F1AC1AC5BC6B06B16F16F1AC1AC1AC1AC5BC5BC5BC5BC5BC1AC1AC1AC16F16F16B06BC5BC1AC16F06BC5BC1AF16BC5AC16F05BC16F05BC16F05AC16BC1AF05AF16BC16BC16BC5AF05AF05AF016BC16BC16BF05AF056BC15AF056BC05AFC16AF016AF016AF016AFC15ABC056AF015ABF015ABF015ABF015AAFC055ABF0056ABFC055AAFF0055AAFF00556ABFF00156AAFFC00155AAAFFF000555AAABFFF00005555AAAABFFFFC000005555555AAAAAAAAAFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFEAAAAAAAA9555555400000FFFFFAAAA955540003FFFAAA9554003FFEAA955000FFEAA55003FFAA55403FEA95403FEA9540FFAA5403FA9540FEA9503FA9503FA9503FA9503EA540FA950FEA503EA503EA503EA50FE940FA543E950FA543E943FA50FA50FA503E943E943E94FA50FA50FA53E943E90FA50E943E50F943E50F943E50E94FA53E90F94FA43E50E90F94FA43A53E53E50E90E90E90F94F94F94F94F94E90E90E90E93E53E53A43A4F94E90E93E53A4394E90E53E4394F90E53A4394E93E4394E93E4394E93E4394E93E4394E53A4F90E4394E93A4F90E4394E53A4E93E4F90E4394E53A4E93E4F93E4390E4394E53A4E93A4F93",
	mem_init0 => X"E4F90E4390E5394E53A4E93E4F93E4390E5394E53A4E93E4F90E5394E93A4F90E4394E93A4F90E5394E93E4394E93E4394E93E4394E93E4394F90E53A4F94E93E53A4394F90E93E53A4394F94E90E93E53E53A43A43A43A43A43A43A43A43A43A43A43E53E50E90E94F943A43E50E90F943A53E90F943E50E943A50E943A50F943E90FA50E943E943E50FA50FA50FA50FA50FA50FA503E943E950FA503E940FA503E950FA940FA940FA940FA940FE9503EA540FE9503FA9503FA9503FAA540FEA9500FEA9500FEA95403FEA95403FEAA55003FEAA55400FFEAA955000FFFAAA5554000FFFFAAAA555500000FFFFFEAAAAAA55555555400000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SIN.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM1:b2v_inst6|altsyncram:altsyncram_component|altsyncram_unr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \b2v_inst6|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst6|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y7_N0
\b2v_inst3|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000005555AAABFF00156ABFC015ABF015AFC05AFC16BC16BC16BC1AF06BC5BC5BC5BC5B06F1AC6B1AC6F1B16C6C5B1B1B1B1B1B1B1B1B6C6C61B186C71B6C7186DB2CB1C71C71CB2DB61872CB61CB61CB61D8721C8721D8762DD8B722DD8877221DD88877762222DDDDDDD888888888889DDDDDDD22223777888DDE2277489DE23748DD23789D2378DE2789E278DE349D278D278D278D249E34D279E38D34D24924924924924934D38E79E4938E7924E3924E3934E493924E493934E4E793939E4E4E4E4939393939393939393939393939393939394E4E4E4E53939390E4E4E539390E4E4F9393E4E4F9390E4E5393A4E439394E4F9390E4E9390E4E93",
	mem_init2 => X"90E4E9390E4E9393E4E5393A4E439394E4E9393E4E4F9393E4E4E939394E4E4E93939394E4E4E4E5393939393939393939393939393939393924E4E4E4D393934E4E793924E493924E7938E4938E4934E3924D34E39E79249249249249249E79E38D349E78D249E349E349E349D278DE348D2348DE3789D23789DE27788DD2277488DDE22377788889DDDDDDD222222222221DDDDDDC88887776221DD88B7621DC8B721DC8761D8B62D8B61D872D872D872CB61871CB2DB6DB6DB2CB1C61B6C71B6C61B186C6C71B1B1B1B1B1B1B1B16C6C5B1BC6C1B06C1BC6B16F16F16F16F06BC1AF05AF05AF05AFC16AFC15ABF015AAFF0055AABFF00015556AAAAAAAAAB",
	mem_init1 => X"AAAAAAAAAA55550003FFAA95403FEA9503FA950FEA50FE943E943E943E90FA43E53E53E53E53A4F90E4390E4F9394E4E5393939393939393934E4E493924E7934E7924D38E39E79E79E38D349278E349E349E349D2789E2789D2748DD23788DD2277889DD22277748888DDDDDDD222222222221DDDDDDD8888B777222DDC8877621DC8B762DD8B721D8B72DC8721C872DCB61D872D872D872D861CB6D871CB2DB6D861861861861861B6DB2C71C61B2C7186CB186CB1B6C61B186C61B1B6C6C71B1B1C6C6C6C61B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B16C6C6C6C5B1B1B1AC6C6C5B1B1AC6C6F1B1BC6C6F1B1AC6C5B1B06C6B1B16C6F1B1AC6C1B1AC6C1B",
	mem_init0 => X"1AC6C1B1AC6C1B1BC6C5B1B06C6B1B16C6C1B1BC6C6F1B1BC6C6C1B1B16C6C6C1B1B1B16C6C6C6C5B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B186C6C6C6DB1B1B6C6C71B186C61B186C71B2C61B2C61B6CB186DB6CB1C71861861861861861C71CB2DB61C72D861CB61CB61CB61D872DCB62D8B62DCB721D8B721DC87722DD8877622DDC88B77722221DDDDDDD888888888889DDDDDDE22227774889DD2237489DE23789DE2749D2348D2349D278D278D278E349279E38D34D34D38E39E4934E7934E493924E4E7939393939393939394E4E5393E4E93A4E93E4394F94F94F94FA43E90FA50FA50FA50FE940FE9503FA9500FFAA55003FFAAA955540000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SIN.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM1:b2v_inst3|altsyncram:altsyncram_component|altsyncram_unr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y10_N0
\b2v_inst6|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000005555AAABFF00156ABFC015ABF015AFC05AFC16BC16BC16BC1AF06BC5BC5BC5BC5B06F1AC6B1AC6F1B16C6C5B1B1B1B1B1B1B1B1B6C6C61B186C71B6C7186DB2CB1C71C71CB2DB61872CB61CB61CB61D8721C8721D8762DD8B722DD8877221DD88877762222DDDDDDD888888888889DDDDDDD22223777888DDE2277489DE23748DD23789D2378DE2789E278DE349D278D278D278D249E34D279E38D34D24924924924924934D38E79E4938E7924E3924E3934E493924E493934E4E793939E4E4E4E4939393939393939393939393939393939394E4E4E4E53939390E4E4E539390E4E4F9393E4E4F9390E4E5393A4E439394E4F9390E4E9390E4E93",
	mem_init2 => X"90E4E9390E4E9393E4E5393A4E439394E4E9393E4E4F9393E4E4E939394E4E4E93939394E4E4E4E5393939393939393939393939393939393924E4E4E4D393934E4E793924E493924E7938E4938E4934E3924D34E39E79249249249249249E79E38D349E78D249E349E349E349D278DE348D2348DE3789D23789DE27788DD2277488DDE22377788889DDDDDDD222222222221DDDDDDC88887776221DD88B7621DC8B721DC8761D8B62D8B61D872D872D872CB61871CB2DB6DB6DB2CB1C61B6C71B6C61B186C6C71B1B1B1B1B1B1B1B16C6C5B1BC6C1B06C1BC6B16F16F16F16F06BC1AF05AF05AF05AFC16AFC15ABF015AAFF0055AABFF00015556AAAAAAAAAB",
	mem_init1 => X"AAAAAAAAAA55550003FFAA95403FEA9503FA950FEA50FE943E943E943E90FA43E53E53E53E53A4F90E4390E4F9394E4E5393939393939393934E4E493924E7934E7924D38E39E79E79E38D349278E349E349E349D2789E2789D2748DD23788DD2277889DD22277748888DDDDDDD222222222221DDDDDDD8888B777222DDC8877621DC8B762DD8B721D8B72DC8721C872DCB61D872D872D872D861CB6D871CB2DB6D861861861861861B6DB2C71C61B2C7186CB186CB1B6C61B186C61B1B6C6C71B1B1C6C6C6C61B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B16C6C6C6C5B1B1B1AC6C6C5B1B1AC6C6F1B1BC6C6F1B1AC6C5B1B06C6B1B16C6F1B1AC6C1B1AC6C1B",
	mem_init0 => X"1AC6C1B1AC6C1B1BC6C5B1B06C6B1B16C6C1B1BC6C6F1B1BC6C6C1B1B16C6C6C1B1B1B16C6C6C6C5B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B186C6C6C6DB1B1B6C6C71B186C61B186C71B2C61B2C61B6CB186DB6CB1C71861861861861861C71CB2DB61C72D861CB61CB61CB61D872DCB62D8B62DCB721D8B721DC87722DD8877622DDC88B77722221DDDDDDD888888888889DDDDDDE22227774889DD2237489DE23789DE2749D2348D2349D278D278D278E349279E38D34D34D38E39E4934E7934E493924E4E7939393939393939394E4E5393E4E93A4E93E4394F94F94F94FA43E90FA50FA50FA50FE940FE9503FA9500FFAA55003FFAAA955540000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SIN.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM1:b2v_inst6|altsyncram:altsyncram_component|altsyncram_unr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \b2v_inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \b2v_inst6|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y7_N0
\b2v_inst|parallel_add_component|auto_generated|add1_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[0]~0_combout\ = (\b2v_inst3|altsyncram_component|auto_generated|q_a\(0) & (\b2v_inst6|altsyncram_component|auto_generated|q_a\(0) $ (VCC))) # 
-- (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(0) & (\b2v_inst6|altsyncram_component|auto_generated|q_a\(0) & VCC))
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[0]~1\ = CARRY((\b2v_inst3|altsyncram_component|auto_generated|q_a\(0) & \b2v_inst6|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|altsyncram_component|auto_generated|q_a\(0),
	datab => \b2v_inst6|altsyncram_component|auto_generated|q_a\(0),
	datad => VCC,
	combout => \b2v_inst|parallel_add_component|auto_generated|add1_result[0]~0_combout\,
	cout => \b2v_inst|parallel_add_component|auto_generated|add1_result[0]~1\);

-- Location: LCCOMB_X16_Y7_N2
\b2v_inst|parallel_add_component|auto_generated|add1_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[1]~2_combout\ = (\b2v_inst3|altsyncram_component|auto_generated|q_a\(1) & ((\b2v_inst6|altsyncram_component|auto_generated|q_a\(1) & 
-- (\b2v_inst|parallel_add_component|auto_generated|add1_result[0]~1\ & VCC)) # (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(1) & (!\b2v_inst|parallel_add_component|auto_generated|add1_result[0]~1\)))) # 
-- (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(1) & ((\b2v_inst6|altsyncram_component|auto_generated|q_a\(1) & (!\b2v_inst|parallel_add_component|auto_generated|add1_result[0]~1\)) # (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(1) & 
-- ((\b2v_inst|parallel_add_component|auto_generated|add1_result[0]~1\) # (GND)))))
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[1]~3\ = CARRY((\b2v_inst3|altsyncram_component|auto_generated|q_a\(1) & (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(1) & 
-- !\b2v_inst|parallel_add_component|auto_generated|add1_result[0]~1\)) # (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(1) & ((!\b2v_inst|parallel_add_component|auto_generated|add1_result[0]~1\) # 
-- (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|altsyncram_component|auto_generated|q_a\(1),
	datab => \b2v_inst6|altsyncram_component|auto_generated|q_a\(1),
	datad => VCC,
	cin => \b2v_inst|parallel_add_component|auto_generated|add1_result[0]~1\,
	combout => \b2v_inst|parallel_add_component|auto_generated|add1_result[1]~2_combout\,
	cout => \b2v_inst|parallel_add_component|auto_generated|add1_result[1]~3\);

-- Location: LCCOMB_X16_Y7_N4
\b2v_inst|parallel_add_component|auto_generated|add1_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[2]~4_combout\ = ((\b2v_inst3|altsyncram_component|auto_generated|q_a\(2) $ (\b2v_inst6|altsyncram_component|auto_generated|q_a\(2) $ 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[1]~3\)))) # (GND)
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[2]~5\ = CARRY((\b2v_inst3|altsyncram_component|auto_generated|q_a\(2) & ((\b2v_inst6|altsyncram_component|auto_generated|q_a\(2)) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[1]~3\))) # (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(2) & (\b2v_inst6|altsyncram_component|auto_generated|q_a\(2) & 
-- !\b2v_inst|parallel_add_component|auto_generated|add1_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|altsyncram_component|auto_generated|q_a\(2),
	datab => \b2v_inst6|altsyncram_component|auto_generated|q_a\(2),
	datad => VCC,
	cin => \b2v_inst|parallel_add_component|auto_generated|add1_result[1]~3\,
	combout => \b2v_inst|parallel_add_component|auto_generated|add1_result[2]~4_combout\,
	cout => \b2v_inst|parallel_add_component|auto_generated|add1_result[2]~5\);

-- Location: LCCOMB_X16_Y7_N6
\b2v_inst|parallel_add_component|auto_generated|add1_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[3]~6_combout\ = (\b2v_inst3|altsyncram_component|auto_generated|q_a\(3) & ((\b2v_inst6|altsyncram_component|auto_generated|q_a\(3) & 
-- (\b2v_inst|parallel_add_component|auto_generated|add1_result[2]~5\ & VCC)) # (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(3) & (!\b2v_inst|parallel_add_component|auto_generated|add1_result[2]~5\)))) # 
-- (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(3) & ((\b2v_inst6|altsyncram_component|auto_generated|q_a\(3) & (!\b2v_inst|parallel_add_component|auto_generated|add1_result[2]~5\)) # (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(3) & 
-- ((\b2v_inst|parallel_add_component|auto_generated|add1_result[2]~5\) # (GND)))))
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[3]~7\ = CARRY((\b2v_inst3|altsyncram_component|auto_generated|q_a\(3) & (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(3) & 
-- !\b2v_inst|parallel_add_component|auto_generated|add1_result[2]~5\)) # (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(3) & ((!\b2v_inst|parallel_add_component|auto_generated|add1_result[2]~5\) # 
-- (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|altsyncram_component|auto_generated|q_a\(3),
	datab => \b2v_inst6|altsyncram_component|auto_generated|q_a\(3),
	datad => VCC,
	cin => \b2v_inst|parallel_add_component|auto_generated|add1_result[2]~5\,
	combout => \b2v_inst|parallel_add_component|auto_generated|add1_result[3]~6_combout\,
	cout => \b2v_inst|parallel_add_component|auto_generated|add1_result[3]~7\);

-- Location: LCCOMB_X16_Y7_N8
\b2v_inst|parallel_add_component|auto_generated|add1_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[4]~8_combout\ = ((\b2v_inst6|altsyncram_component|auto_generated|q_a\(4) $ (\b2v_inst3|altsyncram_component|auto_generated|q_a\(4) $ 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[3]~7\)))) # (GND)
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[4]~9\ = CARRY((\b2v_inst6|altsyncram_component|auto_generated|q_a\(4) & ((\b2v_inst3|altsyncram_component|auto_generated|q_a\(4)) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[3]~7\))) # (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(4) & (\b2v_inst3|altsyncram_component|auto_generated|q_a\(4) & 
-- !\b2v_inst|parallel_add_component|auto_generated|add1_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|altsyncram_component|auto_generated|q_a\(4),
	datab => \b2v_inst3|altsyncram_component|auto_generated|q_a\(4),
	datad => VCC,
	cin => \b2v_inst|parallel_add_component|auto_generated|add1_result[3]~7\,
	combout => \b2v_inst|parallel_add_component|auto_generated|add1_result[4]~8_combout\,
	cout => \b2v_inst|parallel_add_component|auto_generated|add1_result[4]~9\);

-- Location: LCCOMB_X16_Y7_N10
\b2v_inst|parallel_add_component|auto_generated|add1_result[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[5]~10_combout\ = (\b2v_inst3|altsyncram_component|auto_generated|q_a\(5) & ((\b2v_inst6|altsyncram_component|auto_generated|q_a\(5) & 
-- (\b2v_inst|parallel_add_component|auto_generated|add1_result[4]~9\ & VCC)) # (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(5) & (!\b2v_inst|parallel_add_component|auto_generated|add1_result[4]~9\)))) # 
-- (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(5) & ((\b2v_inst6|altsyncram_component|auto_generated|q_a\(5) & (!\b2v_inst|parallel_add_component|auto_generated|add1_result[4]~9\)) # (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(5) & 
-- ((\b2v_inst|parallel_add_component|auto_generated|add1_result[4]~9\) # (GND)))))
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[5]~11\ = CARRY((\b2v_inst3|altsyncram_component|auto_generated|q_a\(5) & (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(5) & 
-- !\b2v_inst|parallel_add_component|auto_generated|add1_result[4]~9\)) # (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(5) & ((!\b2v_inst|parallel_add_component|auto_generated|add1_result[4]~9\) # 
-- (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|altsyncram_component|auto_generated|q_a\(5),
	datab => \b2v_inst6|altsyncram_component|auto_generated|q_a\(5),
	datad => VCC,
	cin => \b2v_inst|parallel_add_component|auto_generated|add1_result[4]~9\,
	combout => \b2v_inst|parallel_add_component|auto_generated|add1_result[5]~10_combout\,
	cout => \b2v_inst|parallel_add_component|auto_generated|add1_result[5]~11\);

-- Location: LCCOMB_X16_Y7_N12
\b2v_inst|parallel_add_component|auto_generated|add1_result[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[6]~12_combout\ = ((\b2v_inst3|altsyncram_component|auto_generated|q_a\(6) $ (\b2v_inst6|altsyncram_component|auto_generated|q_a\(6) $ 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[5]~11\)))) # (GND)
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[6]~13\ = CARRY((\b2v_inst3|altsyncram_component|auto_generated|q_a\(6) & ((\b2v_inst6|altsyncram_component|auto_generated|q_a\(6)) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[5]~11\))) # (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(6) & (\b2v_inst6|altsyncram_component|auto_generated|q_a\(6) & 
-- !\b2v_inst|parallel_add_component|auto_generated|add1_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|altsyncram_component|auto_generated|q_a\(6),
	datab => \b2v_inst6|altsyncram_component|auto_generated|q_a\(6),
	datad => VCC,
	cin => \b2v_inst|parallel_add_component|auto_generated|add1_result[5]~11\,
	combout => \b2v_inst|parallel_add_component|auto_generated|add1_result[6]~12_combout\,
	cout => \b2v_inst|parallel_add_component|auto_generated|add1_result[6]~13\);

-- Location: LCCOMB_X16_Y7_N14
\b2v_inst|parallel_add_component|auto_generated|add1_result[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[7]~14_combout\ = (\b2v_inst6|altsyncram_component|auto_generated|q_a\(7) & ((\b2v_inst3|altsyncram_component|auto_generated|q_a\(7) & 
-- (\b2v_inst|parallel_add_component|auto_generated|add1_result[6]~13\ & VCC)) # (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(7) & (!\b2v_inst|parallel_add_component|auto_generated|add1_result[6]~13\)))) # 
-- (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(7) & ((\b2v_inst3|altsyncram_component|auto_generated|q_a\(7) & (!\b2v_inst|parallel_add_component|auto_generated|add1_result[6]~13\)) # (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(7) & 
-- ((\b2v_inst|parallel_add_component|auto_generated|add1_result[6]~13\) # (GND)))))
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[7]~15\ = CARRY((\b2v_inst6|altsyncram_component|auto_generated|q_a\(7) & (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(7) & 
-- !\b2v_inst|parallel_add_component|auto_generated|add1_result[6]~13\)) # (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(7) & ((!\b2v_inst|parallel_add_component|auto_generated|add1_result[6]~13\) # 
-- (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|altsyncram_component|auto_generated|q_a\(7),
	datab => \b2v_inst3|altsyncram_component|auto_generated|q_a\(7),
	datad => VCC,
	cin => \b2v_inst|parallel_add_component|auto_generated|add1_result[6]~13\,
	combout => \b2v_inst|parallel_add_component|auto_generated|add1_result[7]~14_combout\,
	cout => \b2v_inst|parallel_add_component|auto_generated|add1_result[7]~15\);

-- Location: LCCOMB_X16_Y7_N16
\b2v_inst|parallel_add_component|auto_generated|add1_result[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[8]~16_combout\ = ((\b2v_inst3|altsyncram_component|auto_generated|q_a\(8) $ (\b2v_inst6|altsyncram_component|auto_generated|q_a\(8) $ 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[7]~15\)))) # (GND)
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[8]~17\ = CARRY((\b2v_inst3|altsyncram_component|auto_generated|q_a\(8) & ((\b2v_inst6|altsyncram_component|auto_generated|q_a\(8)) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[7]~15\))) # (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(8) & (\b2v_inst6|altsyncram_component|auto_generated|q_a\(8) & 
-- !\b2v_inst|parallel_add_component|auto_generated|add1_result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|altsyncram_component|auto_generated|q_a\(8),
	datab => \b2v_inst6|altsyncram_component|auto_generated|q_a\(8),
	datad => VCC,
	cin => \b2v_inst|parallel_add_component|auto_generated|add1_result[7]~15\,
	combout => \b2v_inst|parallel_add_component|auto_generated|add1_result[8]~16_combout\,
	cout => \b2v_inst|parallel_add_component|auto_generated|add1_result[8]~17\);

-- Location: LCCOMB_X16_Y7_N18
\b2v_inst|parallel_add_component|auto_generated|add1_result[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[9]~18_combout\ = (\b2v_inst3|altsyncram_component|auto_generated|q_a\(9) & ((\b2v_inst6|altsyncram_component|auto_generated|q_a\(9) & 
-- (\b2v_inst|parallel_add_component|auto_generated|add1_result[8]~17\ & VCC)) # (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(9) & (!\b2v_inst|parallel_add_component|auto_generated|add1_result[8]~17\)))) # 
-- (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(9) & ((\b2v_inst6|altsyncram_component|auto_generated|q_a\(9) & (!\b2v_inst|parallel_add_component|auto_generated|add1_result[8]~17\)) # (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(9) & 
-- ((\b2v_inst|parallel_add_component|auto_generated|add1_result[8]~17\) # (GND)))))
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[9]~19\ = CARRY((\b2v_inst3|altsyncram_component|auto_generated|q_a\(9) & (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(9) & 
-- !\b2v_inst|parallel_add_component|auto_generated|add1_result[8]~17\)) # (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(9) & ((!\b2v_inst|parallel_add_component|auto_generated|add1_result[8]~17\) # 
-- (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|altsyncram_component|auto_generated|q_a\(9),
	datab => \b2v_inst6|altsyncram_component|auto_generated|q_a\(9),
	datad => VCC,
	cin => \b2v_inst|parallel_add_component|auto_generated|add1_result[8]~17\,
	combout => \b2v_inst|parallel_add_component|auto_generated|add1_result[9]~18_combout\,
	cout => \b2v_inst|parallel_add_component|auto_generated|add1_result[9]~19\);

-- Location: LCCOMB_X16_Y7_N20
\b2v_inst|parallel_add_component|auto_generated|add1_result[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[10]~20_combout\ = ((\b2v_inst6|altsyncram_component|auto_generated|q_a\(10) $ (\b2v_inst3|altsyncram_component|auto_generated|q_a\(10) $ 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[9]~19\)))) # (GND)
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[10]~21\ = CARRY((\b2v_inst6|altsyncram_component|auto_generated|q_a\(10) & ((\b2v_inst3|altsyncram_component|auto_generated|q_a\(10)) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[9]~19\))) # (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(10) & (\b2v_inst3|altsyncram_component|auto_generated|q_a\(10) & 
-- !\b2v_inst|parallel_add_component|auto_generated|add1_result[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|altsyncram_component|auto_generated|q_a\(10),
	datab => \b2v_inst3|altsyncram_component|auto_generated|q_a\(10),
	datad => VCC,
	cin => \b2v_inst|parallel_add_component|auto_generated|add1_result[9]~19\,
	combout => \b2v_inst|parallel_add_component|auto_generated|add1_result[10]~20_combout\,
	cout => \b2v_inst|parallel_add_component|auto_generated|add1_result[10]~21\);

-- Location: LCCOMB_X16_Y7_N22
\b2v_inst|parallel_add_component|auto_generated|add1_result[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[11]~22_combout\ = (\b2v_inst6|altsyncram_component|auto_generated|q_a\(11) & ((\b2v_inst3|altsyncram_component|auto_generated|q_a\(11) & 
-- (\b2v_inst|parallel_add_component|auto_generated|add1_result[10]~21\ & VCC)) # (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(11) & (!\b2v_inst|parallel_add_component|auto_generated|add1_result[10]~21\)))) # 
-- (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(11) & ((\b2v_inst3|altsyncram_component|auto_generated|q_a\(11) & (!\b2v_inst|parallel_add_component|auto_generated|add1_result[10]~21\)) # (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(11) & 
-- ((\b2v_inst|parallel_add_component|auto_generated|add1_result[10]~21\) # (GND)))))
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[11]~23\ = CARRY((\b2v_inst6|altsyncram_component|auto_generated|q_a\(11) & (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(11) & 
-- !\b2v_inst|parallel_add_component|auto_generated|add1_result[10]~21\)) # (!\b2v_inst6|altsyncram_component|auto_generated|q_a\(11) & ((!\b2v_inst|parallel_add_component|auto_generated|add1_result[10]~21\) # 
-- (!\b2v_inst3|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|altsyncram_component|auto_generated|q_a\(11),
	datab => \b2v_inst3|altsyncram_component|auto_generated|q_a\(11),
	datad => VCC,
	cin => \b2v_inst|parallel_add_component|auto_generated|add1_result[10]~21\,
	combout => \b2v_inst|parallel_add_component|auto_generated|add1_result[11]~22_combout\,
	cout => \b2v_inst|parallel_add_component|auto_generated|add1_result[11]~23\);

-- Location: LCCOMB_X16_Y7_N24
\b2v_inst|parallel_add_component|auto_generated|add1_result[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|parallel_add_component|auto_generated|add1_result[12]~24_combout\ = !\b2v_inst|parallel_add_component|auto_generated|add1_result[11]~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst|parallel_add_component|auto_generated|add1_result[11]~23\,
	combout => \b2v_inst|parallel_add_component|auto_generated|add1_result[12]~24_combout\);

-- Location: LCCOMB_X17_Y7_N2
\b2v_inst1|SigmaLatchQ[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|SigmaLatchQ[0]~15_combout\ = (\b2v_inst|parallel_add_component|auto_generated|add1_result[0]~0_combout\ & (\b2v_inst1|SigmaLatchQ\(0) $ (VCC))) # (!\b2v_inst|parallel_add_component|auto_generated|add1_result[0]~0_combout\ & 
-- (\b2v_inst1|SigmaLatchQ\(0) & VCC))
-- \b2v_inst1|SigmaLatchQ[0]~16\ = CARRY((\b2v_inst|parallel_add_component|auto_generated|add1_result[0]~0_combout\ & \b2v_inst1|SigmaLatchQ\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|parallel_add_component|auto_generated|add1_result[0]~0_combout\,
	datab => \b2v_inst1|SigmaLatchQ\(0),
	datad => VCC,
	combout => \b2v_inst1|SigmaLatchQ[0]~15_combout\,
	cout => \b2v_inst1|SigmaLatchQ[0]~16\);

-- Location: FF_X17_Y7_N3
\b2v_inst1|SigmaLatchQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|SigmaLatchQ[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|SigmaLatchQ\(0));

-- Location: LCCOMB_X17_Y7_N4
\b2v_inst1|SigmaLatchQ[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|SigmaLatchQ[1]~17_combout\ = (\b2v_inst|parallel_add_component|auto_generated|add1_result[1]~2_combout\ & ((\b2v_inst1|SigmaLatchQ\(1) & (\b2v_inst1|SigmaLatchQ[0]~16\ & VCC)) # (!\b2v_inst1|SigmaLatchQ\(1) & (!\b2v_inst1|SigmaLatchQ[0]~16\)))) 
-- # (!\b2v_inst|parallel_add_component|auto_generated|add1_result[1]~2_combout\ & ((\b2v_inst1|SigmaLatchQ\(1) & (!\b2v_inst1|SigmaLatchQ[0]~16\)) # (!\b2v_inst1|SigmaLatchQ\(1) & ((\b2v_inst1|SigmaLatchQ[0]~16\) # (GND)))))
-- \b2v_inst1|SigmaLatchQ[1]~18\ = CARRY((\b2v_inst|parallel_add_component|auto_generated|add1_result[1]~2_combout\ & (!\b2v_inst1|SigmaLatchQ\(1) & !\b2v_inst1|SigmaLatchQ[0]~16\)) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[1]~2_combout\ & ((!\b2v_inst1|SigmaLatchQ[0]~16\) # (!\b2v_inst1|SigmaLatchQ\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|parallel_add_component|auto_generated|add1_result[1]~2_combout\,
	datab => \b2v_inst1|SigmaLatchQ\(1),
	datad => VCC,
	cin => \b2v_inst1|SigmaLatchQ[0]~16\,
	combout => \b2v_inst1|SigmaLatchQ[1]~17_combout\,
	cout => \b2v_inst1|SigmaLatchQ[1]~18\);

-- Location: FF_X17_Y7_N5
\b2v_inst1|SigmaLatchQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|SigmaLatchQ[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|SigmaLatchQ\(1));

-- Location: LCCOMB_X17_Y7_N6
\b2v_inst1|SigmaLatchQ[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|SigmaLatchQ[2]~19_combout\ = ((\b2v_inst1|SigmaLatchQ\(2) $ (\b2v_inst|parallel_add_component|auto_generated|add1_result[2]~4_combout\ $ (!\b2v_inst1|SigmaLatchQ[1]~18\)))) # (GND)
-- \b2v_inst1|SigmaLatchQ[2]~20\ = CARRY((\b2v_inst1|SigmaLatchQ\(2) & ((\b2v_inst|parallel_add_component|auto_generated|add1_result[2]~4_combout\) # (!\b2v_inst1|SigmaLatchQ[1]~18\))) # (!\b2v_inst1|SigmaLatchQ\(2) & 
-- (\b2v_inst|parallel_add_component|auto_generated|add1_result[2]~4_combout\ & !\b2v_inst1|SigmaLatchQ[1]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|SigmaLatchQ\(2),
	datab => \b2v_inst|parallel_add_component|auto_generated|add1_result[2]~4_combout\,
	datad => VCC,
	cin => \b2v_inst1|SigmaLatchQ[1]~18\,
	combout => \b2v_inst1|SigmaLatchQ[2]~19_combout\,
	cout => \b2v_inst1|SigmaLatchQ[2]~20\);

-- Location: FF_X17_Y7_N7
\b2v_inst1|SigmaLatchQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|SigmaLatchQ[2]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|SigmaLatchQ\(2));

-- Location: LCCOMB_X17_Y7_N8
\b2v_inst1|SigmaLatchQ[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|SigmaLatchQ[3]~21_combout\ = (\b2v_inst1|SigmaLatchQ\(3) & ((\b2v_inst|parallel_add_component|auto_generated|add1_result[3]~6_combout\ & (\b2v_inst1|SigmaLatchQ[2]~20\ & VCC)) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[3]~6_combout\ & (!\b2v_inst1|SigmaLatchQ[2]~20\)))) # (!\b2v_inst1|SigmaLatchQ\(3) & ((\b2v_inst|parallel_add_component|auto_generated|add1_result[3]~6_combout\ & 
-- (!\b2v_inst1|SigmaLatchQ[2]~20\)) # (!\b2v_inst|parallel_add_component|auto_generated|add1_result[3]~6_combout\ & ((\b2v_inst1|SigmaLatchQ[2]~20\) # (GND)))))
-- \b2v_inst1|SigmaLatchQ[3]~22\ = CARRY((\b2v_inst1|SigmaLatchQ\(3) & (!\b2v_inst|parallel_add_component|auto_generated|add1_result[3]~6_combout\ & !\b2v_inst1|SigmaLatchQ[2]~20\)) # (!\b2v_inst1|SigmaLatchQ\(3) & ((!\b2v_inst1|SigmaLatchQ[2]~20\) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|SigmaLatchQ\(3),
	datab => \b2v_inst|parallel_add_component|auto_generated|add1_result[3]~6_combout\,
	datad => VCC,
	cin => \b2v_inst1|SigmaLatchQ[2]~20\,
	combout => \b2v_inst1|SigmaLatchQ[3]~21_combout\,
	cout => \b2v_inst1|SigmaLatchQ[3]~22\);

-- Location: FF_X17_Y7_N9
\b2v_inst1|SigmaLatchQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|SigmaLatchQ[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|SigmaLatchQ\(3));

-- Location: LCCOMB_X17_Y7_N10
\b2v_inst1|SigmaLatchQ[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|SigmaLatchQ[4]~23_combout\ = ((\b2v_inst|parallel_add_component|auto_generated|add1_result[4]~8_combout\ $ (\b2v_inst1|SigmaLatchQ\(4) $ (!\b2v_inst1|SigmaLatchQ[3]~22\)))) # (GND)
-- \b2v_inst1|SigmaLatchQ[4]~24\ = CARRY((\b2v_inst|parallel_add_component|auto_generated|add1_result[4]~8_combout\ & ((\b2v_inst1|SigmaLatchQ\(4)) # (!\b2v_inst1|SigmaLatchQ[3]~22\))) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[4]~8_combout\ & (\b2v_inst1|SigmaLatchQ\(4) & !\b2v_inst1|SigmaLatchQ[3]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|parallel_add_component|auto_generated|add1_result[4]~8_combout\,
	datab => \b2v_inst1|SigmaLatchQ\(4),
	datad => VCC,
	cin => \b2v_inst1|SigmaLatchQ[3]~22\,
	combout => \b2v_inst1|SigmaLatchQ[4]~23_combout\,
	cout => \b2v_inst1|SigmaLatchQ[4]~24\);

-- Location: FF_X17_Y7_N11
\b2v_inst1|SigmaLatchQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|SigmaLatchQ[4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|SigmaLatchQ\(4));

-- Location: LCCOMB_X17_Y7_N12
\b2v_inst1|SigmaLatchQ[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|SigmaLatchQ[5]~25_combout\ = (\b2v_inst|parallel_add_component|auto_generated|add1_result[5]~10_combout\ & ((\b2v_inst1|SigmaLatchQ\(5) & (\b2v_inst1|SigmaLatchQ[4]~24\ & VCC)) # (!\b2v_inst1|SigmaLatchQ\(5) & 
-- (!\b2v_inst1|SigmaLatchQ[4]~24\)))) # (!\b2v_inst|parallel_add_component|auto_generated|add1_result[5]~10_combout\ & ((\b2v_inst1|SigmaLatchQ\(5) & (!\b2v_inst1|SigmaLatchQ[4]~24\)) # (!\b2v_inst1|SigmaLatchQ\(5) & ((\b2v_inst1|SigmaLatchQ[4]~24\) # 
-- (GND)))))
-- \b2v_inst1|SigmaLatchQ[5]~26\ = CARRY((\b2v_inst|parallel_add_component|auto_generated|add1_result[5]~10_combout\ & (!\b2v_inst1|SigmaLatchQ\(5) & !\b2v_inst1|SigmaLatchQ[4]~24\)) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[5]~10_combout\ & ((!\b2v_inst1|SigmaLatchQ[4]~24\) # (!\b2v_inst1|SigmaLatchQ\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|parallel_add_component|auto_generated|add1_result[5]~10_combout\,
	datab => \b2v_inst1|SigmaLatchQ\(5),
	datad => VCC,
	cin => \b2v_inst1|SigmaLatchQ[4]~24\,
	combout => \b2v_inst1|SigmaLatchQ[5]~25_combout\,
	cout => \b2v_inst1|SigmaLatchQ[5]~26\);

-- Location: FF_X17_Y7_N13
\b2v_inst1|SigmaLatchQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|SigmaLatchQ[5]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|SigmaLatchQ\(5));

-- Location: LCCOMB_X17_Y7_N14
\b2v_inst1|SigmaLatchQ[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|SigmaLatchQ[6]~27_combout\ = ((\b2v_inst|parallel_add_component|auto_generated|add1_result[6]~12_combout\ $ (\b2v_inst1|SigmaLatchQ\(6) $ (!\b2v_inst1|SigmaLatchQ[5]~26\)))) # (GND)
-- \b2v_inst1|SigmaLatchQ[6]~28\ = CARRY((\b2v_inst|parallel_add_component|auto_generated|add1_result[6]~12_combout\ & ((\b2v_inst1|SigmaLatchQ\(6)) # (!\b2v_inst1|SigmaLatchQ[5]~26\))) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[6]~12_combout\ & (\b2v_inst1|SigmaLatchQ\(6) & !\b2v_inst1|SigmaLatchQ[5]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|parallel_add_component|auto_generated|add1_result[6]~12_combout\,
	datab => \b2v_inst1|SigmaLatchQ\(6),
	datad => VCC,
	cin => \b2v_inst1|SigmaLatchQ[5]~26\,
	combout => \b2v_inst1|SigmaLatchQ[6]~27_combout\,
	cout => \b2v_inst1|SigmaLatchQ[6]~28\);

-- Location: FF_X17_Y7_N15
\b2v_inst1|SigmaLatchQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|SigmaLatchQ[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|SigmaLatchQ\(6));

-- Location: LCCOMB_X17_Y7_N16
\b2v_inst1|SigmaLatchQ[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|SigmaLatchQ[7]~29_combout\ = (\b2v_inst|parallel_add_component|auto_generated|add1_result[7]~14_combout\ & ((\b2v_inst1|SigmaLatchQ\(7) & (\b2v_inst1|SigmaLatchQ[6]~28\ & VCC)) # (!\b2v_inst1|SigmaLatchQ\(7) & 
-- (!\b2v_inst1|SigmaLatchQ[6]~28\)))) # (!\b2v_inst|parallel_add_component|auto_generated|add1_result[7]~14_combout\ & ((\b2v_inst1|SigmaLatchQ\(7) & (!\b2v_inst1|SigmaLatchQ[6]~28\)) # (!\b2v_inst1|SigmaLatchQ\(7) & ((\b2v_inst1|SigmaLatchQ[6]~28\) # 
-- (GND)))))
-- \b2v_inst1|SigmaLatchQ[7]~30\ = CARRY((\b2v_inst|parallel_add_component|auto_generated|add1_result[7]~14_combout\ & (!\b2v_inst1|SigmaLatchQ\(7) & !\b2v_inst1|SigmaLatchQ[6]~28\)) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[7]~14_combout\ & ((!\b2v_inst1|SigmaLatchQ[6]~28\) # (!\b2v_inst1|SigmaLatchQ\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|parallel_add_component|auto_generated|add1_result[7]~14_combout\,
	datab => \b2v_inst1|SigmaLatchQ\(7),
	datad => VCC,
	cin => \b2v_inst1|SigmaLatchQ[6]~28\,
	combout => \b2v_inst1|SigmaLatchQ[7]~29_combout\,
	cout => \b2v_inst1|SigmaLatchQ[7]~30\);

-- Location: FF_X17_Y7_N17
\b2v_inst1|SigmaLatchQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|SigmaLatchQ[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|SigmaLatchQ\(7));

-- Location: LCCOMB_X17_Y7_N18
\b2v_inst1|SigmaLatchQ[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|SigmaLatchQ[8]~31_combout\ = ((\b2v_inst|parallel_add_component|auto_generated|add1_result[8]~16_combout\ $ (\b2v_inst1|SigmaLatchQ\(8) $ (!\b2v_inst1|SigmaLatchQ[7]~30\)))) # (GND)
-- \b2v_inst1|SigmaLatchQ[8]~32\ = CARRY((\b2v_inst|parallel_add_component|auto_generated|add1_result[8]~16_combout\ & ((\b2v_inst1|SigmaLatchQ\(8)) # (!\b2v_inst1|SigmaLatchQ[7]~30\))) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[8]~16_combout\ & (\b2v_inst1|SigmaLatchQ\(8) & !\b2v_inst1|SigmaLatchQ[7]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|parallel_add_component|auto_generated|add1_result[8]~16_combout\,
	datab => \b2v_inst1|SigmaLatchQ\(8),
	datad => VCC,
	cin => \b2v_inst1|SigmaLatchQ[7]~30\,
	combout => \b2v_inst1|SigmaLatchQ[8]~31_combout\,
	cout => \b2v_inst1|SigmaLatchQ[8]~32\);

-- Location: FF_X17_Y7_N19
\b2v_inst1|SigmaLatchQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|SigmaLatchQ[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|SigmaLatchQ\(8));

-- Location: LCCOMB_X17_Y7_N20
\b2v_inst1|SigmaLatchQ[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|SigmaLatchQ[9]~33_combout\ = (\b2v_inst1|SigmaLatchQ\(9) & ((\b2v_inst|parallel_add_component|auto_generated|add1_result[9]~18_combout\ & (\b2v_inst1|SigmaLatchQ[8]~32\ & VCC)) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[9]~18_combout\ & (!\b2v_inst1|SigmaLatchQ[8]~32\)))) # (!\b2v_inst1|SigmaLatchQ\(9) & ((\b2v_inst|parallel_add_component|auto_generated|add1_result[9]~18_combout\ & 
-- (!\b2v_inst1|SigmaLatchQ[8]~32\)) # (!\b2v_inst|parallel_add_component|auto_generated|add1_result[9]~18_combout\ & ((\b2v_inst1|SigmaLatchQ[8]~32\) # (GND)))))
-- \b2v_inst1|SigmaLatchQ[9]~34\ = CARRY((\b2v_inst1|SigmaLatchQ\(9) & (!\b2v_inst|parallel_add_component|auto_generated|add1_result[9]~18_combout\ & !\b2v_inst1|SigmaLatchQ[8]~32\)) # (!\b2v_inst1|SigmaLatchQ\(9) & ((!\b2v_inst1|SigmaLatchQ[8]~32\) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|SigmaLatchQ\(9),
	datab => \b2v_inst|parallel_add_component|auto_generated|add1_result[9]~18_combout\,
	datad => VCC,
	cin => \b2v_inst1|SigmaLatchQ[8]~32\,
	combout => \b2v_inst1|SigmaLatchQ[9]~33_combout\,
	cout => \b2v_inst1|SigmaLatchQ[9]~34\);

-- Location: FF_X17_Y7_N21
\b2v_inst1|SigmaLatchQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|SigmaLatchQ[9]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|SigmaLatchQ\(9));

-- Location: LCCOMB_X17_Y7_N22
\b2v_inst1|SigmaLatchQ[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|SigmaLatchQ[10]~35_combout\ = ((\b2v_inst1|SigmaLatchQ\(10) $ (\b2v_inst|parallel_add_component|auto_generated|add1_result[10]~20_combout\ $ (!\b2v_inst1|SigmaLatchQ[9]~34\)))) # (GND)
-- \b2v_inst1|SigmaLatchQ[10]~36\ = CARRY((\b2v_inst1|SigmaLatchQ\(10) & ((\b2v_inst|parallel_add_component|auto_generated|add1_result[10]~20_combout\) # (!\b2v_inst1|SigmaLatchQ[9]~34\))) # (!\b2v_inst1|SigmaLatchQ\(10) & 
-- (\b2v_inst|parallel_add_component|auto_generated|add1_result[10]~20_combout\ & !\b2v_inst1|SigmaLatchQ[9]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|SigmaLatchQ\(10),
	datab => \b2v_inst|parallel_add_component|auto_generated|add1_result[10]~20_combout\,
	datad => VCC,
	cin => \b2v_inst1|SigmaLatchQ[9]~34\,
	combout => \b2v_inst1|SigmaLatchQ[10]~35_combout\,
	cout => \b2v_inst1|SigmaLatchQ[10]~36\);

-- Location: FF_X17_Y7_N23
\b2v_inst1|SigmaLatchQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|SigmaLatchQ[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|SigmaLatchQ\(10));

-- Location: LCCOMB_X17_Y7_N24
\b2v_inst1|SigmaLatchQ[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|SigmaLatchQ[11]~37_combout\ = (\b2v_inst1|SigmaLatchQ\(11) & ((\b2v_inst|parallel_add_component|auto_generated|add1_result[11]~22_combout\ & (\b2v_inst1|SigmaLatchQ[10]~36\ & VCC)) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[11]~22_combout\ & (!\b2v_inst1|SigmaLatchQ[10]~36\)))) # (!\b2v_inst1|SigmaLatchQ\(11) & ((\b2v_inst|parallel_add_component|auto_generated|add1_result[11]~22_combout\ & 
-- (!\b2v_inst1|SigmaLatchQ[10]~36\)) # (!\b2v_inst|parallel_add_component|auto_generated|add1_result[11]~22_combout\ & ((\b2v_inst1|SigmaLatchQ[10]~36\) # (GND)))))
-- \b2v_inst1|SigmaLatchQ[11]~38\ = CARRY((\b2v_inst1|SigmaLatchQ\(11) & (!\b2v_inst|parallel_add_component|auto_generated|add1_result[11]~22_combout\ & !\b2v_inst1|SigmaLatchQ[10]~36\)) # (!\b2v_inst1|SigmaLatchQ\(11) & ((!\b2v_inst1|SigmaLatchQ[10]~36\) # 
-- (!\b2v_inst|parallel_add_component|auto_generated|add1_result[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|SigmaLatchQ\(11),
	datab => \b2v_inst|parallel_add_component|auto_generated|add1_result[11]~22_combout\,
	datad => VCC,
	cin => \b2v_inst1|SigmaLatchQ[10]~36\,
	combout => \b2v_inst1|SigmaLatchQ[11]~37_combout\,
	cout => \b2v_inst1|SigmaLatchQ[11]~38\);

-- Location: FF_X17_Y7_N25
\b2v_inst1|SigmaLatchQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|SigmaLatchQ[11]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|SigmaLatchQ\(11));

-- Location: LCCOMB_X17_Y7_N26
\b2v_inst1|SigmaLatchQ[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|SigmaLatchQ[12]~39_combout\ = ((\b2v_inst1|SigmaLatchQ\(12) $ (\b2v_inst|parallel_add_component|auto_generated|add1_result[12]~24_combout\ $ (!\b2v_inst1|SigmaLatchQ[11]~38\)))) # (GND)
-- \b2v_inst1|SigmaLatchQ[12]~40\ = CARRY((\b2v_inst1|SigmaLatchQ\(12) & ((\b2v_inst|parallel_add_component|auto_generated|add1_result[12]~24_combout\) # (!\b2v_inst1|SigmaLatchQ[11]~38\))) # (!\b2v_inst1|SigmaLatchQ\(12) & 
-- (\b2v_inst|parallel_add_component|auto_generated|add1_result[12]~24_combout\ & !\b2v_inst1|SigmaLatchQ[11]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|SigmaLatchQ\(12),
	datab => \b2v_inst|parallel_add_component|auto_generated|add1_result[12]~24_combout\,
	datad => VCC,
	cin => \b2v_inst1|SigmaLatchQ[11]~38\,
	combout => \b2v_inst1|SigmaLatchQ[12]~39_combout\,
	cout => \b2v_inst1|SigmaLatchQ[12]~40\);

-- Location: FF_X17_Y7_N27
\b2v_inst1|SigmaLatchQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|SigmaLatchQ[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|SigmaLatchQ\(12));

-- Location: LCCOMB_X17_Y7_N28
\b2v_inst1|SigmaLatchQ[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|SigmaLatchQ[13]~41_combout\ = (\b2v_inst1|SigmaLatchQ\(14) & ((\b2v_inst1|SigmaLatchQ\(13) & (\b2v_inst1|SigmaLatchQ[12]~40\ & VCC)) # (!\b2v_inst1|SigmaLatchQ\(13) & (!\b2v_inst1|SigmaLatchQ[12]~40\)))) # (!\b2v_inst1|SigmaLatchQ\(14) & 
-- ((\b2v_inst1|SigmaLatchQ\(13) & (!\b2v_inst1|SigmaLatchQ[12]~40\)) # (!\b2v_inst1|SigmaLatchQ\(13) & ((\b2v_inst1|SigmaLatchQ[12]~40\) # (GND)))))
-- \b2v_inst1|SigmaLatchQ[13]~42\ = CARRY((\b2v_inst1|SigmaLatchQ\(14) & (!\b2v_inst1|SigmaLatchQ\(13) & !\b2v_inst1|SigmaLatchQ[12]~40\)) # (!\b2v_inst1|SigmaLatchQ\(14) & ((!\b2v_inst1|SigmaLatchQ[12]~40\) # (!\b2v_inst1|SigmaLatchQ\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|SigmaLatchQ\(14),
	datab => \b2v_inst1|SigmaLatchQ\(13),
	datad => VCC,
	cin => \b2v_inst1|SigmaLatchQ[12]~40\,
	combout => \b2v_inst1|SigmaLatchQ[13]~41_combout\,
	cout => \b2v_inst1|SigmaLatchQ[13]~42\);

-- Location: FF_X17_Y7_N29
\b2v_inst1|SigmaLatchQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|SigmaLatchQ[13]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|SigmaLatchQ\(13));

-- Location: LCCOMB_X17_Y7_N30
\b2v_inst1|SigmaLatchQ[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|SigmaLatchQ[14]~43_combout\ = !\b2v_inst1|SigmaLatchQ[13]~42\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst1|SigmaLatchQ[13]~42\,
	combout => \b2v_inst1|SigmaLatchQ[14]~43_combout\);

-- Location: FF_X17_Y7_N31
\b2v_inst1|SigmaLatchQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|SigmaLatchQ[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|SigmaLatchQ\(14));

-- Location: FF_X17_Y7_N1
\b2v_inst1|DACout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|SigmaLatchQ\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|DACout~q\);
END structure;


