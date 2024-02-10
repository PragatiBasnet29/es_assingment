-- library ieee;
-- use ieee.std_logic_1164.all;
-- use ieee.std_logic_arith.all;
-- use ieee.std_logic_unsigned.all;

-- entity jk_tb is
-- end jk_tb;

-- architecture jk_arch of jk_tb is
--     signal j, k, clk, rst: std_logic := '0';
--     signal q, q_comp: std_logic;

--     component jk is
--         port(
--             j, k, clk, rst: in std_logic;
--             q, q_comp: out std_logic
--         );
--     end component jk;

-- begin
--     uut: jk
--     port map(j => j, k => k, clk => clk, rst => rst, q => q, q_comp => q_comp);

--     clk_process: process
--     begin
--         clk <= '0';
--         wait for 240 ns;

--         clk <= '1';
--         wait for 240 ns;
--     end process clk_process;

--     stimulus_process: process
--     begin
--         rst <= '1';
--         wait for 10 ns;

--         rst <= '0';
--         wait for 10 ns;

--         -- test case 1
--         j <= '0';
--         k <= '0';
--         wait for 240 ns;

--         -- test case 2
--         j <= '0';
--         k <= '1';
--         wait for 240 ns;

--         -- test case 3
--         j <= '1';
--         k <= '0';
--         wait for 240 ns;

--         -- test case 4
--         j <= '1';
--         k <= '1';
--         wait for 240 ns;

--         wait;
--     end process stimulus_process;
-- end jk_arch;


library ieee;
use ieee.std_logic_1164.all;

entity my_jk_tb is
end my_jk_tb;

architecture tb_arch of my_jk_tb is
    component my_jk is
        port (
            j, k, clk, rst: in std_logic;
            q, q_comp: out std_logic
        );
    end component my_jk;

    signal j_tb, k_tb, clk_tb, rst_tb, q_tb, q_comp_tb : std_logic := '0';
begin
    dut: my_jk port map (j => j_tb, k => k_tb, clk => clk_tb, rst => rst_tb, q => q_tb, q_comp => q_comp_tb);

    stimulus_proc: process
    begin
        rst_tb <= '1';
        clk_tb <= '0';
        j_tb <= '0';
        k_tb <= '0';
        wait for 10 ns;
        
        rst_tb <= '0';
        wait for 10 ns;
        
        clk_tb <= not clk_tb;
        wait for 10 ns;
        
        j_tb <= '1';  -- Example test case, change as needed
        k_tb <= '0';
        wait for 10 ns;
        
        j_tb <= '0';
        k_tb <= '1';
        wait for 10 ns;
        
        j_tb <= '1';
        k_tb <= '1';
        wait for 10 ns;
        
        -- Add more test cases or stimulus here
        
        wait;
    end process;
end tb_arch;
