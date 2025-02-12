-- ----------------------------------------------------------------------------	
-- FILE: 	revisions.vhd
-- DESCRIPTION:	Project revision constatns
-- DATE:	Aug 22, 2016
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------	
LIBRARY ieee;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

package revisions is
	constant MAJOR_REV : INTEGER := 1;
	constant MINOR_REV : INTEGER := 1;
	constant BETA_REV : INTEGER := 1;
	constant COMPILE_REV : INTEGER := 7;
	constant COMPILE_YEAR_STAMP : INTEGER := 21;
	constant COMPILE_MONTH_STAMP : INTEGER := 04;
	constant COMPILE_DAY_STAMP : INTEGER := 22;
	constant COMPILE_HOUR_STAMP : INTEGER := 16;
	
	constant MAGIC_NUM : STD_LOGIC_VECTOR(31 downto 0) := X"D8A5F009";
   constant BOARD_ID : STD_LOGIC_VECTOR(15 downto 0) := X"0016"; -- LimeNET-Micro
end revisions;
