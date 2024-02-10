library ieee;
use ieee.std_logic_1164.all;

entity upcounter_tb is
end upcounter_tb;

architecture upcounter_arch of upcounter_tb is
    component upcounter is 
        port (
            clk, rst: in std_logic;
            q: out std_logic_vector(2 downto 0)
        );
    end component upcounter;

    signal clk, rst: std_logic := '0';
    signal q: std_logic_vector(2 downto 0);

begin
    --counter1:upcounter port map (clk => clk, rst => rst, q => q);

    process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;

    process
    begin
        rst <= '1';
        wait for 10 ns;
        rst <= '0';
        wait for 80 ns;
    end process;
end upcounter_arch;