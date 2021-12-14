library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;


entity MUL_ADD is
    generic (
        NBIT :		integer := 8;
        N_REG:      integer :=0);
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

    component FD is

        Port (	D:	In	std_logic;
                CK:	In	std_logic;
                RESET:	In	std_logic;
                ENABLE: In std_logic;	
                Q:	Out	std_logic);
    
    end component;

    type internalSignal is array(0 to N_REG + 1) of signed(7 downto 0); 
    signal MULT_REG: internalSignal;
    signal VIN_pipeline : std_logic_vector(N_REG + 1 downto 0);
	signal mult_partial: signed(15 downto 0);
    signal mul_reg: signed(7 downto 0);

begin

    mult_partial <= DIN_M*C;

    MULT_REG(0) <= mult_partial(15 downto 8);

    VIN_pipeline(0) <= VIN;

    --reg_pipeline : REG port map (mult_partial(15 downto 8), CLK, RST_n, VIN, mul_reg);
    regs_pipeline: for i in 0 to N_REG Generate
        fd_i : FD Port Map(VIN_pipeline(i), CLK, RST_N, '1', VIN_pipeline(i+1));
        reg_i: REG Port Map(MULT_REG(i), CLK, RST_n, VIN_pipeline(i), MULT_REG(i+1));
    end Generate;


	DOUT <= MULT_REG(N_REG+1) + DIN_A;

end ARCH;