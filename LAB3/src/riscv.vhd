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
    -- For pipelined this stage
    signal IF_ID_PC, IF_ID_PC_Next : std_logic_vector(N-1 DOWNTO 0);
    signal IF_ID_instr, IF_ID_instr_Next : std_logic_vector(M-1 DOWNTO 0);
    -- select how to calculate the PC adress value
    signal Jump_PC std_logic:

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

    signal read_data_f1: std_logic_vector(M-1 DOWNTO 0);
    signal read_data_f2: std_logic_vector(M-1 DOWNTO 0);
    signal writa_data_f: std_logic_vector(M-1 DOWNTO 0);
    signal read_addr_f1: std_logic_vector(4 DOWNTO 0);
    signal read_addr_f2: std_logic_vector(4 DOWNTO 0);
    signal writa_addr_f: std_logic_vector(4 DOWNTO 0);
    signal enable_f    : std_logic;
    -- miss immediate generator --
    -- For pipelined this stage
    signal ID_EX_read_1, ID_EX_read_1_Next : std_logic_vector(M-1 DOWNTO 0);
    signal ID_EX_read_2, ID_EX_read_2_Next : std_logic_vector(M-1 DOWNTO 0);
    signal ID_EX_PC, ID_EX_PC_Next : std_logic_vector(N-1 DOWNTO 0);
    signal ID_EX_write_addr_f, ID_EX_write_addr_f_Next : std_logic_vector(4 DOWNTO 0);
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
            else
                -- FETCH
                PC <= PCNext;
                IF_ID_PC <= IF_ID_PC_Next;
                IF_ID_instr <= IF_ID_instr_Next;
                -- DECODE
                ID_EX_PC <= ID_EX_PC_;ext;
                ID_EX_read_1 <= ID_EX_read_1_Next;
                ID_EX_read_1 <= ID_EX_read_1_Next;
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
    end process Fetch;
    -- PIPELINE fetch
    IF_ID_instr_Next <= DATA_INSTRUCTION;
    
    -- DECODE part 
    read_addr_f1 <= IF_ID_instr(19 DOWNTO 15);
    read_addr_f2 <= IF_ID_instr(24 DOWNTO 20);
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
end ARCH;
