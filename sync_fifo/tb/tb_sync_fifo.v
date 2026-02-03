module tb_sync_fifo;

reg clk;
reg rst;
reg read_en;
reg write_en;
reg [7:0] din;
wire full;
wire empty;
wire [7:0] dout;


sync_fifo dut (
    .clk(clk),
    .rst(rst),
    .read_en(read_en),
    .write_en(write_en),
    .din(din),
    .full(full),
    .empty(empty),
    .dout(dout)
);


always #5 clk = ~clk;

initial begin
    
    clk = 0;
    rst = 1;
    read_en = 0;
    write_en = 0;
    din = 0;

    #10 rst = 0;

   
    #10 write_en = 1; din = 8'h11;
    #10 din = 8'h22;
    #10 din = 8'h33;
    #10 write_en = 0;

   
    #10 read_en = 1;
    #10;
    #10;
    #10 read_en = 0;

    #20 $finish;
end

endmodule
