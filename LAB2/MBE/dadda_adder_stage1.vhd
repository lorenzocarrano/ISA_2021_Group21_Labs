LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY dadda_adder_stage1 IS

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

            stage2_pp0  : OUT std_logic_vector(34 DOWNTO 0);
            stage2_pp1  : OUT std_logic_vector(35 DOWNTO 0);
            stage2_pp2  : OUT std_logic_vector(30 DOWNTO 0);
            stage2_pp3  : OUT std_logic_vector(29 DOWNTO 0);
            stage2_pp4  : OUT std_logic_vector(11 DOWNTO 0);
            stage2_pp5  : OUT std_logic_vector(28 DOWNTO 0);
            stage2_pp6  : OUT std_logic_vector(28 DOWNTO 0);
            stage2_pp7  : OUT std_logic_vector(28 DOWNTO 0);
            stage2_pp8  : OUT std_logic_vector(28 DOWNTO 0);
            stage2_pp9  : OUT std_logic_vector(28 DOWNTO 0);
            stage2_pp10 : OUT std_logic_vector(28 DOWNTO 0);
            stage2_pp11 : OUT std_logic_vector(27 DOWNTO 0);
            stage2_pp12 : OUT std_logic_vector(25 DOWNTO 0)            
        );

END dadda_adder_stage1;

ARCHITECTURE arch OF dadda_adder_stage1 IS

    COMPONENT Addend_row IS

        Generic (N: integer:= 32);

        PORT( 
            Addend_1       : IN     std_logic_vector (N-1 DOWNTO 0);
            Addend_2       : IN     std_logic_vector (N-1 DOWNTO 0);
            Addend_3       : IN     std_logic_vector (N-4 DOWNTO 0);
            Sum            : OUT    std_logic_vector (N-1 DOWNTO 0);
            Carry          : OUT    std_logic_vector (N-1 DOWNTO 0)  
        );

    END COMPONENT;

    SIGNAL op1, op2     : std_logic_vector(18 DOWNTO 0);
    SIGNAL op3          : std_logic_vector(15 DOWNTO 0);
    SIGNAL somma1       : std_logic_vector(18 DOWNTO 0);
    SIGNAL carry1       : std_logic_vector(18 DOWNTO 0);
    SIGNAL op4, op5     : std_logic_vector(14 DOWNTO 0);
    SIGNAL op6          : std_logic_vector(11 DOWNTO 0);
    SIGNAL somma2       : std_logic_vector(14 DOWNTO 0);
    SIGNAL carry2       : std_logic_vector(14 DOWNTO 0);
    SIGNAL op7, op8     : std_logic_vector(10 DOWNTO 0);
    SIGNAL op9          : std_logic_vector(7 DOWNTO 0);
    SIGNAL somma3       : std_logic_vector(10 DOWNTO 0);
    SIGNAL carry3       : std_logic_vector(10 DOWNTO 0);
    SIGNAL op10, op11   : std_logic_vector(6 DOWNTO 0);
    SIGNAL op12         : std_logic_vector(3 DOWNTO 0);
    SIGNAL somma4       : std_logic_vector(6 DOWNTO 0);
    SIGNAL carry4       : std_logic_vector(6 DOWNTO 0);

