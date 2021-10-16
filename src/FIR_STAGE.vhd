library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;


entity FIR_STAGE is
    generic (
        NBIT :		integer := 8);
    port (
      RST_n, CLK, VIN : in std_logic;
      DIN_R, DIN_A : in  signed(NBIT-1 downto 0);
      C : in signed (NBIT -1 downto 0);
      DOUT_R, DOUT_A : out signed(NBIT - 1 downto 0)
      );
  
end FIR_STAGE;

architecture ARCH of FIR_STAGE is

    component REG is

        Generic (NBIT: integer:= 8);
    
        Port (	D:	In	signed(NBIT-1 downto 0);
                CK:	In	std_logic;
                RESET:	In	std_logic;
                ENABLE: In 	std_logic;
                Q:	Out	signed(NBIT-1 downto 0));
    
    end component;

    signal DOUT_Rs: signed (NBIT-1 downto 0);

begin

    REGn : REG port map (DIN_R, CLK, RST_n, VIN, DOUT_Rs);

    DOUT_A <= DOUT_Rs*C + DIN_A;
    DOUT_R <= DOUT_Rs;

end ARCH;
