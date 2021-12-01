library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS is
  generic   (
    DATA_WIDTH  : natural :=  32;
    ADDR_WIDTH  : natural :=  32;
	 OPCODE_WIDTH: natural :=  6
  );
  port   (
    -- Input port
	 CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 HEX0  : out std_logic_vector(6 downto 0);
	 HEX1  : out std_logic_vector(6 downto 0);
	 HEX2  : out std_logic_vector(6 downto 0);
	 HEX3  : out std_logic_vector(6 downto 0);
	 HEX4  : out std_logic_vector(6 downto 0);
	 HEX5  : out std_logic_vector(6 downto 0);
	 SW    : in std_logic_vector(9 downto 0);
	 

--    -- Output ports
--    D_ULA_OUT :  out  std_logic_vector(31 downto 0);
--    D_RAM_IN  :  out  std_logic_vector(31 downto 0);
--	 D_REG_A   :  out  std_logic_vector(31 downto 0);
--    D_RAM_OUT :  out  std_logic_vector(31 downto 0);
--    D_PC_SUM  :  out  std_logic_vector(DATA_WIDTH-1 downto 0);
--    D_INST    :  out  std_logic_vector(DATA_WIDTH-1 downto 0);
--	 D_ULAOP   :  out  std_logic_vector(2 downto 0)
  );
end entity;


architecture arch_name of MIPS is

  signal pc_sum        : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal sum_pc        : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal sum_pc_IFID   : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal sum_pc_IDEX   : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal reg_ulaA      : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal reg_ulaA_OUT  : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal reg_ulaB      : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal reg_ulaB_IDEX : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal reg_ulaB_EXMEM: std_logic_vector(DATA_WIDTH-1 downto 0);
  signal ula_ram       : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal ula_ram_EXMEM : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal ula_ram_OUT   : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal INSTR         : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal INSTR_OUT     : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal ram_reg       : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal ram_reg_OUT   : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal est_ula       : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal est_ula_OUT   : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal sinais        : std_logic_vector(13 downto 0);
  signal des_sum       : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal sum_mux       : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal sum_mux_OUT   : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal mux_PC        : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal mux_ULA       : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal write_data    : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal flagZero      : std_logic;
  signal flagZero_OUT  : std_logic;
  signal ANDbeq        : std_logic;
  signal CLK           : std_logic;
  signal RESET         : std_logic;
  signal desJ_out      : std_logic_vector(27 downto 0);
  signal concatJ_out   : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal PROXpc        : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal mux_RAMREG    : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal mux_RTRD      : std_logic_vector(4 downto 0);
  signal mux_RTRD_EXMEM: std_logic_vector(4 downto 0);
  signal mux_RTRD_MEMWB: std_logic_vector(4 downto 0);
  signal write_reg     : std_logic_vector(4 downto 0);
  signal Mux_debug     : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal endReg1_OUT   : std_logic_vector(4 downto 0);
  signal endReg2_OUT   : std_logic_vector(4 downto 0);
  signal endReg3_OUT   : std_logic_vector(4 downto 0);
  signal operacao      : std_logic_vector(2 downto 0);
  
  alias endReg1  : std_logic_vector(4 downto 0) is INSTR_OUT(25 downto 21);
  alias endReg2  : std_logic_vector(4 downto 0) is INSTR_OUT(20 downto 16);
  alias endReg3  : std_logic_vector(4 downto 0) is INSTR_OUT(15 downto 11);
  alias opcode   : std_logic_vector(5 downto 0) is INSTR_OUT(31 downto 26);
  alias funct    : std_logic_vector(5 downto 0) is INSTR_OUT(5 downto 0);
  alias imm      : std_logic_vector(15 downto 0) is INSTR_OUT(15 downto 0);
  
  alias exCtrl         : std_logic_vector(7 downto 0) is sinais(7 downto 0);
  alias mCtrl          : std_logic_vector(2 downto 0) is sinais(10 downto 8); 
  alias wbCtrl         : std_logic_vector(1 downto 0) is sinais(12 downto 11);
  alias SelectMuxJ     : std_logic is sinais(13);
  signal exIDEX        : std_logic_vector(7 downto 0);
  signal mIDEX         : std_logic_vector(2 downto 0); 
  signal wbIDEX        : std_logic_vector(1 downto 0);
  signal mEXMEM        : std_logic_vector(2 downto 0); 
  signal wbEXMEM       : std_logic_vector(1 downto 0);
  signal wbMEMWB       : std_logic_vector(1 downto 0);
  alias selectMuxRtRd  : std_logic is exIDEX(0);
  alias opcodeULA      : std_logic_vector(5 downto 0) is exIDEX(6 downto 1);
  alias selectMuxRtImm : std_logic is exIDEX(7);
  alias sinal_we       : std_logic is mEXMEM(2);
  alias sinal_re       : std_logic is mEXMEM(1);
  alias beq            : std_logic is mEXMEM(0);
  alias selectMuxUlaMem: std_logic is wbMEMWB(0);
  alias HAB            : std_logic is wbMEMWB(1);
  
  alias imediatoJ : std_logic_vector(25 downto 0) is INSTR_OUT(25 downto 0);
  
  
  constant quatro: std_logic_vector(31 downto 0) := x"00000004";
  
