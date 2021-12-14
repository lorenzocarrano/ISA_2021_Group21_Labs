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
    -- FETCH signals --
    -- PC register that point the instruction adress target operation
    PC, PCNext : std_logic_vector(N-1 DOWNTO 0);
    -- For pipelined this stage
    IF_ID, IF_IDNext : std_logic_vector(N-1 DOWNTO 0);
    -- select how to calculate the PC adress value
    Jump_PC std_logic:
begin

    Reg: process(clk)
    begin
        if(clk = '1')
            if (rst = '1')
                PC <= (Others => '0');
                IF_ID <= (Others => '0');
            else
                PC <= PCNext;
                IF_ID <= IF_IDNext;
            end if;
        end if;  
    end process;

    -- FETCH part
    ADRESS_INSTRUCTION <= PC;
    Fetch: process(PC, PC_mux, Jump_PC, DATA_INSTRUCTION)
    begin
        -- chose adress instruction memory 
        case( PC_mux ) is
            when 0 =>
                PCNext <= PC + 4        
            when others =>
                PCNext <= Jump_PC
        end case ;
        
        IF_IDNext <= DATA_INSTRUCTION;
    end process Fetch;
    
end ARCH;
