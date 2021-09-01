library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 4
    );
   port (
          PC : in std_logic_vector (9-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

	constant NOP : std_logic_vector(3 downto 0) := "0000";
	constant SUMA : std_logic_vector(3 downto 0) := "0000";
	constant SUBA : std_logic_vector(3 downto 0) := "0000";
	constant RESET : std_logic_vector(3 downto 0) := "0000";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- CTRL = SelMUX, Habilita_A, Reset_A, Operacao_ULA
			-- Inicializa os endereços:
        tmp(0)  := NOP    & '1' & x"00";
        tmp(1)  := "0100" & '1' & x"04";
        tmp(2)  := "0101" & '1' & x"01";
        tmp(3)  := "0100" & '1' & x"0A";
        tmp(4)  := "0101" & '1' & x"00";   
        tmp(5)  := "0010" & '1' & x"00";
        tmp(6)  := "0010" & '1' & x"00";
        tmp(7)  := "0011" & '1' & x"01";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(PC)));
end architecture;