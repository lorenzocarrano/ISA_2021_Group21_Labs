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
begin	
	process(sel, A, B, C)
	begin
		if sel = "00" then 
			Y <= A;
		elsif sel = "01" then
			Y <= B;
		else 
			Y <= C;
		end if;
	
	end process;

end Behavioral;
