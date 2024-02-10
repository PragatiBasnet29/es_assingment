library ieee;
use ieee.std_logic_1164.all;

entity my_decoder_tb is
end my_decoder_tb;

architecture tb_arch of my_decoder_tb is 
    -- Component declaration
    component my_decoder
        port(
            in_1, in_0, enable: in std_logic;
            out_3, out_2, out_1, out_0: out std_logic
        );
    end component;

    -- Signals declaration
    signal in_1_tb, in_0_tb, enable_tb: std_logic := '0';
    signal out_3_tb, out_2_tb, out_1_tb, out_0_tb: std_logic;

begin
    -- Instantiate the my_decoder entity
    dut: my_decoder port map (
        in_1 => in_1_tb,
        in_0 => in_0_tb,
        enable => enable_tb,
        out_3 => out_3_tb,
        out_2 => out_2_tb,
        out_1 => out_1_tb,
        out_0 => out_0_tb
    );

    -- Stimulus process
    stimulus_proc: process
    begin
        -- Initialize ins
        in_1_tb <= '0';
        in_0_tb <= '0';
        enable_tb <= '0';

        -- Apply stimulus
        wait for 10 ns;
        in_1_tb <= '1';
        wait for 10 ns;
        in_0_tb <= '1';
        enable_tb <= '1';
        wait for 10 ns;

        -- End simulation
        wait;
    end process;

end tb_arch;
