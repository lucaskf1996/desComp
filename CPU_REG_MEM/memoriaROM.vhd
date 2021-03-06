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

        tmp(0)  :=   LDI & "000" & '0' & x"00";
		  tmp(1)  :=   STA & "000" & '0' & x"00";
        tmp(2)  :=   STA & "000" & '0' & x"02";
        tmp(3)  :=   LDI & "000" & '0' & x"01";
        tmp(4)  :=   STA & "000" & '0' & x"01";
		  tmp(5)  :=   NOP & "000" & '0' & x"00";
        tmp(6)  :=   LDA & "000" & '1' & x"60";
		  tmp(7)  :=   CEQ & "000" & '0' & x"00";
        tmp(8)  :=   JEQ & "000" & '0' & x"0A";
		  tmp(9)  :=   JSR & "000" & '0' & x"20";
        tmp(10) :=   NOP & "000" & '0' & x"00";
		  tmp(11) :=   JMP & "000" & '0' & x"05"; 
		  
        tmp(32) :=   STA & "000" & '1' & x"FF"; 
		  tmp(33) :=   LDA & "000" & '0' & x"02";
        tmp(34) :=  SOMA & "000" & '0' & x"01"; 
		  tmp(35) :=   STA & "000" & '0' & x"02";
        tmp(36) :=   STA & "000" & '1' & x"02";
		  tmp(37) :=   RET & "000" & '0' & x"00";





