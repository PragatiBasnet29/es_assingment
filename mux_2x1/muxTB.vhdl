
-- library ieee;
-- use ieee.std_logic_1164.all;

-- entity mux_tb  is
-- end mux_tb;

-- architecture mux_arch of mux_tb is
-- signal a0,a1,s0,y:std_logic;

-- component mux
--     port(
--         a0,a1,s0: in std_logic;
--         y: out std_logic
--         );
-- end component mux;

-- begin
--     UUT: mux
--     port map(a0 => a0, a1 => a1, s0 => s0, y => y);


--     stimulus_process: process
--     begin

--         --test case 1
--         s0 <= '0';
--         a0 <= '0';
--         a1 <= '0';
--         wait for 10 ns;

--         --test case 2
--         s0 <= '0';
--         a0 <= '0';
--         a1 <= '1';
--         wait for 10 ns;

--         --test case 3
--         s0 <= '0';
--         a0 <= '1';
--         a1 <= '0';
--         wait for 10 ns;
--         --test case 4
--         s0 <= '0';
--         a0 <= '1';
--         a1 <= '1';
--         wait for 10 ns;

--         --test case 5
--         s0 <= '1';
--         a0 <= '0';
--         a1 <= '0';
--         wait for 10 ns;

--         --test case 6
--         s0 <= '1';
--         a0 <= '0';
--         a1 <= '1';
--         wait for 10 ns;
--         wait;
--     end process stimulus_process;
-- end mux_arch;
 
        
library ieee;
use ieee.std_logic_1164.all;

entity my_mux_tb is
end my_mux_tb;

architecture tb_arch of my_mux_tb is
    component my_mux is
        port (
            a0, a1, s0: in std_logic;
            y: out std_logic
        );
    end component my_mux;

    signal a0_tb, a1_tb, s0_tb, y_tb: std_logic := '0';
begin
    dut: my_mux port map (a0 => a0_tb, a1 => a1_tb, s0 => s0_tb, y => y_tb);

    stimulus_proc: process
    begin
        a0_tb <= '0';
        a1_tb <= '1';
        s0_tb <= '0';
        wait for 10 ns;
        
        a0_tb <= '1';
        a1_tb <= '0';
        s0_tb <= '1';
        wait for 10 ns;
        
        a0_tb <= '0';
        a1_tb <= '0';
        s0_tb <= '1';
        wait for 10 ns;
        
        -- Add more test cases or stimulus here
        
        wait;
    end process;
end tb_arch;

