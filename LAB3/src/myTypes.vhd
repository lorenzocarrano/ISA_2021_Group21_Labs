library ieee;
use ieee.std_logic_1164.all;

package myTypes is

    -- Control unit input sizes
    constant OP_CODE_SIZE         : integer :=  7;
    constant FUNC3_SIZE           : integer :=  3;
	constant FUNC7_SIZE           : integer :=  7;
	constant EXECUTE_CONTROL_SIZE : integer :=  4; 
	constant ADDRESS_BIT 		  : integer :=  32; 
	constant DATA_BIT             : integer :=  32; 
	constant REGISTER_ADDRESS     : integer :=  5; 

	constant  NOP_INSTRUCTION : integer := 19; -- 0x13 this instruction do: addi x0, x0, 0

    -- R-Type instruction
    constant RTYPE_ADD_OPCODE : std_logic_vector(OP_CODE_SIZE - 1 downto 0)     := "0110011";
	constant RTYPE_ADD_FUNC3  : std_logic_vector(FUNC3_SIZE - 1 downto 0) 	    := "000";
	constant RTYPE_ADD_FUNC7  : std_logic_vector(FUNC7_SIZE - 1 downto 0) 	    := "0000000";
	constant RTYPE_XOR_OPCODE : std_logic_vector(OP_CODE_SIZE - 1 downto 0)     := "0110011";
	constant RTYPE_XOR_FUNC3  : std_logic_vector(FUNC3_SIZE - 1 downto 0) 	    := "100";
	constant RTYPE_XOR_FUNC7  : std_logic_vector(FUNC7_SIZE - 1 downto 0) 	    := "0000000";
	constant RTYPE_SLT_OPCODE : std_logic_vector(OP_CODE_SIZE - 1 downto 0)     := "0110011";
	constant RTYPE_SLT_FUNC3  : std_logic_vector(FUNC3_SIZE - 1 downto 0) 	    := "010";
	constant RTYPE_SLT_FUNC7  : std_logic_vector(FUNC7_SIZE - 1 downto 0) 	    := "0000000";

    -- I-Type instruction
	constant ITYPE_LW_OPCODE : std_logic_vector(OP_CODE_SIZE - 1 downto 0)      := "0000011"; 
	constant ITYPE_LW_FUNC3  : std_logic_vector(FUNC3_SIZE - 1 downto 0) 	    := "010";

	constant ITYPE_ADDI_OPCODE : std_logic_vector(OP_CODE_SIZE - 1 downto 0)    := "0010011"; 
	constant ITYPE_ADDI_FUNC3  : std_logic_vector(FUNC3_SIZE - 1 downto 0) 	    := "000";
	constant ITYPE_ANDI_OPCODE : std_logic_vector(OP_CODE_SIZE - 1 downto 0)    := "0010011"; 
	constant ITYPE_ANDI_FUNC3  : std_logic_vector(FUNC3_SIZE - 1 downto 0) 	    := "111";
	constant ITYPE_SRAI_OPCODE : std_logic_vector(OP_CODE_SIZE - 1 downto 0)    := "0010011"; 
	constant ITYPE_SRAI_FUNC3  : std_logic_vector(FUNC3_SIZE - 1 downto 0) 	    := "101";

	-- U-Type instruction
	constant UTYPE_LUI_OPCODE   : std_logic_vector(OP_CODE_SIZE - 1 downto 0)   :=  "0110111";
	constant UTYPE_AUIPC_OPCODE : std_logic_vector(OP_CODE_SIZE - 1 downto 0)   :=  "0010111";

	-- J-Type instruction
	constant JTYPE_JAL_OPCODE : std_logic_vector(OP_CODE_SIZE - 1 downto 0)     :=  "1101111";

	-- B-Type instruction
	constant BTYPE_BEQ_OPCODE : std_logic_vector(OP_CODE_SIZE - 1 downto 0)     :=  "1100011"; 
	constant BTYPE_BEQ_FUNC3  : std_logic_vector(FUNC3_SIZE - 1 downto 0)       :=  "000";

	-- S-Type instruction
	constant STYPE_SW_OPCODE : std_logic_vector(OP_CODE_SIZE - 1 downto 0)      :=  "0100011"; 
	constant STYPE_SW_FUNC3  : std_logic_vector(FUNC3_SIZE - 1 downto 0)        :=  "010";

	--ALU OPCODES
	constant ALU_OPCODE_ADD : std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "0100";
	constant ALU_OPCODE_SUB : std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "0101";
	constant ALU_OPCODE_AND : std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "1001";
	constant ALU_OPCODE_OR  : std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "1010";
	constant ALU_OPCODE_XOR : std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "1011";
	constant ALU_OPCODE_CMP : std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "1100";
	constant ALU_OPCODE_SHL : std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "0000";
	constant ALU_OPCODE_SLT : std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "0110";
	constant ALU_OPCODE_SHR : std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "0001";
	constant ALU_OPCODE_SRA : std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "0010";--arithmetic shift right: unused at the moment

end myTypes;