library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity FIR_UNFOLDED is
    generic (
        NBIT :		integer := 8);
    port (
      VIN, RST_n, CLK : in std_logic;
      DIN_0, DIN_1, DIN_2: in std_logic_vector(NBIT -1 downto 0);
      H0   : in std_logic_vector(7 downto 0);
      H1   : in std_logic_vector(7 downto 0);
      H2   : in std_logic_vector(7 downto 0);
      H3   : in std_logic_vector(7 downto 0);
      H4   : in std_logic_vector(7 downto 0);
      H5   : in std_logic_vector(7 downto 0);
      H6   : in std_logic_vector(7 downto 0);
      H7   : in std_logic_vector(7 downto 0);
      H8   : in std_logic_vector(7 downto 0);
      H9   : in std_logic_vector(7 downto 0);
      H10  : in std_logic_vector(7 downto 0);
      VOUT : out std_logic;
      DOUT_0, DOUT_1, DOUT_2: out  std_logic_vector(NBIT-1 downto 0)
      );
  
end FIR_UNFOLDED;

architecture ARCH of FIR_UNFOLDED is