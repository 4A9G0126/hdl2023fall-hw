module router(
    input [7:0] a,
    input [7:0] b,
    input [1:0] sel,
    output reg  [7:0] x,
    output reg [7:0] y
);

    // TODO: write your code here
     always @(*) begin
        case (sel)
            2'b00: begin  //set = 0的時候
                x = a;
                y = b;
            end

            2'b01: begin  //set = 1的時候
                y = a;
                x = b;
            end
            2'b10: begin //set = 2的時候
                x = a;
                y = a;
            end
            2'b11: begin //set = 3的時候
                x = b;
                y = b;
            end
            default: begin //set 其他值
                x = 0;
                y = 0;
            end
        endcase
    end

endmodule