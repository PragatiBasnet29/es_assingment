-- library ieee;
-- use ieee.std_logic_1164.all;

-- entity lcm_tb  is 
-- 	end lcm_tb;

-- architecture behavior of lcm_tb is 
-- signal clk, rst: std_logic;
-- signal a, b, LCM: integer;
-- component fsm_LCM 
-- 	port(clk, rst : IN STD_LOGIC;
-- 	    a, b: IN INTEGER;
-- 	    LCM : OUT INTEGER);
-- END COMPONENT;
-- BEGIN
-- lcm1 : fsm_LCM port map(clk=> clk, rst=>  rst, a=>a, b=>b, LCM=>LCM);
-- clock: process
-- begin
-- 	clk<= '1';
-- 	wait for 100 ns;

-- 	clk <= '0';
-- 	WAIT FOR 100 NS;
	
-- end process;
-- process
-- begin
-- 	rst <= '1';
-- 	wait for 10 ns;
-- 	rst <= '0';

-- 	a <= 24;
-- 	b <= 12;
-- 	wait for 2000 ns;

-- 	a <= 16;
-- 	b <= 5;
-- 	wait for 2000 ns;

-- 	a <= 11;
-- 	b <= 33;
-- 	wait for 2000 ns;

-- 	WAIT;
-- end process;
-- end behavior;

library ieee;
use ieee.std_logic_1164.all;

entity my_lcm_tb is
end my_lcm_tb;

architecture tb_arch of my_lcm_tb is
    component my_lcm is
        port (
            rst, clk : in std_logic;
            input_a, input_b : in integer;
            lcm_result : out integer
        );
    end component my_lcm;

    signal rst_tb, clk_tb : std_logic := '0';
    signal input_a_tb, input_b_tb, lcm_result_tb : integer := 0;
begin
    dut: my_lcm port map (rst => rst_tb, clk => clk_tb, input_a => input_a_tb, input_b => input_b_tb, lcm_result => lcm_result_tb);

    stimulus_proc: process
    begin
        rst_tb <= '1';
        clk_tb <= '0';
        input_a_tb <= 10; -- Change input values as needed
        input_b_tb <= 15;
        wait for 10 ns;
        
        rst_tb <= '0';
        wait for 10 ns;
        
        clk_tb <= not clk_tb;
        wait for 10 ns;
        
        input_a_tb <= 5;  -- Example test case, change as needed
        input_b_tb <= 8;
        wait for 10 ns;
        
        -- Add more test cases or stimulus here
        
        wait;
    end process;
end tb_arch;
