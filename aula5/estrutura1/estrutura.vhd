library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity estrutura is

port ( a,b: in std_logic;
			c: out std_logic);
			
end estrutura;

architecture test of estrutura is 

begin
-- a esta relacionado com a chave0
-- b esta relacionado com a chave1
-- c esta relacionado com a led0
process (a,b)
	begin
		if(a='0' and b='0')    then 
			c<= '0';
		elsif(a='1' and b='1') then 
			c<='1';
		else 
			c<='0';
	end if;
end process;
	
end test;