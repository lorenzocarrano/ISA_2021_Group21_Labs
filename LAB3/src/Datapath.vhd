library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity Datapath is
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

end Datapath;


architecture ARCH of Datapath is
    -- FETCH signals --
    signal PC_MUX:  std_logic;
    -- PC register that point the instruction adress target operation
    signal PC, PCNext : std_logic_vector(N-1 DOWNTO 0);
    -- For pipelined this stage
    signal IF_ID_PC, IF_ID_PC_Next                   : std_logic_vector(N-1 DOWNTO 0);
    signal IF_ID_INSTRUCTION, IF_ID_INSTRUCTION_next : std_logic_vector(M-1 DOWNTO 0);

    -- DECODE signals --
    -- Register File. Read always, write only when needed
    component Register_file is

        Generic (N_address: integer:= 5;
                 N_tot:     integer:=32);
    
        Port (	Read_register_1:	In	std_logic_vector(N_address-1 downto 0);
                Read_register_2:	In	std_logic_vector(N_address-1 downto 0);
                Write_register:     In  std_logic_vector(N_address-1 downto 0);
                Write_data:         In  std_logic_vector(N_tot-1 downto 0);
                Reset:	            In	std_logic;
                Clk:	            In	std_logic;
                Enable_Write:       In 	std_logic;
                Read_data_1:        Out std_logic_vector(N_tot-1 downto 0);
                Read_data_2:        Out std_logic_vector(N_tot-1 downto 0));
    
    end component;

    -- Immedaiate generator
    component immediate_gen is

        generic (n_tot:     integer:=32);
        port (	instruction:    in	std_logic_vector(n_tot-1 downto 0);
                immediate:      out std_logic_vector(n_tot-1 downto 0));
    
    end component;

    -- signals to connect to register file
    signal read_data_f1: std_logic_vector(M-1 DOWNTO 0);
    signal read_data_f2: std_logic_vector(M-1 DOWNTO 0);
    signal writa_data_f: std_logic_vector(M-1 DOWNTO 0);
    signal read_addr_f1: std_logic_vector(R-1 DOWNTO 0);
    signal read_addr_f2: std_logic_vector(R-1 DOWNTO 0);
    signal writa_addr_f: std_logic_vector(R-1 DOWNTO 0);
    -- miss immediate generator --
    -- For pipelined this stage
    signal ID_EX_read_1, ID_EX_read_1_Next: std_logic_vector(M-1 DOWNTO 0);
    signal ID_EX_read_2, ID_EX_read_2_Next: std_logic_vector(M-1 DOWNTO 0);
    signal ID_EX_immediate, ID_EX_immediate_next: std_logic_vector(M-1 DOWNTO 0);
    signal Jump_PC: std_logic_vector(M-1 DOWNTO 0);
    signal ID_EX_PC, ID_EX_PC_Next: std_logic_vector(N-1 DOWNTO 0);
    signal ID_EX_RD, ID_EX_RD_Next: std_logic_vector(R-1 DOWNTO 0);
    signal ID_EX_RS1, ID_EX_RS1_Next: std_logic_vector(R-1 DOWNTO 0);
    signal ID_EX_RS2, ID_EX_RS2_Next: std_logic_vector(R-1 DOWNTO 0);
    -- Execute controll signal
    signal ID_EX_EXECUTE_CONTROL_SIGNALS, ID_EX_EXECUTE_CONTROL_SIGNALS_Next: std_logic_vector(EXECUTE_CONTROL_SIZE - 1 downto 0);
    signal ForwardAmuxSelector, ForwardBmuxSelector : std_logic_vector(1 downto 0);
    -- Memory controll signal
    signal ID_EX_MemWrite, ID_EX_MemWrite_next : std_logic;
    signal ID_EX_MemRead, ID_EX_MemRead_next : std_logic;
    signal ID_EX_Branch, ID_EX_Branch_next : std_logic;
    -- Write Back controll signal
    signal ID_EX_RegWrite, ID_EX_RegWrite_next : std_logic;
    signal ID_EX_MemToReg, ID_EX_MemToReg_next : std_logic;

    -- EXECUTE signals
    Component mux3to1 is
        Generic
        (
            Nbit : natural := 1
        );
        Port
        (
            A    : in  std_logic_vector(Nbit-1 downto 0);
            B    : in  std_logic_vector(Nbit-1 downto 0);	
            C    : in  std_logic_vector(Nbit-1 downto 0);	
            sel  : in  std_logic_vector(1 downto 0);
            Y    : out std_logic_vector(Nbit-1 downto 0)
        );
    end Component;

    Component ALU is
        Generic( NbitOperands : integer := 32 ); 
        Port
        (
            A    : in std_logic_vector(NbitOperands -1 downto 0); --Operand1
            B    : in std_logic_vector(NbitOperands -1 downto 0); --Operand2
            ctrl : in std_logic_vector(3 downto 0); --Control Signal
            Y    : out std_logic_vector(NbitOperands -1 downto 0) --Result
        );
    end Component;

    Component ForwardingUnit is
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
            ForwardA      : out std_logic_vector(1 downto 0);
            ForwardB      : out std_logic_vector(1 downto 0)
        );
    end Component;

    signal ALU_operand1: std_logic_vector(M-1 downto 0);
    signal ALU_operand2: std_logic_vector(M-1 downto 0);
    signal ALU_result: std_logic_vector(M-1 DOWNTO 0);
    signal EX_read_2_or_Immediate: std_logic_vector(M-1 DOWNTO 0);
    -- For pipelined this stage
    signal EX_MEM_ALU_result_zero, EX_MEM_ALU_result_zero_Next: std_logic_vector(M-1 DOWNTO 0);
    signal EX_MEM_ALU_result, EX_MEM_ALU_result_Next: std_logic_vector(M-1 DOWNTO 0);
    signal EX_MEM_FowardB_Next, EX_MEM_FowardB: std_logic_vector(M-1 DOWNTO 0);
    signal EX_MEM_RD, EX_MEM_RD_Next: std_logic_vector(R-1 DOWNTO 0);
    -- Memory controll signal
    signal EX_MEM_MemWrite, EX_MEM_MemWrite_next : std_logic;
    signal EX_MEM_MemRead, EX_MEM_MemRead_next : std_logic;
    signal EX_MEM_Branch, EX_MEM_Branch_next : std_logic;
    -- Write Back controll signal
    signal EX_MEM_RegWrite, EX_MEM_RegWrite_next : std_logic;
    signal EX_MEM_MemToReg, EX_MEM_MemToReg_next : std_logic;

    -- MEMORY signals
    -- data read from Data Memory
    signal read_data: std_logic_vector(M-1 DOWNTO 0);
    signal write_data: std_logic_vector(M-1 DOWNTO 0);
    signal address_data_memory: std_logic_vector(M-1 DOWNTO 0);
    -- For pipelined this stage
    signal MEM_WB_read_data, MEM_WB_read_data_Next: std_logic_vector(M-1 DOWNTO 0);
    signal MEM_WB_ALU_result, MEM_WB_ALU_result_Next: std_logic_vector(M-1 DOWNTO 0);
    signal MEM_WB_RD, MEM_WB_RD_Next: std_logic_vector(4 DOWNTO 0);
    -- Write Back controll signal
    signal MEM_WB_RegWrite, MEM_WB_RegWrite_next : std_logic;
    signal MEM_WB_MemToReg, MEM_WB_MemToReg_next : std_logic;

    -- WRITE BACK
    -- choose if write back data from Data memory or from ALU result

