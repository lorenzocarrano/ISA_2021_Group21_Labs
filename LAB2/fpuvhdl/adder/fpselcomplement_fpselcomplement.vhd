--
-- VHDL Architecture HAVOC.FPselComplement.FPselComplement
--
-- Created:
--          by - Guillermo
--          at - ITESM, 13:02:32 07/17/03
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2002.1b (Build 7)
--
-- hds interface_start
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


ENTITY FPselComplement IS
   GENERIC( 
      SIG_width : integer := 28
   );
   PORT( 
      SIG_in  : IN     std_logic_vector (SIG_width DOWNTO 0);
      EXP_in  : IN     std_logic_vector (7 DOWNTO 0);
      SIG_out : OUT    std_logic_vector (SIG_width-1 DOWNTO 0);
      EXP_out : OUT    std_logic_vector (7 DOWNTO 0)
   );

-- Declarations

END FPselComplement ;


-- hds interface_end
ARCHITECTURE FPselComplement OF FPselComplement IS
BEGIN

	EXP_out <= EXP_in;

	PROCESS(SIG_in)
	BEGIN
		IF (SIG_in(SIG_width) = '1') THEN
			SIG_out <= (NOT SIG_in(SIG_width-1 DOWNTO 0) + 1);
		ELSE
			SIG_out <= SIG_in(SIG_width-1 DOWNTO 0);
		END IF;
	END PROCESS;

END FPselComplement;

