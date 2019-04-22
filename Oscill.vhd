library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity Oscill is
	port (
			C: in std_logic;
			BUTTON : in std_logic;
			SINUS_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			MEANDR_OUT : out std_logic;
			SAW_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			ADDRESS_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			FROM_MEMORY : in  std_LOGIC_VECTOR (11 downto 0 );
			FREQ_REG : in std_logic_vector ( 31 downto 0 );
			IMPULSE_TIME : in natural;
			ENABLEWRITE : std_logic
			);
end entity;

architecture BEH of Oscill is 


signal sig : std_LOGIC_VECTOR (11 dowNTO 0);
signal addr : std_LOGIC_VECTOR (11 dowNTO 0);
signal en : std_logic;
signal sin_from_memory :  std_LOGIC_VECTOR (11 dowNTO 0);
	
	component gen 
	port (
			C: in std_logic;
			EN : in std_logic;
			FREQ_REG : in std_logic_vector ( 31 downto 0 ) ;
			ADDR_SIN : out std_logic_vector (11 downto 0);
			SIG_MEANDR : out std_logic;
			SIG_SAW : out std_logic_vector (11 downto 0)
			);
	end component;
			
	component TIMER 
		port(
				C : in std_logic;
				BUTTON : in std_logic;
				EN : out std_logic;
				IMPULSE_TIME : in natural
		);
	end component;
			
begin 

U1: gen port map (C=>C,EN=>en, FREQ_REG=>FREQ_REG,ADDR_SIN=>ADDRESS_OUT,SIG_MEANDR=>MEANDR_OUT,SIG_SAW=>SAW_OUT);
U2 : timer port map (C=>C,Button=>BUTTON,EN=>en,IMPULSE_TIME=>IMPULSE_TIME);
	

U3 : process (ENABLEWRITE)

		begin
		 if rising_edge(ENABLEWRITE) then 
				sin_from_memory<=FROM_MEMORY;
		 end if;
		end process;

	
SINUS_OUT<=sin_from_memory;
		
end BEH;