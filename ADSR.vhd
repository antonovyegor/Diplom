library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;



entity ADSR  is
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
end entity;


architecture SYN of ADSR is 
		signal curr_mode : std_logic_vector (2 downto 0);
		signal clrADD : std_LOGIC;
		
		signal add_sub : std_logic;
		signal data1: std_logic_vector (31 downto 0):=X"00000000";
		signal data2: std_logic_vector (31 downto 0):=X"00000000";
		signal res : std_logic_vector (31 downto 0) :=X"00000000";
		signal buffer_res : std_logic_vector (31 downto 0) :=X"00000000";
		component ADDSUB 
		port (
			aclr	:	IN  STD_LOGIC; 
			dataa: in std_logic_vector(31 downto 0);
			datab: in std_logic_vector(31 downto 0);
			add_sub : in std_logic:='1';
			clock : in std_logic ;
			result : out std_logic_vector(31 downto 0);
			zero : out std_logic
			);
		
		end component;
		component timer 
			port (
		C : in std_logic;
		R : in std_logic;
		GATE : in std_logic;
		BUSY : out std_logic;
		ATTACK_TIME : in natural;
		DECAY_TIME : in natural;
		RELEASE_TIME : in natural;
		CLEARADD : out std_logic;
		CURRENT_STATE : out std_logic_vector (2 downto 0)
		);
		end component;
		
		signal load : std_LOGIC:='1';
		signal clear : std_LOGIC:='0';
		
begin
	UADDSUB : ADDSUB port map (clock=>C,aclr=>clear,dataa=>data1,datab=>data2,result=>res,add_sub=>add_sub)	;	
	UTIMER : timer port map (C=>C,R=>R,CLEARADD=>clrADD,GATE=>GATE,BUSY=>BUSY,ATTACK_TIME=>ATTACK_TIME,DECAY_TIME=>DECAY_TIME,RELEASE_TIME=>RELEASE_TIME,CURRENT_STATE=>curr_mode);

	
	process(C)
	begin
			if rising_edge (C) then
				case curr_mode is 
						when "111" => add_sub<='1' ; data2<=X"00000000";  -- 0
						when "000" => add_sub<='1' ; data2<=ATTACK_DELTA;  -- ATTACK
						when "001" => add_sub<='0' ; data2<=DECAY_DELTA; 	-- DECAY
						when "010" => add_sub<='1' ; data2<=X"00000000";  -- SUSTAIN
						when "011" => add_sub<='0' ; data2<=RELEASE_DELTA;
						when others => null;
				end case;
			end if;
	end process;
	

	process(C)
	begin
			if rising_edge (C) then
				case load is 
						when '0' =>  FP<=buffer_res;  
						when '1' =>  FP<=res; 
						when others => null;
				end case;
			end if;
	end process;
	
	process(C,clrADD)
	variable flag : std_LOGIC;
	variable count : integer:=0;
	begin
	if rising_edge(C) then
		if clrADD='1' then
			buffer_res<=res;
			load<='0';
			clear<='1';
			flag:='1';
		else clear<='0';
		end if;
		
		if flag='1' and count/=6 then 
			count:=count+1;
		else 
			load<='1';
			count:=0;
			flag:='0';
		end if;
		
	end if;
	end process;
	
	
	
end SYN;