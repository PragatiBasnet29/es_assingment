LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY my_gcd_tb IS
END my_gcd_tb;

ARCHITECTURE tb_arch OF my_gcd_tb IS
    COMPONENT my_gcd IS
        PORT (
            rst, clk : IN STD_LOGIC;
            input_a, input_b : IN INTEGER;
            gcd_result : OUT INTEGER
        );
    END COMPONENT my_gcd;

    SIGNAL rst_tb, clk_tb : STD_LOGIC := '0';
    SIGNAL input_a_tb, input_b_tb, gcd_result_tb : INTEGER := 0;
BEGIN
    dut : my_gcd PORT MAP(rst => rst_tb, clk => clk_tb, input_a => input_a_tb, input_b => input_b_tb, gcd_result => gcd_result_tb);

    clock : PROCESS
    BEGIN
        clk_tb <= '1';
        WAIT FOR 100 ns;

        clk_tb <= '0';
        WAIT FOR 100 ns;

    END PROCESS;
    stimulus_proc : PROCESS

    BEGIN
        rst_tb <= '1';
        WAIT FOR 10 ns;
        rst_tb <= '0';

        input_a_tb <= 10; -- Change input values as needed
        input_b_tb <= 15;
        WAIT FOR 2600 ns;

        input_a_tb <= 6789;
        input_b_tb <= 666;
        WAIT FOR 2600 ns;
        -- Add more test cases or stimulus here

        WAIT;
    END PROCESS;
END tb_arch;