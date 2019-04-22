library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;  

entity Main is
port (
		C: in std_logic;
		button : in std_logic_vector(0 to 11);
		SIGNAL_OUT : out std_logic_vector(15 downto 0)
);

end entity;


architecture BEH of Main is

	type  MEM1212 is array (0 to 11) of std_LOGIC_VECTOR(11 downto 0);
	type MEM1232 is array(0 to 11) of std_LOGIC_VECTOR(31 dowNTO 0 );
	signal c0: std_LOGIC;
	signal c1: std_LOGIC;
	signal c2: std_LOGIC;
	signal octawa : std_LOGIC_VECTOR (3 dowNTO 0) :="0000";
	signal impulse_time : natural := 100000;
	signal addr : MEM1212;
	signal data : MEM1212;
	signal sin_from_gen : MEM1212;
	signal freq_array : MEM1232:=( X"000002BE",X"000002E8",X"00000314",X"00000343",X"00000375",X"000003A9",X"000003E1",X"0000041C",X"0000045B",X"0000049D",X"000004E3",X"0000052E");
	constant freq_memory : MEM1232:=(X"000002BE",X"000002E8",X"00000314",X"00000343",X"00000375",X"000003A9",X"000003E1",X"0000041C",X"0000045B",X"0000049D",X"000004E3",X"0000052E");

	component SHLL
	port (data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		distance		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	end component;
	
	component ADD 
port(
		data0x		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		data10x		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		data11x		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		data1x		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		data2x		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		data3x		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		data4x		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		data5x		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		data6x		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		data7x		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		data8x		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		data9x		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
);

end component;

component Oscill
port (
			C: in std_logic;
			BUTTON : in std_logic;
			SINUS_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			MEANDR_OUT : out std_logic;
			SAW_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			ADDRESS_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			FROM_MEMORY : in  std_LOGIC_VECTOR (11 downto 0 );
			FREQ_REG : in std_logic_vector ( 31 downto 0 );
			IMPULSE_TIME : in natural
			);
end component;



component ROMSERIAL 
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


end component;

component PLL 
	port (
		inclk0	 : in std_LOGIC;
		c0: out std_LOGIC;
		c1: out std_LOGIC;
		c2: out std_LOGIC
	);

end component;


begin
		UPLL: PLL port map (
			inclk0=>C,
			c0 =>c0, -- 200
			c1 =>c1, -- 400
			c2 =>c2  -- 10
		);

		
		U2:for I in 0 to 11 generate
		begin
		gen: Oscill port map(C=>C,BUTTON=>butTON(i),SINUS_OUT=>sin_from_gen(i),ADDRESS_OUT=>addr(i),FROM_MEMORY=>data(i), FREQ_REG=>freq_array(i),IMPULSE_TIME=>impulse_time);
		end generate U2;
	

		U1: ROMSERIAL port map(
		clock200=>c0,
		clock400=>c1,
		addr0=>addr(0),data0=>data(0),
		addr1=>addr(1),data1=>data(1),
		addr2=>addr(2),data2=>data(2),
		addr3=>addr(3),data3=>data(3),
		addr4=>addr(4),data4=>data(4),
		addr5=>addr(5),data5=>data(5),
		addr6=>addr(6),data6=>data(6),
		addr7=>addr(7),data7=>data(7),
		addr8=>addr(8),data8=>data(8),
		addr9=>addr(9),data9=>data(9),
		addr10=>addr(10),data10=>data(10),
		addr11=>addr(11),data11=>data(11)
		);



		U3:for j in 0 to 11 generate
		begin
		U4:  SHLL port map ( data=>freq_memory(j),distance=>octawa,result=>freq_array(j));
		end generate U3;

		
		
		U5 : ADD port map(
		data0x=>sin_from_gen(0),
		data1x=>sin_from_gen(1),
		data2x=>sin_from_gen(2),
		data3x=>sin_from_gen(3),
		data4x=>sin_from_gen(4),
		data5x=>sin_from_gen(5),
		data6x=>sin_from_gen(6),
		data7x=>sin_from_gen(7),
		data8x=>sin_from_gen(8),
		data9x=>sin_from_gen(9),
		data10x=>sin_from_gen(10),
		data11x=>sin_from_gen(11),
		result => SIGNAL_OUT
		);
		
		
end BEH;