library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity estrutura2 is
port ( a,b: in std_logic;
			c: out std_logic);
end entity;

architecture test2 of estrutura2 is
signal x: std_logic_vector(1 downto 0);
begin
-- a esta relacionado com a chave0
-- b esta relacionado com a chave1
-- c esta relacionado com a led0 
	x<= a & b;
process(a,b)		
begin 		 
		case x is
			when "00" =>  c <='0';
			when "01" =>  c <='1';
			when "10" =>  c <='1';
			when "11" =>  c <='1';
		end case;
end process;



end test2;