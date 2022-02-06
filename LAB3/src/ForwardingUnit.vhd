library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity ForwardingUnit is
	Generic
	(
		NbitRegAddressing: natural := 5
		NbitOperands               : natural := 1
	);
	Port
	(

		Rs1              : in  std_logic_vetor(NbitRegAddressing-1 downto 0);
		Rs2              : in  std_logic_vetor(NbitRegAddressing-1 downto 0);
		DatafromExcStage : in std_logic_vector(NbitOperands-1 downto 0);
		DatafromMemStage : in std_logic_vector(NbitOperands-1 downto 0);
		ForwardA         : out std_logic;
		ForwardB         : out std_logic;
	);
end ForwardingUnit;

Architecture Behavioral of ForwardingUnit is
begin

	process(Rs1, Rs2)
	begin
		
	end process;

end Architecture;
