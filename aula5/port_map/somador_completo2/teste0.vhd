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
signal v_aux: std_logic_vector(3 downto 0);
begin

--programa_secundario é o nome da entidade do programa secundario!!

SOMADOR1: entity work.programa_secundario
port map (A => ehkey(3), B => ehkey(7), Cin => '0', S => led(0), Cout => v_aux(0));
SOMADOR2: entity work.programa_secundario
port map (A => ehkey(2), B => ehkey(6), Cin => v_aux(0), S => led(1), Cout => led(2));

-- Repare na ordem dos termos do port map...
-- Perceba que "=>" não tem o significado de atribuição...
-- "=>" tem o significado de relacionado...
end behaviorOfTest;

