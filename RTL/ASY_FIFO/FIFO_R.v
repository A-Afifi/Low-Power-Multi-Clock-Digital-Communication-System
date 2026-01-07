// ************************************************************* //
//                      Module : FIFO_R                          //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

module FIFO_R # ( 
    parameter  Addr_Size  = 3 
)(
//Write Signals      
input    wire                         R_CLK,             // CLK for Read domian
input    wire                         R_RST,             // RST foe Read domain
input    wire                         R_INC,             // Read Enable signal
input    wire      [Addr_Size:0]      GW_Ptr_Syn,        // Write Pointer frmo Read Write after synchronizer

//Read Signals   
output   wire                         FIFO_Empty,        // FIFO Empty flag
output   wire      [Addr_Size-1:0]    R_Addr,            // Read Address
output   reg       [Addr_Size:0]      GR_Ptr             // Read Pointer frmo Read domain
);


// Internal Signals
reg   [Addr_Size:0] Address ;
wire  [Addr_Size:0] Comb_G_R_Ptr ;



// Sequential_Logic For : Address Calculation
always @(posedge R_CLK or negedge R_RST)
begin
     if(!R_RST)
     begin
          Address <= 'b0 ;
     end

     else if (R_INC && !FIFO_Empty) 
     begin
          Address <= Address + 1 ;
     end
end


// Combinational_Logic For : R_Addr 
assign R_Addr = Address[Addr_Size-1:0] ;


// Combinational_Logic For : Comb_G_R_Ptr 
assign Comb_G_R_Ptr = Address ^ (Address >> 1) ;


// Sequential_Logic For : GR_Ptr
always @(posedge R_CLK or negedge R_RST)
begin
     if(!R_RST)
     begin
          GR_Ptr <= 'b0 ;
     end

     else 
     begin
          GR_Ptr <= Comb_G_R_Ptr ;
     end
end


// Combinational_Logic : FIFO_Empty Function 
assign FIFO_Empty = (Comb_G_R_Ptr == GW_Ptr_Syn) ;


endmodule