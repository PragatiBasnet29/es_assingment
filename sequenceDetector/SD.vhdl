-- library ieee;
-- use ieee.std_logic_1164.all;

-- entity sequence is
-- port (
--     clk: in std_logic;
--     rst: in std_logic;
--     a: in std_logic;
--     z: out std_logic
-- );
-- end sequence;

-- architecture seq_arch of sequence is
--     type state is (q0, q1, q2, q3, q4);
--     signal currentstate, nextstate: state;

-- begin

-- seq_proc: process(clk, rst) is
-- begin

-- if rst = '1' then
--     currentstate <= q0;
-- elsif rising_edge(clk) then
--     currentstate <= nextstate;
-- end if;

-- end process seq_proc;


-- comb_proc: process(currentstate, a) is
-- begin

-- case currentstate is

--     when q0 =>
--     if a = '1' then
--    -- "1"
--         nextstate <= q1;
--     else
--         neatstate <= q0;
--     end if;
    
--     when q1 =>
--     if a = '0' then
--     -- "10"
--         nextstate <= q2;
--     else
--         nextstate <= q1;
--     end if;  
    
--     when q2 => 
--     if a = '1' then
--    -- "101"
--         nextstate <= q3;
--     else
--         nextstate <= q0;
--     end if;  
    
--     when q3 =>
--     if a = '1' then
--     -- "1011"
--         nextstate <= q4;
--     else
--         nextstate <= q0;
--     end if; 
 
--     when q4 =>
--     if a = '0' then
--         nextstate <= q0;
--     else
--         nextstate <= q1;
--     end if;

-- end case;
-- end process comb_proc;

-- -- Output logic of the Sequence Detector
-- out_proc: process(currentstate) is
-- begin 
--     case currentstate is
--     when q0 =>
--     z <= '0';
    
--     when q1 =>
--     z <= '0'; 
 
--     when q2 => 
--     z <= '0'; 
 
--     when q3 =>
--     z <= '0'; 
 
--     when q4 =>
--     z <= '1';
    
--     end case;
-- end process out_proc;
-- end seq_arch;


library ieee;
use ieee.std_logic_1164.all;

entity my_sequence is
    port (
        clk: in std_logic;
        rst: in std_logic;
        a: in std_logic;
        z: out std_logic
    );
end my_sequence;

architecture seq_arch of my_sequence is
    type state is (q0, q1, q2, q3, q4);
    signal currentstate, nextstate: state;

begin

seq_proc: process(clk, rst) is
begin

if rst = '1' then
    currentstate <= q0;
elsif rising_edge(clk) then
    currentstate <= nextstate;
end if;

end process seq_proc;


comb_proc: process(currentstate, a) is
begin

case currentstate is

    when q0 =>
    if a = '1' then
        nextstate <= q1;
    else
        nextstate <= q0;
    end if;
    
    when q1 =>
    if a = '0' then
        nextstate <= q2;
    else
        nextstate <= q1;
    end if;  
    
    when q2 => 
    if a = '1' then
        nextstate <= q3;
    else
        nextstate <= q0;
    end if;  
    
    when q3 =>
    if a = '1' then
        nextstate <= q4;
    else
        nextstate <= q0;
    end if; 
 
    when q4 =>
    if a = '0' then
        nextstate <= q0;
    else
        nextstate <= q1;
    end if;

end case;
end process comb_proc;

-- Output logic of the Sequence Detector
out_proc: process(currentstate) is
begin 
    case currentstate is
    when q0 =>
    z <= '0';
    
    when q1 =>
    z <= '0'; 
 
    when q2 => 
    z <= '0'; 
 
    when q3 =>
    z <= '0'; 
 
    when q4 =>
    z <= '1';
    
    end case;
end process out_proc;
end seq_arch;
