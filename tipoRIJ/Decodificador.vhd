library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decodificador is
  generic   (
    DATA_WIDTH  : natural := 6;
    SIGNAL_WIDTH: natural := 8
  );

  port   (
    -- Input ports
    dataIN  :  in  std_logic_vector(DATA_WIDTH-1 downto 0);
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
  lw <= '1' when dataIN = 6x"23" else '0';
  sw <= '1' when dataIN = 6x"2B" else '0';
  beq<= '1' when dataIN = 6x"04" else '0';
  
  Sinais_Controle(12)<= lw;--MuxUlaMem
  Sinais_Controle(11)<= lw or sw;--MuxRtImm
  Sinais_Controle(10)<= add or sub or e or ou or slt;--MuxRtRd
  Sinais_Controle(9)<= j;--MuxJ
  Sinais_Controle(8)<= sw or lw;--imRT
  Sinais_Controle(7)<= beq;--beq
  Sinais_Controle(6)<= sw;--we
  Sinais_Controle(5)<= lw;--re
  Sinais_Controle(4)<= slt;--Operacao(4)
  Sinais_Controle(3)<=   e or ou;--Operacao(3)
  Sinais_Controle(2)<=   e or ou;--Operacao(2)
  Sinais_Controle(1)<= sub or beq or ou;--Operacao(1)
  Sinais_Controle(0)<= lw;--re
  
end architecture;