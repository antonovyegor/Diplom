library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity ADSR is 

	port (
		C : in std_logic;
		INPUT : in std_logic_vector(11 downto 0);
		OUTPUT : out std_logic_vector(11 downto 0);
		data : in natural;
		addr : in std_logic_vector (1 downto 0);
		ENABLE_TO_WRITE :std_logic;
		current_tick : in natural
	);
	end entity ;
	
architecture BEH of ADSR is
subtype INT12 is  integer range 0 to 4095 ;  
signal int1,int2 : int12 :=0;
signal attack_ticks,decay_ticks,sustain_ticks,release_ticks: natural;
signal MODE : std_logic_vector(1 downto 0);
begin

	process (C,ENABLE_TO_WRITE)
	begin
	if rising_edge(C) and ENABLE_TO_WRITE='1' then
			case addr is 
				when "00" => 	attack_ticks<=data;				
				when "01" =>	decay_ticks<=data;				
				when "10" =>	sustain_ticks<=data;
				when "11" =>	release_ticks<=data;
				when others => null;
			end case;
	
	end if;
	end process;

	int1<=conv_integer(INPUT);
	
	
	process (current_tick,MODE)
	begin
	case MODE is
		when "00" =>int2<=int1*current_tick/attack_ticks;			--ATTACK
		--when "01" =>int2<=int1*(((819*(current_tick-attack_ticks))/(decay_ticks-attack_ticks))+3276)/4095;			--DECAY
		--when "10" =>int2<=int1*8/10;			--SUSTAIN
		--when "11" =>int2<=int1*(3276*((current_tick-sustain_ticks)/(release_ticks-sustain_ticks)))/4095;			--RELEASE
		when others =>int2<=0;
	end case;
	end process;

	
	OUTPUT<= conv_std_logic_vector(int2,12);
		
		
	process (current_tick)
	begin
		if current_tick<attack_ticks then MODE<="00";
		elsif  current_tick<decay_ticks then MODE<="01";
		elsif current_tick<sustain_ticks then MODE<="10";
		elsif current_tick<release_ticks then MODE<="11";
		else  MODE<="UU";
	end if;
	end process;
end BEH;