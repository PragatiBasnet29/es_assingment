LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY my_mux IS
    PORT (
        input_a0, input_a1, select_s0 : IN STD_LOGIC;
        output_y : OUT STD_LOGIC
    );
END my_mux;

ARCHITECTURE mux_arch OF my_mux IS
BEGIN
    output_y <= ((NOT select_s0) AND input_a0) OR (select_s0 AND input_a1);
END mux_arch;