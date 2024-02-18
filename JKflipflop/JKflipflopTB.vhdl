LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY my_jk_tb IS
END my_jk_tb;

ARCHITECTURE tb_arch OF my_jk_tb IS
    COMPONENT my_jk IS
        PORT (
            j, k, clk, rst : IN STD_LOGIC;
            q, q_comp : OUT STD_LOGIC
        );
    END COMPONENT my_jk;

    SIGNAL j_tb, k_tb, clk_tb, rst_tb, q_tb, q_comp_tb : STD_LOGIC := '0';
BEGIN
    dut : my_jk PORT MAP(j => j_tb, k => k_tb, clk => clk_tb, rst => rst_tb, q => q_tb, q_comp => q_comp_tb);

    clock : PROCESS
    BEGIN
        clk_tb <= '1';
        WAIT FOR 10 ns;

        clk_tb <= '0';
        WAIT FOR 10 ns;
    END PROCESS;
    stimulus_proc : PROCESS
    BEGIN
        rst_tb <= '1';
        WAIT FOR 10 ns;

        rst_tb <= '0';
        WAIT FOR 10 ns;

        j_tb <= '0';
        k_tb <= '0';
        WAIT FOR 10 ns;

        j_tb <= '0'; -- Example test case, change as needed
        k_tb <= '1';
        WAIT FOR 10 ns;

        j_tb <= '1';
        k_tb <= '0';
        WAIT FOR 10 ns;

        j_tb <= '1';
        k_tb <= '1';
        WAIT FOR 10 ns;

        -- Add more test cases or stimulus here

        WAIT;
    END PROCESS;
END tb_arch;