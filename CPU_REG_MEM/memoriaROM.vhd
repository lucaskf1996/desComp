library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 16;
          addrWidth: natural := 9
    );
   port (
          PC : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

	constant NOP : std_logic_vector(3 downto 0) := "0000";
	constant LDA : std_logic_vector(3 downto 0) := "0001";
	constant SOMA: std_logic_vector(3 downto 0) := "0010";
	constant SUB : std_logic_vector(3 downto 0) := "0011";
	constant LDI : std_logic_vector(3 downto 0) := "0100";
	constant STA : std_logic_vector(3 downto 0) := "0101";
	constant JMP : std_logic_vector(3 downto 0) := "0110";
	constant JEQ : std_logic_vector(3 downto 0) := "0111";
	constant CEQ : std_logic_vector(3 downto 0) := "1000";
	constant JSR : std_logic_vector(3 downto 0) := "1001";
	constant RET : std_logic_vector(3 downto 0) := "1010";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- CTRL = SelMUX, Habilita_A, Reset_A, Operacao_ULA
			-- Inicializa os endereços:
--               OPCode   REG        Imediate
tmp(0)        := "0100" & "101" & "000000001"; -- LDI 5 1
tmp(1)        := "0101" & "101" & "100000001"; -- STA 5 257
tmp(2)        := "0100" & "000" & "000000001"; -- LDI 0 1
tmp(3)        := "0101" & "000" & "000000000"; -- STA 0 0
tmp(4)        := "0010" & "000" & "000000000"; -- ADD 0 0
tmp(5)        := "0101" & "000" & "000000001"; -- STA 0 1
tmp(6)        := "0001" & "000" & "000000000"; -- LDA 0 0
tmp(7)        := "0101" & "000" & "100000001"; -- STA 0 257
tmp(8)        := "0101" & "000" & "100000010"; -- STA 0 258
tmp(9)        := "0100" & "001" & "001010101"; -- LDI 1 85
tmp(10)        := "0101" & "001" & "100000000"; -- STA 1 256
tmp(11)        := "0100" & "010" & "010101010"; -- LDI 2 170
tmp(12)        := "0101" & "010" & "100000000"; -- STA 2 256


        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(PC)));
end architecture;