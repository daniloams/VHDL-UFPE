
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity programa_secundario1 is
port(entrada0: in  std_logic;
	  entrada1: in	 std_logic;
	  saida:    out std_logic);
end programa_secundario1;
	  
architecture comportamento of programa_secundario1 is
begin
 
saida<= entrada0 or entrada1;
 
end comportamento;