----Setup:
--    --Carrega 0 no registrador 0
--    tmp(0)   := LDI & "000" & '0' & x"00";
--    --Carrega 0 nos LEDs
--    tmp(1)   := STA & "000" & '1' & x"00";
--    tmp(2)   := STA & "000" & '1' & x"01"; --led de limite atingido
--    tmp(3)   := STA & "000" & '1' & x"02"; --led de overflow
--    --Carrega 0 nos HEXs
--    tmp(4)   := STA & "000" & '1' & x"20";
--    tmp(5)   := STA & "000" & '1' & x"21";
--    tmp(6)   := STA & "000" & '1' & x"22";
--    tmp(7)   := STA & "000" & '1' & x"23";
--    tmp(8)   := STA & "000" & '1' & x"24";
--    tmp(9)   := STA & "000" & '1' & x"25";
--    --Carrega 0 para comparacao, unidades, dezenas, centenas, flag de inibir contagem, overflow, respectivamente.
--    tmp(10)  := STA & "000" & '0' & x"00"; --0 comparacao
--    tmp(11)  := STA & "000" & '0' & x"03"; --unidade
--    tmp(12)  := STA & "000" & '0' & x"04"; --dezena
--    tmp(13)  := STA & "000" & '0' & x"05"; --centena
--    tmp(14)  := STA & "000" & '0' & x"09"; --inibir contagem
--    --tmp()  := STA & "000" & '0' & x"0A"; --overflow
--    --Carrega 1 para incremento, 10 para comparacao, valor limite para unidade, valor limite para dezena e valor limite para centena, respectivamente.
--    tmp(15)  := LDI & "000" & '0' & x"01"; 
--    tmp(16)  := STA & "000" & '0' & x"01"; --1 inc
--    tmp(17)  := LDI & "000" & '0' & x"0A"; 
--    tmp(18)  := STA & "000" & '0' & x"02"; --10 comparacao
--    tmp(19)  := LDI & "000" & '0' & x"09";  
--    tmp(20)  := STA & "000" & '0' & x"06"; --limite para unidade
--    tmp(21)  := STA & "000" & '0' & x"07"; --limite para dezena
--    tmp(22)  := STA & "000" & '0' & x"08"; --limite para centena
--    --JUMP para rotina principal
--    tmp(23)  := JMP & "000" & '0' & x"18"; --ajustar endereco
--	 
-- --Loop principal:
--    --Leitura do key(0)
--    tmp(24)  := LDA & "000" & '1' & x"60"; --Carrega o valor da chave no reg0
--    tmp(25)  := CEQ & "000" & '0' & x"00"; --Compara com MEM[0]
--    tmp(26)  := JEQ & "000" & '0' & x"1C"; --Pula para a verificacao do key(1) caso o botao nao tenha sido pressionado
--    tmp(27)  := JSR & "000" & '0' & x"54"; --Pula para sub-rotina de incremento key(0)
--    --Leitura do key(1)
--    tmp(28)  := LDA & "000" & '1' & x"61"; --Carrega o valor da chave no reg0
--    tmp(29)  := CEQ & "000" & '0' & x"00"; --Compara com MEM[0]
--    tmp(30)  := JEQ & "000" & '0' & x"20"; --Pula para verificacao de limite caso o botao nao tenha sido pressionado
--    tmp(31)  := JSR & "000" & '0' & x"26"; --Pula para sub-rotina de configuracao de limites 
--    --Jump para sub-rotiina de verificacao de limites
--    tmp(32)  := JSR & "000" & '0' & x"39"; --Pula para sub-rotina de verificacao de limites 
--    --Leitura do FPGA_RESET
--    tmp(33)  := LDA & "000" & '1' & x"64"; --Carrega o valor da chave no reg0
--    tmp(34)  := CEQ & "000" & '0' & x"00"; --Compara com MEM[0]
--    tmp(35)  := JEQ & "000" & '0' & x"18"; --Pula para o inicio do loop caso o botao nao tenha sido pressionado
--    tmp(36)  := JSR & "000" & '0' & x"49"; --Pula para sub-rotina de reset 
--    tmp(37)  := JMP & "000" & '0' & x"18"; --Pula para o inicio do loop
--
--
----Definicao de limites de contagem: --Verificar se tem há dados nos registradores.
--    --Unidades
--    tmp(38)  := LDA & "001" & '1' & x"40"; --Carrega o acumulador com a leitura das chaves SW0 até SW7
--    tmp(39)  := LDA & "000" & '1' & x"61"; --Carrega o acumulador com a leitura do botão KEY1
--    tmp(40)  := CEQ & "000" & '0' & x"01"; --Compara com MEM[1]
--    tmp(41)  := JEQ & "000" & '0' & x"2B"; --Pula para as dezenas caso tenha apertado key(1)
--    tmp(42)  := JMP & "000" & '0' & x"26"; --Volta para as unidades caso nao tenha apertado key(1)
--    --Dezenas
--    tmp(43)  := STA & "001" & '0' & x"06"; --Salva o limite das unidades na RAM
--    tmp(44)  := LDA & "001" & '1' & x"40"; --Carrega o acumulador com a leitura das chaves SW0 até SW7
--    tmp(45)  := LDA & "000" & '1' & x"61"; --Carrega o acumulador com a leitura do botão KEY1
--    tmp(46)  := CEQ & "000" & '0' & x"01"; --Compara com MEM[1]
--    tmp(47)  := JEQ & "000" & '0' & x"31"; --Pula para as dezenas caso tenha apertado key(1)
--    tmp(48)  := JMP & "000" & '0' & x"2B"; --Volta para as dezenas caso nao tenha apertado key(1)
--    --Centenas
--    tmp(49)  := STA & "001" & '0' & x"07"; --Salva o limite das dezenas na RAM
--    tmp(50)  := LDA & "001" & '1' & x"40"; --Carrega o acumulador com a leitura das chaves SW0 até SW7
--    tmp(51)  := LDA & "000" & '1' & x"61"; --Carrega o acumulador com a leitura do botão KEY1
--    tmp(52)  := CEQ & "000" & '0' & x"01"; --Compara com MEM[1]
--    tmp(53)  := JEQ & "000" & '0' & x"37"; --Pula pro retorno
--    tmp(54)  := JMP & "000" & '0' & x"31"; --Volta para as unidades caso nao tenha apertado key(1)
--    tmp(55)  := STA & "001" & '0' & x"07"; --Salva o limite das centenas na RAM
--    tmp(56)  := RET & "000" & '0' & x"00"; --Retorna da funcao
--	 
--
----Deve comparar cada posição de memória do limite com a posição de memória da contagem atual:
--    --Centenas
--    tmp(57)  := LDA & "000" & '0' & x"08"; --carrega limite da centena
--    tmp(58)  := CEQ & "000" & '0' & x"05"; --Compara valor da centena
--    tmp(59)  := JEQ & "000" & '0' & x"3D"; --Pula para verificacao de dezenas
--    tmp(60)  := RET & "000" & '0' & x"00"; --Volta para rotina principal
--
--    --Dezenas
--    tmp(61)  := LDA & "000" & '0' & x"07"; --carrega limite da dezena
--    tmp(62)  := CEQ & "000" & '0' & x"04"; --Compara valor da dezena
--    tmp(63)  := JEQ & "000" & '0' & x"41"; --Pula para verificacao de unidades
--    tmp(64)  := RET & "000" & '0' & x"00"; --Volta para rotina principal
--
--    --Unidades
--    tmp(65)  := LDA & "000" & '0' & x"06"; --carrega limite da unidade
--    tmp(66)  := CEQ & "000" & '0' & x"03"; --Compara valor da unidade
--    tmp(67)  := JEQ & "000" & '0' & x"45"; --Limite atingido. Pula para ativacao de flags e leds
--    tmp(68)  := RET & "000" & '0' & x"00"; --Volta para rotina principal
--
--
--    -- Para as unidades de milhares;
--    -- Para as dezenas de milhares;
--    -- Para as centenas de milhares.
--
--    -- Caso todas comparações resultem iguais, devemos:
--    tmp(69)  := LDI & "000" & '0' & x"01"; -- Carrega 1 no reg0
--    tmp(70)  := STA & "000" & '0' & x"09"; -- Ativa flag de inibir contagem
--    tmp(71)  := STA & "000" & '1' & x"01"; -- Acender o LED de **Limite Atingido**.
--    tmp(72)  := RET & "000" & '0' & x"00"; -- Retornar da sub-rotina.
--
----Reinício de Contagem:
--    tmp(73)  := LDI & "000" & '0' & x"00"; --Carrega 0 no reg0
--    tmp(74)  := STA & "000" & '0' & x"03"; --zera unidade
--    tmp(75)  := STA & "000" & '0' & x"04"; --zera dezena
--    tmp(76)  := STA & "000" & '0' & x"05"; --zera centena
--    tmp(77)  := STA & "000" & '1' & x"20"; --zera HEX[0]
--    tmp(78)  := STA & "000" & '1' & x"21"; --zera HEX[1]
--    tmp(79)  := STA & "000" & '1' & x"22"; --zera HEX[2]
--    tmp(80)  := STA & "000" & '0' & x"09"; --zera flag de inibir contagem
--    tmp(81)  := STA & "000" & '1' & x"01"; --apaga led de limite de contagem
--    tmp(82)  := STA & "000" & '1' & x"02"; --apaga led de overflow
--    tmp(83)  := RET & "000" & '0' & x"00"; --Retorna da funcao
--	 
----Incrementando Contagem:
--    tmp(84)  := LDA & "000" & '0' & x"09"; --Carrega valor da flag de inibir contagem
--    tmp(85)  := CEQ & "000" & '0' & x"00"; --Compara com 0
--    tmp(86)  := JEQ & "000" & '0' & x"58"; --Continua para incrementar
--    tmp(87)  := RET & "000" & '0' & x"00"; --Retorna se a flag estiver ligada
--    --Unidades
--    tmp(88)  := LDA & "000" & '0' & x"03"; --Carrega valor das Unidades
--    tmp(89)  :=SOMA & "000" & '0' & x"01"; --Incrementa o valor de Unidades
--    tmp(90)  := CEQ & "000" & '0' & x"02"; --Compara com 10
--    tmp(91)  := JEQ & "000" & '0' & x"5F"; --Pula para colocar 0
--    tmp(92)  := STA & "000" & '0' & x"03"; --Guarda valor das unidades
--    tmp(93)  := STA & "000" & '1' & x"20"; --Coloca valor no HEX[0]
--    tmp(94)  := RET & "000" & '0' & x"00"; --Retorna da sub-rotina
--    tmp(95)  := LDI & "000" & '0' & x"00"; --Carrega 0 no reg0
--    tmp(96)  := STA & "000" & '0' & x"03"; --Guarda valor das unidades
--    tmp(97)  := STA & "000" & '1' & x"20"; --Coloca valor no HEX[0]
--    --Dezenas
--    tmp(98)  := LDA & "000" & '0' & x"04"; --Carrega valor das Dezenas
--    tmp(99)  :=SOMA & "000" & '0' & x"01"; --Incrementa o valor de Dezenas
--    tmp(100) := CEQ & "000" & '0' & x"02"; --Compara com 10
--    tmp(101) := JEQ & "000" & '0' & x"6C"; --Pula para colocar 0
--    tmp(102) := STA & "000" & '0' & x"04"; --Guarda valor das Dezenas
--    tmp(103) := STA & "000" & '1' & x"21"; --Coloca valor no HEX[1]
--    tmp(104) := RET & "000" & '0' & x"00"; --Retorna da sub-rotina
--    tmp(105) := LDI & "000" & '0' & x"00"; --Carrega 0 no reg0
--    tmp(106) := STA & "000" & '0' & x"04"; --Guarda valor das Dezenas
--    tmp(107) := STA & "000" & '1' & x"21"; --Coloca valor no HEX[1]
--    --Centenas
--    tmp(108) := LDA & "000" & '0' & x"05"; --Carrega valor das Centenas
--    tmp(109) :=SOMA & "000" & '0' & x"01"; --Incrementa o valor de Centenas
--    tmp(110) := CEQ & "000" & '0' & x"02"; --Compara com 10
--    tmp(111) := JEQ & "000" & '0' & x"75"; --Pula para acionar overflow
--    tmp(112) := STA & "000" & '0' & x"05"; --Guarda valor das Centenas
--    tmp(113) := STA & "000" & '1' & x"22"; --Coloca valor no HEX[2]
--    tmp(114) := RET & "000" & '0' & x"00"; --Retorna da sub-rotina
--    tmp(115) := LDI & "000" & '0' & x"01"; --Carrega 1 para reg0
--    tmp(116) := STA & "000" & '0' & x"09"; --inibir contagem
--    --tmp() := STA & "000" & '0' & x"0A"; --overflow
--    tmp(117) := STA & "000" & '1' & x"02"; --led de overflow
--    tmp(118) := RET & "000" & '0' & x"00"; --Retorna da sub-rotina




        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(PC)));
end architecture;