LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY my_demux IS
    PORT (
        in_a, sel2, sel1, sel0 : IN STD_LOGIC;
        out7, out6, out5, out4, out3, out2, out1, out0 : OUT STD_LOGIC
    );
END my_demux;

ARCHITECTURE demux_arch OF my_demux IS
BEGIN
    out7 <= sel0 AND sel1 AND sel2 AND in_a;
    out6 <= (NOT sel0) AND sel1 AND sel2 AND in_a;
    out5 <= sel0 AND (NOT sel1) AND sel2 AND in_a;
    out4 <= (NOT sel0) AND (NOT sel1) AND sel2 AND in_a;
    out3 <= sel0 AND sel1 AND (NOT sel1) AND in_a;
    out2 <= (NOT sel0) AND sel1 AND (NOT sel2) AND in_a;
    out1 <= sel0 AND (NOT sel1) AND (NOT sel2) AND in_a;
    out0 <= (NOT sel0) AND (NOT sel1) AND (NOT sel2) AND in_a;
END demux_arch;