LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity tb_MBE is
end entity;

architecture ARCH of tb_MBE is

    component MBE IS

        PORT( 
            Multiplicand       : IN     std_logic_vector (31 DOWNTO 0);
            Multiplier         : IN     std_logic_vector (31 DOWNTO 0);
            Result             : OUT    std_logic_vector (63 DOWNTO 0)
        );

    END component ;

    signal A_s, B_s: std_logic_vector (31 DOWNTO 0);
    signal C_s: std_logic_vector (63 DOWNTO 0);

begin

    A_s <= "00000000000111100011011101111010";
    B_s <= "00000000000111100011011101111010";

    DUT: MBE port map (
        Multiplicand => A_s, 
        Multiplier => B_s, 
        Result => C_s);

end ARCH;
