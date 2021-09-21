library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity logicaDesvio is

  port   (
    -- Input ports
    SelMUX  : in  std_logic;
    RET     : in  std_logic;
    JSR     : in  std_logic;
    JEQ     : in  std_logic;
    FLAGEQ  : in  std_logic;

    -- Output ports
    Sel :  out  std_logic_vector(1 downto 0)
  );
end entity;


architecture arch_name of logicaDesvio is

begin
	Sel <= "00" when (SelMux = '0') else
			 "01" when (JSR = '1') else
			 "01" when (JEQ = '1' and FLAGEQ = '1') else
			 "00" when (JEQ = '1' and FLAGEQ = '0') else
			 "10" when (RET = '1') else
			 "01";
	

end architecture;