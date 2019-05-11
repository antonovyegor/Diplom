library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity TB_BLOCK1 is 

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

end entity;


architecture BEh of TB_BLOCK1 is 
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
component ROM1 
PORT
	(
		address		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
	);
end component;


signal addr_sig, data_sin_sig : std_LOGIC_VECTOR(11 downto 0 );
begin

  ub : Block1 port map (C200=>C200,C50=>C50,C10=>C10,ADDR => addr_sig,DATA_SIN=>data_sin_sig,FREQ=>FREQ, GATE=> GATE,
  MULT_OUT=>MULT_OUT,
  attACK_TIME=>ATTACK_TIME,
  decAY_TIME=>DECAY_TIME,
  relEASE_TIME=>RELEASE_TIME,
  attACK_DELTA=>ATTACK_DELTA,
  decAY_DELTA=>DECAY_DELTA,
  relEASE_DELTA=>relEASE_DELTA,
	TO_ADD=>TO_ADD);
  
  
  urom : ROM1 port map(clock=>C200,address=>addr_sig,q=>data_sin_sig);

end BEH;