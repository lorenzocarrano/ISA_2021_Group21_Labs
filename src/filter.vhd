library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity FILTER is

    port (
      VIN, RST_n, CLK : in std_logic;
      DIN  : in  std_logic_vector(7 downto 0);
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
      VOUT : out  std_logic;
      DOUT : out std_logic_vector(7 downto 0)
      );
  
end FILTER;

architecture ARCH of FILTER is 

  component FIR_STAGE is
    generic (
        NBIT :		integer := 8);
    port (
      RST_n, CLK, VIN : in std_logic;
      DIN_R, DIN_A : in  signed(NBIT -1 downto 0);
      C : in signed (NBIT -1 downto 0);
      DOUT_R, DOUT_A : out signed(NBIT - 1 downto 0)
      );
  
end component;   

component FD is

	Port (	D:	In	std_logic;
			CK:	In	std_logic;
			RESET:	In	std_logic;
			ENABLE: In std_logic;	
			Q:	Out	std_logic);

end component;

  signal DINs, DIN_A0 : signed(7 downto 0);
  type MultConst is array(0 to 10) of signed(7 downto 0);
  signal constants : MultConst;
  type internalSignal is array(0 to 10) of signed(7 downto 0); 
  signal DIN_R_s, DIN_A_s : internalSignal;
  signal VIN_internal : std_logic_vector(10 downto 0);
  signal mul_partial : signed(15 downto 0);
begin
  
  constants(0) <= signed(H0);
  constants(1) <= signed(H1);
  constants(2) <= signed(H2);
  constants(3) <= signed(H3);
  constants(4) <= signed(H4);
  constants(5) <= signed(H5);
  constants(6) <= signed(H6);
  constants(7) <= signed(H7);
  constants(8) <= signed(H8);
  constants(9) <= signed(H9);
  constants(10) <= signed(H10);

  DIN_R_s(0) <= signed(DIN); --FIR input 
  mul_partial <= DIN_R_s(0) * constants(0);
  DIN_A_s(0) <= mul_partial(15 downto 8);
  VIN_internal(0) <= VIN;

  H: for i in 0 to 9 Generate
    Stg: FIR_STAGE Generic Map(NBIT => 8)
                      Port Map(RST_n => RST_n,
                               CLK => CLK,
                               VIN => VIN,
                               DIN_R => DIN_R_s(i),
                               DIN_A => DIN_A_s(i),
                               C => constants(i+1),
                               DOUT_R =>DIN_R_s(i+1),
                               DOUT_A => DIN_A_s(i+1));

    FF : FD port map (D => VIN_internal(i),
                      CK => CLK,
                      RESET => RST_n,
                      ENABLE => VIN,
                      Q => VIN_internal(i+1));
  end Generate;

  DOUT <= std_logic_vector(DIN_A_s(10)); --FIR output
  VOUT <= VIN_internal(10) and VIN;


  -- Attivare Vout: serve un count che conti fino a N --> da quel momento fino a reset Vout --> 1 (valido)
end ARCH;
  