LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY my_decoder_tb IS
END my_decoder_tb;

ARCHITECTURE tb_arch OF my_decoder_tb IS
    -- Component declaration
    COMPONENT my_decoder
        PORT (
            in_1, in_0, enable : IN STD_LOGIC;
            out_3, out_2, out_1, out_0 : OUT STD_LOGIC
        );
    END COMPONENT;

    -- Signals declaration
    SIGNAL in_1_tb, in_0_tb, enable_tb : STD_LOGIC := '0';
    SIGNAL out_3_tb, out_2_tb, out_1_tb, out_0_tb : STD_LOGIC;

BEGIN
    -- Instantiate the my_decoder entity
    dut : my_decoder PORT MAP(
        in_1 => in_1_tb,
        in_0 => in_0_tb,
        enable => enable_tb,
        out_3 => out_3_tb,
        out_2 => out_2_tb,
        out_1 => out_1_tb,
        out_0 => out_0_tb
    );

    -- Stimulus process
    stimulus_proc : PROCESS
    BEGIN
        -- Initialize ins
        in_1_tb <= '0';
        in_0_tb <= '0';
        enable_tb <= '0';
        WAIT FOR 10 ns;

        -- Apply stimulus
        in_1_tb <= '1';
        WAIT FOR 10 ns;
        in_0_tb <= '1';
        enable_tb <= '1';
        WAIT FOR 10 ns;

        -- End simulation
        WAIT;
    END PROCESS;

END tb_arch;