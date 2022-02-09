library IEEE;
use IEEE.std_logic_1164.all; 
use work.myTypes;

entity riscv is
    Generic (
        OP_CODE_SIZE        : integer := OP_CODE_SIZE7;
        FUNC7_SIZE          : integer := FUNC7_SIZE;
        FUNC3_SIZE          : integer := FUNC3_SIZE
    );
	Port (
        CK                  : In  std_logic;
        RST_n               : In  std_logic;
		-- data memory
        DATA_ADDRESS        : Out std_logic_vector(N-1 DOWNTO 0);
        DATA_READ           : In  std_logic_vector(M-1 DOWNTO 0);
        DATA_WRITE          : Out std_logic_vector(M-1 DOWNTO 0);
        DATA_WRITE_EN       : Out std_logic_vector;
        DATA_READ_EN        : Out std_logic_vector;
        -- instruction memory
        IR_ADDRESS          : Out std_logic_vector(N-1 DOWNTO 0);
        Instruction         : In  std_logic_vector(M-1 DOWNTO 0);
    );

end riscv;

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
            STALL                   : OUT std_logic;
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
    
    end component;

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
            DATA_ADDRESS        : Out std_logic_vector(N-1 DOWNTO 0);
            DATA_READ           : In  std_logic_vector(M-1 DOWNTO 0);
            DATA_WRITE          : Out std_logic_vector(M-1 DOWNTO 0);
            DATA_WRITE_EN       : Out std_logic_vector;
            DATA_READ_EN        : Out std_logic_vector;
            -- instruction memory
            IR_ADDRESS          : Out std_logic_vector(N-1 DOWNTO 0);
            Instruction         : In  std_logic_vector(M-1 DOWNTO 0);
            -- Decode
            OPCODE              : OUT  std_logic_vector(OP_CODE_SIZE-1 DOWNTO 0);
            FUNC7               : OUT  std_logic_vector(FUNC7_SIZE-1 DOWNTO 0);
            FUNC3               : OUT  std_logic_vector(FUNC3_SIZE-1 DOWNTO 0);
            IF_ID_RS1_out           : OUT std_logic_vector(R-1 DOWNTO 0);
            IF_ID_RS3_out           : OUT std_logic_vector(R-1 DOWNTO 0);
            -- Execute
            EXECUTE_CONTROL_SIGNALS : IN std_logic_vector(EXECUTE_CONTROL_SIZE - 1 downto 0);
            ID_EX_RD_out            : OUT std_logic_vector(R-1 DOWNTO 0);
            ID_EX_MemRead_out       : OUT std_logic;
            -- Memory
            MemWrite                : IN std_logic;
            MemRead                 : IN std_logic;
            Branch                  : IN std_logic;
            -- Write Back
            RegWrite                : IN std_logic;
            MemToReg                : IN std_logic;  
        );
    
    end component;

    component DataHazardUnit is
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
    end component;

    signal MemWrite, MemRead, Branch, RegWrite, MemToReg, Stall: std_logic;
    signal ID_EX_MemRead, Stall_1, Stall_2: std_logic;
    signal EXECUTE_CONTROL_SIGNALS : std_logic_vector(EXECUTE_CONTROL_SIZE - 1 downto 0);
    signal Opcode: std_logic_vector(OP_CODE_SIZE-1 downto 0);
    signal Func7: std_logic_vector(FUNC7_SIZE-1 downto 0);
    signal Func3: std_logic_vector(FUNC3_SIZE-1 downto 0);

    signal IF_ID_RS1, IF_ID_RS1, ID_EX_Rd: std_logic_vector(R-1 downto 0);

    CU: Controller PORT MAP (
        OPCODE                  <= OPCODE,
        FUNCT3                  <= FUNCT3,
        FUNCT7                  <= FUNCT7,
        STALL                   <= STALL_2,
        EXECUTE_CONTROL_SIGNALS <= EXECUTE_CONTROL_SIGNALS,
        MemWrite                <= MemWrite,
        MemRead                 <= MemRead,
        Branch                  <= Branch,
        RegWrite                <= RegWrite,
        MemToReg                <= MemToReg
    );

    stall <= stall_1 OR stall_2; -- put OR gate with data hazard stall

    DP: Datapath PORT MAP (
        CK                  <= CK,
        RST_n               <= RST_n,
        STALL               <= STALL,
        DATA_ADDRESS        <= DATA_ADDRESS,
        DATA_READ           <= DATA_READ,
        DATA_WRITE          <= DATA_WRITE,
        DATA_WRITE_EN       <= DATA_WRITE_EN,
        DATA_READ_EN        <= DATA_READ_EN,
        IR_ADDRESS          <= IR_ADDRESS,
        Instruction         <= Instruction,
        OPCODE                  <= OPCODE,
        FUNCT3                  <= FUNCT3,
        FUNCT7                  <= FUNCT7,
        IF_ID_RS1_out           <= IF_ID_RS1,
        IF_ID_RS3_out           <= IF_ID_RS2,
        EXECUTE_CONTROL_SIGNALS <= EXECUTE_CONTROL_SIGNALS,
        ID_EX_RD_out            <= ID_EX_Rd,
        ID_EX_MemRead_out       <= ID_EX_MemRead,
        MemWrite                <= MemWrite,
        MemRead                 <= MemRead,
        Branch                  <= Branch,
        RegWrite                <= RegWrite,
        MemToReg                <= MemToReg

    );

    DP: DataHazardUnit PORT MAP (
        CK                  <= CK,
        RST                 <= RST_n,
        Rs1                 <= IF_ID_RS1,
        Rs2                 <= IF_ID_RS1,
        Rd                  <= ID_EX_Rd,
        MemRead             <= ID_EX_MemRead,
        STALL               <= STALL_1, -- put OR gate with data hazard stall
    )
end ARCH;