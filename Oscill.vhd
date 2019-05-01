library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity Oscill is
	port (
			C: in std_logic;
			MULT_OUT : in std_LOGIC_VECTOR(1 downto 0);
			
			SIGNAL_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			ADDRESS_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			FROM_MEMORY : in  std_LOGIC_VECTOR (11 downto 0 );
			FREQ_REG : in std_logic_vector ( 31 downto 0 )

			);
end entity;

architecture BEH of Oscill is 



signal meandr : std_logic;
signal saw :  std_LOGIC_VECTOR (11 dowNTO 0);
	
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
with MULT_OUT select SIGNAL_OUT <=
    meandr&meandr&meandr&meandr&meandr&meandr&meandr&meandr&meandr&meandr&meandr&meandr when "01",
    saw when "10",
    FROM_MEMORY when "11",
	 X"000" when others;

Ugen: gen port map (C=>C, FREQ_REG=>FREQ_REG,ADDR_SIN=>ADDRESS_OUT,SIG_MEANDR=>meandr,SIG_SAW=>saw);		 	

end BEH;