library IEEE;
use IEEE.std_logic_1164.all; 
use work.myTypes.all;

entity riscv_tb is
end entity riscv_tb;

architecture testbench of riscv_tb is
    component riscv is
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
    
    end component;

    component data_memory is
        generic (
            N_ADDRESS: integer := 10;
            N_DATA: integer := 32;
            MEMORY_SIZE: integer := 1024
        );
        port (
            RST      :    IN std_logic;
            CLK      :    IN std_logic;
            Address  :    IN std_logic_vector(N_ADDRESS-1 downto 0);
            Data_in  :    IN std_logic_vector(N_DATA-1 downto 0);
            Data_out :    OUT std_logic_vector(N_DATA-1 downto 0);
            WriteMem :    IN std_logic;
            ReadMem  :    IN std_logic
        );
    end component;

    component instruction_memory is
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
    end component;

    signal clk, rst: std_logic;
    constant clk_period : time := 20 ns;
    -- IR Memory
    signal IR_ADDRESS: std_logic_vector(ADDRESS_BIT-1 downto 0);
    signal Instruction: std_logic_vector(DATA_BIT-1 DOWNTO 0);
    -- DATA Memory
    signal DATA_ADDRESS  : std_logic_vector(ADDRESS_BIT-1 DOWNTO 0);
    signal DATA_READ     : std_logic_vector(DATA_BIT-1 DOWNTO 0);
    signal DATA_WRITE    : std_logic_vector(DATA_BIT-1 DOWNTO 0);
    signal DATA_WRITE_EN : std_logic;
    signal DATA_READ_EN  : std_logic;

begin
    
    CLK_GEN : process
    begin
        clk <= '0';
        wait for clk_period;		
        clk <= '1';
        wait for clk_period;
    end process;

    Rst <= '1', '0' after clk_period/2;

    UUT: riscv
        port map (
            CLK                 => clk,
            RST                 => rst,
            -- data memory
            DATA_ADDRESS        => DATA_ADDRESS,
            DATA_READ           => DATA_READ,
            DATA_WRITE          => DATA_WRITE,
            DATA_WRITE_EN       => DATA_WRITE_EN,
            DATA_READ_EN        => DATA_READ_EN,
            -- instruction memory
            IR_ADDRESS          => IR_ADDRESS,
            Instruction         => Instruction);

    DATA_MEM: data_memory
        -- generic map (
        --     N_ADDRESS: integer := 10;
        --     N_DATA: integer := 32;
        --     MEMORY_SIZE: integer := 1024)
        port map (
            clk                 => clk,
            rst                 => rst,
            Address             => DATA_ADDRESS,
            Data_in             => DATA_WRITE,
            Data_out            => DATA_READ,
            WriteMem            => DATA_WRITE_EN,
            ReadMem             => DATA_READ_EN);

    IR_MEM: instruction_memory
        port map (
            clk                 => clk,
            rst                 => rst,
            Address             => IR_ADDRESS,
            Instruction         => Instruction);
    
end architecture testbench;