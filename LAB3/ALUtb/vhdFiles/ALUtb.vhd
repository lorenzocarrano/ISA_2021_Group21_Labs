library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
   
Entity ALUtb is
end ALUtb;

Architecture tst of ALUtb is

	Component ALU is
		Generic( NbitOperands : integer := 32 ); 
		Port(
		    A    : in std_logic_vector(NbitOperands -1 downto 0); --Operand1
		    B    : in std_logic_vector(NbitOperands -1 downto 0); --Operand2
		    ctrl : in std_logic_vector(3 downto 0); --Control Signal
		    Y    : out std_logic_vector(NbitOperands -1 downto 0) --Result
		);
	end Component;

	signal A, B, Y : std_logic_vector(31 downto 0);
	signal ctrl  : std_logic_vector(3 downto 0);

begin

	UUT: ALU Generic Map(NbitOperands => 32)
				Port Map(A => A, B=> B, ctrl => ctrl, Y => Y);

	A <= "00000000000000000000000000000011",
		 "00000000000000000000000000000011" after 5 ns,
		 "00000000000000000000000000000111" after 10 ns,
		 "00000000000000000000000010100011" after 15 ns,
		 "00000000010001100100110000000011" after 20 ns,
		 "00000000000001110000110000000011" after 25 ns,
		 "00000000000000000000000000000001" after 30 ns;

	B <= "00000000000000000000000010000011",
		 "00000000000000000000000000010011" after 5 ns,
		 "00000000000000000000000110000111" after 10 ns,
		 "00000000000000000000000010100011" after 15 ns,
		 "00000000010001100100110001100011" after 20 ns,
		 "00000000000001110000110011100011" after 25 ns,
		 "00000000000000000000000000000010" after 30 ns;

	ctrl <= "0100",  
			"0101" after 5 ns,
			"0100" after 10 ns,
			"0100" after 15 ns,
			"0101" after 20 ns,
			"0101" after 25 ns,
			"0000" after 30 ns;

				
	

end Architecture;

