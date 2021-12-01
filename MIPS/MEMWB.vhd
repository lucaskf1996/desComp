library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MEMWB is
    port (rtrd_IN :    in std_logic_vector(4 downto 0);
			rtrd_OUT :   out std_logic_vector(4 downto 0);
			
			ULA_IN :   in std_logic_vector(31 downto 0);
			ULA_OUT :  out std_logic_vector(31 downto 0);
			
			RD_IN :    in std_logic_vector(31 downto 0);
			RD_OUT :   out std_logic_vector(31 downto 0);
			
			WB_IN  :   in std_logic_vector(1 downto 0);
			WB_OUT :   out std_logic_vector(1 downto 0);
			
			CLK,RST:   in std_logic
			);
end entity;

architecture comportamento of MEMWB is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process(RST, CLK)
    begin
        -- The asynchronous reset signal has the highest priority
        if (RST = '1') then
            RD_OUT    <= (others => '0');    -- Código reconfigurável.
				rtrd_OUT  <= (others => '0');
				ULA_OUT   <= (others => '0');
				WB_OUT    <= (others => '0');
        else
            -- At a clock edge, if asynchronous signals have not taken priority,
            -- respond to the appropriate synchronous signal.
            -- Check for synchronous reset, then synchronous load.
            -- If none of these takes precedence, update the register output
            -- to be the register input.
            if (rising_edge(CLK)) then
					RD_OUT    <= RD_IN;
					rtrd_OUT  <= rtrd_IN;
					ULA_OUT   <= ULA_IN;
					WB_OUT    <= WB_IN;
            end if;
        end if;
    end process;
end architecture;