library verilog;
use verilog.vl_types.all;
entity Initial_Permutation is
    port(
        \in\            : in     vl_logic_vector(63 downto 0);
        \out\           : out    vl_logic_vector(63 downto 0)
    );
end Initial_Permutation;
