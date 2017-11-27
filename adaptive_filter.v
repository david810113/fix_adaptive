`timescale 1ns/1ps
module adaptive_filter(adap_filter_state,div_state, rstn, clk, reff_0, reff_1, reff_2, reff_3, reff_4, reff_5, reff_6, reff_7, reff_8, reff_9, reff_10, reff_11, reff_12, reff_13, reff_14, reff_15, reff_16, reff_17, reff_18, reff_19, reff_20, reff_21, reff_22, reff_23, reff_24, reff_25, reff_26, reff_27, reff_28, reff_29, reff_30, reff_31, reff_32, buffer_in_0, buffer_in_1, buffer_in_2, buffer_in_3, buffer_in_4, buffer_in_5, buffer_in_6, buffer_in_7, buffer_in_8, buffer_in_9, buffer_in_10, buffer_in_11, buffer_in_12, buffer_in_13, buffer_in_14, buffer_in_15, buffer_in_16, buffer_in_17, buffer_in_18, buffer_in_19, buffer_in_20, buffer_in_21, buffer_in_22, buffer_in_23, buffer_in_24, buffer_in_25, buffer_in_26, buffer_in_27, buffer_in_28, buffer_in_29, buffer_in_30, buffer_in_31, buffer_in_32, weight_in_0, weight_in_1, weight_in_2, weight_in_3, weight_in_4, weight_in_5, weight_in_6, weight_in_7, weight_in_8, weight_in_9, weight_in_10, weight_in_11, weight_in_12, weight_in_13, weight_in_14, weight_in_15, weight_in_16, weight_in_17, weight_in_18, weight_in_19, weight_in_20, weight_in_21, weight_in_22, weight_in_23, weight_in_24, weight_in_25, weight_in_26, weight_in_27, weight_in_28, weight_in_29, weight_in_30, weight_in_31, d, e,n);
input rstn, clk, adap_filter_state,div_state;

input [13:0] reff_0;
input [13:0] reff_1;
input [13:0] reff_2;
input [13:0] reff_3;
input [13:0] reff_4;
input [13:0] reff_5;
input [13:0] reff_6;
input [13:0] reff_7;
input [13:0] reff_8;
input [13:0] reff_9;
input [13:0] reff_10;
input [13:0] reff_11;
input [13:0] reff_12;
input [13:0] reff_13;
input [13:0] reff_14;
input [13:0] reff_15;
input [13:0] reff_16;
input [13:0] reff_17;
input [13:0] reff_18;
input [13:0] reff_19;
input [13:0] reff_20;
input [13:0] reff_21;
input [13:0] reff_22;
input [13:0] reff_23;
input [13:0] reff_24;
input [13:0] reff_25;
input [13:0] reff_26;
input [13:0] reff_27;
input [13:0] reff_28;
input [13:0] reff_29;
input [13:0] reff_30;
input [13:0] reff_31;
input [13:0] reff_32;

input [13:0] buffer_in_0;
input [13:0] buffer_in_1;
input [13:0] buffer_in_2;
input [13:0] buffer_in_3;
input [13:0] buffer_in_4;
input [13:0] buffer_in_5;
input [13:0] buffer_in_6;
input [13:0] buffer_in_7;
input [13:0] buffer_in_8;
input [13:0] buffer_in_9;
input [13:0] buffer_in_10;
input [13:0] buffer_in_11;
input [13:0] buffer_in_12;
input [13:0] buffer_in_13;
input [13:0] buffer_in_14;
input [13:0] buffer_in_15;
input [13:0] buffer_in_16;
input [13:0] buffer_in_17;
input [13:0] buffer_in_18;
input [13:0] buffer_in_19;
input [13:0] buffer_in_20;
input [13:0] buffer_in_21;
input [13:0] buffer_in_22;
input [13:0] buffer_in_23;
input [13:0] buffer_in_24;
input [13:0] buffer_in_25;
input [13:0] buffer_in_26;
input [13:0] buffer_in_27;
input [13:0] buffer_in_28;
input [13:0] buffer_in_29;
input [13:0] buffer_in_30;
input [13:0] buffer_in_31;
input [13:0] buffer_in_32;

input [31:0] weight_in_0;
input [31:0] weight_in_1;
input [31:0] weight_in_2;
input [31:0] weight_in_3;
input [31:0] weight_in_4;
input [31:0] weight_in_5;
input [31:0] weight_in_6;
input [31:0] weight_in_7;
input [31:0] weight_in_8;
input [31:0] weight_in_9;
input [31:0] weight_in_10;
input [31:0] weight_in_11;
input [31:0] weight_in_12;
input [31:0] weight_in_13;
input [31:0] weight_in_14;
input [31:0] weight_in_15;
input [31:0] weight_in_16;
input [31:0] weight_in_17;
input [31:0] weight_in_18;
input [31:0] weight_in_19;
input [31:0] weight_in_20;
input [31:0] weight_in_21;
input [31:0] weight_in_22;
input [31:0] weight_in_23;
input [31:0] weight_in_24;
input [31:0] weight_in_25;
input [31:0] weight_in_26;
input [31:0] weight_in_27;
input [31:0] weight_in_28;
input [31:0] weight_in_29;
input [31:0] weight_in_30;
input [31:0] weight_in_31;

output [31:0] n;
output reg [13:0] e;   
output [13:0] d ; 

wire [13:0] d;
reg [63:0] dreg;
reg [31:0] rreg;
reg [5:0]counter;
reg [5:0]counter1;

//********************** Counter ***********************//

always@(posedge clk or negedge rstn)
begin
if (rstn == 0)
	counter <=    6'd0;
else if (adap_filter_state == 1'b0)
	counter <=    6'd0;	
else if (counter == 6'd34)
	counter <=   counter;
else
	counter <=   counter + 1'd1;
end

wire div_state;
wire flag_15;
reg flag_n;
reg flag_16;


assign flag_15 = (counter == 6'd33) ? 1'd1 : 1'd0;


always@(posedge flag_15 or negedge rstn)
begin
if (rstn == 0)
	counter1 <=   6'd0;
	
else if(counter1<=6'd33)
	counter1 <=   counter1+6'b1;

else
	counter1<=counter1;
end
always@(posedge flag_15 or negedge rstn)
begin
if (rstn == 0)
	flag_n 	<=   6'd0;
	
else if(counter1>6'd33)
	flag_n 	<=  6'b1;

else
	flag_n	<=	flag_n;
end

always@(posedge clk or negedge rstn)
begin
if (rstn == 0)
	flag_16 <=   1'd0;
	
else
	flag_16 <=   flag_15;
end

assign flag_ok=(flag_15==1&&flag_n==1)?1'b1:1'b0;

reg [13:0] reff;
	always@(posedge clk or negedge rstn)
	begin
	if (rstn == 0)
		reff <=    14'd0;
	else	
		case (counter)
		6'd0      :	reff <=  reff_31;
		6'd1      :	reff <=  reff_30;
		6'd2      :	reff <=  reff_29;
		6'd3      :	reff <=  reff_28;
		6'd4      :	reff <=  reff_27;
		6'd5      :	reff <=  reff_26;
		6'd6      :	reff <=  reff_25;
		6'd7      :	reff <=  reff_24;
		6'd8      :	reff <=  reff_23;
		6'd9      :	reff <=  reff_22;
		6'd10      :	reff <=  reff_21;
		6'd11      :	reff <=  reff_20;
		6'd12      :	reff <=  reff_19;
		6'd13      :	reff <=  reff_18;
		6'd14      :	reff <=  reff_17;
		6'd15      :	reff <=  reff_16;
		6'd16      :	reff <=  reff_15;
		6'd17      :	reff <=  reff_14;
		6'd18      :	reff <=  reff_13;
		6'd19      :	reff <=  reff_12;
		6'd20      :	reff <=  reff_11;
		6'd21      :	reff <=  reff_10;
		6'd22      :	reff <=  reff_9;
		6'd23      :	reff <=  reff_8;
		6'd24      :	reff <=  reff_7;
		6'd25      :	reff <=  reff_6;
		6'd26      :	reff <=  reff_5;
		6'd27      :	reff <=  reff_4;
		6'd28      :	reff <=  reff_3;
		6'd29      :	reff <=  reff_2;
		6'd30      :	reff <=  reff_1;
		6'd31      :	reff <=  reff_0;
		default	   :	reff <=  14'd0;
		endcase
	end	
			
reg [31:0] weight_in;	
	always@(posedge clk or negedge rstn)
	begin
	if (rstn == 0)
		weight_in <=    32'd0;
	else	
		case (counter)
		6'd0      :	weight_in <= weight_in_31;
		6'd1      :	weight_in <= weight_in_30;
		6'd2      :	weight_in <= weight_in_29;
		6'd3      :	weight_in <= weight_in_28;
		6'd4      :	weight_in <= weight_in_27;
		6'd5      :	weight_in <= weight_in_26;
		6'd6      :	weight_in <= weight_in_25;
		6'd7      :	weight_in <= weight_in_24;
		6'd8      :	weight_in <= weight_in_23;
		6'd9      :	weight_in <= weight_in_22;
		6'd10      :	weight_in <= weight_in_21;
		6'd11      :	weight_in <= weight_in_20;
		6'd12      :	weight_in <= weight_in_19;
		6'd13      :	weight_in <= weight_in_18;
		6'd14      :	weight_in <= weight_in_17;
		6'd15      :	weight_in <= weight_in_16;
		6'd16      :	weight_in <= weight_in_15;
		6'd17      :	weight_in <= weight_in_14;
		6'd18      :	weight_in <= weight_in_13;
		6'd19      :	weight_in <= weight_in_12;
		6'd20      :	weight_in <= weight_in_11;
		6'd21      :	weight_in <= weight_in_10;
		6'd22      :	weight_in <= weight_in_9;
		6'd23      :	weight_in <= weight_in_8;
		6'd24      :	weight_in <= weight_in_7;
		6'd25      :	weight_in <= weight_in_6;
		6'd26      :	weight_in <= weight_in_5;
		6'd27      :	weight_in <= weight_in_4;
		6'd28      :	weight_in <= weight_in_3;
		6'd29      :	weight_in <= weight_in_2;
		6'd30      :	weight_in <= weight_in_1;
		6'd31      :	weight_in <= weight_in_0;
		default	   :	weight_in <=  32'd0;
		endcase
	end		

//********************** DSP ***********************//
reg [46:0] multiple;
reg [31:0] nref;
reg [31:0] n;
reg [63:0] d_sum;

reg adap_filter_state_dly;		
	
	always@(posedge clk or negedge rstn)
	begin
	if (rstn == 0)
		adap_filter_state_dly <=   1'd0;
	else
		adap_filter_state_dly <=    adap_filter_state;
	end			



always@(posedge clk or negedge rstn)
begin
if (rstn == 0)
	multiple <=   47'd0;
else if (adap_filter_state_dly == 1'b0)
	multiple <=   47'd0;
else if (counter<6'd34)
	multiple <=  { {15{weight_in[31]}}, weight_in} * {{33{reff[13]}}, reff};
else
	multiple <=    multiple;
end




always@(posedge clk or negedge rstn)
begin
if (rstn == 0)
	dreg <=   64'd0;
else if (adap_filter_state_dly == 1'b1 && counter<6'd34)
	dreg <=   dreg +{{18{multiple[46]}},multiple};
else if (adap_filter_state_dly == 1'b0)
	dreg <=   64'd0;
else
	dreg <=   dreg;
end

//------------------- n^2 è¨ˆç??--------------------------------//
always@(posedge clk or negedge rstn)
begin
if (rstn == 0)
	nref <=   32'd0;
else if (adap_filter_state_dly == 1'b0)
	nref <=   32'd0;
else if (counter<6'd34)
	nref <=  {{17{reff[13]}}, reff}* {{17{reff[13]}}, reff};
else
	nref <=   nref;
end


always@(posedge clk or negedge rstn)
begin
if (rstn == 0)
	rreg <=   32'd0;
else if (adap_filter_state_dly == 1'b0)
	rreg <=   32'd0;
else if (adap_filter_state_dly == 1'b1 && counter<6'd34)
	rreg <=   rreg + nref ;
else
	rreg <=   rreg;
end


always@(posedge clk or negedge rstn)
begin
if(rstn==0)
	n <= 32'd1;	
else if (flag_15==1&&flag_n==1)
	n <=   rreg + nref;
else
	n <=  n;
end


//---------------------------------------------------------//

always@(posedge clk or negedge rstn)
begin	
if(rstn==0)
	d_sum <= 64'd0;	

else if (flag_15==1&&flag_n==1)
	d_sum <=   dreg +{{18{multiple[46]}},multiple};
else
	d_sum <=  d_sum;
end
/*
always@(posedge clk or negedge rstn)
begin	
if(rstn==0)
	d <= 14'd0;	

else if (d_sum[31]==1&& ~d_sum<12'd1024)
	d <=   14'b0;
else if (d_sum[31]==1)
	d <= d_sum[24:10]+1'b1;
else
	d <=  d_sum[24:10];
end
*/
assign d = (d_sum[31]==1&& ~d_sum<12'd1024)?14'd0:(d_sum[31]==1)?d_sum[24:10]+1'b1:d_sum[24:10];


always@(posedge clk or negedge rstn)
begin
if (rstn == 0)
	e <=   14'd0;
else if (div_state == 1'b1)
	e <=   buffer_in_32 - d;	

else
	e <=   e;

end


//divdiv divdiv_1(.dividend({{5{d_sum[63]}},d_sum[63:5]}), .divisor(n),.div_state(div_state) ,.clk(clk), .rstn(rstn), .enable(~flag_16&flag_n), .result(d));

    
endmodule

