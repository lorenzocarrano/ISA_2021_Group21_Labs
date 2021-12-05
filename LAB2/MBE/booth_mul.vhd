LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY booth_mul IS

   PORT( 
      Multiplicand_cut       : IN     std_logic_vector (23 DOWNTO 0);
      Multiplier_cut         : IN     std_logic_vector (23 DOWNTO 0);
      Result_cut             : OUT    std_logic_vector (47 DOWNTO 0)
   );

END booth_mul;

ARCHITECTURE arch OF booth_mul IS

    COMPONENT dadda_adder_stage1 IS

        PORT(
            Partial_product_0 : IN std_logic_vector(27 DOWNTO 0);
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
            Partial_product_11: IN std_logic_vector(27 DOWNTO 0);
            Partial_product_12: IN std_logic_vector(25 DOWNTO 0);

            
        );

    END COMPONENT;

    COMPONENT partial_product IS

        PORT(
            Multiplicand     :   IN  std_logic_vector(23 DOWNTO 0);
            Select_bits      :   IN  std_logic_vector(2 DOWNTO 0);
            Partial_product_i:   OUT std_logic_vector(24 DOWNTO 0);
            Sign_bit         :   OUT std_logic    
        );

    END COMPONENT;

    SIGNAL Multiplier_ext: std_logic_vector(26 DOWNTO 0) := (OTHERS => '0');
    SIGNAL Sign_pp: std_logic_vector(12 DOWNTO 0);
    SIGNAL pp_1, pp_2, pp_3, pp_4, pp_5, pp_6, pp_7, pp_8, pp_9, pp_10: std_logic_vector(28 DOWNTO 0) := (OTHERS => '0');
    SIGNAL pp_0, pp_11: std_logic_vector(27 DOWNTO 0) := (OTHERS => '0');
    SIGNAL pp_12: std_logic_vector(25 DOWNTO 0) := (OTHERS => '0');
BEGIN

    Multiplier_ext(24 DOWNTO 1) <= Multiplier_cut;

    pp_0(25) <= Sign_pp(0);
    pp_0(26) <= Sign_pp(0);
    pp_0(27) <= NOT(Sign_pp(0));

    pp_1(0) <= Sign_pp(0);
    pp_1(27)<= NOT(Sign_pp(1));
    pp_1(28)<= '1';

    pp_2(0) <= Sign_pp(1);
    pp_2(27)<= NOT(Sign_pp(2));
    pp_2(28)<= '1';

    pp_3(0) <= Sign_pp(2);
    pp_3(27)<= NOT(Sign_pp(3));
    pp_3(28)<= '1';

    pp_4(0) <= Sign_pp(3);
    pp_4(27)<= NOT(Sign_pp(4));
    pp_4(28)<= '1';

    pp_5(0) <= Sign_pp(4);
    pp_5(27)<= NOT(Sign_pp(5));
    pp_5(28)<= '1';

    pp_6(0) <= Sign_pp(5);
    pp_6(27)<= NOT(Sign_pp(6));
    pp_6(28)<= '1';

    pp_7(0) <= Sign_pp(6);
    pp_7(27)<= NOT(Sign_pp(7));
    pp_7(28)<= '1';

    pp_8(0) <= Sign_pp(7);
    pp_8(27)<= NOT(Sign_pp(8));
    pp_8(28)<= '1';

    pp_9(0) <= Sign_pp(8);
    pp_9(27)<= NOT(Sign_pp(9));
    pp_9(28)<= '1';

    pp_10(0) <= Sign_pp(9);
    pp_10(27)<= NOT(Sign_pp(10));
    pp_10(28)<= '1';

    pp_11(0) <= Sign_pp(10);
    pp_11(27)<= NOT(Sign_pp(11));
    --pp_11(28)<= '1';

    pp_12(0) <= Sign_pp(11);

    Partial_product_0    :  partial_product PORT MAP (Multiplicand_cut, Multiplier_ext(2 DOWNTO 0), pp_0(24 DOWNTO 0), Sign_pp(0));
    Partial_product_1    :  partial_product PORT MAP (Multiplicand_cut, Multiplier_ext(4 DOWNTO 2), pp_1(26 DOWNTO 2), Sign_pp(1));
    Partial_product_2    :  partial_product PORT MAP (Multiplicand_cut, Multiplier_ext(6 DOWNTO 4), pp_2(26 DOWNTO 2), Sign_pp(2));
    Partial_product_3    :  partial_product PORT MAP (Multiplicand_cut, Multiplier_ext(8 DOWNTO 6), pp_3(26 DOWNTO 2), Sign_pp(3));
    Partial_product_4    :  partial_product PORT MAP (Multiplicand_cut, Multiplier_ext(10 DOWNTO 8), pp_4(26 DOWNTO 2), Sign_pp(4));
    Partial_product_5    :  partial_product PORT MAP (Multiplicand_cut, Multiplier_ext(12 DOWNTO 10), pp_5(26 DOWNTO 2), Sign_pp(5));
    Partial_product_6    :  partial_product PORT MAP (Multiplicand_cut, Multiplier_ext(14 DOWNTO 12), pp_6(26 DOWNTO 2), Sign_pp(6));
    Partial_product_7    :  partial_product PORT MAP (Multiplicand_cut, Multiplier_ext(16 DOWNTO 14), pp_7(26 DOWNTO 2), Sign_pp(7));
    Partial_product_8    :  partial_product PORT MAP (Multiplicand_cut, Multiplier_ext(18 DOWNTO 16), pp_8(26 DOWNTO 2), Sign_pp(8));
    Partial_product_9    :  partial_product PORT MAP (Multiplicand_cut, Multiplier_ext(20 DOWNTO 18), pp_9(26 DOWNTO 2), Sign_pp(9));
    Partial_product_10   :  partial_product PORT MAP (Multiplicand_cut, Multiplier_ext(22 DOWNTO 20), pp_10(26 DOWNTO 2), Sign_pp(10));
    Partial_product_11   :  partial_product PORT MAP (Multiplicand_cut, Multiplier_ext(24 DOWNTO 22), pp_11(26 DOWNTO 2), Sign_pp(11));
    Partial_product_12   :  partial_product PORT MAP (Multiplicand_cut, Multiplier_ext(26 DOWNTO 24), pp_12(26 DOWNTO 2), Sign_pp(12));





END arch;