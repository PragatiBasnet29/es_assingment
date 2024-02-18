LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY counter_tb IS
END counter_tb;

ARCHITECTURE counter_tb OF counter_tb IS
	COMPONENT up_counter IS
		PORT (
			CLK, RST : IN STD_LOGIC;
			Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
	END COMPONENT up_counter;

	SIGNAL CLK, RST : STD_LOGIC := '0';
	SIGNAL Q : STD_LOGIC_VECTOR(2 DOWNTO 0);

BEGIN
	counter1 : up_counter PORT MAP(CLK => CLK, RST => RST, Q => Q);
	PROCESS
	BEGIN
		CLK <= '0';
		WAIT FOR 5 ns;
		CLK <= '1';
		WAIT FOR 5 ns;
	END PROCESS;

	PROCESS
	BEGIN
		RST <= '1';
		WAIT FOR 10 ns;
		RST <= '0';
		WAIT FOR 80 ns;
	END PROCESS;

END counter_tb;