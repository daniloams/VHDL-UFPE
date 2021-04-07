library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pratica1 is
	port (
		CLOCK_50 : in std_logic;
		KEY : in std_logic_vector( 1 downto 0);
		
		ehkey : in std_logic_vector( 9 downto 0);
		
		LED : out std_logic_vector( 7 downto 0 );
		dig7seg : out std_logic_vector( 1 downto 0);
		d7seg : out std_logic_vector( 8 downto 0)
	);
end pratica1;

architecture behaviorOfTest of pratica1 is
signal A: std_logic;
signal B: std_logic;
signal C: std_logic;
begin
---------------------------------------------------------------------------------------
--APLICAÇAO COM PORTAS NOR AGR--
----------------------------------------------------------------------------------------

-- NOT com portas NAND
--	LED(0)<=ehkey(1) NAND ehkey(1);
	
-- AND com portas NAND
--	A<=ehkey(1) NAND ehkey(2);
--	LED(1)<= A NAND A;

-- OR com portas NAND
--	B<=ehkey(1) NAND ehkey(1);
--	C<=ehkey(2) NAND ehkey(2);
--	LED(2)<= B NAND C;
	
---------------------------------------------------------------------------------------
--APLICAÇAO COM PORTAS NOR AGR--
---------------------------------------------------------------------------------------

-- NOT com portas NOR
	LED(0)<=ehkey(1) NOR ehkey(1);
	
-- OR com portas NOR
	A<=ehkey(1) NOR ehkey(2);
	LED(1)<= A NOR A;

-- AND com portas NOR
	B<=ehkey(1) NOR ehkey(1);
	C<=ehkey(2) NOR ehkey(2);
	LED(2)<= B NOR C;
	
end behaviorOfTest;