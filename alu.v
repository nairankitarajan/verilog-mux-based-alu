module alu (
    input [3:0] A,
    input [3:0] B,
    input [2:0] sel,
    output reg [3:0] Y
);

// sel encoding: 000-ADD, 001-SUB, 010-AND, 011-OR, 100-XOR
always @(*) begin
    case (sel)
        3'b000: Y = A + B;
        3'b001: Y = A - B;
        3'b010: Y = A & B;
        3'b011: Y = A | B;
        3'b100: Y = A ^ B;
        default: Y = 4'b0000;
    endcase
end

endmodule