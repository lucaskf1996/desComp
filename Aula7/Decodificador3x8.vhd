library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decodificador3x8 is
  generic   (
    DATA_WIDTH  : natural := 3
    --ADDR_WIDTH  : natural :=  8
  );

  port   (
    -- Input ports
    dataIN  :  in   std_logic_vector(DATA_WIDTH-1 downto 0);
    dataOUT :  out  std_logic_vector(7 downto 0)
  );
end entity;


architecture arquitetura of Decodificador3x8 is


begin
	process (dataIN) is
	begin
		case dataIN is
			when "000" => dataOUT <= "00000001";
			when "001" => dataOUT <= "00000010";
			when "010" => dataOUT <= "00000100";
			when "011" => dataOUT <= "00001000";
			when "100" => dataOUT <= "00010000";
			when "101" => dataOUT <= "00100000";
			when "110" => dataOUT <= "01000000";
			when "111" => dataOUT <= "10000000";
		end case;
	end process;
end architecture;