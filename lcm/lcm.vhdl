-- library  ieee;
-- use ieee.std_logic_1164.all;

-- entity lcm is
-- 	port(rst, clk : in std_logic;
-- 	    a, b : in integer;
-- 	    LCM : out integer);
-- end lcm;

-- architecture lcm_arch of lcm is
-- type state is (start, input, output, check, check1,update_x,  update_y);
-- signal current_state, next_state: state;
-- begin
-- state_reg:Process(clk, rst)
-- BEGIN
-- 	IF(rst = '1') THEN
-- 		current_state <= start;
-- 	ELSIF(rising_edge(clk)) THEN
-- 		current_state <= next_state;
-- 	END IF;
-- end process;
-- compute:Process(a, b, current_state)
-- variable  z, x, y, r, p : integer;
-- begin
-- 	case current_state IS 
-- 		WHEN start =>
-- 			next_state <= input;
-- 		WHEN input =>
-- 			x:= a;
-- 			y:= b;
-- 			z := x * y;
-- 			next_state <= check;
-- 		WHEN check =>
-- 			if(x< y) THEN
-- 				next_state <= update_x;
-- 			else
-- 				next_state <= update_y;
-- 			END IF;
-- 			next_state <= check1;
-- 		WHEN  check1 =>
-- 			while y /= 0 loop
-- 				r:= x mod y;
-- 				x:= y;
-- 				y:= r;
-- 			end loop;
-- 			next_state <= output;
-- 		WHEN update_x =>
-- 			p:=x;
-- 			x:=y;
-- 			y:=p;
-- 		when update_y =>
-- 			x:=x;
-- 			y:=y;
-- 		WHEN output =>
-- 			LCM <= z / x;	
-- 			next_state <= start;
-- 		WHEN others =>
-- 			next_state <= start;
-- 	end case;
-- end process compute;
-- end lcm_arch;

library ieee;
use ieee.std_logic_1164.all;

entity my_lcm is
    port (
        rst, clk : in std_logic;
        input_a, input_b : in integer;
        lcm_result : out integer
    );
end my_lcm;

architecture lcm_arch of my_lcm is
    type state is (start, input, output, check, check1, update_x, update_y);
    signal current_state, next_state: state;
begin
    state_reg: process(clk, rst)
    begin
        if rst = '1' then
            current_state <= start;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process state_reg;

    compute: process(input_a, input_b, current_state)
        variable z, x, y, r, p : integer;
    begin
        case current_state is 
            when start =>
                next_state <= input;
            when input =>
                x := input_a;
                y := input_b;
                z := x * y;
                next_state <= check;
            when check =>
                if x < y then
                    next_state <= update_x;
                else
                    next_state <= update_y;
                end if;
                next_state <= check1;
            when check1 =>
                while y /= 0 loop
                    r := x mod y;
                    x := y;
                    y := r;
                end loop;
                next_state <= output;
            when update_x =>
                p := x;
                x := y;
                y := p;
            when update_y =>
                x := x;
                y := y;
            when output =>
                lcm_result <= z / x;
                next_state <= start;
            when others =>
                next_state <= start;
        end case;
    end process compute;
end lcm_arch;
