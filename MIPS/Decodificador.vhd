library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decodificador is
  generic   (
    DATA_WIDTH  : natural := 6;
    SIGNAL_WIDTH: natural := 13
  );

  port   (
    -- Input ports
    opcode  :  in  std_logic_vector(DATA_WIDTH-1 downto 0);
    funct   :  in  std_logic_vector(DATA_WIDTH-1 downto 0);
    Sinais_Controle :  out  std_logic_vector(SIGNAL_WIDTH-1 downto 0)
  );
end entity;


architecture arquitetura of Decodificador is

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
  j  <= '1' when opcode = 6x"02" else '0';
  
  
  
  
  
  Sinais_Controle(12)<= lw;--MuxUlaMem
  Sinais_Controle(11)<= lw or sw;--MuxRtImm
  Sinais_Controle(10)<= add or sub or e or ou or slt;--MuxRtRd
  Sinais_Controle(9)<= j;--MuxJ
  Sinais_Controle(8)<= sw or lw;--imRT
  Sinais_Controle(7)<= beq;--beq
  Sinais_Controle(6)<= sw;--we
  Sinais_Controle(5)<= lw;--re
  Sinais_Controle(4)<= slt;--Operacao(4) INUTILIZADO
  
  Sinais_Controle(3)<= '1' when (beq) else --Operacao(3)
							  '1' when (slt or sub) else
							  '0';
							  
  Sinais_Controle(2)<= '1' when (lw or sw or beq) else --Operacao(2)
                       '1' when (slt or sub or add) else 
							  '0';
							  
  Sinais_Controle(1)<= slt or ou;--Operacao(1)
  Sinais_Controle(0)<= lw or e or ou or sub or slt or add;--re
  
end architecture;