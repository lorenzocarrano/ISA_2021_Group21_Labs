LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity tb_mul is
end entity;

architecture ARCH of tb_mul is

component FPmul IS
   PORT( 
      FP_A : IN     std_logic_vector (31 DOWNTO 0);
      FP_B : IN     std_logic_vector (31 DOWNTO 0);
      clk  : IN     std_logic;
      VIN  : IN     std_logic;
      VOUT : OUT    std_logic;
      FP_Z : OUT    std_logic_vector (31 DOWNTO 0)
   );

END component ;

component data_maker is
    port (
      CLK  : in  std_logic;
      RST_n   : in  std_logic;
      VOUT    : out std_logic;
      DATA : out std_logic_vector(31 downto 0);
      END_SIM : out std_logic);
  end component;

  component clk_gen is
    port (
      END_SIM : in  std_logic;
      CLK     : out std_logic;
      RST_n   : out std_logic);
 end component;

 component data_sink is
    port (
      CLK   : in std_logic;
      RST_n : in std_logic;
      VIN   : in std_logic;
      DIN   : in std_logic_vector(31 downto 0));
 end component;

 signal input, output: std_logic_vector(31 downto 0);
 signal VIN, VOUT, end_sim, clk, rst: std_logic;

begin

    mul : FPmul port map (input, input, clk, VIN, VOUT, output);
    clock: clk_gen port map (end_sim, clk, rst);
    output_ent: data_sink port map (clk, rst, VOUT, output);
    input_ent: data_maker port map (clk, rst, VIN, input, end_sim);
    --input <= "00111110100111100011011101111010";

end ARCH;
