-- library ieee;
-- use ieee.std_logic_1164.all;

-- entity jk is
--     port(
--         j, k, clk, rst: in std_logic;
--         q, q_comp: out std_logic
--     );
-- end jk;

-- architecture jk_arch of jk is
-- begin
--     process(j, k, clk, rst) is
--         variable output: std_logic := '0';
--     begin
--         if (rst = '1') then
--             output := '0';
--         elsif (rising_edge(clk)) then
--             if (j /= k) then
--                 output := j;
--             elsif (j = '1' and k = '1') then
--                 output := not output;
--             end if;
--         end if;
--         q <= output;
--         q_comp <= not output;
--     end process;
-- end jk_arch;


library ieee;
use ieee.std_logic_1164.all;

entity my_jk is
    port (
        j, k, clk, rst: in std_logic;
        q, q_comp: out std_logic
    );
end my_jk;

architecture jk_arch of my_jk is
begin
    process(j, k, clk, rst) is
        variable output: std_logic := '0';
    begin
        if (rst = '1') then
            output := '0';
        elsif (rising_edge(clk)) then
            if (j /= k) then
                output := j;
            elsif (j = '1' and k = '1') then
                output := not output;
            end if;
        end if;
        q <= output;
        q_comp <= not output;
    end process;
end jk_arch;
