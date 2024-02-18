LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY my_demux_tb IS
END my_demux_tb;

ARCHITECTURE tb_arch OF my_demux_tb IS
    -- Component declaration
    COMPONENT my_demux
        PORT (
            in_a, sel2, sel1, sel0 : IN STD_LOGIC;
            out7, out6, out5, out4, out3, out2, out1, out0 : OUT STD_LOGIC
        );
    END COMPONENT;

    -- Signals declaration
    SIGNAL in_a_tb, sel2_tb, sel1_tb, sel0_tb : STD_LOGIC := '0';
    SIGNAL out7_tb, out6_tb, out5_tb, out4_tb, out3_tb, out2_tb, out1_tb, out0_tb : STD_LOGIC;

BEGIN
    -- Instantiate the my_demux entity
    dut : my_demux PORT MAP(
        in_a => in_a_tb,
        sel2 => sel2_tb,
        sel1 => sel1_tb,
        sel0 => sel0_tb,
        out7 => out7_tb,
        out6 => out6_tb,
        out5 => out5_tb,
        out4 => out4_tb,
        out3 => out3_tb,
        out2 => out2_tb,
        out1 => out1_tb,
        out0 => out0_tb
    );

    -- Stimulus process
    stimulus_proc : PROCESS
    BEGIN
        -- Initialize ins
        in_a_tb <= '1';
        sel2_tb <= '0';
        sel1_tb <= '0';
        sel0_tb <= '0';

        -- Apply stimulus
        WAIT FOR 10 ns;
        in_a_tb <= '1';
        sel2_tb <= '0';
        sel1_tb <= '0';
        sel0_tb <= '1';
        WAIT FOR 10 ns;
        in_a_tb <= '1';
        sel2_tb <= '0';
        sel1_tb <= '1';
        sel0_tb <= '0';
        WAIT FOR 10 ns;
        in_a_tb <= '1';
        sel2_tb <= '1';
        sel1_tb <= '1';
        sel0_tb <= '0';
        WAIT FOR 10 ns;
        in_a_tb <= '1';
        sel2_tb <= '1';
        sel1_tb <= '1';
        sel0_tb <= '1';
        WAIT FOR 10 ns;

        -- End simulation
        WAIT;
    END PROCESS;

END tb_arch;