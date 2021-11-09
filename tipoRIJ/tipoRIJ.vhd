library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tipoRIJ is
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
	 D_RAMREG  :  out  std_logic_vector(31 downto 0);
    D_UCopcode:  out  std_logic_vector(5 downto 0);
    D_sinais  :  out  std_logic_vector(12 downto 0);
    D_imm     :  out  std_logic_vector(15 downto 0);
    D_INST    :  out  std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end entity;


architecture arch_name of tipoRIJ is

  signal pc_sum  : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal sum_pc  : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal reg_ulaA: std_logic_vector(DATA_WIDTH-1 downto 0);
  signal reg_ulaB: std_logic_vector(DATA_WIDTH-1 downto 0);
  signal ula_ram : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal INSTR   : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal ram_reg : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal est_ula : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal sinais  : std_logic_vector(12 downto 0);
  signal des_sum : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal sum_mux : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal mux_PC  : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal mux_ULA : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal flagZero: std_logic;
  signal ANDbeq  : std_logic;
  signal CLK     : std_logic;
  signal RESET   : std_logic;
  signal desJ_out : std_logic_vector(ADDR_WIDTH-OPCODE_WIDTH-1 downto 0);
  signal concatJ_out  : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal PROXpc  : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal mux_RAMREG : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal mux_RI  : std_logic_vector(4 downto 0);
  
  alias endReg1  : std_logic_vector(4 downto 0) is INSTR(25 downto 21);
  alias endReg2  : std_logic_vector(4 downto 0) is INSTR(20 downto 16);
  alias endReg3  : std_logic_vector(4 downto 0) is INSTR(15 downto 11);
  alias opcode   : std_logic_vector(5 downto 0) is INSTR(31 downto 26);
  alias funct    : std_logic_vector(5 downto 0) is INSTR(5 downto 0);
  alias imm      : std_logic_vector(15 downto 0) is INSTR(15 downto 0);
  
  alias selectMuxUlaMem: std_logic is sinais(12);
  alias selectMuxRtImm : std_logic is sinais(11);
  alias selectMuxRtRd  : std_logic is sinais(10);
  alias SelectMuxJ     : std_logic is sinais(9);
  alias selectImmRT    : std_logic is sinais(8);
  alias beq      : std_logic is sinais(7);
  alias sinal_we : std_logic is sinais(6);
  alias sinal_re : std_logic is sinais(5);
  alias operacao : std_logic_vector(3 downto 0) is sinais(4 downto 1);
  alias HAB      : std_logic is sinais(0);
  alias imediatoJ : std_logic_vector(25 downto 0) is INSTR(25 downto 0);
  alias mux_PC_OP : std_logic_vector(OPCODE_WIDTH-1 downto 0) is mux_PC(ADDR_WIDTH-1 downto ADDR_WIDTH-6);
  
  
  constant quatro: std_logic_vector(31 downto 0) := x"00000004";
  
begin

detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);


detectorSub1: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => RESET);

	somador:          entity work.somadorGenerico  generic map (larguraDados => DATA_WIDTH)
							port map (entradaA => pc_sum, entradaB =>  quatro, saida => sum_pc);
								
	PC:               entity work.registradorGenerico   generic map (larguraDados => DATA_WIDTH)
                     port map (DIN => PROXpc, DOUT => pc_sum, ENABLE => '1', CLK => CLK, RST => RESET);	
							
	ULA:              entity work.ULA  generic map(larguraDados => DATA_WIDTH)
                     port map (entradaA => reg_ulaA, entradaB =>  mux_ULA, saida => ula_ram, seletor => operacao, flagZero => flagZero);	

							
	bancoReg:         entity work.bancoRegistradores   generic map (larguraDados => DATA_WIDTH)
                     port map (clk => CLK,
										 enderecoA => endReg1, 
										 enderecoB => endReg2, 
										 enderecoC => mux_RI, 
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
						
	Decodificador:    entity work.Decodificador generic map (DATA_WIDTH => OPCODE_WIDTH, SIGNAL_WIDTH => 13)
                     port map (opcode => opcode, funct => funct, Sinais_Controle => sinais);	

	Deslocador:       entity work.deslocadorGenerico  generic map(larguraDadoEntrada => DATA_WIDTH, larguraDadoSaida => DATA_WIDTH, deslocamento => 2)
                     port map (sinalIN => est_ula, sinalOUT => des_sum);	
							
	somadorINST:      entity work.somadorGenerico  generic map (larguraDados => DATA_WIDTH)
							port map (entradaA => sum_pc, entradaB =>  des_sum, saida => sum_mux);	
						
	MuxNextINST:      entity work.muxGenerico2x1 generic map(larguraDados => DATA_WIDTH)
							port map (entradaA_MUX => sum_pc, entradaB_MUX => sum_mux, seletor_MUX => ANDbeq, saida_MUX => mux_PC);
							
							
	MuxSigREG  :      entity work.muxGenerico2x1 generic map(larguraDados => DATA_WIDTH)
							port map (entradaA_MUX => reg_ulaB, entradaB_MUX => est_ula, seletor_MUX => selectMuxRtImm, saida_MUX => mux_ULA);

	ANDbeq <= '1' when (flagZero and beq) else '0';
	
	MuxTipoJ   :      entity work.muxGenerico2x1 generic map(larguraDados => DATA_WIDTH)
							port map (entradaA_MUX => mux_PC, entradaB_MUX => concatJ_out, seletor_MUX => SelectMuxJ, saida_MUX => PROXpc);
	
	DeslocJ    :      entity work.deslocadorGenericoJ  generic map(larguraDadoEntrada => (DATA_WIDTH - OPCODE_WIDTH), larguraDadoSaida => (DATA_WIDTH - OPCODE_WIDTH))
                     port map (sinalIN => imediatoJ, sinalOUT => desJ_out);

	ConcatJ    :      entity work.concatenadorJ  generic map(larguraDadoOpcode => OPCODE_WIDTH, larguraDadoImediato => (DATA_WIDTH-OPCODE_WIDTH), larguraDadoSaida => DATA_WIDTH)
                     port map (sinalOpcode => mux_PC_OP, sinalImediato => desJ_out, sinalOUT => concatJ_out);
							
	MuxULARAM  :      entity work.muxGenerico2x1 generic map(larguraDados => DATA_WIDTH)
							port map (entradaA_MUX => ula_ram, entradaB_MUX => ram_reg, seletor_MUX => selectMuxUlaMem, saida_MUX => mux_RAMREG);
					
	MuxINSTREG :      entity work.muxGenerico2x1 generic map(larguraDados => 5)
							port map (entradaA_MUX => endReg2, entradaB_MUX => endReg3, seletor_MUX => selectMuxRtRd, saida_MUX => mux_RI);	
		
	D_UCopcode <= opcode;
	D_imm      <= imm;
	D_RAMREG   <= mux_RAMREG;
	D_sinais   <= sinais;
	D_INST     <= INSTR;
end architecture;