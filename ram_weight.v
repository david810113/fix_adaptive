`timescale 1ns/1ps
module ram_weight (counter, weight_cal_state, rstn, clk, e, reff_0, reff_1, reff_2, reff_3, reff_4, reff_5, reff_6, reff_7, reff_8, reff_9, reff_10, reff_11, reff_12, reff_13, reff_14, reff_15,reff_16,reff_17,reff_18,reff_19,reff_20,reff_21,reff_22,reff_23,reff_24,reff_25,reff_26,reff_27,reff_28,reff_29,reff_30,reff_31, weight_in_0, weight_in_1, weight_in_2, weight_in_3, weight_in_4, weight_in_5, weight_in_6, weight_in_7, weight_in_8, weight_in_9, weight_in_10, weight_in_11, weight_in_12, weight_in_13, weight_in_14, weight_in_15 ,weight_in_16,weight_in_17,weight_in_18,weight_in_19,weight_in_20,weight_in_21,weight_in_22,weight_in_23,weight_in_24,weight_in_25,weight_in_26,weight_in_27,weight_in_28,weight_in_29,weight_in_30,weight_in_31,n);

input [11:0] counter;
input rstn, clk, weight_cal_state;
input [13:0] e;

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

output reg [31:0] weight_in_0;
output reg [31:0] weight_in_1;
output reg [31:0] weight_in_2;
output reg [31:0] weight_in_3;
output reg [31:0] weight_in_4;
output reg [31:0] weight_in_5;
output reg [31:0] weight_in_6;
output reg [31:0] weight_in_7;
output reg [31:0] weight_in_8;
output reg [31:0] weight_in_9;
output reg [31:0] weight_in_10;
output reg [31:0] weight_in_11;
output reg [31:0] weight_in_12;
output reg [31:0] weight_in_13;
output reg [31:0] weight_in_14;
output reg [31:0] weight_in_15;
output reg [31:0] weight_in_16;
output reg [31:0] weight_in_17;
output reg [31:0] weight_in_18;
output reg [31:0] weight_in_19;
output reg [31:0] weight_in_20;
output reg [31:0] weight_in_21;
output reg [31:0] weight_in_22;
output reg [31:0] weight_in_23;
output reg [31:0] weight_in_24;
output reg [31:0] weight_in_25;
output reg [31:0] weight_in_26;
output reg [31:0] weight_in_27;
output reg [31:0] weight_in_28;
output reg [31:0] weight_in_29;
output reg [31:0] weight_in_30;
output reg [31:0] weight_in_31;
//**************************************************//

reg [13:0] reff;
	always@(posedge clk or negedge rstn)
	begin
	if (rstn == 0)
		reff <=    14'd0;
	else	
		case (counter)
		12'd1058      :	reff <=  reff_0;
		12'd1059      :	reff <=  reff_1;
		12'd1060      :	reff <=  reff_2;
		12'd1061      :	reff <=  reff_3;
		12'd1062      :	reff <=  reff_4;
		12'd1063      :	reff <=  reff_5;
		12'd1064      :	reff <=  reff_6;
		12'd1065      :	reff <=  reff_7;
		12'd1066      :	reff <=  reff_8;
		12'd1067      :	reff <=  reff_9;
		12'd1068      :	reff <=  reff_10;
		12'd1069      :	reff <=  reff_11;
		12'd1070      :	reff <=  reff_12;
		12'd1071      :	reff <=  reff_13;
		12'd1072      :	reff <=  reff_14;
		12'd1073      :	reff <=  reff_15;
		12'd1074      :	reff <=  reff_16;
		12'd1075      :	reff <=  reff_17;
		12'd1076      :	reff <=  reff_18;
		12'd1077      :	reff <=  reff_19;
		12'd1078      :	reff <=  reff_20;
		12'd1079      :	reff <=  reff_21;
		12'd1080      :	reff <=  reff_22;
		12'd1081      :	reff <=  reff_23;
		12'd1082      :	reff <=  reff_24;
		12'd1083      :	reff <=  reff_25;
		12'd1084      :	reff <=  reff_26;
		12'd1085      :	reff <=  reff_27;
		12'd1086      :	reff <=  reff_28;
		12'd1087      :	reff <=  reff_29;
		12'd1088      :	reff <=  reff_30;
		12'd1089      :	reff <=  reff_31;
		default       :	reff <=  14'd0;
		endcase
	end	
			
reg [31:0] weight_pre;	
	always@(posedge clk or negedge rstn)
	begin
	if (rstn == 0)
		weight_pre <=    32'd0;
	else	
		case (counter)
		12'd1058      :	weight_pre <= weight_in_0;
		12'd1059      :	weight_pre <= weight_in_1;
		12'd1060      :	weight_pre <= weight_in_2;
		12'd1061      :	weight_pre <= weight_in_3;
		12'd1062      :	weight_pre <= weight_in_4;
		12'd1063      :	weight_pre <= weight_in_5;
		12'd1064      :	weight_pre <= weight_in_6;
		12'd1065      :	weight_pre <= weight_in_7;
		12'd1066      :	weight_pre <= weight_in_8;
		12'd1067      :	weight_pre <= weight_in_9;
		12'd1068      :	weight_pre <= weight_in_10;
		12'd1069      :	weight_pre <= weight_in_11;
		12'd1070      :	weight_pre <= weight_in_12;
		12'd1071      :	weight_pre <= weight_in_13;
		12'd1072      :	weight_pre <= weight_in_14;
		12'd1073      :	weight_pre <= weight_in_15;
		12'd1074      :	weight_pre <= weight_in_16;
		12'd1075      :	weight_pre <= weight_in_17;
		12'd1076      :	weight_pre <= weight_in_18;
		12'd1077      :	weight_pre <= weight_in_19;
		12'd1078      :	weight_pre <= weight_in_20;
		12'd1079      :	weight_pre <= weight_in_21;
		12'd1080      :	weight_pre <= weight_in_22;
		12'd1081      :	weight_pre <= weight_in_23;
		12'd1082      :	weight_pre <= weight_in_24;
		12'd1083      :	weight_pre <= weight_in_25;
		12'd1084      :	weight_pre <= weight_in_26;
		12'd1085      :	weight_pre <= weight_in_27;
		12'd1086     :	weight_pre <= weight_in_28;
		12'd1087      :	weight_pre <= weight_in_29;
		12'd1088      :	weight_pre <= weight_in_30;
		12'd1089      :	weight_pre <= weight_in_31;
		default	   :	weight_pre <=  32'd0;
		endcase
	end		

//********************** DSP ***********************//		
reg [31:0] weight;
wire [28:0] multiple;
wire [31:0] dsp_result;
wire [31:0] weight_n;

reg weight_cal_state_dly;	
reg [5:0]counter1;
wire flag_15;
reg flag_n;

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
assign weight_n = (multiple[28]==1&&flag_n==1)? {3'd0, ~multiple+1'b1}/{{5{n[31]}},n[31:5]}:(multiple[28]==0&&flag_n==1)?{3'd0, multiple}/{{5{n[31]}},n[31:5]}:32'd0;

assign dsp_result =(multiple[28]==1)? weight_pre - weight_n:weight_pre + weight_n;






    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight <=   32'd0;
    else if(weight_cal_state_dly == 1'b1)
	weight <=  dsp_result;
    else
        weight <=   weight;
    end 


//********************** Output Storage ***********************//
    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_0 <=  32'd0;
    else if(counter == 12'd1060)
	weight_in_0 <=  weight;
    else
        weight_in_0 <=  weight_in_0;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_1 <=  32'd0;
    else if(counter == 12'd1061)
	weight_in_1 <=  weight;
    else
        weight_in_1 <=  weight_in_1;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_2 <=  32'd0;
    else if(counter == 12'd1062)
	weight_in_2 <=  weight;
    else
        weight_in_2 <=  weight_in_2;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_3 <=  32'd0;
    else if(counter == 12'd1063)
	weight_in_3 <=  weight;
    else
        weight_in_3 <=  weight_in_3;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_4 <=  32'd0;
    else if(counter == 12'd1064)
	weight_in_4 <=  weight;
    else
        weight_in_4 <=  weight_in_4;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_5 <=  32'd0;
    else if(counter == 12'd1065)
	weight_in_5 <=  weight;
    else
        weight_in_5 <=  weight_in_5;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_6 <=  32'd0;
    else if(counter == 12'd1066)
	weight_in_6 <=  weight;
    else
        weight_in_6 <=  weight_in_6;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_7 <=  32'd0;
    else if(counter == 12'd1067)
	weight_in_7 <=  weight;
    else
        weight_in_7 <=  weight_in_7;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_8 <=  32'd0;
    else if(counter == 12'd1068)
	weight_in_8 <=  weight;
    else
        weight_in_8 <=  weight_in_8;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_9 <=  32'd0;
    else if(counter == 12'd1069)
	weight_in_9 <=  weight;
    else
        weight_in_9 <=  weight_in_9;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_10 <=  32'd0;
    else if(counter == 12'd1070)
	weight_in_10 <=  weight;
    else
        weight_in_10 <=  weight_in_10;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_11 <=  32'd0;
    else if(counter == 12'd1071)
	weight_in_11 <=  weight;
    else
        weight_in_11 <=  weight_in_11;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_12 <=  32'd0;
    else if(counter == 12'd1072)
	weight_in_12 <=  weight;
    else
        weight_in_12 <=  weight_in_12;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_13 <=  32'd0;
    else if(counter == 12'd1073)
	weight_in_13 <=  weight;
    else
        weight_in_13 <=  weight_in_13;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_14 <=  32'd0;
    else if(counter == 12'd1074)
	weight_in_14 <=  weight;
    else
        weight_in_14 <=  weight_in_14;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_15 <=  32'd0;
    else if(counter == 12'd1075)
	weight_in_15 <=  weight;
    else
        weight_in_15 <=  weight_in_15;
    end 
	
/*************************************************/	
   always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_16 <=  32'd0;
    else if(counter == 12'd1076)
	weight_in_16 <=  weight;
    else
        weight_in_16 <=  weight_in_16;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_17 <=  32'd0;
    else if(counter == 12'd1077)
	weight_in_17 <=  weight;
    else
        weight_in_17 <=  weight_in_17;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_18 <=  32'd0;
    else if(counter == 12'd1078)
	weight_in_18 <=  weight;
    else
        weight_in_18 <=  weight_in_18;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_19 <=  32'd0;
    else if(counter == 12'd1079)
	weight_in_19 <=  weight;
    else
        weight_in_19 <=  weight_in_19;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_20 <=  32'd0;
    else if(counter == 12'd1080)
	weight_in_20 <=  weight;
    else
        weight_in_20 <=  weight_in_20;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_21 <=  32'd0;
    else if(counter == 12'd1081)
	weight_in_21 <=  weight;
    else
        weight_in_21 <=  weight_in_21;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_22 <=  32'd0;
    else if(counter == 12'd1082)
	weight_in_22 <=  weight;
    else
        weight_in_22 <=  weight_in_22;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_23 <=  32'd0;
    else if(counter == 12'd1083)
	weight_in_23 <=  weight;
    else
        weight_in_23 <=  weight_in_23;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_24 <=  32'd0;
    else if(counter == 12'd1084)
	weight_in_24 <=  weight;
    else
        weight_in_24 <=  weight_in_24;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_25 <=  32'd0;
    else if(counter == 12'd1085)
	weight_in_25 <=  weight;
    else
        weight_in_25 <=  weight_in_25;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_26 <=  32'd0;
    else if(counter == 12'd1086)
	weight_in_26 <=  weight;
    else
        weight_in_26 <=  weight_in_26;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_27 <=  32'd0;
    else if(counter == 12'd1087)
	weight_in_27 <=  weight;
    else
        weight_in_27 <=  weight_in_27;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_28 <=  32'd0;
    else if(counter == 12'd1088)
	weight_in_28 <=  weight;
    else
        weight_in_28 <=  weight_in_28;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_29 <=  32'd0;
    else if(counter == 12'd1089)
	weight_in_29 <=  weight;
    else
        weight_in_29 <=  weight_in_29;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_30 <=  32'd0;
    else if(counter == 12'd1090)
	weight_in_30 <=  weight;
    else
        weight_in_30 <=  weight_in_30;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_31 <=  32'd0;
    else if(counter == 12'd1091)
	weight_in_31 <=  weight;
    else
        weight_in_31 <=  weight_in_31;
    end 
endmodule

