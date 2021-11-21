library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;

entity data_sink is
  port (
    CLK   : in std_logic;
    RST_n : in std_logic;
    VIN   : in std_logic;
    DIN0  : in std_logic_vector(7 downto 0);
    DIN1  : in std_logic_vector(7 downto 0);
    DIN2  : in std_logic_vector(7 downto 0)
  );
end data_sink;

architecture beh of data_sink is

begin  -- beh
  --now three results at a time have to be saved 
  process (CLK, RST_n)
    file res_fp : text open WRITE_MODE is "./../sim/results.txt";
    variable line_out : line;    
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      null;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      if (VIN = '1') then
        write(line_out, conv_integer(signed(DIN0)));
        writeline(res_fp, line_out);
        write(line_out, conv_integer(signed(DIN1)));
        writeline(res_fp, line_out);
        write(line_out, conv_integer(signed(DIN2)));
        writeline(res_fp, line_out);

        --note: in data_maker we have a variable assignment with "after tco" spec, thus we need 
        --three different variables to accomplish that
        --In this case we have not any "after" spec, thus we can use a single variable to
        --accomplish the assignment, since a variable can be assigned multiple times within a
        --cycle of a process
     
      end if;
    end if;
  end process;

end beh;
