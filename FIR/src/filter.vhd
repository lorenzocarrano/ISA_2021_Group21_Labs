library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity myfir is

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
  
end myfir;

architecture ARCH of myfir is 

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

component REG is

        Generic (NBIT: integer:= 8);
    
        Port (	D:	In	signed(NBIT-1 downto 0);
                CK:	In	std_logic;
                RESET:	In	std_logic;
                ENABLE: In 	std_logic;
                Q:	Out	signed(NBIT-1 downto 0));
    
end component;

  signal DINs, DIN_A0, outputsignal : signed(7 downto 0);
  type MultConst is array(0 to 10) of signed(7 downto 0);
  signal constants : MultConst;
  type internalSignal is array(0 to 10) of signed(7 downto 0); 
  signal DIN_R_s, DIN_A_s : internalSignal;
  signal VIN_internal : std_logic;
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

  mul_partial <= DIN_R_s(0) * constants(0);
  DIN_A_s(0) <= mul_partial(15 downto 8);

  InputReg: REG Generic Map(NBIT => 8)
				   Port Map(D => signed(DIN), CK => CLK, RESET => RST_n, ENABLE => VIN, Q=>DIN_R_s(0)); --its output is the FIR input

  H: for i in 0 to 9 Generate
    Stg: FIR_STAGE Generic Map(NBIT => 8)
                      Port Map(RST_n => RST_n,
                               CLK => CLK,
                               DIN_R => DIN_R_s(i),
                               DIN_A => DIN_A_s(i),
                               C => constants(i+1),
                               DOUT_R =>DIN_R_s(i+1),
							   VIN => VIN_internal, -- VIN_INTERNAL(0) deve diventare un segnale singolo, perché non mi occorre più averne un array
                               DOUT_A => DIN_A_s(i+1));

  end Generate;

  OutputReg: REG Generic Map(NBIT => 8)
				   Port Map(D => DIN_A_s(10), CK => CLK, RESET => RST_n, ENABLE => VIN_internal, Q=>outputsignal); --its output is the FIR input

  DOUT <= std_logic_vector(outputsignal); --FIR output

   FF1 : FD port map (D => VIN,
                     CK => CLK,
                     RESET => RST_n,
                     ENABLE => '1',
                     Q => VIN_internal);
    
    FF2 : FD port map (D => VIN_internal,
                      CK => CLK,
                      RESET => RST_n,
                      ENABLE => '1',
                      Q => VOUT);		--TOGLIERE I VIN_INTERNAL IN ECCESSO


  -- Attivare Vout: serve un count che conti fino a N --> da quel momento fino a reset Vout --> 1 (valido)
end ARCH;
  
