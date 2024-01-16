module Decoder(input [3:0] value, output reg [6:0] Segment);
always @(*)
begin
case (value)
4'b0000 : Segment=7'b0000001;
4'b0001 : Segment=7'b1001111;
4'b0010 : Segment=7'b0010010;
4'b0011 : Segment=7'b0000110;
4'b0100 : Segment=7'b1001100;
4'b0101 : Segment=7'b0100100;
4'b0110 : Segment=7'b0100000;
4'b0111 : Segment=7'b0001111;
4'b1000 : Segment=7'b0000000;
4'b1001 : Segment=7'b0000100;
4'b1010 : Segment=7'b0001000;
4'b1011 : Segment=7'b1100000;
4'b1100 : Segment=7'b1110010;
4'b1101 : Segment=7'b1000010;
4'b1110 : Segment=7'b0110000;
4'b1111 : Segment=7'b0111000;
default : Segment=7'b1111111;
endcase
end 
endmodule 