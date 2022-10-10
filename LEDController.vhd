Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity LEDController is
port(
UpdateCLK: in std_logic;
LedCLK: in std_logic;
RamContents: in std_logic_vector(8 downto 0);
RamAdress: out std_logic_vector(3 downto 0);
LED1: out std_logic;
LED2: out std_logic;
LED3: out std_logic
);
end entity;

architecture arc of LEDController is
signal LedIndex: integer := 0;
type t_LedBrightness is array(0 to 3) of integer;
signal LedBrightness: t_LedBrightness := (0,0,0,0);
begin

--Update associated LED brightness
process(UpdateCLK)
begin
	RamAdress <= conv_std_logic_vector(LedIndex, RamAdress'length);
	LedIndex <= LedIndex + 1;
	wait until UpdateCLK = '1';
	
end process;

end architecture;