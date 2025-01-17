module up_counter(input clk, 
						input reset, 
						output[3:0] counter);

reg [3:0] counter_up;

always @(posedge clk or posedge reset)
begin
if(reset)
 counter_up <= 4'd0;
else
 counter_up <= counter_up + 4'd1;
end 
assign counter = counter_up;
endmodule