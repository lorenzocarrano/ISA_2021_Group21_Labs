library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity mux is
	Generic
	(
		Nbit : natural := 1
	);
	Port
	(
		A    : in  std_logic_vector(Nbit-1 downto 0);
		B    : in  std_logic_vector(Nbit-1 downto 0);
	        sel  : in  std_logic;
		Y    : out std_logic_vector(Nbit-1 downto 0)
	);
end mux;

Architecture Behavioral of mux is
begin

	process(sel)
	begin
		if sel = '0' then 
			Y <= A;
		else 
			Y <= B;
		end if;
	end process;

end Architecture;
