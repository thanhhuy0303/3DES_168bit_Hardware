library verilog;
use verilog.vl_types.all;
entity SP_box is
    port(
        \in\            : in     vl_logic_vector(47 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end SP_box;
