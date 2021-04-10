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
begin

--programa_secundario é o nome da entidade do programa secundario
--que deseja utilizar..

PORTA_LOGICA: entity work.programa_secundario3
port map (entrada0 => ehkey(0), entrada1 => ehkey(1), saida => led(0));
-- Repare na ordem dos termos do port map...
-- Perceba que "=>" não tem o significado de atribuição...
-- "=>" tem o significado de relacionado...
-- Assim, entrada0 esta relacionado com ehkey(0)...
--entrada1 esta relacionado com ehkey(1)...
--saida esta relacionado com led(0)... 
end behaviorOfTest;

