library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;

entity tb_MBE_all is
end entity;

architecture ARCH of tb_MBE_all is

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

END COMPONENT;

COMPONENT dadda_adder_stage2 IS

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

END COMPONENT;

COMPONENT dadda_adder_stage3 IS

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

END COMPONENT;

COMPONENT dadda_adder_stage4 IS

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

END COMPONENT;


COMPONENT dadda_adder_stage5 IS

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
SIGNAL pp_12: std_logic_vector(26 DOWNTO 0) := (OTHERS => '0');

signal stage2_pp0_s : std_logic_vector(34 DOWNTO 0);
signal stage2_pp1_s : std_logic_vector(35 DOWNTO 0);
signal stage2_pp2_s : std_logic_vector(30 DOWNTO 0);
signal stage2_pp3_s : std_logic_vector(29 DOWNTO 0);
signal stage2_pp4_s : std_logic_vector(11 DOWNTO 0);
signal stage2_pp5_s : std_logic_vector(28 DOWNTO 0);
signal stage2_pp6_s : std_logic_vector(28 DOWNTO 0);
signal stage2_pp7_s : std_logic_vector(28 DOWNTO 0);
signal stage2_pp8_s : std_logic_vector(28 DOWNTO 0);
signal stage2_pp9_s : std_logic_vector(28 DOWNTO 0);
signal stage2_pp10_s : std_logic_vector(28 DOWNTO 0);
signal stage2_pp11_s : std_logic_vector(27 DOWNTO 0);
signal stage2_pp12_s : std_logic_vector(25 DOWNTO 0);

signal stage3_pp0_s : std_logic_vector(40 DOWNTO 0);
signal stage3_pp1_s : std_logic_vector(41 DOWNTO 0);
signal stage3_pp2_s : std_logic_vector(36 DOWNTO 0);
signal stage3_pp3_s : std_logic_vector(35 DOWNTO 0);
signal stage3_pp4_s : std_logic_vector(5 DOWNTO 0);
signal stage3_pp5_s : std_logic_vector(28 DOWNTO 0);
signal stage3_pp6_s : std_logic_vector(27 DOWNTO 0);
signal stage3_pp7_s : std_logic;
signal stage3_pp8_s : std_logic_vector(28 DOWNTO 0);
signal stage3_pp9_s : std_logic_vector(4 DOWNTO 0);
signal stage3_pp10_s : std_logic_vector(7 DOWNTO 0);
signal stage3_pp11_s : std_logic_vector(9 DOWNTO 0);
signal stage3_pp12_s : std_logic_vector(10 DOWNTO 0);

        
signal stage4_pp0_s : std_logic_vector(44 DOWNTO 0);
signal stage4_pp1_s : std_logic_vector(45 DOWNTO 0);
signal stage4_pp2_s : std_logic_vector(40 DOWNTO 0);
signal stage4_pp3_s : std_logic_vector(39 DOWNTO 0);
signal stage4_pp4_s : std_logic;
signal stage4_pp5_s : std_logic;
signal stage4_pp10_s : std_logic_vector(1 DOWNTO 0);
signal stage4_pp11_s : std_logic_vector(3 DOWNTO 0);
signal stage4_pp12_s : std_logic_vector(4 DOWNTO 0);

signal stage5_pp0_s : std_logic_vector(46 DOWNTO 0);
signal stage5_pp1_s : std_logic_vector(47 DOWNTO 0);
signal stage5_pp2_s : std_logic_vector(3 DOWNTO 0);
signal stage5_pp3_s : std_logic_vector(38 DOWNTO 0);
signal stage5_pp4_s : std_logic;
signal stage5_pp5_s : std_logic;
signal stage5_pp6_s : std_logic;
signal stage5_pp7_s : std_logic_vector(4 DOWNTO 0);

signal stage6_pp0_s : std_logic_vector(47 DOWNTO 0);
signal stage6_pp1_s : std_logic_vector(48 DOWNTO 0);

signal Result_cut_s : unsigned(48 DOWNTO 0);

signal A_s, B_s: std_logic_vector (31 DOWNTO 0);
signal C_s: std_logic_vector (63 DOWNTO 0);

BEGIN

Multiplier_ext(24 DOWNTO 1) <= B_s(23 DOWNTO 0);

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

