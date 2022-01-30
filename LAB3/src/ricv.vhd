library IEEE;
use IEEE.std_logic_1164.all; 
use work.myTypes;

entity Controller is
    Generic (
        OP_CODE_SIZE        : integer := OP_CODE_SIZE7;
        FUNC7_SIZE          : integer := FUNC7_SIZE;
        FUNC3_SIZE          : integer := FUNC3_SIZE;
        ALU_OPCODE_SIZE     : integer := 2;
        EXECUTE_CONTROL_SIZE: integer := 2;
        MEMORY_CONTROL_SIZE : integer := 2;
        WB_CONTROL_SIZE     : integer := 1
    );
	Port (
		OPCODE                  : IN std_logic_vector(OP_CODE_SIZE-1 downto 0);
        FUNCT3                  : IN std_logic_vector(FUNC3_SIZE-1 downto 0);
        FUNCT7                  : IN std_logic_vector(FUNC7_SIZE-1 downto 0);
        -- Execute
        EXECUTE_CONTROL_SIGNALS : OUT std_logic_vector(EXECUTE_CONTROL_SIZE - 1 downto 0);
        -- Memory
        MemWrite                : OUT std_logic;
        MemRead                 : OUT std_logic;
        Branch                  : OUT std_logic;
        -- Write Back
        RegWrite                : OUT std_logic;
        MemToReg                : OUT std_logic;
    );

end Controller;

architecture ARCH of Controller is
    
begin

    component Controller is
        Generic (
            OP_CODE_SIZE        : integer := OP_CODE_SIZE7;
            FUNC7_SIZE          : integer := FUNC7_SIZE;
            FUNC3_SIZE          : integer := FUNC3_SIZE;
            ALU_OPCODE_SIZE     : integer := 2;
            EXECUTE_CONTROL_SIZE: integer := 2;
            MEMORY_CONTROL_SIZE : integer := 2;
            WB_CONTROL_SIZE     : integer := 1
        );
        Port (
            OPCODE                  : IN std_logic_vector(OP_CODE_SIZE-1 downto 0);
            FUNCT3                  : IN std_logic_vector(FUNC3_SIZE-1 downto 0);
            FUNCT7                  : IN std_logic_vector(FUNC7_SIZE-1 downto 0);
            -- Execute
            EXECUTE_CONTROL_SIGNALS : OUT std_logic_vector(EXECUTE_CONTROL_SIZE - 1 downto 0);
            -- Memory
            MemWrite                : OUT std_logic;
            MemRead                 : OUT std_logic;
            Branch                  : OUT std_logic;
            -- Write Back
            RegWrite                : OUT std_logic;
            MemToReg                : OUT std_logic;
        );
    
    end Controller;

    component Datapath is
        Generic (
            N: natural := 10;
            K: natural := 1024;
            M: natural := 32;
            R: natural := 5         -- register adress
        );
        Port (
            CK                  : In  std_logic;
            RST_n               : In  std_logic;
            -- to stall the pipelined
            STALL               : In  std_logic;
            -- data memory
            ADRESS_DATA         : Out std_logic_vector(N-1 DOWNTO 0);
            DATA_READ           : In  std_logic_vector(M-1 DOWNTO 0);
            DATA                : Out std_logic_vector(M-1 DOWNTO 0);
            ADRESS              : Out std_logic_vector(N-1 DOWNTO 0);
            WRITE_DATA          : Out std_logic_vector;
            -- Fetch
            PC_address          : Out std_logic_vector(N-1 DOWNTO 0);
            Instruction         : In  std_logic_vector(M-1 DOWNTO 0);
            -- Decode
            -- Execute
            EXECUTE_CONTROL_SIGNALS : IN std_logic_vector(EXECUTE_CONTROL_SIZE - 1 downto 0);
            -- Memory
            MemWrite                : IN std_logic;
            MemRead                 : IN std_logic;
            Branch                  : IN std_logic;
            -- Write Back
            RegWrite                : IN std_logic;
            MemToReg                : IN std_logic;       
        );
    
    end Datapath;

    signal MemWrite, MemRead, Branch, RegWrite, MemToReg: std_logic;

end ARCH;