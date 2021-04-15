library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std;

entity projeto is
port(D1,D2 EN1, EN2: in std_logic;
		Q1, Q2: out std_logic
		Y: out std_logic); 

end projeto;

architecture BehaviorOfTest of projeto is
signal A,B: std_logic;
signal v_aux: std_logic_vector(1 downto 0);

begin
latch_1: entity work.secundario
port map (D1<=D, D)
latch_2: entity work.secundario
port map: 

end BehaviorOfTest;