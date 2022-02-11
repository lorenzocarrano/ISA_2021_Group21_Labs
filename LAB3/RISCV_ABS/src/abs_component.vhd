library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

Entity abs_component is
	Generic
	(
		Nbit : natural := 32
	);
	Port
	(
		A          : in  std_logic_vector(Nbit-1 downto 0);
		Y          : out std_logic_vector(Nbit-1 downto 0)
	);
end abs_component;

Architecture Behavioral of abs_component is
begin	
	process(A)
	begin
		if (A(Nbit-1) = '1') then
			Y <= Not(A) + 1;
		else
            Y <= A;
		end if;
	end process;

end Behavioral;
