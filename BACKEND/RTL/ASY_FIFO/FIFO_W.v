// ************************************************************* //
//                      Module : FIFO_W                          //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

module FIFO_W # ( 
     parameter  Data_Width = 8 ,
     parameter  Addr_Size  = 3
)(
//Write Signals      
input    wire                         W_CLK,             // CLK for write domian
input    wire                         W_RST,             // RST foe write domain
input    wire                         W_INC,             // write Enable signal
input    wire      [Addr_Size:0]      GR_Ptr_Syn,        // Read Pointer frmo Read domain after synchronizer

//Read Signals   
output   wire                         FIFO_Full,         // FIFO Full flag
output   wire      [Addr_Size-1:0]    W_Addr,            // write Address
output   reg       [Addr_Size:0]      GW_Ptr             // Write Pointer frmo Write domain
);


// Internal Signals
reg   [Addr_Size:0] Address ;
wire  [Addr_Size:0] Comb_G_W_Ptr ;




// Sequential_Logic For : Address Calculation
always @(posedge W_CLK or negedge W_RST)
begin
     if(!W_RST)
     begin
          Address <= 'b0 ;
     end

     else if (W_INC && !FIFO_Full) 
     begin
          Address <= Address + 1 ;
     end
end


// Combinational_Logic For : W_Addr 
assign W_Addr = Address[Addr_Size-1:0] ;




// Combinational_Logic For : Comb_G_W_Ptr 
assign Comb_G_W_Ptr = Address ^ (Address >> 1) ;


// Sequential_Logic For : GW_Ptr
always @(posedge W_CLK or negedge W_RST)
begin
     if(!W_RST)
     begin
          GW_Ptr <= 'b0 ;
     end

     else 
     begin
          GW_Ptr <= Comb_G_W_Ptr ;
     end
end


// Combinational_Logic : W_Full Function 
assign FIFO_Full = (  (Comb_G_W_Ptr[Addr_Size]!= GR_Ptr_Syn[Addr_Size])  &&  (Comb_G_W_Ptr[Addr_Size-1]!= GR_Ptr_Syn[Addr_Size-1])  &&  (Comb_G_W_Ptr[Addr_Size-2:0]== GR_Ptr_Syn[Addr_Size-2:0])  ) ;


endmodule