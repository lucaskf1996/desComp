library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC is
  generic   (
    DATA_WIDTH  : natural :=  9
  );

  port   (
    -- Input ports
    dataIN  : in  std_logic_vector(DATA_WIDTH-1 downto 0);
    clk     : in  std_logic;
	 
    -- Output ports
    dataOUT : out  std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end entity;


architecture arch_name of PC is

	signal ULA_OUT: std_logic_vector(DATA_WIDTH-1 downto 0);
	
begin
	
	-- O port map completo da ULA:
	ULA1:     entity work.ULASomaSub  generic map (larguraDados => DATA_WIDTH)
				 port map (entradaA => dataIN, entradaB => "000000001", saida => ULA_OUT, seletor => "01");
	-- The asynchronous reset signal has the highest priority
   
	process(CLK)
	begin	
		if (rising_edge(CLK)) then
			dataOUT <= ULA_OUT;
		end if;
	end process;
		

end architecture;