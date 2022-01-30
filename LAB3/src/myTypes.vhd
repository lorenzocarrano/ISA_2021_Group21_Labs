library ieee;
use ieee.std_logic_1164.all;

package myTypes is

    -- Control unit input sizes
    constant OP_CODE_SIZE : integer :=  7;
    constant FUNC3_SIZE   : integer :=  3;
	constant FUNC7_SIZE   : integer :=  7; 

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

end myTypes;