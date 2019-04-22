library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity ROMSERIAL is
	port (
			clock200		: IN STD_LOGIC ;
			clock400		: IN STD_LOGIC ;
			addr1		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			addr2		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			addr3		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			addr4		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			addr5		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			addr6		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			addr7		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			addr8		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			addr9		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			addr10		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			addr11		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			addr0		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
			
			data0 : out STD_LOGIC_VECTOR (11 DOWNTO 0);
			data1 : out STD_LOGIC_VECTOR (11 DOWNTO 0);
			data2 : out STD_LOGIC_VECTOR (11 DOWNTO 0);
			data3 : out STD_LOGIC_VECTOR (11 DOWNTO 0);
			data4 : out STD_LOGIC_VECTOR (11 DOWNTO 0);
			data5 : out STD_LOGIC_VECTOR (11 DOWNTO 0);
			data6 : out STD_LOGIC_VECTOR (11 DOWNTO 0);
			data7 : out STD_LOGIC_VECTOR (11 DOWNTO 0);
			data8 : out STD_LOGIC_VECTOR (11 DOWNTO 0);
			data9 : out STD_LOGIC_VECTOR (11 DOWNTO 0);
			data10 : out STD_LOGIC_VECTOR (11 DOWNTO 0);
			data11 : out STD_LOGIC_VECTOR (11 DOWNTO 0)
			);
end entity;



architecture BEH of ROMSERIAL is
type  MEM1212 is array (0 to 11) of std_LOGIC_VECTOR(11 downto 0);
signal currentADDR :  natural:=0;
signal addr_array : MEM1212;
signal data_array : MEM1212;
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
		addr_array(2)<=addr2;
		addr_array(3)<=addr3;
		addr_array(4)<=addr4;
		addr_array(5)<=addr5;
		addr_array(6)<=addr6;
		addr_array(7)<=addr7;
		addr_array(8)<=addr8;
		addr_array(9)<=addr9;
		addr_array(10)<=addr10;
		addr_array(11)<=addr11;
		
		
		data0 <= data_array(0);
		data1 <= data_array(1);
		data2 <= data_array(2);
		data3 <= data_array(3);
		data4 <= data_array(4);
		data5 <= data_array(5);
		data6 <= data_array(6);
		data7 <= data_array(7);
		data8 <= data_array(8);
		data9 <= data_array(9);
		data10 <= data_array(10);
		data11 <= data_array(11);
		
		addrROM<=addr_array(currentADDR);
		
		U1 : ROM1 port map(clock=>clock400,address=>addrROM,q=>dataROM);
		
		process (clock200)
		begin
			if rising_edge(clock200)  then
				currentADDR<=currentADDR+1;
				if currentADDR=11 then currentADDR<=0;end if;
			end if;
		end process;
		
		
		process (clock200)
		begin
			if falling_edge(clock200) then
				if currentADDR=0 then
					data_array(11)<=dataROM;
				else 
					data_array(currentADDR-1)<=dataROM;
				end if;
					
			end if;
		end process;
	
end BEH;