LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

-- passare da 6 a 4 layers

ENTITY dadda_adder_stage3 IS

        PORT(
            stage3_pp0  : IN std_logic_vector(40 DOWNTO 0);
            stage3_pp1  : IN std_logic_vector(41 DOWNTO 0);
            stage3_pp2  : IN std_logic_vector(36 DOWNTO 0);
            stage3_pp3  : IN std_logic_vector(35 DOWNTO 0);
            stage3_pp4  : IN std_logic_vector(5 DOWNTO 0);
            stage3_pp5  : IN std_logic_vector(28 DOWNTO 0);
            stage3_pp6  : IN std_logic_vector(27 DOWNTO 0);
            stage3_pp7  : IN std_logic;
            stage3_pp8  : IN std_logic_vector(28 DOWNTO 0);
            stage3_pp9  : IN std_logic_vector(4 DOWNTO 0);
            stage3_pp10 : IN std_logic_vector(7 DOWNTO 0);
            stage3_pp11 : IN std_logic_vector(9 DOWNTO 0);
            stage3_pp12 : IN std_logic_vector(10 DOWNTO 0);

            stage4_pp0  : OUT std_logic_vector(44 DOWNTO 0);
            stage4_pp1  : OUT std_logic_vector(45 DOWNTO 0);
            stage4_pp2  : OUT std_logic_vector(40 DOWNTO 0);
            stage4_pp3  : OUT std_logic_vector(39 DOWNTO 0);
            stage4_pp4  : OUT std_logic;
            stage4_pp5  : OUT std_logic;
            stage4_pp10 : OUT std_logic_vector(1 DOWNTO 0);
            stage4_pp11 : OUT std_logic_vector(3 DOWNTO 0);
            stage4_pp12 : OUT std_logic_vector(4 DOWNTO 0)
        );

END dadda_adder_stage3;

ARCHITECTURE arch OF dadda_adder_stage3 IS

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

    SIGNAL op1, op2     : std_logic_vector(38 DOWNTO 0);
    SIGNAL op3          : std_logic_vector(35 DOWNTO 0);
    SIGNAL somma1       : std_logic_vector(38 DOWNTO 0);
    SIGNAL carry1       : std_logic_vector(38 DOWNTO 0);
    SIGNAL op4, op5     : std_logic_vector(34 DOWNTO 0);
    SIGNAL op6          : std_logic_vector(31 DOWNTO 0);
    SIGNAL somma2       : std_logic_vector(34 DOWNTO 0);
    SIGNAL carry2       : std_logic_vector(34 DOWNTO 0);

BEGIN

    op1(34 DOWNTO 0)        <= stage3_pp0(40 DOWNTO 6);
    op1(35)                 <= stage3_pp1(41);
    op1(36)                 <= stage3_pp8(28);
    op1(38 DOWNTO 37)       <= stage3_pp9(4 DOWNTO 3);

    op2(3 DOWNTO 0)         <= stage3_pp1(9 DOWNTO 6);
    op2(4)                  <= stage3_pp2(8);
    op2(34 DOWNTO 5)        <= stage3_pp1(40 DOWNTO 11);
    op2(35)                 <= stage3_pp8(27);
    op2(36)                 <= stage3_pp9(2);
    op2(38 DOWNTO 37)       <= stage3_pp10(5 DOWNTO 4);

    op3(1 DOWNTO 0)         <= stage3_pp2(7 DOWNTO 6);
    op3(2)                  <= stage3_pp3(6);
    op3(30 DOWNTO 3)        <= stage3_pp2(36 DOWNTO 9);
    op3(31)                 <= stage3_pp3(35);
    op3(33 DOWNTO 32)       <= stage3_pp9(1 DOWNTO 0);
    op3(34)                 <= stage3_pp10(3);
    op3(35)                 <= stage3_pp11(5);

    row1 : Addend_row GENERIC MAP (N => 39) PORT MAP (op1, op2, op3, somma1, carry1);

    op4(1 DOWNTO 0)         <= stage3_pp3(5 DOWNTO 4);
    op4(2)                  <= stage3_pp4(4);
    op4(3)                  <= stage3_pp3(7);
    op4(4)                  <= stage3_pp5(4);
    op4(30 DOWNTO 5)        <= stage3_pp3(34 DOWNTO 9);
    op4(33 DOWNTO 31)       <= stage3_pp10(2 DOWNTO 0);
    op4(34)                 <= stage3_pp11(4);

    op5(1 DOWNTO 0)         <= stage3_pp4(3 DOWNTO 2);
    op5(2)                  <= stage3_pp5(2); -- prima era 3
    op5(3)                  <= stage3_pp4(5);
    op5(4)                  <= stage3_pp6(2);
    op5(28 DOWNTO 5)        <= stage3_pp5(28 DOWNTO 5);
    op5(29)                 <= stage3_pp6(27);
    op5(33 DOWNTO 30)       <= stage3_pp11(3 DOWNTO 0);
    op5(34)                 <= stage3_pp12(5);

    op6(0)                  <= stage3_pp6(0);
    op6(1)                  <= stage3_pp5(3);
    op6(2)                  <= stage3_pp7;
    op6(3)                  <= stage3_pp6(3);
    op6(4)                  <= stage3_pp8(0);
    op6(26 DOWNTO 5)        <= stage3_pp6(26 DOWNTO 5);
    op6(31 DOWNTO 27)       <= stage3_pp12(4 DOWNTO 0);

    row2 : Addend_row GENERIC MAP (N => 35) PORT MAP (op4, op5, op6, somma2, carry2);

    stage4_pp0      <= somma1 & stage3_pp0(5 DOWNTO 0);
    stage4_pp1      <= carry1 & '0' & stage3_pp1(5 DOWNTO 0);
    stage4_pp2      <= somma2 & stage3_pp2(5 DOWNTO 0);
    stage4_pp3      <= carry2 & '0' & stage3_pp3(3 DOWNTO 0);
    stage4_pp4      <= stage3_pp4(0);
    stage4_pp5      <= stage3_pp5(0);
    stage4_pp10     <= stage3_pp10(7 DOWNTO 6);
    stage4_pp11     <= stage3_pp11(9 DOWNTO 6);
    stage4_pp12     <= stage3_pp12(10 DOWNTO 6);

END arch;