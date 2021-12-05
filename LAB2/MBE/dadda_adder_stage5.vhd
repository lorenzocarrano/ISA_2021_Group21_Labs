LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY dadda_adder_stage5 IS

        PORT(
            Partial_product_0 : IN std_logic_vector(46 DOWNTO 0);
            Partial_product_1 : IN std_logic_vector(47 DOWNTO 0);
            Partial_product_2 : IN std_logic_vector(3 DOWNTO 0);
            Partial_product_3 : IN std_logic_vector(38 DOWNTO 0);
            Partial_product_4 : IN std_logic;
            Partial_product_5 : IN std_logic;
            Partial_product_6 : IN std_logic;
            Partial_product_7 : IN std_logic_vector(4 DOWNTO 0);

            stage6_pp0  : OUT std_logic_vector(47 DOWNTO 0);
            stage6_pp1  : OUT std_logic_vector(48 DOWNTO 0)
        );

END dadda_adder_stage5;

ARCHITECTURE arch OF dadda_adder_stage5 IS

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

    SIGNAL op1, op2     : std_logic_vector(46 DOWNTO 0);
    SIGNAL op3          : std_logic_vector(43 DOWNTO 0);
    SIGNAL somma1       : std_logic_vector(46 DOWNTO 0);
    SIGNAL carry1       : std_logic_vector(46 DOWNTO 0);    

BEGIN

    op1(44 DOWNTO 0)    <= Partial_product_0(46 DOWNTO 2);
    op1(45)             <= Partial_product_1(47);
    op1(46)             <= '0';

    op2(1 DOWNTO 0)     <= Partial_product_1(3 DOWNTO 2);
    op2(2)              <= Partial_product_2(2);
    op2(44 DOWNTO 3)    <= Partial_product_1(46 DOWNTO 5);
    op2(45)             <= Partial_product_6;
    op2(46)             <= '0';

    op3(0)              <= Partial_product_3(0);
    op3(1)              <= Partial_product_2(3);
    op3(2)              <= Partial_product_4;
    op3(3)              <= Partial_product_3(3);
    op3(4)              <= Partial_product_5;
    op3(38 DOWNTO 5)    <= Partial_product_3(38 DOWNTO 5);
    op3(43 DOWNTO 39)   <= Partial_product_7;

    row1 : Addend_row GENERIC MAP (N => 47) PORT MAP (op1, op2, op3, somma1, carry1);

    stage6_pp0 <= somma1(45 DOWNTO 0) & Partial_product_0(1 DOWNTO 0);
    stage6_pp1 <= carry1(45 DOWNTO 0) & Partial_product_2(0) & Partial_product_1(1 DOWNTO 0);

END arch;