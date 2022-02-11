library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity mux4to1_A is
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
		ALUSrc_PC  : in  std_logic;
		Y          : out std_logic_vector(Nbit-1 downto 0)
	);
end mux4to1_A;

Architecture Behavioral of mux4to1_A is
begin	
	process(sel, ALUSrc_PC, A, B, C, D)
	begin
		if ALUSrc_PC = '1' then
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
