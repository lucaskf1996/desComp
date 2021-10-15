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
	constant JG  : std_logic_vector(3 downto 0) := "1011";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- CTRL = SelMUX, Habilita_A, Reset_A, Operacao_ULA
			-- Inicializa os endereços:
--               OPCode   REG        Imediate


--Setup:
    --Carrega 0 no registrador 0
    tmp(0)   := LDI & "000" & '0' & x"00";
	 tmp(1)   := STA & "000" & '1' & x"FF"; --Reseta key0
	 tmp(2)   := STA & "000" & '1' & x"FE"; --Reseta key1
    --Carrega 0 nos LEDs
    tmp(3)   := STA & "000" & '1' & x"00";
    tmp(4)   := STA & "000" & '1' & x"01"; --led de limite atingido
    tmp(5)   := STA & "000" & '1' & x"02"; --led de overflow
    --Carrega 0 nos HEXs
    tmp(6)   := STA & "000" & '1' & x"20";
    tmp(7)   := STA & "000" & '1' & x"21";
    tmp(8)   := STA & "000" & '1' & x"22";
    tmp(9)   := STA & "000" & '1' & x"23";
    tmp(10)  := STA & "000" & '1' & x"24";
    tmp(11)  := STA & "000" & '1' & x"25";
    --Carrega 0 para comparacao, unidades, dezenas, centenas, flag de inibir contagem, overflow, respectivamente.
    tmp(12)  := STA & "000" & '0' & x"00"; --0 
    tmp(13)  := STA & "000" & '0' & x"03"; --segundos
    tmp(14)  := STA & "000" & '0' & x"04"; --segundos
    tmp(15)  := STA & "000" & '0' & x"05"; --minutos
    tmp(16)  := STA & "000" & '0' & x"06"; --minutos
    tmp(17)  := STA & "000" & '0' & x"07"; --horas
    tmp(18)  := STA & "000" & '0' & x"08"; --horas
    tmp(19)  := STA & "000" & '0' & x"09"; --inibir contagem
    --Carrega 1 para incremento, 10 para comparacao, valor limite para unidade, valor limite para dezena e valor limite para centena, respectivamente.
    tmp(20)  := LDI & "000" & '0' & x"01"; 
    tmp(21)  := STA & "000" & '0' & x"01"; --1 
    tmp(22)  := LDI & "000" & '0' & x"0A"; 
    tmp(23)  := STA & "000" & '0' & x"02"; --10 
    tmp(24)  := LDI & "000" & '0' & x"00";  
    tmp(25)  := LDI & "001" & '0' & x"01";
    tmp(26)  := STA & "001" & '0' & x"0A"; --segundos
    tmp(27)  := STA & "000" & '0' & x"0B"; --segundos
    tmp(28)  := STA & "000" & '0' & x"0C"; --minutos
    tmp(29)  := STA & "000" & '0' & x"0D"; --minutos
    tmp(30)  := STA & "000" & '0' & x"0E"; --horas
    tmp(31)  := STA & "000" & '0' & x"0F"; --horas
    tmp(32)  := LDI & "000" & '0' & x"06";
    tmp(33)  := STA & "000" & '0' & x"10"; --6 
    tmp(34)  := LDI & "000" & '0' & x"03";
    tmp(35)  := STA & "000" & '0' & x"11"; --3 
    tmp(36)  := LDI & "000" & '0' & x"02";
    tmp(37)  := STA & "000" & '0' & x"12"; --2 
    tmp(38)  := LDI & "000" & '0' & x"08";
    tmp(39)  := STA & "000" & '0' & x"13"; --8
    tmp(40)  := LDI & "000" & '0' & x"09";
    tmp(41)  := STA & "000" & '0' & x"14"; --9 
    --JUMP para rotina principal
    tmp(42)  := JMP & "000" & '0' & x"2B"; 
	 
 --Loop principal:
    --Leitura do key(0)
    tmp(43)  := LDA & "000" & '1' & x"65"; --Carrega o valor da chave no reg0
    tmp(44)  := CEQ & "000" & '0' & x"00"; --Compara com MEM[0]
    tmp(45)  := JEQ & "000" & '0' & x"2F"; --Pula para a verificacao do key(1) caso o botao nao tenha sido pressionado
    tmp(46)  := JSR & "000" & '1' & x"31"; --Pula para sub-rotina de incremento key(0)
    --Leitura do key(1)
    tmp(47)  := JSR & "000" & '1' & x"7E"; --Pula para sub-rotina atualizacao de hex
    tmp(48)  := LDA & "000" & '1' & x"61"; --Carrega o valor da chave no reg0
    tmp(49)  := CEQ & "000" & '0' & x"00"; --Compara com MEM[1]
    tmp(50)  := JEQ & "000" & '0' & x"34"; --Pula para verificacao de limite caso o botao nao tenha sido pressionado
    tmp(51)  := JSR & "000" & '0' & x"47"; --Pula para sub-rotina de configuracao de limites 
    tmp(52)  := JSR & "000" & '0' & x"C8"; --Pula para sub-rotina de verificacao de limites 
    tmp(53)  := LDA & "000" & '1' & x"64"; --Leitura do FPGA_RESET
    tmp(54)  := CEQ & "000" & '0' & x"00"; --Compara com MEM[0]
    tmp(55)  := JEQ & "000" & '0' & x"39"; --Pula para verificacao da key0
    tmp(56)  := JSR & "000" & '0' & x"E6"; --Pula para sub-rotina de reset 
	 tmp(57)  := LDA & "000" & '1' & x"60"; --Carrega o valor da chave no reg0
    tmp(58)  := CEQ & "000" & '0' & x"00"; --Compara com MEM[0]
    tmp(59)  := JEQ & "000" & '0' & x"2B"; --Pula para a verificacao do key(1) caso o botao nao tenha sido pressionado
    tmp(60)  := JSR & "000" & '1' & x"AE"; --Pula para sub-rotina de incremento key(0)
    tmp(61)  := JMP & "000" & '0' & x"2B"; --Pula para o inicio do loop


