library	IEEE;
use	IEEE.std_logic_1164.all;

entity	FA_test	is
end	FA_test;

architecture	test_bench	of	FA_test	is
component	full_adder	is
Port	
(
    a,b,cin	:	in	STD_LOGIC;
	s,c	:	out	STD_LOGIC);
end	component	full_adder;

signal	a,b,cin,s,c:	STD_LOGIC;

begin

uut	:	full_adder	port	map(
a=>a,	b=>b,
cin=>cin,s=>s,c=>c);

stim:	process
begin
a<='0';
b<='0';
cin<='0';
wait	for	10	ns;

a<='0';
b<='0';
cin<='1';
wait	for	10	ns;

a<='0';
b<='1';
cin<='0';
wait	for	10	ns;

a<='0';
b<='1';
cin<='1';
wait	for	10	ns;
	wait;

end	process;
end	test_bench;



-- library IEEE;
-- use IEEE.STD_LOGIC_1164.ALL;

-- entity my_full_adder_tb is
-- end my_full_adder_tb;

-- architecture tb_arch of my_full_adder_tb is
--     component my_full_adder is
--         port (
--             input_a, input_b, cin : in STD_LOGIC;
--             sum, cout : out STD_LOGIC
--         );
--     end component my_full_adder;

--     signal input_a_tb, input_b_tb, cin_tb : STD_LOGIC := '0';
--     signal sum_tb, cout_tb : STD_LOGIC;
-- begin
--     dut: my_full_adder port map (input_a => input_a_tb, input_b => input_b_tb, cin => cin_tb, sum => sum_tb, cout => cout_tb);

--     stimulus_proc: process
--     begin
--         input_a_tb <= '0';
--         input_b_tb <= '0';
--         cin_tb <= '0';
--         wait for 10 ns;
        
--         input_a_tb <= '0';
--         input_b_tb <= '0';
--         cin_tb <= '1';
--         wait for 10 ns;
        
--         input_a_tb <= '0';
--         input_b_tb <= '1';
--         cin_tb <= '0';
--         wait for 10 ns;
        
--         input_a_tb <= '0';
--         input_b_tb <= '1';
--         cin_tb <= '1';
--         wait for 10 ns;
        
--         wait;
--     end process;
-- end tb_arch;
