library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity ForwardingUnit is
	Generic
	(
		NbitRegAddressing: natural := 5
	);
	Port
	(

		Rs1           : in  std_logic_vetor(NbitRegAddressing-1 downto 0);
		Rs2           : in  std_logic_vetor(NbitRegAddressing-1 downto 0);
		RdinMemStage  : in std_logic_vector(NbitRegAddressing-1 downto 0);
		RdinWrbStage  : in std_logic_vector(NbitRegAddressing-1 downto 0);
		ForwardA      : out std_logic_vector(1 downto 0);
		ForwardB      : out std_logic_vector(1 downto 0);
	);
end ForwardingUnit;

Architecture Behavioral of ForwardingUnit is
begin

	DriveForwardA_MUXselector: process(Rs1, Rs2, RdinExcStage, RdinMemStage)
	begin
		if RdinWrbStage = Rs1 then
			ForwardA <= "10";
		else if RdinMemStage = Rs1 then
			ForwardA <= "01";	
		else 
			ForwardA <= "00";

	end process;

	DriveForwardB_MUXselector: process(Rs1, Rs2, RdinExcStage, RdinMemStage)
	begin
		if RdinWrbStage = Rs2 then
			ForwardB <= "10";
		else if RdinMemStage = Rs2 then
			ForwardB <= "01";	
		else 
			ForwardB <= "00";	
	end process;

end Architecture;