--Definicao de limites de contagem: --Verificar se tem há dados nos registradores.
    --Segundos
	 tmp(71)  := "0100" & "011" & "000000001"; -- LDI 3 1   --carrega 1 no reg3
	 tmp(72)	 := "0101" & "011" & "100000000"; -- STA 3 256 --salva no ledr
	 tmp(73)  := STA & "000" & '1' & x"FE"; --Reseta key1
    tmp(74)  := LDA & "001" & '1' & x"40"; --Carrega o reg1 com a leitura das chaves SW0 até SW7
    tmp(75)  := LDA & "000" & '1' & x"61"; --Carrega o reg0 com a leitura do botão KEY1
    tmp(76)  := CEQ & "000" & '0' & x"01"; --Compara com MEM[1]
    tmp(77)  := JEQ & "000" & '0' & x"5A"; --Pula para as Segundos caso tenha apertado key(1)
    tmp(78)  := JMP & "000" & '0' & x"4A"; --Volta para as Segundos caso nao tenha apertado key(1)
    --Segundos
	 tmp(90)  := "0100" & "011" & "000000011"; -- LDI 3 1   --carrega 1 no reg3
	 tmp(91)	 := "0101" & "011" & "100000000"; -- STA 3 256 --salva no ledr
	 tmp(92)  := STA & "000" & '1' & x"FE"; --Reseta key1
    tmp(93)  := STA & "001" & '0' & x"0A"; --Salva o limite das unidades na RAM
    tmp(94)  := LDA & "001" & '1' & x"40"; --Carrega o reg1 com a leitura das chaves SW0 até SW7
    tmp(95)  := LDA & "000" & '1' & x"61"; --Carrega o reg0 com a leitura do botão KEY1
    tmp(96)  := CEQ & "000" & '0' & x"01"; --Compara com MEM[1]
    tmp(97)  := JEQ & "000" & '0' & x"6E"; --Pula para as Segundos caso tenha apertado key(1)
    tmp(98)  := JMP & "000" & '0' & x"5E"; --Volta para as Segundos caso nao tenha apertado key(1)

    --Minutos
	 tmp(110)  := "0100" & "011" & "000000111"; -- LDI 3 1   --carrega 1 no reg3
    tmp(111)  := "0101" & "011" & "100000000"; -- STA 3 256 --salva no ledr
    tmp(112)  := STA & "000" & '1' & x"FE"; --Reseta key1
    tmp(113)  := STA & "001" & '0' & x"0B"; --Salva o limite das unidades na RAM
    tmp(114)  := LDA & "001" & '1' & x"40"; --Carrega o acumulador com a leitura das chaves SW0 até SW7
    tmp(115)  := LDA & "000" & '1' & x"61"; --Carrega o acumulador com a leitura do botão KEY1
    tmp(116)  := CEQ & "000" & '0' & x"01"; --Compara com MEM[1]
    tmp(117)  := JEQ & "000" & '0' & x"82"; --Pula para as Minutos caso tenha apertado key(1)
    tmp(118)  := JMP & "000" & '0' & x"72"; --Volta para as Minutos caso nao tenha apertado key(1)
    --Minutos
    tmp(130)  := "0100" & "011" & "000001111"; -- LDI 3 1   --carrega 1 no reg3
    tmp(131)  := "0101" & "011" & "100000000"; -- STA 3 256 --salva no ledr
    tmp(132)  := STA & "000" & '1' & x"FE"; --Reseta key1
    tmp(133)  := STA & "001" & '0' & x"0C"; --Salva o limite das unidades na RAM
    tmp(134)  := LDA & "001" & '1' & x"40"; --Carrega o acumulador com a leitura das chaves SW0 até SW7
    tmp(135)  := LDA & "000" & '1' & x"61"; --Carrega o acumulador com a leitura do botão KEY1
    tmp(136)  := CEQ & "000" & '0' & x"01"; --Compara com MEM[1]
    tmp(137)  := JEQ & "000" & '0' & x"96"; --Pula para as Minutos caso tenha apertado key(1)
    tmp(138)  := JMP & "000" & '0' & x"86"; --Volta para as Minutos caso nao tenha apertado key(1)

    --Horas
    tmp(150)  := "0100" & "011" & "000011111"; -- LDI 3 1   --carrega 1 no reg3
	 tmp(151)  := "0101" & "011" & "100000000"; -- STA 3 256 --salva no ledr
    tmp(152)  := STA & "000" & '1' & x"FE"; --Reseta key1
    tmp(153)  := STA & "001" & '0' & x"0D"; --Salva o limite das unidades na RAM
    tmp(154)  := LDA & "001" & '1' & x"40"; --Carrega o acumulador com a leitura das chaves SW0 até SW7
    tmp(155)  := LDA & "000" & '1' & x"61"; --Carrega o acumulador com a leitura do botão KEY1
    tmp(156)  := CEQ & "000" & '0' & x"01"; --Compara com MEM[1]
    tmp(157)  := JEQ & "000" & '0' & x"AA"; --Pula para as Horas caso tenha apertado key(1)
    tmp(158)  := JMP & "000" & '0' & x"9A"; --Volta para as Horas caso nao tenha apertado key(1)
    --Horas
	 tmp(170)  := "0100" & "011" & "000111111"; -- LDI 3 1   --carrega 1 no reg3
	 tmp(171)  := "0101" & "011" & "100000000"; -- STA 3 256 --salva no ledr
	 tmp(172)  := STA & "000" & '1' & x"FE"; --Reseta key1
    tmp(173)  := STA & "001" & '0' & x"0E"; --Salva o limite das dezenas na RAM
    tmp(174)  := LDA & "001" & '1' & x"40"; --Carrega o acumulador com a leitura das chaves SW0 até SW7
    tmp(175)  := LDA & "000" & '1' & x"61"; --Carrega o acumulador com a leitura do botão KEY1
    tmp(176)  := CEQ & "000" & '0' & x"01"; --Compara com MEM[1]
    tmp(177)  := JEQ & "000" & '0' & x"B3"; --Pula pro retorno
    tmp(178)  := JMP & "000" & '0' & x"AE"; --Volta para as unidades caso nao tenha apertado key(1)
	 tmp(179)  := STA & "000" & '1' & x"FE"; --Reseta key1
    tmp(180)  := STA & "001" & '0' & x"0F"; --Salva o limite das Horas na RAM
	 tmp(181)  := "0100" & "011" & "000000000"; -- LDI 3 1   --carrega 1 no reg3
	 tmp(182)  := "0101" & "011" & "100000000"; -- STA 3 256 --salva no ledr
    tmp(183)  := RET & "000" & '0' & x"00"; --Retorna da funcao
	 

