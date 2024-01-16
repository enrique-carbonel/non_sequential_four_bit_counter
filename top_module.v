module top_module(input clk,PBC,SW15,output [6:0] sevenSegment,output [7:0] anode);
wire clk_1second;
wire [3:0] value;
clk_divider_1Hz clkDivider1Second(.clk(clk),.clk_out(clk_1second));
counter Counter(.clk(clk_1second),.PBC(PBC),.SW15(SW15),.value(value));
sevenSegmentDisplay SegmentDisplay(.clk(clk),.value(value),.sevenSegment(sevenSegment),.anode(anode));
endmodule