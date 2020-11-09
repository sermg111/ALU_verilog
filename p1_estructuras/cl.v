module cl(output wire out, input wire a, b, input wire [1:0] s);
    wire s_and, s_or, s_xor, s_not;

    and puerta_and(s_and, a, b);
    or  puerta_or(s_or, a, b);
    xor puerta_xor(s_xor, a, b);
    not puerta_not(s_not, a, b);

    mux4_1 mi_mux(out, s_and, s_or, s_xor, s_not, s);
endmodule