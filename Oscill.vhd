library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity Oscill is
	port (
			C: in std_logic;
			
			SINUS_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			MEANDR_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			SAW_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			
			ADDRESS_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			FROM_MEMORY : in  std_LOGIC_VECTOR (11 downto 0 );
			FREQ_REG : in std_logic_vector ( 31 downto 0 )

			);
end entity;

architecture BEH of Oscill is 


signal sig : std_LOGIC_VECTOR (11 dowNTO 0);
signal addr : std_LOGIC_VECTOR (11 dowNTO 0);
signal meandr : std_logic;
signal sin_from_memory :  std_LOGIC_VECTOR (11 dowNTO 0);
	
	component gen 
	port (
			C: in std_logic;
			FREQ_REG : in std_logic_vector ( 31 downto 0 ) ;
			ADDR_SIN : out std_logic_vector (11 downto 0);
			SIG_MEANDR : out std_logic;
			SIG_SAW : out std_logic_vector (11 downto 0)
			);
	end component;
			
	
			
begin 

Ugen: gen port map (C=>C, FREQ_REG=>FREQ_REG,ADDR_SIN=>ADDRESS_OUT,SIG_MEANDR=>meandr,SIG_SAW=>SAW_OUT);		 	
SINUS_OUT<=FROM_MEMORY;
MEANDR_OUT<=meandr&meandr&meandr&meandr&meandr&meandr&meandr&meandr&meandr&meandr&meandr&meandr;		
end BEH;