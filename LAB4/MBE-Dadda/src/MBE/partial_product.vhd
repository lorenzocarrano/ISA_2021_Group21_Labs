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
    SIGNAL PP_exit_mux, partial_product_sig: std_logic_vector(24 DOWNTO 0);

BEGIN 

    Sign_ext(0) <= Select_bits(2);
    Sign_ext(1) <= Select_bits(2);

    Sign_bit <= Select_bits(2);

    Select_case <= Sign_ext XOR Select_bits(1 DOWNTO 0);        

    WITH Select_case SELECT
        PP_exit_mux <= (OTHERS => '0') WHEN "00",
          '0' & Multiplicand WHEN "01",
          '0' & Multiplicand WHEN "10",
          Multiplicand & '0' WHEN "11",
          (OTHERS => 'X') WHEN OTHERS;

    WITH Select_bits(2) SELECT 
        partial_product_sig <= NOT(PP_exit_mux) WHEN '1',
        PP_exit_mux WHEN '0',
        (OTHERS => 'X') WHEN OTHERS;

    partial_product_i <= partial_product_sig;

END arch;
