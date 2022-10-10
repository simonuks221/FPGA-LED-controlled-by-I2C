Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use IEEE.NUMERIC_STD.ALL;

entity I2CSlaveController is
port(
SDA: in std_logic;
SCL: in std_logic;
Data_out: out std_logic_vector(7 downto 0)
);
end entity;

architecture arc of I2CSlaveController is
signal start: std_logic := '0';
signal data: std_logic_vector(7 downto 0) := (others => '0');
signal dataIndex: integer := 0;

begin

--start and end conditions if SDA changes while SCL is high
process(SDA)
	begin
	if SDA'event and SDA = '0' and SCL = '1' and start = '0' then
		start <= '1';
		report "Start";
	end if;
end process;
	
--Get data
process(SCL)
	begin
	if SCL'event and SCL = '1' and start = '1' then
		data(dataIndex) <= SDA;
		
		report "The value of index is " & integer'image(dataIndex);
		if dataIndex = 6 then
			--Data_out <= conv_std_logic_vector(128, Data_out'length);
			
			--end if;
		end if;
		dataIndex <= dataIndex + 1;
	end if;
end process;

Data_out <= data;

end architecture;