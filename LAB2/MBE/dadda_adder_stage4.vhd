LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

-- passare da 4 a 3 layers

ENTITY dadda_adder_stage4 IS

        PORT(
            stage4_pp0  : IN std_logic_vector(44 DOWNTO 0);
            stage4_pp1  : IN std_logic_vector(45 DOWNTO 0);
            stage4_pp2  : IN std_logic_vector(40 DOWNTO 0);
            stage4_pp3  : IN std_logic_vector(39 DOWNTO 0);
            stage4_pp4  : IN std_logic;
            stage4_pp5  : IN std_logic;
            stage4_pp6 : IN std_logic_vector(1 DOWNTO 0);
            stage4_pp7 : IN std_logic_vector(3 DOWNTO 0);
            stage4_pp8 : IN std_logic_vector(4 DOWNTO 0);

            stage5_pp0  : OUT std_logic_vector(46 DOWNTO 0);
            stage5_pp1  : OUT std_logic_vector(47 DOWNTO 0);
            stage5_pp2  : OUT std_logic_vector(3 DOWNTO 0);
            stage5_pp3  : OUT std_logic_vector(38 DOWNTO 0);
            stage5_pp4  : OUT std_logic;
            stage5_pp5  : OUT std_logic;
            stage5_pp6  : OUT std_logic;
            stage5_pp7  : OUT std_logic_vector(4 DOWNTO 0)
            
        );

END dadda_adder_stage4;

ARCHITECTURE arch OF dadda_adder_stage4 IS

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

    SIGNAL op1, op2     : std_logic_vector(42 DOWNTO 0);
    SIGNAL op3          : std_logic_vector(39 DOWNTO 0);
    SIGNAL somma1       : std_logic_vector(42 DOWNTO 0);
    SIGNAL carry1       : std_logic_vector(42 DOWNTO 0);

BEGIN

    op1(40 DOWNTO 0)        <= stage4_pp0(44 DOWNTO 4);
    op1(41)                 <= stage4_pp1(45);
    op1(42)                 <= stage4_pp6(1);

    op2(1 DOWNTO 0)         <= stage4_pp1(5 DOWNTO 4);
    op2(2)                  <= stage4_pp2(4);
    op2(40 DOWNTO 3)        <= stage4_pp1(44 DOWNTO 7);
    op2(41)                 <= stage4_pp6(0);
    op2(42)                 <= stage4_pp7(2);

    op3(0)                  <= stage4_pp3(2);
    op3(36 DOWNTO 1)        <= stage4_pp2(40 DOWNTO 5);
    op3(37)                 <= stage4_pp3(39);
    op3(39 DOWNTO 38)       <= stage4_pp7(1 DOWNTO 0);

    row1 : Addend_row GENERIC MAP (N => 43) PORT MAP (op1, op2, op3, somma1, carry1);

    stage5_pp0      <= somma1 & stage4_pp0(3 DOWNTO 0);
    stage5_pp1      <= carry1 & '0' & stage4_pp1(3 DOWNTO 0);
    stage5_pp2      <= stage4_pp2(3 DOWNTO 0);
    stage5_pp3      <= stage4_pp3(38 DOWNTO 0);
    stage5_pp4      <= stage4_pp4;
    stage5_pp5      <= stage4_pp5;
    stage5_pp6      <= stage4_pp7(3);
    stage5_pp7      <= stage4_pp8;

END arch;