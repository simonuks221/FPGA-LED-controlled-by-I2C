Library IEEE;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity LEDController is
port(
CLK: in std_logic;
RamContents: in std_logic_vector(8 downto 0);
RamAdress: out std_logic_vector(3 downto 0);
LED1: out std_logic;
LED2: out std_logic;
LED3: out std_logic;
UpdateDataIRQ: in std_logic
);
end entity;

architecture arc of LEDController is
signal LedIndex: integer := 0;
type t_LedBrightness is array(0 to 2) of integer;
signal LedBrightness: t_LedBrightness := (1,1,1);
signal CLKIndex :integer:= 0;
signal readRam : std_logic := '0';

constant LEDPeriod : integer := 10;
begin

--process 

--Generate LED brightness
process(CLK)
begin
	if rising_edge(CLK) then
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
		
		if CLKIndex = 10 then
			CLKIndex <= 0;
		else
			CLKIndex <= CLKIndex + 1;
		end if;
	end if;
		
end process;
		
--Update brightness
process(CLK, UpdateDataIRQ)
begin
	if rising_edge(CLK) and UpdateDataIRQ = '1' and readRam = '0' then
		RamAdress <= std_logic_vector(to_unsigned(LedIndex, RamAdress'length));
		readRam <= '1';
	elsif readRam = '0' then
		RamAdress <= (others => 'Z');
	end if;
	
	if rising_edge(CLK) and readRam = '1' then
		case LEDIndex is
				when 0 => 
					LEDIndex <= LEDIndex + 1;
					RamAdress <= std_logic_vector(to_unsigned(LedIndex + 1, RamAdress'length));
					readRam <= '1';
					LedBrightness(0) <= to_integer(unsigned(RamContents));
				when 1 => 
					LEDIndex <= LEDIndex + 1;
					RamAdress <= std_logic_vector(to_unsigned(LedIndex + 1, RamAdress'length));
					readRam <= '1';
					LedBrightness(1) <= to_integer(unsigned(RamContents));
				when others =>
					LEDIndex <= 0;
					readRam <= '0';
					RamAdress <= (others => 'Z');
					LedBrightness(2) <= to_integer(unsigned(RamContents));
					
		end case;		
	end if;
end process;

end architecture;