--Verificacao de limites:
    --Horas(second)
    tmp(200)  := LDA & "000" & '0' & x"0F"; --carrega limite das horas
    tmp(201)  := CEQ & "000" & '0' & x"08"; --Compara valor das horas
    tmp(202)  := JEQ & "000" & '0' & x"CC"; --Pula para verificacao de Horas(first)
    tmp(203)  := RET & "000" & '0' & x"00"; --Volta para rotina principal

    --Horas(first)
    tmp(204)  := LDA & "000" & '0' & x"0E"; --carrega limite das horas
    tmp(206)  := CEQ & "000" & '0' & x"07"; --Compara valor das horas
    tmp(206)  := JEQ & "000" & '0' & x"D0"; --Pula para verificacao de Minutos(second)
    tmp(207)  := RET & "000" & '0' & x"00"; --Volta para rotina principal

    --Minutos(second)
    tmp(208)  := LDA & "000" & '0' & x"0D"; --carrega limite dos minutos
    tmp(209)  := CEQ & "000" & '0' & x"06"; --Compara valor dos minutos
    tmp(210)  := JEQ & "000" & '0' & x"D4"; --Pula para verificacao de Minutos(first)
    tmp(211)  := RET & "000" & '0' & x"00"; --Volta para rotina principal

    --Minutos(first)
    tmp(212)  := LDA & "000" & '0' & x"0C"; --carrega limite dos minutos
    tmp(213)  := CEQ & "000" & '0' & x"05"; --Compara valor dos minutos
    tmp(214)  := JEQ & "000" & '0' & x"D8"; --Pula para verificacao de Segundos(second)
    tmp(215)  := RET & "000" & '0' & x"00"; --Volta para rotina principal

    --Segundos(second)
    tmp(216)  := LDA & "000" & '0' & x"0B"; --carrega limite dos segundos
    tmp(217)  := CEQ & "000" & '0' & x"04"; --Compara valor dos segundos
    tmp(218)  := JEQ & "000" & '0' & x"DC"; --Pula para verificacao de Segundos(first)
    tmp(219)  := RET & "000" & '0' & x"00"; --Volta para rotina principal

    --Segundos(first)
    tmp(220)  := LDA & "000" & '0' & x"0A"; --carrega limite dos segundos
    tmp(221)  := CEQ & "000" & '0' & x"03"; --Compara valor dos segundos
    tmp(222)  := JEQ & "000" & '0' & x"E0"; --Limite atingido. Pula para ativacao de flags e leds
    tmp(223)  := RET & "000" & '0' & x"00"; --Volta para rotina principal

    -- Caso todas comparações resultem iguais, devemos:
    tmp(224)  := LDI & "000" & '0' & x"01"; -- Carrega 1 no reg0
    tmp(225)  := STA & "000" & '0' & x"09"; -- Ativa flag de inibir contagem
    tmp(226)  := STA & "000" & '1' & x"01"; -- Acender o LED de **Limite Atingido**.
    tmp(227)  := RET & "000" & '0' & x"00"; -- Retornar da sub-rotina.
		 
	 

