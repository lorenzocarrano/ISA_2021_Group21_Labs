library IEEE;
use IEEE.std_logic_1164.all; 

entity Datapath is
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


architecture ARCH of Datapath is
    -- FETCH signals --
    -- PC register that point the instruction adress target operation
    signal PC, PCNext : std_logic_vector(N-1 DOWNTO 0);
    -- select how to assign the PC adress value
    signal Jump_PC std_logic:
    -- For pipelined this stage
    signal IF_ID_PC, IF_ID_PC_Next                   : std_logic_vector(N-1 DOWNTO 0);
    signal IF_ID_INSTRUCTION, IF_ID_INSTRUCTION_next : std_logic_vector(M-1 DOWNTO 0);

    -- DECODE signals --
    -- Register File. Read always, write only when needed
    component Register is

        Generic (N_address: integer:= 5,
                 N_tot:     integer:=32);
    
        Port (	Read_register_1:	In	std_logic_vector(N_address-1 downto 0);
                Read_register_2:	In	std_logic_vector(N_address-1 downto 0);
                Write_register:     In  std_logic_vector(N_address-1 downto 0);
                Write_data:         In  std_logic_vector(N_tot-1 downto 0);
                Clk:	            In	std_logic;
                Reset:	            In	std_logic;
                Enable_Write:       In 	std_logic;
                Read_data_1:        Out std_logic_vector(N_tot-1 downto 0);
                Read_data_2:        Out std_logic_vector(N_tot-1 downto 0));
    
    end component;

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
    
            Rs1           : in  std_logic_vetor(NbitRegAddressing-1 downto 0);
            Rs2           : in  std_logic_vetor(NbitRegAddressing-1 downto 0);
            RdinMemStage  : in std_logic_vector(NbitRegAddressing-1 downto 0);
            RdinWrbStage  : in std_logic_vector(NbitRegAddressing-1 downto 0);
            ForwardA      : out std_logic_vector(1 downto 0);
            ForwardB      : out std_logic_vector(1 downto 0);
        );
    end Component;
    -- signals to connect to register file
    signal read_data_f1: std_logic_vector(M-1 DOWNTO 0);
    signal read_data_f2: std_logic_vector(M-1 DOWNTO 0);
    signal writa_data_f: std_logic_vector(M-1 DOWNTO 0);
    signal read_addr_f1: std_logic_vector(4 DOWNTO 0);
    signal read_addr_f2: std_logic_vector(4 DOWNTO 0);
    signal writa_addr_f: std_logic_vector(4 DOWNTO 0);
    -- miss immediate generator --
    -- For pipelined this stage
    signal ID_EX_read_1, ID_EX_read_1_Next: std_logic_vector(M-1 DOWNTO 0);
    signal ID_EX_read_2, ID_EX_read_2_Next: std_logic_vector(M-1 DOWNTO 0);
    signal ID_EX_PC, ID_EX_PC_Next: std_logic_vector(N-1 DOWNTO 0);
    signal ID_EX_RD, ID_EX_RD_Next: std_logic_vector(R-1 DOWNTO 0);
    signal ID_EX_RS1, ID_EX_RS1_Next: std_logic_vector(R-1 DOWNTO 0);
    signal ID_EX_RS2, ID_EX_RS2_Next: std_logic_vector(R-1 DOWNTO 0);
    -- Execute controll signal
    signal ID_EX_EXECUTE_CONTROL_SIGNALS, ID_EX_EXECUTE_CONTROL_SIGNALS_Next std_logic_vector(EXECUTE_CONTROL_SIZE - 1 downto 0);
    signal ForwardAmuxSelector, ForwardBmuxSelector : std_logic_vector(1 downto 0);
    signal ID_EX_read_2_or_Immediate: std_logic_vector(M-1 downto 0);
    -- Memory controll signal
    signal ID_EX_MemWrite, ID_EX_MemWrite_next : std_logic;
    signal ID_EX_MemRead, ID_EX_MemRead_next : std_logic;
    signal ID_EX_Branch, ID_EX_Branch_next : std_logic;
    -- Write Back controll signal
    signal ID_EX_RegWrite, ID_EX_RegWrite_next : std_logic;
    signal ID_EX_MemToReg, ID_EX_MemToReg_next : std_logic;

    -- EXECUTE signals
    signal ALU_operand1: std_logic_vector(M-1 downto 0);
    signal ALU_operand2: std_logic_vector(M-1 downto 0);
    signal ALU_result: std_logic_vector(M-1 DOWNTO 0);
    signal ALU_result_zero: std_logic_vector(M-1 DOWNTO 0);
    signal Jump_PC: std_logic_vector(M-1 DOWNTO 0);
    -- For pipelined this stage
    signal EX_MEM_Jump_PC, EX_MEM_Jump_PC_Next: std_logic_vector(M-1 DOWNTO 0);
    signal EX_MEM_ALU_result_zero, EX_MEM_ALU_result_zero_Next: std_logic_vector(M-1 DOWNTO 0);
    signal EX_MEM_ALU_result, EX_MEM_ALU_result_Next: std_logic_vector(M-1 DOWNTO 0);
    signal EX_MEM_FowardB_Next, EX_MEM_FowardB: std_logic_vector(M-1 DOWNTO 0);
    signal EX_MEM_RD, EX_MEM_RD_Next: std_logic_vector(4 DOWNTO 0);
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
        if(clk = '1')
            if (rst = '1')
                -- FETCH
                PC <= (Others => '0');
                IF_ID_PC <= (Others => '0');
                IF_ID_instr <= (Others => '0');
                -- DECODE
                ID_EX_PC <= (Others => '0');
                ID_EX_read_1 <= (Others => '0');
                ID_EX_read_2 <= (Others => '0');
                ID_EX_RD <= (Others => '0');
                ID_EX_RS1 <= (Others => '0');
                ID_EX_RS2 <= (Others => '0');
                -- controll
                ID_EX_EXECUTE_CONTROL_SIGNALS <= ID_EX_EXECUTE_CONTROL_SIGNALS_Next;
                ID_EX_MemWrite <= (others => '0');
                ID_EX_MemRead <= (others => '0');
                ID_EX_Branch <= (others => '0');
                ID_EX_RegWrite <= (others => '0');
                ID_EX_MemToReg <= (others => '0');
                -- EXECUTE
                EX_MEM_Jump_PC  <= (Others => '0');
                EX_MEM_ALU_result_zero <= (Others => '0');
                EX_MEM_ALU_result <= (Others => '0');
                EX_MEM_FowardB <= (Others => '0');
                EX_MEM_RD <= (Others => '0');
                -- controll
                EX_MEM_MemWrite <= (others => '0');
                EX_MEM_MemRead <= (others => '0');
                EX_MEM_Branch <= (others => '0');
                EX_MEM_RegWrite <= (others => '0');
                EX_MEM_MemToReg <= (others => '0');
                -- MEMORY
                MEM_WB_read_data <= (others => '0')
                MEM_WB_ALU_result <= (Others => '0');
                MEM_WB_RD <= (Others => '0');
                -- controll
                MEM_WB_RegWrite <= (others => '0');
                MEM_WB_MemToReg <= (others => '0');
            else
                -- FETCH
                -- PCWrite and  IF/IDWrite
                if (STALL = '0') then
                    PC <= PCNext;
                    IF_ID_INSTRUCTION <= IF_ID_INSTRUCTION_next;
                else
                    PC <= PC;
                    IF_ID_INSTRUCTION <= std_logic_vector(to_unsigned(NOP_INSTRUCTION, NOP_INSTRUCTION'length));
                end if;
                -- DECODE
                ID_EX_PC <= ID_EX_PC_next;
                ID_EX_read_1 <= ID_EX_read_1_Next;
                ID_EX_read_2 <= ID_EX_read_2_Next;
                ID_EX_RD <= ID_EX_RD_Next;
                -- can't neead this if if control drive the nop
                if (STALL = '0') then
                    -- controll
                    ID_EX_EXECUTE_CONTROL_SIGNALS <= ID_EX_EXECUTE_CONTROL_SIGNALS_Next;
                    ID_EX_MemWrite <= ID_EX_MemWrite_next;
                    ID_EX_MemRead <= ID_EX_MemRead_next;
                    ID_EX_Branch <= ID_EX_Branch_next;
                    ID_EX_RegWrite <= ID_EX_RegWrite_next;
                    ID_EX_MemToReg <= ID_EX_MemToReg_next;
                else
                    ID_EX_EXECUTE_CONTROL_SIGNALS <=  NOP_INSTRUCTIONA_ALU;
                    ID_EX_MemWrite <=  '0';
                    ID_EX_MemRead <=  '0';
                    ID_EX_Branch <= '0';
                    ID_EX_RegWrite <=  '0';
                    ID_EX_MemToReg <= '0';
                end if;
                -- EXECUTE
                EX_MEM_Jump_PC <= EX_MEM_Jump_PC_Next;
                EX_MEM_ALU_result_zero <= EX_MEM_ALU_result_zero_Next;
                EX_MEM_ALU_result <= EX_MEM_ALU_result_Next;
                EX_MEM_FowardB <= EX_MEM_FowardB_Next;
                EX_MEM_RD <= EX_MEM_RD_Next;
                ForwardingAMux: mux3to1 Generic Map()
                                  Port Map
                                  (
                                    A    => ID_EX_read_1,
                                    B    => writa_data_f,
                                    C    => EX_MEM_ALU_result,
                                    sel  => ForwardAmuxSelector,
                                    Y    => ALU_operand1

                               );
                            
                ForwardingBMux: mux3to1
                                Generic Map(Nbit => 32)
                                   Port Map
                                   (
                                        A    => ID_EX_read_2_or_Immediate,
                                        B    => writa_data_f,
                                        C    => EX_MEM_ALU_result,
                                        sel  => ForwardBmuxSelector,
                                        Y    => ALU_operand2

                                   );

                ArithmeticLogicUnit: ALU Generic Map(NbitOperands => M)
                                            Port Map
                                            (
                                                A    => ALU_operand1,
                                                B    => ALU_operand2,
                                                ctrl => EXECUTE_CONTROL_SIGNALS,
                                                Y    => ALU_result
                                            );

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
    Fetch: process(PC, PC_mux, EX_MEM_Jump_PC)
    begin
        -- upgrade PC value properly
        case(PC_mux) is
            when 0 =>
                PCNext <= PC + 4;        
            when others =>
                PCNext <= EX_MEM_Jump_PC;
        end case ;
    end process Fetch;
    -- PIPELINE fetch
    IF_ID_PC_Next  <= PC;
    IF_ID_INSTRUCTION_next <= Instruction;

    -- DECODE part 
    instruction_to_CU <= IF_ID_INSTRUCTION;
    read_addr_f1 <= IF_ID_INSTRUCTION(19 DOWNTO 15);
    read_addr_f2 <= IF_ID_INSTRUCTION(24 DOWNTO 20);
    writa_addr_f <= MEM_WB_RD;
    RF: Register
            -- generic map (
            --     N               => 5;
            --     N_tot           => 32
            -- )
            port map (
                Reset           => RST_n;
                Clk             => CK;
                Read_register_1 => read_addr_f1;
                Read_register_2 => read_addr_f2;
                Write_register  => writa_addr_f;
                Write_data      => writa_data_f;
                Enable_Write    => MEM_WB_RegWrite;
                Read_data_1     => read_data_f1;
                Read_data_2     => read_data_f2
            );
    -- PIPELINE decode
    ID_EX_read_1_Next <= read_data_f1;
    ID_EX_read_2_Next <= read_data_f2;
    ID_EX_PC_Next     <= IF_ID_PC;
    ID_EX_RS1_Next    <= IF_ID_INSTRUCTION(19 DOWNTO 15);
    ID_EX_RS2_Next    <= IF_ID_INSTRUCTION(24 DOWNTO 20);
    ID_EX_RD_Next     <= IF_ID_INSTRUCTION(11 DOWNTO 7);
    -- How stall the pipeline 
    STALL: process(stall, EXECUTE_CONTROL_SIGNALS, MemWrite, MemRead, Branch, RegWrite, MemToReg)
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
            ID_EX_EXECUTE_CONTROL_SIGNALS_Next <= (others => '0');
            -- Memory controll signal
            ID_EX_MemWrite_next <= '0';
            ID_EX_MemRead_next <= '0';
            ID_EX_Branch_next <= '0';
            -- Write Back controll signal
            ID_EX_RegWrite_next <= '0';
            ID_EX_MemToReg_next <= '0';
        end if;
    end process proc_name;
    
    -- ADD IMMEDIATE OPERATION

    -- EXECUTE part
    -- link ALU, mux and add for change PC in case of jump
    -- PIPELINE execute
    EX_MEM_Jump_PC_Next <= Jump_PC; -- calculate value of pc if jump
    EX_MEM_ALU_result_zero_Next <= ALU_result_zero;
    EX_MEM_ALU_result_Next <= ALU_result;
    EX_MEM_FowardB_Next <= ID_EX_read_2; -- put value of ForwardB mux here
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
    DATA_WRTIE_EN <= EX_MEM_MemWrite;
    DATA_WRITE <= EX_MEM_FowardB;        -- write on data memory
    PC_mux <= EX_MEM_Branch AND EX_MEM_ALU_result(0); -- for branch equal
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
            when 1 =>
                writa_data_f <= MEM_WB_read_data;        
            when others =>
                writa_data_f <= MEM_WB_ALU_result;
        end case ;
    end process Fetch;

end ARCH;
