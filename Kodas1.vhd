Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use IEEE.NUMERIC_STD.ALL;

entity Kodas1 is --RAM TESTBENCH
end entity;

architecture behaviour1 of Kodas1 is

component RAM
port(
DATA_WRITE: in std_logic;
CLK: in std_logic;
DATA_IN: in std_logic_vector(3 downto 0);
ADDRESS_IN: in std_logic_vector(2 downto 0);
DATA_OUT: out std_logic_vector(3 downto 0)
);
end component;

signal DATA_WRITE: std_logic;
signal CLK: std_logic;
signal DATA_IN: std_logic_vector(3 downto 0);
signal ADDRESS_IN: std_logic_vector(2 downto 0);
signal DATA_OUT: std_logic_vector(3 downto 0);

constant CLK_PERIOD: time := 10ps;

begin

ram1: RAM port map(
	DATA_WRITE => DATA_WRITE,
	CLK => CLK,
	DATA_IN => DATA_IN,
	ADDRESS_IN => ADDRESS_IN,
	DATA_OUT => DATA_OUT
);

process
begin
	CLK <= '0';
	wait for CLK_PERIOD/2;
	CLK <= '1';
	wait for CLK_PERIOD/2;
end process;

process
begin
	--for i in 0 to 3 loop
	--	ADDRESS_IN <= std_logic_vector(to_unsigned(i, ADDRESS_IN'length));
	--	wait for CLK_PERIOD * 5;
	--end loop;
	DATA_WRITE <= '0';
	ADDRESS_IN <= std_logic_vector(to_unsigned(1, ADDRESS_IN'length));
	wait for CLK_PERIOD * 5;
	DATA_WRITE <= '1';
	ADDRESS_IN <= std_logic_vector(to_unsigned(1, ADDRESS_IN'length));
	DATA_IN <= std_logic_vector(to_unsigned(5, DATA_IN'length));
	wait for CLK_PERIOD * 5;
	DATA_WRITE <= '0';
	ADDRESS_IN <= std_logic_vector(to_unsigned(1, ADDRESS_IN'length));
	DATA_IN <= (others => '0');
	wait;
	
end process;



end architecture;
