library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TB_DAC  is 


port (
		C : in std_logic;
		BUTTON : in std_LOGIC;
		MUX: in std_LOGIC_VECTOR(0 to 1);
		SIG_OUT : out std_LOGIC
);


end entity;


architecture SYN of TB_DAC is 
component PLL 
	port (
		inclk0	 : in std_LOGIC;
		c0: out std_LOGIC;
		c1: out std_LOGIC;
		c2: out std_LOGIC
	);

end component;

component DAC 
Port ( DACin : in  STD_LOGIC_VECTOR (12 downto 0);
           DAC_Clk : in  STD_LOGIC;
           DACout : out  STD_LOGIC);
end component;

component TB_BLOCK1 
port (
	C200: in std_LOGIC;
	C50 : in std_LOGIC;
	C10 : in std_LOGIC;
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

signal C10,C200 : std_LOGIC ; 

signal data : std_LOGIC_VECTOR(12 dowNTO 0) ; 

begin
UPLL: PLL port map (
			inclk0=>C,
			c0 =>c200, 
			c2 =>c10 
		);
data(12)<='0';

U2 : DAC port map (DAC_Clk => C10, DACin=> data,  DACout=> SIG_OUT);

U3: TB_BLOCK1 port map(
C200=>c200,
C50 => C,
 C10=>c10,
 FREQ=>X"00029F14",
 GatE=>not(BUTTON),
 MULT_OUT=>MUX,
 ATTACK_TIME=>7000000,
 DECAY_TIME=>3000000,
 RELEASE_TIME=>5000000,
 ATTACK_DELTA=>X"34196446",
 DECAY_DELTA=>X"34b2f4fc",
 RELEASE_DELTA=>X"3456bf95",
 TO_ADD=>data(11 dowNTO 0)
 );

end SYN;