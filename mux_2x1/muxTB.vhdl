LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY my_mux_tb IS
END my_mux_tb;

ARCHITECTURE tb_arch OF my_mux_tb IS
    COMPONENT my_mux IS
        PORT (
            input_a0, input_a1, select_s0 : IN STD_LOGIC;
            output_y : OUT STD_LOGIC
        );
    END COMPONENT my_mux;

    SIGNAL input_a0_tb, input_a1_tb, select_s0_tb, output_y_tb : STD_LOGIC := '0';
BEGIN
    dut : my_mux PORT MAP(input_a0 => input_a0_tb, input_a1 => input_a1_tb, select_s0 => select_s0_tb, output_y => output_y_tb);

    stimulus_proc : PROCESS
    BEGIN

        input_a0_tb <= '1';
        input_a1_tb <= '1';
        select_s0_tb <= '1';
        WAIT FOR 10 ns;

        input_a0_tb <= '0';
        input_a1_tb <= '1';
        select_s0_tb <= '0';
        WAIT FOR 10 ns;

        input_a0_tb <= '1';
        input_a1_tb <= '0';
        select_s0_tb <= '1';
        WAIT FOR 10 ns;

        input_a0_tb <= '0';
        input_a1_tb <= '0';
        select_s0_tb <= '1';
        WAIT FOR 10 ns;

        -- Add more test cases or stimulus here

        WAIT;
    END PROCESS;
END tb_arch;