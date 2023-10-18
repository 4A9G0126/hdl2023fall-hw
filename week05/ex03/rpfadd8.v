`include "fadd.v"

module rpfadd8(
    input cin,
    input [7:0] a,
    input [7:0] b,
    output [7:0] sum,
    output cout
);
    // TODO: write your code here
    wire [7:0] carry_out; //進位輸出
    fadd u0 (.cin(cin),          .a(a[0]), .b(b[0]), .sum(sum[0]), .cout(carry_out[0]));          
    fadd u1 (.cin(carry_out[0]), .a(a[1]), .b(b[1]), .sum(sum[1]), .cout(carry_out[1]));    
    fadd u2 (.cin(carry_out[1]), .a(a[2]), .b(b[2]), .sum(sum[2]), .cout(carry_out[2]));
    fadd u3 (.cin(carry_out[2]), .a(a[3]), .b(b[3]), .sum(sum[3]), .cout(carry_out[3]));
    fadd u4 (.cin(carry_out[3]), .a(a[4]), .b(b[4]), .sum(sum[4]), .cout(carry_out[4]));
    fadd u5 (.cin(carry_out[4]), .a(a[5]), .b(b[5]), .sum(sum[5]), .cout(carry_out[5]));
    fadd u6 (.cin(carry_out[5]), .a(a[6]), .b(b[6]), .sum(sum[6]), .cout(carry_out[6]));
    fadd u7 (.cin(carry_out[6]), .a(a[7]), .b(b[7]), .sum(sum[7]), .cout(cout));

endmodule