library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity REG is

	Generic (NBIT: integer:= 32);

	Port (	D:	In	std_logic_vector(NBIT-1 downto 0);
			CK:	In	std_logic;
			RESET:	In	std_logic;
			ENABLE: In 	std_logic;
			Q:	Out	std_logic_vector(NBIT-1 downto 0));

end REG;

architecture ARCH of REG is
    
    component FD 

      Port (D:	In	std_logic;
			CK:	In	std_logic;
			RESET:	In	std_logic;
			ENABLE: In	std_logic;
			Q:	Out	std_logic);

    end component;

begin
    
    R1: for i in NBIT-1 downto 0 generate --implementing the register by generating N flip flops
      regn: FD port map (D(i), CK, RESET, ENABLE, Q(i));
    end generate;

end ARCH;

configuration CFG_REG_SYNCH of REG is
	for ARCH
          for R1
            for all: FD
			use configuration WORK.CFG_FD_SYNCH;
		end for;
          end for;
	end for;
end CFG_REG_SYNCH;
