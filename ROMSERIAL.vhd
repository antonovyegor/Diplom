library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity ROMSERIAL is
	port (
			clock400		: IN STD_LOGIC ;
			addr0		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			addr1		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			


			data0 : out STD_LOGIC_VECTOR (11 DOWNTO 0);
			data1 : out STD_LOGIC_VECTOR (11 DOWNTO 0)
			
			);
end entity;



architecture BEH of ROMSERIAL is
type  MEM2_12 is array (0 to 1) of std_LOGIC_VECTOR(11 downto 0);
signal currentADDR :  natural:=0;
signal addr_array : MEM2_12;
signal data_array : MEM2_12;
signal addrROM : std_LOGIC_VECTOR(11 downto 0);
signal dataROM : std_LOGIC_VECTOR(11 downto 0);

component ROM1
PORT
	(
		address		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
	);

end component;



begin
		addr_array(0)<=addr0;
		addr_array(1)<=addr1;
		

		data0 <= data_array(0);
		data1 <= data_array(1);
		

		addrROM<=addr_array(currentADDR);

		U1 : ROM1 port map(clock=>clock400,address=>addrROM,q=>dataROM);




		process (clock400)
		begin
			if falling_edge(clock400) then

				currentADDR<=currentADDR+1;
				
				if currentADDR=1 then currentADDR<=0;end if;

				if currentADDR=0 then 
											data_array(1)<=dataROM;
				else    
											data_array(0)<=dataROM;
				end if;
			end if;
		end process;

end BEH;