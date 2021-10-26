library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity deslocadorGenericoJ is
    generic(
        larguraDadoEntrada : natural  :=    26;
        larguraDadoSaida   : natural  :=    26 );
    port(
        -- Input ports
        sinalIN : in  std_logic_vector(larguraDadoEntrada-1 downto 0);
        -- Output ports
        sinalOUT: out std_logic_vector(larguraDadoSaida-1 downto 0)
		  );
end entity;

architecture comportamento of deslocadorGenericoJ is
    begin
        sinalOUT <= "00" & sinalIN(larguraDadoEntrada-1 downto 2);
end architecture;
