library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity mux3to1 is
	Generic
	(
		Nbit : natural := 1
	);
	Port
	(
		A    : in  std_logic_vector(Nbit-1 downto 0);
		B    : in  std_logic_vector(Nbit-1 downto 0);	
		C    : in  std_logic_vector(Nbit-1 downto 0);	
		sel  : in  std_logic_vector(1 downto 0);
		Y    : out std_logic_vector(Nbit-1 downto 0)
	);
end mux3to1;

Architecture Behavioral of mux3to1 is
	
	Component mux is
	Generic
	(
		Nbit : natural := 1
	);
	Port
	(
		A    : in  std_logic_vector(Nbit-1 downto 0);
		B    : in  std_logic_vector(Nbit-1 downto 0);
		sel  : in  std_logic;
		Y    : out std_logic_vector(Nbit-1 downto 0)
	);
	end Component;
begin

	mux1: mux Generic Map( Nbit => Nbit)
		     Port Map
		     (
		     	A   => A,
			B   => B,
			sel => sel(0), 
			Y   => ABselection
		     );

	mux2: mux Generic Map( Nbit => Nbit)
		     Port Map
		     (
		     	A   => ABselection,
			B   => C,
			sel => sel(1),
			Y   => Y
		     );

--NOTE: input selection
--      A 00
--      B 01
--      C 1X

end Architecture;
