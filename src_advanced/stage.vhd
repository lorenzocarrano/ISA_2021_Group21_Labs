library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity STAGE is
    generic (
        NBIT :		integer := 8);
    port (
      DIN_0, DIN_1, DIN_2, DIN_3, DIN_4, DIN_5, DIN_6, DIN_7, DIN_8, DIN_9, DIN_10: in  signed(NBIT-1 downto 0);
      C_0, C_1, C_2, C_3, C_4, C_5, C_6, C_7, C_8, C_9, C_10: in signed (NBIT -1 downto 0);
      DOUT : out signed(NBIT - 1 downto 0)
      );
  
end STAGE;

architecture ARCH of STAGE is

    component MUL_ADD is
        generic (
            NBIT :		integer := 8);
        port (
            DIN_M, DIN_A : in  signed(NBIT-1 downto 0);
            C : in signed (NBIT -1 downto 0);
            DOUT : out signed(NBIT - 1 downto 0)
          );
      
    end component;

	signal mult_partial: signed(15 downto 0);
    signal DIN_0_sig, DIN_1_sig, DIN_2_sig, DIN_3_sig, DIN_4_sig, DIN_5_sig, DIN_6_sig, DIN_7_sig, DIN_8_sig, DIN_9_sig, DIN_10_sig: signed(7 downto 0);

begin

    mult_partial <= DIN_0 * C_0;
    DIN_0_sig <= mult_partial(15 downto 8); //prova

    stage_1 : MUL_ADD port map (DIN_1, DIN_0_sig, C_1, DIN_1_sig);
    stage_2 : MUL_ADD port map (DIN_2, DIN_1_sig, C_2, DIN_2_sig);
    stage_3 : MUL_ADD port map (DIN_3, DIN_2_sig, C_3, DIN_3_sig);
    stage_4 : MUL_ADD port map (DIN_4, DIN_3_sig, C_4, DIN_4_sig);
    stage_5 : MUL_ADD port map (DIN_5, DIN_4_sig, C_5, DIN_5_sig);
    stage_6 : MUL_ADD port map (DIN_6, DIN_5_sig, C_6, DIN_6_sig);
    stage_7 : MUL_ADD port map (DIN_7, DIN_6_sig, C_7, DIN_7_sig);
    stage_8 : MUL_ADD port map (DIN_8, DIN_7_sig, C_8, DIN_8_sig);
    stage_9 : MUL_ADD port map (DIN_9, DIN_8_sig, C_9, DIN_9_sig);
    stage_10 : MUL_ADD port map (DIN_10, DIN_9_sig, C_10, DIN_10_sig);

    DOUT <= DIN_10_sig;

end ARCH;
