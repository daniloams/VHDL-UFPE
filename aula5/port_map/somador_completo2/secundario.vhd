library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity secundario is
	port( A, B, Cin: in std_logic;   
			Cout, S: out std_logic);

end secundario;

architecture comportamento of secundario is
begin
	S<= A xor (B xor Cin) ;
	Cout<= (A and B) or (B and Cin) or (A and Cin);
	
end comportamento;