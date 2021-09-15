library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tristateBit is

  port   (
    -- Input ports
    dataIN  :  in  std_logic;
	 habilita:  in std_logic;
    -- Output ports
    dataOUT :  out  std_logic_vector(7 downto 0)
  );
end entity;


architecture arch_name of tristateBit is

begin


    dataOUT <= "0000000" & dataIN when habilita='1' else (others => 'Z');

end architecture;