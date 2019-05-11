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

FREQ1: out std_logic_vector(31 downto 0):=X"00000000";
GATE1: out std_logic:='0';
BUSY1: in std_logic;

FREQ2: out std_logic_vector(31 downto 0):=X"00000000";
GATE2: out std_logic:='0';
BUSY2: in std_logic


);
end entity;



architecture SYN of BUTtonProc is 

	type MEM1232 is array(0 to 11) of std_LOGIC_VECTOR(31 dowNTO 0 );


signal freq_array : MEM1232:=( X"0000057d",X"000005d0",X"00000629",X"00000686",X"000006ea",X"00000752",X"000007c2",X"00000838",X"000008b6",X"0000049D",X"0000093a",X"00000a5c");
constant freq_memory : MEM1232:=(X"0000057d",X"000005d0",X"00000629",X"00000686",X"000006ea",X"00000752",X"000007c2",X"00000838",X"000008b6",X"0000049D",X"0000093a",X"00000a5c");


component SHLL
	port (data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		distance		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
		);
end component;


signal g1_cnt : integer range -1 to 11 := -1;
signal g2_cnt : integer range -1 to 11 :=-1; 
signal cnt : integer range 0 to 12 :=0;
begin


		USHLL:for j in 0 to 11 generate
		begin
		 U: SHLL port map ( data=>freq_memory(j),distance=>OCTAVE,result=>freq_array(j));
		end generate USHLL;
		

				
				process(C200)
				begin
				if rising_edge(C200) then
				
							if BUTTON(cnt)='1' then
								if BUSY1 = '0' and g1_cnt=-1 and g2_cnt/=cnt then FREQ1<=freq_array(cnt); GATE1<='1'; g1_cnt<=cnt;
								elsif BUSY2 = '0' and g2_cnt=-1 and g1_cnt/=cnt then FREQ2<=freq_array(cnt); GATE2<='1';g2_cnt<=cnt;
								end if;
							else 
								if g1_cnt=cnt then GATE1<='0';g1_cnt<=-1; end if;
								if g2_cnt=cnt then GATE2<='0';g2_cnt<=-1; end if;
							end if;
							
							if cnt = 11 then cnt<=0;
							else cnt<=cnt+1;
							end if;
				end if;
				end process;	
				
		
		
		
end SYN;