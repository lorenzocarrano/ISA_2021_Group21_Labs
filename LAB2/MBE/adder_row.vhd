LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY Addend_row IS

Generic (N: integer:= 32);

   PORT( 
      Addend_1       : IN     std_logic_vector (N-1 DOWNTO 0);
      Addend_2       : IN     std_logic_vector (N-1 DOWNTO 0);
      Addend_3       : IN     std_logic_vector (N-4 DOWNTO 0);
      Sum            : OUT    std_logic_vector (N-1 DOWNTO 0);
      Carry          : OUT    std_logic_vector (N-1 DOWNTO 0)  
   );

END Addend_row;

ARCHITECTURE arch OF Addend_row IS

    component FA 

        Port ( 	A:	In	std_logic;
                B:	In	std_logic;
                Ci:	In	std_logic;
                S:	Out	std_logic;
                Co:	Out	std_logic
            );

    end component; 

    component HA 

        Port ( 	A:	In	std_logic;
                B:	In	std_logic;
                S:	Out	std_logic;
                Co:	Out	std_logic
            );

    end component; 

BEGIN

HA_1: HA port map (Addend_1(0), Addend_2(0), Sum(0), Carry(0));
HA_2: HA port map (Addend_1(1), Addend_2(1), Sum(1), Carry(1));
HA_3: HA port map (Addend_1(N-1), Addend_2(N-1), Sum(N-1), Carry(N-1));

ADDERS: for I in 0 to N-4 generate
    FAI : FA 
	  Port Map (Addend_1(I+2), Addend_2(I+2), Addend_3(I), Sum(I+2), Carry(I+2));
end generate;

END arch;
