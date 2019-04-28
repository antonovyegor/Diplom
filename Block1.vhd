library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;



entity Block1 is 

port (
	C200: in std_LOGIC;
	C50 : in std_LOGIC;
	
	ADDR : out std_LOGIC_VECTOR(11 dowNTO 0);
	DATA_SIN : in std_LOGIC_VECTOR(11 dowNTO 0);
	
	FREQ : in std_LOGIC_VECTOR(31 dowNTO 0) ;
	GATE : in std_LOGIC;
	
	BUSY : out std_LOGIC;
	
	TO_ADD : out std_LOGIC_VECTOR(11 dowNTO 0)
);

end entity ;


architecture Syn of Block1 is 
	component Oscill 
		port (
			C: in std_logic;
			
			SINUS_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			MEANDR_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			SAW_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			
			ADDRESS_OUT : out std_LOGIC_VECTOR (11 downto 0 );
			FROM_MEMORY : in  std_LOGIC_VECTOR (11 downto 0 );
			FREQ_REG : in std_logic_vector ( 31 downto 0 )

			);
	end component;
	component CONV_INT_TO_FLOAT
	port (
	clock : in std_logic;
	dataa : in std_LOGIC_VECTOR(11 downto 0);
	result: out std_LOGIC_VECTOR(31 downto 0)
	);
	end component;
	
	component MUL
	PORT 
	 ( 
		 clock	:	IN  STD_LOGIC;
		 dataa	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 datab	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 result	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 zero	:	OUT  STD_LOGIC
	 ); 
	 end component;
	 
	 component CONV_FLOAT_TO_INT
	 port (
	clock : in std_logic;
	dataa : in std_LOGIC_VECTOR(31 downto 0);
	result: out std_LOGIC_VECTOR(11 downto 0)
	);
	end component;
	
	component ADSR
		port (
		C : in std_logic;
		R : in std_logic;
		GATE : in std_logic;
		BUSY : out std_logic;
		ATTACK_TIME : in natural;
		DECAY_TIME : in natural;
		RELEASE_TIME : in natural;
		
		ATTACK_DELTA : in std_logic_vector(31 downto 0);
		DECAY_DELTA : in std_logic_vector(31 downto 0);
		SUSTAIN_LEVEL : in std_logic_vector(31 downto 0);
		RELEASE_DELTA : in std_logic_vector(31 downto 0);
		
		FP : out std_logic_vector(31 downto 0)
		);
	end component;
	
	signal osc_out_int : std_LOGIC_VECTOR(11 dowNTO 0);
	signal osc_out_fp : std_LOGIC_VECTOR(31 dowNTO 0);
	signal mul_out_fp : std_LOGIC_VECTOR(31 dowNTO 0);
	signal mul_out_int : std_LOGIC_VECTOR(11 dowNTO 0);
	signal adsr_out_fp : std_LOGIC_VECTOR(31 dowNTO 0);
	
	signal ATTACK_TIME :  natural;
	signal 	DECAY_TIME :  natural;
	signal 	RELEASE_TIME :  natural;
	
	signal 	ATTACK_DELTA :  std_logic_vector(31 downto 0);
	signal	DECAY_DELTA :  std_logic_vector(31 downto 0);
	signal	SUSTAIN_LEVEL :  std_logic_vector(31 downto 0);
	signal	RELEASE_DELTA :  std_logic_vector(31 downto 0);
	
begin
	Oscill_inst : Oscill port map(C=>C50,SINUS_OUT=>osc_out_int,ADDRESS_OUT=>ADDR,FROM_MEMORY=>DATA_SIN,FREQ_REG=>FREQ);
	
	CONV_INT_TO_FLOAT_inst : CONV_INT_TO_FLOAT PORT MAP (
		clock	 => C200,
		dataa	 => osc_out_int,
		result	 => osc_out_fp
	);
	
	
	MUL_inst : MUL port map (clock=>C200,dataa=>osc_out_fp,datab=>adsr_out_fp,result=>mul_out_fp);
	
	CONV_FLOAT_TO_INT_inst : CONV_FLOAT_TO_INT PORT MAP (
		clock	 => C200,
		dataa	 => mul_out_fp,
		result	 => mul_out_int
	);

	ADSR_inst: ADSR port map(FP=>adsr_out_fp,c=>c200,R=>'0',gatE=>GATE,busy=>BUSY,attACK_TIME=>ATTACK_TIME,decAY_TIME=>DECAY_TIME,relEASE_TIME=>RELEASE_TIME,attACK_DELTA=>ATTACK_DELTA,decAY_DELTA=>DECAY_DELTA,susTAIN_LEVEL=>SUSTAIN_LEVEL,relEASE_DELTA=>relEASE_DELTA);
	
	TO_ADD<=mul_out_int;
end Syn;