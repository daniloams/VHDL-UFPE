library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity teste is
	port
	(
	  LED : out std_logic_vector(7 downto 0); --LEDS que ficam na placa DEO-nano

		ehkey : in std_logic_vector(9 downto 0)-- bits 0-7=>chaves; bits 8 e 9 => pushbutton
		
	);
end teste;

architecture BehaviorOfTest of teste is
signal v_aux: std_logic_vector(3 downto 0);
begin 
SOMADOR1: entity work.secundario
port map(A => ehkey(0), B => ehkey(7), Cin => '0', Cout => v_aux(0), S => LED (0));
SOMADOR2: entity work.secundario
port map(A => ehkey(1), B=> ehkey(8), Cin=> v_aux(0), Cout=>LED (1), S=>LED (2));

end BehaviorOfTest;