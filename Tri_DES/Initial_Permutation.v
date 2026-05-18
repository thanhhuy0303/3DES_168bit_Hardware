module Initial_Permutation  
(
    input [63:0] in,
    output [63:0] out
);

/* reg [5:0] IP_table [63:0];
initial begin
    IP_table[0] = 58;  IP_table[1] = 50;  IP_table[2] = 42;  IP_table[3] = 34;  IP_table[4] = 26;  IP_table[5] = 18;  IP_table[6] = 10;  IP_table[7] = 2;
    IP_table[8] = 60;  IP_table[9] = 52;  IP_table[10] = 44; IP_table[11] = 36; IP_table[12] = 28; IP_table[13] = 20; IP_table[14] = 12; IP_table[15] = 4;
    IP_table[16] = 62; IP_table[17] = 54; IP_table[18] = 46; IP_table[19] = 38; IP_table[20] = 30; IP_table[21] = 22; IP_table[22] = 14; IP_table[23] = 6;
    IP_table[24] = 64; IP_table[25] = 56; IP_table[26] = 48; IP_table[27] = 40; IP_table[28] = 32; IP_table[29] = 24; IP_table[30] = 16; IP_table[31] = 8;
    IP_table[32] = 57; IP_table[33] = 49; IP_table[34] = 41; IP_table[35] = 33; IP_table[36] = 25; IP_table[37] = 17; IP_table[38] = 9;  IP_table[39] = 1;
    IP_table[40] = 59; IP_table[41] = 51; IP_table[42] = 43; IP_table[43] = 35; IP_table[44] = 27; IP_table[45] = 19; IP_table[46] = 11; IP_table[47] = 3;
    IP_table[48] = 61; IP_table[49] = 53; IP_table[50] = 45; IP_table[51] = 37; IP_table[52] = 29; IP_table[53] = 21; IP_table[54] = 13; IP_table[55] = 5;
    IP_table[56] = 63; IP_table[57] = 55; IP_table[58] = 47; IP_table[59] = 39; IP_table[60] = 31; IP_table[61] = 23; IP_table[62] = 15; IP_table[63] = 7;
end

genvar i;
generate
    for (i=63; i>=0; i=i-1) begin : gen_ip
        assign out[i] = in[64 - IP_table[63-i]];
    end
endgenerate */

// Cong thuc hoan vi ban dau: out[i] = in[64 - IP_table[63-i]]
// index     63 62 61 60 59 58 57 56                63 62 61 60 59 58 57 56

// IP table: 58 50 42 34 26 18 10 2                 1  2  3  4  5  6  7  8
//           60 52 44 36 28 20 12 4                 9  10 11 12 13 14 15 16
//           62 54 46 38 30 22 14 6                 17 18 19 20 21 22 23 24
//           64 56 48 40 32 24 16 8                 25 26 27 28 29 30 31 32
//           57 49 41 33 25 17  9 1                 33 34 35 36 37 38 39 40
//           59 51 43 35 27 19 11 3                 41 42 43 44 45 46 47 48
//           61 53 45 37 29 21 13 5                 49 50 51 52 53 54 55 56
//           63 55 47 39 31 23 15 7                 57 58 59 60 61 62 63 64

// index     7  6  5  4  3  2  1  0                  7  6  5  4  3  2  1  0
assign out[63] = in[64-58];
assign out[62] = in[64-50];
assign out[61] = in[64-42];
assign out[60] = in[64-34];
assign out[59] = in[64-26];
assign out[58] = in[64-18];
assign out[57] = in[64-10];
assign out[56] = in[64-2];

assign out[55] = in[64-60];
assign out[54] = in[64-52];
assign out[53] = in[64-44];
assign out[52] = in[64-36];
assign out[51] = in[64-28];
assign out[50] = in[64-20];
assign out[49] = in[64-12];
assign out[48] = in[64-4];

assign out[47] = in[64-62];
assign out[46] = in[64-54];
assign out[45] = in[64-46];
assign out[44] = in[64-38];
assign out[43] = in[64-30];
assign out[42] = in[64-22];
assign out[41] = in[64-14];
assign out[40] = in[64-6];

assign out[39] = in[64-64];
assign out[38] = in[64-56];
assign out[37] = in[64-48];
assign out[36] = in[64-40];
assign out[35] = in[64-32];
assign out[34] = in[64-24];
assign out[33] = in[64-16];
assign out[32] = in[64-8];

assign out[31] = in[64-57];
assign out[30] = in[64-49];
assign out[29] = in[64-41];
assign out[28] = in[64-33];
assign out[27] = in[64-25];
assign out[26] = in[64-17];
assign out[25] = in[64-9];
assign out[24] = in[64-1];

assign out[23] = in[64-59];
assign out[22] = in[64-51];
assign out[21] = in[64-43];
assign out[20] = in[64-35];
assign out[19] = in[64-27];
assign out[18] = in[64-19];
assign out[17] = in[64-11];
assign out[16] = in[64-3];

assign out[15] = in[64-61];
assign out[14] = in[64-53];
assign out[13] = in[64-45];
assign out[12] = in[64-37];
assign out[11] = in[64-29];
assign out[10] = in[64-21];
assign out[9] = in[64-13];
assign out[8] = in[64-5];

assign out[7] = in[64-63];
assign out[6] = in[64-55];
assign out[5] = in[64-47];
assign out[4] = in[64-39];
assign out[3] = in[64-31];
assign out[2] = in[64-23];
assign out[1] = in[64-15];
assign out[0] = in[64-7];

endmodule