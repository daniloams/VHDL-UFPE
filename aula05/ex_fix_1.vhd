library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ex_fix_1 is
    port (a,b: in std_logic;
            c: out std_logic);
end ex_fix_1;

architecture test of ex_fix_1 is
    begin
        --some local variables
        process (a,b)
            begin
                if(a='0'and b='0') then
                    c<=0;                
                elsif(a='1'and b='1') then
                    c<=0;
                else
                    c<='1';
            end if;
end process;

end test;
