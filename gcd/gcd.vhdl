LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY my_gcd IS
    PORT (
        rst, clk : IN STD_LOGIC;
        input_a, input_b : IN INTEGER;
        gcd_result : OUT INTEGER
    );
END my_gcd;

ARCHITECTURE behavior_gcd OF my_gcd IS
    TYPE state IS (start, input, output, check, check1, update_x, update_y);
    SIGNAL current_state, next_state : state;
BEGIN
    state_reg : PROCESS (clk, rst)
    BEGIN
        IF rst = '1' THEN
            current_state <= start;
        ELSIF rising_edge(clk) THEN
            current_state <= next_state;
        END IF;
    END PROCESS state_reg;

    compute : PROCESS (input_a, input_b, current_state)
        VARIABLE x, y, r, p : INTEGER;
    BEGIN
        CASE current_state IS
            WHEN start =>
                next_state <= input;
            WHEN input =>
                x := input_a;
                y := input_b;
                next_state <= check;
            WHEN check =>
                IF x < y THEN
                    next_state <= update_x;
                ELSE
                    next_state <= update_y;
                END IF;
            WHEN update_x =>
                p := x;
                x := y;
                y := p;
                next_state <= check1;
            WHEN update_y =>
                x := x;
                y := y;
                next_state <= check1;
            WHEN check1 =>
                WHILE y /= 0 LOOP
                    r := x MOD y;
                    x := y;
                    y := r;
                END LOOP;
                next_state <= output;
            WHEN output =>
                gcd_result <= x;
                next_state <= start;
            WHEN OTHERS =>
                next_state <= start;
        END CASE;
    END PROCESS compute;
END behavior_gcd;