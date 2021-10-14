library ieee;
use ieee.std_logic_1164.all;

entity estendeSinalGenerico is
    generic
    (
        larguraDadoEntrada : natural  :=    1;
        larguraDadoSaida   : natural  :=   32
    );
    port
    (
        -- Input ports
        estendeSinal_IN : in  std_logic;
        -- Output ports
        estendeSinal_OUT: out std_logic_vector(larguraDadoSaida-1 downto 0)
    );
end entity;

architecture comportamento of estendeSinalGenerico is
begin
    estendeSinal_OUT <= (larguraDadoSaida-1 downto larguraDadoEntrada => '0') & estendeSinal_IN;
end architecture;