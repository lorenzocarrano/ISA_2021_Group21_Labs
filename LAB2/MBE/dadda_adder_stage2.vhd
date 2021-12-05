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
    
    begin

        op1(24 downto 0) <= Partial_product_0(34 downto 10);
        op1(25) <= Partial_product_1(35);
        op1(26) <= Partial_product_5(28);
        op1(28 downto 27) <= Partial_product_6(28 downto 27);
        op1(29 downto 30) <= Partial_product_6(28 downto 27);

        


end Architecture;