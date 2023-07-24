module rom(
    input logic[3:0] addr,
    output logic[7:0] data
);

    always_comb begin
        case (addr)                         //addr      assembler
            4'b0000: data = 8'b0110_0000;   // 0        IN  B
            4'b0001: data = 8'b1001_0000;   // 1        OUT B      
            4'b0010: data = 8'b0011_1101;   // 2        MOV A, 13
            4'b0011: data = 8'b0000_0001;   // 3        ADD A, 1
            4'b0100: data = 8'b1110_0011;   // 4        JNC    3
            4'b0101: data = 8'b0101_0001;   // 5        ADD B, 1
            4'b0110: data = 8'b1110_0001;   // 6        JNC    1
            4'b0111: data = 8'b1001_0000;   // 7        OUT    0
            4'b1000: data = 8'b1001_1111;   // 8        OUT    15
            4'b1001: data = 8'b1111_0111;   // 9        JMP    7
            default: data = 8'b0000_0000;
        endcase
    end
endmodule