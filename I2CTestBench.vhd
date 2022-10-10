	Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity I2CTestBench is
end entity;

architecture arc of I2CTestBench is

constant ClkPeriod : time := 10ps;

procedure SendI2C (signal sendData: in unsigned(7 downto 0);
signal SDA: out std_logic;
signal SCL: out std_logic) is
begin
	for k in 0 to 7 loop
		SCL <= '1';
		SDA <= sendData(k);
		wait for ClkPeriod /2;
		SCl <= '0';
		wait for ClkPeriod /2;
		--report "The index of k is " & integer'image(k);
		--report  "Value is " & integer'image(conv_integer(unsigned(commandBytes(k)), 1));
	end loop;
end SendI2C;

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


signal adress: unsigned(7 downto 0) := "01110111";
signal commandBytes: unsigned(7 downto 0) := "00000010";

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
	SDA <= '0';
	SCl <= '0';
	wait for ClkPeriod;
	SendI2C(adress, SDA, SCL);
	wait for ClkPeriod;
	SendI2C(commandBytes, SDA, SCL);
	wait;
end process;

end architecture;