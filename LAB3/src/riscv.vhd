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
    signal PC, PCNext : std_logic_vector(N-1 DOWNTO 0);
    -- select how to calculate the PC adress value
    signal Jump_PC std_logic:
    -- For pipelined this stage
    signal IF_ID_PC, IF_ID_PC_Next : std_logic_vector(N-1 DOWNTO 0);
    signal IF_ID_instr, IF_ID_instr_Next : std_logic_vector(M-1 DOWNTO 0);

    -- DECODE signals --
    -- Register File
    component Register is

        Generic (N_address: integer:= 5,
                 N_tot:     integer:=32);
    
        Port (	Read_register_1:	In	std_logic_vector(N_address-1 downto 0);
                Read_register_2:	In	std_logic_vector(N_address-1 downto 0);
                Write_register:     In  std_logic_vector(N_address-1 downto 0);
                Write_data:         In  std_logic_vector(N_tot-1 downto 0);
                Clk:	            In	std_logic;
                Reset:	            In	std_logic;
                Enable:             In 	std_logic;
                Read_data_1:        Out std_logic_vector(N_tot-1 downto 0);
                Read_data_2:        Out std_logic_vector(N_tot-1 downto 0));
    
    end component;
    -- signals to connect to register file
    signal read_data_f1: std_logic_vector(M-1 DOWNTO 0);
    signal read_data_f2: std_logic_vector(M-1 DOWNTO 0);
    signal writa_data_f: std_logic_vector(M-1 DOWNTO 0);
    signal read_addr_f1: std_logic_vector(4 DOWNTO 0);
    signal read_addr_f2: std_logic_vector(4 DOWNTO 0);
    signal writa_addr_f: std_logic_vector(4 DOWNTO 0);
    signal enable_f    : std_logic; -- manage by control unit
    -- miss immediate generator --
    -- For pipelined this stage
    signal ID_EX_read_1, ID_EX_read_1_Next: std_logic_vector(M-1 DOWNTO 0);
    signal ID_EX_read_2, ID_EX_read_2_Next: std_logic_vector(M-1 DOWNTO 0);
    signal ID_EX_PC, ID_EX_PC_Next: std_logic_vector(N-1 DOWNTO 0);
    signal ID_EX_write_addr_f, ID_EX_write_addr_f_Next: std_logic_vector(4 DOWNTO 0);

    -- EXECUTE signals
    signal ALU_result: std_logic_vector(M-1 DOWNTO 0);
    signal ALU_result_zero: std_logic_vector(M-1 DOWNTO 0);
    signal jump_result: std_logic_vector(M-1 DOWNTO 0);
    -- For pipelined this stage
    signal EX_MEM_jump_result, EX_MEM_jump_result_Next: std_logic_vector(M-1 DOWNTO 0);
    signal EX_MEM_ALU_result_zero, EX_MEM_ALU_result_zero_Next: std_logic_vector(M-1 DOWNTO 0);
    signal EX_MEM_ALU_result, EX_MEM_ALU_result_Next: std_logic_vector(M-1 DOWNTO 0);
    signal EX_MEM_read_2, EX_MEM_read_2_Next: std_logic_vector(M-1 DOWNTO 0);
    signal EX_MEM_write_addr_f, EX_MEM_write_addr_f_Next: std_logic_vector(4 DOWNTO 0);

    -- MEMORY signals
    -- data read from Data Memory
    signal read_data: std_logic_vector(M-1 DOWNTO 0);
    -- For pipelined this stage
    signal MEM_WB_read_data, MEM_WB_read_data_Next: std_logic_vector(M-1 DOWNTO 0);
    signal MEM_WB_read_2, MEM_WB_read_2_Next: std_logic_vector(M-1 DOWNTO 0);
    signal MEM_WB_write_addr_f, MEM_WB_write_addr_f_Next: std_logic_vector(4 DOWNTO 0);

    -- WRITE BACK
    -- choose if write back data from Data memory or from ALU result
    signal WB_select: std_logic;

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
                ID_EX_read_1 <= (Others => '0');
                ID_EX_write_addr_f <= (Others => '0');
                -- EXECUTE
                EX_MEM_jump_result <= (Others => '0');
                EX_MEM_ALU_result_zero <= (Others => '0');
                EX_MEM_ALU_result <= (Others => '0');
                EX_MEM_read_2 <= (Others => '0');
                EX_MEM_write_addr_f <= (Others => '0');
                -- MEMORY
                MEM_WB_read_data <= (others => '0')
                MEM_WB_read_2 <= (Others => '0');
                MEM_WB_write_addr_f <= (Others => '0');
            else
                -- FETCH
                PC <= PCNext;
                IF_ID_PC <= IF_ID_PC_Next;
                IF_ID_instr <= IF_ID_instr_Next;
                -- DECODE
                ID_EX_PC <= ID_EX_PC_;ext;
                ID_EX_read_1 <= ID_EX_read_1_Next;
                ID_EX_read_1 <= ID_EX_read_1_Next;
                ID_EX_write_addr_f <= ID_EX_write_addr_f_Next;
                -- EXECUTE
                EX_MEM_jump_result <= EX_MEM_jump_result_Next;
                EX_MEM_ALU_result_zero <= EX_MEM_ALU_result_zero_Next;
                EX_MEM_ALU_result <= EX_MEM_ALU_result_Next;
                EX_MEM_read_2 <= EX_MEM_read_2_Next;
                EX_MEM_write_addr_f <= EX_MEM_write_addr_f_Next;
                -- MEMORY
                MEM_WB_read_data <= MEM_WB_read_data_Next;
                MEM_WB_read_2 <= MEM_WB_read_2_Next;
                MEM_WB_write_addr_f <= MEM_WB_write_addr_f_Next;
                
            end if;
        end if;  
    end process;

    -- FETCH part
    ADRESS_INSTRUCTION <= PC;
    Jump_PC <= EX_MEM_jump_result;
    Fetch: process(PC, PC_mux, Jump_PC, DATA_INSTRUCTION)
    begin
        -- chose adress instruction memory 
        case( PC_mux ) is
            when 0 =>
                PCNext <= PC + 4;        
            when others =>
                PCNext <= Jump_PC;
        end case ;
    end process Fetch;
    -- PIPELINE fetch
    IF_ID_instr_Next <= DATA_INSTRUCTION;
    IF_ID_PC_Next <= PC;

    -- DECODE part 
    read_addr_f1 <= IF_ID_instr(19 DOWNTO 15);
    read_addr_f2 <= IF_ID_instr(24 DOWNTO 20);
    writa_addr_f <= MEM_WB_write_addr_f;
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
                Enable          => enable_f;
                Read_data_1     => read_data_f1;
                Read_data_2     => read_data_f2
            );
    -- PIPELINE decode
    ID_EX_read_1_Next <= read_data_f1;
    ID_EX_read_2_Next <= read_data_f2;
    ID_EX_PC_Next     <= IF_ID_PC;
    ID_EX_write_addr_f_Next <= IF_ID_instr(11 DOWNTO 7);


    -- EXECUTE part
    -- link ALU, mux and add for jump
    -- PIPELINE execute
    EX_MEM_jump_result_Next <= jump_result;
    EX_MEM_ALU_result_zero_Next <= ALU_result_zero;
    EX_MEM_ALU_result_Next <= ALU_result;
    EX_MEM_read_2_Next <= ID_EX_read_2;
    EX_MEM_write_addr_f_Next <= ID_EX_write_addr_f;
    

    -- MEMORY paty
    -- PIPELINE memory
    MEM_WB_read_data_Next <= read_data;
    MEM_WB_read_2_Next <= EX_MEM_wrEX_MEM_read_2;
    MEM_WB_write_addr_f_Next <= EX_MEM_write_addr_f;


    -- WRITE BACK part
    Write_Back: process(MEM_WB_read_data, MEM_WB_read_2, WB_select)
    begin
        -- chose data to write back
        case( WB_select ) is
            when 0 =>
                writa_data_f <= MEM_WB_read_data;        
            when others =>
                writa_data_f <= MEM_WB_read_2;
        end case ;
    end process Fetch;

end ARCH;
