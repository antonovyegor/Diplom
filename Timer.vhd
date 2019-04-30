library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity Timer  is
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
end entity;


architecture BEH of Timer is
type state is (idle,attack,sustain,decay,release);
signal fsm : state:= idle;
signal count : natural :=0;

begin

	
	
	process (C,R)
	begin
		if R='1' then 
				count<=0;
				fsm<= idle;
		elsif rising_edge(C) then
			case fsm is 
					when idle =>CURRENT_STATE<="111";
									BUSY<='0';
									CLEARADD<='0';
									if GATE='1' then
										BUSY<='1';
										count<=0;
										--CLEARADD<='1';
										fsm<=attack;
									end if;
					when attack =>
									CURRENT_STATE<="000";
									CLEARADD<='0';
									if GATE='0' then fsm<=idle;	
									elsif count=ATTACK_TIME then
										count<=0;
										CLEARADD<='1';
										fsm<=decay;
										
									else count<=count+1;
									end if;
					when decay =>
									CURRENT_STATE<="001";
									CLEARADD<='0';
									if GATE='0' then fsm<=idle;	
									elsif count=DECAY_TIME  then
										count<=0;
										CLEARADD<='1';
										fsm<=sustain;
									else count<=count+1;
									end if;
					when sustain =>
									CURRENT_STATE<="010";
									CLEARADD<='0';		
									if GATE='0'  then
										count<=0;
										CLEARADD<='1';
										fsm<=release;
									end if;				
									
					when release =>
									CURRENT_STATE<="011";
									CLEARADD<='0';
									if count=RELEASE_TIME then
										count<=0;
										CLEARADD<='1';
										fsm<=idle;
									else count<=count+1;
									end if;
			end case;
		end if;
		
	end process;
	
	


end BEH;