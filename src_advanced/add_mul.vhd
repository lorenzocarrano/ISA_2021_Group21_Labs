library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;


entity MUL_ADD is
    generic (
        NBIT :		integer := 8);
    port (
      VIN, RST_n, CLK: in std_logic;
      DIN_M, DIN_A : in  signed(NBIT-1 downto 0);
      C : in signed (NBIT -1 downto 0);
      DOUT : out signed(NBIT - 1 downto 0)
      );
  
end MUL_ADD;

architecture ARCH of MUL_ADD is

    component REG is
    
        Generic (NBIT: integer:= 8);
    
        Port (	D:	In	signed(NBIT-1 downto 0);
                CK:	In	std_logic;
                RESET:	In	std_logic;
                ENABLE: In 	std_logic;
                Q:	Out	signed(NBIT-1 downto 0));
    
    end component;

	signal mult_partial: signed(15 downto 0);
    signal mul_reg: signed(7 downto 0);

begin

    mult_partial <= DIN_M*C;

    reg_pipeline : REG port map (mult_partial(15 downto 8), CLK, RST_n, VIN, mul_reg);

	DOUT <= mul_reg + DIN_A;

end ARCH;
