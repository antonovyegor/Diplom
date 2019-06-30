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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Fri Jun 28 19:53:49 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY TB_2SIN IS 
	PORT
	(
		Clock :  IN  STD_LOGIC;
		Signal_OUT :  OUT  STD_LOGIC;
		BUT1 : in std_LOGIC;
		BUT2: in std_LOGIC
	);
END TB_2SIN;

ARCHITECTURE bdf_type OF TB_2SIN IS 

COMPONENT add
	PORT(data0x : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
	);
END COMPONENT;

COMPONENT dac
	PORT(DAC_Clk : IN STD_LOGIC;
		 DACin : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
		 DACout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT gen
	PORT(C : IN STD_LOGIC;
		 Freq_reg : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 SIG_MEANDR : OUT STD_LOGIC;
		 ADDR_SIN : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
		 SIG_SAW : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rom1
	PORT(clock : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END COMPONENT;

COMPONENT pll
	PORT(inclk0 : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC;
		 c1 : OUT STD_LOGIC;
		 c2 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT LFO
	port (
	C10: in std_logic;
	C200 : in std_LOGIC;
	LFO_OUT : out std_logic_vector(31 downto 0)
	);
END COMPONENT;

COMPONENT MUL
	PORT 
	 ( 
		 clock	:	IN  STD_LOGIC;
		 dataa	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 datab	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 result	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0)
	 ); 
END COMPONENT;	

component CONV_INT_TO_FLOAT
	port (
	clock : in std_logic;
	dataa : in std_LOGIC_VECTOR(12 downto 0);
	result: out std_LOGIC_VECTOR(31 downto 0)
	);
	end component;
	
	component CONV_FLOAT_TO_INT
	 port (
	clock : in std_logic;
	dataa : in std_LOGIC_VECTOR(31 downto 0);
	result: out std_LOGIC_VECTOR(12 downto 0)
	);
	end component;
	
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(11 DOWNTO 0);

SIGNAL Freq1,freq2, lfo_sig : std_LOGIC_VECTOR(31 downto 0)  ;
BEGIN 

process(Clock)
begin
	if rising_edge(clock) then
	if BUT1 = '0' then Freq1<=X"00000000"; else  Freq1<=X"00014F8A"; end if;
	if BUT2 = '0' then Freq2<=X"00000000"; else  Freq2<=X"0000A7C5"; end if;
	end if;
end process;

b2v_inst : add
PORT MAP(data0x => SYNTHESIZED_WIRE_0,
		 data1x => SYNTHESIZED_WIRE_1,
		 result => SYNTHESIZED_WIRE_2);


b2v_inst1 : dac
PORT MAP(DAC_Clk => Clock,
		 DACin => SYNTHESIZED_WIRE_2,
		 DACout => Signal_OUT);


b2v_inst2 : gen
PORT MAP(C => SYNTHESIZED_WIRE_9,
		 Freq_reg => Freq1,
		 ADDR_SIN => SYNTHESIZED_WIRE_5);


b2v_inst3 : rom1
PORT MAP(clock => SYNTHESIZED_WIRE_10,
		 address => SYNTHESIZED_WIRE_5,
		 q => SYNTHESIZED_WIRE_1);


b2v_inst4 : pll
PORT MAP(inclk0 => Clock,
		 c0 => SYNTHESIZED_WIRE_10,
		 c2 => SYNTHESIZED_WIRE_9);


b2v_inst5 : gen
PORT MAP(C => SYNTHESIZED_WIRE_9,
		 Freq_reg => Freq2,
		 ADDR_SIN => SYNTHESIZED_WIRE_8);


b2v_inst6 : rom1
PORT MAP(clock => SYNTHESIZED_WIRE_10,
		 address => SYNTHESIZED_WIRE_8,
		 q => SYNTHESIZED_WIRE_0);
		 
lfo_INST : LFO 
PORT MAP (
C10 => SYNTHESIZED_WIRE_9,
C200 => SYNTHESIZED_WIRE_10,
LFO_OUT => LFO_sig
);

MUL_Inst : MUL 
port map (
	clock => SYNTHESIZED_WIRE_10,
	dataa => 
	datab => 
	result => 
);  
END bdf_type;