begin

    Reg: process(clk)
    begin
        if(clk = '1') then
            if (rst = '1') then
                -- FETCH
                PC <= (Others => '0');
                IF_ID_PC <= (Others => '0');
                IF_ID_INSTRUCTION <= (Others => '0');
                -- DECODE
                ID_EX_PC <= (Others => '0');
                ID_EX_read_1 <= (Others => '0');
                ID_EX_read_2 <= (Others => '0');
                ID_EX_RD <= (Others => '0');
                ID_EX_RS1 <= (Others => '0');
                ID_EX_RS2 <= (Others => '0');
                ID_EX_immediate <= (others => '0');
                -- controll
                ID_EX_EXECUTE_CONTROL_SIGNALS <= (others => '0');
                ID_EX_MemWrite <= '0';
                ID_EX_MemRead <= '0';
                ID_EX_Branch <= '0';
                ID_EX_RegWrite <= '0';
                ID_EX_MemToReg <= '0';
                -- EXECUTE
                EX_MEM_ALU_result_zero <= (Others => '0');
                EX_MEM_ALU_result <= (Others => '0');
                EX_MEM_FowardB <= (Others => '0');
                EX_MEM_RD <= (Others => '0');
                -- controll
                EX_MEM_MemWrite <= '0';
                EX_MEM_MemRead <= '0';
                EX_MEM_Branch <= '0';
                EX_MEM_RegWrite <= '0';
                EX_MEM_MemToReg <= '0';
                -- MEMORY
                MEM_WB_read_data <= (others => '0');
                MEM_WB_ALU_result <= (Others => '0');
                MEM_WB_RD <= (Others => '0');
                -- controll
                MEM_WB_RegWrite <= '0';
                MEM_WB_MemToReg <= '0';
            else
                -- FETCH

                -- emulat PCWrite, IF/IDWrite
                if (STALL = '0' and Branch_j = '0' and PC_MUX = '0') then
                    PC <= PCNext;
                    IF_ID_INSTRUCTION <= IF_ID_INSTRUCTION_next;
                else
                    if (Stall = '1') then
                        -- whens stall
                        PC <= PC;
                        IF_ID_INSTRUCTION <= IF_ID_INSTRUCTION;
                    elsif (PC_MUX = '1') then
                        -- whens branch taken
                        PC <= PCNext;
                        IF_ID_INSTRUCTION <= NOP_INSTRUCTION;
                    else 
                        PC <= PCNext;
                        IF_ID_INSTRUCTION <= IF_ID_INSTRUCTION_next;
                    end if;
                end if;
                -- DECODE
                ID_EX_PC <= ID_EX_PC_next;
                ID_EX_read_1 <= ID_EX_read_1_Next;
                ID_EX_read_2 <= ID_EX_read_2_Next;
                ID_EX_RD <= ID_EX_RD_Next;
                ID_EX_immediate <= ID_EX_immediate_next;
                ID_EX_EXECUTE_CONTROL_SIGNALS <= ID_EX_EXECUTE_CONTROL_SIGNALS_Next;
                ID_EX_MemWrite <= ID_EX_MemWrite_next;
                ID_EX_MemRead <= ID_EX_MemRead_next;
                ID_EX_Branch <= ID_EX_Branch_next;
                ID_EX_RegWrite <= ID_EX_RegWrite_next;
                ID_EX_MemToReg <= ID_EX_MemToReg_next;
                -- EXECUTE
                EX_MEM_ALU_result_zero <= EX_MEM_ALU_result_zero_Next;
                EX_MEM_ALU_result <= EX_MEM_ALU_result_Next;
                EX_MEM_FowardB <= EX_MEM_FowardB_Next;
                EX_MEM_RD <= EX_MEM_RD_Next;       
                -- controll
                EX_MEM_MemWrite <= EX_MEM_MemWrite_next;
                EX_MEM_MemRead <= EX_MEM_MemRead_next;
                EX_MEM_Branch <= EX_MEM_Branch_next;
                EX_MEM_RegWrite <= EX_MEM_RegWrite_next;
                EX_MEM_MemToReg <= EX_MEM_MemToReg_next;
                -- MEMORY
                MEM_WB_read_data <= MEM_WB_read_data_Next;
                MEM_WB_ALU_result <= MEM_WB_ALU_result_Next;
                MEM_WB_RD <= MEM_WB_RD_Next;
                -- controll
                MEM_WB_RegWrite <= MEM_WB_RegWrite_next;
                MEM_WB_MemToReg <= MEM_WB_MemToReg_next; 
            end if;
        end if;  
    end process;

    -- FETCH part
    IR_ADDRESS <= PC;
    Fetch: process(PC, Jump_PC, PC_MUX)
    begin
        -- upgrade PC value properly
        if (PC_MUX = '0') then
            PCNext <= PC + 4;
        else
            PCNext <= Jump_PC;
        end if;
    end process Fetch;
    -- PIPELINE fetch
    IF_ID_PC_Next  <= PC;
    IF_ID_INSTRUCTION_next <= Instruction;

    -- DECODE part
    OPCODE       <= IF_ID_INSTRUCTION(6 DOWNTO 0);
    FUNC3        <= IF_ID_INSTRUCTION(14 DOWNTO 12);
    FUNC7        <= IF_ID_INSTRUCTION(31 DOWNTO 25);
    read_addr_f1 <= IF_ID_INSTRUCTION(19 DOWNTO 15);
    read_addr_f2 <= IF_ID_INSTRUCTION(24 DOWNTO 20);
    -- signals for Data Hazard
    IF_ID_RS1_out <= read_addr_f1;
    IF_ID_RS2_out <= read_addr_f2;
    writa_addr_f  <= MEM_WB_RD;
    -- calcuate address
    Jump_PC       <= IF_ID_PC + (ID_EX_immediate_next(M-2 downto 1) & '0');
    RF: Register_file
        -- generic map (
        --     N               => 5;
        --     N_tot           => 32
        -- )
        port map (
            Reset           => RST,
            Clk             => Clk,
            Read_register_1 => read_addr_f1,
            Read_register_2 => read_addr_f2,
            Write_register  => writa_addr_f,
            Write_data      => writa_data_f,
            Enable_Write    => MEM_WB_RegWrite,
            Read_data_1     => read_data_f1,
            Read_data_2     => read_data_f2);

    IMMEDIATE_GENERATOR: immediate_gen 
        -- generic map
        --     (N_tot  => 32);
        port map (	
            instruction => IF_ID_INSTRUCTION,
            immediate   => ID_EX_immediate_next);
    
    COMP_REG: process(read_data_f1, read_data_f2, Branch_j, Branch, EX_MEM_RD, ID_EX_RD)
    begin
        if (Branch_j = '1') then
            PC_MUX <= '1';
        elsif (Branch = '1') then
            if (EX_MEM_RD /= read_addr_f1 and  EX_MEM_RD /= read_addr_f2 and read_data_f1 = read_data_f2)  then
                PC_MUX <= '1';
            elsif  (EX_MEM_RD = read_addr_f1 and  EX_MEM_RD /= read_addr_f2 and EX_MEM_ALU_result = read_data_f2) then
                PC_MUX <= '1';
            elsif  (EX_MEM_RD /= read_addr_f1 and  EX_MEM_RD = read_addr_f2 and read_data_f1 = EX_MEM_ALU_result) then
                PC_MUX <= '1';
            elsif  (ID_EX_RD = read_addr_f1 and  ID_EX_RD /= read_addr_f2 and ALU_result = read_data_f2) then
                PC_MUX <= '1';
            elsif  (ID_EX_RD /= read_addr_f1 and  ID_EX_RD = read_addr_f2 and read_data_f1 = ALU_result) then
                PC_MUX <= '1';
            else
                PC_MUX <= '0';
            end if;
        else
            PC_MUX <= '0';
        end if;
    end process;
    -- PIPELINE decode
    ID_EX_read_1_Next <= read_data_f1;
    ID_EX_read_2_Next <= read_data_f2;
    ID_EX_PC_Next     <= IF_ID_PC;
    ID_EX_RS1_Next    <= read_addr_f1;
    ID_EX_RS2_Next    <= read_addr_f2;
    ID_EX_RD_Next     <= IF_ID_INSTRUCTION(11 DOWNTO 7);

    -- How stall the pipeline, this is the mux for control signals
    STALL_CONTROL_SIGNAL: process(stall, EXECUTE_CONTROL_SIGNALS, MemWrite, MemRead, Branch, RegWrite, MemToReg)
    begin
        if (stall = '0') then
            -- Execute controll signal
            ID_EX_EXECUTE_CONTROL_SIGNALS_Next <= EXECUTE_CONTROL_SIGNALS;
            -- Memory controll signal
            ID_EX_MemWrite_next <= MemWrite;
            ID_EX_MemRead_next <= MemRead;
            ID_EX_Branch_next <= Branch;
            -- Write Back controll signal
            ID_EX_RegWrite_next <= RegWrite;
            ID_EX_MemToReg_next <= MemToReg;
        else
            -- Execute controll signal
            -- ID_EX_EXECUTE_CONTROL_SIGNALS_Next <=  NOP_INSTRUCTIONA_ALU;  -- maybe all zero instruction
            ID_EX_EXECUTE_CONTROL_SIGNALS_Next <= (others => '0');
            -- Memory controll signal
            ID_EX_MemWrite_next <= '0';
            ID_EX_MemRead_next <= '0';
            ID_EX_Branch_next <= '0';
            -- Write Back controll signal
            ID_EX_RegWrite_next <= '0';
            ID_EX_MemToReg_next <= '0';
        end if;
    end process;
    
    -- EXECUTE part
    -- choose immediate or Rs2 value
    Rs2ORImm: process (ID_EX_immediate, ID_EX_RS2, ALUSrc)
    begin
        if (ALUSrc = '0') then
            EX_read_2_or_Immediate <= ID_EX_read_2;
        else
            EX_read_2_or_Immediate <= ID_EX_immediate;
        end if;
    end process;

    -- ALU component for operation and forwarding
    ForwardingAMux: mux3to1
        Generic Map(Nbit => 32)
        Port Map
        (
            A    => ID_EX_read_1,
            B    => writa_data_f,
            C    => EX_MEM_ALU_result,
            sel  => ForwardAmuxSelector,
            Y    => ALU_operand1);

    -- here better choose an 4muxto1 for immediate
    ForwardingBMux: mux3to1
        Generic Map(Nbit => 32)
        Port Map
        (
            A    => EX_read_2_or_Immediate,
            B    => writa_data_f,
            C    => EX_MEM_ALU_result,
            sel  => ForwardBmuxSelector,
            Y    => ALU_operand2);

    ArithmeticLogicUnit: ALU
        Generic Map(NbitOperands => M)
        Port Map
        (
            A    => ALU_operand1,
            B    => ALU_operand2,
            ctrl => EXECUTE_CONTROL_SIGNALS,
            Y    => ALU_result);

    ForwardingUnitComponent: ForwardingUnit
        Generic Map(NbitRegAddressing => R)
        Port Map
        (
            Rs1           => ID_EX_RS1,
            Rs2           => ID_EX_RS2,
            RdinMemStage  => EX_MEM_RD,
            RdinWrbStage  => MEM_WB_RD,
            ForwardA      => ForwardAmuxSelector,
            ForwardB      => ForwardBmuxSelector
        );
    -- signals for Data Hazard
    ID_EX_MemRead_out <= ID_EX_MemRead;
    ID_EX_RD_out <= ID_EX_RD;
    -- PIPELINE execute
    EX_MEM_ALU_result_Next <= ALU_result;
    EX_MEM_FowardB_Next <= ALU_operand2;
    EX_MEM_RD_Next <= ID_EX_RD;
    -- Memory controll signal
    EX_MEM_MemRead_next <= ID_EX_MemRead;
    EX_MEM_MemWrite_next <= ID_EX_MemWrite;
    EX_MEM_Branch_next <= ID_EX_Branch;
    -- Write Back controll signal
    EX_MEM_RegWrite_next <= ID_EX_RegWrite;
    EX_MEM_MemToReg_next <= ID_EX_MemToReg;

    -- MEMORY paty
    -- ADD MEMORY DATA
    -- PIPELINE memory
    DATA_ADDRESS <= EX_MEM_ALU_result;
    DATA_READ_EN <= EX_MEM_MemRead;
    MEM_WB_read_data_Next <= DATA_READ;  -- read from data memory
    DATA_WRITE_EN <= EX_MEM_MemWrite;
    DATA_WRITE <= EX_MEM_FowardB;        -- write on data memory
    MEM_WB_ALU_result_Next <= EX_MEM_ALU_result;
    MEM_WB_RD_Next <= EX_MEM_RD;
    -- Write Back controll signal
    MEM_WB_RegWrite_next <= EX_MEM_RegWrite;
    MEM_WB_MemToReg_next <= EX_MEM_MemToReg;

    -- WRITE BACK part
    Write_Back: process(MEM_WB_read_data, MEM_WB_ALU_result, MEM_WB_MemToReg)
    begin
        -- chose data to write back
        case(MEM_WB_MemToReg) is
            when '1' =>
                writa_data_f <= MEM_WB_read_data;        
            when others =>
                writa_data_f <= MEM_WB_ALU_result;
        end case ;
    end process;

end ARCH;
