library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity myfir is
    generic (
        NBIT :		integer := 8);
    port (
      VIN, RST_n, CLK : in std_logic;
      DIN0, DIN1, DIN2: in std_logic_vector(NBIT -1 downto 0);
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
      DOUT0, DOUT1, DOUT2: out  std_logic_vector(NBIT-1 downto 0)
      );
  
end myfir;

architecture ARCH of myfir is

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

    component STAGE is
        generic (
            NBIT :		integer := 8);
        port (
            VIN, RST_n, CLK : in std_logic;
            DIN_0, DIN_1, DIN_2, DIN_3, DIN_4, DIN_5, DIN_6, DIN_7, DIN_8, DIN_9, DIN_10: in  signed(NBIT-1 downto 0);
            C_0, C_1, C_2, C_3, C_4, C_5, C_6, C_7, C_8, C_9, C_10: in signed (NBIT -1 downto 0);
            DOUT : out signed(NBIT - 1 downto 0)
          );
      
    end component;
    signal DIN_0_reg, DIN_1_reg, DIN_2_reg, DIN_0_1, DIN_0_2, DIN_0_3, DIN_1_1, DIN_1_2, DIN_1_3, DIN_2_1, DIN_2_2, DIN_2_3, DIN_2_4, DOUT0_reg, DOUT1_reg, DOUT2_reg, DOUT0_signed, DOUT1_signed, DOUT2_signed: signed(NBIT - 1 downto 0);
    signal VIN_internal, VIN_internal_1, VIN_internal_2 : std_logic;

begin

    reg_din0_ing: REG port map (signed(DIN0), CLK, RST_n, VIN, DIN_0_reg);
    reg_din1_ing: REG port map (signed(DIN1), CLK, RST_n, VIN, DIN_1_reg);
    reg_din2_ing: REG port map (signed(DIN2), CLK, RST_n, VIN, DIN_2_reg);

    reg_din0_1 : REG port map (DIN_0_reg, CLK, RST_n, VIN_internal, DIN_0_1);
    reg_din0_2 : REG port map (DIN_0_1, CLK, RST_n, VIN_internal, DIN_0_2);
    reg_din0_3 : REG port map (DIN_0_2, CLK, RST_n, VIN_internal, DIN_0_3);

    reg_din1_1 : REG port map (DIN_1_reg, CLK, RST_n, VIN_internal, DIN_1_1);
    reg_din1_2 : REG port map (DIN_1_1, CLK, RST_n, VIN_internal, DIN_1_2);
    reg_din1_3 : REG port map (DIN_1_2, CLK, RST_n, VIN_internal, DIN_1_3);

    reg_din2_1 : REG port map (DIN_2_reg, CLK, RST_n, VIN_internal, DIN_2_1);
    reg_din2_2 : REG port map (DIN_2_1, CLK, RST_n, VIN_internal, DIN_2_2);
    reg_din2_3 : REG port map (DIN_2_2, CLK, RST_n, VIN_internal, DIN_2_3);
    reg_din2_4 : REG port map (DIN_2_3, CLK, RST_n, VIN_internal, DIN_2_4);

    stage_1: STAGE port map (VIN_internal, RST_n, CLK, DIN_0_reg, DIN_2_1, DIN_1_1, DIN_0_1, DIN_2_2, DIN_1_2, DIN_0_2, DIN_2_3, DIN_1_3, DIN_0_3, DIN_2_4,
                            signed(H0), signed(H1), signed(H2), signed(H3), signed(H4), signed(H5), signed(H6), signed(H7), signed(H8), signed(H9), signed(H10), DOUT0_reg);
    stage_2: STAGE port map (VIN_internal, RST_n, CLK, DIN_1_reg, DIN_0_reg, DIN_2_1, DIN_1_1, DIN_0_1, DIN_2_2, DIN_1_2, DIN_0_2, DIN_2_3, DIN_1_3, DIN_0_3,
                            signed(H0), signed(H1), signed(H2), signed(H3), signed(H4), signed(H5), signed(H6), signed(H7), signed(H8), signed(H9), signed(H10), DOUT1_reg);
    stage_3: STAGE port map (VIN_internal, RST_n, CLK, DIN_2_reg, DIN_1_reg, DIN_0_reg, DIN_2_1, DIN_1_1, DIN_0_1, DIN_2_2, DIN_1_2, DIN_0_2, DIN_2_3, DIN_1_3,
                            signed(H0), signed(H1), signed(H2), signed(H3), signed(H4), signed(H5), signed(H6), signed(H7), signed(H8), signed(H9), signed(H10), DOUT2_reg);

    reg_din0_out: REG port map (DOUT0_reg, CLK, RST_n, VIN_internal_2, DOUT0_signed);
    reg_din1_out: REG port map (DOUT1_reg, CLK, RST_n, VIN_internal_2, DOUT1_signed);
    reg_din2_out: REG port map (DOUT2_reg, CLK, RST_n, VIN_internal_2, DOUT2_signed);

    DOUT0 <= std_logic_vector(DOUT0_signed);
    DOUT1 <= std_logic_vector(DOUT1_signed);
    DOUT2 <= std_logic_vector(DOUT2_signed);

    FF1 : FD port map (D => VIN,
        CK => CLK,
        RESET => RST_n,
        ENABLE => '1',
        Q => VIN_internal);

    FF2 : FD port map (D => VIN_internal,
         CK => CLK,
         RESET => RST_n,
         ENABLE => '1',
         Q => VIN_internal_1);		--TOGLIERE I VIN_INTERNAL IN ECCESSO

    FF3 : FD port map (D => VIN_internal_1,
        CK => CLK,
        RESET => RST_n,
        ENABLE => '1',
        Q => VIN_internal_2);

    FF4 : FD port map (D => VIN_internal_2,
            CK => CLK,
            RESET => RST_n,
            ENABLE => '1',
            Q => VOUT);


end ARCH;