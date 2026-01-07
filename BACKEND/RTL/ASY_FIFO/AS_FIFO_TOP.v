// ************************************************************* //
//                      Module : AS_FIFO_TOP                     //
//                      Author : Ahmed_Afifi                     //
// ************************************************************* //

module AS_FIFO_TOP # ( 
     parameter  Data_Width = 8,
     parameter  Addr_Size  = 3,
     parameter  FIFO_Dipth = 8, 
     parameter  NUM_STAGES = 2 
)(
input   wire                        I_W_CLK,             // CLK for write domian
input   wire                        I_W_RST,             // RST foe write domain
input   wire                        I_W_INC,             // write Enable signal
input   wire     [Data_Width-1:0]   I_Data,            // write Data

input    wire                       I_R_CLK,             // CLK for Read domian
input    wire                       I_R_RST,             // RST foe Read domain
input    wire                       I_R_INC,             // Read Enable signal

output  wire     [Data_Width-1:0]   O_Data,            // Read Data
output  wire                        FIFO_Full,            // FIFO Full flag
output  wire                        FIFO_Empty            // FIFO Full flag
);


//---------------------Internal Signals--------------------//
wire      [Addr_Size-1:0]    W_Addr;            // write Address
wire      [Addr_Size-1:0]    R_Addr;            // Read Address

wire      [Addr_Size:0]      GW_Ptr;            // Write Pointer frmo Write domain
wire      [Addr_Size:0]      GR_Ptr;            // Write Pointer frmo Write domain

wire      [Addr_Size:0]      GW_Ptr_Syn;        // Write Pointer frmo Write domain after synchronizer
wire      [Addr_Size:0]      GR_Ptr_Syn;        // Read Pointer frmo Read  after synchronizer




//---------------------FIFO_W Instant--------------------//
FIFO_W #(.Addr_Size(Addr_Size)) U0_FIFO_W (
.W_CLK(I_W_CLK),              
.W_RST(I_W_RST),
.W_INC(I_W_INC),                             
.GR_Ptr_Syn(GR_Ptr_Syn),              
.FIFO_Full(FIFO_Full),            
.W_Addr(W_Addr),
.GW_Ptr(GW_Ptr)
); 



//---------------------W2R_BIT_SYNC Instant--------------------//
BIT_SYNC #(.NUM_STAGES(NUM_STAGES) , .BUS_WIDTH(Addr_Size +'b1)) U1_W2R_SYNC (
.CLK(I_R_CLK),              
.RST(I_R_RST),
.ASYNC(GW_Ptr),                             
.SYNC(GW_Ptr_Syn)
); 


//---------------------FIFO_R Instant--------------------//
FIFO_R #(.Addr_Size(Addr_Size)) U2_FIFO_R (
.R_CLK(I_R_CLK),              
.R_RST(I_R_RST),
.R_INC(I_R_INC),                             
.GW_Ptr_Syn(GW_Ptr_Syn),              
.FIFO_Empty(FIFO_Empty),            
.R_Addr(R_Addr),
.GR_Ptr(GR_Ptr)
); 


//---------------------R2W_BIT_SYNC Instant--------------------//
BIT_SYNC #(.NUM_STAGES(NUM_STAGES), .BUS_WIDTH(Addr_Size +'b1)) U3_R2W_SYNC (
.CLK(I_W_CLK),              
.RST(I_W_RST),
.ASYNC(GR_Ptr),                             
.SYNC(GR_Ptr_Syn)
); 


//---------------------FIFO_MEM Instant--------------------//
FIFO_MEM #(.FIFO_Dipth(FIFO_Dipth), .Data_Width(Data_Width), .Addr_Size(Addr_Size)) U4_FIFO_MEM (
.W_CLK(I_W_CLK),              
.W_RST(I_W_RST),
.W_INC(I_W_INC),                             
.FIFO_Full(FIFO_Full),              
.W_Addr(W_Addr),            
.W_Data(I_Data),
.R_Addr(R_Addr),                        
.R_Data(O_Data)
); 


endmodule
