module \2to4_Decoder (

   input wire [1:0] in,
   output reg [3:0] out

);

always @ (in)
begin
    case (in)
        2'b00: out = 4'b0001;
        2'b01: out = 4'b0010;
        2'b10: out = 4'b0100;
        2'b11: out = 4'b1000;
        default: out = 4'b0000; // Default case (optional)
    endcase
end

endmodule // \2to4_Decoder 