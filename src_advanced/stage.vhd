library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity STAGE is
    generic (
        NBIT :		integer := 8);
    port (
      VIN, RST_n, CLK : in std_logic;
      DIN_0, DIN_1, DIN_2, DIN_3, DIN_4, DIN_5, DIN_6, DIN_7, DIN_8, DIN_9, DIN_10: in  signed(NBIT-1 downto 0);
      C_0, C_1, C_2, C_3, C_4, C_5, C_6, C_7, C_8, C_9, C_10: in signed (NBIT -1 downto 0);
      DOUT : out signed(NBIT - 1 downto 0)
      );
  
end STAGE;

architecture ARCH of STAGE is

    component MUL_ADD is
        generic (
            NBIT :		integer := 8;
            N_REG:      integer :=0);
        port (
            VIN, RST_n, CLK : in std_logic;
            DIN_M, DIN_A : in  signed(NBIT-1 downto 0);
            C : in signed (NBIT -1 downto 0);
            DOUT : out signed(NBIT - 1 downto 0)
          );
      
    end component;

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

	signal mult_partial: signed(15 downto 0);
    signal DIN_0_sig, DIN_1_sig, DIN_2_sig, DIN_3_sig, DIN_4_sig, DIN_5_sig, DIN_6_sig, DIN_7_sig, DIN_8_sig, DIN_9_sig, DIN_10_sig, DIN_5_sig_reg: signed(7 downto 0);
    signal VIN_pipeline: std_logic;

begin

    mult_partial <= DIN_0 * C_0;
    reg_init : REG port map (mult_partial(15 downto 8), CLK, RST_n, VIN, DIN_0_sig);
    --DIN_0_sig <= mult_partial(15 downto 8); 

    fd_i : FD Port Map(VIN, CLK, RST_N, '1', VIN_pipeline);

    stage_1 : MUL_ADD generic map (NBIT => 8, N_REG => 0) port map (VIN, RST_n, CLK, DIN_1, DIN_0_sig, C_1, DIN_1_sig);
    stage_2 : MUL_ADD generic map (NBIT => 8, N_REG => 0) port map (VIN, RST_n, CLK, DIN_2, DIN_1_sig, C_2, DIN_2_sig);
    stage_3 : MUL_ADD generic map (NBIT => 8, N_REG => 0) port map (VIN, RST_n, CLK, DIN_3, DIN_2_sig, C_3, DIN_3_sig);
    stage_4 : MUL_ADD generic map (NBIT => 8, N_REG => 0) port map (VIN, RST_n, CLK, DIN_4, DIN_3_sig, C_4, DIN_4_sig);
    stage_5 : MUL_ADD generic map (NBIT => 8, N_REG => 0) port map (VIN, RST_n, CLK, DIN_5, DIN_4_sig, C_5, DIN_5_sig);
    reg_pipeline : REG port map (DIN_5_sig, CLK, RST_N, VIN_pipeline, DIN_5_sig_reg);
    stage_6 : MUL_ADD generic map (NBIT => 8, N_REG => 1) port map (VIN, RST_n, CLK, DIN_6, DIN_5_sig_reg, C_6, DIN_6_sig);
    stage_7 : MUL_ADD generic map (NBIT => 8, N_REG => 1) port map (VIN, RST_n, CLK, DIN_7, DIN_6_sig, C_7, DIN_7_sig);
    stage_8 : MUL_ADD generic map (NBIT => 8, N_REG => 1) port map (VIN, RST_n, CLK, DIN_8, DIN_7_sig, C_8, DIN_8_sig);
    stage_9 : MUL_ADD generic map (NBIT => 8, N_REG => 1) port map (VIN, RST_n, CLK, DIN_9, DIN_8_sig, C_9, DIN_9_sig);
    stage_10 : MUL_ADD generic map (NBIT => 8, N_REG => 1) port map (VIN, RST_n, CLK, DIN_10, DIN_9_sig, C_10, DIN_10_sig);

    DOUT <= DIN_10_sig;

end ARCH;
