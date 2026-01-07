// *************************************************************//
//                      Module : SYS_TOP                        //
//                      Author : Ahmed_Afifi                    //
// *************************************************************//
module SYS_TOP # (
parameter   DATA_WIDTH = 8 ,  
            RF_ADDR = 4 
)(
input   wire                          RST_N,    
input   wire                          UART_CLK,    
input   wire                          REF_CLK,
input   wire                          UART_RX_IN,
output  wire                          UART_TX_O,
output  wire                          parity_error,
output  wire                          framing_error
);


//-----------------------------------------------//    
//-------------- Internal Signals ---------------//
//-----------------------------------------------// 

//////////////////// General ////////////////////// 
wire                          Domain1_SYNC_RST;
wire                          Domain2_SYNC_RST;

////////////////////// UART /////////////////////// 

// RX Signals 
wire					      RX_CLK;
wire    [3:0]                 RX_Div_Ratio;
wire    [DATA_WIDTH-1:0]      RX_OUT;
wire                          RX_OUT_Valid;

// RX Signals
wire					      TX_CLK;
wire    [DATA_WIDTH-1:0]      TX_IN;
wire                          TX_IN_Valid;
wire                          TX_Busy;

///////////////// Data_Synchronizer ///////////////
wire    [DATA_WIDTH-1:0]      Sync_Data;
wire                          Sync_Valid;

///////////////////// ASYN_FIFO ///////////////////
wire                          WR_INC;
wire    [DATA_WIDTH-1:0]      WR_Data;
wire                          FIFO_FULL;
 
wire                          RD_INC ;

//////////////////////// ALU ///////////////////////
wire                          ALU_EN;
wire     [3:0]                ALU_FUN; 


wire     [DATA_WIDTH-1:0]     Op_A;
wire     [DATA_WIDTH-1:0]     Op_B;
wire     [DATA_WIDTH*2-1:0]   ALU_OUT;
wire                          ALU_OUT_Valid; 
									   
//////////////////// Clock Gating ///////////////////
wire                          CLK_Gating_EN;
wire                          Gated_ALU_CLK ;

////////////////////// Reg_File /////////////////////
wire                          WrEn_RF;
wire                          RdEn_RF;
wire     [RF_ADDR-1:0]        Addr_RF;
wire     [DATA_WIDTH-1:0]     Wr_D_RF;
wire     [DATA_WIDTH-1:0]     Rd_D_RF;
wire                          Rd_D_Valid_RF;	

wire     [DATA_WIDTH-1:0]     UART_Config;
wire     [DATA_WIDTH-1:0]     DIV_RATIO;

////////////////////// CLK_DIV /////////////////////
wire                          CLK_DIV_EN;

//-----------------------------------------------//    
//--------------- System Controller -------------//
//-----------------------------------------------// 

SYS_CTRL #( .D_Width(DATA_WIDTH) , .Addr_Size(RF_ADDR) ) SYS_Cntroller (
.CLK(REF_CLK),
.RST(Domain1_SYNC_RST),
///////////////////
.Sync_Frame(Sync_Data),
.enable_pulse(Sync_Valid),
///////////////////
.Rd_D(Rd_D_RF),
.Rd_D_Valid(Rd_D_Valid_RF),
.Rd_En(RdEn_RF),
.Wr_En(WrEn_RF),
.Addr(Addr_RF),
.Wr_D(Wr_D_RF),
///////////////////
.ALU_OUT(ALU_OUT),
.OUT_Valid(ALU_OUT_Valid),
.ALU_En(ALU_EN),
.FUN(ALU_FUN),
///////////////////
.FIFO_FULL(FIFO_FULL),
.WR_INC(WR_INC),
.WR_DATA(WR_Data),
///////////////////
.Gate_En(CLK_Gating_EN),
///////////////////
.CLK_DIV_EN(CLK_DIV_EN)
);



//-----------------------------------------------//    
//---------------- UART_TX CLK_DIV --------------//
//-----------------------------------------------// 

Integer_ClkDiv #(.ratio_Width(DATA_WIDTH)) UART_TX_ClkDiv (
.i_ref_clk(UART_CLK),             
.i_rst_n(Domain2_SYNC_RST),                 
.i_clk_en(CLK_DIV_EN),               
.i_div_ratio(DIV_RATIO),           
.o_div_clk(TX_CLK)             
);


//-----------------------------------------------//    
//---------------- UART_RX CLK_DIV --------------//
//-----------------------------------------------// 

Integer_ClkDiv #(.ratio_Width(4)) UART_RX_ClkDiv (
.i_ref_clk(UART_CLK),             
.i_rst_n(Domain2_SYNC_RST),                 
.i_clk_en(CLK_DIV_EN),               
.i_div_ratio(RX_Div_Ratio),           
.o_div_clk(RX_CLK)             
);


