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

	
begin
	
	process(CLK)
	begin	
		if (rising_edge(CLK)) then
			dataOUT <= dataIN;
		end if;
	end process;
		

end architecture;