--Reinício de Contagem:
    tmp(230)  := LDI & "000" & '0' & x"00"; --Carrega 0 no reg0
    tmp(231)  := STA & "000" & '0' & x"09"; --zera flag de inibir contagem
    tmp(232)  := STA & "000" & '1' & x"01"; --apaga led de limite de contagem
    tmp(233)  := STA & "000" & '1' & x"02"; --apaga led de overflow
    tmp(234)  := RET & "000" & '0' & x"00"; --Retorna da funcao
	 
	 
--Atualização de hex (ops)
	 --Se Hora(second) for 2 e Hora(first) for <= 1
	 tmp(240) := SUB & "001" & '0' & x"12"; --Subtrai 1 do Hora(second)
	 tmp(241) :=SOMA & "000" & '0' & x"13"; --Soma 8 do Hora(first)
	 tmp(242) := JMP & "000" & '1' & x"AB"; --Pula para guardar no HEX
	 
	 
	 --Se Hora(second) for 2 ou 1 e Hora(first) for > 1
	 tmp(243) := SUB & "001" & '0' & x"01"; --Subtrai 1 do Hora(second)
	 tmp(244) := SUB & "000" & '0' & x"12"; --Subtrai 2 do Hora(first)
	 tmp(245) := JMP & "000" & '1' & x"AB"; --Pula para 24h
	 
	 
