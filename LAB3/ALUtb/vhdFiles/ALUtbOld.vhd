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
		    ctrl : in std_logic_vector(4 downto 0); --Control Signal
		    Y    : out std_logic_vector(NbitOperands -1 downto 0) --Result
		);
	end Component;

	signal A, B, Y : std_logic_vector(31 downto 0);
	signal ctrl  : std_logic_vector(4 downto 0);

begin

	UUT: ALU Generic Map(NbitOperands => 32)
				Port Map(A => A, B=> B, ctrl => ctrl, Y => Y);
	

	readInputs: process
		file fp : text open read_mode is "../tb/fp_samples.hex";
		variable ptr : line;
		variable val : std_logic_vector(68 downto 0);
		begin
			  if (not(endfile(fp))) then
				readline(fp, ptr);
				hread(ptr, val);
				A    <= val(68 downto 37) after 5 ns;
				B    <= val(36 downto 5)  after 5 ns;
				ctrl <= val(4 downto 0)   after 5 ns;
			  end if;
			end if;
	end process;

	process (CLK)
		file res_fp : text open WRITE_MODE is "./fp_prod.hex";
		variable line_out : line;    
		begin  -- process
			hwrite(line_out, DIN);
			writeline(res_fp, line_out);
			wait for 5 ns;
	end process;	
	

end Architecture;

