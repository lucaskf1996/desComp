library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tipoI is
  generic   (
    DATA_WIDTH  : natural :=  32;
    ADDR_WIDTH  : natural :=  32;
	 OPCODE_WIDTH: natural :=  6
  );
  port   (
    -- Input port
	 CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 

    -- Output ports
	 D_MUX_S   :  out  std_logic;
    D_UCopcode:  out  std_logic_vector(5 downto 0);
    D_sinais  :  out  std_logic_vector(7 downto 0);
    D_imm     :  out  std_logic_vector(15 downto 0);
    D_RAM_REG :  out  std_logic_vector(DATA_WIDTH-1 downto 0);
    D_MUX     :  out  std_logic_vector(DATA_WIDTH-1 downto 0);
    D_ULA     :  out  std_logic_vector(DATA_WIDTH-1 downto 0);
    D_REG_RAM :  out  std_logic_vector(DATA_WIDTH-1 downto 0);
    D_REG_ULA :  out  std_logic_vector(DATA_WIDTH-1 downto 0);
    D_INST    :  out  std_logic_vector(DATA_WIDTH-1 downto 0);
	 D_ENDMUX  :  out  std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end entity;


architecture arch_name of tipoI is

  signal pc_sum  : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal sum_pc  : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal reg_ulaA: std_logic_vector(DATA_WIDTH-1 downto 0);
  signal reg_ulaB: std_logic_vector(DATA_WIDTH-1 downto 0);
  signal ula_ram : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal INSTR   : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal ram_reg : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal est_ula : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal sinais  : std_logic_vector(7 downto 0);
  signal des_sum : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal sum_mux : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal mux_PC  : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal mux_ULA : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal flagZero: std_logic;
  signal ANDbeq  : std_logic;
  signal CLK     : std_logic;
  signal RESET   : std_logic;
  
  alias endReg1  : std_logic_vector(4 downto 0) is INSTR(25 downto 21);
  alias endReg2  : std_logic_vector(4 downto 0) is INSTR(20 downto 16);
  alias endReg3  : std_logic_vector(4 downto 0) is INSTR(15 downto 11);
  alias opcode   : std_logic_vector(5 downto 0) is INSTR(31 downto 26);
  alias funct    : std_logic_vector(5 downto 0) is INSTR(5 downto 0);
  alias imm      : std_logic_vector(15 downto 0) is INSTR(15 downto 0);
  alias selectImmRT: std_logic is sinais(7);
  alias beq      : std_logic is sinais(6);
  alias sinal_we : std_logic is sinais(5);
  alias sinal_re : std_logic is sinais(4);
  alias operacao : std_logic_vector(2 downto 0) is sinais(3 downto 1);
  alias HAB      : std_logic is sinais(0);
  
  constant quatro: std_logic_vector(31 downto 0) := x"00000004";
  
begin

detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);


detectorSub1: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => RESET);

	somador:          entity work.somadorGenerico  generic map (larguraDados => DATA_WIDTH)
							port map (entradaA => pc_sum, entradaB =>  quatro, saida => sum_pc);
								
	PC:               entity work.registradorGenerico   generic map (larguraDados => DATA_WIDTH)
                     port map (DIN => mux_PC, DOUT => pc_sum, ENABLE => '1', CLK => CLK, RST => RESET);	
							
	ULA:              entity work.ULA  generic map(larguraDados => DATA_WIDTH)
                     port map (entradaA => reg_ulaA, entradaB =>  mux_ULA, saida => ula_ram, seletor => operacao, flagZero => flagZero);	

							
	bancoReg:         entity work.bancoRegistradores   generic map (larguraDados => DATA_WIDTH)
                     port map (clk => CLK,
										 enderecoA => endReg1, 
										 enderecoB => endReg2, 
										 enderecoC => endReg2, 
										 dadoEscritaC => ram_reg, 
										 escreveC => HAB, 
										 saidaA => reg_ulaA,
										 saidaB => reg_ulaB);	
 
	RAM:              entity work.RAMMIPS   generic map (dataWidth => DATA_WIDTH, addrWidth => ADDR_WIDTH, memoryAddrWidth => 6)
                     port map (clk      => CLK,
										 Endereco => ula_ram,
										 Dado_in  => reg_ulaB,
										 Dado_out => ram_reg,
										 we 		 => sinal_we,
										 re 		 => sinal_re);
									
	ROM:              entity work.ROMMIPS   generic map (dataWidth => DATA_WIDTH, addrWidth => ADDR_WIDTH, memoryAddrWidth => 6)
                     port map (clk      => CLK,
										 Endereco => pc_sum,
										 Dado     => INSTR);		
	 
	estendeSinal :    entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => DATA_WIDTH)
							port map (estendeSinal_IN => imm, estendeSinal_OUT =>  est_ula);
						
	Decodificador:    entity work.Decodificador generic map (DATA_WIDTH => OPCODE_WIDTH, SIGNAL_WIDTH => 8)
                     port map (dataIN => opcode, Sinais_Controle => sinais);	

	Deslocador:       entity work.deslocadorGenerico  generic map(larguraDadoEntrada => DATA_WIDTH, larguraDadoSaida => DATA_WIDTH, deslocamento => 2)
                     port map (sinalIN => est_ula, sinalOUT => des_sum);	
							
	somadorINST:      entity work.somadorGenerico  generic map (larguraDados => DATA_WIDTH)
							port map (entradaA => sum_pc, entradaB =>  des_sum, saida => sum_mux);	
						
	MuxNextINST:      entity work.muxGenerico2x1 generic map(larguraDados => DATA_WIDTH)
							port map (entradaA_MUX => sum_pc, entradaB_MUX => sum_mux, seletor_MUX => ANDbeq, saida_MUX => mux_PC);
							
							
	MuxSigREG  :      entity work.muxGenerico2x1 generic map(larguraDados => DATA_WIDTH)
							port map (entradaA_MUX => reg_ulaB, entradaB_MUX => est_ula, seletor_MUX => selectImmRT, saida_MUX => mux_ULA);

	ANDbeq <= '1' when (flagZero and beq) else '0';
	
								
	D_UCopcode <= opcode;
	D_imm      <= imm;
	D_RAM_REG  <= ram_reg;
	D_MUX      <= mux_PC;
	D_ULA      <= ula_ram;
	D_REG_ULA  <= reg_ulaA;		 
	D_REG_RAM  <= mux_ULA;
	D_ENDMUX   <= des_sum;
	D_MUX_S    <= flagZero;
	D_sinais   <= sinais;
	D_INST     <= INSTR;
end architecture;