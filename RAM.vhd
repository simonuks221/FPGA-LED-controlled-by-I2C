Library IEEE;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity RAM is
generic(
DATA_BUS_WIDTH: integer := 9;
ADRESS_BUS_WIDTH: integer := 4
);
port(
DATA_WRITE: in std_logic;
CLK: in std_logic;
DATA_IN: in std_logic_vector(8 downto 0);
ADDRESS_IN: in std_logic_vector(3 downto 0);
DATA_OUT: out std_logic_vector(8 downto 0)
);
end entity;

architecture arch of RAM is
	type RAM_ARRAY is array (0 to 2) of std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);--(0 to 2**ADRESS_BUS_WIDTH) of std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);
	signal RAM: RAM_ARRAY := ("000000011", "000000100", "000000101");
begin

process(CLK)
	begin
	if CLK'event and CLK = '1' then
		if DATA_WRITE = '1' then
			RAM(to_integer(unsigned(ADDRESS_IN))) <= DATA_IN;
			DATA_OUT <= (others => '0');
		else
			DATA_OUT <= RAM(to_integer(unsigned(ADDRESS_IN)));
		end if;
	end if;
	end process;
	

end architecture;