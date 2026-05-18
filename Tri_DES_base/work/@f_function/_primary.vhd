library verilog;
use verilog.vl_types.all;
entity F_function is
    port(
        R               : in     vl_logic_vector(31 downto 0);
        K               : in     vl_logic_vector(47 downto 0);
        F_out           : out    vl_logic_vector(31 downto 0)
    );
end F_function;
