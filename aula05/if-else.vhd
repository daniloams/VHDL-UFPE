library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ifelse is
    port (a,b: in std_logic;
            c: out std_logic);
end ifelse;

architecture test of estrutura is
    process (a,b)
        begin
            if(a)   then
                c<='0';
            elsif(condicao2)    then
                c<='0';
            else
                c<='1';
        end if;
    end process;
end test; 