`timescale 1ns/1ps
module testbench;

reg [3:0] A, B;
reg [2:0] sel;
wire [3:0] Y;

alu uut (.A(A), .B(B), .sel(sel), .Y(Y));

initial begin
    $display("A B SEL | Y");
    
    A = 4'b0101; B = 4'b0011; sel = 3'b000; #10; // ADD
    $display("%b %b %b | %b", A, B, sel, Y);
    
    sel = 3'b001; #10; // SUB
    $display("%b %b %b | %b", A, B, sel, Y);
    
    sel = 3'b010; #10; // AND
    $display("%b %b %b | %b", A, B, sel, Y);
    
    sel = 3'b011; #10; // OR
    $display("%b %b %b | %b", A, B, sel, Y);
    
    sel = 3'b100; #10; // XOR
    $display("%b %b %b | %b", A, B, sel, Y);
    
    $finish;
end

endmodule