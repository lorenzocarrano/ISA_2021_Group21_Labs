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

		Rs1           : in std_logic_vector(NbitRegAddressing-1 downto 0);
		Rs2           : in std_logic_vector(NbitRegAddressing-1 downto 0);
		RdinMemStage  : in std_logic_vector(NbitRegAddressing-1 downto 0);
		RdinWrbStage  : in std_logic_vector(NbitRegAddressing-1 downto 0);
		MEM_WB_RegWrite : in std_logic;
		EX_MEM_RegWrite : in std_logic;
		ForwardA      : out std_logic_vector(1 downto 0);
		ForwardB      : out std_logic_vector(1 downto 0)
	);
end ForwardingUnit;

Architecture Behavioral of ForwardingUnit is
begin

	DriveForwardA_MUXselector: process(Rs1, RdinWrbStage, RdinMemStage, MEM_WB_RegWrite, EX_MEM_RegWrite)
	begin
		if (RdinMemStage = Rs1 and EX_MEM_RegWrite = '1') then
			ForwardA <= "10";	
		elsif (RdinWrbStage = Rs1 and MEM_WB_RegWrite = '1') then
			ForwardA <= "01";
		else 
			ForwardA <= "00";
		end if;
	end process;

	DriveForwardB_MUXselector: process(Rs2, RdinWrbStage, RdinMemStage)
	begin
		if (RdinMemStage = Rs2 and EX_MEM_RegWrite = '1') then
			ForwardB <= "10";	
		elsif (RdinWrbStage = Rs2 and MEM_WB_RegWrite = '1') then
			ForwardB <= "01";
		else 
			ForwardB <= "00";
		end if;	
	end process;
	
end Behavioral;
