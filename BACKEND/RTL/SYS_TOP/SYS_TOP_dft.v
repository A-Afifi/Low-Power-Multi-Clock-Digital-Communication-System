// *************************************************************//
//                      Module : SYS_TOP_dft                    //
//                      Author : Ahmed_Afifi                    //
// *************************************************************//
module SYS_TOP_dft # (
parameter   DATA_WIDTH = 8 ,  
            RF_ADDR = 4,
            NUM_OF_CHAINS = 4
)(
input   wire                          scan_clk ,
input   wire                          scan_rst ,
input   wire                          test_mode ,
input   wire                          SE ,
input   wire   [NUM_OF_CHAINS-1:0]    SI ,
output  wire   [NUM_OF_CHAINS-1:0]    SO ,
///////////////////////////////////////////////////
input   wire                          RST_N,    
input   wire                          UART_CLK,    
input   wire                          REF_CLK,
input   wire                          UART_RX_IN,
output  wire                          UART_TX_O,
output  wire                          parity_error,
output  wire                          framing_error
);


/********************************************************************************************/
/********************************************************************************************/


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

///////////////////// DFT_wires ////////////////////
wire                          REF_CLK_M;
wire                          UART_CLK_M;
wire                          RX_CLK_M;
wire                          TX_CLK_M;
wire                          M_RST_N;
wire                          M_Domain1_SYNC_RST;
wire                          M_Domain2_SYNC_RST;


/********************************************************************************************/
/********************************************************************************************/


//-----------------------------------------------//    
//--------------- DFT Modifications -------------//
//-----------------------------------------------// 

//////////////////////// CLK //////////////////////

// REF_CLK
mux2X1 DFT_REF_MUX (
.IN_0(REF_CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(REF_CLK_M)
); 

// UART_CLK
mux2X1 UART_CLK_MUX (
.IN_0(UART_CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(UART_CLK_M)
); 

// UART_RX_CLK
mux2X1 RX_CLK_MUX (
.IN_0(RX_CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(RX_CLK_M)
); 

// UART_TX_CLK 
mux2X1 TX_CLK_MUX (
.IN_0(TX_CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(TX_CLK_M)
); 

/////////////////////// RST //////////////////////////

// RST_N
mux2X1 RST_N_MUX (
.IN_0(RST_N),
.IN_1(scan_rst),
.SEL(test_mode),
.OUT(M_RST_N)
); 

// Domain1_SYNC_RST
mux2X1 Domain1_SYNC_RST_MUX (
.IN_0(Domain1_SYNC_RST),
.IN_1(scan_rst),
.SEL(test_mode),
.OUT(M_Domain1_SYNC_RST)
); 

// Domain2_SYNC_RST
mux2X1 Domain2_SYNC_RST_MUX (
.IN_0(Domain2_SYNC_RST),
.IN_1(scan_rst),
.SEL(test_mode),
.OUT(M_Domain2_SYNC_RST)
); 



/********************************************************************************************/
/********************************************************************************************/



//-----------------------------------------------//    
//--------------- System Controller -------------//
//-----------------------------------------------// 

SYS_CTRL #( .D_Width(DATA_WIDTH) , .Addr_Size(RF_ADDR) ) SYS_Cntroller (
.CLK(REF_CLK_M),
.RST(M_Domain1_SYNC_RST),
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
.i_ref_clk(UART_CLK_M),             
.i_rst_n(M_Domain2_SYNC_RST),                 
.i_clk_en(CLK_DIV_EN),               
.i_div_ratio(DIV_RATIO),           
.o_div_clk(TX_CLK)             
);


//-----------------------------------------------//    
//---------------- UART_RX CLK_DIV --------------//
//-----------------------------------------------// 

Integer_ClkDiv #(.ratio_Width(4)) UART_RX_ClkDiv (
.i_ref_clk(UART_CLK_M),             
.i_rst_n(M_Domain2_SYNC_RST),                 
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
.CLK(RX_CLK_M),
.RST(M_Domain2_SYNC_RST),
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
.CLK(TX_CLK_M),
.RST(M_Domain2_SYNC_RST),
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
.I_W_CLK(REF_CLK_M),
.I_W_RST(M_Domain1_SYNC_RST),  
.I_W_INC(WR_INC),
.I_Data(WR_Data),             
.I_R_CLK(TX_CLK_M),              
.I_R_RST(M_Domain2_SYNC_RST),              
.I_R_INC(RD_INC),              
.O_Data(TX_IN),             
.FIFO_Full(FIFO_FULL),               
.FIFO_Empty(TX_IN_Valid)               
);


//-----------------------------------------------//    
//---------------- Pulse Generator --------------//
//-----------------------------------------------// 

PULSE_GEN U0_PULSE_GEN (
.clk(TX_CLK_M),
.rst(M_Domain2_SYNC_RST),
.lvl_sig(TX_Busy),
.pulse_sig(RD_INC)
);



//-----------------------------------------------//    
//------------- Reset synchronizers -------------//
//-----------------------------------------------// 

RST_SYN # (.NUM_STAGES(2)) REF_RST_SYNC (
.RST(M_RST_N),
.CLK(REF_CLK_M),
.SYNC_RST(Domain1_SYNC_RST)
);

RST_SYN #(.NUM_STAGES(2)) UART_RST_SYNC (
.RST(M_RST_N),
.CLK(UART_CLK_M),
.SYNC_RST(Domain2_SYNC_RST)
);



//-----------------------------------------------//    
//--------------- Data Synchronizer -------------//
//-----------------------------------------------//

DATA_SYNC # (.NUM_STAGES(2) , .BUS_WIDTH(8)) Data_SYNC (
.CLK(REF_CLK_M),
.RST(M_Domain1_SYNC_RST),
.unsync_bus(RX_OUT),
.bus_enable(RX_OUT_Valid),
.sync_bus(Sync_Data),
.enable_pulse_d(Sync_Valid)
);


//-----------------------------------------------//    
//------------------ Clock Gating ---------------//
//-----------------------------------------------// 

CLK_GATE U_CLK_GATE (
.CLK_EN(CLK_Gating_EN|test_mode),
.CLK(REF_CLK_M),
.GATED_CLK(Gated_ALU_CLK)
);


//-----------------------------------------------//    
//---------------------- ALU --------------------//
//-----------------------------------------------// 
 
ALU #(.IN_Width(DATA_WIDTH)) U0_ALU (
.CLK(Gated_ALU_CLK),
.RST(M_Domain1_SYNC_RST), 
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
.CLK(REF_CLK_M),
.RST(M_Domain1_SYNC_RST),
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
 
