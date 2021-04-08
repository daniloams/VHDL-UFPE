library IEEE;
use IEEE.std_logic_1164;
use IEEE.numeric_std;

entity estrutura is
    port ( a,b: in std_logic;
            c: out std_logic);
end estrutura;

architecture test of estrutura is
    
begin
--some local variables can be set up here
    process ( a,b )
        begin

            if (a='0'and b='0') then
                c<='0';
            elsif (a='1' and b='1') then
                c<='1';
        end if ;
    end process;

end test; 