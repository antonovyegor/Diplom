library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity Timer  is
	port (
		C : in std_logic;
		Button : in std_logic;
		EN : out std_logic;
		IMPULSE_TIME : in natural
		
		);
end entity;


architecture BEH of Timer is
 signal START : std_logic:='0';
 signal count : integer :=0;
 signal RESET : std_logic:='0';
 signal enable : std_logic :='0';
begin

	EN<=enable;
	process (Button,C)
	begin
		if rising_edge(C) then
			if RESET='1' then
				START<='0';
				enable<='0';
				count<=0;
				RESET<='0';
			else
				if Button='1' then
					START<='1';
					enable<='1';
				end if;

				if START='1' then
					count<=count+1;
				end if;

				if count=IMPULSE_TIME then
					RESET<='1';
				end if;

			end if;
		end if;


	end process;



end BEH;