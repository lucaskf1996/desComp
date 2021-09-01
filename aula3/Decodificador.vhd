library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decodificador is
  generic   (
    DATA_WIDTH  : natural :=  4
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
    Sinais_Controle :  out  std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end entity;


architecture arquitetura of Decodificador is

  signal LimpaA : std_logic;
  signal LoadA : std_logic;
  signal SomaA : std_logic;
  signal SubA : std_logic;


begin
  
  
  LimpaA <= '1' when dataIN = "0000" else '0';
  LoadA <= '1' when dataIN = "0001" else '0';
  SomaA <= '1' when dataIN = "0010" else '0';
  SubA <= '1' when dataIN = "0011" else '0';
		
  -- controle = (MUX, Hab, Res, Ope)
  Sinais_Controle(3) <= LimpaA or SomaA or SubA;
  Sinais_Controle(2) <= LoadA or SomaA or SubA;
  Sinais_Controle(1) <= LimpaA;
  Sinais_Controle(0) <= LimpaA or LoadA or SomaA;

end architecture;