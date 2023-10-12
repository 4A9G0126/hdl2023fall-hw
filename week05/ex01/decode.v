module decode(
  input [3:0] din, 
  output reg odd, 
  output reg even,
  output reg zero
);

  // TODO: write your code here
    always @(din) begin
    if (din ===0) begin
      zero = 1;
      even = 0;
      odd = 0;
    end
    else if(din[0]===1)begin
      {odd ,even ,zero}=3'b100;
  end
  else begin
    {odd,even,zero}= 3'b010;
  end
  end
  endmodule
