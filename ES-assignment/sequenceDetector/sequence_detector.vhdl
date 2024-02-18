LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY my_sequence IS
    PORT (
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        a : IN STD_LOGIC;
        z : OUT STD_LOGIC
    );
END my_sequence;

ARCHITECTURE seq_arch OF my_sequence IS
    TYPE state IS (q0, q1, q2, q3, q4);
    SIGNAL currentstate, nextstate : state;

BEGIN

    seq_proc : PROCESS (clk, rst) IS
    BEGIN

        IF rst = '1' THEN
            currentstate <= q0;
        ELSIF rising_edge(clk) THEN
            currentstate <= nextstate;
        END IF;
    END PROCESS seq_proc;
    comb_proc : PROCESS (currentstate, a) IS
    BEGIN

        CASE currentstate IS

            WHEN q0 =>
                IF a = '1' THEN
                    nextstate <= q1;
                ELSE
                    nextstate <= q0;
                END IF;

            WHEN q1 =>
                IF a = '0' THEN
                    nextstate <= q2;
                ELSE
                    nextstate <= q1;
                END IF;

            WHEN q2 =>
                IF a = '1' THEN
                    nextstate <= q3;
                ELSE
                    nextstate <= q0;
                END IF;

            WHEN q3 =>
                IF a = '1' THEN
                    nextstate <= q4;
                ELSE
                    nextstate <= q0;
                END IF;

            WHEN q4 =>
                IF a = '0' THEN
                    nextstate <= q0;
                ELSE
                    nextstate <= q1;
                END IF;

        END CASE;
    END PROCESS comb_proc;

    -- Output logic of the Sequence Detector
    out_proc : PROCESS (currentstate) IS
    BEGIN
        CASE currentstate IS
            WHEN q0 =>
                z <= '0';

            WHEN q1 =>
                z <= '0';

            WHEN q2 =>
                z <= '0';

            WHEN q3 =>
                z <= '0';

            WHEN q4 =>
                z <= '1';

        END CASE;
    END PROCESS out_proc;
END seq_arch;