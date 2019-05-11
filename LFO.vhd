library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity LFO is 

port (
C10: in std_logic;
C200 : in std_LOGIC;
LFO_OUT : out std_logic_vector(31 downto 0)
);
end entity;


architecture SYN of LFO is 


	component ROMLFO 
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	end component;
	
	signal acc : unsigned (31 downto 0):=X"00000000";
	signal addr : std_LOGIC_VECTOR(7 dowNTO 0);

begin 

	process (C10)
	begin
		if rising_edge(C10)  then
			acc<=acc + conv_unsigned(429,32);	
		end if;
	end process;
	addr<=conv_std_logic_vector(acc(31 downto 24),8);
	UROM : ROMLFO port map (clock=>C200,address=>addr, q=>LFO_OUT);

end architecture;