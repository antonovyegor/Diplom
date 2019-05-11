library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;  

entity Main is
port (
		C: in std_logic;
		R: in std_logic;
		RX: in std_logic;
		button : in std_logic_vector(0 to 11);
		BUT_1 : in std_logic:='0';
		BUT_2 : in std_logic:='0';
		BUT_3 : in std_logic:='0';
		SIGNAL_OUT : out std_logic_vector(12 downto 0)
);

end entity;


architecture BEH of Main is

	type  MEM2_12 is array (0 to 1) of std_LOGIC_VECTOR(11 downto 0);
	
	signal c0: std_LOGIC;
	signal c1: std_LOGIC;
	signal c2: std_LOGIC;
	
	
	signal addr : MEM2_12;
	signal data : MEM2_12;
	signal sin_from_gen : MEM2_12;

	signal freq0  : std_LOGIC_VECTOR(31 downto 0);
	signal freq1  : std_LOGIC_VECTOR(31 downto 0);
	
	signal gate0: std_LOGIC;
	signal gate1: std_LOGIC;
	
	signal busy0: std_LOGIC;
	signal busy1: std_LOGIC;
	
	signal octave_sig : std_LOGIC_VECTOR(3  dowNTO 0) := "0000";
	
	component UARTPROC 
	port (
C: in std_logic;
R: in std_logic;
READY : in std_logic;
DATA : in std_logic_vector ( 7 downto 0);

OCTAVE: out std_LOGIC_VECTOR(3 downto 0) :="0000";
MULT :  out std_LOGIC_VECTOR (1 downto 0) := "00";
ATTACK_TIME : out  natural := 7000000;
ATTACK_DELTA : out  std_LOGIC_VECTOR(31 downto 0):=X"34196446";

DECAY_TIME :  out natural :=3000000;
DECAY_DELTA :  out std_LOGIC_VECTOR(31 downto 0):=X"34b2f4fc";



RELEASE_DELTA : out  std_LOGIC_VECTOR(31 downto 0) :=X"3456bf95";
RELEASE_TIME : out  natural:=5000000;

BUT_1 : in std_logic:='0';
BUT_2 : in std_logic:='0';
BUT_3 : in std_logic:='0'
);
	end component;
	
	component UARTRX 
	port (
		clk50 : in std_logic;
		R: in std_logic;
		RX : in std_logic;
		
		RXOUT : out std_logic_vector(7 downto 0 );
		ready : out std_logic
		
		
);
	end component;
component ROMSERIAL 
port (
			clock400		: IN STD_LOGIC ;
			addr1		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			addr0		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			
			data0 : out STD_LOGIC_VECTOR (11 DOWNTO 0);
			data1 : out STD_LOGIC_VECTOR (11 DOWNTO 0)
			);
end component;

component PLL 
	port (
		inclk0	 : in std_LOGIC;
		c0: out std_LOGIC;
		c1: out std_LOGIC;
		c2: out std_LOGIC
	);

end component;

component Block1 
port (
	C200: in std_LOGIC;
	C50 : in std_LOGIC;
	C10 : in std_LOGIC;
	ADDR : out std_LOGIC_VECTOR(11 dowNTO 0);
	DATA_SIN : in std_LOGIC_VECTOR(11 dowNTO 0);
	
	FREQ : in std_LOGIC_VECTOR(31 dowNTO 0) ;
	GATE : in std_LOGIC;
	MULT_OUT: in std_LOGIC_VECTOR (1 downto 0);
	BUSY : out std_LOGIC;
	
	ATTACK_TIME : in natural;
	DECAY_TIME : in natural;
	RELEASE_TIME : in natural;
		
	ATTACK_DELTA : in std_logic_vector(31 downto 0);
	DECAY_DELTA : in std_logic_vector(31 downto 0);
	RELEASE_DELTA : in std_logic_vector(31 downto 0);
		
	
	TO_ADD : out std_LOGIC_VECTOR(11 dowNTO 0)
);
end component;

component ButtonProc 
port (
C200 : in std_logic;
BUTTON : in std_logic_vector (0 to 11 );

OCTAVE : in std_logic_vector ( 3 downto 0);

FREQ1: out std_logic_vector(31 downto 0):=X"00000000";
GATE1: out std_logic:='0';
BUSY1: in std_logic;

FREQ2: out std_logic_vector(31 downto 0):=X"00000000";
GATE2: out std_logic:='0';
BUSY2: in std_logic


);

