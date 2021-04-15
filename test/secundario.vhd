library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity secundario is
	port
	(
	D  : in std_logic;
	EN: in std_logic;
	Q  : out std_logic
	);
end secundario;

architecture behaviorOfTest of secundario is
signal vtest: std_logic_vector(4 downto 0);
begin
process
begin
if EN = '1' then
	Q<='D';
end if;
end process;

end behaviorOfTest;
