// write your module here
module cmp4(
    input [3:0]a,b,
    output gt,
    output eq,
    output lt
);
assign gt = a > b;
assign eq = a ==b;
assign lt =a < b;
endmodule