library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity somadorGenerico is
    port
    (
        entradaA, entradaB: in STD_LOGIC;
        saida:  out STD_LOGIC;
		  cOut: out std_logic;
		  cIn: in std_logic
    );
end entity;

architecture comportamento of somadorGenerico is
    begin
        saida <= cIn xor (entradaA xor entradaB);
		  cOut <= (entradaA and entradaB) or (cIn and (entradaA xor entradaB));
end architecture;