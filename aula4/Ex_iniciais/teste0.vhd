--BIBLIOTECAS USADAS PARA REALIZAÇÃO DO PROGRAMA
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity teste0 is
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
end teste0;


architecture behaviorOfTest of teste0 is
--Colocar aqui todas os sinais que deseja utilizar("equivalentes a variaveis auxiliares")
signal V1: std_logic;
signal V2: std_logic;
signal V3: std_logic;
begin

-- NOT
LED(0)<=ehkey(0) NOR ehkey(0);
--codigo equivalente => LED(0)<= not ehkey(0);
 
--OR 
V1<=ehkey(2) NOR ehkey(3);
LED(2)<=(V1) NOR (V1); 
--codigo equivalente => LED(2)<= ehkey(2) or ehkey(3);

--AND
V2<=ehkey(5) NOR ehkey(5);
V3<=ehkey(6) NOR ehkey(6);
LED(4)<=V2 NOR V3;
--codigo equivalente => LED(4)<= ehkey(5) and ehkey(6);
 
end behaviorOfTest;