library ieee;
use ieee.std_logic_1164.all;

entity Aula2 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    DEBUG: out std_logic_vector(5 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 SAIDA_MUX : out std_logic_vector(7 downto 0);
	 OUT_ULA : out std_logic_vector(7 downto 0);
	 ENTRADA_MUX_0 : out std_logic_vector(7 downto 0);
	 ENTRADA_MUX_1 : out std_logic_vector(7 downto 0);
	 SELETOR_MUX : out std_logic;
	 HABILITA : out std_logic
  );
end entity;


architecture arquitetura of Aula2 is

-- Faltam alguns sinais:
  signal MEM_MUX : std_logic_vector (larguraDados-1 downto 0);
  signal INST : std_logic_vector (12 downto 0);
  signal MUX_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (5 downto 0);
  signal Proximo_Estado : std_logic_vector (3 downto 0);
  signal Estado_Atual : std_logic_vector (3 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal LEI : std_logic;
  signal ESC : std_logic;
  signal Operacao_ULA : STD_LOGIC_VECTOR(1 downto 0);
  signal retroPC : std_logic_vector (8 downto 0);

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => MEM_MUX,
                 entradaB_MUX => INST(7 downto 0),
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_ULA);

-- O port map completo do Acumulador.
REG1:     entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK);

-- O botao 3 faz o Reset da MEF:
REGDADOS1:entity work.memoriaDADOS   generic map (dataWidth => larguraDados, addrWidth => larguraDados)
          port map (addr => INST(7 downto 0), we => ESC, re => LEI, habilita => INST(8), dado_in => REG1_ULA_A, dado_out => MEM_MUX, clk => CLK);

-- O port map completo da ULA:
ULA1:     entity work.ULASomaSub  generic map (larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_ULA, saida => Saida_ULA, seletor => Operacao_ULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1:     entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 4)
          port map (PC => retroPC, Dado => INST); -- opcode(12 downto 9) endereco(8 downto 0) valor(7 downto 0)

DECODER1: entity work.Decodificador generic map (DATA_WIDTH => 4)
			 port map (dataIN => INST(12 downto 9), Sinais_Controle => Sinais_Controle);
			 
-- LIGAR RETROPC NA ROM
PC1:      entity work.PC  generic map (DATA_WIDTH => larguraDados+1)
          port map (dataIN => retroPC, clk => CLK, dataOUT => retroPC);


SelMUX <= Sinais_Controle(5);
Habilita_A <= Sinais_Controle(4);
Operacao_ULA <= Sinais_Controle(3 downto 2);
LEI <= Sinais_Controle(1);
ESC <= Sinais_Controle(0);

-- A ligacao dos LEDs:
LEDR (7 downto 0) <= REG1_ULA_A;
DEBUG <= Sinais_Controle;
SAIDA_MUX <= MUX_ULA;
OUT_ULA <= Saida_ULA;
ENTRADA_MUX_0 <= MEM_MUX;
ENTRADA_MUX_1 <= INST(7 downto 0);
SELETOR_MUX <= SelMUX;
HABILITA <= INST(8);

end architecture;