-- library ieee;
-- use ieee.std_logic_1164.all;

-- entity mux is
-- port(
--     a0,a1,s0:in std_logic;
--     y:out std_logic
-- );
-- end mux;

-- architecture mux_arch of mux is
-- begin
--     y <= ((not s0) and a0) or (s0 and a1);
-- end mux_arch;

--code for MUX entity
library ieee;
use ieee.std_logic_1164.all;

entity my_mux is
    port (
        input_a0, input_a1, select_s0: in std_logic;
        output_y: out std_logic
    );
end my_mux;

architecture mux_arch of my_mux is
begin
    output_y <= ((not select_s0) and input_a0) or (select_s0 and input_a1);
end mux_arch;
