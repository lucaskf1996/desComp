library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity entity_name is
  generic   (
    DATA_WIDTH  : natural :=  8;
    ADDR_WIDTH  : natural :=  8
  );

  port   (
    -- Input ports
    dataIN  :  in  std_logic_vector(DATA_WIDTH-1 downto 0);
    enable  : in  std_logic;
    clk     : in  std_logic;
    <name>  : in  <type> := <default_value>;

    -- Inout ports
    <name>  : inout <type>;

    -- Output ports
    dataOUT :  out  std_logic_vector(DATA_WIDTH-1 downto 0);
    <name>  : out <type> := <default_value>
  );
end entity;


architecture arch_name of entity_name is



begin


end architecture;