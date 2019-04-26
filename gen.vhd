library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity gen is
	port (
			C: in std_logic;
			Freq_reg : in std_logic_vector ( 31 downto 0 ) ;
			ADDR_SIN : out std_logic_vector (11 downto 0);
			SIG_MEANDR : out std_logic;
			SIG_SAW : out std_logic_vector (11 downto 0)
			
			);
end entity;


architecture BEH of gen is
signal acc : unsigned (31 downto 0):=X"00000000";
begin
	

	process (C)
	begin
	
		if rising_edge(C)  then
			acc<=acc + conv_unsigned(conv_integer(freq_reg),32);	
		end if;
	end process;
	
	
	SIG_SAW<=conv_std_logic_vector(acc(31 downto 31-11),12);
	SIG_MEANDR<=acc(31);
	ADDR_SIN<=conv_std_logic_vector(acc(31 downto 31-11),12);
	
end BEH;


