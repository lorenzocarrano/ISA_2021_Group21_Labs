library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity Register is

	Generic (N_address: integer:= 5,
             N_tot:     integer:=32);

	Port (	Read_register_1:	In	std_logic_vector(N_address-1 downto 0);
			Read_register_2:	In	std_logic_vector(N_address-1 downto 0);
            Write_register:     In  std_logic_vector(N_address-1 downto 0);
            Write_data:         In  std_logic_vector(N_tot-1 downto 0);
			Reset:	            In	std_logic;
            Clk:	            In	std_logic;
			Enable_Write:       In 	std_logic;
            Read_data_1:        Out std_logic_vector(N_tot-1 downto 0);
            Read_data_2:        Out std_logic_vector(N_tot-1 downto 0));

end Register;

architecture arch of Register is

    component REG is

        Generic (NBIT: integer:= 8);
    
        Port (	D:	In	signed(NBIT-1 downto 0);
                CK:	In	std_logic;
                RESET:	In	std_logic;
                ENABLE: In 	std_logic;
                Q:	Out	signed(NBIT-1 downto 0));
    
    end component;

begin

end arch;