`timescale 1ns/1ps
`define CYCLE 10
//`define sck_time 81920
//`define cs_time 163833
`define sck_time 75
`define cs_time 250
`define cs1_time 150
`define cs2_time 1550
`define cs3_time 10850	
module test_bench ();

//**************************** wire & reg**********************//
initial $display("//***************************************");
initial $display("//==top input : clk,  mosi, sck, cs, rstn");
initial $display("//==top output :  miso");
initial $display("//***************************************");
reg clk;
reg rstn;
reg sck;
reg mosi;
reg cs;
wire head_flag;
wire signed[13:0]dn;
wire miso;
wire signed[31:0] weight_2_in_0;
wire signed[31:0] weight_2_in_1;
wire signed[31:0] weight_2_in_2;
wire signed[31:0] weight_2_in_3;
wire signed[31:0] weight_2_in_4;
wire signed[31:0] weight_2_in_5;
wire signed[31:0] weight_2_in_6;
wire signed[31:0] weight_2_in_7;
wire signed[31:0] weight_2_in_8;
wire signed[31:0] weight_2_in_9;
wire signed[31:0] weight_2_in_10;
wire signed[31:0] weight_2_in_11;
wire signed[31:0] weight_2_in_12;
wire signed[31:0] weight_2_in_13;
wire signed[31:0] weight_2_in_14;
wire signed[31:0] weight_2_in_15;
wire signed[31:0] weight_2_in_16;
wire signed[31:0] weight_2_in_17;
wire signed[31:0] weight_2_in_18;
wire signed[31:0] weight_2_in_19;
wire signed[31:0] weight_2_in_20;
wire signed[31:0] weight_2_in_21;
wire signed[31:0] weight_2_in_22;
wire signed[31:0] weight_2_in_23;
wire signed[31:0] weight_2_in_24;
wire signed[31:0] weight_2_in_25;
wire signed[31:0] weight_2_in_26;
wire signed[31:0] weight_2_in_27;
wire signed[31:0] weight_2_in_28;
wire signed[31:0] weight_2_in_29;
wire signed[31:0] weight_2_in_30;
wire signed[31:0] weight_2_in_31;

integer fp_r, cnt,out,out1;
reg [13:0]index_2,index_3;
//**************************** module **********************//
initial $display("===module : top_all");
top_all top_all(.clk(clk),
		.rstn(rstn),
		.sck(sck),
		.mosi(mosi),
		.cs(cs),
		.miso(miso),
		.dn(dn),
		.head_flag(head_flag),
		.weight_2_in_0(weight_2_in_0),
		.weight_2_in_1(weight_2_in_1),
			.weight_2_in_2(weight_2_in_2),
			.weight_2_in_3(weight_2_in_3),
			.weight_2_in_4(weight_2_in_4),
			.weight_2_in_5(weight_2_in_5),
			.weight_2_in_6(weight_2_in_6),
			.weight_2_in_7(weight_2_in_7),
			.weight_2_in_8(weight_2_in_8),
			.weight_2_in_9(weight_2_in_9),
			.weight_2_in_10(weight_2_in_10),
			.weight_2_in_11(weight_2_in_11),
			.weight_2_in_12(weight_2_in_12),
			.weight_2_in_13(weight_2_in_13),
			.weight_2_in_14(weight_2_in_14),
			.weight_2_in_15(weight_2_in_15),
			.weight_2_in_16(weight_2_in_16),
			.weight_2_in_17(weight_2_in_17),
			.weight_2_in_18(weight_2_in_18),
			.weight_2_in_19(weight_2_in_19),
			.weight_2_in_20(weight_2_in_20),
			.weight_2_in_21(weight_2_in_21),
			.weight_2_in_22(weight_2_in_22),
			.weight_2_in_23(weight_2_in_23),
			.weight_2_in_24(weight_2_in_24),
			.weight_2_in_25(weight_2_in_25),
			.weight_2_in_26(weight_2_in_26),
			.weight_2_in_27(weight_2_in_27),
			.weight_2_in_28(weight_2_in_28),
			.weight_2_in_29(weight_2_in_29),
			.weight_2_in_30(weight_2_in_30),
			.weight_2_in_31(weight_2_in_31)
);

//**************************** clock gen **********************//
initial
begin
	$display("===starting generating clk");
	force clk = 1'b0;
	forever #(`CYCLE/2) force clk = ~clk;
