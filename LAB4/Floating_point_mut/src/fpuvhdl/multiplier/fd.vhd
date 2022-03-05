library IEEE;
use IEEE.std_logic_1164.all; 

entity FD is

	Port (	D:	In	std_logic;
			CK:	In	std_logic;
			RESET:	In	std_logic;
			ENABLE: In std_logic;	
			Q:	Out	std_logic);

end FD;


architecture SYNCH of FD is -- flip flop D with syncronous reset

begin
	PSYNCH: process(CK,RESET,ENABLE)
	begin
	  if CK'event and CK='1' then -- positive edge triggered:

	    if RESET='0' then -- active low reset 
	      Q <= '0'; 

	    elsif ENABLE='1' then
	      Q <= D; -- input is written on output if the FD is enabled
	    end if;

	  end if;
	end process;

end SYNCH;


configuration CFG_FD_SYNCH of FD is
	for SYNCH
	end for;
end CFG_FD_SYNCH;


