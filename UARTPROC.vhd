library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity UARTPROC is 
port (
C: in std_logic;
R: in std_logic;
READY : in std_logic;
DATA : in std_logic_vector ( 7 downto 0);

OCTAVE: out std_LOGIC_VECTOR(3 downto 0) :="0010";
MULT :  out std_LOGIC_VECTOR (1 downto 0) := "11";
ATTACK_TIME : out  natural := 7000000;
ATTACK_DELTA : out  std_LOGIC_VECTOR(31 downto 0):=X"34196446";

DECAY_TIME :  out natural :=3000000;
DECAY_DELTA :  out std_LOGIC_VECTOR(31 downto 0):=X"34b2f4fc";



RELEASE_DELTA : out  std_LOGIC_VECTOR(31 downto 0) :=X"3456bf95";
RELEASE_TIME : out  natural:=5000000;

BUT_1 : in std_logic:='0';
BUT_2 : in std_logic:='0';
BUT_3 : in std_logic:='0'
);
end entity;

architecture SYN of UARTPROC is 
type state is (rec_addr,rec_data,finish);
type  data4_8 is array (0 to 3) of std_LOGIC_VECTOR(7 downto 0);

signal fsm : state := rec_addr;
signal cnt : integer range 0 to 5;
signal addr : std_logic_vector(7 downto 0);
signal data_sig : data4_8;
signal data_vector : std_logic_vector(31 downto 0);

signal octave_cnt : integer range 0 to 10:=0;
signal mult_cnt : integer range 0 to 4 :=0;
begin

OCTAVE<=conv_std_logic_vector(octave_cnt,4);
MULT<=conv_std_logic_vector(mult_cnt,2);
 
 process (BUT_1,BUT_2,BUT_3)
 begin
		if rising_edge(BUT_1) then
				if octave_cnt = 9 then octave_cnt<=0; else octave_cnt<=octave_cnt+1; end if;
		end if;
		if rising_edge(BUT_2) then
				if mult_cnt = 3 then mult_cnt<=0;else mult_cnt<=mult_cnt+1; end if;
		end if;
 end process;
 
 
process(C,R,READY) 

begin
			if R='1' then 
				fsm<= rec_addr;
			elsif rising_edge(C) then
				case fsm is 
					when rec_addr => 
						cnt<=0;
						if READY='1' then 
							addr<=DATA; 
							fsm<=rec_data;
						end if;
					when rec_data => 
						if READY='1' then 
							cnt<=cnt+1;
							data_sig(cnt)<=DATA;
						end if;
						if cnt=4 then 
							data_vector<=data_sig(0)&data_sig(1)&data_sig(2)&data_sig(3);
							fsm<=finish; 
						end if;
					when finish => 
							case addr is
								when X"01" =>    --octave_cnt<=conv_integer('0'& data_vector(3 downto 0));
								when X"02" =>    --mult_cnt<=conv_integer('0'& data_vector(1 downto 0));
								when X"03" =>    ATTACK_TIME<=conv_integer(data_vector);
								when X"04" =>    DECAY_TIME<=conv_integer( data_vector);
								when X"05" =>    
								when X"06" =>    RELEASE_TIME<=conv_integer( data_vector);
								when X"07" =>    ATTACK_DELTA<=data_vector;
								when X"08" =>    DECAY_DELTA<=data_vector;
								when X"09" =>    RELEASE_DELTA<=data_vector;
								when others => null;
							end case;
								fsm<=rec_addr;
				end case;
			end if;
end process;


end SYN;