--Incrementando Contagem:
    tmp(300)  := STA & "000" & '1' & x"FF"; --Reseta key0
    tmp(301)  := LDA & "000" & '0' & x"09"; --Carrega valor da flag de inibir contagem
    tmp(302)  := CEQ & "000" & '0' & x"00"; --Compara com 0
    tmp(303)  := JEQ & "000" & '1' & x"31"; --Continua para incrementar
    tmp(304)  := RET & "000" & '0' & x"00"; --Retorna se a flag estiver ligada
    tmp(305)  := LDI & "001" & '0' & x"00"; --Carrega 0 no reg0
    tmp(306)  := STA & "000" & '1' & x"FD"; --Reseta key0
	 tmp(307)  := JMP & "000" & '1' & x"36"; --Pular para incrementar

    --Segundos(first)
    tmp(310)  := LDA & "000" & '0' & x"03"; --Carrega valor dos Segundos(first)
    tmp(311)  :=SOMA & "000" & '0' & x"01"; --Incrementa o valor de Segundos(first)
    tmp(312)  := CEQ & "000" & '0' & x"02"; --Compara com 10
    tmp(313)  := JEQ & "000" & '1' & x"3C"; --Pula para colocar 0
    tmp(314)  := STA & "000" & '0' & x"03"; --Guarda valor dos Segundos(first)
    tmp(315)  := RET & "000" & '0' & x"00"; --Retorna da sub-rotina
    tmp(316)  := STA & "001" & '0' & x"03"; --Guarda valor dos Segundos(first)
    --Segundos(second)
    tmp(317)  := LDA & "000" & '0' & x"04"; --Carrega valor dos Segundos(second)
    tmp(318)  :=SOMA & "000" & '0' & x"01"; --Incrementa o valor de Segundos(second)
    tmp(319)  := CEQ & "000" & '0' & x"10"; --Compara com 6
    tmp(320)  := JEQ & "000" & '1' & x"43"; --Pula para colocar 0
    tmp(321)  := STA & "000" & '0' & x"04"; --Guarda valor dos Segundos(second)
    tmp(322)  := RET & "000" & '0' & x"00"; --Retorna da sub-rotina
    tmp(323)  := STA & "001" & '0' & x"04"; --Guarda valor dos Segundos(second)
	 tmp(324)  := JMP & "000" & '1' & x"4A"; --Pular para incrementar	 

    --Minutos(first)
    tmp(330) := LDA & "000" & '0' & x"05"; --Carrega valor dos Minutos(first)
    tmp(331) :=SOMA & "000" & '0' & x"01"; --Incrementa o valor de Minutos(first)
    tmp(332) := CEQ & "000" & '0' & x"02"; --Compara com 10
    tmp(333) := JEQ & "000" & '1' & x"50"; --Pula para colocar 0
    tmp(334) := STA & "000" & '0' & x"05"; --Guarda valor dos Minutos(first)
    tmp(335) := RET & "000" & '0' & x"00"; --Retorna da sub-rotina
    tmp(336) := STA & "001" & '0' & x"05"; --Guarda valor dos Minutos(first)
    --Minutos(second)
    tmp(337) := LDA & "000" & '0' & x"06"; --Carrega valor dos Minutos(second)
    tmp(338) :=SOMA & "000" & '0' & x"01"; --Incrementa o valor de Minutos(second)
    tmp(339) := CEQ & "000" & '0' & x"10"; --Compara com 6
    tmp(340) := JEQ & "000" & '1' & x"57"; --Pula para colocar 0
    tmp(341) := STA & "000" & '0' & x"06"; --Guarda valor dos Minutos(second)
    tmp(342) := RET & "000" & '0' & x"00"; --Retorna da sub-rotina
    tmp(343) := STA & "001" & '0' & x"06"; --Guarda valor dos Minutos(second)
	 tmp(344) := JMP & "000" & '1' & x"68"; --Pular para incrementar	 

    --Horas reset(first)
    tmp(360) := LDA & "000" & '0' & x"07"; --Carrega valor das Horas(first)
    tmp(361) := CEQ & "000" & '0' & x"11"; --Compara com 3
    tmp(362) := JEQ & "000" & '1' & x"6C"; --Pula para verificar segundo digito
    tmp(363) := JMP & "000" & '1' & x"73"; --Pula para incrementar
    --Horas reset(second)
    tmp(364) := LDA & "000" & '0' & x"08"; --Carrega valor das Horas(second)
    tmp(365) := CEQ & "000" & '0' & x"12"; --Compara com 2
    tmp(366) := JEQ & "000" & '1' & x"70"; --Pula para zerar
    tmp(367) := JMP & "000" & '1' & x"73"; --Pula para incrementar
    tmp(368) := STA & "001" & '0' & x"07"; --Guarda valor das Horas(first)
    tmp(369) := STA & "001" & '0' & x"08"; --Guarda valor das Horas(second)
    tmp(370) := RET & "000" & '0' & x"00"; --Retorna da sub-rotina

    --Horas(first)
    tmp(371) := LDA & "000" & '0' & x"07"; --Carrega valor das Horas(first)
    tmp(372) :=SOMA & "000" & '0' & x"01"; --Incrementa o valor de Horas(first)
    tmp(373) := CEQ & "000" & '0' & x"02"; --Compara com 10
    tmp(374) := JEQ & "000" & '1' & x"79"; --Pula para incrementar segundo digito
    tmp(375) := STA & "000" & '0' & x"07"; --Guarda valor das Horas(first)
    tmp(376) := RET & "000" & '0' & x"00"; --Retorna da sub-rotina
    tmp(377) := STA & "001" & '0' & x"07"; --Guarda valor das Horas(first)
    --Horas(second)
    tmp(378) := LDA & "000" & '0' & x"08"; --Carrega valor das Horas(second)
    tmp(379) :=SOMA & "000" & '0' & x"01"; --Incrementa o valor de Horas(second)
    tmp(380) := STA & "000" & '0' & x"08"; --Guarda valor das Horas(second)
    tmp(381) := RET & "000" & '0' & x"00"; --Retorna da sub-rotina
	 
