`timescale 1ns/1ps
module ram_weight (counter, weight_cal_state,div_state, rstn, clk, e, reff_0, reff_1, reff_2, reff_3, reff_4, reff_5, reff_6, reff_7, reff_8, reff_9, reff_10, reff_11, reff_12, reff_13, reff_14, reff_15,reff_16,reff_17,reff_18,reff_19,reff_20,reff_21,reff_22,reff_23,reff_24,reff_25,reff_26,reff_27,reff_28,reff_29,reff_30,reff_31, weight_in_0, weight_in_1, weight_in_2, weight_in_3, weight_in_4, weight_in_5, weight_in_6, weight_in_7, weight_in_8, weight_in_9, weight_in_10, weight_in_11, weight_in_12, weight_in_13, weight_in_14, weight_in_15 ,weight_in_16,weight_in_17,weight_in_18,weight_in_19,weight_in_20,weight_in_21,weight_in_22,weight_in_23,weight_in_24,weight_in_25,weight_in_26,weight_in_27,weight_in_28,weight_in_29,weight_in_30,weight_in_31,n);

input [11:0] counter;
input rstn, clk, weight_cal_state;
input [13:0] e;
input div_state;
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
input [31:0] n;

output reg [15:0] weight_in_0;
output reg [15:0] weight_in_1;
output reg [15:0] weight_in_2;
output reg [15:0] weight_in_3;
output reg [15:0] weight_in_4;
output reg [15:0] weight_in_5;
output reg [15:0] weight_in_6;
output reg [15:0] weight_in_7;
output reg [15:0] weight_in_8;
output reg [15:0] weight_in_9;
output reg [15:0] weight_in_10;
output reg [15:0] weight_in_11;
output reg [15:0] weight_in_12;
output reg [15:0] weight_in_13;
output reg [15:0] weight_in_14;
output reg [15:0] weight_in_15;
output reg [15:0] weight_in_16;
output reg [15:0] weight_in_17;
output reg [15:0] weight_in_18;
output reg [15:0] weight_in_19;
output reg [15:0] weight_in_20;
output reg [15:0] weight_in_21;
output reg [15:0] weight_in_22;
output reg [15:0] weight_in_23;
output reg [15:0] weight_in_24;
output reg [15:0] weight_in_25;
output reg [15:0] weight_in_26;
output reg [15:0] weight_in_27;
output reg [15:0] weight_in_28;
output reg [15:0] weight_in_29;
output reg [15:0] weight_in_30;
output reg [15:0] weight_in_31;
//**************************************************//

reg [13:0] reff;
	always@(posedge clk or negedge rstn)
	begin
	if (rstn == 0)
		reff <=    14'd0;
	else	
		case (counter)
		12'd34      :	reff <=  reff_0;
		12'd35      :	reff <=  reff_1;
		12'd36      :	reff <=  reff_2;
		12'd37      :	reff <=  reff_3;
		12'd38      :	reff <=  reff_4;
		12'd39      :	reff <=  reff_5;
		12'd40      :	reff <=  reff_6;
		12'd41      :	reff <=  reff_7;
		12'd42      :	reff <=  reff_8;
		12'd43      :	reff <=  reff_9;
		12'd44      :	reff <=  reff_10;
		12'd45      :	reff <=  reff_11;
		12'd46      :	reff <=  reff_12;
		12'd47      :	reff <=  reff_13;
		12'd48      :	reff <=  reff_14;
		12'd49      :	reff <=  reff_15;
		12'd50      :	reff <=  reff_16;
		12'd51      :	reff <=  reff_17;
		12'd52      :	reff <=  reff_18;
		12'd53      :	reff <=  reff_19;
		12'd54      :	reff <=  reff_20;
		12'd55      :	reff <=  reff_21;
		12'd56      :	reff <=  reff_22;
		12'd57      :	reff <=  reff_23;
		12'd58      :	reff <=  reff_24;
		12'd59      :	reff <=  reff_25;
		12'd60      :	reff <=  reff_26;
		12'd61      :	reff <=  reff_27;
		12'd62      :	reff <=  reff_28;
		12'd63      :	reff <=  reff_29;
		12'd64      :	reff <=  reff_30;
		12'd65      :	reff <=  reff_31;
		default       :	reff <=  14'd0;
		endcase
	end	
			
reg [15:0] weight_pre;	
	always@(posedge clk or negedge rstn)
	begin
	if (rstn == 0)
		weight_pre <=    16'd0;
	else	
		case (counter)
		12'd34      :	weight_pre <= weight_in_0;
		12'd35      :	weight_pre <= weight_in_1;
		12'd36      :	weight_pre <= weight_in_2;
		12'd37      :	weight_pre <= weight_in_3;
		12'd38      :	weight_pre <= weight_in_4;
		12'd39      :	weight_pre <= weight_in_5;
		12'd40      :	weight_pre <= weight_in_6;
		12'd41      :	weight_pre <= weight_in_7;
		12'd42      :	weight_pre <= weight_in_8;
		12'd43      :	weight_pre <= weight_in_9;
		12'd44      :	weight_pre <= weight_in_10;
		12'd45      :	weight_pre <= weight_in_11;
		12'd46      :	weight_pre <= weight_in_12;
		12'd47      :	weight_pre <= weight_in_13;
		12'd48      :	weight_pre <= weight_in_14;
		12'd49      :	weight_pre <= weight_in_15;
		12'd50      :	weight_pre <= weight_in_16;
		12'd51      :	weight_pre <= weight_in_17;
		12'd52      :	weight_pre <= weight_in_18;
		12'd53      :	weight_pre <= weight_in_19;
		12'd54      :	weight_pre <= weight_in_20;
		12'd55      :	weight_pre <= weight_in_21;
		12'd56      :	weight_pre <= weight_in_22;
		12'd57      :	weight_pre <= weight_in_23;
		12'd58      :	weight_pre <= weight_in_24;
		12'd59      :	weight_pre <= weight_in_25;
		12'd60      :	weight_pre <= weight_in_26;
		12'd61      :	weight_pre <= weight_in_27;
		12'd62     :	weight_pre <= weight_in_28;
		12'd63      :	weight_pre <= weight_in_29;
		12'd64      :	weight_pre <= weight_in_30;
		12'd65      :	weight_pre <= weight_in_31;
		default	   :	weight_pre <=  16'd0;
		endcase
	end		

//********************** DSP ***********************//		
//reg [31:0] weight;
wire [28:0] multiple;
//wire [31:0] dsp_result;
//wire [31:0] weight_n;

reg weight_cal_state_dly;	
reg [5:0]counter1;
wire flag_15;
reg flag_n;
wire [15:0]w ,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31;
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
	
else if(counter1==6'd34)
	flag_n 	<=  6'b1;

else
	flag_n	<=	flag_n;
end

		
	always@(posedge clk or negedge rstn)
	begin
	if (rstn == 0)
		weight_cal_state_dly <=   1'd0;
	else
		weight_cal_state_dly <=    weight_cal_state;
	end		


assign multiple = ({{15{e[13]}}, e} * {{15{reff[13]}}, reff});
//assign weight_n = (multiple[28]==1&&flag_n==1)? {3'd0, ~multiple+1'b1}/{{5{n[31]}},n[31:5]}:(multiple[28]==0&&flag_n==1)?{3'd0, multiple}/{{5{n[31]}},n[31:5]}:32'd0;

//assign dsp_result =(multiple[28]==1)? weight_pre - weight_n:weight_pre + weight_n;



	

//    always@(posedge clk or negedge rstn)
//    begin
//    if (rstn == 0)
//        weight <=   16'd0;
//    else if(weight_cal_state_dly == 1'b1)
//	weight <=  dsp_result;
//    else
//        weight <=   weight;
//    end 


//********************** Output Storage ***********************//
    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_0 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_0 <=  w;
    else
        weight_in_0 <=  weight_in_0;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_1 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_1 <=  w1;
    else
        weight_in_1 <=  weight_in_1;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_2 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_2 <=  w2;
    else
        weight_in_2 <=  weight_in_2;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_3 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_3 <=  w3;
    else
        weight_in_3 <=  weight_in_3;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_4 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_4 <=  w4;
    else
        weight_in_4 <=  weight_in_4;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_5 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_5 <=  w5;
    else
        weight_in_5 <=  weight_in_5;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_6 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_6 <=  w6;
    else
        weight_in_6 <=  weight_in_6;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_7 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_7 <=  w7;
    else
        weight_in_7 <=  weight_in_7;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_8 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_8 <=  w8;
    else
        weight_in_8 <=  weight_in_8;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_9 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_9 <=  w9;
    else
        weight_in_9 <=  weight_in_9;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_10 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_10 <=  w10;
    else
        weight_in_10 <=  weight_in_10;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_11 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_11 <=  w11;
    else
        weight_in_11 <=  weight_in_11;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_12 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_12 <=  w12;
    else
        weight_in_12 <=  weight_in_12;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_13 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_13 <=  w13;
    else
        weight_in_13 <=  weight_in_13;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_14 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_14 <=  w14;
    else
        weight_in_14 <=  weight_in_14;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_15 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_15 <=  w15;
    else
        weight_in_15 <=  weight_in_15;
    end 
	
/*************************************************/	
   always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_16 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_16 <=  w16;
    else
        weight_in_16 <=  weight_in_16;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_17 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_17 <=  w17;
    else
        weight_in_17 <=  weight_in_17;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_18 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_18 <=  w18;
    else
        weight_in_18 <=  weight_in_18;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_19 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_19 <=  w19;
    else
        weight_in_19 <=  weight_in_19;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_20 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_20 <=  w20;
    else
        weight_in_20 <=  weight_in_20;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_21 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_21 <=  w21;
    else
        weight_in_21 <=  weight_in_21;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_22 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_22 <=  w22;
    else
        weight_in_22 <=  weight_in_22;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_23 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_23 <=  w23;
    else
        weight_in_23 <=  weight_in_23;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_24 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_24 <=  w24;
    else
        weight_in_24 <=  weight_in_24;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_25 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_25 <=  w25;
    else
        weight_in_25 <=  weight_in_25;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_26 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_26 <=  w26;
    else
        weight_in_26 <=  weight_in_26;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_27 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_27 <=  w27;
    else
        weight_in_27 <=  weight_in_27;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_28 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_28 <=  w28;
    else
        weight_in_28 <=  weight_in_28;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_29 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_29 <=  w29;
    else
        weight_in_29 <=  weight_in_29;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_30 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_30 <=  w30;
    else
        weight_in_30 <=  weight_in_30;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_31 <=  16'd0;
    else if(div_state == 1'b0&&weight_cal_state_dly==0)
	weight_in_31 <=  w31;
    else
        weight_in_31 <=  weight_in_31;
    end 


divdiv divdiv_0(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd35&flag_n), .result(w));
divdiv divdiv_1(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd36&flag_n), .result(w1));
divdiv divdiv_2(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd37&flag_n), .result(w2));
divdiv divdiv_3(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd38&flag_n), .result(w3));
divdiv divdiv_4(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd39&flag_n), .result(w4));
divdiv divdiv_5(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd40&flag_n), .result(w5));
divdiv divdiv_6(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd41&flag_n), .result(w6));
divdiv divdiv_7(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd42&flag_n), .result(w7));
divdiv divdiv_8(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd43&flag_n), .result(w8));
divdiv divdiv_9(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd44&flag_n), .result(w9));
divdiv divdiv_10(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd45&flag_n), .result(w10));
divdiv divdiv_11(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd46&flag_n), .result(w11));
divdiv divdiv_12(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd47&flag_n), .result(w12));
divdiv divdiv_13(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd48&flag_n), .result(w13));
divdiv divdiv_14(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd49&flag_n), .result(w14));
divdiv divdiv_15(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd50&flag_n), .result(w15));
divdiv divdiv_16(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd51&flag_n), .result(w16));
divdiv divdiv_17(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd52&flag_n), .result(w17));
divdiv divdiv_18(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd53&flag_n), .result(w18));
divdiv divdiv_19(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd54&flag_n), .result(w19));
divdiv divdiv_20(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd55&flag_n), .result(w20));
divdiv divdiv_21(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd56&flag_n), .result(w21));
divdiv divdiv_22(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd57&flag_n), .result(w22));
divdiv divdiv_23(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd58&flag_n), .result(w23));
divdiv divdiv_24(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd59&flag_n), .result(w24));
divdiv divdiv_25(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd60&flag_n), .result(w25));
divdiv divdiv_26(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd61&flag_n), .result(w26));
divdiv divdiv_27(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd62&flag_n), .result(w27));
divdiv divdiv_28(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd63&flag_n), .result(w28));
divdiv divdiv_29(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd64&flag_n), .result(w29));
divdiv divdiv_30(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd65&flag_n), .result(w30));
divdiv divdiv_31(.dividend(multiple), .divisor({{2{n[31]}},n[31:5]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(counter!=12'd66&flag_n), .result(w31));

endmodule

