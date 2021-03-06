library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity exercicio3 is
	port (
		CLOCK_50: in std_logic;
		KEY : in std_logic_vector( 1 downto 0 );
		ehkey : in std_logic_vector(9 downto 0 );
		
		LED : out std_logic_vector( 7 downto 0 );
		dig7seg : out std_logic_vector( 1 downto 0 );
		d7seg : out std_logic_vector ( 8 downto 0)
	
	);
	
end exercicio3;


architecture BehaviorOfTest of exercicio3 is
--some variables
begin
	with ehkey ( 3 downto 0 ) select
		d7seg(7 downto 1)<="0111111" when "0000",
								 "0000110" when "0001",
								 "1011011" when "0010",
								 "1001111" when "0011",
								 "1100110" when "0100",
								 "1101101" when "0101",
								 "1111101" when "0110",
								 "0000111" when "0111",
								 "1111111" when "1000",
								 "1101111" when "1001",
								 "1110111" when "1010",
								 "1111100" when "1011",
								 "0111001" when "1100",
								 "1011110" when "1101",
								 "1111001" when "1110",
								 "1110001" when "1111",
								 "0000000" when others;

end BehaviorOfTest;
