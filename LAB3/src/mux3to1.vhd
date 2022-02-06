library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity mux3to1 is
	Generic
	(
		Nbit : natural := 1
	);
	Port
	(
		A    : in  std_logic_vector(Nbit-1 downto 0);
		B    : in  std_logic_vector(Nbit-1 downto 0);	
		C    : in  std_logic_vector(Nbit-1 downto 0);	
		sel  : in  std_logic_vector(1 downto 0);
		Y    : out std_logic_vector(Nbit-1 downto 0)
	);
end mux3to1;

Architecture Behavioral of mux3to1 is
	
	process(sel)
	begin
		if sel = "00" then 
			Y <= A;
		
		else if sel = "01"
			Y <= B;
		
		else 
			Y <= C;
		end if;
	
	end process;

end Architecture;
