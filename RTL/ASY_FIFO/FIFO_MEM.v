// ************************************************************* //
//                      Module : FIFO_MEM                        //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

module FIFO_MEM # ( 
    parameter Data_Width = 8 ,
    parameter Addr_Size  = 3 ,
	parameter FIFO_Dipth = 8 
)(
//Write Signals      
input   wire                        W_CLK,             // CLK for write domian
input   wire                        W_RST,             // RST foe write domain
input   wire                        W_INC,             // write Enable signal
input   wire                        FIFO_Full,         // FIFO Full flag
input   wire     [Addr_Size-1:0]    W_Addr,            // write Address
input   wire     [Data_Width-1:0]   W_Data,            // write Data

//Read Signals   
input   wire     [Addr_Size-1:0]    R_Addr,            // synchronized read pointer bus
output  wire     [Data_Width-1:0]   R_Data             // Read Data
);


// 2D Array for 8 registers of 16 bits each
reg [Data_Width-1:0] memory [0:FIFO_Dipth-1];                   

// Added loop variable declaration
integer i ;

// Seq_Logic : Write Func 
always @(posedge W_CLK, negedge W_RST) begin 
    if (!W_RST) begin                      
        for (i=0; i<=FIFO_Dipth-1; i=i+1) begin
          memory[i] <= 'b0;          
        end
    end

    else if (W_INC && !FIFO_Full) begin         // Read operation
        memory[W_Addr] <= W_Data ;
    end
end

// Comb_Logic : Read Func 
assign R_Data = memory[R_Addr] ;


endmodule 