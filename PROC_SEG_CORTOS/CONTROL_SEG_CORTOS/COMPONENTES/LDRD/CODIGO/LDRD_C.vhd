--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;

use work.param_disenyo_pkg.all;
use work.retardos_cntl_seg_C_pkg.all;

entity LDRD_C is
	port(IDL1A, IDL1M, IDL1F, IDL1E: in std_logic;
		IDL2A, IDL2M, IDL2F, IDL2E: in std_logic;
		latphA: in std_logic;
		latphM: in std_logic;
		RD : out std_logic);
end LDRD_C;


architecture comportamiento of LDRD_C is
begin
	
	RD <=  (IDL1A or IDL1M or IDL1F or IDL1E or IDL2A or IDL2M or IDL2F or IDL2E) and not ( latphA or latphM) after retLDRD_C;
	
end comportamiento;
