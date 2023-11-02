`include "bcdfadd4.v"
 
module bcdfadd16(
  input wire [15:0] a,
  input wire [15:0] b,
  input wire cin,
  output wire [15:0] sum,
  output wire cout
);
 
  // write your code here
  wire [3:0] sum1, sum2, sum3, sum4;
  wire cout1, cout2, cout3;
 
  bcdfadd4 adder1(
    .a(a[3:0]),
    .b(b[3:0]),
    .cin(cin),
    .sum(sum1),
    .cout(cout1)
  );
 
  bcdfadd4 adder2(
    .a(a[7:4]),
    .b(b[7:4]),
    .cin(cout1),
    .sum(sum2),
    .cout(cout2)
  );
 
  bcdfadd4 adder3(
    .a(a[11:8]),
    .b(b[11:8]),
    .cin(cout2),
    .sum(sum3),
    .cout(cout3)
  );
 
  bcdfadd4 adder4(
    .a(a[15:12]),
    .b(b[15:12]),
    .cin(cout3),
    .sum(sum4),
    .cout(cout)
  );
 
  assign sum = {sum4, sum3, sum2, sum1};
 
endmodule