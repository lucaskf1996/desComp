library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IDEX is
    port (rs_IN : in std_logic_vector(31 downto 0);
			rd_IN :  in std_logic_vector(4 downto 0);
			rt_IN :  in std_logic_vector(4 downto 0);
			rs_OUT : out std_logic_vector(31 downto 0);
			rd_OUT : out std_logic_vector(4 downto 0);
			rt_OUT : out std_logic_vector(4 downto 0);
			R1_IN :  in std_logic_vector(31 downto 0);
			R2_IN :  in std_logic_vector(31 downto 0);
			R1_OUT : out std_logic_vector(31 downto 0);
			R2_OUT : out std_logic_vector(31 downto 0);
			PC_IN :  in std_logic_vector(31 downto 0);
			PC_OUT : out std_logic_vector(31 downto 0);
			WB_IN  : in std_logic_vector(1 downto 0);
			M_IN   : in std_logic_vector(2 downto 0);
			EX_IN  : in std_logic_vector(7 downto 0);
			WB_OUT : out std_logic_vector(1 downto 0);
			M_OUT  : out std_logic_vector(2 downto 0);
			EX_OUT : out std_logic_vector(7 downto 0);
			CLK,RST: in std_logic
			);
end entity;

architecture comportamento of IDEX is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process(RST, CLK)
    begin
        -- The asynchronous reset signal has the highest priority
        if (RST = '1') then
            PC_OUT <= (others => '0');    -- Código reconfigurável.
				rs_OUT <= (others => '0');
				rd_OUT <= (others => '0');
				rt_OUT <= (others => '0');
				R1_OUT <= (others => '0');
				R2_OUT <= (others => '0');
				WB_OUT <= (others => '0');
				M_OUT  <= (others => '0');
				EX_OUT <= (others => '0');
        else
            -- At a clock edge, if asynchronous signals have not taken priority,
            -- respond to the appropriate synchronous signal.
            -- Check for synchronous reset, then synchronous load.
            -- If none of these takes precedence, update the register output
            -- to be the register input.
            if (rising_edge(CLK)) then
					PC_OUT <= PC_IN;
					rs_OUT <= rs_IN;
					rd_OUT <= rd_IN;
					rt_OUT <= rt_IN;
					R1_OUT <= R1_IN;
					R2_OUT <= R2_IN;
					WB_OUT <= WB_IN;
					M_OUT  <= M_IN;
					EX_OUT <= EX_IN;
            end if;
        end if;
    end process;
end architecture;