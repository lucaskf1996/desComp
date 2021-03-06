library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EXMEM is
    port (PCADD_IN: in std_logic_vector(31 downto 0);
			rtrd_IN :    in std_logic_vector(4 downto 0);
			PCADD_OUT: out std_logic_vector(31 downto 0);
			rtrd_OUT :   out std_logic_vector(4 downto 0);
			
			ULA_IN :   in std_logic_vector(31 downto 0);
			ULA_OUT :  out std_logic_vector(31 downto 0);
			
			WD_IN :    in std_logic_vector(31 downto 0);
			WD_OUT :   out std_logic_vector(31 downto 0);
			
			WB_IN  :   in std_logic_vector(1 downto 0);
			M_IN   :   in std_logic_vector(2 downto 0);
			ZERO_IN:   in std_logic;
			WB_OUT :   out std_logic_vector(1 downto 0);
			M_OUT  :   out std_logic_vector(2 downto 0);
			ZERO_OUT:  out std_logic;
			
			CLK,RST:   in std_logic
			);
end entity;

architecture comportamento of EXMEM is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process(RST, CLK)
    begin
        -- The asynchronous reset signal has the highest priority
        if (RST = '1') then
            PCADD_OUT <= (others => '0');    -- Código reconfigurável.
				rtrd_OUT  <= (others => '0');
				ULA_OUT   <= (others => '0');
				WD_OUT    <= (others => '0');
				WB_OUT    <= (others => '0');
				M_OUT     <= (others => '0');
				ZERO_OUT  <= '0';
        else
            -- At a clock edge, if asynchronous signals have not taken priority,
            -- respond to the appropriate synchronous signal.
            -- Check for synchronous reset, then synchronous load.
            -- If none of these takes precedence, update the register output
            -- to be the register input.
            if (rising_edge(CLK)) then
					PCADD_OUT <= PCADD_IN;
					rtrd_OUT  <= rtrd_IN;
					ULA_OUT   <= ULA_IN;
					WD_OUT    <= WD_IN;
					WB_OUT    <= WB_IN;
					M_OUT     <= M_IN;
					ZERO_OUT  <= ZERO_IN;
            end if;
        end if;
    end process;
end architecture;