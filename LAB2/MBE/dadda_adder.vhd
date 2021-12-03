LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY dadda_adder IS

        PORT(
            Partial_product_0 : IN std_logic_vector(28 DOWNTO 0);
            Partial_product_1 : IN std_logic_vector(28 DOWNTO 0);
            Partial_product_2 : IN std_logic_vector(28 DOWNTO 0);
            Partial_product_3 : IN std_logic_vector(28 DOWNTO 0);
            Partial_product_4 : IN std_logic_vector(28 DOWNTO 0);
            Partial_product_5 : IN std_logic_vector(28 DOWNTO 0);
            Partial_product_6 : IN std_logic_vector(28 DOWNTO 0);
            Partial_product_7 : IN std_logic_vector(28 DOWNTO 0);
            Partial_product_8 : IN std_logic_vector(28 DOWNTO 0);
            Partial_product_9 : IN std_logic_vector(28 DOWNTO 0);
            Partial_product_10: IN std_logic_vector(28 DOWNTO 0);
            Partial_product_11: IN std_logic_vector(28 DOWNTO 0);
            Partial_product_12: IN std_logic_vector(28 DOWNTO 0);

            
        );

END dadda_adder;