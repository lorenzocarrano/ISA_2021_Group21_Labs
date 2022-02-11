library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity immediate_gen is

	generic (n_tot:     integer:=32);

	port (	instruction:    in	std_logic_vector(n_tot-1 downto 0);
            immediate:      out std_logic_vector(n_tot-1 downto 0));

end immediate_gen;

architecture arch of immediate_gen is
    
begin
    
    process(instruction)

    begin 

        case (instruction(6 downto 0)) is

            when "0010111" =>   immediate(11 downto 0) <= (others => '0');--U-Type AUIPC
                                immediate(31 downto 12) <= instruction(31 downto 12);
            when "0000011" =>   immediate (11 downto 0) <= instruction (31 downto 20);--I-Type LW
                                immediate (31 downto 12) <= (others => instruction(31));
            when "1111111" =>   immediate (11 downto 0) <= instruction (31 downto 20);--I-Type LW
                                immediate (31 downto 12) <= (others => instruction(31));
            when "0010011" =>   immediate (11 downto 0) <= instruction (31 downto 20);--I-Type ANDI, ADDI, SRAI 
                                immediate (31 downto 12) <= (others => instruction(31));
            when "0110111" =>   immediate (11 downto 0) <= (others => '0');--U-Type LUI
                                immediate (31 downto 12) <= instruction (31 downto 12);
            when "1101111" =>   --J-Type
                                immediate (0) <= '0';
                                immediate (10 downto 1) <= instruction(30 downto 21);
                                immediate (11) <= instruction(20);
                                immediate (19 downto 12) <= instruction(19 downto 12);
                                immediate (31 downto 20) <= (others => instruction(31));
            when "1100011" =>   --B-Type
                                immediate (4 downto 0) <= instruction(11 downto 7);
                                immediate (11 downto 5) <= instruction(31 downto 25);
                                immediate (31 downto 12) <= (others => instruction(31));
            when "0100011" =>   immediate (4 downto 0) <= instruction(11 downto 7);--S-Type
                                immediate (11 downto 5) <= instruction(31 downto 25);
                                immediate (31 downto 12) <= (others => instruction(31));
            when others     =>  immediate <= (others => '0');
        
        end case;

    end process;
    
end arch;