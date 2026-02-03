module sync_fifo(
input clk,
input rst,
input read_en ,
input write_en,
input [width-1: 0] din,
output reg full,empty,
output reg [width-1:0]dout);
parameter width= 8;
parameter depth = 16;
parameter ADDR_BITS = $clog2(depth);
reg [width-1:0] mem [0:depth-1];
reg [ADDR_BITS-1:0]read_ptr,write_ptr;
reg [ADDR_BITS-1:0]read_ptr_next , write_ptr_next;

initial begin
read_ptr = 0;
write_ptr = 0;
end

always@( posedge clk or posedge rst)
begin
if(rst)
begin
read_ptr <= 0;
dout <=0;
end

else if (read_en && !empty)
begin
dout <= mem[read_ptr];
read_ptr <= read_ptr_next;
end
end
always@(posedge clk or posedge rst)
begin
if(rst)
begin
write_ptr <= 0;
end
else if ( write_en && !full)
begin
mem[write_ptr] <= din;
write_ptr <= write_ptr_next;
end
end

always@(*)
begin
 if (write_ptr == depth-1)
  write_ptr_next = 0;
  else 
  write_ptr_next = write_ptr+1;
  
  if(read_ptr == depth-1)
  read_ptr_next = 0;
  else 
 read_ptr_next = read_ptr+1;
empty = (write_ptr == read_ptr);
full  = (write_ptr_next == read_ptr);

end
 
endmodule