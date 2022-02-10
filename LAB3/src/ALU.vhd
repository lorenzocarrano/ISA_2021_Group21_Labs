library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
use work.myTypes.all;
---------------------------
Entity ALU is
    Generic( NbitOperands : integer := 32 ); 
    Port
	(
        A    : in std_logic_vector(NbitOperands -1 downto 0); --Operand1
        B    : in std_logic_vector(NbitOperands -1 downto 0); --Operand2
        ctrl : in std_logic_vector(3 downto 0); --Control Signal
        Y    : out std_logic_vector(NbitOperands -1 downto 0) --Result
    );
end ALU;

Architecture Bhv of ALU is
    signal result : std_logic_vector(NbitOperands -1 downto 0);
begin

    Computation: process(A, B, ctrl)
	begin
		case(ctrl) is
		    when ALU_OPCODE_SHL =>
		    --SHIFT
			--shl
	        result <= std_logic_vector(unsigned(A) sll to_integer(unsigned(B))); --N must be B conv to natural

		    when ALU_OPCODE_SHR =>
		        --shr
		        result <= std_logic_vector(unsigned(A) srl to_integer(unsigned(B))); --N must be B conv to natural
		    
			when ALU_OPCODE_SRA =>
		        --shrA (shift right arithmetic)
		        
		    --unused "0011"
				result <= std_logic_vector(shift_right(signed(A),to_integer(unsigned(B))));
		    
			--Arithmetic      

			when ALU_OPCODE_ADD =>
		        --Add
		        result <= A+B;
		    
			when ALU_OPCODE_SUB =>
		        --Sub
		        result <= A-B;
		    --unused "0111"
		    --unused "1000"
		    

			--Logic    
		    when ALU_OPCODE_AND =>
		        --And
		        result <= A and B;
		    

			when ALU_OPCODE_OR  =>
		        --Or
		        result <= A or B;
		    

			when ALU_OPCODE_XOR =>
		        --Xor
		        result <= A xor B;
		    

			--Cmp
		    when ALU_OPCODE_CMP =>
		        --set min
		        if(A = B) then
		            result <= x"00000001";
				else
		            result <= x"00000000";
		        end if; 
				
			-- Slr
			when ALU_OPCODE_SLT =>
				--set min
		        if(A < B) then
		            result <= x"00000001";
				else
		            result <= x"00000000";
		        end if; 

			when others => result <= A + B ; 
		end case;
    end process;

    Y <= result;

end Architecture;
