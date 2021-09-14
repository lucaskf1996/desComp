library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decodificador is
  generic   (
    DATA_WIDTH  : natural := 4
    --ADDR_WIDTH  : natural :=  8
  );

  port   (
    -- Input ports
    dataIN  :  in  std_logic_vector(DATA_WIDTH-1 downto 0);
    --enable  : in  std_logic;
    --clk     : in  std_logic;

    -- Inout ports
    --<name>  : inout <type>;

    -- Output ports
    Sinais_Controle :  out  std_logic_vector(12-1 downto 0)
  );
end entity;


architecture arquitetura of Decodificador is

  signal NOP : std_logic;
  signal LDI : std_logic;
  signal LDA : std_logic;
  signal SOMA: std_logic;
  signal SUB : std_logic;
  signal STM : std_logic;
  signal JMP : std_logic;
  signal JEQ : std_logic;
  signal CEQ : std_logic;
  signal JSR : std_logic;
  signal RET : std_logic;
  


begin
  
  -- AJUSTAR
  NOP <= '1' when dataIN = "0000" else '0';
  LDA <= '1' when dataIN = "0001" else '0';
  SOMA<= '1' when dataIN = "0010" else '0';
  SUB <= '1' when dataIN = "0011" else '0';
  LDI <= '1' when dataIN = "0100" else '0';
  STM <= '1' when dataIN = "0101" else '0';
  JMP <= '1' when dataIN = "0110" else '0';
  JEQ <= '1' when dataIN = "0111" else '0';
  CEQ <= '1' when dataIN = "1000" else '0';
  JSR <= '1' when dataIN = "1001" else '0';
  RET <= '1' when dataIN = "1010" else '0';
		
  -- controle = (HabRet, SelMux, RET, JSR, JEQ, Flag=, MUX, Hab, Res, Ope)
  Sinais_Controle(11)<= JSR;                       -- HabRet
  Sinais_Controle(10)<= JMP or JEQ or JSR or RET;  -- SelMux
  Sinais_Controle(9) <= RET;                       -- RET
  Sinais_Controle(8) <= JSR;                       -- JSR
  Sinais_Controle(7) <= JEQ;                       -- JEQ
  Sinais_Controle(6) <= CEQ;                       -- Flag=
  Sinais_Controle(5) <= LDI;                       -- MUX
  Sinais_Controle(4) <= LDA or SOMA or SUB or LDI; -- HAB
  Sinais_Controle(3) <= LDA or LDI or CEQ;         -- OPE(1)
  Sinais_Controle(2) <= SOMA or CEQ;               -- OPE(0)
  Sinais_Controle(1) <= LDA or SOMA or SUB or CEQ; -- LEI
  Sinais_Controle(0) <= STM;                       -- ESC

end architecture;