library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity exercicio1 is
	port (
		--inputs do sistema
		CLOCK_50 : in std_logic;
		KEY : in std_logic_vector ( 1 downto 0 );
		ehkey : in std_logic_vector ( 9 downto 0 );
		
		--outputs do sistema
		LED : out std_logic_vector ( 7 downto 0); 
		dig7seg : out std_logic_vector (1 downto 0);
		d7seg : out std_logic_vector (8 downto 0)
	
	);
end exercicio1;

architecture behaviorOfTest of exercicio1 is

begin
------------------------------------------------------------
-- Tabela do AND--
------------------------------------------------------------
with ehkey ( 1 downto 0 ) select
	led(0)<='0' when "00",
			  '0' when "10",
			  '0' when "01",
			  '1' when "11";
			  
------------------------------------------------------------
-- Tabela do OR--
------------------------------------------------------------

with ehkey ( 1 downto 0 ) select
	led (1)<='0' when "00",
				'1' when "01",
				'1' when "10",
				'1' when "11";
	
	
end behaviorOfTest;