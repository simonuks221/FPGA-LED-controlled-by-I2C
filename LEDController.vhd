Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity LEDController is
port(
CLK: in std_logic;
RamContents: in std_logic_vector(8 downto 0);
RamAdress: out std_logic_vector(3 downto 0);
LED1: out std_logic;
LED2: out std_logic;
LED3: out std_logic
);
end entity;

architecture arc of LEDController is
signal LedIndex: integer := 0;
type t_LedBrightness is array(0 to 2) of integer;
signal LedBrightness: t_LedBrightness := (1,1,1);
signal CLKIndex :integer:= 0;

constant LEDPeriod : integer := 10;
begin

--Generate LED brightness
process(CLK)
begin
	--RamAdress <= conv_std_logic_vector(LedIndex, RamAdress'length);
	--LedIndex <= LedIndex + 1;
	--wait until CLK = '1';
	if CLK'event and CLK = '1' then
		if CLKIndex < LedBrightness(0) then
			LED1 <= '1';
		else
			LED1 <= '0';
		end if;
		
		if CLKIndex < LedBrightness(1) then
			LED2 <= '1';
		else
			LED2 <= '0';
		end if;
		
		if CLKIndex < LedBrightness(2) then
			LED3 <= '1';
		else
			LED3 <= '0';
		end if;
		
		if CLKIndex = LEDPeriod - 1 then
			CLKIndex <= 0;
		else
		CLKIndex <= CLKIndex + 1;
		end if;
	end if;
end process;

--Get LED brightness
process
begin
	if CLK'event and CLK = '1' then
		RamAdress <= conv_std_logic_vector(LedIndex+1, RamAdress'length);
		wait until CLK'event and CLK = '1';
		LEdBrightness(LedIndex) <= conv_integer(unsigned(RamContents));
		if LedIndex = 2 then
			LedIndex <= 0;
		else
			LedIndex <= LedIndex + 1;
		end if;
	end if;
	wait until CLK'event and CLK = '1';
end process;

end architecture;