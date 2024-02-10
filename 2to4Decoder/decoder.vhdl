library ieee;
use ieee.std_logic_1164.all;

entity my_decoder is 
    port(
        in_1, in_0, enable: in std_logic;
        out_3, out_2, out_1, out_0: out std_logic
    );
end my_decoder;

architecture decoder_arch of my_decoder is 
begin
    out_3 <= enable and in_1 and in_0;
    out_2 <= enable and in_1 and (not in_0);
    out_1 <= enable and (not in_1) and in_0;
    out_0 <= enable and (not in_1) and (not in_0);
end decoder_arch;

