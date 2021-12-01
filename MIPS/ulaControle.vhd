library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ulaControle is
  generic   (
    DATA_WIDTH  : natural := 6;
    SIGNAL_WIDTH: natural := 3
  );

  port   (
    -- Input ports
    opcode  :  in  std_logic_vector(DATA_WIDTH-1 downto 0);
	 funct   :  in  std_logic_vector(DATA_WIDTH-1 downto 0);
	 Sinais_Controle :  out  std_logic_vector(SIGNAL_WIDTH-1 downto 0)
	);
end entity;


architecture arquitetura of ulaControle is

  signal add: std_logic;
  signal sub: std_logic;
  signal e  : std_logic;
  signal ou : std_logic;
  signal slt: std_logic;
  signal lw : std_logic;
  signal sw : std_logic;
  signal beq: std_logic;
  signal j  : std_logic;


begin
  
  -- AJUSTAR
  lw <= '1' when opcode = 6x"23" else '0';
  sw <= '1' when opcode = 6x"2B" else '0';
  beq<= '1' when opcode = 6x"04" else '0';
  e  <= '1' when (opcode = 6x"00" and funct = 6x"24") else '0';
  ou <= '1' when (opcode = 6x"00" and funct = 6x"25") else '0';
  add<= '1' when (opcode = 6x"00" and funct = 6x"20") else '0';
  sub<= '1' when (opcode = 6x"00" and funct = 6x"22") else '0';
  slt<= '1' when (opcode = 6x"00" and funct = 6x"2A") else '0';
  
  --EX = (seletor rtrd *, opcode *, seletor B *)
  --MEM = (Branch *, MemRead *, MemWrite *)
  --WB = (seletor memReg *, seletor pc)
  
  Sinais_Controle(2)<= '1' when (beq) else --Operacao(3)
							  '1' when (slt or sub) else
							  '0';
							  
  Sinais_Controle(1)<= '1' when (lw or sw or beq) else --Operacao(2)
                       '1' when (slt or sub or add) else 
							  '0';
							  
  Sinais_Controle(0)<= slt or ou;--Operacao(1)
  
end architecture;