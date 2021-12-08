library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

Entity dadda_adder_stage2 IS

        Port(
            Partial_product_0 : IN std_logic_vector(34 DOWNTO 0);
            Partial_product_1 : IN std_logic_vector(35 DOWNTO 0);
            Partial_product_2 : IN std_logic_vector(30 DOWNTO 0);
            Partial_product_3 : IN std_logic_vector(29 DOWNTO 0);
            Partial_product_4 : IN std_logic_vector(11 DOWNTO 0);
            Partial_product_5 : IN std_logic_vector(28 DOWNTO 0);
            Partial_product_6 : IN std_logic_vector(28 DOWNTO 0);
            Partial_product_7 : IN std_logic_vector(28 DOWNTO 0);
            Partial_product_8 : IN std_logic_vector(28 DOWNTO 0);
            Partial_product_9 : IN std_logic_vector(28 DOWNTO 0);
            Partial_product_10: IN std_logic_vector(28 DOWNTO 0);
            Partial_product_11: IN std_logic_vector(27 DOWNTO 0);
            Partial_product_12: IN std_logic_vector(25 DOWNTO 0);
            
            --OUTPUTS
            stage3_pp0        : OUT std_logic_vector(40 DOWNTO 0);
            stage3_pp1        : OUT std_logic_vector(41 DOWNTO 0);
            stage3_pp2        : OUT std_logic_vector(36 DOWNTO 0);
            stage3_pp3        : OUT std_logic_vector(35 DOWNTO 0);
            stage3_pp4        : OUT std_logic_vector(5 DOWNTO 0);
            stage3_pp5        : OUT std_logic_vector(28 DOWNTO 0);
            stage3_pp6        : OUT std_logic_vector(27 DOWNTO 0);
            stage3_pp7        : OUT std_logic;
            stage3_pp8        : OUT std_logic_vector(28 DOWNTO 0);
            stage3_pp9        : OUT std_logic_vector(4 DOWNTO 0);
            stage3_pp10       : OUT std_logic_vector(7 DOWNTO 0);
            stage3_pp11       : OUT std_logic_vector(9 DOWNTO 0);
            stage3_pp12       : OUT std_logic_vector(10 DOWNTO 0)
        );

end dadda_adder_stage2;

