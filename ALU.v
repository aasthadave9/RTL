module ALU(
	input [31:0] a,
	input [31:0] b,
	input [3:0] alu_control,
	output reg [31:0] alu_result,
	output reg zero);
	
always @(a, b, alu_control)	
begin 
	case(alu_control)
		4'b0000: alu_result = a&b;
		4'b0001: alu_result = a | b;
		4'b0010: alu_result = a+b;
		4'b0100: alu_result = a-b;
		4'b1000: alu_result = (a<b? 1:0);
		default: alu_result=alu_result;
	endcase

	
	if (alu_result==0)
		zero=1;
	else
		zero=0;
end
endmodule