end component;
component 
 ROM1 
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
	);
END component;
component ADD 
PORT
	(
		data0x		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		data1x		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (12 DOWNTO 0)
	);
end component;
  
  
  signal uart_data : std_LOGIC_VECTOR (7 dowNTO 0);
  signal uart_ready : std_LOGIC;
signal MULT_sig :   std_LOGIC_VECTOR (1 downto 0);
signal ATTACK_TIME_sig :   natural;
signal ATTACK_DELTA_sig :   std_LOGIC_VECTOR(31 downto 0);

signal DECAY_TIME_sig :   natural;
signal DECAY_DELTA_sig :   std_LOGIC_VECTOR(31 downto 0);

signal RELEASE_DELTA_sig :   std_LOGIC_VECTOR(31 downto 0);
signal RELEASE_TIME_sig :   natural ;
begin

		uart : UARTRX port map(clk50=>C,R=>R,RX=>RX,RXOUT=>uart_data,READY=>uart_ready);
		uartpr : UARTPROC port map (C=>c0,R=>R, READY=>uart_ready,DATA=>uart_data ,
			OCTAVE=>octave_sig,
			MULT=>mulT_sig,
			ATTACK_TIME=>attack_time_sig,
			ATTACK_DELTA=> attACK_DELTA_sig,
			DECAY_DELTA=>decAY_DELTA_sig,
			DECAY_TIME=>decAY_TIME_sig,
			RELEASE_DELTA=> relEASE_DELTA_sig,
			RELEASE_TIME=> releaSE_TIME_sig,
			BUT_1=>but_1,
			BUT_2=>but_2,
			BUT_3=>but_3
			);

		UPLL: PLL port map (
			inclk0=>C,
			c0 =>c0, -- 200
			c1 =>c1, -- 400
			c2 =>c2  -- 10
		);

		

		UROM1: ROM1 port map(
		clock=>c1,
		address=>addr(0),q=>data(0)
		);
		UROM2: ROM1 port map(
		clock=>c1,
		address=>addr(1),q=>data(1)
		);


		UADD : ADD port map(
		data0x=>sin_from_gen(0),
		data1x=>sin_from_gen(1),
		result => SIGNAL_OUT
		);
		
		UBut : ButtonProc port map (C200=>c0,BUTTON=>BUTTON,OCTAVE=>octave_sig,
		FREQ1=>freq0,FREQ2=>freq1,GATE1=>gate0,GATE2=>gate1,BUSY1=>busy0,BUSY2=>busy1);
		
		BlockU1 : Block1 port map (
		C200=>c0,
		C50=>C,C10=>c2,
		MULT_OUT=>mulT_sig,
		ADDR=>addr(0),
		DATA_SIN=>data(0),
		FREQ=>freq0,
		GATE=>gate0,
		BUSY=>busy0,
		TO_ADD=>sin_from_gen(0),
		ATTACK_DELTA=>ATTACK_DELTA_sig,
		ATTACK_TIME=>attack_time_sig,
		DECAY_DELTA=>decAY_DELTA_sig,
		DECAY_TIME=>decAY_TIME_sig,
		RELEASE_DELTA=>relEASE_DELTA_sig,
		RELEASE_TIME=>releaSE_TIME_sig
		);
		BlockU2 : Block1 port map (
		C200=>c0,
		C50=>C,C10=>c2,
		MULT_OUT=>mulT_sig,
		ADDR=>addr(1),
		DATA_SIN=>data(1),
		FREQ=>freq1,
		GATE=>gate1,
		BUSY=>busy1,
		TO_ADD=>sin_from_gen(1),
		ATTACK_DELTA=>ATTACK_DELTA_sig,
		ATTACK_TIME=>attack_time_sig,
		DECAY_DELTA=>decAY_DELTA_sig,
		DECAY_TIME=>decAY_TIME_sig,
		RELEASE_DELTA=>relEASE_DELTA_sig,
		RELEASE_TIME=>releaSE_TIME_sig
		);
		
end BEH;