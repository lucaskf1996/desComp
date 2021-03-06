library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity concatenadorJ is
    generic(
        larguraDadoOpcode     : natural  :=    6;
        larguraDadoImediato   : natural  :=    26;
        larguraDadoSaida   : natural  :=    32 );
    port(
        -- Input ports
        sinalOpcode   : in  std_logic_vector(larguraDadoOpcode-1 downto 0);
		  sinalImediato : in  std_logic_vector(larguraDadoImediato-1 downto 0);
        -- Output ports
        sinalOUT: out std_logic_vector(larguraDadoSaida-1 downto 0)
		  );
end entity;

architecture comportamento of concatenadorJ is
    begin
        sinalOUT <= sinalOpcode & sinalImediato;
end architecture;
