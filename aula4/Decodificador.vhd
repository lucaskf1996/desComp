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
    Sinais_Controle :  out  std_logic_vector(6-1 downto 0)
  );
end entity;


architecture arquitetura of Decodificador is

  signal NOP : std_logic;
  signal LDI : std_logic;
  signal LoadA : std_logic;
  signal SomaA : std_logic;
  signal SubA : std_logic;
  signal SaveM : std_logic;


begin
  
  -- AJUSTAR
  NOP <= '1' when dataIN = "0000" else '0';
  LoadA <= '1' when dataIN = "0001" else '0';
  SomaA <= '1' when dataIN = "0010" else '0';
  SubA <= '1' when dataIN = "0011" else '0';
  LDI <= '1' when dataIN = "0100" else '0';
  SaveM <= '1' when dataIN = "0101" else '0';
		
  -- controle = (MUX, Hab, Res, Ope)
  Sinais_Controle(5) <= LDI; -- LoadA or SomaA or SubA or SaveM; -- MUX
  Sinais_Controle(4) <= LoadA or SomaA or SubA or LDI; -- HAB
  Sinais_Controle(3) <= LoadA or LDI; -- OPE(1)
  Sinais_Controle(2) <= SomaA; -- OPE(0)
  Sinais_Controle(1) <= LoadA or SomaA or SubA; -- LEI
  Sinais_Controle(0) <= SaveM; -- ESC

end architecture;