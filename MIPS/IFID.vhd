library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IFID is
    port (INSTR_IN : in std_logic_vector(31 downto 0);
			INSTR_OUT : out std_logic_vector(31 downto 0);
			PC_IN : in std_logic_vector(31 downto 0);
			PC_OUT : out std_logic_vector(31 downto 0);
			CLK,RST : in std_logic
			);
end entity;

architecture comportamento of IFID is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process(RST, CLK)
    begin
        -- The asynchronous reset signal has the highest priority
        if (RST = '1') then
            INSTR_OUT <= (others => '0');    -- Código reconfigurável.
            PC_OUT <= (others => '0');    -- Código reconfigurável.
        else
            -- At a clock edge, if asynchronous signals have not taken priority,
            -- respond to the appropriate synchronous signal.
            -- Check for synchronous reset, then synchronous load.
            -- If none of these takes precedence, update the register output
            -- to be the register input.
            if (rising_edge(CLK)) then
					INSTR_OUT <= INSTR_IN;
					PC_OUT <= PC_IN;
            end if;
        end if;
    end process;
end architecture;