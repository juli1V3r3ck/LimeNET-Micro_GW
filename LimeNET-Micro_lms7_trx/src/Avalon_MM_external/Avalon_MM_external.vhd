-- Avalon_MM_external.vhd

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

entity Avalon_MM_external is
	port (
		avs_s0_address       : in  std_logic_vector(7 downto 0) := (others => '0'); --    avs_s0.address
		avs_s0_read          : in  std_logic                    := '0';             --                .read
		avs_s0_waitrequest   : out std_logic;                                       --                .waitrequest
		avs_s0_readdatavalid : out std_logic;                                       --                .readdatavalid
		avs_s0_readdata      : out std_logic_vector(7 downto 0);                    --                .readdata
		avs_s0_write         : in  std_logic                    := '0';             --                .write
		avs_s0_writedata     : in  std_logic_vector(7 downto 0) := (others => '0'); --                .writedata
		clock_clk            : in  std_logic                    := '0';             --    clock.clk
		reset_reset          : in  std_logic                    := '0';             --    reset.reset
		avm_m0_address       : out std_logic_vector(7 downto 0);                    --    avm_m0.address
		avm_m0_read          : out std_logic;                                       --                .read
		avm_m0_readdata      : in  std_logic_vector(7 downto 0) := (others => '0'); --                .readdata
		avm_m0_readdatavalid : in  std_logic                    := '0';             --                .readdatavalid
		avm_m0_waitrequest   : in  std_logic                    := '0';             --                .waitrequest
		avm_m0_writedata     : out std_logic_vector(7 downto 0);                    --                .writedata
		avm_m0_write         : out std_logic;                                       --                .write
		clock_source_clk     : out std_logic                    := '0';             --    clock_source.clk
		reset_source_reset   : out std_logic                    := '0'              --    reset_source.reset
	);
end entity Avalon_MM_external;

architecture rtl of Avalon_MM_external is
begin

	avs_s0_waitrequest <= avm_m0_waitrequest;

	avs_s0_readdata <= avm_m0_readdata;

	avs_s0_readdatavalid <= avm_m0_readdatavalid;

	avm_m0_address <= avs_s0_address;

	avm_m0_read <= avs_s0_read;

	avm_m0_writedata <= avs_s0_writedata;

	avm_m0_write <= avs_s0_write;

	clock_source_clk <= clock_clk;

	reset_source_reset <= reset_reset;

end architecture rtl; -- of Avalon_MM_external
