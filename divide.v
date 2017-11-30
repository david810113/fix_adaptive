`timescale 1ns/1ps
module divdiv ( dividend, divisor,weight_pre, clk, rstn, enable, result);

input	[28:0] dividend;
input	[28:0] divisor;
input 	[15:0] weight_pre;
input	clk;
input	rstn;
input	enable;


output	reg[15:0]result;


/////////////////////////////////////////////////////////
// result = dividend / divisor
//
// If input bus width is 32 bits, clk needs 32 cycles
// inputing data while enable = 0
// Calculating while enable = 1
// Keeping result while enable = 0 
// This source code is proveded by kuiliang 2017/10/17
///////////////////////////////////////////////////////
reg [28:0]temp;
reg [28:0]temp1;
reg [15:0]weight_temp;
reg [13:0]counter;
reg [15:0]result_pre;

always@(posedge clk or negedge rstn)
begin
	if (!rstn) 
		temp <=  29'd0;
	else if (enable && (temp >= divisor))
		temp <=  temp - divisor;
	else if (enable)
		temp <=  temp;
	else if (dividend[28]==1)
		temp <=  ~dividend+1'b1;
	else if (dividend[28]==0)
		temp <=  dividend;
	else
		temp <= dividend;
end
always@(posedge clk or negedge rstn)
begin
	if (!rstn) 
		temp1 <=  29'd0;
	else if (enable)
		temp1 <=  temp1;
	else
		temp1 <= dividend;
end
always@(posedge clk or negedge rstn)
begin
	if (!rstn) 
		weight_temp <=  16'd0;
	else if (enable==0)
		weight_temp <=  weight_pre;
	else
		weight_temp <= weight_temp;
end
always@(posedge clk or negedge rstn)
begin
	if (!rstn) 
		counter <=  14'd0;
	else if (enable && (temp >= divisor) )
		counter <=  counter + 14'd1;
	else if (enable)
		counter <=  counter;
	else
		counter <=  14'd0;
end

always@(posedge clk or negedge rstn)
begin
	if (!rstn) 
		result_pre <=  16'd0;
	else if ( enable )
		result_pre <=  counter;
	else 
		result_pre <=  result_pre;
end
reg result_ok;
always@(posedge clk or negedge rstn)
begin
	if (!rstn) 
		result_ok <=  1'b0;
	else if (temp < divisor)
		result_ok <=  1'b1;
	else 
		result_ok <=  1'b0;
end

always@(posedge clk or negedge rstn)
begin
	if (!rstn) 
		result <=  16'b0;
	else if (result_ok==1'b1&&temp1[28]==1'b1&&enable==1'b1)
		result <=  weight_temp-result_pre;
	else if (result_ok==1'b1&&temp1[28]==1'b0&&enable==1'b1)
		result <=  weight_temp+result_pre;
	else 
		result <=  result;
end


//assign result =(div_state==1)?result_pre:result;
//assign div_state = (temp <divisor)? 1'b1:1'b0;
endmodule
