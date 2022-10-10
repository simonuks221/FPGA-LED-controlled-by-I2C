Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity I2CTestBench is
end entity;

architecture arc of I2CTestBench is

component I2CSlaveController
port(
SDA: in std_logic;
SCL: in std_logic;
Data_out: out std_logic_vector(7 downto 0)
);
end component;

signal SDA: std_logic := '1';
signal SCL: std_logic := '1';
signal Data_out: std_logic_vector(7 downto 0) := (others => '0');

constant ClkPeriod : time := 10ps;
signal commandBytes: unsigned(7 downto 0) := "11101110";
begin


slave1 : I2CSlaveController port map(
SDA => SDA,
SCL => SCL,
Data_out => Data_out);

process
	begin
	SDA <= '0';
	SCl <= '1';
	wait for ClkPeriod;
	for k in 0 to 7 loop
		SCL <= '1';
		SDA <= commandBytes(k);
		wait for ClkPeriod /2;
		SCl <= '0';
		wait for ClkPeriod /2;
		--report "The index of k is " & integer'image(k);
		--report  "Value is " & integer'image(conv_integer(unsigned(commandBytes(k)), 1));
	end loop;
wait;
end process;

end architecture;