module counter(input clk,PBC,SW15, output [3:0] value);
reg [3:0] Data;
initial
Data = 4'b0001;
always @(posedge clk,posedge PBC)
begin
if (SW15==1'b0 && PBC==1'b1)
case (Data)
4'b0001 : Data <= 4'b0011;
4'b0011 : Data <= 4'b0111;
4'b0111 : Data <= 4'b1010;
4'b1010 : Data <= 4'b1100;
4'b1100 : Data <= 4'b1111;
4'b1111 : Data <= 4'b0010;
4'b0010 : Data <= 4'b1001;
4'b1001 : Data <= 4'b0001; 
default : Data <= 4'b0001;
endcase
else
case (Data)
4'b0001 : Data <= 4'b0011;
4'b0011 : Data <= 4'b0111;
4'b0111 : Data <= 4'b1010;
4'b1010 : Data <= 4'b1100;
4'b1100 : Data <= 4'b1111;
4'b1111 : Data <= 4'b0010;
4'b0010 : Data <= 4'b1001;
4'b1001 : Data <= 4'b0001; 
default : Data <= 4'b0001;
endcase
end
assign value=Data;
endmodule