Architecture arch of dadda_adder_stage2 is

    Component Addend_row is

        Generic (N: integer:= 32);

        Port( 
            Addend_1    : IN     std_logic_vector (N-1 DOWNTO 0);
            Addend_2    : IN     std_logic_vector (N-1 DOWNTO 0);
            Addend_3    : IN     std_logic_vector (N-4 DOWNTO 0);
            Sum         : OUT    std_logic_vector (N-1 DOWNTO 0);
            Carry       : OUT    std_logic_vector (N-1 DOWNTO 0)  
        );

    end Component;
    
    SIGNAL op1, op2     : std_logic_vector(30 DOWNTO 0);
    SIGNAL op3          : std_logic_vector(27 DOWNTO 0);
    SIGNAL somma1       : std_logic_vector(30 DOWNTO 0);
    SIGNAL carry1       : std_logic_vector(30 DOWNTO 0);

    SIGNAL op4, op5     : std_logic_vector(26 DOWNTO 0);
    SIGNAL op6          : std_logic_vector(23 DOWNTO 0);
    SIGNAL somma2       : std_logic_vector(26 DOWNTO 0);
    SIGNAL carry2       : std_logic_vector(26 DOWNTO 0);

    SIGNAL op7, op8     : std_logic_vector(22 DOWNTO 0);
    SIGNAL op9          : std_logic_vector(19 DOWNTO 0);
    SIGNAL somma3       : std_logic_vector(22 DOWNTO 0);
    SIGNAL carry3       : std_logic_vector(22 DOWNTO 0);
    
    begin

        op1(24 downto 0)  <= Partial_product_0(34 downto 10);
        op1(25)           <= Partial_product_1(35);
        op1(26)           <= Partial_product_5(28);
        op1(28 downto 27) <= Partial_product_6(28 downto 27);
        op1(30 downto 29) <= Partial_product_7(28 downto 27);

        op2(5 downto 0)   <= Partial_product_1(15 downto 10);
        op2(6)            <= Partial_product_2(14);
        op2(24 downto 7)  <= Partial_product_1(34 downto 17);
        op2(25)           <= Partial_product_5(27);
        op2(26)           <= Partial_product_6(26);
        op2(28 downto 27) <= Partial_product_7(26 downto 25);
        op2(30 downto 29) <= Partial_product_8(26 downto 25);
        
        op3(3 downto 0)   <= Partial_product_2(13 downto 10);
        op3(4)            <= Partial_product_3(12);
        op3(20 downto 5)  <= Partial_product_2(30 downto 15);
        op3(21)           <= Partial_product_3(29);
        op3(23 downto 22) <= Partial_product_6(25 downto 24);
        op3(24)           <= Partial_product_7(24);
        op3(26 downto 25) <= Partial_product_8(24 downto 23);
        op3(27)           <= Partial_product_9(23);

        row1 : Addend_row GENERIC MAP (N => 31) PORT MAP (op1, op2, op3, somma1, carry1);

        op4(3 downto 0)   <= Partial_product_3(11 downto 8);
        op4(4)            <= Partial_product_4(10);
        op4(5)            <= Partial_product_3(13);
        op4(6)            <= Partial_product_5(10);
        op4(20 downto 7)  <= Partial_product_3(28 downto 15);
        op4(23 downto 21) <= Partial_product_7(23 downto 21);
        op4(24)           <= Partial_product_8(22);
        op4(26 downto 25) <= Partial_product_9(22 downto 21);

        op5(3 downto 0)   <= Partial_product_4(9 downto 6);
        op5(4)            <= Partial_product_5(8);
        op5(5)            <= Partial_product_4(11);
        op5(6)            <= Partial_product_6(8);
        op5(18 downto 7)  <= Partial_product_5(22 downto 11);
        op5(19)           <= Partial_product_6(21);
        op5(23 downto 20) <= Partial_product_8(21 downto 18);
        op5(24)           <= Partial_product_9(20);
        op5(26 downto 25) <= Partial_product_10(20 downto 19);

        op6(1 downto 0)   <= Partial_product_5(7 downto 6);
        op6(2)            <= Partial_product_6(6);
        op6(3)            <= Partial_product_5(9);
        op6(4)            <= Partial_product_7(6);
        op6(5)            <= Partial_product_6(9);
        op6(6)            <= Partial_product_8(6);
        op6(16 downto 7)  <= Partial_product_6(20 downto 11);
        op6(21 downto 17) <= Partial_product_9(19 downto 15);
        op6(22)           <= Partial_product_10(18);
        op6(23)           <= Partial_product_11(17);

        row2 : Addend_row GENERIC MAP (N => 27) PORT MAP (op4, op5, op6, somma2, carry2);

        op7(1 downto 0)   <= Partial_product_6(5 downto 4);
        op7(2)            <= Partial_product_7(4);
        op7(3)            <= Partial_product_6(7);
        op7(4)            <= Partial_product_8(4);
        op7(5)            <= Partial_product_7(7);
        op7(6)            <= Partial_product_9(4);
        op7(14 downto 7)  <= Partial_product_8(14 downto 7);
        op7(15)           <= Partial_product_9(13);
        op7(21 downto 16) <= Partial_product_10(17 downto 12);
        op7(22)           <= Partial_product_11(16);

        op8(1 downto 0)   <= Partial_product_7(3 downto 2);
        op8(2)            <= Partial_product_8(2);
        op8(3)            <= Partial_product_7(5);
        op8(4)            <= Partial_product_9(2);
        op8(5)            <= Partial_product_8(5);
        op8(6)            <= Partial_product_10(2);
        op8(7)            <= Partial_product_9(5);
        op8(8)            <= Partial_product_11(2);
        op8(14 downto 9)  <= Partial_product_9(12 downto 7);
        op8(21 downto 15) <= Partial_product_11(15 downto 9);
        op8(22)           <= Partial_product_12(14);

        op9(0)            <= Partial_product_9(0);
        op9(1)            <= Partial_product_8(3);
        op9(2)            <= Partial_product_10(0);
        op9(3)            <= Partial_product_9(3);
        op9(4)            <= Partial_product_11(0);
        op9(5)            <= Partial_product_10(3);
        op9(6)            <= Partial_product_12(0);
        op9(7)            <= Partial_product_11(3);
        op9(19 downto 8)  <= Partial_product_12(13 downto 2);

        row3 : Addend_row GENERIC MAP (N => 23) PORT MAP (op7, op8, op9, somma3, carry3);

        --Outputs assignmets 
        stage3_pp0         <= somma1 & Partial_product_0(9 downto 0);
        stage3_pp1         <= carry1 & '0' & Partial_product_1(9 downto 0);
        stage3_pp2         <= somma2 & Partial_product_2(9 DOWNTO 0);
        stage3_pp3         <= carry2 & '0' & Partial_product_3(7 DOWNTO 0);
        stage3_pp4         <= Partial_product_4(5 DOWNTO 0);
        stage3_pp5         <= somma3 & Partial_product_5(5 downto 0);
        stage3_pp6         <= carry3 & '0' & Partial_product_6(3 downto 0);
        stage3_pp7         <= Partial_product_7(0);
        stage3_pp8         <= Partial_product_8(28 downto 27) & "00000000000000000000000000" &  Partial_product_8(0);
        stage3_pp9         <= Partial_product_9(28 downto 24);
        stage3_pp10        <= Partial_product_10(28 downto 21 );
        stage3_pp11        <= Partial_product_11(27 downto 18);
        stage3_pp12        <= Partial_product_12(25 downto 15);

end Architecture;
