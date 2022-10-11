Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity I2CSlaveController is
generic(
THIS_ADRESS:unsigned := "01110111";
COMMAND1:unsigned := "00000001";
COMMAND2:unsigned := "00000010"
);
port(
SDA: in std_logic;
SCL: in std_logic;
Data_out: out std_logic_vector(7 downto 0)
);
end entity;

architecture arc of I2CSlaveController is
type dataReadType is (None, Adress, Comm1, Comm2);

signal dataRead: dataReadType := Adress;

signal start: std_logic := '0';
signal data: std_logic_vector(7 downto 0) := (others => '0');
signal dataIndex: integer := 0;
signal dataReadDone: std_logic := '0';
signal command1Done: std_logic := '0';
signal thisAdress: std_logic := '0';

begin

--start and end conditions if SDA changes while SCL is high
process(SDA)
	begin
	if SDA'event and SDA = '0' and SCL = '1' and start = '0' then
		start <= '1';
		dataRead <= Adress;
		report "Start";

	end if;
end process;
	
--Get data
process(SCL)
	begin
	if SCL'event and SCL = '1' and start = '1' then
		data(dataIndex) <= SDA;
		--report "The value of index is " & integer'image(dataIndex);
		if dataIndex = 7 then
			dataReadDone <= '1';
			dataIndex <= 0;
			report "Data read done";
		else
			dataIndex <= dataIndex + 1;
			dataReadDone <= '0';
		end if;
	end if;
end process;

--Data getting done, compare
process(dataReadDone, dataRead)
begin
	if dataReadDone'event and dataReadDone = '1' then
		if thisAdress = '1' then
			if unsigned(data) = COMMAND1 then
				--dataRead <= Comm1;
				report "Comm1";
			elsif unsigned(data) = COMMAND2 then
				report "Comm2";
				--dataRead <= Comm2;
			end if;
		elsif unsigned(data) = THIS_ADRESS then
				thisAdress <= '1';
				report "This address";
		end if;
	end if;
end process;

Data_out <= data;

end architecture;