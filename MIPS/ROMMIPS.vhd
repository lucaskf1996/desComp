library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROMMIPS IS
   generic (
          dataWidth: natural := 32;
          addrWidth: natural := 32;
       memoryAddrWidth:  natural := 8 );   -- 64 posicoes de 32 bits cada
   port ( clk      : IN  STD_LOGIC;
          Endereco : IN  STD_LOGIC_VECTOR (addrWidth-1 DOWNTO 0);
          Dado     : OUT STD_LOGIC_VECTOR (dataWidth-1 DOWNTO 0) );
end entity;

architecture assincrona OF ROMMIPS IS
  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 DOWNTO 0);

  signal memROM: blocoMemoria;
  attribute ram_init_file : string;
  attribute ram_init_file of memROM:
  signal is "ROMcontent.mif";

-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;

--library IEEE;
--use IEEE.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--entity ROMMIPS is
--   generic (
--          dataWidth: natural := 32;
--          addrWidth: natural := 32;
--			 memoryAddrWidth: natural := 6
--    );
--   port (
--			 clk: IN STD_LOGIC;
--          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
--          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
--    );
--end entity;
--
--architecture assincrona of ROMMIPS is
--
--  type blocoMemoria is array(0 TO 2**8 - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);
--
--  function initMemory
--        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
--  begin
--        -- Inicializa os endereços:
--			tmp(0) := x"AC090008"; --sw $t1 8($zero) (m(8) := 0x0A)      -- 0    8
--			tmp(4) := x"8C080008"; --lw $t0 8($zero) ($t0 := 0x0A)       -- 4    c
--			tmp(8) := x"00000000";                                       -- 8    10
--			tmp(12) := x"012A4022"; --sub $t0 $t1 $t2 ($t0 := 0xFF)       -- C    14
--			tmp(16) := x"012A4024"; --and $t0 $t1 $t2 ($t0 := 0x0A)       -- 10   18
--			tmp(20) := x"012A4025"; --or $t0 $t1 $t2  ($t0 := 0x0B)       -- 14   1c
--			tmp(24) := x"012A402A"; --slt $t0 $t1 $t2 ($t0 := 0x01)       -- 18   20
--			tmp(28) := x"00000000";                                       -- 1c   24
--			tmp(32) := x"00000000";                                       -- 20   28
--			tmp(36) := x"00000000";                                       -- 24   2c
--			tmp(40) := x"010A4020"; --add $t0 $t0 $t2 ($t0 := 0x0C)      -- 28   30   Segunda vez: 0x17
--			tmp(44) := x"00000000";                                      -- 2c   34
--			tmp(48) := x"00000000";                                      -- 30   38
--			tmp(52) := x"00000000";                                      -- 34   3c
--			tmp(56) := x"110BFFFA"; --beq $t0 $t3 0xFA(pc := 0x24)       -- 38   40   "FA=-6"  Segunda vez: pc := 3c
--			tmp(60) := x"00000000";                                      -- 3c   44
--			tmp(64) := x"00000000";                                      -- 40   48
--			tmp(68) := x"00000000";                                      -- 44   4c
--			tmp(72) := x"08000001"; --j 0x01 (pc := #1)                  -- 48   50
--			tmp(76) := x"00000000";                                      -- 4c   54
--			tmp(80) := x"00000000";
--			tmp(84) := x"08000000"; --j 0x000000                         -- pc := #0
--        return tmp;
--    end initMemory;
--
--    signal memROM : blocoMemoria := initMemory;
--
--begin
--    Dado <= memROM (to_integer(unsigned(Endereco)));
--end architecture;