library ieee;
use ieee.std_logic_1164.all;

entity muxGenerico4x1 is
  port (
    entrada1, entrada2, entrada3, entrada4 : in std_logic_vector(31 downto 0);
    seletor_MUX : in std_logic_vector(1 downto 0);
    saida_MUX : out std_logic_vector(31 downto 0)
  );
end entity;

architecture comportamento of muxGenerico4x1 is
  begin
    saida_MUX <= entrada1 when (seletor_MUX = "00") else
					  entrada2 when (seletor_MUX = "01") else
					  entrada3 when (seletor_MUX = "10") else
					  entrada4;
end architecture;