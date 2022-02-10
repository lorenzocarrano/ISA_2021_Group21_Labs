library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity Register_file is

	Generic (N_address: integer:= 5;
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

end Register_file;

architecture arch of Register_file is

    type matrix is array (N_tot -1 downto 0) of std_logic_vector(N_tot-1 downto 0); 
    signal reg: matrix := (others => (others => '0'));

begin

    process (Clk, Reset)

    begin

        if (clk'event and clk = '0') then --negative edge

            if reset = '1' then
                
                reg <= (others => (others => '0'));
            
            else

                if (Enable_Write = '1') then

                    if (Read_register_1 = Write_register) THEN

                        Read_data_1 <= Write_data;
                        reg (to_integer(unsigned(Write_register))) <= Write_data;
                    
                    elsif (Read_register_2 = Write_register) THEN

                        Read_data_2 <= Write_data;
                        reg (to_integer(unsigned(Write_register))) <= Write_data;

                    else

                        reg (to_integer(unsigned(Write_register))) <= Write_data;
                        Read_data_1 <= reg (to_integer(unsigned(Read_register_1)));
                        Read_data_2 <= reg (to_integer(unsigned(Read_register_2)));

                    end if;

                else

                    Read_data_1 <= reg (to_integer(unsigned(Read_register_1)));
                    Read_data_2 <= reg (to_integer(unsigned(Read_register_2)));

                end if;

            end if;

        end if;

    end process;

end arch;