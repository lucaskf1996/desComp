library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Controle is
  generic   (
    DATA_WIDTH  : natural := 6;
    SIGNAL_WIDTH: natural := 14
  );

  port   (
    -- Input ports
    opcode  :  in  std_logic_vector(DATA_WIDTH-1 downto 0);
    Sinais_Controle :  out  std_logic_vector(SIGNAL_WIDTH-1 downto 0) --rtrd(1), ULA(6), ulaB(1), MEM(3), WB(2)
  );
end entity;


architecture arquitetura of Controle is
  signal tipoR: std_logic;
  signal lw   : std_logic;
  signal sw   : std_logic;
  signal beq  : std_logic;
  signal j    : std_logic;


begin
  
  tipoR <= '1' when opcode = 6x"00" else '0';
  lw    <= '1' when opcode = 6x"23" else '0';
  sw    <= '1' when opcode = 6x"2B" else '0';
  beq   <= '1' when opcode = 6x"04" else '0';
  j     <= '1' when opcode = 6x"02" else '0';
  
  --EX = (seletor rtrd *, opcode *, seletor B *)
  --MEM = (Branch *, MemRead *, MemWrite *)
  --WB = (seletor memReg *, seletor pc)
  Sinais_Controle(13)         <= j;
  Sinais_Controle(12)         <= tipoR or lw; --HAB reg
  Sinais_Controle(11)         <= lw;--MuxUlaMem
  Sinais_Controle(10)         <= sw;--we
  Sinais_Controle(9)          <= lw;--re
  Sinais_Controle(8)          <= beq;--ANDbeq
  Sinais_Controle(7)          <= lw or sw;--MuxRtImm
  Sinais_Controle(6 downto 1) <= opcode;--opcode
  Sinais_Controle(0)          <= tipoR;--MuxRtRd
  
end architecture;