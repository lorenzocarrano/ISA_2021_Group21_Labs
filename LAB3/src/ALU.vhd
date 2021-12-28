library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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
            intermediate(NbitOperands-1 downto 1) <= op1(NbitOperands -2 downto 0);
            intermediate(0) <= '0';

        elsif ctrl = "0001" then
            --shr
            intermediate(NbitOperands-2 downto 0) <= op1(NbitOperands -1 downto 1);
            intermediate(NbitOperands -1) <= '0';
        elsif ctrl = "0010" then
            --shrA (shift right arithmetic)
            intermediate(NbitOperands-2 downto 0) <= op1(NbitOperands -1 downto 1);
            intermediate(NbitOperands -1) <= op1)(NbitOperands -1);
        --unused elsif ctrl = "0011" then
        --Arithmetic
        elsif ctrl = "0100" then
            --Add
            intermediate <= A+B;
        elsif ctrl = "0101" then
            --Sub
            intermediate <= A-B;
        --unused elsif ctrl = "0111" then
        --unused elsif ctrl = "1000" then
        --Logic    
        elsif ctrl = "1001" then
            --And
        elsif ctrl = "1010" then
            --Or
        elsif ctrl = "1010" then
            --Xor
        --Cmp
        elsif ctrl = 1100 then
            --set min
        elsif ctlr = 1101 then
            --set min arithm
    
        end if;

        result <= intermediate;
    end process;
        Y <= result;
end Architecture;