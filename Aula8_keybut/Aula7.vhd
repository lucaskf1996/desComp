library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Aula7 is
  generic   (
    larguraDados: natural :=  8;
    ADDR_WIDTH  : natural :=  8;
    simulacao   : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );

  port   (
    CLOCK_50      : in std_logic;
	 FPGA_RESET    : in std_logic;
    KEY           : in std_logic_vector(3 downto 0);
	 SWITCH        : in std_logic_vector(9 downto 0);
	 LEDR          : out std_logic_vector(7 downto 0);
	 LED8          : out std_logic;
	 LED9          : out std_logic;
    HEX0          : out std_logic_vector(6 downto 0);
    HEX1          : out std_logic_vector(6 downto 0);
    HEX2          : out std_logic_vector(6 downto 0);
    HEX3          : out std_logic_vector(6 downto 0);
    HEX4          : out std_logic_vector(6 downto 0);
    HEX5          : out std_logic_vector(6 downto 0);
	 
	 DEBUGROM   : out std_logic_vector(8 downto 0)

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
  signal REG_OUT_HEX0  : std_logic_vector(3 downto 0);
  signal REG_OUT_HEX1  : std_logic_vector(3 downto 0);
  signal REG_OUT_HEX2  : std_logic_vector(3 downto 0);
  signal REG_OUT_HEX3  : std_logic_vector(3 downto 0);
  signal REG_OUT_HEX4  : std_logic_vector(3 downto 0);
  signal REG_OUT_HEX5  : std_logic_vector(3 downto 0);
  signal ANDHEX0       : std_logic;
  signal ANDHEX1       : std_logic;
  signal ANDHEX2       : std_logic;
  signal ANDHEX3       : std_logic;
  signal ANDHEX4       : std_logic;
  signal ANDHEX5       : std_logic;
  signal ANDSW07       : std_logic;
  signal ANDSW8        : std_logic;
  signal ANDSW9        : std_logic;
  signal ANDKEY0       : std_logic;
  signal ANDKEY1       : std_logic;
  signal ANDKEY2       : std_logic;
  signal ANDKEY3       : std_logic;
  signal ANDFPGARESET  : std_logic;



begin

gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
              port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

CPU:          entity work.Aula2  generic map (larguraDados => larguraDados)
              port map (CLOCK_50      => CLOCK_50,
								Reset         => FPGA_RESET,
								KEY           => KEY,
								Instuction_IN => INST,
								Data_IN       => Data_IN,
			 
								Wr            => ESC,
								Rd            => LEI,
								ROM_Address   => ROM_Address,
								Data_Address  => Data_Address,
								Data_OUT      => Data_OUT);
								
DISPLAY_HEX0:  entity work.conversorHex7Seg
               port map(dadoHex => REG_OUT_HEX0,
                 apaga          => '0',
                 negativo       => '0',
                 overFlow       => '0',
                 saida7seg      => HEX0);
					  
DISPLAY_HEX1:  entity work.conversorHex7Seg
               port map(dadoHex => REG_OUT_HEX1,
                 apaga          => '0',
                 negativo       => '0',
                 overFlow       => '0',
                 saida7seg      => HEX1);
					  
DISPLAY_HEX2:  entity work.conversorHex7Seg
               port map(dadoHex => REG_OUT_HEX2,
                 apaga          => '0',
                 negativo       => '0',
                 overFlow       => '0',
                 saida7seg      => HEX2);
					  
DISPLAY_HEX3:  entity work.conversorHex7Seg
               port map(dadoHex => REG_OUT_HEX3,
                 apaga          => '0',
                 negativo       => '0',
                 overFlow       => '0',
                 saida7seg      => HEX3);
					  
DISPLAY_HEX4:  entity work.conversorHex7Seg
               port map(dadoHex => REG_OUT_HEX4,
                 apaga          => '0',
                 negativo       => '0',
                 overFlow       => '0',
                 saida7seg      => HEX4);
					  
DISPLAY_HEX5:  entity work.conversorHex7Seg
               port map(dadoHex => REG_OUT_HEX5,
                 apaga          => '0',
                 negativo       => '0',
                 overFlow       => '0',
                 saida7seg      => HEX5);
								
								
-- O botao 3 faz o Reset da MEF:
RAM1:         entity work.memoriaDADOS   generic map (dataWidth => larguraDados, addrWidth => 6)
              port map (addr => Data_Address(5 downto 0), we => ESC, re => LEI, habilita => SELMEM_OUT(0), dado_in => Data_OUT, dado_out => Data_IN, clk => CLOCK_50);
				  
				  
-- Falta acertar o conteudo da ROM (no arquivo memoriaROM   .vhd)
ROM1:         entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
              port map (PC => ROM_Address, Dado => INST); -- opcode(12 downto 9) endereco(8 downto 0) valor(7 downto 0)
				  
				  
SELMEM:       entity work.Decodificador3x8 generic map (DATA_WIDTH => 3)
			     port map (dataIN => Data_Address(8 downto 6), dataOUT => SELMEM_OUT);
			 
			 
DEC3X8:       entity work.Decodificador3x8 generic map (DATA_WIDTH => 3)
			     port map (dataIN => Data_Address(2 downto 0), dataOUT => DEC3X8_OUT);
				  
				  
REGLED8:      entity work.registradorGenericoBit   generic map (larguraDados => 1)
              port map (DIN => Data_OUT(0), DOUT => REG_OUT_LED8, ENABLE => ANDLED8, CLK => CLOCK_50);
			 
			 
REGLED9:      entity work.registradorGenericoBit   generic map (larguraDados => 1)
              port map (DIN => Data_OUT(0), DOUT => REG_OUT_LED9, ENABLE => ANDLED9, CLK => CLOCK_50);
				 
-- O port map completo do Acumulador.
REGLEDR:      entity work.registradorGenerico   generic map (larguraDados => 8)
              port map (DIN => Data_OUT, DOUT => REG_OUT_LEDR, ENABLE => ANDLEDR, CLK => CLOCK_50); 
				  
-- O port map completo do Acumulador.
REGHEX0:      entity work.registradorGenerico   generic map (larguraDados => 4)
              port map (DIN => Data_OUT(3 downto 0), DOUT => REG_OUT_HEX0, ENABLE => ANDHEX0, CLK => CLOCK_50); 
				  
-- O port map completo do Acumulador.
REGHEX1:      entity work.registradorGenerico   generic map (larguraDados => 4)
              port map (DIN => Data_OUT(3 downto 0), DOUT => REG_OUT_HEX1, ENABLE => ANDHEX1, CLK => CLOCK_50); 
				  
-- O port map completo do Acumulador.
REGHEX2:      entity work.registradorGenerico   generic map (larguraDados => 4)
              port map (DIN => Data_OUT(3 downto 0), DOUT => REG_OUT_HEX2, ENABLE => ANDHEX2, CLK => CLOCK_50); 
				  
-- O port map completo do Acumulador.
REGHEX3:      entity work.registradorGenerico   generic map (larguraDados => 4)
              port map (DIN => Data_OUT(3 downto 0), DOUT => REG_OUT_HEX3, ENABLE => ANDHEX3, CLK => CLOCK_50); 
				  
-- O port map completo do Acumulador.
REGHEX4:      entity work.registradorGenerico   generic map (larguraDados => 4)
              port map (DIN => Data_OUT(3 downto 0), DOUT => REG_OUT_HEX4, ENABLE => ANDHEX4, CLK => CLOCK_50); 
				  
-- O port map completo do Acumulador.
REGHEX5:      entity work.registradorGenerico   generic map (larguraDados => 4)
              port map (DIN => Data_OUT(3 downto 0), DOUT => REG_OUT_HEX5, ENABLE => ANDHEX5, CLK => CLOCK_50); 
				  
				  

TRI_SW_WORD:  entity work.tristate   generic map (DATA_WIDTH => 8)
              port map (dataIN => SWITCH(7 downto 0), dataOUT => Data_IN, habilita => ANDSW07); 
				  

TRI_SW8:      entity work.tristateBit
              port map (dataIN => SWITCH(8), dataOUT => Data_IN, habilita => ANDSW8); 
				  

TRI_SW9:      entity work.tristateBit
              port map (dataIN => SWITCH(9), dataOUT => Data_IN, habilita => ANDSW9); 
				  
TRI_KEY0:     entity work.tristateBit
              port map (dataIN => KEY(0), dataOUT => Data_IN, habilita => ANDKEY0); 
				 
TRI_KEY1:     entity work.tristateBit
              port map (dataIN => KEY(1), dataOUT => Data_IN, habilita => ANDKEY1); 
				  
TRI_KEY2:     entity work.tristateBit
              port map (dataIN => KEY(2), dataOUT => Data_IN, habilita => ANDKEY2); 
				  
TRI_KEY3:     entity work.tristateBit
              port map (dataIN => KEY(3), dataOUT => Data_IN, habilita => ANDKEY3); 
				  
TRI_FPGA:     entity work.tristateBit
              port map (dataIN => FPGA_RESET, dataOUT => Data_IN, habilita => ANDFPGARESET); 
				  

--LOGICA DE ENABLE DOS REGISTRADORES DE LED
ANDLEDR <= '1' when (DEC3X8_OUT(0) and SELMEM_OUT(4) and ESC and not(Data_Address(5))) else '0';
ANDLED8 <= '1' when (DEC3X8_OUT(1) and SELMEM_OUT(4) and ESC and not(Data_Address(5))) else '0';
ANDLED9 <= '1' when (DEC3X8_OUT(2) and SELMEM_OUT(4) and ESC and not(Data_Address(5))) else '0';

--LOGICA DE ENABLE DOS REGISTRADORES DE HEX
ANDHEX0 <= '1' when (DEC3X8_OUT(0) and SELMEM_OUT(4) and ESC and Data_Address(5)) else '0';
ANDHEX1 <= '1' when (DEC3X8_OUT(1) and SELMEM_OUT(4) and ESC and Data_Address(5)) else '0';
ANDHEX2 <= '1' when (DEC3X8_OUT(2) and SELMEM_OUT(4) and ESC and Data_Address(5)) else '0';
ANDHEX3 <= '1' when (DEC3X8_OUT(3) and SELMEM_OUT(4) and ESC and Data_Address(5)) else '0';
ANDHEX4 <= '1' when (DEC3X8_OUT(4) and SELMEM_OUT(4) and ESC and Data_Address(5)) else '0';
ANDHEX5 <= '1' when (DEC3X8_OUT(5) and SELMEM_OUT(4) and ESC and Data_Address(5)) else '0';

ANDSW07      <= '1' when (DEC3X8_OUT(0) and SELMEM_OUT(5) and LEI and not Data_Address(5)) else '0';
ANDSW8       <= '1' when (DEC3X8_OUT(1) and SELMEM_OUT(5) and LEI and not Data_Address(5)) else '0';
ANDSW9       <= '1' when (DEC3X8_OUT(2) and SELMEM_OUT(5) and LEI and not Data_Address(5)) else '0';
ANDKEY0      <= '1' when (DEC3X8_OUT(0) and SELMEM_OUT(5) and LEI and Data_Address(5)) else '0';
ANDKEY1      <= '1' when (DEC3X8_OUT(1) and SELMEM_OUT(5) and LEI and Data_Address(5)) else '0';
ANDKEY2      <= '1' when (DEC3X8_OUT(2) and SELMEM_OUT(5) and LEI and Data_Address(5)) else '0';
ANDKEY3      <= '1' when (DEC3X8_OUT(3) and SELMEM_OUT(5) and LEI and Data_Address(5)) else '0';
ANDFPGARESET <= '1' when (DEC3X8_OUT(4) and SELMEM_OUT(5) and LEI and Data_Address(5)) else '0';

LEDR <= REG_OUT_LEDR;
LED8 <= REG_OUT_LED8;
LED9 <= REG_OUT_LED9;

DEBUGROM <= ROM_Address;

end architecture;