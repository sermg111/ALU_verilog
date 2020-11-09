module alu(output wire [3:0] R, output wire zero, carry, sign, input wire [3:0] A, B, input wire [1:0] ALUOp, input wire L);
    wire [3:0] s_muxA;
    wire [3:0] s_muxB;
    wire [3:0] s_compl1;
    wire [3:0] wire_zero = 0;
    wire op1_A, op1_B, Cin0, cpl;
    wire Cout0, Cout1, Cout2, Cout3;

    mux2_4 mux_opA(s_muxA, wire_zero, A, op1_A);
    mux2_4 mux_opB(s_muxB, A, B, op1_B);

    compl1 COMPL_a_1(s_compl1, s_muxB, cpl);

    cal cal0(R[0], Cout0, s_muxA[0], s_muxB[0], L, Cin0, ALUOp);
    cal cal1(R[1], Cout1, s_muxA[1], s_muxB[1], L, Cout0, ALUOp);
    cal cal2(R[2], Cout2, s_muxA[2], s_muxB[2], L, Cout1, ALUOp);
    cal cal3(R[3], Cout3, s_muxA[3], s_muxB[3], L, Cout2, ALUOp);


always @(ALUOp)
    if (L == 1) 
    begin
        case(ALUOp)
            2'b00: ;
            2'b01: ;
            2'b10: ;
            2'b11: ;
            default:    out = 1'bX;
        endcase
    end
    else if (L == 0)
    begin
        case(ALUOp)
            2'b00: ;
            2'b01: ;
            2'b10: ;
            2'b11: ;
            default:    out = 1'bX;
        endcase
    end

endmodule