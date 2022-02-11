library IEEE;
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;
use work.myTypes.all;

Entity DataHazardUnit is
	Generic
	(
		M: natural := 5
	);
	Port
	(
		Rs1           : in std_logic_vector(M-1 downto 0);
		Rs2           : in std_logic_vector(M-1 downto 0);
		Rd            : in std_logic_vector(M-1 downto 0);
		MemRead       : in std_logic;
		stall         : out std_logic
	);
end DataHazardUnit;

Architecture Arch of DataHazardUnit is
begin
	process(Rs1, Rs2, Rd, MemRead)
    begin   	
        if (MemRead = '1' and ((Rs1 = Rd) or (Rs2 = Rd))) then
            stall <= '1';
        else
            stall <= '0';
        end if;    
    end process;
	
end Arch;
