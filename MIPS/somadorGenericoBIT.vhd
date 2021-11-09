library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity somadorGenericoBIT is
    port
    (
        entradaA, entradaB, cIn: in STD_LOGIC;
        saida, cOut:  out STD_LOGIC
    );
end entity;

architecture comportamento of somadorGenericoBIT is
    begin

		saida <= (entradaA xor entradaB) xor cIn;
		cOut  <= (entradaA and entradaB) or (cIn and entradaB) or (entradaA and cIn);
end architecture;