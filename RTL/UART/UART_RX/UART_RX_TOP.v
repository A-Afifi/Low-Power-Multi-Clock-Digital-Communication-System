// *************************************************************//
//                      Module : UART_RX_TOP                    //
//                      Author : Ahmed_Afifi                    //
// *************************************************************//


module UART_RX_TOP #(
    parameter Data_Width = 8 ,
              B_C_W = $clog2(Data_Width + 4 )           // Bit_Count_width
)(
    // Basic Inputs 
    input    wire                       CLK ,           // System clock (200 MHz in spec)
    input    wire                       RST ,           // Asynchronous active-low reset
    //Configuration Inputs 
    input    wire                       PAR_EN,         // Parity enable
    input    wire   [5:0]               Prescale,       // Oversampling ratio
    input    wire                       PAR_TYP,        // Parity type (0=even, 1=odd)
    //Input From UART_TX
    input    wire                       RX_IN,          // Serial data input
    //Outpts 
    output   wire                       Paerity_Error,  // Parity error flag
    output   wire                       Stop_Error,     // Stop error flag
    output   wire                       Data_Valid,     // Data valid flag
    output   wire   [Data_Width-1:0]    P_DATA          // Parallel data output
);


// ============================================================
// Internal Signals 
// ============================================================
// Enable Saignals 
wire        edge_bit_en,             // Edge counter enable
            dat_samp_en,             // Data sampling enable
            deser_en,                // Deserializer enable
            Par_chk_en,              // Parity check enable
            strt_chk_en,             // Start check enable
            stp_chk_en,              // Stop check enable
            Flags_Done;              // Flags done signal

// edge_bit_counter output signals 
wire    [B_C_W-1:0]    bit_cnt;      // Bit counter
wire    [5:0]          edge_cnt;     // Edge counter

// data_sampling output signals
wire        sampled_bit;             // Sampled bit value

// deserializer output signals
wire        Deser_Done;              // Deserialization done

// 3 Check Blocks output signals 
wire        par_err,                 // Parity error
            strt_glitch,             // Start glitch error
            stp_err;                 // Stop error


// ============================================================
// Data_Sampling_UNIT instantiation
// ============================================================
Data_Sampling U1 (
    .CLK(CLK),
    .RST(RST),
    .En(dat_samp_en),
    .Prescale(Prescale),      
    .RX_In(RX_IN),        
    .Edge_Count(edge_cnt),     
    .Sampeld_Bit(sampled_bit)
);


// ============================================================
// Deserializer_UNIT instantiation
// ============================================================
Deserializer #(.Data_Width(Data_Width)) U2 (
    .CLK(CLK),
    .RST(RST),
    .En(deser_en),
    .Prescale(Prescale),
    .S_In(sampled_bit),
    .edge_count(edge_cnt),
    .P_out(P_DATA),
    .Deser_Done(Deser_Done)
);


// ============================================================
// Edge_Bit_Counter_UNIT instantiation
// ============================================================
Edge_Bit_Counter #(.Data_Width(Data_Width)) U3 (
    .CLK(CLK),
    .RST(RST),
    .En(edge_bit_en),
    .Prescale(Prescale),
    .Bit_Count(bit_cnt),
    .Edge_Count(edge_cnt)
);


// ============================================================
// Parity_Check_UNIT instantiation
// ============================================================
Parity_Check #(.Data_Width(Data_Width)) U4 (
    .CLK(CLK),
    .RST(RST),
    .En(Par_chk_en),
    .Flags_Done(Flags_Done),
    .PAR_TYP(PAR_TYP),
    .R_Data(P_DATA),
    .Deser_Done(Deser_Done),
    .Parity_In(sampled_bit),    
    .par_err(par_err)
);


// ============================================================
// Start_Check_UNIT instantiation
// ============================================================
Start_Check U5 (
    .CLK(CLK),
    .RST(RST),
    .En(strt_chk_en),
    .Flags_Done(Flags_Done),
    .Start_bit(sampled_bit),
    .Str_err(strt_glitch)
);


// ============================================================
// Stop_Check_UNIT instantiation
// ============================================================
Stop_Check  U6 (
    .CLK(CLK),
    .RST(RST),
    .En(stp_chk_en),
    .Flags_Done(Flags_Done),
    .Stop_bit(sampled_bit),
    .Stp_err(stp_err)
);


// ============================================================
// RX_FSM_UNIT instantiation
// ============================================================
RX_FSM #(.Data_Width(Data_Width)) U7 (
    .CLK(CLK),
    .RST(RST),
    .PAR_EN(PAR_EN),
    .Prescale(Prescale),
    .RX_In(RX_IN),
    .Bit_Count(bit_cnt),
    .edge_count(edge_cnt), 
    .Par_err(par_err), 
    .Start_err(strt_glitch), 
    .Stop_err(stp_err), 
    .edge_bit_en(edge_bit_en),    
    .data_samp_en(dat_samp_en), 
    .Deser_en(deser_en), 
    .Par_chk_en(Par_chk_en), 
    .Str_chk_en(strt_chk_en), 
    .Stp_chk_en(stp_chk_en),
    .Flags_Done(Flags_Done), 
    .Parity_Error(Paerity_Error), 
    .Stop_Error(Stop_Error), 
    .Data_Valid(Data_Valid)
);


endmodule