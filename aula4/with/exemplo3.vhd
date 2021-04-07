--BIBLIOTECAS USADAS PARA REALIZAÇÃO DO PROGRAMA
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity exemplo3 is
	port
	(
	   -- ENTRADAS FISICAS!
		-- Obs:Não existe necessidade de modificar nada aqui!!!
		
		--DE0Nano
		-- Input ports 
		CLOCK_50 : in std_logic; -- Oscilador
		KEY : in std_logic_vector( 1 downto 0); --Botões que ficam na placa DE0-nano
		
		--output ports
		LED : out std_logic_vector(7 downto 0); --LEDS que ficam na placa DEO-nano

		--Expansion Header UFPE/DES kit
		-- input ports
		ehkey : in std_logic_vector(9 downto 0);-- bits 0-7=>chaves; bits 8 e 9 => pushbutton
		
		-- output ports
		dig7seg : out std_logic_vector(1 downto 0); -- Seletor do display
		d7seg : out std_logic_vector(8 downto 0) -- Indicator de 7seg selecionado por dig7seg
		
	);
end exemplo3;


architecture behaviorOfTest of exemplo3 is
--Colocar aqui todas os sinais que deseja utilizar("equivalentes a variaveis auxiliares")
begin

--TABELA DO 7 segmentos
--d7seg(1) liga 'a'
--d7seg(2) liga 'b'
--d7seg(3) liga 'c'
--d7seg(4) liga 'd'
--d7seg(5) liga 'e'
--d7seg(6) liga 'f'
--d7seg(7) liga 'g'

with ehkey(3 downto 0) select
    d7seg(7 downto 1) <= "0111111" when "0000", -- 0
             "0000110" when "0001", -- 1
             "1011011" when "0010", -- 2
             "1001111" when "0011", -- 3
             "1100110" when "0100", -- 4
             "1101101" when "0101", -- 5
             "0000000" when others;

end behaviorOfTest;
