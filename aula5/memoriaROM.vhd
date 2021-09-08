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
        tmp(0)  :=   NOP  & '1' & x"00";
        tmp(1)  :=   LDI  & '1' & x"01";
        tmp(2)  :=   STA  & '1' & x"00";
        tmp(3)  :=   LDI  & '1' & x"03";   
        tmp(4)  :=   CEQ  & '1' & x"00";
		  tmp(5)  :=   JEQ  & '0' & x"01";
        tmp(6)  :=   JSR  & '0' & x"0C";   
        tmp(7)  :=   CEQ  & '1' & x"00";
        tmp(8)  :=   JEQ  & '0' & x"0A";
        tmp(9)  :=   JMP  & '0' & x"00";
        tmp(10) :=   NOP  & '1' & x"00";
        tmp(11) :=   JMP  & '0' & x"0A";
        tmp(12) :=   NOP  & '1' & x"00";
		  tmp(13) :=   SUB  & '1' & x"00";
		  tmp(14) :=   SUB  & '1' & x"00";
		  tmp(15) :=   RET  & '0' & x"00";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(PC)));
end architecture;