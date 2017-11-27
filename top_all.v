`timescale 1ns/1ps

module top_all(clk, miso, mosi, sck, cs, rstn/*,dn,head_flag,weight_2_in_0,weight_2_in_1,weight_2_in_2,weight_2_in_3,weight_2_in_4,weight_2_in_5,weight_2_in_6,weight_2_in_7,weight_2_in_8,weight_2_in_9,weight_2_in_10,weight_2_in_11,weight_2_in_12,weight_2_in_13,weight_2_in_14,weight_2_in_15,weight_2_in_16,weight_2_in_17,weight_2_in_18,weight_2_in_19,weight_2_in_20,weight_2_in_21,weight_2_in_22,weight_2_in_23,weight_2_in_24,weight_2_in_25,weight_2_in_26,weight_2_in_27,weight_2_in_28,weight_2_in_29,weight_2_in_30,weight_2_in_31*/);
input clk, mosi, sck, cs, rstn; 
output miso/*,head_flag*/;
//output [13:0]dn;
//output [31:0] weight_2_in_0,weight_2_in_1,weight_2_in_2,weight_2_in_3,weight_2_in_4,weight_2_in_5,weight_2_in_6,weight_2_in_7,weight_2_in_8,weight_2_in_9,weight_2_in_10,weight_2_in_11,weight_2_in_12,weight_2_in_13,weight_2_in_14,weight_2_in_15,weight_2_in_16,weight_2_in_17,weight_2_in_18,weight_2_in_19,weight_2_in_20,weight_2_in_21,weight_2_in_22,weight_2_in_23,weight_2_in_24,weight_2_in_25,weight_2_in_26,weight_2_in_27,weight_2_in_28,weight_2_in_29,weight_2_in_30,weight_2_in_31;
wire [13:0] buffer_2, buffer_3, reff,dn;   
/*
design_1_wrapper design_1_wrapper_0(.clk1(clk1),
                                    .rstn(rstn),
                                    .clk(clk));
	*/					
s2p s2p_0 (.mosi(mosi),
           .sck(sck),
           .cs(cs),
           .rstn(rstn),
           .clk(clk),
           .buffer_2(buffer_2),
           .buffer_3(buffer_3),
           .reff(reff),
           .head_flag(head_flag)        
);   

p2s p2s_0 (.sck(sck),
           .head_flag(head_flag),           
		   .cs(cs),
           .rstn(rstn),
           .clk(clk),  
	       .in_p2s(dn),    
	       .miso(miso)
);   


alog_top alog_top (.rstn(rstn),
		   .clk(clk),
		   .buffer_2(buffer_2),
		   .buffer_3(buffer_3),
           .reff(reff),
           .head_flag(head_flag),
		   .dout(dn)/*,
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
			.weight_2_in_31(weight_2_in_31)*/
);
       
endmodule
