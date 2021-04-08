library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity estrutura is
    port (

    )

architecture BehaviorOfTest of estrutura is
    process (variaveis_a_serem_analisadas)
        begin
            if(condicao1)   then
                c<='0';
            elsif(condicao2)    then
                c<='0';
            else
                c<='1';
            end if;
        end process;