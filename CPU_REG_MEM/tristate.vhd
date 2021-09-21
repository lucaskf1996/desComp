library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tristate is
  generic   (
    DATA_WIDTH  : natural :=  8
  );

  port   (
    -- Input ports
    dataIN  :  in  std_logic_vector(DATA_WIDTH-1 downto 0);
	 habilita:  in std_logic;
    -- Output ports
    dataOUT :  out  std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end entity;


architecture arch_name of tristate is

begin


    dataOUT <= dataIN when habilita='1' else (others => 'Z');

end architecture;