//-----------------------------------------------//    
//---------------- RX_CLK_DIV_MUX ---------------//
//-----------------------------------------------// 

RX_CLKDIV_MUX #(.Width(4)) CLKDIV_MUX (
.Input(UART_Config[7:2]),
.MUX_Out(RX_Div_Ratio)
);



//-----------------------------------------------//    
//-------------------- UART_RX ------------------//
//-----------------------------------------------// 

UART_RX_TOP #(.Data_Width(DATA_WIDTH)) UART_RX (
.CLK(RX_CLK),
.RST(Domain2_SYNC_RST),
.PAR_EN(UART_Config[0]),
.Prescale(UART_Config[7:2]),
.PAR_TYP(UART_Config[1]),
.RX_IN(UART_RX_IN),
.Paerity_Error(parity_error),
.Stop_Error(framing_error),
.Data_Valid(RX_OUT_Valid),
.P_DATA(RX_OUT)
);


UART_TOP  UART_TX (
.CLK(TX_CLK),
.RST(Domain2_SYNC_RST),
.P_DATA(TX_IN),
.Data_Valid(!TX_IN_Valid),
.PAR_EN(UART_Config[0]),
.PAR_TYP(UART_Config[1]),
.busy(TX_Busy),
.TX_OUT(UART_TX_O)
);



//-----------------------------------------------//    
//------------------- Async FIFO ----------------//
//-----------------------------------------------// 

AS_FIFO_TOP #(.Data_Width(DATA_WIDTH) , .Addr_Size(3)  , .FIFO_Dipth(8) , .NUM_STAGES(2) ) UART_FIFO (
.I_W_CLK(REF_CLK),
.I_W_RST(Domain1_SYNC_RST),  
.I_W_INC(WR_INC),
.I_Data(WR_Data),             
.I_R_CLK(TX_CLK),              
.I_R_RST(Domain2_SYNC_RST),              
.I_R_INC(RD_INC),              
.O_Data(TX_IN),             
.FIFO_Full(FIFO_FULL),               
.FIFO_Empty(TX_IN_Valid)               
);


//-----------------------------------------------//    
//---------------- Pulse Generator --------------//
//-----------------------------------------------// 

PULSE_GEN U0_PULSE_GEN (
.clk(TX_CLK),
.rst(Domain2_SYNC_RST),
.lvl_sig(TX_Busy),
.pulse_sig(RD_INC)
);



//-----------------------------------------------//    
//------------- Reset synchronizers -------------//
//-----------------------------------------------// 

RST_SYN # (.NUM_STAGES(2)) REF_RST_SYNC (
.RST(RST_N),
.CLK(REF_CLK),
.SYNC_RST(Domain1_SYNC_RST)
);

RST_SYN #(.NUM_STAGES(2)) UART_RST_SYNC (
.RST(RST_N),
.CLK(UART_CLK),
.SYNC_RST(Domain2_SYNC_RST)
);



//-----------------------------------------------//    
//--------------- Data Synchronizer -------------//
//-----------------------------------------------//

DATA_SYNC # (.NUM_STAGES(2) , .BUS_WIDTH(8)) Data_SYNC (
.CLK(REF_CLK),
.RST(Domain1_SYNC_RST),
.unsync_bus(RX_OUT),
.bus_enable(RX_OUT_Valid),
.sync_bus(Sync_Data),
.enable_pulse_d(Sync_Valid)
);


//-----------------------------------------------//    
//------------------ Clock Gating ---------------//
//-----------------------------------------------// 

CLK_GATE U_CLK_GATE (
.CLK_EN(CLK_Gating_EN),
.CLK(REF_CLK),
.GATED_CLK(Gated_ALU_CLK)
);


//-----------------------------------------------//    
//---------------------- ALU --------------------//
//-----------------------------------------------// 
 
ALU #(.IN_Width(DATA_WIDTH)) U0_ALU (
.CLK(Gated_ALU_CLK),
.RST(Domain1_SYNC_RST), 
.EN(ALU_EN), 
.ALU_FUN(ALU_FUN),
.A(Op_A), 
.B(Op_B),
.ALU_OUT(ALU_OUT),
.OUT_Valid(ALU_OUT_Valid)
);


//-----------------------------------------------//    
//------------------- REG_File ------------------//
//-----------------------------------------------// 

Reg_File #( .WIDTH(DATA_WIDTH) , .DEPTH(16) , .ADDR(4) ) RegFile (
.CLK(REF_CLK),
.RST(Domain1_SYNC_RST),
.WrEn(WrEn_RF),
.RdEn(RdEn_RF),
.Address(Addr_RF),
.WrData(Wr_D_RF),
.RdData(Rd_D_RF),
.RdData_VLD(Rd_D_Valid_RF),
.REG0(Op_A),
.REG1(Op_B),
.REG2(UART_Config),
.REG3(DIV_RATIO)
);


endmodule
 
