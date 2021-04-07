library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std;

entity exercicio2 is 
	port (
		--input ports
		CLOCK_50 : in std_logic;
		KEY : in std_logic_vector ( 1 downto 0);
		ehkey : in std_logic_vector ( 9 downto 0);
		
		LED : in std_logic_vector (7 downto 0);
		dig7seg : in std_logic_vector ( 1 downto 0);
		d7seg : in std_logic_vector ( 8 downto )
		
	);
end exercicio2;

architecture behaviorOfTest of exercicio2 is 
--variaveis auxiliares

begin
d7seg( 7 downto 1 )<=ehkey( 6 downto 0);
-- de alguma forma eu preciso entender essa associaçao que foi pensada aqui...--
end behaviorOfTest;	