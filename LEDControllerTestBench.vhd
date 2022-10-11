	Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity LEDControllerTestBench is
end entity;

architecture arc of LEDControllerTestBench is

signal CLK: std_logic := '0';
signal RamContents: std_logic_vector(8 downto 0);
signal RamAdress: std_logic_vector(3 downto 0);
signal LED1: std_logic;
signal LED2: std_logic;
signal LED3: std_logic;


component LEDController
port(
CLK: in std_logic;
RamContents: in std_logic_vector(8 downto 0);
RamAdress: out std_logic_vector(3 downto 0);
LED1: out std_logic;
LED2: out std_logic;
LED3: out std_logic
);
end component;

component RAM
port(
DATA_WRITE: in std_logic;
CLK: in std_logic;
DATA_IN: in std_logic_vector(8 downto 0);
ADDRESS_IN: in std_logic_vector(3 downto 0);
DATA_OUT: out std_logic_vector(8 downto 0)
);
end component;

begin

LEDController1: LEDController port map(
CLK =>CLK, RamContents => RamContents, RamAdress => RamAdress, LED1 => LED1, LED2 => LED2, LED3 => LED3);

RAM1: RAM port map(DATA_IN => "000000000", 
DATA_WRITE => '0', 
CLK => CLK, 
ADDRESS_IN => RamAdress, 
DATA_OUT => RamContents);


--Generate clock
process
begin
	CLK <= '0';
	wait for 10ps;
	CLK <= '1';
	wait for 10ps;
end process;

process
begin
	wait for 10ps;
	for index in 0 to 10 loop
		--RamContents <= conv_std_logic_vector(5, RamContents'length);
		wait for 40ps;
		--RamContents <= conv_std_logic_vector(4, RamContents'length);
		wait for 40ps;
		--RamContents <= conv_std_logic_vector(3, RamContents'length);
		wait for 40ps;
	end loop;
end process;


end architecture;