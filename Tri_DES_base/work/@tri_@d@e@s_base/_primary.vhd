library verilog;
use verilog.vl_types.all;
entity Tri_DES_base is
    port(
        clk             : in     vl_logic;
        start           : in     vl_logic;
        rst             : in     vl_logic;
        mode            : in     vl_logic;
        plaintext       : in     vl_logic_vector(63 downto 0);
        key_1           : in     vl_logic_vector(63 downto 0);
        key_2           : in     vl_logic_vector(63 downto 0);
        key_3           : in     vl_logic_vector(63 downto 0);
        done            : out    vl_logic;
        ciphertext      : out    vl_logic_vector(63 downto 0)
    );
end Tri_DES_base;
