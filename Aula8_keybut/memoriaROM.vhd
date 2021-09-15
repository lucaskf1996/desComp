library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
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
        tmp(0)  :=   LDA  & '1' & x"40"; --Carrega o acumulador com a leitura das chaves SW0 até SW7
		  tmp(1)  :=   STA  & '1' & x"20"; --Armazena o valor do acumulador no display HEX0
		  
        tmp(2)  :=   LDA  & '1' & x"41"; --Carrega o acumulador com a leitura da chave SW8
        tmp(3)  :=   STA  & '1' & x"21"; --Armazena o valor do acumulador no display HEX1
		  
        tmp(4)  :=   LDA  & '1' & x"42"; --Carrega o acumulador com a leitura da chave SW9
		  tmp(5)  :=   STA  & '1' & x"22"; --Armazena o valor do acumulador no display HEX2
		  
        tmp(6)  :=   LDA  & '1' & x"60"; --Carrega o acumulador com a leitura do botão KEY0
		  tmp(7)  :=   STA  & '1' & x"23"; --Armazena o valor do acumulador no display HEX3
		  
        tmp(8)  :=   LDA  & '1' & x"61"; --Carrega o acumulador com a leitura do botão KEY1
		  tmp(9)  :=   STA  & '1' & x"24"; --Armazena o valor do acumulador no display HEX4
		  
        tmp(10) :=   LDA  & '1' & x"62"; --Carrega o acumulador com a leitura do botão KEY2
		  tmp(11) :=   STA  & '1' & x"25"; --Armazena o valor do acumulador no display HEX5
		  
        tmp(12) :=   LDA  & '1' & x"63"; --Carrega o acumulador com a leitura do botão KEY3
		  tmp(13) :=   STA  & '1' & x"01"; --Armazena o valor do bit0 do acumulador no LDR8
		  
        tmp(14) :=   LDA  & '1' & x"64"; --Carrega o acumulador com a leitura do botão FPGA_RESET
		  tmp(15) :=   STA  & '1' & x"02"; --Armazena o valor do bit0 do acumulador no LDR9
		  
        tmp(16) :=   JMP  & '0' & x"00"; --Desvia e continua atualizando os valores das entradas nas saídas


        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(PC)));
end architecture;