LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY fa_test IS
END fa_test;

ARCHITECTURE test_bench OF fa_test IS
	COMPONENT full_adder IS
		PORT (
			A, B, Cin : IN STD_LOGIC;
			S, C : OUT STD_LOGIC);
	END COMPONENT full_adder;

	SIGNAL A, B, Cin, S, C : STD_LOGIC;

BEGIN

	uut : full_adder PORT MAP(
		A => A, B => B,
		Cin => Cin, S => S, C => C);

	stim : PROCESS
	BEGIN
		A <= '0';
		B <= '0';
		Cin <= '0';
		WAIT FOR 10 ns;

		A <= '0';
		B <= '0';
		Cin <= '1';
		WAIT FOR 10 ns;

		A <= '0';
		B <= '1';
		Cin <= '0';
		WAIT FOR 10 ns;

		A <= '0';
		B <= '1';
		Cin <= '1';
		WAIT FOR 10 ns;
		WAIT;

	END PROCESS;
END test_bench;