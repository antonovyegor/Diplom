library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity DAC is
    Port ( DACin : in  STD_LOGIC_VECTOR (12 downto 0);
           DAC_Clk : in  STD_LOGIC;
           DACout : out  STD_LOGIC);
end DAC;
 
architecture Behavioral of DAC is
 


signal DeltaB : std_LOGIC_VECTOR (14 downto 0) := "000000000000000";
 signal SigmaA : std_LOGIC_VECTOR (14 downto 0) := "000000000000000";
 signal SigmaB : std_LOGIC_VECTOR (14 downto 0) := "000000000000000";
 signal SigmaLatchD : std_LOGIC_VECTOR (14 downto 0) := "000000000000000";
 signal SigmaLatchQ : std_LOGIC_VECTOR (14 downto 0) := "000000000000000";
begin
   DeltaB(14) <= SigmaLatchQ(14);
   DeltaB(13) <= SigmaLatchQ(14);
   DeltaB(12 downto 0) <= "0000000000000";
   
   SigmaA <= DACin + DeltaB;
   SigmaB <= SigmaLatchQ;
   SigmaLatchD <= SigmaA + SigmaB;
   
   process (DAC_Clk) begin
   if DAC_Clk'event and DAC_Clk='1' then
      SigmaLatchQ <= SigmaLatchD;
      DACout <= SigmaLatchQ(14);
   end if;
   end process;
end Behavioral;