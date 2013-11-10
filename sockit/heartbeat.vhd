library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity heartbeat is
  port(
    OSC_50_B3B : in  std_logic;
    LED          : out std_logic_vector(3 downto 0)
    );
end entity heartbeat;

architecture syn of heartbeat is

  signal prescaler : unsigned(31 downto 0) := (others => '0');
  signal clk       : std_logic;
  signal heartbeat : std_logic;
begin

  process(clk)
  begin
    if rising_edge(clk) then
      prescaler <= prescaler + 1;
    end if;
  end process;

  clk <= OSC_50_B3B;
  LED <= "000" & heartbeat;

  heartbeat <= std_logic(prescaler(25));

end architecture syn;

