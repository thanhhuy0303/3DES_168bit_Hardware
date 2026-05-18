module F_function (
    input [31:0] R,
    input [47:0] K,
    output [31:0] F_out
);

wire [47:0] expanded_R;
wire [47:0] xor_result;
wire [31:0] s_box_out;

// Goi Expansion module de mo rong R tu 32 bit thanh 48 bit
Expansion expansion_inst (
    .in(R),
    .out(expanded_R)
);

//XOR expanded_R voi subkey K de tao ra input cho S_box
assign xor_result = expanded_R ^ K;

// Goi S_box module de thuc hien hoat dong substitution
S_box s_box_inst (
    .in(xor_result),
    .out(s_box_out)
);

// Goi P_box module de thuc hien hoat dong permutation
P_box p_box_inst (
    .in(s_box_out),
    .out(F_out)
);


endmodule