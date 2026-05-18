library verilog;
use verilog.vl_types.all;
entity Key_schedule is
    port(
        key             : in     vl_logic_vector(63 downto 0);
        sub_key_0       : out    vl_logic_vector(47 downto 0);
        sub_key_1       : out    vl_logic_vector(47 downto 0);
        sub_key_2       : out    vl_logic_vector(47 downto 0);
        sub_key_3       : out    vl_logic_vector(47 downto 0);
        sub_key_4       : out    vl_logic_vector(47 downto 0);
        sub_key_5       : out    vl_logic_vector(47 downto 0);
        sub_key_6       : out    vl_logic_vector(47 downto 0);
        sub_key_7       : out    vl_logic_vector(47 downto 0);
        sub_key_8       : out    vl_logic_vector(47 downto 0);
        sub_key_9       : out    vl_logic_vector(47 downto 0);
        sub_key_10      : out    vl_logic_vector(47 downto 0);
        sub_key_11      : out    vl_logic_vector(47 downto 0);
        sub_key_12      : out    vl_logic_vector(47 downto 0);
        sub_key_13      : out    vl_logic_vector(47 downto 0);
        sub_key_14      : out    vl_logic_vector(47 downto 0);
        sub_key_15      : out    vl_logic_vector(47 downto 0)
    );
end Key_schedule;
