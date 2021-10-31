library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;


entity MUL_ADD is
    generic (
        NBIT :		integer := 8);
    port (
      DIN_M, DIN_A : in  signed(NBIT-1 downto 0);
      C : in signed (NBIT -1 downto 0);
      DOUT : out signed(NBIT - 1 downto 0)
      );
  
end MUL_ADD;

architecture ARCH of MUL_ADD is

	signal mult_partial: signed(15 downto 0);

begin

    mult_partial <= DIN_M*C;
	DOUT <= mult_partial(15 downto 8) + DIN_A;

end ARCH;
