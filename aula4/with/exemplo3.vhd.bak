--BIBLIOTECAS USADAS PARA REALIZAÇÃO DO PROGRAMA
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity exemplo2 is
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
end exemplo2;


architecture behaviorOfTest of exemplo2 is
--Colocar aqui todas os sinais que deseja utilizar("equivalentes a variaveis auxiliares")
begin

--Simplesmente os parametros do vetor d7seg->display de 7 segmentos esta recebendo as informações
--das chaves 6 a 0. compile e de downloads para analisar o comportamento.
d7seg(7 downto 1)<=ehkey(6 downto 0);

--obs:d7seg(1) esta relacionado com o led "a"...**

end behaviorOfTest;
