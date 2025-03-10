--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

use work.param_disenyo_pkg.all;
use work.RegDes_pkg.all;

entity latproh is 
  port (reloj, Pcero, I: std_logic;
		inst_latph: in std_logic;
		latphA: out std_logic;
		latphM: out std_logic);
end latproh;

architecture estruc of latproh is
signal inst_latph_RA4: std_logic;

begin

	latphA <= inst_latph and I;
	latphM <= inst_latph and not I;

end;
