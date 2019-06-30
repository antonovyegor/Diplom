	library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;




entity uartRX is 

port (
		clk50 : in std_logic;
		R: in std_logic;
		RX : in std_logic;
		
		RXOUT : out std_logic_vector(7 downto 0 );
		ready : out std_logic
		
		
);
end entity;



architecture SYN of uartRX is 
type state is (idle,start,rec,finish);
signal fsm : state := idle;

signal data : std_logic_vector(7 downto 0);
signal bit_cnt : integer range 0 to 34;
signal cnt : integer range 0 to 434;
signal rx_buffer: std_logic_vector (3 downto 0);

begin


	process (clk50,R)
	
	begin
			if R='1' then 
				cnt<=0;
				fsm<= idle;
			elsif rising_edge(clk50) then
				
				rx_buffer(3)<=RX;
				rx_buffer(2 downto 0)<=rx_buffer(3 downto 1);
				
				
				
				case fsm is 
				
				
					when idle =>
									if rx_buffer(0)='1' and rx_buffer(1)='0'  then 
										bit_cnt<=0;
										fsm<=start;
										cnt <=0;	
									
									end if;
									ready<='0';
					
					when start =>  if cnt=217 then 
											cnt<=0;
											fsm<=rec;
										else cnt<=cnt+1;
										end if;
					
					when rec =>		if cnt=434 then 
											cnt<=0;
											data(7)<=rx_buffer(0);
											data(6 downto 0)<= data(7 downto 1);
											
											if bit_cnt = 7 then 
													fsm<=finish;
											else bit_cnt<=bit_cnt+1;
											end if;
											
											
										else 
											cnt<=cnt+1;
										end if;
				
					when finish  =>RXOUT<=data;
										ready<='1';
										fsm<=idle;
				
				
					end case;
			
			end if;
	
	
	end process;


end SYN;