library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tipoR is
  generic   (
    DATA_WIDTH  : natural :=  32;
    ADDR_WIDTH  : natural :=  32
  );
  port   (
    -- Input ports
    HAB  :  in  std_logic;
    operacao  :  in  std_logic_vector(2 downto 0);
	 clk : in std_logic;
	 

    -- Output ports
    UCopcode :  out  std_logic_vector(5 downto 0);
    UCfunct  :  out  std_logic_vector(5 downto 0)
  );
end entity;


architecture arch_name of tipoR is

  signal endReg1 : std_logic_vector(25 downto 21);
  signal endReg2 : std_logic_vector(20 downto 16);
  signal endReg3 : std_logic_vector(15 downto 11);
  signal pc_sum  : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal sum_pc  : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal reg_ulaA: std_logic_vector(DATA_WIDTH-1 downto 0);
  signal reg_ulaB: std_logic_vector(DATA_WIDTH-1 downto 0);
  signal ula_reg : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal INSTR   : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal flagZero: std_logic; -- Inutilizado
  
  alias opcode   : std_logic_vector(5 downto 0) is INSTR(31 downto 26);
  alias funct    : std_logic_vector(5 downto 0) is INSTR(5 downto 0);
  
  constant quatro: std_logic_vector(31 downto 0) := x"00000004";
  
begin


	somador:          entity work.somadorGenerico  generic map (larguraDados => DATA_WIDTH)
							port map (entradaA => pc_sum, entradaB =>  quatro, saida => sum_pc);
		
	ULA:              entity work.ULA  generic map(larguraDados => DATA_WIDTH)
                     port map (entradaA => reg_ulaA, entradaB =>  reg_ulaB, saida => ula_reg, seletor => operacao, flagZero => flagZero);	
						
	PC:               entity work.registradorGenerico   generic map (larguraDados => DATA_WIDTH)
                     port map (DIN => sum_pc, DOUT => pc_sum, ENABLE => '1', CLK => clk, RST => '0');	
							
	bancoReg:         entity work.bancoRegistradores   generic map (larguraDados => DATA_WIDTH)
                     port map (clk => clk,
										 enderecoA => endReg2, 
										 enderecoB => endReg3, 
										 enderecoC => endReg1, 
										 dadoEscritaC => ula_reg, 
										 escreveC => HAB, 
										 saidaA => reg_ulaA,
										 saidaB => reg_ulaB);	

	UCopcode <= opcode;
	UCfunct  <= funct;
										 
end architecture;