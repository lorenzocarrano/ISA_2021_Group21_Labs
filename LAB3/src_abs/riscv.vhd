library IEEE;
use IEEE.std_logic_1164.all; 
use work.myTypes.all;

entity riscv is
    Generic (
        OP_CODE_SIZE        : integer := OP_CODE_SIZE;
        FUNC7_SIZE          : integer := FUNC7_SIZE;
        FUNC3_SIZE          : integer := FUNC3_SIZE;
        N                   : integer := ADDRESS_BIT;
        M                   : integer := DATA_BIT
    );
	Port (
        CLK                 : In  std_logic;
        RST                 : In  std_logic;
		-- data memory
        DATA_ADDRESS        : Out std_logic_vector(N-1 DOWNTO 0);
        DATA_READ           : In  std_logic_vector(M-1 DOWNTO 0);
        DATA_WRITE          : Out std_logic_vector(M-1 DOWNTO 0);
        DATA_WRITE_EN       : Out std_logic;
        DATA_READ_EN        : Out std_logic;
        -- instruction memory
        IR_ADDRESS          : Out std_logic_vector(N-1 DOWNTO 0);
        Instruction         : In  std_logic_vector(M-1 DOWNTO 0)
    );

end riscv;

architecture ARCH of riscv is
    
    component Controller is
        Generic (
            OP_CODE_SIZE        : integer := OP_CODE_SIZE;
            FUNC7_SIZE          : integer := FUNC7_SIZE;
            FUNC3_SIZE          : integer := FUNC3_SIZE
        );
        Port (
            CLK                     : In  std_logic;
            RST                     : In  std_logic;
            OPCODE                  : IN std_logic_vector(6 downto 0);
            FUNCT3                  : IN std_logic_vector(2 downto 0);
            FUNCT7                  : IN std_logic_vector(FUNC7_SIZE-1 downto 0);
            -- Execute
            EXECUTE_CONTROL_SIGNALS : OUT std_logic_vector(EXECUTE_CONTROL_SIZE - 1 downto 0);
            ALUSrc                  : OUT std_logic;
            ALUSrc_PC               : OUT std_logic;
            -- Memory
            MemWrite                : OUT std_logic;
            MemRead                 : OUT std_logic;
            Branch                  : OUT std_logic;
            Branch_j                : OUT std_logic;
            -- Write Back
            RegWrite                : OUT std_logic;
            MemToReg                : OUT std_logic
        );
    
    end component;

    component Datapath is
        Generic (
            N: natural := 32;
            K: natural := 1024;
            M: natural := 32;
            R: natural := 5         -- register adress
        );
        Port (
            CLK                 : In  std_logic;
            RST                 : In  std_logic;
            -- to stall the pipelined
            STALL               : In  std_logic;
            -- data memory
            DATA_ADDRESS        : Out std_logic_vector(N-1 DOWNTO 0);
            DATA_READ           : In  std_logic_vector(M-1 DOWNTO 0);
            DATA_WRITE          : Out std_logic_vector(M-1 DOWNTO 0);
            DATA_WRITE_EN       : Out std_logic;
            DATA_READ_EN        : Out std_logic;
            -- instruction memory
            IR_ADDRESS          : Out std_logic_vector(N-1 DOWNTO 0);
            Instruction         : In  std_logic_vector(M-1 DOWNTO 0);
            -- Decode
            OPCODE              : OUT  std_logic_vector(OP_CODE_SIZE-1 DOWNTO 0);
            FUNC7               : OUT  std_logic_vector(FUNC7_SIZE-1 DOWNTO 0);
            FUNC3               : OUT  std_logic_vector(FUNC3_SIZE-1 DOWNTO 0);
            IF_ID_RS1_out           : OUT std_logic_vector(R-1 DOWNTO 0);
            IF_ID_RS2_out           : OUT std_logic_vector(R-1 DOWNTO 0);
            -- Execute
            EXECUTE_CONTROL_SIGNALS : IN std_logic_vector(EXECUTE_CONTROL_SIZE - 1 downto 0);
            ALUSrc                  : IN std_logic;
            ALUSrc_PC               : IN std_logic;
            ID_EX_RD_out            : OUT std_logic_vector(R-1 DOWNTO 0);
            ID_EX_MemRead_out       : OUT std_logic;
            -- Memory
            MemWrite                : IN std_logic;
            MemRead                 : IN std_logic;
            Branch                  : IN std_logic;
            Branch_j                : IN std_logic;
            -- Write Back
            RegWrite                : IN std_logic;
            MemToReg                : IN std_logic      
        );
    
    end component;
    
    component DataHazardUnit is
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
    end component;

    signal MemWrite, MemRead, Branch, Branch_j, RegWrite, MemToReg, Stall, ALUSrc, ALUSrc_PC: std_logic;
    signal ID_EX_MemRead: std_logic;
    signal EXECUTE_CONTROL_SIGNALS : std_logic_vector(EXECUTE_CONTROL_SIZE - 1 downto 0);
    signal Opcode: std_logic_vector(OP_CODE_SIZE-1 downto 0);
    signal Funct7: std_logic_vector(FUNC7_SIZE-1 downto 0);
    signal Funct3: std_logic_vector(FUNC3_SIZE-1 downto 0);

    signal IF_ID_RS1, IF_ID_RS2, ID_EX_Rd: std_logic_vector(REGISTER_ADDRESS-1 downto 0);

begin

    CU: Controller PORT MAP (
        CLK                    => CLK,
        RST                    => RST,
        OPCODE                 => OPCODE,
        FUNCT3                 => FUNCT3,
        FUNCT7                 => FUNCT7,
        EXECUTE_CONTROL_SIGNALS=> EXECUTE_CONTROL_SIGNALS,
        MemWrite               => MemWrite,
        MemRead                => MemRead,
        Branch                 => Branch,
        Branch_j               => Branch_j,
        RegWrite               => RegWrite,
        MemToReg               => MemToReg,
        ALUSrc                 => ALUSrc,
        ALUSrc_PC              => ALUSrc_PC);

    DP: Datapath PORT MAP (
        CLK                => CLK,
        RST                => RST,
        STALL              => STALL,
        DATA_ADDRESS       => DATA_ADDRESS,
        DATA_READ          => DATA_READ,
        DATA_WRITE         => DATA_WRITE,
        DATA_WRITE_EN      => DATA_WRITE_EN,
        DATA_READ_EN       => DATA_READ_EN,
        IR_ADDRESS         => IR_ADDRESS,
        Instruction        => Instruction,
        OPCODE                 => OPCODE,
        FUNC3                  => FUNCT3,
        FUNC7                  => FUNCT7,
        IF_ID_RS1_out          => IF_ID_RS1,
        IF_ID_RS2_out          => IF_ID_RS2,
        EXECUTE_CONTROL_SIGNALS=> EXECUTE_CONTROL_SIGNALS,
        ID_EX_RD_out           => ID_EX_Rd,
        ID_EX_MemRead_out      => ID_EX_MemRead,
        MemWrite               => MemWrite,
        MemRead                => MemRead,
        Branch                 => Branch,
        Branch_j               => Branch_j,
        RegWrite               => RegWrite,
        MemToReg               => MemToReg,
        ALUSrc                 => ALUSrc,
        ALUSrc_PC              => ALUSrc_PC);

    DH: DataHazardUnit PORT MAP (
        Rs1                => IF_ID_RS1,
        Rs2                => IF_ID_RS2,
        Rd                 => ID_EX_Rd,
        MemRead            => ID_EX_MemRead,
        STALL              => STALL);

end ARCH;