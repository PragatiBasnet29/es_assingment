LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY my_sequence_tb IS
END my_sequence_tb;

ARCHITECTURE tb_arch OF my_sequence_tb IS
    COMPONENT my_sequence IS
        PORT (
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC;
            a : IN STD_LOGIC;
            z : OUT STD_LOGIC
        );
    END COMPONENT my_sequence;

    SIGNAL clk_tb, rst_tb, a_tb, z_tb : STD_LOGIC := '0';
BEGIN
    dut : my_sequence PORT MAP(clk => clk_tb, rst => rst_tb, a => a_tb, z => z_tb);

    clock : PROCESS
    BEGIN
        clk_tb <= '1';
        WAIT FOR 5 ns;

        clk_tb <= '0';
        WAIT FOR 5 ns;

    END PROCESS;
    stimulus_proc : PROCESS
    BEGIN
        rst_tb <= '1';
        a_tb <= '0';
        WAIT FOR 30 ns;

        rst_tb <= '0';
        WAIT FOR 40 ns;

        a_tb <= '1'; -- Example test case, change as needed
        WAIT FOR 10 ns;

        a_tb <= '0';
        WAIT FOR 10 ns;

        a_tb <= '1';
        WAIT FOR 10 ns;

        a_tb <= '1';
        WAIT FOR 10 ns;

        a_tb <= '0';

        -- Add more test cases or stimulus here

        WAIT;
    END PROCESS;
END tb_arch;