Partial_product_0    :  partial_product PORT MAP (A_s(23 DOWNTO 0), Multiplier_ext(2 DOWNTO 0), pp_0(24 DOWNTO 0), Sign_pp(0));
Partial_product_1    :  partial_product PORT MAP (A_s(23 DOWNTO 0), Multiplier_ext(4 DOWNTO 2), pp_1(26 DOWNTO 2), Sign_pp(1));
Partial_product_2    :  partial_product PORT MAP (A_s(23 DOWNTO 0), Multiplier_ext(6 DOWNTO 4), pp_2(26 DOWNTO 2), Sign_pp(2));
Partial_product_3    :  partial_product PORT MAP (A_s(23 DOWNTO 0), Multiplier_ext(8 DOWNTO 6), pp_3(26 DOWNTO 2), Sign_pp(3));
Partial_product_4    :  partial_product PORT MAP (A_s(23 DOWNTO 0), Multiplier_ext(10 DOWNTO 8), pp_4(26 DOWNTO 2), Sign_pp(4));
Partial_product_5    :  partial_product PORT MAP (A_s(23 DOWNTO 0), Multiplier_ext(12 DOWNTO 10), pp_5(26 DOWNTO 2), Sign_pp(5));
Partial_product_6    :  partial_product PORT MAP (A_s(23 DOWNTO 0), Multiplier_ext(14 DOWNTO 12), pp_6(26 DOWNTO 2), Sign_pp(6));
Partial_product_7    :  partial_product PORT MAP (A_s(23 DOWNTO 0), Multiplier_ext(16 DOWNTO 14), pp_7(26 DOWNTO 2), Sign_pp(7));
Partial_product_8    :  partial_product PORT MAP (A_s(23 DOWNTO 0), Multiplier_ext(18 DOWNTO 16), pp_8(26 DOWNTO 2), Sign_pp(8));
Partial_product_9    :  partial_product PORT MAP (A_s(23 DOWNTO 0), Multiplier_ext(20 DOWNTO 18), pp_9(26 DOWNTO 2), Sign_pp(9));
Partial_product_10   :  partial_product PORT MAP (A_s(23 DOWNTO 0), Multiplier_ext(22 DOWNTO 20), pp_10(26 DOWNTO 2), Sign_pp(10));
Partial_product_11   :  partial_product PORT MAP (A_s(23 DOWNTO 0), Multiplier_ext(24 DOWNTO 22), pp_11(26 DOWNTO 2), Sign_pp(11));
Partial_product_12   :  partial_product PORT MAP (A_s(23 DOWNTO 0), Multiplier_ext(26 DOWNTO 24), pp_12(26 DOWNTO 2), Sign_pp(12));


