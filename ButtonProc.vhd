library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all; 


entity ButtonProc is 

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
end entity;



architecture SYN of BUTtonProc is 

	type MEM1232 is array(0 to 11) of std_LOGIC_VECTOR(31 dowNTO 0 );


signal freq_array : MEM1232:=( X"000002BE",X"000002E8",X"00000314",X"00000343",X"00000375",X"000003A9",X"000003E1",X"0000041C",X"0000045B",X"0000049D",X"000004E3",X"0000052E");
constant freq_memory : MEM1232:=(X"000002BE",X"000002E8",X"00000314",X"00000343",X"00000375",X"000003A9",X"000003E1",X"0000041C",X"0000045B",X"0000049D",X"000004E3",X"0000052E");


component SHLL
	port (data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		distance		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
		);
end component;

signal f1: std_LOGIC_VECTOR (31 downto 0):=X"00000000";
signal f2: std_LOGIC_VECTOR (31 downto 0):=X"00000000";
signal g1: std_LOGIC :='0';
signal g2: std_LOGIC :='0';

begin

		FREQ1<=f1;
		FREQ2<=f2;
		GATE1<=g1;
		GATE2<=g2;

		USHLL:for j in 0 to 11 generate
		begin
		 U: SHLL port map ( data=>freq_memory(j),distance=>OCTAVE,result=>freq_array(j));
		end generate USHLL;
		

				
				process(C200)
				begin
				if rising_edge(C200) then 
						if BUTTON(0)='1' then
						
							if BUSY1 = '0' then f1<=freq_array(0); g1<=BUTTON(0);
							elsif BUSY2 = '0' then f2<=freq_array(0); g2<=BUTTON(0);
							end if;
						end if;
				end if;
				end process;	
				
		
		
		
end SYN;