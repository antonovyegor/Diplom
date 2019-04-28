library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;  

entity Main is
port (
		C: in std_logic;
		button : in std_logic_vector(0 to 11);
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
	
	ADDR : out std_LOGIC_VECTOR(11 dowNTO 0);
	DATA_SIN : in std_LOGIC_VECTOR(11 dowNTO 0);
	
	FREQ : in std_LOGIC_VECTOR(31 dowNTO 0) ;
	GATE : in std_LOGIC;
	
	BUSY : out std_LOGIC;
	
	TO_ADD : out std_LOGIC_VECTOR(11 dowNTO 0)
);
end component;

component ButtonProc 
	port (
C200 : in std_logic;
BUTTON : in std_logic_vector (0 to 11 );
OCTAVE : in std_logic_vector ( 3 downto 0);
FREQ1: out std_logic_vector(31 downto 0);
GATE1: out std_logic;
BUSY1: in std_logic;
FREQ2: out std_logic_vector(31 downto 0);
GATE2: out std_logic;
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

begin
		UPLL: PLL port map (
			inclk0=>C,
			c0 =>c0, -- 200
			c1 =>c1, -- 400
			c2 =>c2  -- 10
		);

		
	

--		UROM: ROMSERIAL port map(
--		clock400=>c1,
--		addr0=>addr(0),data0=>data(0),
--		addr1=>addr(1),data1=>data(1)
--		);
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
		
		BlockU1 : Block1 port map (C200=>c0,C50=>C,ADDR=>addr(0),DATA_SIN=>data(0),FREQ=>freq0,GATE=>gate0,BUSY=>busy0,TO_ADD=>sin_from_gen(0));
		BlockU2 : Block1 port map (C200=>c0,C50=>C,ADDR=>addr(1),DATA_SIN=>data(1),FREQ=>freq1,GATE=>gate1,BUSY=>busy1,TO_ADD=>sin_from_gen(1));
		
end BEH;