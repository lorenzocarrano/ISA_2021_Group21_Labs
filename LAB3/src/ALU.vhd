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

begin

    Computation: process(A, B, ctrl, Y)
    begin
        if ctrl = "0000" then
        elsif ctrl = "0001" then
            Y <= A+B;
        elsif ctrl = "0010" then
            Y <= A-B;
        --etc
        elsif ctrl = "0011" then
        elsif ctrl = "0100" then
        elsif ctrl = "0101" then
        elsif ctrl = "0111" then
        elsif ctrl = "1000" then
        elsif ctrl = "1001" then
        elsif ctrl = "1010" then
        end if;
    end process;
end Architecture;