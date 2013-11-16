-- new_component.vhd

-- This file was auto-generated as a prototype implementation of a module
-- created in component editor.  It ties off all outputs to ground and
-- ignores all inputs.  It needs to be edited to make it do something
-- useful.
-- 
-- This file will not be automatically regenerated.  You should check it in
-- to your version control system if you want to keep it.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity new_component is
	port (
		avs_s0_address     : in  std_logic_vector(7 downto 0)  := (others => '0'); --    s0.address
		avs_s0_read        : in  std_logic                     := '0';             --      .read
		avs_s0_readdata    : out std_logic_vector(31 downto 0);                    --      .readdata
		avs_s0_write       : in  std_logic                     := '0';             --      .write
		avs_s0_writedata   : in  std_logic_vector(31 downto 0) := (others => '0'); --      .writedata
		avs_s0_waitrequest : out std_logic;                                        --      .waitrequest
		clk                : in  std_logic                     := '0';             -- clock.clk
		reset              : in  std_logic                     := '0'              -- reset.reset
	);
end entity new_component;

architecture rtl of new_component is
begin

	-- TODO: Auto-generated HDL template

	avs_s0_waitrequest <= '0';

	avs_s0_readdata <= "00000000000000000000000000000000";

end architecture rtl; -- of new_component
