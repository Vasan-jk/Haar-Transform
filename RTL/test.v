`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    20:38:35 07/27/24
// Design Name:    
// Module Name:    imagepro_vhardif
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_gate;
parameter n=262144;

reg [7:0] a;
reg [7:0] b;
reg [31:0] data [0:n];
reg [31:0] data1 [0:n];
integer j,i,f;

// Outputs
wire [7:0] out;

// Instantiate the Unit Under Test (UUT)
haardif  uut (.out(out),.a(a),
.b(b));

initial begin
  $readmemh("image_textfilex.txt.txt", data); end
  initial begin
  $readmemh("image_textfiley.txt.txt", data1); end
  initial begin
  f= $fopen("harfdif14.txt","w"); end

// Initialize Inputs
initial begin
for (i=0;i<(n+1);i=i+2)begin
j=i+1;  
a = data[i];
b = data1[j];
$fwrite(f,"%d\n",out);
// Wait 100 ns for global reset to finish
#10;
   
 end
// Add stimulus here
end
   
endmodule
