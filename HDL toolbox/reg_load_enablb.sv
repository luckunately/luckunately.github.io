module reg_load_enable #(parameter data_length = 1) (
    input clk,
    input [data_length-1:0] data_in,
    input load,
    output reg [data_length-1:0] data_out
);

    always @(posedge clk) begin
        if (load) begin
            data_out <= data_in;
        end
    end



endmodule