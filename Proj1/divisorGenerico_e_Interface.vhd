LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity divisorGenerico_e_Interface is
   port(clk      :   in std_logic;
      habilitaLeitura : in std_logic;
      limpaLeitura : in std_logic;
      leituraUmSegundo :   out std_logic_vector(7 downto 0);
		seletor : in std_logic
   );
end entity;

architecture interface of divisorGenerico_e_Interface is

  signal sinalUmSegundo : std_logic;
  signal saidaclk_reg1seg : std_logic;
  signal saidaclk_reg2seg : std_logic;
  signal clk_seg : std_logic;
  signal extensor_out : std_logic_vector(7 downto 0);
  
begin

baseTempo: entity work.divisorGenerico
           generic map (divisor => 25000000)   -- divide por 10.
           port map (clk => clk, saida_clk => saidaclk_reg1seg);
			  

baseTempo2:entity work.divisorGenerico
           generic map (divisor => 10000)   -- divide por 10.
           port map (clk => clk, saida_clk => saidaclk_reg2seg);
			  
-- O port map completo do MUX.
MUXDivisor :  entity work.muxGenerico2x1Bit  generic map (larguraDados => 1)
              port map(entradaA_MUX => saidaclk_reg1seg,
                 entradaB_MUX => saidaclk_reg2seg,
                 seletor_MUX => seletor,
                 saida_MUX => clk_seg);

registraUmSegundo: entity work.memKey
   port map (DIN => '1', DOUT => sinalUmSegundo, CLK => clk_seg, RST => limpaLeitura);
			
extensor :    entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 1, larguraDadoSaida => 8)
              port map (estendeSinal_IN => sinalUmSegundo, estendeSinal_OUT =>  extensor_out);
			
-- Faz o tristate de saida:
leituraUmSegundo <= extensor_out when habilitaLeitura = '1' else x"ZZ";

end architecture interface;