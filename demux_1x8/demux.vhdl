library ieee;
use ieee.std_logic_1164.all;

entity my_demux is
port(
    in_a, sel2, sel1, sel0: in std_logic;
    out7, out6, out5, out4, out3, out2, out1, out0: out std_logic
);
end my_demux;

architecture demux_arch of my_demux is
begin
    out7 <= sel0 and sel1 and sel2 and in_a;
    out6 <= (not sel0) and sel1 and sel2 and in_a;
    out5 <= sel0 and (not sel1) and sel2 and in_a;
    out4 <= (not sel0) and (not sel1) and sel2 and in_a;
    out3 <= sel0 and sel1 and (not sel1) and in_a;
    out2 <= (not sel0) and sel1 and (not sel2) and in_a;
    out1 <= sel0 and (not sel1) and (not sel2) and in_a;
    out0 <= (not sel0) and (not sel1) and (not sel2) and in_a;
end demux_arch;
