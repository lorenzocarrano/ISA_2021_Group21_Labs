library ieee;
use ieee.std_logic_1164.all;

package myTypes is

    -- Control unit input sizes
    constant OP_CODE_SIZE         : integer :=  7;
    constant FUNC3_SIZE           : integer :=  3;
	constant FUNC7_SIZE           : integer :=  7;
	constant EXECUTE_CONTROL_SIZE : integer :=  3; 
	constant ADDRESS_BIT 		  : integer :=  32; 
	constant DATA_BIT             : integer :=  32; 
	constant REGISTER_ADDRESS     : integer :=  5; 

	-- 0x13 this instruction do: addi x0, x0, 0
	constant  NOP_INSTRUCTION : std_logic_vector(31 downto 0)                   := x"00000013"; 

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
	
	-- My ABS instruction 
	constant MY_INSRT_ABS_OPCODE  : std_logic_vector(OP_CODE_SIZE - 1 downto 0)      :=  "1111111"; 

	--ALU OPCODES
	constant ALU_OPCODE_ADD 	: std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "000";
	constant ALU_OPCODE_ADD_PC  : std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "001";
	constant ALU_OPCODE_AND 	: std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "010";
	constant ALU_OPCODE_OR  	: std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "011";
	constant ALU_OPCODE_XOR		: std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "100";
	constant ALU_OPCODE_SLT     : std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "101";
	constant ALU_OPCODE_ABS     : std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "110";
	constant ALU_OPCODE_SRA     : std_logic_vector(EXECUTE_CONTROL_SIZE-1 downto 0) := "111";

end myTypes;