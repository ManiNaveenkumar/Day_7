module tb_cla;
reg [3:0]a;
reg [3:0]b;
reg c;
wire [3:0]sum;
wire carry;
cla uut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial begin
    $dumpfile("cla.vcd");
    $dumpvars(0,tb_cla);
    #10;
    a=4'b0001;b=4'b1001;c=1;#10;
    a=4'b1001;b=4'b1101;c=0;#10;
    a=4'b0011;b=4'b1001;c=1;#10;
    a=4'b0101;b=4'b1101;c=0;#10;

    $finish;
end
    
endmodule