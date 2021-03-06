library ieee;
use ieee.std_logic_1164.all;

entity aula1 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 4;
              simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
    LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of aula1 is
-- Obs.:
-- SW(9 downto 6) : entrada da variavel X.
-- SW(3 downto 0) : entrada da variavel Y.
-- SW(4) : o ponto de controle da Operacao da ULA.
-- SW(5) : o ponto de controle de SelMUX.
-- KEY(0) : o botão do clock.
-- KEY(1) : o ponto de controle para Reset A (o Botao em repouso fica no nível alto, portanto, devemos usar not KEY(1) no Reset).
-- KEY(2) : o ponto de controle de Habilita A.
-- KEY(3) : sem uso.

-- Faltam alguns sinais:
  signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal chavesX_A : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Reset_A : std_logic;
  signal Operacao_ULA : std_logic;
  signal REG1_IN : std_logic_vector(larguraDados-1 downto 0);
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- Falta preencher o port map.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => chavesX_A,
                 entradaB_MUX =>  Saida_ULA,
                 seletor_MUX => SelMUX,
                 saida_MUX => REG1_IN);

-- Falta preencher o port map.
REG1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => REG1_IN, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => Reset_A);

-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB =>  chavesX_ULA_B, saida => Saida_ULA, seletor => Operacao_ULA);

-- Chaves e Botoes: Falta completar.

SelMUX <= SW(5);
Reset_A <= not KEY(1);
Habilita_A <= KEY(2);
Operacao_ULA <= SW(4);
chavesX_ULA_B <= SW(9 downto 6);
chavesX_A <= SW(3 downto 0);

-- A ligacao dos LEDs:
LEDR (9) <= SelMUX;
LEDR (8) <= Habilita_A;
LEDR (7) <= Reset_A;
LEDR (6) <= Operacao_ULA;
LEDR (5) <= '0';    -- Apagado.
LEDR (4) <= '0';    -- Apagado.
LEDR (3 downto 0) <= REG1_ULA_A;

end architecture;
