-- library ieee;
-- use ieee.std_logic_1164.all;
 
-- entity sd_tb is
-- end sd_tb;
 
-- architecture seq_arch of sd_tb is 
   
--     component sequence
--         port(
--             clk : in  std_logic;
--             rst : in  std_logic;
--             a : in  std_logic;
--             z : out  std_logic
--         );
--     end component;
    
--     signal clk, rst, a : std_logic := '0';
--     signal z : std_logic;

--     constant clk_period : time := 10 ns;
 
-- begin
--     uut: sequence port map (
--         clk => clk,
--         rst => rst,
--         a => a,
--         z => z
--     );

--     -- CLK process 
--     clk_process: process
--     begin
--         clk <= '0';
--         wait for clk_period/2;
--         clk <= '1';
--         wait for clk_period/2;
--     end process;
 
--     -- Stimulus process
--     stimulus_process: process
--     begin  
--         a <= '0';
--         rst <= '1';
--         wait for 30 ns;

--         rst <= '0';
--         wait for 40 ns;

--         a <= '0';
--         wait for 10 ns;
--         a <= '1';
--         wait for 10 ns;
--         a <= '1'; 
--         wait for 10 ns;
--         a <= '0'; 
--         -- insert stimulus here 

--         wait;
--     end process stimulus_process;

-- end seq_arch;


library ieee;
use ieee.std_logic_1164.all;

entity my_sequence_tb is
end my_sequence_tb;

architecture tb_arch of my_sequence_tb is
    component my_sequence is
        port (
            clk: in std_logic;
            rst: in std_logic;
            a: in std_logic;
            z: out std_logic
        );
    end component my_sequence;

    signal clk_tb, rst_tb, a_tb, z_tb: std_logic := '0';
begin
    dut: my_sequence port map (clk => clk_tb, rst => rst_tb, a => a_tb, z => z_tb);

    stimulus_proc: process
    begin
        rst_tb <= '1';
        clk_tb <= '0';
        a_tb <= '0';
        wait for 10 ns;
        
        rst_tb <= '0';
        wait for 10 ns;
        
        clk_tb <= not clk_tb;
        wait for 10 ns;
        
        a_tb <= '1';  -- Example test case, change as needed
        wait for 10 ns;
        
        a_tb <= '0';
        wait for 10 ns;
        
        -- Add more test cases or stimulus here
        
        wait;
    end process;
end tb_arch;
