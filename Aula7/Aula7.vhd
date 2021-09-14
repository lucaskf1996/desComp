library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Aula7 is
  generic   (
    larguraDados: natural :=  8;
    ADDR_WIDTH  : natural :=  8;
    simulacao   : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );

  port   (
    CLOCK_50      : in std_logic;
	 Reset         : in std_logic;
    KEY           : in std_logic_vector(3 downto 0);
	 LEDR          : out std_logic_vector(7 downto 0);
	 LED8          : out std_logic;
	 LED9          : out std_logic;
	 saida_INST    : out std_logic_vector(12 downto 0);
	 saida_RAM     : out std_logic_vector(7 downto 0);
	 DEBUG_Data_OUT: out std_logic_vector(7 downto 0);
	 DEBUG_Data_IN : out std_logic_vector(7 downto 0)

  );
end entity;


architecture arch_name of Aula7 is


  signal INST          : std_logic_vector(12 downto 0);
  signal ROM_Address   : std_logic_vector(8 downto 0); 
  signal Data_Address  : std_logic_vector(8 downto 0);
  signal Data_OUT      : std_logic_vector(7 downto 0);
  signal Data_IN       : std_logic_vector(7 downto 0);
  signal LEI           : std_logic;
  signal ESC           : std_logic;
  signal DEC3X8_OUT    : std_logic_vector(7 downto 0);
  signal SELMEM_OUT    : std_logic_vector(7 downto 0);
  signal ANDLED9       : std_logic;
  signal ANDLED8       : std_logic;
  signal ANDLEDR       : std_logic;
  signal REG_OUT_LED9  : std_logic;
  signal REG_OUT_LED8  : std_logic;
  signal REG_OUT_LEDR  : std_logic_vector(7 downto 0);
  signal CLK           : std_logic;


begin

gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
              port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

CPU:          entity work.Aula2  generic map (larguraDados => larguraDados)
              port map (CLOCK_50      => CLK,
								Reset         => Reset,
								KEY           => KEY,
								Instuction_IN => INST,
								Data_IN       => Data_IN,
			 
								Wr            => ESC,
								Rd            => LEI,
								ROM_Address   => ROM_Address,
								Data_Address  => Data_Address,
								Data_OUT      => Data_OUT);
								
								
-- O botao 3 faz o Reset da MEF:
RAM1:         entity work.memoriaDADOS   generic map (dataWidth => larguraDados, addrWidth => 6)
              port map (addr => Data_Address(5 downto 0), we => ESC, re => LEI, habilita => SELMEM_OUT(0), dado_in => Data_OUT, dado_out => Data_IN, clk => CLK);
				  
				  
-- Falta acertar o conteudo da ROM (no arquivo memoriaROM   .vhd)
ROM1:         entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
              port map (PC => ROM_Address, Dado => INST); -- opcode(12 downto 9) endereco(8 downto 0) valor(7 downto 0)
				  
				  
SELMEM:       entity work.Decodificador3x8 generic map (DATA_WIDTH => 3)
			     port map (dataIN => Data_Address(8 downto 6), dataOUT => SELMEM_OUT);
			 
			 
DEC3X8:       entity work.Decodificador3x8 generic map (DATA_WIDTH => 3)
			     port map (dataIN => Data_Address(2 downto 0), dataOUT => DEC3X8_OUT);
				  
				  
REGLED8:      entity work.registradorGenericoBit   generic map (larguraDados => 1)
              port map (DIN => Data_OUT(0), DOUT => REG_OUT_LED8, ENABLE => ANDLED8, CLK => CLK);
			 
			 
REGLED9:      entity work.registradorGenericoBit   generic map (larguraDados => 1)
              port map (DIN => Data_OUT(0), DOUT => REG_OUT_LED9, ENABLE => ANDLED9, CLK => CLK);
				 
-- O port map completo do Acumulador.
REGLEDR:      entity work.registradorGenerico   generic map (larguraDados => 8)
              port map (DIN => Data_OUT, DOUT => REG_OUT_LEDR, ENABLE => ANDLEDR, CLK => CLK); 

--LOGICA DE ENABLE DOS REGISTRADORES DE LED
ANDLEDR <= '1' when (DEC3X8_OUT(0) and SELMEM_OUT(4) and ESC) else '0';
ANDLED8 <= '1' when (DEC3X8_OUT(1) and SELMEM_OUT(4) and ESC) else '0';
ANDLED9 <= '1' when (DEC3X8_OUT(2) and SELMEM_OUT(4) and ESC) else '0';

LEDR <= REG_OUT_LEDR;
LED8 <= REG_OUT_LED8;
LED9 <= REG_OUT_LED9;

saida_INST <= INST;
saida_RAM  <= Data_IN;
DEBUG_Data_OUT <= Data_OUT;
DEBUG_Data_IN  <= Data_IN;

end architecture;