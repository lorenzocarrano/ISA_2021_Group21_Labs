library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
   
Entity lfsrTB2 is
end Entity;

Architecture tst of lfsrTB2 is

	Component Entity ALU is
    Generic( NbitOperands : integer := 32 ) 
    Port(
        A    : in std_logic_vector(NbitOperands -1 downto 0); --Operand1
        B    : in std_logic_vector(NbitOperands -1 downto 0); --Operand2
        ctrl : in std_logic_vector(4 downto 0); --Control Signal
        Y    : out std_logic_vector(NbitOperands -1 downto 0) --Result
    );
end Component;

	signal A, B, Y : std_logic_vector(31 downto 0);
	signal ctrl  : std_logic_vector(4 downto 0);

begin

	UUT: ALU Generic Map(NbitOperands => 32)
				Port Map(A => A, B=> B, ctrl => ctrl, Y => Y);
	

	readInputs: process (CLK, RST_n)
		file fp : text open read_mode is "../tb/fp_samples.hex";
		variable ptr : line;
		variable val : std_logic_vector(31 downto 0);
		begin
			  if (not(endfile(fp))) then
				readline(fp, ptr);
				hread(ptr, val);
				DOUT <= val after tco;
				VOUT <= '1' after tco;
				sEndSim <= '0' after 5*tco;
			  else
				VOUT <= '0' after tco;        
				sEndSim <= '1' after tco;
			  end if;
			end if;
	end process;
end Architecture;

