--BIBLIOTECAS USADAS PARA REALIZAÇÃO DO PROGRAMA
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity exemplo1 is
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
end exemplo1;


architecture behaviorOfTest of exemplo1 is
--Colocar aqui todas os sinais que deseja utilizar("equivalentes a variaveis auxiliares")
begin
--AND usando tabela completa...
with ehkey(1 downto 0) select
led(0)<='0' when "00",
		  '0' when "01",
		  '0' when "10",
		  '1' when "11";
--AND usando contração da tabela		  
with ehkey(4 downto 3) select
led(1)<='1' when "11",
		  '0' when others;
		  
end behaviorOfTest;