STAGE1:
    dadda_adder_stage1 PORT MAP (
        Partial_product_0 => pp_0,
        Partial_product_1 => pp_1,
        Partial_product_2 => pp_2,
        Partial_product_3 => pp_3,
        Partial_product_4 => pp_4,
        Partial_product_5 => pp_5,
        Partial_product_6 => pp_6,
        Partial_product_7 => pp_7,
        Partial_product_8 => pp_8,
        Partial_product_9 => pp_9,
        Partial_product_10 => pp_10,
        Partial_product_11 => pp_11,
        Partial_product_12 => pp_12(25 DOWNTO 0),

        stage2_pp0 => stage2_pp0_s,
        stage2_pp1 => stage2_pp1_s,
        stage2_pp2 => stage2_pp2_s,
        stage2_pp3 => stage2_pp3_s,
        stage2_pp4 => stage2_pp4_s,
        stage2_pp5 => stage2_pp5_s,
        stage2_pp6 => stage2_pp6_s,
        stage2_pp7 => stage2_pp7_s,
        stage2_pp8 => stage2_pp8_s,
        stage2_pp9 => stage2_pp9_s,
        stage2_pp10 => stage2_pp10_s,
        stage2_pp11 => stage2_pp11_s,
        stage2_pp12 => stage2_pp12_s
    );

    
    STAGE2:
        dadda_adder_stage2 PORT MAP (
            Partial_product_0 => stage2_pp0_s,
            Partial_product_1 => stage2_pp1_s,
            Partial_product_2 => stage2_pp2_s,
            Partial_product_3 => stage2_pp3_s,
            Partial_product_4 => stage2_pp4_s,
            Partial_product_5 => stage2_pp5_s,
            Partial_product_6 => stage2_pp6_s,
            Partial_product_7 => stage2_pp7_s,
            Partial_product_8 => stage2_pp8_s,
            Partial_product_9 => stage2_pp9_s,
            Partial_product_10 => stage2_pp10_s,
            Partial_product_11 => stage2_pp11_s,
            Partial_product_12 => stage2_pp12_s,

            stage3_pp0 => stage3_pp0_s,
            stage3_pp1 => stage3_pp1_s,
            stage3_pp2 => stage3_pp2_s,
            stage3_pp3 => stage3_pp3_s,
            stage3_pp4 => stage3_pp4_s,
            stage3_pp5 => stage3_pp5_s,
            stage3_pp6 => stage3_pp6_s,
            stage3_pp7 => stage3_pp7_s,
            stage3_pp8 => stage3_pp8_s,
            stage3_pp9 => stage3_pp9_s,
            stage3_pp10 => stage3_pp10_s,
            stage3_pp11 => stage3_pp11_s,
            stage3_pp12 => stage3_pp12_s
        );

    STAGE3:
        dadda_adder_stage3 PORT MAP (
            stage3_pp0 => stage3_pp0_s,
            stage3_pp1 => stage3_pp1_s,
            stage3_pp2 => stage3_pp2_s,
            stage3_pp3 => stage3_pp3_s,
            stage3_pp4 => stage3_pp4_s,
            stage3_pp5 => stage3_pp5_s,
            stage3_pp6 => stage3_pp6_s,
            stage3_pp7 => stage3_pp7_s,
            stage3_pp8 => stage3_pp8_s,
            stage3_pp9 => stage3_pp9_s,
            stage3_pp10 => stage3_pp10_s,
            stage3_pp11 => stage3_pp11_s,
            stage3_pp12 => stage3_pp12_s,

            stage4_pp0 => stage4_pp0_s,
            stage4_pp1 => stage4_pp1_s,
            stage4_pp2 => stage4_pp2_s,
            stage4_pp3 => stage4_pp3_s,
            stage4_pp4 => stage4_pp4_s,
            stage4_pp5 => stage4_pp5_s,
            stage4_pp10 => stage4_pp10_s,
            stage4_pp11 => stage4_pp11_s,
            stage4_pp12 => stage4_pp12_s
        );


    STAGE4:
        dadda_adder_stage4 PORT MAP (
            stage4_pp0 => stage4_pp0_s,
            stage4_pp1 => stage4_pp1_s,
            stage4_pp2 => stage4_pp2_s,
            stage4_pp3 => stage4_pp3_s,
            stage4_pp4 => stage4_pp4_s,
            stage4_pp5 => stage4_pp5_s,
            stage4_pp6 => stage4_pp10_s,
            stage4_pp7 => stage4_pp11_s,
            stage4_pp8 => stage4_pp12_s,

            stage5_pp0 => stage5_pp0_s,
            stage5_pp1 => stage5_pp1_s,
            stage5_pp2 => stage5_pp2_s,
            stage5_pp3 => stage5_pp3_s,
            stage5_pp4 => stage5_pp4_s,
            stage5_pp5 => stage5_pp5_s,
            stage5_pp6 => stage5_pp6_s,
            stage5_pp7 => stage5_pp7_s
        );


    STAGE5:
        dadda_adder_stage5 PORT MAP (
            Partial_product_0 => stage5_pp0_s,
            Partial_product_1 => stage5_pp1_s,
            Partial_product_2 => stage5_pp2_s,
            Partial_product_3 => stage5_pp3_s,
            Partial_product_4 => stage5_pp4_s,
            Partial_product_5 => stage5_pp5_s,
            Partial_product_6 => stage5_pp6_s,
            Partial_product_7 => stage5_pp7_s,

            stage6_pp0 => stage6_pp0_s,
            stage6_pp1 => stage6_pp1_s
        );


    Result_cut_s <= unsigned(stage6_pp1_s)+unsigned('0' & stage6_pp0_s);

    -- 3e9e377a
    -- A_s <= "00111110100111100011011101111010";
    -- B_s <= "00111110100111100011011101111010";

    -- 25a00002
    -- A_s <= "00100101101000000000000000000010";
    -- B_s <= "00100101101000000000000000000010";
    
    -- 3f4f1bbd
    A_s <= "00111111010011110001101110111101";
    B_s <= "00111111010011110001101110111101";

    process
        file res_fp1 : text open WRITE_MODE is "./prototype/partial_product_stage1.txt";
        file res_fp2 : text open WRITE_MODE is "./prototype/partial_product_stage2.txt";
        file res_fp3 : text open WRITE_MODE is "./prototype/partial_product_stage3.txt";
        file res_fp4 : text open WRITE_MODE is "./prototype/partial_product_stage4.txt";
        file res_fp5 : text open WRITE_MODE is "./prototype/partial_product_stage5.txt";
        file res_fp6 : text open WRITE_MODE is "./prototype/partial_product_stage6.txt";
        variable line_out : line;    
    begin
        wait for 30 ns;
        write(line_out, pp_0); writeline(res_fp1, line_out);
        write(line_out, pp_1); writeline(res_fp1, line_out);
        write(line_out, pp_2); writeline(res_fp1, line_out);
        write(line_out, pp_3); writeline(res_fp1, line_out);
        write(line_out, pp_4); writeline(res_fp1, line_out);
        write(line_out, pp_5); writeline(res_fp1, line_out);
        write(line_out, pp_6); writeline(res_fp1, line_out);
        write(line_out, pp_7); writeline(res_fp1, line_out);
        write(line_out, pp_8); writeline(res_fp1, line_out);
        write(line_out, pp_9); writeline(res_fp1, line_out); 
        write(line_out, pp_10); writeline(res_fp1, line_out);
        write(line_out, pp_11); writeline(res_fp1, line_out);
        write(line_out, pp_12); writeline(res_fp1, line_out);

        write(line_out, stage2_pp0_s); writeline(res_fp2, line_out);
        write(line_out, stage2_pp1_s); writeline(res_fp2, line_out);
        write(line_out, stage2_pp2_s); writeline(res_fp2, line_out);
        write(line_out, stage2_pp3_s); writeline(res_fp2, line_out);
        write(line_out, stage2_pp4_s); writeline(res_fp2, line_out);
        write(line_out, stage2_pp5_s); writeline(res_fp2, line_out);
        write(line_out, stage2_pp6_s); writeline(res_fp2, line_out);
        write(line_out, stage2_pp7_s); writeline(res_fp2, line_out);
        write(line_out, stage2_pp8_s); writeline(res_fp2, line_out);
        write(line_out, stage2_pp9_s); writeline(res_fp2, line_out); 
        write(line_out, stage2_pp10_s); writeline(res_fp2, line_out);
        write(line_out, stage2_pp11_s); writeline(res_fp2, line_out);
        write(line_out, stage2_pp12_s); writeline(res_fp2, line_out);

        write(line_out, stage3_pp0_s); writeline(res_fp3, line_out);
        write(line_out, stage3_pp1_s); writeline(res_fp3, line_out);
        write(line_out, stage3_pp2_s); writeline(res_fp3, line_out);
        write(line_out, stage3_pp3_s); writeline(res_fp3, line_out);
        write(line_out, stage3_pp4_s); writeline(res_fp3, line_out);
        write(line_out, stage3_pp5_s); writeline(res_fp3, line_out);
        write(line_out, stage3_pp6_s); writeline(res_fp3, line_out);
        write(line_out, stage3_pp7_s); writeline(res_fp3, line_out);
        write(line_out, stage3_pp8_s); writeline(res_fp3, line_out);
        write(line_out, stage3_pp9_s); writeline(res_fp3, line_out); 
        write(line_out, stage3_pp10_s); writeline(res_fp3, line_out);
        write(line_out, stage3_pp11_s); writeline(res_fp3, line_out);
        write(line_out, stage3_pp12_s); writeline(res_fp3, line_out);

        write(line_out, stage4_pp0_s); writeline(res_fp4, line_out);
        write(line_out, stage4_pp1_s); writeline(res_fp4, line_out);
        write(line_out, stage4_pp2_s); writeline(res_fp4, line_out);
        write(line_out, stage4_pp3_s); writeline(res_fp4, line_out);
        write(line_out, stage4_pp4_s); writeline(res_fp4, line_out);
        write(line_out, stage4_pp5_s); writeline(res_fp4, line_out);
        write(line_out, stage4_pp10_s); writeline(res_fp4, line_out);
        write(line_out, stage4_pp11_s); writeline(res_fp4, line_out);
        write(line_out, stage4_pp12_s); writeline(res_fp4, line_out);

        write(line_out, stage5_pp0_s); writeline(res_fp5, line_out);
        write(line_out, stage5_pp1_s); writeline(res_fp5, line_out);
        write(line_out, stage5_pp2_s); writeline(res_fp5, line_out);
        write(line_out, stage5_pp3_s); writeline(res_fp5, line_out);
        write(line_out, stage5_pp4_s); writeline(res_fp5, line_out);
        write(line_out, stage5_pp5_s); writeline(res_fp5, line_out);
        write(line_out, stage5_pp6_s); writeline(res_fp5, line_out);
        write(line_out, stage5_pp7_s); writeline(res_fp5, line_out);

        
        write(line_out, stage6_pp0_s); writeline(res_fp6, line_out);
        write(line_out, stage6_pp1_s); writeline(res_fp6, line_out);
        
        wait;
    end process;
END arch;
