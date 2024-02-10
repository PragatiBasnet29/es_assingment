library ieee;
use ieee.std_logic_1164.all;

entity upcounter is
    port (
        t, clk, rst: in std_logic;
        q: out std_logic
    );
end upcounter;

architecture upcounter_arch of upcounter is
    signal q_temp: std_logic;
begin
    process (clk, rst)
    begin
        if rst = '1' then
            q_temp <= '0';   
        elsif rising_edge(clk) then
            if t = '1' then
                q_temp <= not q_temp; 
            else
                q_temp <= q_temp;  
            end if;
        end if;
    end process;

    q <= q_temp; 
end upcounter_arch;

--vhdl code for and gate
library ieee;
use ieee.std_logic_1164.all;

entity and_gate is
    port (
        a, b: in std_logic;
        z: out std_logic
    );
end and_gate;

architecture and_arch of and_gate is
begin
    z <= a and b;
end and_arch;

library ieee;
use ieee.std_logic_1164.all;

entity up_counter is
    port (
        clk, rst: in std_logic;
        q: out std_logic_vector(2 downto 0)
    );
end up_counter;

architecture up_counter_arch of up_counter is
    component and_gate is 
        port (
            a, b: in std_logic;
            z: out std_logic
        );
    end component and_gate;

    component upcounter is
        port (
            t, clk, rst: in std_logic;
            q: out std_logic
        );
    end component upcounter;

    signal qa, qb, qc, tc: std_logic;

begin
    t1: upcounter port map (t=>'1', clk=>clk, rst=>rst, q=>qa);
    t2: upcounter port map (t=>qa, clk=>clk, rst=>rst, q=>qb);
    a1: and_gate port map (a=>qa, b=>qb, z=>tc);
    t3: upcounter port map (t=>tc, clk=>clk, rst=>rst, q=>q(2));
    q(0) <= '1' when qa = '1' else '0';
    q(1) <= '1' when qb = '1' else '0';
end up_counter_arch;