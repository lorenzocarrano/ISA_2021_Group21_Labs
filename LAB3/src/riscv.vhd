library IEEE;
use IEEE.std_logic_1164.all; 

entity risc_core is
    Generic (
        N: natural := 10;
        K: natural := 1024;
        M: natural := 32
    );
	Port (
		CK                  : In  std_logic;
        RST_n               : In  std_logic;
        -- instruction memory
        ADRESS_INSTRUCTION  : Out std_logic_vector(N-1 DOWNTO 0);
        DATA_INSTRUCTION    : In  std_logic_vector(M-1 DOWNTO 0);
        -- data memory
        ADRESS_DATA         : Out std_logic_vector(N-1 DOWNTO 0);
        DATA_READ           : In  std_logic_vector(M-1 DOWNTO 0);
        DATA                : Out std_logic_vector(M-1 DOWNTO 0);
        ADRESS              : Out std_logic_vector(N-1 DOWNTO 0);
        WRITE_DATA          : Out std_logic_vector        
    );

end risc_core;


architecture ARCH of risc_core is

begin

end ARCH;
