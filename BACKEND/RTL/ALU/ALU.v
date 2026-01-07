// *************************************************************//
//                      Module : ALU                            //
//                      Author : Ahmed_Afifi                    //
// *************************************************************//

module ALU #( 
parameter IN_Width = 8,
          OUT_Width  = IN_Width*2
)
(
input    wire                    CLK,
input    wire                    RST, 
input    wire                    EN,
input    wire   [3:0]            ALU_FUN,
input    wire   [IN_Width-1:0]   A, 
input    wire   [IN_Width-1:0]   B,

output   reg    [OUT_Width-1:0]  ALU_OUT,
output   reg                     OUT_Valid 
);
  

//internal_signals  
reg [OUT_Width-1:0] Com_ALU_OUT;
reg                 Com_OUT_Valid;
  

// Combinational logic for ALU
always @(*) begin
  Com_OUT_Valid = 1'b0 ;
  Com_ALU_OUT   = 'b0 ;
  
  if(EN) begin   
	  Com_OUT_Valid = 1'b1 ;
    
    case (ALU_FUN)
      // Arithmetic operations ************************************
      4'b0000: begin  // Unsigned Addition
          Com_ALU_OUT= A + B;  
      end

      4'b0001: begin  // Unsigned Subtraction 
          Com_ALU_OUT= A - B;  
      end

      4'b0010: begin  // Unsigned Multiplication
          Com_ALU_OUT = A * B;
      end

      4'b0011: begin  // Unsigned Division
          Com_ALU_OUT = (B == 0) ? 'b0 : A / B;  // Handle division by zero
      end

      // Boolean operations ***************************************
      4'b0100: begin  // AND
          Com_ALU_OUT = A & B;
      end

      4'b0101: begin  // OR
          Com_ALU_OUT = A | B;
      end

      4'b0110: begin  // NAND
          Com_ALU_OUT = ~(A & B);
      end

      4'b0111: begin  // NOR
          Com_ALU_OUT = ~(A | B);
      end

      4'b1000: begin  // XOR
          Com_ALU_OUT = A ^ B;
      end

      4'b1001: begin  // XNOR
          Com_ALU_OUT = ~(A ^ B);
      end

      // Comparison operations ************************************
      4'b1010: begin  // A == B
          Com_ALU_OUT = (A == B) ? 'b1 : 'b0;
      end

      4'b1011: begin  // A > B 
          Com_ALU_OUT = (A > B) ? 'b10 : 'b0; 
      end

      4'b1100: begin  // A < B 
          Com_ALU_OUT = (A < B) ? 'b11 : 'b0;
      end     

      // Shift operations *****************************************
      4'b1101: begin  // A >> 1 
          Com_ALU_OUT = A >> 1;
      end

      4'b1110: begin  // A << 1 
          Com_ALU_OUT = A << 1;
      end

      // Default case *********************************************
      default: Com_ALU_OUT = 'b0;  // All flags remain LOW
    endcase
  end

  else begin
	  Com_OUT_Valid = 1'b0 ;
  end   

end  
 
  
// Sequential logic - register ALU_OUT on clock edge  
always @(posedge CLK or negedge RST) begin
  if(!RST) begin
    ALU_OUT   <= 'b0 ;
    OUT_Valid <= 1'b0 ;	
  end

  else begin  
    ALU_OUT   <= Com_ALU_OUT ;
    OUT_Valid <= Com_OUT_Valid ;
  end	

end  


endmodule