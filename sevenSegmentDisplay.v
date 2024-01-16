module sevenSegmentDisplay(clk,value,sevenSegment,anode);
input clk;
input [3:0] value;
output reg [6:0] sevenSegment;
wire [6:0] sevenSegment0,sevenSegment1,sevenSegment2,sevenSegment3,sevenSegment4;
output reg [7:0] anode;
reg [2:0] anodeCheck=0;

reg Clk_500Hz=0;
integer counterClk_500Hz=0;



always @ (posedge clk)
begin
if (counterClk_500Hz!=100000-1)//dividerClock=(Freq_in/Freq_out)/2-1
counterClk_500Hz<=counterClk_500Hz+1;//add 1 for pulses
else
begin
counterClk_500Hz<=0;
Clk_500Hz<=~Clk_500Hz;
end
end
Decoder D0(.value({1'b0,1'b0,1'b0,value[0]}),.Segment(sevenSegment0));
Decoder D1(.value({1'b0,1'b0,1'b0,value[1]}),.Segment(sevenSegment1));
Decoder D2(.value({1'b0,1'b0,1'b0,value[2]}),.Segment(sevenSegment2));
Decoder D3(.value({1'b0,1'b0,1'b0,value[3]}),.Segment(sevenSegment3));
Decoder D4(.value(value),.Segment(sevenSegment4));

always @ (posedge Clk_500Hz)
begin
if (anodeCheck==3'b000)
begin
anode<=8'b11111110;
sevenSegment<=sevenSegment0;
anodeCheck<=3'b001;
end
else if (anodeCheck==3'b001)
begin
anode<=8'b11111101;
sevenSegment<=sevenSegment1;
anodeCheck<=3'b010;
end
else if (anodeCheck==3'b010)
begin
anode<=8'b11111011;
sevenSegment<=sevenSegment2;
anodeCheck<=3'b011;
end
else if (anodeCheck==3'b011)
begin
anode<=8'b11110111;
sevenSegment<=sevenSegment3;
anodeCheck<=3'b100;
end
else if (anodeCheck==3'b100)
begin
anode<=8'b11101111;
sevenSegment<=sevenSegment4;
anodeCheck<=3'b000;
end
end
endmodule
