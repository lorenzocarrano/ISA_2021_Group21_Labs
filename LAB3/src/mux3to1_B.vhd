library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity mux3to1_B is
	Generic
	(
		Nbit : natural := 1
	);
	Port
	(
		A          : in  std_logic_vector(Nbit-1 downto 0);
		B          : in  std_logic_vector(Nbit-1 downto 0);	
		C          : in  std_logic_vector(Nbit-1 downto 0);
		D          : in  std_logic_vector(Nbit-1 downto 0);	
		sel        : in  std_logic_vector(1 downto 0);
		ALUSrc     : in  std_logic;
		Y    : out std_logic_vector(Nbit-1 downto 0)
	);
end mux3to1_B;

Architecture Behavioral of mux3to1_B is
begin	
	process(sel, ALUSrc, A, B, C, D)
	begin
		if ALUSrc = '1' then
			Y <= D;
		else
			if sel = "00" then 
				Y <= A;
			elsif sel = "01" then
				Y <= B;
			else 
				Y <= C;
			end if;
		end if;
	
	end process;

end Behavioral;
