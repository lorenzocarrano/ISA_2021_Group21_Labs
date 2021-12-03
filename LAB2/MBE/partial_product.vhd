LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY partial_product IS
    
    PORT(
        Multiplicand     :   IN  std_logic_vector(23 DOWNTO 0);
        Select_bits      :   IN  std_logic_vector(2 DOWNTO 0);
        Partial_product_i:   OUT std_logic_vector(24 DOWNTO 0);
        Sign_bit         :   OUT std_logic    
    );

END partial_product;

ARCHITECTURE arch OF partial_product IS

    SIGNAL Sign_ext, Select_case : std_logic_vector(1 DOWNTO 0);
    SIGNAL PP_exit_mux: std_logic_vector(24 DOWNTO 0);

BEGIN 

    Sign_ext(0) <= Select_bits(2);
    Sign_ext(1) <= Select_bits(2);

    Sign_bit <= Select_bits(2);

    Select_case <= Sign_ext XOR Select_bits(1 DOWNTO 0);        
    PROCESS (Select_case, Sign_ext)
    
    BEGIN
    
        CASE Select_case IS

            WHEN "00" =>  PP_exit_mux <= (OTHERS => '0');
            WHEN "01" =>  PP_exit_mux <= '0' & Multiplicand;
            WHEN "10" =>  PP_exit_mux <= '0' & Multiplicand;
            WHEN "11" =>  PP_exit_mux <= Multiplicand & '0';
            WHEN OTHERS => PP_exit_mux <= (OTHERS => 'X');
    
        END CASE;

        CASE Sign_ext(0) IS

            WHEN '1' => partial_product_i <= NOT(PP_exit_mux);
            WHEN '0' => partial_product_i <= PP_exit_mux;
            WHEN OTHERS => partial_product_i <= (OTHERS => 'X');

        END CASE;

    END PROCESS;

END arch;
