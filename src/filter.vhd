library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;
use work.constants.all;

entity FILTER is

    port (
      VIN, RST_n, CLK : in std_logic;
      DIN : in  std_logic_vector( downto 0);
      VOUT : out  std_logic;
      DOUT : out std_logic_vector(I_SIZE - 1 downto 0)
      );
  
end FILTER;

architecture ARCH of FILTER is 

  component FIR_STAGE is
    generic (
        NBIT :		integer := 8);
    port (
      RST_n, CLK, VIN : in std_logic;
      DIN_R, DIN_A : in  signed(NBIT-1 downto 0);
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

  signal DINs, DIN_A0 : signed(NBIT-1 downto 0);
  type MultConst is array(0 t0 N) of signed(nbit-1 downto 0);
  signal constants : MultConst;
  type internalSignal is array(0 t0 N) of signed(nbit-1 downto 0); 
  signal DIN_R_s, DIN_A_s : internalSignal;
  signal VIN_internal : std_logic_vector(N downto 0);
begin

  DIN_R_s(0) <= signed(DIN); --FIR input 
  DIN_A_s(0) <= DIN_R_s(0) * constants(0);
  VIN_internal(0) <= VIN;

  H: for i in 0 to N-1 Generate
    Stg: FIR_STAGE Generic Map(NBIT => 8)
                      Port Map(RST_n => RST_n,
                               CLK => CLK,
                               VIN => VIN,
                               DIN_R => DIN_R_s(i),
                               DIN_A => DIN_A_s(i),
                               C => constant(i+1),
                               DOUT_R =>DIN_R_s(i+1),
                               DOUT_A => DIN_A_s(i+1));

    FF : FD port map (D => VIN_internal(i),
                      CK => CLK,
                      RESET => RST_n,
                      ENABLE => VIN,
                      Q => VIN_internal(i+1));
  end Generate;

  DOUT <= DIN_A_s(N); --FIR output
  VOUT <= VIN_internal(N) and VIN;


  -- Attivare Vout: serve un count che conti fino a N --> da quel momento fino a reset Vout --> 1 (valido)
end ARCH;
  