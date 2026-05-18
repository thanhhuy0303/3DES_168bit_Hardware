library verilog;
use verilog.vl_types.all;
entity DES_deep_round is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        L_in            : in     vl_logic_vector(31 downto 0);
        R_in            : in     vl_logic_vector(31 downto 0);
        K               : in     vl_logic_vector(47 downto 0);
        valid_in        : in     vl_logic;
        L_out           : out    vl_logic_vector(31 downto 0);
        R_out           : out    vl_logic_vector(31 downto 0);
        valid_out       : out    vl_logic
    );
end DES_deep_round;
