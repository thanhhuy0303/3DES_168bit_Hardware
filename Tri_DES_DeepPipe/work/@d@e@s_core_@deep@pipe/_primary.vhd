library verilog;
use verilog.vl_types.all;
entity DES_core_DeepPipe is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        plaintext       : in     vl_logic_vector(63 downto 0);
        valid_in        : in     vl_logic;
        ciphertext      : out    vl_logic_vector(63 downto 0);
        valid_out       : out    vl_logic;
        key             : in     vl_logic_vector(63 downto 0);
        mode            : in     vl_logic
    );
end DES_core_DeepPipe;
