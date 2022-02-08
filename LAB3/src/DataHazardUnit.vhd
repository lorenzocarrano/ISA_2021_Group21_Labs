library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity DataHazardUnit is
	Generic
	(
		NbitRegAddressing: natural := 5
	);
	Port
	(
		CLK           : In  std_logic;
        RST           : In  std_logic;
		Rs1           : in  std_logic_vetor(NbitRegAddressing-1 downto 0);
		Rs2           : in  std_logic_vetor(NbitRegAddressing-1 downto 0);
		Rd            : in std_logic_vector(NbitRegAddressing-1 downto 0);
		MemRead       : in std_logic;
		stall         : out std_logic
	);
end DataHazardUnit;

Architecture Arch of DataHazardUnit is
	type state is (s0, s1);
    signal current_state, next_state: state;
begin
	Reg: process(clk)
    begin
        if(clk = '1')
            if (rst = '1') then
                current_state <= s0;
            else
                current_state <= next_state;
            end if;
        end if;
    end Reg;

	CountStall: process(Rs1, Rs2, Rd, MemRead, current_state)
    begin
        case current_state is
            when s0 =>
            	stall <= '0';
                if (MemRead = '1' and ((Rs1 = Rd) or (Rs2 = Rd))) then
                    next_state <= s1;
                else
                    next_state <= s0;
                end if;
            
            -- stall
            when s1 =>
			stall <= '1';
				if (MemRead = '1' and ((Rs1 = Rd) or (Rs2 = Rd))) then
					next_state <= s1;
				else
					next_state <= s0;
				end if;
        end case;     
    end CountStall;;
	
end Arch;
