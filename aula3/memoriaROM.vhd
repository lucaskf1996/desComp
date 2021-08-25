library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 4;
          addrWidth: natural := 4
    );
   port (
          PC : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- CTRL = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
      --             CTRL   Prox Estado
        tmp(0)  := "0000";
        tmp(1)  := "0001";   -- Desta posicao para baixo, é necessário acertar o CTRL
        tmp(2)  := "0010";
        tmp(3)  := "0010";
        tmp(4)  := "0011";
        tmp(5)  := "0000";
        tmp(6)  := "0000";
        tmp(7)  := "0000";
        tmp(8)  := "0000";
        tmp(9)  := "0000";
        tmp(10) := "0000";
        tmp(11) := "0000";
        tmp(12) := "0000";
        tmp(13) := "0000";
        tmp(14) := "0000";
        tmp(15) := "0000";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(PC)));
end architecture;