end
//**************************** initial and wavegen **********************//
initial 
begin
	$display("===starting dump waveform");
	$dumpfile("top_all.vcd");
	$dumpvars(0,top_all);
end

//**************************** main **********************//
initial

begin

	force clk = 1'b0;
	force rstn = 1'b0;
	force sck = 1'b0;
	force mosi = 1'b0;
	force cs = 1'b0;
	fp_r = $fopen("1125_LR.txt", "r");
	out = $fopen ( "1116_LR.txt", "w" ); 
		out1 = $fopen ( "1116_W.txt", "w" ); 
	$display("===reset");
	reset;

	#1_000;
	$display("===starting sending data");
	while(!$feof(fp_r)) begin
	cnt = $fscanf(fp_r, "%d %d ", index_2, index_3);
	
	$display("send : 0x%h, 0x%h" , index_2, index_3);
	send_data(index_2, index_3); 
	end
	$fclose(fp_r);

	$display("===all done");
	#100000 $finish;
end




//*******************************task reset******************//
task reset;
begin
	force rstn = 1'b1;
	#1_000;
	force rstn = 1'b0;
	#1_000;
	force rstn = 1'b1;
	#1_000;
end
endtask

//****************************task send_data_2*****************//
task send_data_2;
input [13:0] tmp_in;
reg [13:0] index;
begin
	force cs = 1'b0;
	#`cs1_time;
	for (index = 14'd0; index < 14'd14; index = index + 14'd1)
	begin	
		force sck = 1'b0;
		force mosi = tmp_in[14'd13-index];
		#`sck_time;
		force sck = 1'b1;
		#`sck_time;		
		force sck = 1'b0;
		release mosi;
	end
	#`cs1_time;
	force cs = 1'b1;
	#`cs_time;
end
endtask

//****************************task send_data_2*****************//

task send_data_3;
input [13:0] tmp_in;
reg [13:0] index;
begin
	force cs = 1'b0;
	#`cs1_time;
	for (index = 14'd0; index < 14'd14; index = index + 14'd1)
	begin	
		force sck = 1'b0;
		force mosi = tmp_in[14'd13-index];
		#`sck_time;
		force sck = 1'b1;
		#`sck_time;		
		force sck = 1'b0;
		release mosi;
	end
	#`cs1_time;
	force cs = 1'b1;
	#`cs2_time;
end
endtask


task send_data_4;
input [13:0] tmp_in;
reg [13:0] index;
begin
	force cs = 1'b0;
	#`cs1_time;
	for (index = 14'd0; index < 14'd14; index = index + 14'd1)
	begin	
		force sck = 1'b0;
		force mosi = tmp_in[14'd13-index];
		#`sck_time;
		force sck = 1'b1;
		#`sck_time;		
		force sck = 1'b0;
		release mosi;
	end
	#`cs1_time;
	force cs = 1'b1;
	#`cs3_time;
end
endtask
//****************************task send_data*****************//
task send_data;
input [13:0] AD_1;
input [13:0] AD_2;

begin
	send_data_2 (14'h0fff);
	send_data_3 (AD_1); //(tmp_in_ad1_msb)
	send_data_4 (AD_2); //(tmp_in_ad1_lsb)

end
endtask

always@(posedge head_flag)
begin
$fwrite(out,"%d\n",dn);
end
always@(negedge head_flag)
begin
$fwrite(out1,"%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\n",weight_2_in_31,weight_2_in_30,weight_2_in_29,weight_2_in_28,weight_2_in_27,weight_2_in_26,weight_2_in_25,weight_2_in_24,weight_2_in_23,weight_2_in_22,weight_2_in_21,weight_2_in_20,weight_2_in_19,weight_2_in_18,weight_2_in_17,weight_2_in_16,weight_2_in_15,weight_2_in_14,weight_2_in_13,weight_2_in_12,weight_2_in_11,weight_2_in_10,weight_2_in_9,weight_2_in_8,weight_2_in_7,weight_2_in_6,weight_2_in_5,weight_2_in_4,weight_2_in_3,weight_2_in_2,weight_2_in_1,weight_2_in_0);
end
endmodule













