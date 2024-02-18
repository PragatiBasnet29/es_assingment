LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY my_decoder IS
    PORT (
        in_1, in_0, enable : IN STD_LOGIC;
        out_3, out_2, out_1, out_0 : OUT STD_LOGIC
    );
END my_decoder;

ARCHITECTURE decoder_arch OF my_decoder IS
BEGIN
    out_3 <= enable AND in_1 AND in_0;
    out_2 <= enable AND in_1 AND (NOT in_0);
    out_1 <= enable AND (NOT in_1) AND in_0;
    out_0 <= enable AND (NOT in_1) AND (NOT in_0);
END decoder_arch;