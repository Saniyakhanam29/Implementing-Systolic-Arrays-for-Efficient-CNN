`timescale 1ns/1ps
module Systolic_Array_tb();

	parameter DATAWIDTH = 8;
	
reg CLK;
reg RSTn;
reg start;

reg [ DATAWIDTH - 1 : 0 ] A0;
reg [ DATAWIDTH - 1 : 0 ] A1;
reg [ DATAWIDTH - 1 : 0 ] A2;
reg [ DATAWIDTH - 1 : 0 ] A3;
//reg [ DATAWIDTH - 1 : 0 ] A4;
reg [ DATAWIDTH - 1 : 0 ] B0;
reg [ DATAWIDTH - 1 : 0 ] B1;
reg [ DATAWIDTH - 1 : 0 ] B2;
reg [ DATAWIDTH - 1 : 0 ] B3;
//reg [ DATAWIDTH - 1 : 0 ] B4;


wire [ DATAWIDTH * 2 - 1 : 0 ] P11;
wire [ DATAWIDTH * 2 - 1 : 0 ] P12;
wire [ DATAWIDTH * 2 - 1 : 0 ] P13;
wire [ DATAWIDTH * 2 - 1 : 0 ] P14;
wire [ DATAWIDTH * 2 - 1 : 0 ] P21;
wire [ DATAWIDTH * 2 - 1 : 0 ] P22;
wire [ DATAWIDTH * 2 - 1 : 0 ] P23;
wire [ DATAWIDTH * 2 - 1 : 0 ] P24;
wire [ DATAWIDTH * 2 - 1 : 0 ] P31;
wire [ DATAWIDTH * 2 - 1 : 0 ] P32;
wire [ DATAWIDTH * 2 - 1 : 0 ] P33;
wire [ DATAWIDTH * 2 - 1 : 0 ] P34;
wire [ DATAWIDTH * 2 - 1 : 0 ] P41;
wire [ DATAWIDTH * 2 - 1 : 0 ] P42;
wire [ DATAWIDTH * 2 - 1 : 0 ] P43;
wire [ DATAWIDTH * 2 - 1 : 0 ] P44;
wire Done;


initial
begin
	CLK = 0;
	forever #10 CLK = ~ CLK;
end

initial 
begin
	RSTn = 1;
start = 0;A0 = 0;A1 = 0;A2 = 0;A3=0;B0 = 0;B1 = 0;B2 = 0;B3=0;
#5;
RSTn = 0;
#10;
RSTn = 1;
#5;
start = 1;
A0 = 1;A1 = 6;A2 = 11;A3=16;B0 = 1;B1 = 0;B2 = 0;B3=0;
#20;A0 = 2;A1 = 7;A2 = 12;A3=17;B0 = 0;B1 = 1;B2 = 0;B3=0;
#20;  A0 = 3;A1 = 8;A2 = 13;A3=18;B0 = 0;B1 = 0;B2 = 1;B3=0;
#20;  A0 = 4;A1 = 9;A2 = 14;A3=19;B0 = 0;B1 = 0;B2 = 0;B3=1;
#20;  A0 = 0;A1 = 0;A2 = 0;A3=0;B0 = 0;B1 = 0;B2 = 0;B3=0;
#20;  A0 = 0;A1 = 0;A2 = 0;A3=0;B0 = 0;B1 = 0;B2 = 0;B3=0;


#100;
//RSTn = 0;
//start = 0;
//#10;
//RSTn = 1;
//start = 1;

//#20 A0 = 4;A1 = 0;A2 = 0;B0 = 3;B1 = 0;B2 = 0;
//#20;A0 = 4;A1 = 3;A2 = 0;B0 = 2;B1 = 4;B2 = 0;
//#20;  A0 = 2;A1 = 5;A2 = 3;B0 = 3;B1 = 5;B2 = 2;
//#20;  A0 = 0;A1 = 3;A2 = 2;B0 = 0;B1 = 2;B2 = 3;
//#20;  A0 = 0;A1 = 0;A2 = 5;B0 = 0;B1 = 0;B2 = 5;
//#20;  A0 = 0;A1 = 0;A2 = 0;B0 = 0;B1 = 0;B2 = 0;
//#200 $stop ;
//#100 A0 = 4;A1 = 0;A2 = 0;B0 = 3;B1 = 0;B2 = 0;
//#20;A0 = 4;A1 = 3;A2 = 0;B0 = 2;B1 = 4;B2 = 0;
//#20;  A0 = 2;A1 = 5;A2 = 3;B0 = 3;B1 = 5;B2 = 2;
//#20;  A0 = 0;A1 = 3;A2 = 2;B0 = 0;B1 = 2;B2 = 3;
//#20;  A0 = 2;A1 = 0;A2 = 5;B0 = 0;B1 = 0;B2 = 5;
//#20;  A0 = 0;A1 = 0;A2 = 0;B0 = 0;B1 = 0;B2 = 0;
//#100 $stop ;
//#20;  A0 = 2;A1 = 2;A2 = 0;B0 = 2;B1 = 2;B2 = 0;
//#20;  A0 = 2;A1 = 2;A2 = 2;B0 = 2;B1 = 2;B2 = 2;
//#20;  A0 = 0;A1 = 2;A2 = 2;B0 = 0;B1 = 2;B2 = 2;
//#20;  A0 = -128;A1 = 0;A2 = 2;B0 = 127;B1 = 0;B2 = 2;
//#20;  A0 = 127;A1 = -128;A2 = 0;B0 = -128;B1 = 127;B2 = 0;
//#20;  A0 = -128;A1 = 127;A2 = -128;B0 = 127;B1 = -128;B2 = 127;
//#20;  A0 = 0;A1 = -128;A2 = 127;B0 = 0;B1 = 127;B2 = -128;
//#20;  A0 = 0;A1 = 0;A2 = -128;B0 = 0;B1 = 0;B2 = 127;
//#20;  A0 = 0;A1 = 0;A2 = 0;B0 = 0;B1 = 0;B2 = 0;

//#20;  A0 = 0;A1 = 0;A2 = 0;B0 = 0;B1 = 0;B2 = 0;

end

Systolic_Array SA(.CLK(CLK),
                  .RSTn(RSTn),
				  .start(start),
				 
				  .A0(A0),
				  .A1(A1),
				  .A2(A2),
				  .A3(A3),
				  
				  .B0(B0),
				  .B1(B1),
				  .B2(B2),
				  .B3(B3),
                                  
				  .P11(P11),
				  .P12(P12),
				  .P13(P13),
				  .P14(P14),
                                  			
				  .P21(P21),
				  .P22(P22),
				  .P23(P23),
				  .P24(P24),
                                  
				  .P31(P31),
				  .P32(P32),
				  .P33(P33),
				  .P34(P34),
                                  
				  .P41(P41),
				  .P42(P42),
				  .P43(P43),
				  .P44(P44),
                                  


				  .Done(Done));

endmodule
