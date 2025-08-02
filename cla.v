module cla (
    input [3:0]a,
    input [3:0]b,
    input c,
    output [3:0]sum,
    output carry
);
wire p1,p2,p3,p4;
wire g1,g2,g3,g4;
wire c1,c2,c3,c4;
assign p1=a[0]^b[0];
assign p2=a[1]^b[1];
assign p3=a[2]^b[2];
assign p4=a[3]^b[3];

assign g1=a[0]&b[0];
assign g2=a[1]&b[1];
assign g3=a[2]&b[2];
assign g4=a[3]&b[3];
     
assign c1=g1|c&p1;
assign c2=g2|c1&p2;
assign c3=g3|c2&p3;
assign c4=g4|c3&p4;

assign sum[0]=p1^c;
assign sum[1]=p2^c1;
assign sum[2]=p3^c2;
assign sum[3]=p4^c3;

assign carry=c4;
endmodule