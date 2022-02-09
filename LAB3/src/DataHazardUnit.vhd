library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity DataHazardUnit is
	Generic
	(
		NbitRegAddressing: natural := 5
	);
	Port
	(
		Rs1           : in  std_logic_vetor(NbitRegAddressing-1 downto 0);
		Rs2           : in  std_logic_vetor(NbitRegAddressing-1 downto 0);
		Rd            : in std_logic_vector(NbitRegAddressing-1 downto 0);
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
    end ;
	
end Arch;
