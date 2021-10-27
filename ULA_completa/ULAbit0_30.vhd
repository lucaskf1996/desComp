library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULAbit0_30 is
    port
    (
      entradaA:  in STD_LOGIC;
		entradaB:  in STD_LOGIC;
		less:  in STD_LOGIC;
      inverte_B:  in STD_LOGIC;
      saida:    out STD_LOGIC;
		cIn:      in std_logic;
		cOut:     out std_logic;
		seletor:  in std_logic_vector(1 downto 0)
    );
end entity;

architecture comportamento of ULAbit0_30 is

	signal NOTentradaB    : std_logic;
	signal muxB           : std_logic;
	signal soma_mux       : std_logic;
	signal and_mux        : std_logic;
	signal or_mux         : std_logic;
	signal overflow_slt   : std_logic;
	signal slt_mux        : std_logic;

begin

	NOTentradaB <= not(entradaB);

	
	MuxEntradaB:      entity work.muxGenerico2x1
							port map (entradaA_MUX => entradaB, entradaB_MUX => NOTentradaB, seletor_MUX => inverte_B, saida_MUX => muxB);
	
	somador:          entity work.somadorGenerico
							port map (entradaA => entradaA, entradaB => muxB, cIn => cIn, saida => soma_mux, cOut => cOut);

	MuxSaida:         entity work.muxGenerico4x1
							port map (entrada1 => and_mux, entrada2 => or_mux, entrada3 => soma_mux, entrada4 => less, seletor_MUX => seletor, saida_MUX => saida);
							
	and_mux <= entradaA and entradaB;
	or_mux <= entradaA or entradaB;
							
end architecture;