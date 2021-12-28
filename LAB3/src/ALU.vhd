library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
---------------------------
Entity ALU is
    Generic( NbitOperands : integer := 32 ) 
    Port(
        A    : in std_logic_vector(NbitOperands -1 downto 0); --Operand1
        B    : in std_logic_vector(NbitOperands -1 downto 0); --Operand2
        ctrl : in std_logic_vector(4 downto 0); --Control Signal
        Y    : out std_logic_vector(NbitOperands -1 downto 0) --Result
    );
end ALU;

Architecture Bhv of ALU is
    signal op1, op2, intermediate, result : std_logic_vector(NbitOperands -1 downto 0);
begin

    Computation: process(A, B, ctrl, Y)
    begin
        op1 <= A;
        op2 <= B;
        if ctrl = "0000" then
        --SHIFT
			--shl
            ALU_Result <= std_logic_vector(unsigned(A) sll to_integer(unsigned(B))); --N must be B conv to natural

        elsif ctrl = "0001" then
            --shr
            std_logic_vector(unsigned(A) srl to_integer(unsigned(B))); --N must be B conv to natural
        elsif ctrl = "0010" then
            --shrA (shift right arithmetic)
            
        --unused elsif ctrl = "0011" then
        --Arithmetic
        elsif ctrl = "0100" then
            --Add
            result <= A+B;
        elsif ctrl = "0101" then
            --Sub
            result <= A-B;
        --unused elsif ctrl = "0111" then
        --unused elsif ctrl = "1000" then
        --Logic    
        elsif ctrl = "1001" then
            --And
            result <= A and B;
        elsif ctrl = "1010" then
            --Or
            result <= A or B;
        elsif ctrl = "1010" then
            --Xor
            result <= A xor B;
        --Cmp
        elsif ctrl = 1100 then
            --set min
            if(A<B) then
                ALU_Result <= x"1" ;
               else
                ALU_Result <= x"0";
            end if; 
        end if;
        result <= intermediate;
    end process;
        Y <= result;
end Architecture;