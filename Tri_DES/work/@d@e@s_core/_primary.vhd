library verilog;
use verilog.vl_types.all;
entity DES_core is
    port(
        clk             : in     vl_logic;
        start           : in     vl_logic;
        rst             : in     vl_logic;
        mode            : in     vl_logic;
        plaintext       : in     vl_logic_vector(63 downto 0);
        key             : in     vl_logic_vector(63 downto 0);
        done            : out    vl_logic;
        ciphertext      : out    vl_logic_vector(63 downto 0)
    );
end DES_core;
