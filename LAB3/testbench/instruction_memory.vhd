library IEEE;
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all; 
use work.myTypes;

entity instruction_memory is
    generic (
        N_BIT: integer := 32;
        N_DATA: integer := 32
    );
    port (
        RST         :    IN std_logic;
        CLK         :    IN std_logic;
        Address     :    IN std_logic_vector(N_BIT-1 downto 0);
        Instruction :    OUT std_logic_vector(N_DATA-1 downto 0)
    );
end instruction_memory;

architecture Arch of instruction_memory is
    
    type mem_array is array (0 to 24) of std_logic_vector (N_BIT - 1 downto 0); 
	signal memory : mem_array := (
		x"00700813",
        x"0fc10217",
        x"ffc20213",
        x"0fc10297",
        x"01028293",
        x"400006b7",
        x"fff68693",
        x"02080863",
        x"00022403",
        x"41f45493",
        x"00944533",
        x"0014f493",
        x"00950533",
        x"00420213",
        x"fff80813",
        x"00d525b3",
        x"fc058ee3",
        x"000506b3",
        x"fd5ff0ef",
        x"00d2a023",
        x"000000ef",
        x"00000013",
        x"00000013",
        x"00000013",
        x"00000013"
	);

begin
    
    process(CLK, Address)
    begin
        if (CLK = '0') then
            Instruction <= memory(to_integer(unsigned(Address(6 downto 2))));		
        end if;
    end process;
    	
    
end architecture Arch;