BEGIN

    op1(11 DOWNTO 0)        <= Partial_product_0(27 DOWNTO 16);
    op1(12)                 <= Partial_product_1(28);
    op1(14 DOWNTO 13)       <= Partial_product_2(28 DOWNTO 27);
    op1(16 DOWNTO 15)       <= Partial_product_3(28 DOWNTO 27);
    op1(18 DOWNTO 17)       <= Partial_product_4(28 DOWNTO 27);

    op2(11 DOWNTO 0)        <= Partial_product_1(27 DOWNTO 16);
    op2(12)                 <= Partial_product_2(26);
    op2(14 DOWNTO 13)       <= Partial_product_3(26 DOWNTO 25);
    op2(16 DOWNTO 15)       <= Partial_product_4(26 DOWNTO 25);
    op2(18 DOWNTO 17)       <= Partial_product_5(26 DOWNTO 25);

    op3(9 DOWNTO 0)         <= Partial_product_2(25 DOWNTO 16);
    op3(10)                 <= Partial_product_3(24);
    op3(12 DOWNTO 11)       <= Partial_product_4(24 DOWNTO 23);
    op3(14 DOWNTO 13)       <= Partial_product_5(24 DOWNTO 23);
    op3(15)                 <= Partial_product_6(23);

    row1 : Addend_row GENERIC MAP (N => 19) PORT MAP (op1, op2, op3, somma1, carry1);

    op4(9 DOWNTO 0)         <= Partial_product_3(23 DOWNTO 14);
    op4(10)                 <= Partial_product_4(22);
    op4(12 DOWNTO 11)       <= Partial_product_5(22 DOWNTO 21);
    op4(14 DOWNTO 13)       <= Partial_product_6(22 DOWNTO 21);

    op5(9 DOWNTO 0)         <= Partial_product_4(21 DOWNTO 12);
    op5(10)                 <= Partial_product_5(20);
    op5(12 DOWNTO 11)       <= Partial_product_6(20 DOWNTO 19);
    op5(14 DOWNTO 13)       <= Partial_product_7(20 DOWNTO 19);

    op6(7 DOWNTO 0)         <= Partial_product_5(19 DOWNTO 12);
    op6(8)                 <= Partial_product_6(18);
    op6(10 DOWNTO 9)       <= Partial_product_7(18 DOWNTO 17);
    op6(11)                 <= Partial_product_8(17);

    row2 : Addend_row GENERIC MAP (N => 15) PORT MAP (op4, op5, op6, somma2, carry2);

    op7(7 DOWNTO 0)         <= Partial_product_6(17 DOWNTO 10);
    op7(8)                  <= Partial_product_7(16);
    op7(10 DOWNTO 9)        <= Partial_product_8(16 DOWNTO 15);

    op8(7 DOWNTO 0)         <= Partial_product_7(15 DOWNTO 8);
    op8(8)                  <= Partial_product_8(14);
    op8(10 DOWNTO 9)        <= Partial_product_9(14 DOWNTO 13);

    op9(5 DOWNTO 0)         <= Partial_product_8(13 DOWNTO 8);
    op9(6)                 <= Partial_product_9(12);
    op9(7)                 <= Partial_product_10(11);

    row3 : Addend_row GENERIC MAP (N => 11) PORT MAP (op7, op8, op9, somma3, carry3);

    op10(5 DOWNTO 0)        <= Partial_product_9(11 DOWNTO 6);
    op10(6)                 <= Partial_product_10(10);

    op11(5 DOWNTO 0)        <= Partial_product_10(9 DOWNTO 4);
    op11(6)                 <= Partial_product_11(8);

    op12                    <= Partial_product_11(7 DOWNTO 4);

    row4 : Addend_row GENERIC MAP (N => 7) PORT MAP (op10, op11, op12, somma4, carry4);

    stage2_pp0      <= somma1 & Partial_product_0(15 DOWNTO 0);
    stage2_pp1      <= carry1 & '0' & Partial_product_1(15 DOWNTO 0);
    stage2_pp2      <= somma2 & Partial_product_2(15 DOWNTO 0);
    stage2_pp3      <= carry2 & '0' & Partial_product_3(13 DOWNTO 0);
    stage2_pp4      <= Partial_product_4(11 DOWNTO 0);
    stage2_pp5      <= Partial_product_5(28 DOWNTO 27) & "0000" & somma3 & Partial_product_5(11 DOWNTO 0);
    stage2_pp6      <= Partial_product_6(28 DOWNTO 24) & "00" & carry3 & '0' & Partial_product_6(9 DOWNTO 0);
    stage2_pp7      <= Partial_product_7(28 DOWNTO 21) & "0000000000000" & Partial_product_7(7 DOWNTO 0);
    stage2_pp8      <= Partial_product_8(28 DOWNTO 18) & "000" & somma4 & Partial_product_8(7 DOWNTO 0);
    stage2_pp9      <= Partial_product_9(28 DOWNTO 15) & '0' & carry4 & '0' & Partial_product_9(5 DOWNTO 0);
    stage2_pp10     <= Partial_product_10(28 DOWNTO 12) & "00000000" & Partial_product_10(3 DOWNTO 0);
    stage2_pp11     <= Partial_product_11(27 DOWNTO 9) & "00000" & Partial_product_11(3 DOWNTO 0);
    stage2_pp12     <= Partial_product_12;

END arch;

