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

    Controll: Process(OPCODE, FUNCT3)
    begin
        -- default write always back into register file
        MemWrite <= '0';
		MemRead <= '0';
        Branch <= '0';
		RegWrite <= '0';
        MemToReg <= '0';
		
        case( to_integer(unsigned(OPCODE)) ) is
            -- same OPCODE for all R-Type instructions
            when RTYPE_ADD_OPCODE =>
                RegWrite <= '1';
                -- same FUNCT7 for all R-Type instructions
                case(FUNCT3) is
                    when RTYPE_ADD_FUNC3 => EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_ADD;
                    when RTYPE_XOR_FUNC3 => EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_XOR;
                    when RTYPE_SLT_FUNC3 => EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_SLT;
                    when others =>
                end case ;

            -- same OPCODE for all these I-Type instructions 
            when ITYPE_ADDI_OPCODE =>
                RegWrite <= '1';
                case(FUNCT3) is
                    when ITYPE_ADDI_FUNC3 => EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_ADD;
                    when ITYPE_ANDI_FUNC3 => EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_SRA;
                    when ITYPE_SRAI_FUNC3 => EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_AND;
                    when others => 
                end case ;
            
            -- doesn't need FUNCT3
            when ITYPE_LW_OPCODE =>
                MemRead <= '1';
                RegWrite <= '1';
                MemToReg <= '1';
				-- calculate address from read
				EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_ADD;

			-- AUIPC (add upper immediate to pc) is used to build pc-relative addresses and uses the U-type
			-- format. AUIPC forms a 32-bit offset from the 20-bit U-immediate, filling in the lowest 12 bits with
			-- zeros, adds this offset to the address of the AUIPC instruction, then places the result in register
			-- rd.
            -- doesn't need FUNCT3		
            when UTYPE_AUIPC_OPCODE =>
				-- don't do nothing, Hazard detection unit will change the mux for PC (one nope must be add)
			
			-- LUI (load upper immediate) is used to build 32-bit constants and uses the U-type format. LUI
			-- places the U-immediate value in the top 20 bits of the destination register rd, filling in the lowest
			-- 12 bits with zeros.
            when UTYPE_LUI =>
				RegWrite <= '1';
				-- shift value to left
				EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_ADD;

            when JTYPE_JAL_OPCODE =>
                Branch <= '1';

            when BTYPE_BEQ_OPCODE =>
                Branch <= '1';

            when STYPE_SW_OPCODE =>
				-- activate write dara memory only with store instruction
				MemWrite <= '1';
				-- calculate address from read
				EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_ADD;
        
            when others =>
        
        end case ;    
    end Controll;

end ARCH;
