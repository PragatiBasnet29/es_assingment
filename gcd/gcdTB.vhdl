-- library ieee;
-- use ieee.std_logic_1164.all;

-- entity gcd_tb  is 
-- 	end gcd_tb;

-- architecture behavior_gcd of gcd_tb is 
-- signal clk, rst: std_logic;
-- signal a, b, gcd: integer;
-- component GCD_C 
-- 	port(clk, rst : IN STD_LOGIC;
-- 	    a, b: IN INTEGER;
-- 	    gcd : OUT INTEGER);
-- END COMPONENT;
-- BEGIN
-- GCD_1 : GCD_C port map(clk=> clk, rst=>  rst, a=>a, b=>b, gcd=>gcd);
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
-- 	rst  <= '0';

-- 	a <= 23;
-- 	b <= 11;
-- 	wait for 2000 ns;
	
-- 	a <= 123;
-- 	b <= 45;
-- 	wait for 2000 ns;
	
-- 	a <= 1112;
-- 	b <= 24;
-- 	wait for 2000 ns;

-- 	WAIT;
-- end process;
-- end behavior_gcd;



library ieee;
use ieee.std_logic_1164.all;

entity my_gcd_tb is
end my_gcd_tb;

architecture tb_arch of my_gcd_tb is
    component my_gcd is
        port (
            rst, clk : in std_logic;
            input_a, input_b : in integer;
            gcd_result : out integer
        );
    end component my_gcd;

    signal rst_tb, clk_tb : std_logic := '0';
    signal input_a_tb, input_b_tb, gcd_result_tb : integer := 0;
begin
    dut: my_gcd port map (rst => rst_tb, clk => clk_tb, input_a => input_a_tb, input_b => input_b_tb, gcd_result => gcd_result_tb);

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
        
        -- Add more test cases or stimulus here
        
        wait;
    end process;
end tb_arch;
