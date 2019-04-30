library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity TB_OSCILL is 
port (
C50: in std_logic;
C200: in std_logic;
SINUS_OUT : out std_LOGIC_VECTOR (11 downto 0 );
Freq_reg : in std_logic_vector ( 31 downto 0 ) 
);

end entity;



architecture BEH of TB_OSCILL is 

component Oscill 
port (
			C: in std_logic;
			
			SINUS_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			MEANDR_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			SAW_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			
			ADDRESS_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			FROM_MEMORY : in  std_LOGIC_VECTOR (11 downto 0 );
			FREQ_REG : in std_logic_vector ( 31 downto 0 )

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
signal addr,data : std_LOGIC_VECTOR(11 dowNTO 0);
begin
			U1 : Oscill port map (C=>C50, SINUS_OUT=>SINUS_OUT,ADDRESS_OUT=>addr, FROM_MEMORY=>data, FREQ_REG=>FREQ_REG);
			U2: ROM1 port map (clock=>C200,address=>addr,q=>data);
end BEH;

