LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY MBE IS

   PORT( 
      Multiplicand       : IN     std_logic_vector (31 DOWNTO 0);
      Multiplier         : IN     std_logic_vector (31 DOWNTO 0);
      Result             : OUT    std_logic_vector (63 DOWNTO 0)
   );

END MBE;

ARCHITECTURE arch OF MBE IS

    COMPONENT booth_mul 

        PORT (
            Multiplicand_cut    :   IN  std_logic_vector(23 DOWNTO 0);
            Multiplier_cut      :   IN  std_logic_vector(23 DOWNTO 0);  
            Result_cut          :   OUT std_logic_vector(47 DOWNTO 0)
        );
    
    END COMPONENT;

BEGIN

    MUL: booth_mul PORT MAP (Multiplicand(23 DOWNTO 0), Multiplier(23 DOWNTO 0), Result(47 DOWNTO 0));
    Result(63 DOWNTO 48) <= "0000000000000000";

END arch;