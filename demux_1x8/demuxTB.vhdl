library ieee;
use ieee.std_logic_1164.all;

entity my_demux_tb is
end my_demux_tb;

architecture tb_arch of my_demux_tb is
    -- Component declaration
    component my_demux
        port(
            in_a, sel2, sel1, sel0: in std_logic;
            out7, out6, out5, out4, out3, out2, out1, out0: out std_logic
        );
    end component;

    -- Signals declaration
    signal in_a_tb, sel2_tb, sel1_tb, sel0_tb: std_logic := '0';
    signal out7_tb, out6_tb, out5_tb, out4_tb, out3_tb, out2_tb, out1_tb, out0_tb: std_logic;

begin
    -- Instantiate the my_demux entity
    dut: my_demux port map (
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
    stimulus_proc: process
    begin
        -- Initialize ins
        in_a_tb <= '0';
        sel2_tb <= '0';
        sel1_tb <= '0';
        sel0_tb <= '0';

        -- Apply stimulus
        wait for 10 ns;
        in_a_tb <= '1';
        sel2_tb <= '0';
        sel1_tb <= '0';
        sel0_tb <= '0';
        wait for 10 ns;
        sel2_tb <= '1';
        sel1_tb <= '1';
        sel0_tb <= '1';
        wait for 10 ns;

        -- End simulation
        wait;
    end process;

end tb_arch;
