`timescale 1ns/1ns
`include "decodificador.v"

module decodificador_tb;

    reg [2:0] A;
    reg E; 
    wire [7:0] S;

    decodificador uut(A, E, S);

    initial begin
        $dumpfile("decodificador_tb.vcd");
        $dumpvars(0, decodificador_tb);

        E = 1;
        A = 3'b000; #20;
        A = 3'b001; #20;
        A = 3'b010; #20;
        A = 3'b011; #20;
        A = 3'b100; #20;
        A = 3'b101; #20;
        A = 3'b110; #20;
        A = 3'b111; #20; 
        E = 0; #20;
        $display("Teste completo");
    end

endmodule