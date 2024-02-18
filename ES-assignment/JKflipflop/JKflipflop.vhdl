LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY my_jk IS
    PORT (
        j, k, clk, rst : IN STD_LOGIC;
        q, q_comp : OUT STD_LOGIC
    );
END my_jk;

ARCHITECTURE jk_arch OF my_jk IS
BEGIN
    PROCESS (j, k, clk, rst) IS
        VARIABLE output : STD_LOGIC := '0';
    BEGIN
        IF (rst = '1') THEN
            output := '0';
        ELSIF (rising_edge(clk)) THEN
            IF (j /= k) THEN
                output := j;
            ELSIF (j = '1' AND k = '1') THEN
                output := NOT output;
            END IF;
        END IF;
        q <= output;
        q_comp <= NOT output;
    END PROCESS;
END jk_arch;