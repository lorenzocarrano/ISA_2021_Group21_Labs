library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;

entity data_maker is  
  port (
    CLK     : in  std_logic;
    RST_n   : in  std_logic;
    VOUT    : out std_logic;
    DOUT    : out std_logic_vector(7 downto 0);
    H0      : out std_logic_vector(7 downto 0);
    H1      : out std_logic_vector(7 downto 0);
    H2      : out std_logic_vector(7 downto 0);
    H3      : out std_logic_vector(7 downto 0);
    H4      : out std_logic_vector(7 downto 0);
    H6      : out std_logic_vector(7 downto 0);
    H7      : out std_logic_vector(7 downto 0);
    H8      : out std_logic_vector(7 downto 0);
    H9      : out std_logic_vector(7 downto 0);
    H10      : out std_logic_vector(7 downto 0);
    END_SIM : out std_logic);
end data_maker;

architecture beh of data_maker is

  constant tco : time := 1 ns;

  signal sEndSim : std_logic;
  signal END_SIM_i : std_logic_vector(0 to 10);  

begin  -- beh

  H0 <= conv_std_logic_vector(-1,8);
  H1 <= conv_std_logic_vector(-2,8);
  H2 <= conv_std_logic_vector(-4,8);
  H3 <= conv_std_logic_vector(8,8);
  H4 <= conv_std_logic_vector(35,8);
  H5 <= conv_std_logic_vector(50,8);
  H6 <= conv_std_logic_vector(35,8);
  H7 <= conv_std_logic_vector(8,8);  
  H8 <= conv_std_logic_vector(-4,8);
  H9 <= conv_std_logic_vector(-2,8);
  H10 <= conv_std_logic_vector(-1,8);

  process (CLK, RST_n)
    file fp_in : text open READ_MODE is "../matlab/samples.txt";
    variable line_in : line;
    variable x : integer;
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      DOUT <= (others => '0') after tco;      
      VOUT <= '0' after tco;
      sEndSim <= '0' after tco;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      if not endfile(fp_in) then
        readline(fp_in, line_in);
        read(line_in, x);
        DOUT <= conv_std_logic_vector(x, 8) after tco;
        VOUT <= '1' after tco;
        sEndSim <= '0' after tco;
      else
        VOUT <= '0' after tco;        
        sEndSim <= '1' after tco;
      end if;
    end if;
  end process;

  process (CLK, RST_n)
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      END_SIM_i <= (others => '0') after tco;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      END_SIM_i(0) <= sEndSim after tco;
      END_SIM_i(1 to 10) <= END_SIM_i(0 to 9) after tco;
    end if;
  end process;

  END_SIM <= END_SIM_i(10);  

end beh;
