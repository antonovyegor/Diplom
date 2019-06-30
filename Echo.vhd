library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity Echo is 
port (
		Clock : in std_LOGIC;
		Signal_in : in std_logic_vector(11 downto 0);
		Signal_out : out std_logic_vector (11 downto 0);
		MUX_TIME : in std_logic_vector ( 2 downto 0);
		Level_out : in std_logic_vector (3 downto 0)
);
end entity;
architecture SYN of Echo is 

component FIFO 
PORT
	(
		clock		: IN STD_LOGIC ;
		data		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		rdreq		: IN STD_LOGIC ;
		wrreq		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
	);
end component;

type MEM8_12 is array (0 to 7) of std_LOGIC_VECTOR(11 downto 0);
signal Fifo_out : MEM8_12;
signal sum : std_LOGIC_VECTOR(11 downto 0) := X"000";
signal mux_out : std_LOGIC_VECTOR(11 downto 0);


begin

U1 : FIFO port map (clock => Clock, data => sum, q=> fifo_out(0), rdreq=>'1',wrreq=>'1' ) ;
U2 : FIFO port map (clock => Clock, data => fifo_out(0), q=> fifo_out(1), rdreq=>'1',wrreq=>'1' ) ;
U3 : FIFO port map (clock => Clock, data => fifo_out(1), q=> fifo_out(2), rdreq=>'1',wrreq=>'1' ) ;
U4 : FIFO port map (clock => Clock, data => fifo_out(2), q=> fifo_out(3), rdreq=>'1',wrreq=>'1' ) ;
U5 : FIFO port map (clock => Clock, data => fifo_out(3), q=> fifo_out(4), rdreq=>'1',wrreq=>'1' ) ;
U6 : FIFO port map (clock => Clock, data => fifo_out(4), q=> fifo_out(5), rdreq=>'1',wrreq=>'1' ) ;
U7 : FIFO port map (clock => Clock, data => fifo_out(5), q=> fifo_out(6), rdreq=>'1',wrreq=>'1' ) ;
U8 : FIFO port map (clock => Clock, data => fifo_out(6), q=> fifo_out(7), rdreq=>'1',wrreq=>'1' ) ;



process(Clock,MUX_TIME)
begin
case MUX_TIME is 
	when "000" => mux_out<=fifo_out(0); 
	when "001" => mux_out<=fifo_out(1); 
	when "010" => mux_out<=fifo_out(2); 
	when "011" => mux_out<=fifo_out(3); 
	when "100" => mux_out<=fifo_out(4); 
	when "101" => mux_out<=fifo_out(5); 
	when "110" => mux_out<=fifo_out(6); 
	when "111" => mux_out<=fifo_out(7); 
	when others => mux_out<="000000000000";
end case;
end process;

process(mux_out, Signal_in)
begin
		sum <= Signal_in + mux_out ;
end process;
Signal_out<=sum;

end SYN;