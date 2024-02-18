LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY T_flipflop
    IS
    PORT (
        T, CLK, RST : IN STD_LOGIC;
        Q : OUT STD_LOGIC);
END T_flipflop
;

ARCHITECTURE T_flipflop
    OF T_flipflop
    IS
    SIGNAL Q_temp : STD_LOGIC;
BEGIN
    PROCESS (CLK, RST)
    BEGIN
        IF RST = '1' THEN
            Q_temp <= '0';
        ELSIF rising_edge(CLK) THEN
            IF T = '1' THEN
                Q_temp <= NOT Q_temp;
            ELSE
                Q_temp <= Q_temp;
            END IF;
        END IF;
    END PROCESS;

    Q <= Q_temp;
END T_flipflop
;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY AND_G IS
    PORT (
        A, B : IN STD_LOGIC;
        Z : OUT STD_LOGIC);
END AND_G;

ARCHITECTURE AND_G OF AND_G IS
BEGIN
    Z <= A AND B;

END AND_G;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY up_counter IS
    PORT (
        CLK, RST : IN STD_LOGIC;
        Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END up_counter;

ARCHITECTURE up_counter OF up_counter IS
    COMPONENT AND_G IS
        PORT (
            A, B : IN STD_LOGIC;
            Z : OUT STD_LOGIC);
    END COMPONENT AND_G;

    COMPONENT T_flipflop
        IS
        PORT (
            T, CLK, RST : IN STD_LOGIC;
            Q : OUT STD_LOGIC);
    END COMPONENT T_flipflop
    ;
    SIGNAL QA, QB, QC, TC : STD_LOGIC;

BEGIN
    T1 : T_flipflop
    PORT MAP(T => '1', CLK => CLK, RST => RST, Q => QA);
    T2 : T_flipflop
    PORT MAP(T => QA, CLK => CLK, RST => RST, Q => QB);
    A1 : AND_G PORT MAP(A => QA, B => QB, Z => TC);
    T3 : T_flipflop
    PORT MAP(T => TC, CLK => CLK, RST => RST, Q => Q(2));
    Q(0) <= '1' WHEN QA = '1' ELSE
    '0';
    Q(1) <= '1' WHEN QB = '1' ELSE
    '0';

END up_counter;