--Atualização de hex
    tmp(382) := LDA & "000" & '0' & x"03"; --Carrega valor dos Segundos
    tmp(383) := STA & "000" & '1' & x"20"; --Guarda no HEX[0]
    tmp(384) := LDA & "000" & '0' & x"04"; --Carrega valor dos Segundos
    tmp(385) := STA & "000" & '1' & x"21"; --Guarda no HEX[1]
    tmp(386) := LDA & "000" & '0' & x"05"; --Carrega valor dos Minutos
    tmp(387) := STA & "000" & '1' & x"22"; --Guarda no HEX[2]
    tmp(388) := LDA & "000" & '0' & x"06"; --Carrega valor dos Minutos
    tmp(389) := STA & "000" & '1' & x"23"; --Guarda no HEX[3]
    tmp(390) := LDA & "000" & '1' & x"41"; --Carrega valor da SW8
	 tmp(391) := CEQ & "000" & '0' & x"00"; --Compara SW8 com 0
	 tmp(392) := JEQ & "000" & '1' & x"A9"; --Pula se for igual para 24h
	 


    --Verifica Hora(second)
    tmp(393) := LDA & "000" & '0' & x"07"; --Carrega valor das Horas
    tmp(394) := LDA & "001" & '0' & x"08"; --Carrega valor das Horas
	 tmp(395) := CEQ & "001" & '0' & x"12"; --Compara Horas(second) com 2
	 tmp(396) := JEQ & "000" & '1' & x"95"; --Pula se for maior para 12h
	 tmp(397) := CEQ & "001" & '0' & x"01"; --Compara Horas(second) com 1
	 tmp(398) := JEQ & "000" & '1' & x"90"; --Pula se for maior
	 tmp(399) := JMP & "000" & '1' & x"AB"; --Pula para 24h
	 
	 
	 --Se Hora(second) for 1
	 tmp(400) := CEQ & "000" & '0' & x"01"; --Compara Horas(first) com 1
	 tmp(401) := JEQ & "000" & '1' & x"AB"; --Pula se for maior para 12h
	 tmp(402) := CEQ & "000" & '0' & x"00"; --Compara Horas(first) com 0
	 tmp(403) := JEQ & "000" & '1' & x"AB"; --Pula se for maior
	 tmp(404) := JMP & "000" & '0' & x"F3"; --Pula para 24h
	 
    --Se Hora(second) for 2
	 tmp(405) := CEQ & "000" & '0' & x"01"; --Compara Horas(first) com 1
	 tmp(406) := JEQ & "000" & '0' & x"F0"; --Pula se for maior para 12h
	 tmp(407) := CEQ & "000" & '0' & x"00"; --Compara Horas(first) com 0
	 tmp(408) := JEQ & "000" & '0' & x"F0"; --Pula se for maior
	 tmp(409) := JMP & "000" & '0' & x"F3"; --Pula para 24h
	 
	 
    tmp(425) := LDA & "000" & '0' & x"07"; --Carrega valor das Horas
    tmp(426) := LDA & "001" & '0' & x"08"; --Carrega valor das Horas
    tmp(427) := STA & "001" & '1' & x"25"; --Guarda no HEX[5]
    tmp(428) := STA & "000" & '1' & x"24"; --Guarda no HEX[4]
	 tmp(429) := RET & "000" & '0' & x"00"; --retorna ao loop principal


