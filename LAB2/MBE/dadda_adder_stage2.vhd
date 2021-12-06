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
        );

end dadda_adder_stage2;

Architecture arch of dadda_adder_stage1 is

    Component Addend_row is

        Generic (N: integer:= 32);

        Port( 
            Addend_1       : IN     std_logic_vector (N-1 DOWNTO 0);
            Addend_2       : IN     std_logic_vector (N-1 DOWNTO 0);
            Addend_3       : IN     std_logic_vector (N-4 DOWNTO 0);
            Sum            : OUT    std_logic_vector (N-1 DOWNTO 0);
            Carry          : OUT    std_logic_vector (N-1 DOWNTO 0)  
        );

    end Component;
    
    SIGNAL op1, op2     : std_logic_vector(30 DOWNTO 0);
    SIGNAL op3          : std_logic_vector(27 DOWNTO 0);
    SIGNAL somma1       : std_logic_vector(30 DOWNTO 0);
    SIGNAL carry1       : std_logic_vector(30 DOWNTO 0);

    SIGNAL op4, op5     : std_logic_vector(26 DOWNTO 0);
    SIGNAL op6          : std_logic_vector(23 DOWNTO 0);

    
    begin

        op1(24 downto 0)  <= Partial_product_0(34 downto 10);
        op1(25)           <= Partial_product_1(35);
        op1(26)           <= Partial_product_5(28);
        op1(28 downto 27) <= Partial_product_6(28 downto 27);
        op1(29 downto 30) <= Partial_product_6(28 downto 27);

        op2(24 downto 0)  <= Partial_product_1(34 downto 10);
        op2(25) <= Partial_product_2(33);
        op2(26) <= Partial_product_6(26);
        op2(28 downto 27) <= Partial_product_7(26 downto 25);
        op2(30 downto 29) <= Partial_product_8(26 downto 25);
        
        op3(3 downto 0) <= Partial_product_2(13 downto 0);
        op3(4) <= Partial_product_3(12);
        op3(20 downto 5) <= Partial_product_2(30 downto 15);
        op3(21) <= Partial_product_3(29);
        op3(23 downto 22) <= Partial_product_6(25 downto 24);
        op3(24) <= Partial_product_7(24);
        op3(26 downto 25) <= Partial_product_8(24 downto 23);
        op3(27) <= Partial_product_9(23);

        row1 : Addend_row GENERIC MAP (N => 31) PORT MAP (op1, op2, op3, somma1, carry1);

        op4(3 downto 0) <= Partial_product_3(11 downto 8);
        op4(4) <= Partial_product_4(10);
        op4(5) <= Partial_product_3(13);
        op4(6) <= Partial_product_5(10);
        op4(20 downto 7) <= Partial_product_3(28 downto 15);
        op4(23 downto 21) <= Partial_product_7(23 downto 21);
        op4(24) <= Partial_product_8(22);
        op4(26 downto 25) <= Partial_product_9(22 downto 21);

end Architecture;