module clk_divider_1Hz(input clk,output clk_out);
reg clk_1Hz=0;
integer counterClk_1Hz=0;

always @ (posedge clk)
begin
if (counterClk_1Hz!=50000000-1)//dividerClock=(Freq_in/Freq_out)/2-1
counterClk_1Hz<=counterClk_1Hz+1;
else
begin
counterClk_1Hz<=0;
clk_1Hz<=~clk_1Hz;
end
end
assign clk_out=clk_1Hz;
endmodule