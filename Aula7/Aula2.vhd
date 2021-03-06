library ieee;
use ieee.std_logic_1164.all;

entity Aula2 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8
  );
  port   (
    CLOCK_50      : in std_logic;
	 Reset         : in std_logic;
    KEY           : in std_logic_vector(3 downto 0);
	 Instuction_IN : in std_logic_vector(12 downto 0);
	 Data_IN       : in std_logic_vector(7 downto 0);
	 
	 Wr            : out std_logic;
	 Rd            : out std_logic;
	 ROM_Address   : out std_logic_vector(8 downto 0); 
	 Data_Address  : out std_logic_vector(8 downto 0);
	 Data_OUT      : out std_logic_vector(7 downto 0)
  );
end entity;


architecture arquitetura of Aula2 is

-- Faltam alguns sinais:
  --signal MEM_MUX : std_logic_vector (larguraDados-1 downto 0);
  --signal INST : std_logic_vector (12 downto 0);
  signal MUX_ULA            : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A         : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA          : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle    : std_logic_vector (11 downto 0);
  signal Proximo_Estado     : std_logic_vector (3 downto 0);
  signal Estado_Atual       : std_logic_vector (3 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  --signal CLK                : std_logic;
  signal SelMUX             : std_logic;
  signal Habilita_A         : std_logic;
  signal Operacao_ULA       : STD_LOGIC_VECTOR(1 downto 0);
  signal PC_SUM             : std_logic_vector (8 downto 0);
  signal ret_mux            : std_logic_vector (8 downto 0);
  signal habEndRET          : std_logic;
  signal ULAFLAG            : std_logic;
  signal Flag0_Desvio       : std_logic;
  signal habFlag0           : std_logic;
  signal desvio_MUX         : std_logic_vector (1 downto 0);
  signal PCSUM_OUT          : std_logic_vector (8 downto 0);
  signal MUX_PC             : std_logic_vector (8 downto 0);
  signal RET                : std_logic;
  signal JSR                : std_logic;
  signal JEQ                : std_logic;
  signal SelMUXJMP          : std_logic;

begin

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map(entradaA_MUX => Data_IN,
                 entradaB_MUX => Instuction_IN(7 downto 0),
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_ULA);
					  
-- O port map completo do MUX.
MUXPC :  entity work.muxGenerico4x1  generic map (larguraDados => 9)
        port map(entrada1 => PCSUM_OUT,
                 entrada2 => Instuction_IN(8 downto 0),
                 entrada3 => ret_mux,
                 entrada4 => "000000000",
                 seletor_MUX => desvio_MUX,
                 saida_MUX => MUX_PC);

-- O port map completo do Acumulador.
REG1:     entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLOCK_50);
			 
-- O port map completo do Acumulador.
REGRET:   entity work.registradorGenerico   generic map (larguraDados => 9)
          port map (DIN => PCSUM_OUT, DOUT => ret_mux, ENABLE => habEndRET, CLK => CLOCK_50);
			 
-- O port map completo do Acumulador.
REGIGUAL: entity work.registradorGenericoBit   generic map (larguraDados => 1)
          port map (DIN => ULAFLAG, DOUT => Flag0_Desvio, ENABLE => habFlag0, CLK => CLOCK_50);

-- O port map completo da ULA:
ULA1:     entity work.ULASomaSub  generic map (larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_ULA, saida => Saida_ULA, seletor => Operacao_ULA, flagZero => ULAFLAG);

			 
-- O botao 3 faz o Reset da MEF:
--REGDADOS1:entity work.memoriaDADOS   generic map (dataWidth => larguraDados, addrWidth => larguraDados)
--          port map (addr => INST(7 downto 0), we => ESC, re => LEI, habilita => INST(8), dado_in => REG1_ULA_A, dado_out => MEM_MUX, clk => CLK);
			 
-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
--ROM1:     entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 4)
--          port map (PC => PC_SUM, Dado => INST); -- opcode(12 downto 9) endereco(8 downto 0) valor(7 downto 0)

			 
			 
DECODER1: entity work.Decodificador generic map (DATA_WIDTH => 4)
			 port map (dataIN => Instuction_IN(12 downto 9), Sinais_Controle => Sinais_Controle);
			 
-- LIGAR RETROPC NA ROM
PC1:      entity work.PC  generic map (DATA_WIDTH => larguraDados+1)
          port map (dataIN => MUX_PC, clk => CLOCK_50, dataOUT => PC_SUM);
			 
SOMPC :   entity work.somadorGenerico  generic map (larguraDados => 9)
          port map( entradaA => PC_SUM, saida => PCSUM_OUT);
			 
DESVIO :  entity work.LogicaDesvio
          port map( SelMUX => SelMUXJMP,
                    RET    => RET,
                    JSR    => JSR,
                    JEQ    => JEQ,
                    FLAGEQ => Flag0_Desvio,
						  Sel    => desvio_MUX);

habEndRET          <= Sinais_Controle(11);
SelMUXJMP          <= Sinais_Controle(10);
RET                <= Sinais_Controle(9);
JSR                <= Sinais_Controle(8);
JEQ                <= Sinais_Controle(7); 
habFlag0           <= Sinais_Controle(6);
SelMUX             <= Sinais_Controle(5);
Habilita_A         <= Sinais_Controle(4);
Operacao_ULA       <= Sinais_Controle(3 downto 2);
Rd                 <= Sinais_Controle(1);
Wr                 <= Sinais_Controle(0);
ROM_Address        <= PC_SUM;
Data_OUT           <= REG1_ULA_A;
Data_Address       <= Instuction_IN(8 downto 0);


end architecture;