begin

detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);


detectorSub1: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => RESET);

	somador:          entity work.somadorGenerico  generic map (larguraDados => DATA_WIDTH)
							port map (entradaA => pc_sum, entradaB =>  quatro, saida => sum_pc);
								
	PC1:               entity work.registradorGenerico   generic map (larguraDados => DATA_WIDTH)
                     port map (DIN => PROXpc, DOUT => pc_sum, ENABLE => '1', CLK => CLK, RST => RESET);	
							
	ULA1:              entity work.ULA_completa
                     port map (entradaA => reg_ulaA_OUT, entradaB =>  mux_ULA, saida => ula_ram, ULA_ctrl => operacao, flagZero => flagZero);	

							
	bancoReg:         entity work.bancoRegistradores   generic map (larguraDados => DATA_WIDTH)
                     port map (clk => CLK,
										 enderecoA => endReg1, 
										 enderecoB => endReg2, 
										 enderecoC => write_reg, 
										 dadoEscritaC => write_data, 
										 escreveC => HAB, 
										 saidaA => reg_ulaA,
										 saidaB => reg_ulaB);	
 
	RAM:              entity work.RAMMIPS   generic map (dataWidth => DATA_WIDTH, addrWidth => ADDR_WIDTH, memoryAddrWidth => 6)
                     port map (clk      => CLK,
										 Endereco => ula_ram_EXMEM,
										 Dado_in  => reg_ulaB_EXMEM,
										 Dado_out => ram_reg,
										 we 		 => sinal_we,
										 re 		 => sinal_re);
									
	ROM:              entity work.ROMMIPS   generic map (dataWidth => DATA_WIDTH, addrWidth => ADDR_WIDTH, memoryAddrWidth => 6)
                     port map (clk      => CLK,
										 Endereco => pc_sum,
										 Dado     => INSTR);		
	 
	estendeSinal :    entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => DATA_WIDTH)
							port map (estendeSinal_IN => imm, estendeSinal_OUT =>  est_ula);
						
	Controle:         entity work.Controle generic map (DATA_WIDTH => OPCODE_WIDTH, SIGNAL_WIDTH => 14)
                     port map (opcode => opcode, Sinais_Controle => sinais);	
							
	ulaControle  :    entity work.ulaControle generic map(DATA_WIDTH => 6, SIGNAL_WIDTH => 3)
							port map (opcode => opcodeULA, funct => est_ula_OUT(5 downto 0), Sinais_Controle => operacao);

	Deslocador:       entity work.deslocadorGenerico  generic map(larguraDadoEntrada => DATA_WIDTH, larguraDadoSaida => DATA_WIDTH, deslocamento => 2)
                     port map (sinalIN => est_ula_OUT, sinalOUT => des_sum);	
							
	somadorINST:      entity work.somadorGenerico  generic map (larguraDados => DATA_WIDTH)
							port map (entradaA => sum_pc_IDEX, entradaB =>  des_sum, saida => sum_mux);	
						
	MuxNextINST:      entity work.muxGenerico2x1 generic map(larguraDados => DATA_WIDTH)
							port map (entradaA_MUX => sum_pc, entradaB_MUX => sum_mux_OUT, seletor_MUX => ANDbeq, saida_MUX => mux_PC);
							
							
	MuxSigREG  :      entity work.muxGenerico2x1 generic map(larguraDados => DATA_WIDTH)
							port map (entradaA_MUX => reg_ulaB_IDEX, entradaB_MUX => est_ula_OUT, seletor_MUX => selectMuxRtImm, saida_MUX => mux_ULA);

	ANDbeq <= '1' when (flagZero_OUT and beq) else '0';
	
	MuxTipoJ   :      entity work.muxGenerico2x1 generic map(larguraDados => DATA_WIDTH)
							port map (entradaA_MUX => mux_PC, entradaB_MUX => concatJ_out, seletor_MUX => SelectMuxJ, saida_MUX => PROXpc);
	
	DeslocJ    :      entity work.deslocadorGenericoJ  generic map(larguraDadoEntrada => 26, larguraDadoSaida => 28)
                     port map (sinalIN => imediatoJ, sinalOUT => desJ_out);

	ConcatJ    :      entity work.concatenadorJ  generic map(larguraDadoOpcode => 4, larguraDadoImediato => 28, larguraDadoSaida => DATA_WIDTH)
                     port map (inst_pag => sum_pc_IFID(ADDR_WIDTH-1 downto ADDR_WIDTH-4), sinalImediato => desJ_out, sinalOUT => concatJ_out);
							
	MuxULARAM  :      entity work.muxGenerico2x1 generic map(larguraDados => DATA_WIDTH)
							port map (entradaA_MUX => ula_ram_OUT, entradaB_MUX => ram_reg_OUT, seletor_MUX => selectMuxUlaMem, saida_MUX => write_data);
							
	MuxRTRD    :      entity work.muxGenerico2x1 generic map(larguraDados => 5)
							port map (entradaA_MUX => endReg2_OUT, entradaB_MUX => endReg3_OUT, seletor_MUX => selectMuxRtRd, saida_MUX => mux_RTRD);	
						
	MuxDebug   :      entity work.muxGenerico2x1 generic map(larguraDados => DATA_WIDTH)
							port map (entradaA_MUX => pc_sum, entradaB_MUX => ula_ram, seletor_MUX => SW(0), saida_MUX => Mux_debug);
							
	DISPLAY_HEX0:     entity work.conversorHex7Seg
						   port map(dadoHex => Mux_debug(3 downto 0),
						   apaga          => '0',
						   negativo       => '0',
						   overFlow       => '0',
						   saida7seg      => HEX0);
							
	DISPLAY_HEX1:     entity work.conversorHex7Seg
						   port map(dadoHex => Mux_debug(7 downto 4),
						   apaga          => '0',
						   negativo       => '0',
						   overFlow       => '0',
						   saida7seg      => HEX1);
							
	DISPLAY_HEX2:     entity work.conversorHex7Seg
						   port map(dadoHex => Mux_debug(11 downto 8),
						   apaga          => '0',
						   negativo       => '0',
						   overFlow       => '0',
						   saida7seg      => HEX2);
							
	DISPLAY_HEX3:     entity work.conversorHex7Seg
						   port map(dadoHex => Mux_debug(15 downto 12),
						   apaga          => '0',
						   negativo       => '0',
						   overFlow       => '0',
						   saida7seg      => HEX3);
							
	DISPLAY_HEX4:     entity work.conversorHex7Seg
						   port map(dadoHex => Mux_debug(19 downto 16),
						   apaga          => '0',
						   negativo       => '0',
						   overFlow       => '0',
						   saida7seg      => HEX4);
							
	DISPLAY_HEX5:     entity work.conversorHex7Seg
						   port map(dadoHex => Mux_debug(23 downto 20),
						   apaga          => '0',
						   negativo       => '0',
						   overFlow       => '0',
						   saida7seg      => HEX5);
							
	IFID1:            entity work.IFID
							port map(
									INSTR_IN  => INSTR,
									INSTR_OUT => INSTR_OUT,
									PC_IN     => sum_pc,
									PC_OUT    => sum_pc_IFID,
									CLK       => CLK,
									RST       => RESET);
								
	IDEX1:            entity work.IDEX
							port map(
									rs_IN     => est_ula,
									rd_IN     => endReg2,
									rt_IN     => endReg3,
									rs_OUT    => est_ula_OUT,
									rd_OUT    => endReg2_OUT,
									rt_OUT    => endReg3_OUT,
									R1_IN     => reg_ulaA,
									R2_IN     => reg_ulaB,
									R1_OUT    => reg_ulaA_OUT,
									R2_OUT    => reg_ulaB_IDEX,
									PC_IN     => sum_pc_IFID,
									PC_OUT    => sum_pc_IDEX,
									WB_IN     => wbCtrl,
									M_IN      => mCtrl,
									EX_IN     => exCtrl,
									WB_OUT    => wbIDEX,
									M_OUT     => mIDEX,
									EX_OUT    => exIDEX,
									CLK       => CLK,
									RST       => RESET);
									
	EXMEM1:           entity work.EXMEM
							port map(
									PCADD_IN  => sum_mux,
									rtrd_IN   => mux_RTRD,
									PCADD_OUT => sum_mux_OUT,
									rtrd_OUT  => mux_RTRD_EXMEM,
									ULA_IN    => ula_ram,
									ULA_OUT   => ula_ram_EXMEM,
									WD_IN     => reg_ulaB_IDEX,
									WD_OUT    => reg_ulaB_EXMEM,
									WB_IN     => wbIDEX,
									M_IN      => mIDEX,
									ZERO_IN   => flagZero,
									WB_OUT    => wbEXMEM,
									M_OUT     => mEXMEM,
									ZERO_OUT  => flagZero_OUT,
									CLK       => CLK,
									RST       => RESET);
									
	MEMWB1:           entity work.MEMWB
							port map(
									rtrd_IN   => mux_RTRD_EXMEM,
									rtrd_OUT  => write_reg,
									ULA_IN    => ula_ram_EXMEM,
									ULA_OUT   => ula_ram_OUT,
									RD_IN     => ram_reg,
									RD_OUT    => ram_reg_OUT,
									WB_IN     => wbEXMEM,
									WB_OUT    => wbMEMWB,
									CLK       => CLK,
									RST       => RESET);
		
--    -- Output ports
--    D_ULA_OUT <= ula_ram;
--    D_RAM_IN  <= mux_ULA;
--	 D_REG_A   <= reg_ulaA_OUT;
--    D_RAM_OUT <= ram_reg;
--    D_PC_SUM  <= pc_sum;
--    D_INST    <= INSTR;
--	 D_ULAOP   <= operacao;
end architecture;