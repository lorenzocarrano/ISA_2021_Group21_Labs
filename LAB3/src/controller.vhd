library IEEE;
use IEEE.std_logic_1164.all; 
use work.myTypes;

entity Controller is
    Generic (
        OP_CODE_SIZE        : integer := 2;
        FUNC7_SIZE          : integer := 7;
        FUNC3_SIZE          : integer := 3;
        ALU_OPCODE_SIZE     : integer := 2;
        EXECUTE_CONTROL_SIZE: integer := 2;
        MEMORY_CONTROL_SIZE : integer := 2;
        WB_CONTROL_SIZE     : integer := 1
    );
	Port (
		OPCODE                  : IN std_logic_vector(OP_CODE_SIZE downto 0);
        FUNCT3                  : IN std_logic_vector(FUNC3_SIZE downto 0);
        FUNCT7                  : IN std_logic_vector(FUNC7_SIZE downto 0);
        EXECUTE_CONTROL_SIGNALS : OUT std_logic_vector(EXECUTE_CONTROL_SIZE - 1 downto 0);
        MEMORY_CONTROL_SIGNALS  : OUT std_logic_vector(MEMORY_CONTROL_SIZE - 1 downto 0);
        WB_CONTROL_SIGNALS      : OUT std_logic_vector(WB_CONTROL_SIZE - 1 downto 0)
    );

end Controller;


architecture ARCH of Controller is
    
begin

    Controll: Process(OPCODE, FUNCT)
    begin
        WB_CONTROL_SIZE <= '0';
		MEMORY_CONTROL_SIGNALS <= '0';

        case( to_integer(unsigned(OPCODE)) ) is
        
            when RTYPE =>
                case( FUNCT3 ) is

                    when RTYPE3_ADD => EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_ADD;
                    when RTYPE3_XOR => EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_XOR;
                    when RTYPE3_SLT => EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_SLT;
                    when others =>
    
                end case ;

            when ITYPE =>
                case( FUNCT3 ) is

                    when ITYPE_ADDI => EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_ADD;
                    when ITYPE_SRAI => EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_SRA;
                    when ITYPE_ANDI => EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_AND;
                    when others =>
                
                end case ;
                 
            when ITYPE_LW =>
				-- activate write back only with load instruction
				WB_CONTROL_SIZE <= '1';
				-- calculate address from read
				EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_ADD;

			-- AUIPC (add upper immediate to pc) is used to build pc-relative addresses and uses the U-type
			-- format. AUIPC forms a 32-bit offset from the 20-bit U-immediate, filling in the lowest 12 bits with
			-- zeros, adds this offset to the address of the AUIPC instruction, then places the result in register
			-- rd.				
            when UTYPE_AUIPC =>
				-- don't do nothing, Hazard detection unit will change the mux for PC (one nope must be add)
			
			-- LUI (load upper immediate) is used to build 32-bit constants and uses the U-type format. LUI
			-- places the U-immediate value in the top 20 bits of the destination register rd, filling in the lowest
			-- 12 bits with zeros.
            when UTYPE_LUI =>
				-- activate write back only with load instruction
				WB_CONTROL_SIZE <= '1';
				-- calculate address from read
				EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_ADD;

            when JTYPE_JAL =>
            when BTYPE_BEQ =>

            when STYPE_SW =>
				-- activate write dara memory only with store instruction
				MEMORY_CONTROL_SIGNALS <= '1';
				-- calculate address from read
				EXECUTE_CONTROL_SIGNALS <= ALU_OPCODE_ADD;
        
            when others =>
        
        end case ;    
    end Controll;

end ARCH;