--Ajuste do relogio: --Verificar se tem há dados nos registradores.
    --Segundos
	 tmp(430)  := "0100" & "011" & "000000001"; -- LDI 3 1   --carrega 1 no reg3
	 tmp(431)  := "0101" & "011" & "100000000"; -- STA 3 256 --salva no ledr
	 tmp(432)  := STA & "000" & '1' & x"FF"; --Reseta key1
    tmp(433)  := LDA & "001" & '1' & x"40"; --Carrega o reg1 com a leitura das chaves SW0 até SW7
    tmp(434)  := LDA & "000" & '1' & x"60"; --Carrega o reg0 com a leitura do botão KEY1
    tmp(435)  := CEQ & "000" & '0' & x"01"; --Compara com MEM[1]
    tmp(436)  := JEQ & "000" & '1' & x"B8"; --Pula para as Segundos caso tenha apertado key(1)
    tmp(437)  := JMP & "000" & '1' & x"B1"; --Volta para as Segundos caso nao tenha apertado key(1)
    --Segundos
	 tmp(440)  := "0100" & "011" & "000000011"; -- LDI 3 1   --carrega 1 no reg3
	 tmp(441)  := "0101" & "011" & "100000000"; -- STA 3 256 --salva no ledr
	 tmp(442)  := STA & "000" & '1' & x"FF"; --Reseta key1
    tmp(443)  := STA & "001" & '0' & x"03"; --Salva o limite das unidades na RAM
    tmp(444)  := LDA & "001" & '1' & x"40"; --Carrega o reg1 com a leitura das chaves SW0 até SW7
    tmp(445)  := LDA & "000" & '1' & x"60"; --Carrega o reg0 com a leitura do botão KEY1
    tmp(446)  := CEQ & "000" & '0' & x"01"; --Compara com MEM[1]
    tmp(447)  := JEQ & "000" & '1' & x"C2"; --Pula para as Segundos caso tenha apertado key(1)
    tmp(448)  := JMP & "000" & '1' & x"BC"; --Volta para as Segundos caso nao tenha apertado key(1)

    --Minutos
	 tmp(450)  := "0100" & "011" & "000000111"; -- LDI 3 1   --carrega 1 no reg3
    tmp(451)  := "0101" & "011" & "100000000"; -- STA 3 256 --salva no ledr
    tmp(452)  := STA & "000" & '1' & x"FF"; --Reseta key1
    tmp(453)  := STA & "001" & '0' & x"04"; --Salva o limite das unidades na RAM
    tmp(454)  := LDA & "001" & '1' & x"40"; --Carrega o acumulador com a leitura das chaves SW0 até SW7
    tmp(455)  := LDA & "000" & '1' & x"60"; --Carrega o acumulador com a leitura do botão KEY1
    tmp(456)  := CEQ & "000" & '0' & x"01"; --Compara com MEM[1]
    tmp(457)  := JEQ & "000" & '1' & x"CC"; --Pula para as Minutos caso tenha apertado key(1)
    tmp(458)  := JMP & "000" & '1' & x"C6"; --Volta para as Minutos caso nao tenha apertado key(1)
    --Minutos
    tmp(460)  := "0100" & "011" & "000001111"; -- LDI 3 1   --carrega 1 no reg3
    tmp(461)  := "0101" & "011" & "100000000"; -- STA 3 256 --salva no ledr
    tmp(462)  := STA & "000" & '1' & x"FF"; --Reseta key1
    tmp(463)  := STA & "001" & '0' & x"05"; --Salva o limite das unidades na RAM
    tmp(464)  := LDA & "001" & '1' & x"40"; --Carrega o acumulador com a leitura das chaves SW0 até SW7
    tmp(465)  := LDA & "000" & '1' & x"60"; --Carrega o acumulador com a leitura do botão KEY1
    tmp(466)  := CEQ & "000" & '0' & x"01"; --Compara com MEM[1]
    tmp(467)  := JEQ & "000" & '1' & x"D6"; --Pula para as Minutos caso tenha apertado key(1)
    tmp(468)  := JMP & "000" & '1' & x"D0"; --Volta para as Minutos caso nao tenha apertado key(1)

    --Horas
    tmp(470)  := "0100" & "011" & "000011111"; -- LDI 3 1   --carrega 1 no reg3
	 tmp(471)  := "0101" & "011" & "100000000"; -- STA 3 256 --salva no ledr
    tmp(472)  := STA & "000" & '1' & x"FF"; --Reseta key1
    tmp(473)  := STA & "001" & '0' & x"06"; --Salva o limite das unidades na RAM
    tmp(474)  := LDA & "001" & '1' & x"40"; --Carrega o acumulador com a leitura das chaves SW0 até SW7
    tmp(475)  := LDA & "000" & '1' & x"60"; --Carrega o acumulador com a leitura do botão KEY1
    tmp(476)  := CEQ & "000" & '0' & x"01"; --Compara com MEM[1]
    tmp(477)  := JEQ & "000" & '1' & x"E0"; --Pula para as Horas caso tenha apertado key(1)
    tmp(478)  := JMP & "000" & '1' & x"DA"; --Volta para as Horas caso nao tenha apertado key(1)
    --Horas
	 tmp(480)  := "0100" & "011" & "000111111"; -- LDI 3 1   --carrega 1 no reg3
	 tmp(481)  := "0101" & "011" & "100000000"; -- STA 3 256 --salva no ledr
	 tmp(482)  := STA & "000" & '1' & x"FF"; --Reseta key1
    tmp(483)  := STA & "001" & '0' & x"07"; --Salva o limite das dezenas na RAM
    tmp(484)  := LDA & "001" & '1' & x"40"; --Carrega o acumulador com a leitura das chaves SW0 até SW7
    tmp(485)  := LDA & "000" & '1' & x"60"; --Carrega o acumulador com a leitura do botão KEY1
    tmp(486)  := CEQ & "000" & '0' & x"01"; --Compara com MEM[1]
    tmp(487)  := JEQ & "000" & '1' & x"E9"; --Pula pro retorno
    tmp(488)  := JMP & "000" & '1' & x"E4"; --Volta para as unidades caso nao tenha apertado key(1)
	 tmp(489)  := STA & "000" & '1' & x"FF"; --Reseta key1
    tmp(490)  := STA & "001" & '0' & x"08"; --Salva o limite das Horas na RAM
	 tmp(491)  := "0100" & "011" & "000000000"; -- LDI 3 1   --carrega 1 no reg3
	 tmp(492)  := "0101" & "011" & "100000000"; -- STA 3 256 --salva no ledr
    tmp(493)  := RET & "000" & '0' & x"00"; --Retorna da funcao
	 
	 
	 

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(PC)));
end architecture;