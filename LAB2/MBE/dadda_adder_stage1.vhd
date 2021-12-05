LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY dadda_adder_stage1 IS

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

END dadda_adder_stage1;

ARCHITECTURE arch OF dadda_adder_stage1 IS

    SIGNAL op1, op2: std_logic_vector(18 DOWNTO 0);
    SIGNAL somma1: std_logic_vector(18 DOWNTO 0);
    SIGNAL carry1: std_logic_vector(18 DOWNTO 0);
    SIGNAL op3: std_logic_vector(15 DOWNTO 0);
BEGIN

    op1(11 DOWNTO 0) <= Partial_product_0(27 DOWNTO 16);
    op1(12) <= Partial_product_1(28);
    op1(14 DOWNTO 13) <= Partial_product_2(28 DOWNTO 27);
    op1(16 DOWNTO 15) <= Partial_product_3(28 DOWNTO 27);
    op1(18 DOWNTO 16) <= Partial_product_4(28 DOWNTO 27);

    op2(11 DOWNTO 0) <= Partial_product_1(27 DOWNTO 16);
    op2(12) <= Partial_product_2(26);
    op2(14 DOWNTO 13) <= Partial_product_3(26 DOWNTO 25);
    op2(16 DOWNTO 15) <= Partial_product_4(26 DOWNTO 25);
    op2(18 DOWNTO 16) <= Partial_product_5(26 DOWNTO 25);

    op3(9 DOWNTO 0) <= Partial_product_2(25 DOWNTO 16);
    op3(10) <= Partial_product_3(24);
    op3(12 DOWNTO 11) <= Partial_product_4(24 DOWNTO 23);
    op3(14 DOWNTO 13) <= Partial_product_5(24 DOWNTO 23);
    op3(15) <= Partial_product_6(23);

    row1 : Addend_row GENERIC MAP (N => 19) PORT MAP (op1, op2, op3, somma1, carry1);